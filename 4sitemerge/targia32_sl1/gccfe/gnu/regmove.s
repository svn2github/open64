	.file	"regmove.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	regclass_compatible_p, @function
regclass_compatible_p:
.LFB15:
	.file 1 "../../../kgccfe/gnu/regmove.c"
	.loc 1 88 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$20, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 89 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L2
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	je	.L4
	movl	8(%ebp), %eax
	movl	reg_class_size@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L2
.L4:
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	je	.L6
	movl	12(%ebp), %eax
	movl	reg_class_size@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L6
.L2:
	movl	$1, -8(%ebp)
	jmp	.L8
.L6:
	movl	$0, -8(%ebp)
.L8:
	movl	-8(%ebp), %eax
	.loc 1 94 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	regclass_compatible_p, .-regclass_compatible_p
	.type	try_auto_increment, @function
try_auto_increment:
.LFB16:
	.loc 1 105 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$68, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	24(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 108 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L11
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L13
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L15
.L13:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -52(%ebp)
.L15:
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L16
.L11:
	movl	$0, -56(%ebp)
.L16:
	movl	-56(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 109 0
	cmpl	$0, -24(%ebp)
	je	.L17
.LBB2:
	.loc 1 113 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_use_as_address@PLT
	movl	%eax, -20(%ebp)
	.loc 1 114 0
	cmpl	$0, -20(%ebp)
	je	.L17
	cmpl	$1, -20(%ebp)
	je	.L17
.LBB3:
	.loc 1 116 0
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
.L17:
.LBE3:
.LBE2:
	.loc 1 157 0
	movl	$0, %eax
	.loc 1 158 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	try_auto_increment, .-try_auto_increment
	.type	discover_flags_reg, @function
discover_flags_reg:
.LFB17:
	.loc 1 169 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$52, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 171 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$10000, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -12(%ebp)
	.loc 1 172 0
	movl	$2, 4(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_add3_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 176 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L23
	.loc 1 177 0
	movl	$0, -32(%ebp)
	jmp	.L25
.L23:
	.loc 1 178 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L26
.LBB4:
	.loc 1 182 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L28
	.loc 1 183 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L25
.L28:
	.loc 1 184 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 185 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L30
	.loc 1 186 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L25
.L30:
	.loc 1 187 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 192 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L32
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L32
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L32
	.loc 1 195 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L25
.L32:
	.loc 1 196 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L36
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L36
	movl	$1, -28(%ebp)
	jmp	.L39
.L36:
	movl	$0, -28(%ebp)
.L39:
	movl	-28(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 198 0
	cmpl	$0, -8(%ebp)
	je	.L40
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L42
.L40:
	movl	$0, -24(%ebp)
.L42:
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L25
.L26:
.LBE4:
	.loc 1 201 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L25:
	movl	-32(%ebp), %eax
	.loc 1 202 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	discover_flags_reg, .-discover_flags_reg
	.type	mark_flags_life_zones, @function
mark_flags_life_zones:
.LFB18:
	.loc 1 223 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$68, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 238 0
	cmpl	$0, 8(%ebp)
	je	.L45
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L47
.L45:
.LBB5:
	.loc 1 240 0
	cmpl	$0, 8(%ebp)
	je	.L48
	movl	$3, -60(%ebp)
	jmp	.L50
.L48:
	movl	$0, -60(%ebp)
.L50:
	movl	-60(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 242 0
	call	get_insns@PLT
	movl	%eax, -24(%ebp)
	jmp	.L51
.L52:
	.loc 1 243 0
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 242 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L51:
	cmpl	$0, -24(%ebp)
	jne	.L52
	.loc 1 244 0
	jmp	.L76
.L47:
.LBE5:
	.loc 1 251 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 252 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -36(%ebp)
	.loc 1 254 0
	movl	8(%ebp), %eax
	movl	%eax, flags_set_1_rtx@GOTOFF(%ebx)
	.loc 1 257 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L55
.L56:
.LBB6:
	.loc 1 262 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 263 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 267 0
	movl	$0, -12(%ebp)
.LBB7:
	.loc 1 271 0
	movl	$0, -8(%ebp)
	jmp	.L57
.L58:
	.loc 1 272 0
	movl	-8(%ebp), %eax
	movl	-40(%ebp), %edx
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	32(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	orl	%eax, -12(%ebp)
	.loc 1 271 0
	addl	$1, -8(%ebp)
.L57:
	movl	-8(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L58
.L59:
.LBE7:
	.loc 1 283 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L60
	.loc 1 292 0
	cmpl	$0, -12(%ebp)
	je	.L62
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	find_regno_note@PLT
	testl	%eax, %eax
	je	.L62
	.loc 1 293 0
	movl	$0, -12(%ebp)
.L62:
	.loc 1 295 0
	cmpl	$0, -12(%ebp)
	je	.L65
	movb	$3, -54(%ebp)
	jmp	.L67
.L65:
	movb	$0, -54(%ebp)
.L67:
	movl	-20(%ebp), %eax
	movzbl	-54(%ebp), %edx
	movb	%dl, 2(%eax)
	.loc 1 299 0
	movl	$0, flags_set_1_set@GOTOFF(%ebx)
	.loc 1 300 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	leal	flags_set_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 301 0
	movl	flags_set_1_set@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L70
	.loc 1 303 0
	movl	$1, -12(%ebp)
	.loc 1 304 0
	movl	-20(%ebp), %eax
	movb	$2, 2(%eax)
	jmp	.L70
.L60:
	.loc 1 308 0
	cmpl	$0, -12(%ebp)
	je	.L71
	movb	$3, -53(%ebp)
	jmp	.L73
.L71:
	movb	$0, -53(%ebp)
.L73:
	movl	-20(%ebp), %eax
	movzbl	-53(%ebp), %edx
	movb	%dl, 2(%eax)
.L70:
	.loc 1 310 0
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L74
	.loc 1 312 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 313 0
	jmp	.L59
.L74:
.LBE6:
	.loc 1 257 0
	movl	-32(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -32(%ebp)
.L55:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -32(%ebp)
	jne	.L56
.L76:
	.loc 1 315 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	mark_flags_life_zones, .-mark_flags_life_zones
	.type	flags_set_1, @function
flags_set_1:
.LFB19:
	.loc 1 323 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%ebx
.LCFI18:
	subl	$20, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 324 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L81
	movl	flags_set_1_rtx@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L81
	.loc 1 326 0
	movl	$1, flags_set_1_set@GOTOFF(%ebx)
.L81:
	.loc 1 327 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	flags_set_1, .-flags_set_1
	.type	replacement_quality, @function
replacement_quality:
.LFB20:
	.loc 1 339 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	subl	$20, %esp
.LCFI22:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 343 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L83
	.loc 1 344 0
	movl	$0, -20(%ebp)
	jmp	.L85
.L83:
	.loc 1 348 0
	movl	reg_n_info@GOT(%ecx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jns	.L86
	.loc 1 349 0
	movl	$0, -20(%ebp)
	jmp	.L85
.L86:
	.loc 1 351 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	regno_src_regno@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 354 0
	cmpl	$0, -4(%ebp)
	jns	.L88
	.loc 1 355 0
	movl	$3, -20(%ebp)
	jmp	.L85
.L88:
	.loc 1 358 0
	cmpl	$175, -4(%ebp)
	jg	.L90
	.loc 1 359 0
	movl	$1, -20(%ebp)
	jmp	.L85
.L90:
	.loc 1 364 0
	movl	$2, -20(%ebp)
.L85:
	movl	-20(%ebp), %eax
	.loc 1 365 0
	leave
	ret
.LFE20:
	.size	replacement_quality, .-replacement_quality
	.type	perhaps_ends_bb_p, @function
perhaps_ends_bb_p:
.LFB21:
	.loc 1 371 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	pushl	%ebx
.LCFI25:
	subl	$20, %esp
.LCFI26:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 372 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	cmpl	$44, -12(%ebp)
	je	.L96
	cmpl	$46, -12(%ebp)
	je	.L95
	cmpl	$43, -12(%ebp)
	je	.L95
	jmp	.L94
.L95:
	.loc 1 377 0
	movl	$1, -8(%ebp)
	jmp	.L97
.L96:
	.loc 1 383 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L94
	.loc 1 384 0
	movl	$1, -8(%ebp)
	jmp	.L97
.L94:
	.loc 1 387 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
.L97:
	movl	-8(%ebp), %eax
	.loc 1 389 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	perhaps_ends_bb_p, .-perhaps_ends_bb_p
	.type	optimize_reg_copy_1, @function
optimize_reg_copy_1:
.LFB22:
	.loc 1 407 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	pushl	%ebx
.LCFI29:
	subl	$68, %esp
.LCFI30:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 410 0
	movl	$0, -36(%ebp)
	.loc 1 411 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 412 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 415 0
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	je	.L101
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L103
	cmpl	$175, -32(%ebp)
	jle	.L101
	cmpl	$175, -28(%ebp)
	jle	.L101
.L103:
	cmpl	$29, -32(%ebp)
	je	.L101
	cmpl	$29, -28(%ebp)
	jne	.L107
.L101:
	.loc 1 422 0
	movl	$0, -56(%ebp)
	jmp	.L108
.L107:
	.loc 1 424 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L109
.L110:
	.loc 1 428 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	perhaps_ends_bb_p
	testl	%eax, %eax
	jne	.L111
	.loc 1 430 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L113
	.loc 1 433 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	jne	.L111
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	jne	.L111
	cmpl	$175, -32(%ebp)
	jg	.L117
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	testl	%eax, %eax
	js	.L117
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L111
.L117:
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L120
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L111
.L120:
	.loc 1 451 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	find_regno_note@PLT
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L122
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %edx
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L122
.LBB8:
	.loc 1 454 0
	movl	$0, -24(%ebp)
	.loc 1 455 0
	movl	$0, -20(%ebp)
	.loc 1 456 0
	movl	$0, -16(%ebp)
	.loc 1 457 0
	movl	$0, -12(%ebp)
	.loc 1 458 0
	movl	$0, -8(%ebp)
	.loc 1 466 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_real_insn@PLT
	movl	%eax, -44(%ebp)
	.loc 1 467 0
	jmp	.L125
.L126:
	.loc 1 470 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L127
	.loc 1 477 0
	cmpl	$175, -32(%ebp)
	jg	.L129
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L129
	.loc 1 479 0
	movl	$1, -24(%ebp)
	.loc 1 477 0
	jmp	.L127
.L129:
	.loc 1 483 0
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_replace_rtx@PLT
	testl	%eax, %eax
	je	.L132
	cmpl	$175, -32(%ebp)
	jg	.L127
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L132
	jmp	.L127
.L132:
	.loc 1 490 0
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_replace_rtx@PLT
	.loc 1 491 0
	movl	$1, -24(%ebp)
.L127:
	.loc 1 498 0
	addl	$1, -16(%ebp)
	.loc 1 499 0
	cmpl	$0, -36(%ebp)
	je	.L136
	.loc 1 500 0
	addl	$1, -20(%ebp)
.L136:
	.loc 1 504 0
	movl	-44(%ebp), %eax
	cmpl	-48(%ebp), %eax
	je	.L138
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L138
	.loc 1 508 0
	addl	$1, -8(%ebp)
	.loc 1 509 0
	cmpl	$0, -36(%ebp)
	je	.L138
	.loc 1 510 0
	addl	$1, -12(%ebp)
.L138:
	.loc 1 516 0
	cmpl	$0, -36(%ebp)
	jne	.L142
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	find_regno_note@PLT
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L142
	.loc 1 519 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	je	.L145
	.loc 1 520 0
	movl	$1, -24(%ebp)
	movl	$0, -36(%ebp)
	jmp	.L142
.L145:
	.loc 1 522 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L142:
	.loc 1 468 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	next_real_insn@PLT
	movl	%eax, -44(%ebp)
.L125:
	.loc 1 467 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	next_real_insn@PLT
	cmpl	-44(%ebp), %eax
	jne	.L126
	.loc 1 526 0
	cmpl	$0, -24(%ebp)
	jne	.L148
	.loc 1 530 0
	cmpl	$175, -32(%ebp)
	jle	.L150
	.loc 1 532 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	js	.L152
	.loc 1 534 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	subl	-16(%ebp), %eax
	movl	%eax, 28(%ecx)
	.loc 1 538 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	cmpl	$1, %eax
	jg	.L152
	.loc 1 539 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$2, 28(%eax)
.L152:
	.loc 1 542 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	subl	-8(%ebp), %eax
	movl	%eax, 32(%ecx)
.L150:
	.loc 1 546 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	.loc 1 547 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 548 0
	movl	8(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 68(%edx)
.L148:
	.loc 1 552 0
	cmpl	$0, -36(%ebp)
	jne	.L155
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$10, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_regno_note@PLT
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L155
	.loc 1 555 0
	movl	-36(%ebp), %eax
	movb	$1, 2(%eax)
	.loc 1 556 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L155:
	.loc 1 560 0
	cmpl	$0, -36(%ebp)
	je	.L158
	.loc 1 562 0
	movl	-48(%ebp), %eax
	movl	68(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 563 0
	movl	-48(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 68(%edx)
	.loc 1 565 0
	cmpl	$175, -28(%ebp)
	jle	.L158
	.loc 1 569 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	js	.L161
	.loc 1 570 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	addl	-20(%ebp), %eax
	movl	%eax, 28(%ecx)
.L161:
	.loc 1 571 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	addl	-12(%ebp), %eax
	movl	%eax, 32(%ecx)
.L158:
	.loc 1 575 0
	cmpl	$0, -24(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	jmp	.L108
.L122:
.LBE8:
	.loc 1 580 0
	cmpl	$175, -32(%ebp)
	jg	.L113
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	dead_or_set_p@PLT
	testl	%eax, %eax
	jne	.L111
.L113:
	.loc 1 424 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
.L109:
	cmpl	$0, -48(%ebp)
	jne	.L110
.L111:
	.loc 1 584 0
	movl	$0, -56(%ebp)
.L108:
	movl	-56(%ebp), %eax
	.loc 1 585 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	optimize_reg_copy_1, .-optimize_reg_copy_1
	.type	optimize_reg_copy_2, @function
optimize_reg_copy_2:
.LFB23:
	.loc 1 606 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	pushl	%ebx
.LCFI33:
	subl	$52, %esp
.LCFI34:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 609 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 610 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 612 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L166
.L167:
	.loc 1 616 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	perhaps_ends_bb_p
	testl	%eax, %eax
	jne	.L194
	.loc 1 618 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L170
	.loc 1 621 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L172
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L174
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L176
.L174:
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -40(%ebp)
.L176:
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L177
.L172:
	movl	$0, -44(%ebp)
.L177:
	movl	-44(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 622 0
	cmpl	$0, -16(%ebp)
	je	.L178
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L178
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L178
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L178
	.loc 1 629 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L183
.L184:
	.loc 1 630 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L185
	.loc 1 632 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L187
	.loc 1 633 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	replace_rtx@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 44(%eax)
.L187:
	.loc 1 636 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L185
	.loc 1 638 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	32(%edx), %eax
	subl	$1, %eax
	movl	%eax, 32(%edx)
	.loc 1 639 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	32(%edx), %eax
	addl	$1, %eax
	movl	%eax, 32(%edx)
.L185:
	.loc 1 629 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L183:
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L184
	.loc 1 643 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	.loc 1 644 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	24(%edx), %eax
	subl	$1, %eax
	movl	%eax, 24(%edx)
	.loc 1 645 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	.loc 1 646 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	24(%edx), %eax
	subl	$1, %eax
	movl	%eax, 24(%edx)
	.loc 1 647 0
	jmp	.L194
.L178:
	.loc 1 650 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	jne	.L194
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L194
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L170
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L194
.L170:
	.loc 1 612 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L166:
	cmpl	$0, -24(%ebp)
	jne	.L167
.L194:
	.loc 1 655 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	optimize_reg_copy_2, .-optimize_reg_copy_2
	.type	optimize_reg_copy_3, @function
optimize_reg_copy_3:
.LFB24:
	.loc 1 667 0
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	pushl	%ebx
.LCFI37:
	subl	$68, %esp
.LCFI38:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 668 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 669 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 670 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 674 0
	cmpl	$175, -32(%ebp)
	jle	.L232
	cmpl	$175, -28(%ebp)
	jle	.L232
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L232
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	24(%eax), %eax
	cmpl	$1, %eax
	jne	.L232
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	je	.L201
	.loc 1 679 0
	jmp	.L232
.L201:
	.loc 1 680 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L203
.L204:
	.loc 1 683 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	perhaps_ends_bb_p
	testl	%eax, %eax
	jne	.L205
	.loc 1 680 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
.L203:
	cmpl	$0, -24(%ebp)
	je	.L205
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	je	.L204
.L205:
	.loc 1 686 0
	cmpl	$0, -24(%ebp)
	je	.L232
	.loc 1 689 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L209
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L211
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L213
.L211:
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -40(%ebp)
.L213:
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L214
.L209:
	movl	$0, -44(%ebp)
.L214:
	movl	-44(%ebp), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L232
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L232
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L232
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L219
	.loc 1 695 0
	jmp	.L232
.L219:
	.loc 1 699 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L232
	.loc 1 704 0
	movl	-36(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	cmpw	%ax, %cx
	ja	.L221
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L221
	movl	-36(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	cmpw	$32, %ax
	jbe	.L221
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	cmpw	$32, %ax
	jbe	.L232
.L221:
	.loc 1 709 0
	movl	-36(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 710 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	-36(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 711 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 715 0
	movl	-20(%ebp), %edx
	addl	$12, %edx
	movl	$1, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 719 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart_SUBREG@PLT
	movl	%eax, -16(%ebp)
	.loc 1 720 0
	jmp	.L233
.L226:
	.loc 1 722 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L225
	.loc 1 726 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_replace_rtx_group@PLT
.L225:
.L233:
	.loc 1 720 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L226
	.loc 1 729 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_replace_rtx_group@PLT
	.loc 1 732 0
	call	apply_change_group@PLT
	testl	%eax, %eax
	jne	.L229
	.loc 1 735 0
	movl	-12(%ebp), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 736 0
	movl	16(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L232
.L229:
.LBB9:
	.loc 1 740 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -8(%ebp)
	.loc 1 741 0
	cmpl	$0, -8(%ebp)
	je	.L232
	.loc 1 742 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L232:
.LBE9:
	.loc 1 744 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	optimize_reg_copy_3, .-optimize_reg_copy_3
	.type	copy_src_to_dest, @function
copy_src_to_dest:
.LFB25:
	.loc 1 756 0
	pushl	%ebp
.LCFI39:
	movl	%esp, %ebp
.LCFI40:
	pushl	%ebx
.LCFI41:
	subl	$84, %esp
.LCFI42:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 775 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L271
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jle	.L271
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L271
	movl	16(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L271
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jle	.L271
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L241
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L243
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L245
.L243:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -72(%ebp)
.L245:
	movl	-72(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L246
.L241:
	movl	$0, -76(%ebp)
.L246:
	movl	-76(%ebp), %eax
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L271
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L271
	movl	12(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L271
.LBB10:
	.loc 1 784 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 787 0
	call	start_sequence@PLT
	.loc 1 788 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 789 0
	call	get_insns@PLT
	movl	%eax, -56(%ebp)
	.loc 1 790 0
	call	end_sequence@PLT
	.loc 1 792 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L250
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_replace_rtx@PLT
	testl	%eax, %eax
	jne	.L252
.L250:
	.loc 1 798 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 799 0
	jmp	.L271
.L252:
	.loc 1 801 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	.loc 1 802 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 803 0
	movl	-40(%ebp), %eax
	addl	$68, %eax
	movl	%eax, -32(%ebp)
	.loc 1 804 0
	movl	8(%ebp), %eax
	addl	$68, %eax
	movl	%eax, -36(%ebp)
	.loc 1 807 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L253
.L254:
	.loc 1 809 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 810 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L255
	.loc 1 812 0
	movl	-32(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 813 0
	movl	-52(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -32(%ebp)
	jmp	.L257
.L255:
	.loc 1 817 0
	movl	-36(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 818 0
	movl	-52(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -36(%ebp)
.L257:
	.loc 1 807 0
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
.L253:
	cmpl	$0, -52(%ebp)
	jne	.L254
	.loc 1 822 0
	movl	-32(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 823 0
	movl	-36(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 826 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 827 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 828 0
	movl	-16(%ebp), %eax
	cmpl	20(%ebp), %eax
	jge	.L259
	.loc 1 830 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	regmove_bb_head@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 831 0
	cmpl	$0, -20(%ebp)
	js	.L259
	.loc 1 833 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 834 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	regmove_bb_head@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$-1, (%eax)
.L259:
	.loc 1 839 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 840 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	12(%edx), %eax
	addl	$1, %eax
	movl	%eax, 12(%edx)
	.loc 1 841 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	28(%edx), %eax
	addl	$1, %eax
	movl	%eax, 28(%edx)
	.loc 1 842 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L262
	.loc 1 843 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
.L262:
	.loc 1 845 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 846 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L264
	.loc 1 847 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	28(%edx), %eax
	addl	$1, %eax
	movl	%eax, 28(%edx)
.L264:
	.loc 1 849 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L266
	.loc 1 850 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
.L266:
	.loc 1 852 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L268
	.loc 1 853 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
.L268:
	.loc 1 855 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	8(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L271
	.loc 1 856 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%edx)
.L271:
.LBE10:
	.loc 1 858 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	copy_src_to_dest, .-copy_src_to_dest
	.type	reg_is_remote_constant_p, @function
reg_is_remote_constant_p:
.LFB26:
	.loc 1 876 0
	pushl	%ebp
.LCFI43:
	movl	%esp, %ebp
.LCFI44:
	pushl	%ebx
.LCFI45:
	subl	$52, %esp
.LCFI46:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 879 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	je	.L273
	.loc 1 880 0
	movl	$0, -40(%ebp)
	jmp	.L275
.L273:
	.loc 1 883 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L276
.L277:
.LBB11:
	.loc 1 887 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L278
	.loc 1 889 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L280
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L282
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L284
.L282:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -32(%ebp)
.L284:
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L285
.L280:
	movl	$0, -36(%ebp)
.L285:
	movl	-36(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 890 0
	cmpl	$0, -12(%ebp)
	je	.L278
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L278
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L278
	.loc 1 895 0
	movl	$0, -40(%ebp)
	jmp	.L275
.L278:
.LBE11:
	.loc 1 883 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L276:
	cmpl	$0, -16(%ebp)
	jne	.L277
	.loc 1 899 0
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L290
.L291:
.LBB12:
	.loc 1 903 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L292
	.loc 1 905 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L294
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L296
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L298
.L296:
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -24(%ebp)
.L298:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L299
.L294:
	movl	$0, -28(%ebp)
.L299:
	movl	-28(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 906 0
	cmpl	$0, -8(%ebp)
	je	.L292
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L292
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L292
	.loc 1 912 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L303
	.loc 1 913 0
	movl	$1, -40(%ebp)
	jmp	.L275
.L303:
	.loc 1 914 0
	movl	$0, -40(%ebp)
	jmp	.L275
.L292:
.LBE12:
	.loc 1 899 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L290:
	cmpl	$0, -16(%ebp)
	je	.L305
	movl	-16(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L291
.L305:
	.loc 1 918 0
	movl	$0, -40(%ebp)
.L275:
	movl	-40(%ebp), %eax
	.loc 1 919 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	reg_is_remote_constant_p, .-reg_is_remote_constant_p
	.section	.rodata
.LC0:
	.string	"Fixed operand of insn %d.\n"
	.text
	.type	fixup_match_2, @function
fixup_match_2:
.LFB27:
	.loc 1 943 0
	pushl	%ebp
.LCFI47:
	movl	%esp, %ebp
.LCFI48:
	pushl	%edi
.LCFI49:
	pushl	%esi
.LCFI50:
	pushl	%ebx
.LCFI51:
	subl	$76, %esp
.LCFI52:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 944 0
	movl	$0, -36(%ebp)
	.loc 1 945 0
	movl	$0, -28(%ebp)
	.loc 1 950 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_regno_note@PLT
	testl	%eax, %eax
	je	.L309
	.loc 1 951 0
	movl	$0, -60(%ebp)
	jmp	.L311
.L309:
	.loc 1 955 0
	movl	$0, -32(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L312
.L313:
.LBB13:
	.loc 1 961 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	perhaps_ends_bb_p
	testl	%eax, %eax
	jne	.L314
	.loc 1 963 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L316
	.loc 1 966 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	find_regno_note@PLT
	testl	%eax, %eax
	je	.L318
	.loc 1 967 0
	movl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
.L318:
	.loc 1 968 0
	cmpl	$0, -36(%ebp)
	jne	.L320
	.loc 1 969 0
	addl	$1, -32(%ebp)
.L320:
	.loc 1 971 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L322
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L324
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L326
.L324:
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -52(%ebp)
.L326:
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L327
.L322:
	movl	$0, -56(%ebp)
.L327:
	movl	-56(%ebp), %edx
	movl	%edx, -24(%ebp)
	.loc 1 972 0
	cmpl	$0, -24(%ebp)
	je	.L328
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L328
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L328
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L328
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L328
.LBB14:
	.loc 1 978 0
	movl	20(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 979 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_add3_insn@PLT
	movl	%eax, -20(%ebp)
	.loc 1 981 0
	cmpl	$0, -20(%ebp)
	je	.L328
	movl	8(%ebp), %edx
	addl	$44, %edx
	movl	$0, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	je	.L328
	.loc 1 984 0
	cmpl	$0, -36(%ebp)
	je	.L336
	.loc 1 986 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	remove_death@PLT
	.loc 1 987 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	addl	-32(%ebp), %eax
	movl	%eax, 28(%ecx)
	.loc 1 988 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	addl	-28(%ebp), %eax
	movl	%eax, 32(%ecx)
.L336:
	.loc 1 991 0
	cmpl	$0, 24(%ebp)
	je	.L338
	.loc 1 992 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L338:
	.loc 1 1025 0
	movl	$1, -60(%ebp)
	jmp	.L311
.L328:
.LBE14:
	.loc 1 1029 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	jne	.L314
	.loc 1 1038 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L341
	.loc 1 1040 0
	cmpl	$0, -36(%ebp)
	jne	.L343
	.loc 1 1041 0
	addl	$1, -28(%ebp)
.L343:
	.loc 1 1043 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L314
	.loc 1 1046 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	call_used_regs@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	jne	.L314
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$59, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_fusage@PLT
	testl	%eax, %eax
	jne	.L314
	jmp	.L316
.L341:
	.loc 1 1050 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	jne	.L314
.L316:
.LBE13:
	.loc 1 955 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
.L312:
	cmpl	$0, -40(%ebp)
	jne	.L313
.L314:
	.loc 1 1054 0
	movl	$0, -60(%ebp)
.L311:
	movl	-60(%ebp), %eax
	.loc 1 1055 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE27:
	.size	fixup_match_2, .-fixup_match_2
	.section	.rodata
.LC1:
	.string	"backward"
.LC2:
	.string	"forward"
.LC3:
	.string	"Starting %s pass...\n"
.LC4:
	.string	"Starting backward pass...\n"
	.align 4
.LC5:
	.string	"Could fix operand %d of insn %d matching operand %d.\n"
	.align 4
.LC6:
	.string	"Fixed operand %d of insn %d matching operand %d.\n"
	.text
.globl regmove_optimize
	.type	regmove_optimize, @function
regmove_optimize:
.LFB28:
	.loc 1 1068 0
	pushl	%ebp
.LCFI53:
	movl	%esp, %ebp
.LCFI54:
	pushl	%esi
.LCFI55:
	pushl	%ebx
.LCFI56:
	subl	$720, %esp
.LCFI57:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1069 0
	call	get_max_uid@PLT
	movl	%eax, -156(%ebp)
	.loc 1 1079 0
	movl	flag_non_call_exceptions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L535
	.loc 1 1084 0
	call	discover_flags_reg
	movl	%eax, (%esp)
	call	mark_flags_life_zones
	.loc 1 1086 0
	movl	12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, regno_src_regno@GOTOFF(%ebx)
	.loc 1 1087 0
	movl	12(%ebp), %eax
	movl	%eax, -144(%ebp)
	jmp	.L352
.L353:
	movl	-144(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	regno_src_regno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$-1, (%eax)
.L352:
	subl	$1, -144(%ebp)
	cmpl	$0, -144(%ebp)
	jns	.L353
	.loc 1 1089 0
	movl	-156(%ebp), %eax
	sall	$2, %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, regmove_bb_head@GOTOFF(%ebx)
	.loc 1 1090 0
	movl	-156(%ebp), %eax
	movl	%eax, -144(%ebp)
	jmp	.L355
.L356:
	movl	-144(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	regmove_bb_head@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$-1, (%eax)
	subl	$1, -144(%ebp)
.L355:
	cmpl	$0, -144(%ebp)
	jns	.L356
	.loc 1 1091 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -132(%ebp)
	jmp	.L358
.L359:
	.loc 1 1092 0
	movl	-132(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	regmove_bb_head@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-132(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 1091 0
	movl	-132(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -132(%ebp)
.L358:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -132(%ebp)
	jne	.L359
	.loc 1 1096 0
	movl	$0, -148(%ebp)
	jmp	.L361
.L362:
	.loc 1 1098 0
	movl	flag_regmove@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L363
	movl	flag_expensive_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -148(%ebp)
	jge	.L365
.L363:
	.loc 1 1101 0
	cmpl	$0, 16(%ebp)
	je	.L366
	.loc 1 1102 0
	cmpl	$0, -148(%ebp)
	je	.L368
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, -684(%ebp)
	jmp	.L370
.L368:
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, -684(%ebp)
.L370:
	movl	-684(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L366:
	.loc 1 1105 0
	cmpl	$0, -148(%ebp)
	je	.L371
	call	get_last_insn@PLT
	movl	%eax, -680(%ebp)
	jmp	.L373
.L371:
	movl	8(%ebp), %eax
	movl	%eax, -680(%ebp)
.L373:
	movl	-680(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	.L374
.L375:
.LBB15:
	.loc 1 1111 0
	movl	-152(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L376
	movl	-152(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L378
	movl	-152(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -672(%ebp)
	jmp	.L380
.L378:
	movl	-152(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -672(%ebp)
.L380:
	movl	-672(%ebp), %eax
	movl	%eax, -676(%ebp)
	jmp	.L381
.L376:
	movl	$0, -676(%ebp)
.L381:
	movl	-676(%ebp), %eax
	movl	%eax, -128(%ebp)
	.loc 1 1112 0
	cmpl	$0, -128(%ebp)
	je	.L382
	.loc 1 1115 0
	movl	flag_expensive_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L384
	cmpl	$0, -148(%ebp)
	jne	.L384
	movl	-128(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$130, %ax
	je	.L387
	movl	-128(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$131, %ax
	jne	.L384
.L387:
	movl	-128(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L384
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L384
	.loc 1 1120 0
	movl	-128(%ebp), %eax
	movl	12(%eax), %edx
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	optimize_reg_copy_3
.L384:
	.loc 1 1122 0
	movl	flag_expensive_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L391
	cmpl	$0, -148(%ebp)
	jne	.L391
	movl	-128(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L391
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L391
	.loc 1 1129 0
	movl	-128(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L396
	movl	-128(%ebp), %eax
	movl	12(%eax), %edx
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	optimize_reg_copy_1
	testl	%eax, %eax
	je	.L391
.L396:
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L391
	.loc 1 1134 0
	movl	-128(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L399
	.loc 1 1135 0
	movl	-128(%ebp), %eax
	movl	12(%eax), %edx
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	optimize_reg_copy_2
.L399:
	.loc 1 1136 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	regno_src_regno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L391
	movl	-128(%ebp), %eax
	movl	12(%eax), %edx
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L391
.LBB16:
	.loc 1 1139 0
	movl	-128(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -116(%ebp)
	.loc 1 1140 0
	movl	-116(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	regno_src_regno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L403
	.loc 1 1141 0
	movl	-116(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	regno_src_regno@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
.L403:
	.loc 1 1142 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	regno_src_regno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-116(%ebp), %eax
	movl	%eax, (%edx)
.L391:
.LBE16:
	.loc 1 1146 0
	movl	flag_regmove@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L382
	.loc 1 1149 0
	leal	-636(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	find_matches
	testl	%eax, %eax
	je	.L382
	.loc 1 1159 0
	movl	$0, -124(%ebp)
	jmp	.L407
.L408:
.LBB17:
	.loc 1 1164 0
	movl	-124(%ebp), %eax
	movl	-636(%ebp,%eax,4), %eax
	movl	%eax, -120(%ebp)
	.loc 1 1167 0
	cmpl	$0, -120(%ebp)
	js	.L409
	.loc 1 1170 0
	movl	-124(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -112(%ebp)
	.loc 1 1171 0
	movl	-120(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -108(%ebp)
	.loc 1 1173 0
	movl	-112(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L409
	.loc 1 1176 0
	movl	-112(%ebp), %eax
	movl	%eax, -104(%ebp)
	.loc 1 1177 0
	movl	-108(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L412
	movl	-108(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-108(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jb	.L412
	.loc 1 1181 0
	movl	-108(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-108(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%edx, 8(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -104(%ebp)
	.loc 1 1184 0
	movl	-108(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -108(%ebp)
.L412:
	.loc 1 1186 0
	movl	-108(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L409
	movl	-108(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L409
	.loc 1 1190 0
	movl	-112(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L417
	.loc 1 1192 0
	movl	-124(%ebp), %eax
	movl	-396(%ebp,%eax,4), %eax
	cmpl	-124(%ebp), %eax
	jge	.L409
	.loc 1 1193 0
	movl	-108(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	regno_src_regno@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-112(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 1194 0
	jmp	.L409
.L417:
	.loc 1 1197 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-112(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	js	.L409
	.loc 1 1202 0
	movl	-124(%ebp), %eax
	movl	-516(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L409
	movl	-120(%ebp), %eax
	movl	-516(%ebp,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L409
	.loc 1 1206 0
	movl	-120(%ebp), %eax
	movl	-276(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L424
	movl	-152(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	count_occurrences@PLT
	cmpl	$1, %eax
	jg	.L409
.L424:
	.loc 1 1211 0
	movl	-120(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L409
	.loc 1 1215 0
	movl	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	operands_match_p@PLT
	testl	%eax, %eax
	jne	.L409
	.loc 1 1219 0
	movl	-124(%ebp), %eax
	movl	-396(%ebp,%eax,4), %eax
	testl	%eax, %eax
	js	.L428
.LBB18:
	.loc 1 1221 0
	movl	-124(%ebp), %eax
	movl	-396(%ebp,%eax,4), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -92(%ebp)
	.loc 1 1222 0
	movl	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	operands_match_p@PLT
	testl	%eax, %eax
	je	.L428
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	replacement_quality
	movl	%eax, %esi
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	replacement_quality
	cmpl	%eax, %esi
	jge	.L409
.L428:
.LBE18:
	.loc 1 1228 0
	movl	-112(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	reg_preferred_class@PLT
	movl	%eax, -100(%ebp)
	.loc 1 1229 0
	movl	-108(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	reg_preferred_class@PLT
	movl	%eax, -96(%ebp)
	.loc 1 1230 0
	movl	-96(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	regclass_compatible_p
	testl	%eax, %eax
	je	.L409
	.loc 1 1233 0
	movl	-112(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	-108(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L409
	.loc 1 1236 0
	movl	16(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_match_1
	testl	%eax, %eax
	jne	.L382
.L409:
.LBE17:
	.loc 1 1159 0
	addl	$1, -124(%ebp)
.L407:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	620(%eax), %eax
	movzbl	%al, %eax
	cmpl	-124(%ebp), %eax
	jg	.L408
.L382:
.LBE15:
	.loc 1 1106 0
	cmpl	$0, -148(%ebp)
	je	.L433
	movl	-152(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -668(%ebp)
	jmp	.L435
.L433:
	movl	-152(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -668(%ebp)
.L435:
	movl	-668(%ebp), %eax
	movl	%eax, -152(%ebp)
.L374:
	.loc 1 1105 0
	cmpl	$0, -152(%ebp)
	jne	.L375
	.loc 1 1096 0
	addl	$1, -148(%ebp)
.L361:
	cmpl	$2, -148(%ebp)
	jle	.L362
	.loc 1 1246 0
	cmpl	$0, 16(%ebp)
	je	.L438
	.loc 1 1247 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$26, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L438:
	.loc 1 1249 0
	call	get_last_insn@PLT
	movl	%eax, -152(%ebp)
	jmp	.L440
.L441:
	.loc 1 1251 0
	movl	-152(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L442
.LBB19:
	.loc 1 1254 0
	movl	$0, -80(%ebp)
	.loc 1 1256 0
	leal	-636(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	find_matches
	testl	%eax, %eax
	je	.L442
	.loc 1 1265 0
	movl	$0, -140(%ebp)
	.loc 1 1266 0
	movl	$0, -136(%ebp)
	.loc 1 1267 0
	movl	$0, -88(%ebp)
	jmp	.L445
.L446:
.LBB20:
	.loc 1 1271 0
	movl	$0, -52(%ebp)
	.loc 1 1275 0
	movl	-88(%ebp), %eax
	movl	-636(%ebp,%eax,4), %eax
	movl	%eax, -84(%ebp)
	.loc 1 1278 0
	cmpl	$0, -84(%ebp)
	js	.L447
	.loc 1 1281 0
	movl	-84(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -64(%ebp)
	.loc 1 1282 0
	movl	-88(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -68(%ebp)
	.loc 1 1284 0
	movl	-68(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L447
	.loc 1 1287 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L447
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L447
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	js	.L447
	movl	-64(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L447
	.loc 1 1294 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	operands_match_p@PLT
	testl	%eax, %eax
	jne	.L447
	.loc 1 1297 0
	movl	-88(%ebp), %eax
	movl	-396(%ebp,%eax,4), %eax
	testl	%eax, %eax
	js	.L455
.LBB21:
	.loc 1 1299 0
	movl	-88(%ebp), %eax
	movl	-396(%ebp,%eax,4), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1300 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	operands_match_p@PLT
	testl	%eax, %eax
	jne	.L447
.L455:
.LBE21:
	.loc 1 1304 0
	movl	-152(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L457
	movl	-152(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L459
	movl	-152(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -660(%ebp)
	jmp	.L461
.L459:
	movl	-152(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -660(%ebp)
.L461:
	movl	-660(%ebp), %eax
	movl	%eax, -664(%ebp)
	jmp	.L462
.L457:
	movl	$0, -664(%ebp)
.L462:
	movl	-664(%ebp), %eax
	movl	%eax, -76(%ebp)
	.loc 1 1305 0
	cmpl	$0, -76(%ebp)
	je	.L447
	.loc 1 1313 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	jne	.L447
	.loc 1 1318 0
	movl	-88(%ebp), %eax
	movl	-516(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L447
	movl	-84(%ebp), %eax
	movl	-516(%ebp,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L447
	.loc 1 1322 0
	movl	-84(%ebp), %eax
	movl	-276(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L467
	movl	-152(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	count_occurrences@PLT
	cmpl	$1, %eax
	jg	.L447
.L467:
	.loc 1 1327 0
	movl	-84(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L447
	.loc 1 1330 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L470
	.loc 1 1332 0
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L447
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L447
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-68(%ebp), %eax
	jne	.L447
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_match_2
	testl	%eax, %eax
	jne	.L476
	.loc 1 1339 0
	jmp	.L447
.L470:
	.loc 1 1341 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	reg_preferred_class@PLT
	movl	%eax, -48(%ebp)
	.loc 1 1342 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	reg_preferred_class@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1344 0
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -60(%ebp)
	cmpl	$0, -60(%ebp)
	je	.L447
	.loc 1 1358 0
	movl	-44(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	regclass_compatible_p
	testl	%eax, %eax
	jne	.L478
	.loc 1 1360 0
	cmpl	$0, -140(%ebp)
	jne	.L447
	.loc 1 1362 0
	movl	-68(%ebp), %eax
	movl	%eax, -140(%ebp)
	.loc 1 1363 0
	movl	-64(%ebp), %eax
	movl	%eax, -136(%ebp)
	.loc 1 1365 0
	jmp	.L447
.L478:
	.loc 1 1370 0
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L482
	.loc 1 1372 0
	cmpl	$0, -140(%ebp)
	jne	.L447
	.loc 1 1374 0
	movl	-68(%ebp), %eax
	movl	%eax, -140(%ebp)
	.loc 1 1375 0
	movl	-64(%ebp), %eax
	movl	%eax, -136(%ebp)
	.loc 1 1377 0
	jmp	.L447
.L482:
	.loc 1 1385 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_is_remote_constant_p
	testl	%eax, %eax
	je	.L486
	.loc 1 1387 0
	cmpl	$0, -140(%ebp)
	jne	.L447
	.loc 1 1389 0
	movl	-68(%ebp), %eax
	movl	%eax, -140(%ebp)
	.loc 1 1390 0
	movl	-64(%ebp), %eax
	movl	%eax, -136(%ebp)
	.loc 1 1392 0
	jmp	.L447
.L486:
	.loc 1 1396 0
	cmpl	$0, 16(%ebp)
	je	.L490
	.loc 1 1397 0
	movl	-152(%ebp), %eax
	movl	4(%eax), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L490:
	.loc 1 1405 0
	movl	$0, -40(%ebp)
	movl	-152(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L492
.L493:
.LBB22:
	.loc 1 1412 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	perhaps_ends_bb_p
	testl	%eax, %eax
	jne	.L494
	.loc 1 1414 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L496
	.loc 1 1417 0
	addl	$1, -40(%ebp)
	.loc 1 1421 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L498
	movl	-72(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L500
	movl	-72(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -652(%ebp)
	jmp	.L502
.L500:
	movl	-72(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -652(%ebp)
.L502:
	movl	-652(%ebp), %eax
	movl	%eax, -656(%ebp)
	jmp	.L503
.L498:
	movl	$0, -656(%ebp)
.L503:
	movl	-656(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1422 0
	cmpl	$0, -32(%ebp)
	je	.L504
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-68(%ebp), %eax
	jne	.L504
	.loc 1 1427 0
	movl	-152(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_replace_rtx@PLT
	testl	%eax, %eax
	je	.L494
	.loc 1 1429 0
	movl	-32(%ebp), %edx
	addl	$4, %edx
	movl	$0, 12(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	je	.L509
	.loc 1 1431 0
	movl	$1, -80(%ebp)
	jmp	.L494
.L509:
	.loc 1 1436 0
	movl	-152(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_replace_rtx@PLT
	.loc 1 1438 0
	movl	-84(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	$0, 12(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 1443 0
	jmp	.L494
.L504:
	.loc 1 1446 0
	movl	-72(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L494
	movl	-72(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L494
	.loc 1 1453 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L496
	.loc 1 1455 0
	addl	$1, -52(%ebp)
	.loc 1 1457 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L494
.L496:
.LBE22:
	.loc 1 1405 0
	movl	-72(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -72(%ebp)
.L492:
	cmpl	$0, -72(%ebp)
	jne	.L493
.L494:
	.loc 1 1462 0
	cmpl	$0, -80(%ebp)
	je	.L447
.LBB23:
	.loc 1 1467 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	.loc 1 1470 0
	movl	-72(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L515
	.loc 1 1472 0
	movl	-72(%ebp), %eax
	movl	68(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1473 0
	movl	-72(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 68(%edx)
.L515:
	.loc 1 1477 0
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	je	.L517
	.loc 1 1478 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L517:
	.loc 1 1480 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1481 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1483 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	12(%edx), %eax
	addl	$1, %eax
	movl	%eax, 12(%edx)
	.loc 1 1484 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	12(%edx), %eax
	subl	$1, %eax
	movl	%eax, 12(%edx)
	.loc 1 1486 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	addl	-52(%ebp), %eax
	movl	%eax, 32(%ecx)
	.loc 1 1487 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	subl	-52(%ebp), %eax
	movl	%eax, 32(%ecx)
	.loc 1 1489 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	addl	-40(%ebp), %eax
	movl	%eax, 28(%ecx)
	.loc 1 1490 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	js	.L519
	.loc 1 1492 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	subl	-40(%ebp), %eax
	movl	%eax, 28(%ecx)
	.loc 1 1496 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	cmpl	$1, %eax
	jg	.L519
	.loc 1 1497 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$2, 28(%eax)
.L519:
	.loc 1 1500 0
	cmpl	$0, 16(%ebp)
	je	.L476
	.loc 1 1501 0
	movl	-152(%ebp), %eax
	movl	4(%eax), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 1505 0
	jmp	.L476
.L447:
.LBE23:
.LBE20:
	.loc 1 1267 0
	addl	$1, -88(%ebp)
.L445:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	620(%eax), %eax
	movzbl	%al, %eax
	cmpl	-88(%ebp), %eax
	jg	.L446
.L476:
	.loc 1 1511 0
	cmpl	$0, -80(%ebp)
	jne	.L442
	cmpl	$0, -140(%ebp)
	je	.L442
	.loc 1 1512 0
	movl	-156(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_src_to_dest
.L442:
.LBE19:
	.loc 1 1249 0
	movl	-152(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -152(%ebp)
.L440:
	cmpl	$0, -152(%ebp)
	jne	.L441
	.loc 1 1519 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -132(%ebp)
	jmp	.L527
.L528:
.LBB24:
	.loc 1 1521 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1522 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1523 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1524 0
	jmp	.L529
.L530:
	.loc 1 1526 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L529:
	.loc 1 1524 0
	cmpl	$0, -12(%ebp)
	je	.L531
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-156(%ebp), %eax
	jl	.L531
	movl	-132(%ebp), %eax
	movl	52(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L530
	movl	-132(%ebp), %eax
	movl	52(%eax), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L530
.L531:
	.loc 1 1527 0
	movl	-132(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%edx)
.LBE24:
	.loc 1 1519 0
	movl	-132(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -132(%ebp)
.L527:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -132(%ebp)
	jne	.L528
.L365:
	.loc 1 1532 0
	movl	regno_src_regno@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1533 0
	movl	regmove_bb_head@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L535:
	.loc 1 1534 0
	addl	$720, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE28:
	.size	regmove_optimize, .-regmove_optimize
	.type	find_matches, @function
find_matches:
.LFB29:
	.loc 1 1546 0
	pushl	%ebp
.LCFI58:
	movl	%esp, %ebp
.LCFI59:
	pushl	%ebx
.LCFI60:
	subl	$180, %esp
.LCFI61:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1549 0
	movl	$0, -28(%ebp)
	.loc 1 1551 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_insn@PLT
	.loc 1 1552 0
	movl	$0, (%esp)
	call	constrain_operands@PLT
	testl	%eax, %eax
	jne	.L537
	.loc 1 1553 0
	movl	$0, -168(%ebp)
	jmp	.L539
.L537:
	.loc 1 1558 0
	movl	recog_data@GOT(%ebx), %eax
	movzbl	620(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	jmp	.L540
.L541:
	.loc 1 1559 0
	movl	-32(%ebp), %ecx
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	$-1, 240(%eax,%edx,4)
	movl	12(%ebp), %eax
	movl	240(%eax,%edx,4), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax,%ecx,4)
.L540:
	.loc 1 1558 0
	subl	$1, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jns	.L541
	.loc 1 1561 0
	movl	$0, -32(%ebp)
	jmp	.L543
.L544:
.LBB25:
	.loc 1 1565 0
	movl	$0, -20(%ebp)
	.loc 1 1567 0
	movl	-32(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	240(%eax,%edx,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1569 0
	movl	-32(%ebp), %eax
	movl	$0, -156(%ebp,%eax,4)
	.loc 1 1570 0
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	$0, 120(%eax,%edx,4)
	.loc 1 1571 0
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	$0, 360(%eax,%edx,4)
	.loc 1 1572 0
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$61, %al
	jne	.L545
	.loc 1 1573 0
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	$1, 120(%eax,%edx,4)
	jmp	.L549
.L545:
	.loc 1 1574 0
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$43, %al
	jne	.L549
	.loc 1 1575 0
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	$2, 120(%eax,%edx,4)
	.loc 1 1577 0
	jmp	.L549
.L550:
	.loc 1 1578 0
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	jne	.L551
	.loc 1 1579 0
	addl	$1, -20(%ebp)
.L551:
	.loc 1 1577 0
	addl	$1, -24(%ebp)
.L549:
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L573
	movl	which_alternative@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jl	.L550
	.loc 1 1581 0
	jmp	.L573
.L556:
	.loc 1 1582 0
	movzbl	-5(%ebp), %eax
	subl	$37, %eax
	movl	%eax, -172(%ebp)
	cmpl	$85, -172(%ebp)
	ja	.L555
	movl	-172(%ebp), %eax
	sall	$2, %eax
	movl	.L563@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L563:
	.long	.L557@GOTOFF
	.long	.L558@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L560@GOTOFF
	.long	.L560@GOTOFF
	.long	.L560@GOTOFF
	.long	.L560@GOTOFF
	.long	.L560@GOTOFF
	.long	.L560@GOTOFF
	.long	.L560@GOTOFF
	.long	.L560@GOTOFF
	.long	.L560@GOTOFF
	.long	.L560@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L562@GOTOFF
	.long	.L555@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L555@GOTOFF
	.long	.L562@GOTOFF
	.long	.L555@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L555@GOTOFF
	.long	.L555@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.text
.L558:
	.loc 1 1589 0
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	$1, 360(%eax,%edx,4)
	.loc 1 1590 0
	jmp	.L555
.L557:
	.loc 1 1592 0
	movl	-32(%ebp), %ecx
	movl	-32(%ebp), %edx
	addl	$1, %edx
	movl	12(%ebp), %eax
	movl	%edx, 240(%eax,%ecx,4)
	.loc 1 1593 0
	movl	-32(%ebp), %ecx
	addl	$1, %ecx
	movl	12(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 240(%edx,%ecx,4)
	.loc 1 1594 0
	jmp	.L555
.L560:
.LBB26:
	.loc 1 1600 0
	movl	-24(%ebp), %edx
	subl	$1, %edx
	movl	$10, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strtoul@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1601 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1603 0
	movl	-36(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1605 0
	movl	-12(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jge	.L564
	movl	-12(%ebp), %eax
	movl	-156(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L555
.L564:
	.loc 1 1607 0
	movl	-32(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx,%ecx,4)
	.loc 1 1608 0
	movl	$1, -28(%ebp)
	.loc 1 1609 0
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	240(%eax,%edx,4), %eax
	testl	%eax, %eax
	js	.L555
	.loc 1 1610 0
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	240(%eax,%edx,4), %ecx
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx,%ecx,4)
	.loc 1 1612 0
	jmp	.L555
.L562:
.LBE26:
	.loc 1 1618 0
	movzbl	-5(%ebp), %edx
	movl	mips_char_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, %edx
	movl	reg_class_size@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	jne	.L555
	.loc 1 1619 0
	movl	-32(%ebp), %eax
	movl	$1, -156(%ebp,%eax,4)
.L555:
.L573:
	.loc 1 1581 0
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	cmpb	$0, -5(%ebp)
	setne	%al
	addl	$1, -24(%ebp)
	xorl	$1, %eax
	testb	%al, %al
	jne	.L569
	cmpb	$44, -5(%ebp)
	jne	.L556
.L569:
.LBE25:
	.loc 1 1561 0
	addl	$1, -32(%ebp)
.L543:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	620(%eax), %eax
	movzbl	%al, %eax
	cmpl	-32(%ebp), %eax
	jg	.L544
	.loc 1 1623 0
	movl	-28(%ebp), %eax
	movl	%eax, -168(%ebp)
.L539:
	movl	-168(%ebp), %eax
	.loc 1 1624 0
	addl	$180, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	find_matches, .-find_matches
	.type	replace_in_call_usage, @function
replace_in_call_usage:
.LFB30:
	.loc 1 1635 0
	pushl	%ebp
.LCFI62:
	movl	%esp, %ebp
.LCFI63:
	pushl	%ebx
.LCFI64:
	subl	$52, %esp
.LCFI65:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1636 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1641 0
	cmpl	$0, -24(%ebp)
	je	.L588
	.loc 1 1644 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1645 0
	cmpl	$71, -20(%ebp)
	jne	.L577
	.loc 1 1647 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L588
	.loc 1 1650 0
	movl	$1, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 1652 0
	jmp	.L588
.L577:
	.loc 1 1656 0
	movl	-20(%ebp), %eax
	movl	rtx_format@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1657 0
	movl	$0, -12(%ebp)
	jmp	.L580
.L581:
	.loc 1 1658 0
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L582
	.loc 1 1659 0
	movl	-12(%ebp), %eax
	sall	$3, %eax
	addl	-24(%ebp), %eax
	leal	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	replace_in_call_usage
	jmp	.L584
.L582:
	.loc 1 1660 0
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L584
	.loc 1 1661 0
	movl	$0, -8(%ebp)
	jmp	.L586
.L587:
	.loc 1 1662 0
	movl	-12(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	leal	4(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	replace_in_call_usage
	.loc 1 1661 0
	addl	$1, -8(%ebp)
.L586:
	movl	-12(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L587
.L584:
	.loc 1 1657 0
	addl	$1, -12(%ebp)
	addl	$1, -16(%ebp)
.L580:
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-12(%ebp), %eax
	jg	.L581
.L588:
	.loc 1 1663 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	replace_in_call_usage, .-replace_in_call_usage
	.type	fixup_match_1, @function
fixup_match_1:
.LFB31:
	.loc 1 1678 0
	pushl	%ebp
.LCFI66:
	movl	%esp, %ebp
.LCFI67:
	pushl	%ebx
.LCFI68:
	subl	$196, %esp
.LCFI69:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1680 0
	movl	$0, -100(%ebp)
	movl	$0, -96(%ebp)
	movl	$0, -92(%ebp)
	.loc 1 1681 0
	movl	$0, -88(%ebp)
	.loc 1 1682 0
	movl	$0, -84(%ebp)
	movl	$0, -80(%ebp)
	.loc 1 1683 0
	movl	$47, -76(%ebp)
	.loc 1 1684 0
	movl	$0, -120(%ebp)
	movl	$0, -116(%ebp)
	.loc 1 1685 0
	movl	$0, -72(%ebp)
	.loc 1 1686 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -68(%ebp)
	movl	$0, -64(%ebp)
	.loc 1 1692 0
	movl	16(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L590
	.loc 1 1693 0
	movl	$0, -172(%ebp)
	jmp	.L592
.L590:
	.loc 1 1695 0
	cmpl	$0, -68(%ebp)
	jne	.L593
	.loc 1 1705 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -76(%ebp)
	.loc 1 1706 0
	cmpl	$85, -76(%ebp)
	je	.L595
	cmpl	$100, -76(%ebp)
	je	.L595
	cmpl	$97, -76(%ebp)
	je	.L595
	cmpl	$99, -76(%ebp)
	jne	.L599
.L595:
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L599
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L599
	.loc 1 1710 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	.loc 1 1706 0
	jmp	.L593
.L599:
	.loc 1 1711 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	stable_and_no_regs_but_for_p
	testl	%eax, %eax
	jne	.L602
	.loc 1 1712 0
	movl	$0, -172(%ebp)
	jmp	.L592
.L602:
	.loc 1 1715 0
	movl	$47, -76(%ebp)
.L593:
	.loc 1 1718 0
	cmpl	$0, 40(%ebp)
	je	.L604
	.loc 1 1719 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	40(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L604:
	.loc 1 1727 0
	call	get_insns@PLT
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_is_remote_constant_p
	testl	%eax, %eax
	je	.L606
	.loc 1 1728 0
	movl	$0, -172(%ebp)
	jmp	.L592
.L606:
	.loc 1 1735 0
	movl	$0, -56(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -104(%ebp)
	jmp	.L608
.L609:
	.loc 1 1737 0
	movl	-104(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L610
	.loc 1 1738 0
	movl	24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-104(%ebp), %ecx
	addl	$76, %ecx
	movl	-104(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	replace_in_call_usage
.L610:
	.loc 1 1743 0
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	perhaps_ends_bb_p
	testl	%eax, %eax
	jne	.L612
	.loc 1 1745 0
	movl	-104(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L614
	.loc 1 1748 0
	addl	$1, -60(%ebp)
	.loc 1 1749 0
	cmpl	$0, -68(%ebp)
	je	.L616
	.loc 1 1750 0
	addl	$1, -56(%ebp)
.L616:
	.loc 1 1752 0
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	jne	.L612
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	jne	.L612
	movl	-104(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L620
	movl	-104(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L612
.L620:
	.loc 1 1759 0
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	find_regno_note@PLT
	movl	%eax, -64(%ebp)
	cmpl	$0, -64(%ebp)
	je	.L622
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %edx
	movl	24(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L622
	.loc 1 1766 0
	cmpl	$0, -72(%ebp)
	je	.L625
	movl	-104(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L612
.L625:
	.loc 1 1769 0
	cmpl	$0, -68(%ebp)
	jne	.L627
.LBB27:
	.loc 1 1772 0
	movl	$0, -48(%ebp)
	.loc 1 1776 0
	movl	-104(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L612
	.loc 1 1778 0
	movl	-104(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L630
.L631:
	.loc 1 1783 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	perhaps_ends_bb_p
	testl	%eax, %eax
	je	.L632
	.loc 1 1785 0
	movl	$0, -52(%ebp)
	.loc 1 1786 0
	jmp	.L634
.L632:
	.loc 1 1788 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L635
	.loc 1 1790 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L634
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	jne	.L634
.L635:
	.loc 1 1778 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
.L630:
	cmpl	$0, -52(%ebp)
	jne	.L631
.L634:
	.loc 1 1794 0
	cmpl	$0, -52(%ebp)
	je	.L638
	.loc 1 1795 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L640
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L642
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -164(%ebp)
	jmp	.L644
.L642:
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -164(%ebp)
.L644:
	movl	-164(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	.L645
.L640:
	movl	$0, -168(%ebp)
.L645:
	movl	-168(%ebp), %edx
	movl	%edx, -48(%ebp)
.L638:
	.loc 1 1796 0
	cmpl	$0, -52(%ebp)
	je	.L646
	cmpl	$0, -48(%ebp)
	je	.L646
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-76(%ebp), %eax
	jne	.L646
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L646
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L646
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L652
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L652
.L646:
	.loc 1 1808 0
	cmpl	$85, -76(%ebp)
	jne	.L612
	cmpl	$0, 28(%ebp)
	je	.L612
	cmpl	$0, -64(%ebp)
	je	.L656
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L656
	movl	-104(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L656
	movl	-104(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L660
	movl	-104(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L656
	jmp	.L663
.L660:
	movl	-104(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	testl	%eax, %eax
	je	.L656
.L663:
	movl	-104(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L664
	movl	-104(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L666
	movl	-104(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -156(%ebp)
	jmp	.L668
.L666:
	movl	-104(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -156(%ebp)
.L668:
	movl	-156(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L669
.L664:
	movl	$0, -160(%ebp)
.L669:
	movl	-160(%ebp), %edx
	movl	4(%edx), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L656
	movl	-104(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L671
	movl	-104(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L673
	movl	-104(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -148(%ebp)
	jmp	.L675
.L673:
	movl	-104(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -148(%ebp)
.L675:
	movl	-148(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	.L676
.L671:
	movl	$0, -152(%ebp)
.L676:
	movl	-152(%ebp), %edx
	movl	4(%edx), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L612
.L656:
	movl	-104(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L612
	.loc 1 1821 0
	movl	-52(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 1822 0
	movl	8(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1823 0
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1824 0
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	.loc 1 1825 0
	movl	$86, -76(%ebp)
	.loc 1 1796 0
	jmp	.L678
.L652:
	.loc 1 1832 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	subl	-120(%ebp), %eax
	sbbl	-116(%ebp), %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	.loc 1 1834 0
	cmpl	$85, -76(%ebp)
	je	.L679
	cmpl	$0, -108(%ebp)
	js	.L612
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -136(%ebp)
	movl	-136(%ebp), %edx
	movl	%edx, -136(%ebp)
	movl	$0, -132(%ebp)
	movl	-132(%ebp), %eax
	cmpl	%eax, -140(%ebp)
	ja	.L612
	movl	-132(%ebp), %edx
	cmpl	%edx, -140(%ebp)
	jb	.L679
	movl	-136(%ebp), %eax
	cmpl	%eax, -144(%ebp)
	jae	.L612
.L679:
	.loc 1 1840 0
	cmpl	$85, -76(%ebp)
	jne	.L678
	.loc 1 1842 0
	movl	-52(%ebp), %eax
	movl	%eax, -100(%ebp)
	.loc 1 1843 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L678
	.loc 1 1844 0
	movl	-48(%ebp), %eax
	movl	%eax, -96(%ebp)
.L678:
	.loc 1 1850 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	addl	$12, %eax
	movl	$1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
.L627:
.LBE27:
	.loc 1 1853 0
	movl	36(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	$1, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 1854 0
	movl	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_replace_rtx@PLT
	testl	%eax, %eax
	je	.L612
	.loc 1 1855 0
	movl	$1, -88(%ebp)
	.loc 1 1856 0
	jmp	.L612
.L622:
	.loc 1 1859 0
	movl	-104(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L612
	.loc 1 1861 0
	cmpl	$0, -68(%ebp)
	jne	.L688
	movl	-104(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L688
	.loc 1 1868 0
	movl	-104(%ebp), %eax
	movl	%eax, -72(%ebp)
	.loc 1 1869 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -68(%ebp)
.L688:
	.loc 1 1874 0
	movl	-104(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L614
	.loc 1 1876 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L612
	.loc 1 1879 0
	addl	$1, -84(%ebp)
	.loc 1 1881 0
	cmpl	$0, -68(%ebp)
	je	.L614
	.loc 1 1882 0
	addl	$1, -80(%ebp)
.L614:
	.loc 1 1735 0
	movl	-104(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -104(%ebp)
.L608:
	cmpl	$0, -104(%ebp)
	jne	.L609
.L612:
	.loc 1 1887 0
	cmpl	$0, -88(%ebp)
	jne	.L694
	.loc 1 1888 0
	movl	$0, -172(%ebp)
	jmp	.L592
.L694:
	.loc 1 1891 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	.loc 1 1892 0
	cmpl	$86, -76(%ebp)
	jne	.L696
	.loc 1 1894 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_after@PLT
	movl	%eax, -100(%ebp)
	.loc 1 1899 0
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	addl	$12, %eax
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 1900 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %edx
	movl	12(%edx), %eax
	addl	$1, %eax
	movl	%eax, 12(%edx)
	.loc 1 1901 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %edx
	movl	28(%edx), %eax
	addl	$1, %eax
	movl	%eax, 28(%edx)
.L696:
	.loc 1 1903 0
	cmpl	$0, -72(%ebp)
	je	.L698
.LBB28:
	.loc 1 1907 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1908 0
	cmpl	$0, -68(%ebp)
	je	.L700
	.loc 1 1909 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L700:
.LBB29:
	.loc 1 1916 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1918 0
	movl	-104(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after_with_line_notes@PLT
	.loc 1 1919 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 1922 0
	movl	-104(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1923 0
	jmp	.L702
.L703:
	.loc 1 1924 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%ebp)
.L702:
	.loc 1 1923 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L703
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L703
	.loc 1 1926 0
	movl	8(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 68(%edx)
.L698:
.LBE29:
.LBE28:
	.loc 1 1933 0
	cmpl	$0, -72(%ebp)
	jne	.L706
	cmpl	$85, -76(%ebp)
	je	.L708
	cmpl	$86, -76(%ebp)
	jne	.L706
.L708:
.LBB30:
	.loc 1 1935 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1936 0
	movl	$0, -28(%ebp)
	.loc 1 1937 0
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	.loc 1 1939 0
	cmpl	$0, -36(%ebp)
	je	.L706
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L711
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L711
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L711
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L711
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L711
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L711
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L711
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L706
.L711:
	.loc 1 1941 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L719
.L720:
	.loc 1 1946 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	perhaps_ends_bb_p
	testl	%eax, %eax
	je	.L721
	.loc 1 1948 0
	movl	$0, -32(%ebp)
	.loc 1 1949 0
	jmp	.L723
.L721:
	.loc 1 1951 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L724
	.loc 1 1954 0
	addl	$1, -20(%ebp)
	.loc 1 1955 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	je	.L726
	.loc 1 1957 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L728
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L730
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -124(%ebp)
	jmp	.L732
.L730:
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -124(%ebp)
.L732:
	movl	-124(%ebp), %edx
	movl	%edx, -128(%ebp)
	jmp	.L733
.L728:
	movl	$0, -128(%ebp)
.L733:
	movl	-128(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1958 0
	jmp	.L723
.L726:
	.loc 1 1960 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L734
	.loc 1 1962 0
	movl	$0, -32(%ebp)
	.loc 1 1963 0
	jmp	.L723
.L734:
	.loc 1 1965 0
	movl	-104(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L724
	.loc 1 1966 0
	addl	$1, -24(%ebp)
.L724:
	.loc 1 1941 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
.L719:
	cmpl	$0, -32(%ebp)
	jne	.L720
.L723:
	.loc 1 1968 0
	cmpl	$0, -32(%ebp)
	je	.L706
	cmpl	$0, -28(%ebp)
	je	.L706
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L706
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L740
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L740
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L740
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L740
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L740
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L740
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L740
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L706
.L740:
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%ebp), %edx
	addl	$12, %edx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	je	.L706
	.loc 1 1971 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 1972 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %edx
	movl	12(%edx), %eax
	subl	$1, %eax
	movl	%eax, 12(%edx)
	.loc 1 1973 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	subl	-24(%ebp), %eax
	movl	%eax, 32(%ecx)
	.loc 1 1974 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	subl	-20(%ebp), %eax
	movl	%eax, 28(%ecx)
	.loc 1 1975 0
	movl	$0, -120(%ebp)
	movl	$0, -116(%ebp)
.L706:
.LBE30:
	.loc 1 2027 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L749
	.loc 1 2029 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2030 0
	movl	8(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 68(%edx)
.L749:
	.loc 1 2033 0
	cmpl	$0, -68(%ebp)
	je	.L751
	.loc 1 2036 0
	cmpl	$0, -72(%ebp)
	jne	.L753
	.loc 1 2037 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L753:
	.loc 1 2038 0
	movl	-104(%ebp), %eax
	movl	68(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2039 0
	movl	-104(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	%eax, 68(%edx)
	.loc 1 2041 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	addl	-80(%ebp), %eax
	movl	%eax, 32(%ecx)
.L751:
	.loc 1 2044 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %edx
	movl	12(%edx), %eax
	addl	$1, %eax
	movl	%eax, 12(%edx)
	.loc 1 2045 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %edx
	movl	12(%edx), %eax
	subl	$1, %eax
	movl	%eax, 12(%edx)
	.loc 1 2047 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	subl	-84(%ebp), %eax
	movl	%eax, 32(%ecx)
	.loc 1 2049 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	addl	-56(%ebp), %eax
	movl	%eax, 28(%ecx)
	.loc 1 2050 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	js	.L755
	.loc 1 2052 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	subl	-60(%ebp), %eax
	movl	%eax, 28(%ecx)
	.loc 1 2056 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	cmpl	$1, %eax
	jg	.L755
	.loc 1 2057 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$2, 28(%eax)
.L755:
	.loc 1 2059 0
	cmpl	$0, 40(%ebp)
	je	.L758
	.loc 1 2060 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	40(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L758:
	.loc 1 2063 0
	movl	$1, -172(%ebp)
.L592:
	movl	-172(%ebp), %eax
	.loc 1 2064 0
	addl	$196, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	fixup_match_1, .-fixup_match_1
	.type	stable_and_no_regs_but_for_p, @function
stable_and_no_regs_but_for_p:
.LFB32:
	.loc 1 2078 0
	pushl	%ebp
.LCFI70:
	movl	%esp, %ebp
.LCFI71:
	pushl	%ebx
.LCFI72:
	subl	$52, %esp
.LCFI73:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2079 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2080 0
	movl	-16(%ebp), %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	cmpl	$99, -32(%ebp)
	jg	.L765
	cmpl	$98, -32(%ebp)
	jge	.L763
	cmpl	$49, -32(%ebp)
	jl	.L762
	cmpl	$51, -32(%ebp)
	jle	.L763
	cmpl	$60, -32(%ebp)
	je	.L763
	jmp	.L762
.L765:
	cmpl	$111, -32(%ebp)
	je	.L764
	jmp	.L762
.L763:
.LBB31:
	.loc 1 2085 0
	movl	-16(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2086 0
	movl	-16(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L766
.L767:
	.loc 1 2087 0
	movl	-12(%ebp), %eax
	addl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L768
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	stable_and_no_regs_but_for_p
	testl	%eax, %eax
	jne	.L768
	.loc 1 2089 0
	movl	$0, -28(%ebp)
	jmp	.L771
.L768:
	.loc 1 2086 0
	subl	$1, -12(%ebp)
.L766:
	cmpl	$0, -12(%ebp)
	jns	.L767
	.loc 1 2090 0
	movl	$1, -28(%ebp)
	jmp	.L771
.L764:
.LBE31:
	.loc 1 2093 0
	cmpl	$71, -16(%ebp)
	jne	.L773
	.loc 1 2094 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L775
	movl	8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L777
.L775:
	movl	$1, -24(%ebp)
	jmp	.L778
.L777:
	movl	$0, -24(%ebp)
.L778:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L771
.L773:
	.loc 1 2097 0
	cmpl	$76, -16(%ebp)
	jne	.L762
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	stable_and_no_regs_but_for_p
	testl	%eax, %eax
	jne	.L762
	.loc 1 2099 0
	movl	$0, -28(%ebp)
	jmp	.L771
.L762:
	.loc 1 2102 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_unstable_p@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
.L771:
	movl	-28(%ebp), %eax
	.loc 1 2104 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	stable_and_no_regs_but_for_p, .-stable_and_no_regs_but_for_p
.globl combine_stack_adjustments
	.type	combine_stack_adjustments, @function
combine_stack_adjustments:
.LFB33:
	.loc 1 2152 0
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
	.loc 1 2155 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L783
.L784:
	.loc 1 2156 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	combine_stack_adjustments_for_block
	.loc 1 2155 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
.L783:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L784
	.loc 1 2157 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	combine_stack_adjustments, .-combine_stack_adjustments
	.type	stack_memref_p, @function
stack_memref_p:
.LFB34:
	.loc 1 2164 0
	pushl	%ebp
.LCFI78:
	movl	%esp, %ebp
.LCFI79:
	subl	$4, %esp
.LCFI80:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2165 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L788
	.loc 1 2166 0
	movl	$0, -4(%ebp)
	jmp	.L790
.L788:
	.loc 1 2167 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 2169 0
	movl	global_rtl@GOT(%ecx), %eax
	movl	8(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L791
	.loc 1 2170 0
	movl	$1, -4(%ebp)
	jmp	.L790
.L791:
	.loc 1 2171 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L793
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ecx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L793
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L793
	.loc 1 2174 0
	movl	$1, -4(%ebp)
	jmp	.L790
.L793:
	.loc 1 2176 0
	movl	$0, -4(%ebp)
.L790:
	movl	-4(%ebp), %eax
	.loc 1 2177 0
	leave
	ret
.LFE34:
	.size	stack_memref_p, .-stack_memref_p
	.type	single_set_for_csa, @function
single_set_for_csa:
.LFB35:
	.loc 1 2185 0
	pushl	%ebp
.LCFI81:
	movl	%esp, %ebp
.LCFI82:
	pushl	%ebx
.LCFI83:
	subl	$36, %esp
.LCFI84:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2187 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L799
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L801
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L803
.L801:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -28(%ebp)
.L803:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L804
.L799:
	movl	$0, -32(%ebp)
.L804:
	movl	-32(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2188 0
	cmpl	$0, -12(%ebp)
	je	.L805
	.loc 1 2189 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L807
.L805:
	.loc 1 2191 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L808
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	je	.L810
.L808:
	.loc 1 2193 0
	movl	$0, -24(%ebp)
	jmp	.L807
.L810:
	.loc 1 2195 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2196 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L811
	.loc 1 2197 0
	movl	$0, -24(%ebp)
	jmp	.L807
.L811:
	.loc 1 2199 0
	movl	$1, -16(%ebp)
	jmp	.L813
.L814:
.LBB32:
	.loc 1 2201 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2204 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L815
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L815
	jmp	.L818
.L815:
	.loc 1 2207 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L818
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L818
	.loc 1 2209 0
	movl	$0, -24(%ebp)
	jmp	.L807
.L818:
.LBE32:
	.loc 1 2199 0
	addl	$1, -16(%ebp)
.L813:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L814
	.loc 1 2212 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L807:
	movl	-24(%ebp), %eax
	.loc 1 2213 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	single_set_for_csa, .-single_set_for_csa
	.type	free_csa_memlist, @function
free_csa_memlist:
.LFB36:
	.loc 1 2220 0
	pushl	%ebp
.LCFI85:
	movl	%esp, %ebp
.LCFI86:
	pushl	%ebx
.LCFI87:
	subl	$20, %esp
.LCFI88:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2222 0
	jmp	.L824
.L825:
	.loc 1 2224 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2225 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2222 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%ebp)
.L824:
	cmpl	$0, 8(%ebp)
	jne	.L825
	.loc 1 2227 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	free_csa_memlist, .-free_csa_memlist
	.type	record_one_stack_memref, @function
record_one_stack_memref:
.LFB37:
	.loc 1 2236 0
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
	.loc 1 2239 0
	movl	$20, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2241 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L829
	.loc 1 2242 0
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	jmp	.L831
.L829:
	.loc 1 2244 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	-8(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L831:
	.loc 1 2246 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 2247 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 2248 0
	movl	-8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 2250 0
	movl	-8(%ebp), %eax
	.loc 1 2251 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	record_one_stack_memref, .-record_one_stack_memref
	.type	try_apply_stack_adjustment, @function
try_apply_stack_adjustment:
.LFB38:
	.loc 1 2261 0
	pushl	%ebp
.LCFI93:
	movl	%esp, %ebp
.LCFI94:
	pushl	%ebx
.LCFI95:
	subl	$68, %esp
.LCFI96:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2265 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_for_csa
	movl	%eax, -12(%ebp)
	.loc 1 2266 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	addl	$12, %eax
	movl	$1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 2268 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L834
.L835:
	.loc 1 2269 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	subl	-40(%ebp), %edx
	sbbl	-36(%ebp), %ecx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	replace_equiv_address_nv@PLT
	movl	%eax, %ecx
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	$1, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 2268 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
.L834:
	cmpl	$0, -16(%ebp)
	jne	.L835
	.loc 1 2275 0
	call	apply_change_group@PLT
	testl	%eax, %eax
	je	.L837
	.loc 1 2278 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L839
.L840:
	.loc 1 2279 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	subl	-40(%ebp), %eax
	sbbl	-36(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 2278 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
.L839:
	cmpl	$0, -16(%ebp)
	jne	.L840
	.loc 1 2281 0
	movl	$1, -44(%ebp)
	jmp	.L842
.L837:
	.loc 1 2284 0
	movl	$0, -44(%ebp)
.L842:
	movl	-44(%ebp), %eax
	.loc 1 2285 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	try_apply_stack_adjustment, .-try_apply_stack_adjustment
	.type	record_stack_memrefs, @function
record_stack_memrefs:
.LFB39:
	.loc 1 2299 0
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
	.loc 1 2300 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2302 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2303 0
	cmpl	$0, -12(%ebp)
	jne	.L845
	.loc 1 2304 0
	movl	$0, -28(%ebp)
	jmp	.L847
.L845:
	.loc 1 2305 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	cmpl	$71, -24(%ebp)
	je	.L849
	cmpl	$76, -24(%ebp)
	je	.L850
	jmp	.L848
.L850:
	.loc 1 2308 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L851
	.loc 1 2309 0
	movl	$-1, -28(%ebp)
	jmp	.L847
.L851:
	.loc 1 2312 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	stack_memref_p
	testl	%eax, %eax
	je	.L853
	.loc 1 2314 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	record_one_stack_memref
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2315 0
	movl	$-1, -28(%ebp)
	jmp	.L847
.L853:
	.loc 1 2317 0
	movl	$1, -28(%ebp)
	jmp	.L847
.L849:
	.loc 1 2328 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$29, %eax
	jne	.L848
	.loc 1 2329 0
	movl	$1, -28(%ebp)
	jmp	.L847
.L848:
	.loc 1 2334 0
	movl	$0, -28(%ebp)
.L847:
	movl	-28(%ebp), %eax
	.loc 1 2335 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	record_stack_memrefs, .-record_stack_memrefs
	.type	combine_stack_adjustments_for_block, @function
combine_stack_adjustments_for_block:
.LFB40:
	.loc 1 2342 0
	pushl	%ebp
.LCFI101:
	movl	%esp, %ebp
.LCFI102:
	pushl	%edi
.LCFI103:
	pushl	%esi
.LCFI104:
	pushl	%ebx
.LCFI105:
	subl	$92, %esp
.LCFI106:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2343 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	.loc 1 2344 0
	movl	$0, -48(%ebp)
	.loc 1 2345 0
	movl	$0, -44(%ebp)
	.loc 1 2348 0
	movb	$0, -17(%ebp)
	.loc 1 2350 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L858
.L859:
	.loc 1 2352 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-40(%ebp), %eax
	sete	%al
	movb	%al, -17(%ebp)
	.loc 1 2353 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2355 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L860
	.loc 1 2358 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_for_csa
	movl	%eax, -32(%ebp)
	.loc 1 2359 0
	cmpl	$0, -32(%ebp)
	je	.L862
.LBB33:
	.loc 1 2361 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2362 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2365 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L864
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L864
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L864
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L864
.LBB34:
	.loc 1 2370 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 2374 0
	cmpl	$0, -48(%ebp)
	jne	.L869
	.loc 1 2376 0
	movl	-40(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2377 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 2378 0
	jmp	.L860
.L869:
	.loc 1 2403 0
	cmpl	$0, -52(%ebp)
	jg	.L871
	cmpl	$0, -52(%ebp)
	js	.L873
	cmpl	$0, -56(%ebp)
	ja	.L871
.L873:
	.loc 1 2405 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	try_apply_stack_adjustment
	testl	%eax, %eax
	je	.L876
	.loc 1 2410 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 2411 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	addl	%eax, -64(%ebp)
	adcl	%edx, -60(%ebp)
	.loc 1 2412 0
	jmp	.L860
.L871:
	.loc 1 2418 0
	cmpl	$0, -60(%ebp)
	js	.L876
	.loc 1 2421 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	addl	-64(%ebp), %eax
	adcl	-60(%ebp), %edx
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	try_apply_stack_adjustment
	testl	%eax, %eax
	je	.L876
	.loc 1 2426 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 2427 0
	movl	-40(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2428 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	addl	%eax, -64(%ebp)
	adcl	%edx, -60(%ebp)
	.loc 1 2429 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	free_csa_memlist
	.loc 1 2430 0
	movl	$0, -44(%ebp)
	.loc 1 2431 0
	jmp	.L860
.L876:
	.loc 1 2438 0
	cmpl	$0, -48(%ebp)
	je	.L879
	movl	-64(%ebp), %eax
	orl	-60(%ebp), %eax
	testl	%eax, %eax
	jne	.L879
	.loc 1 2439 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
.L879:
	.loc 1 2440 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	free_csa_memlist
	.loc 1 2441 0
	movl	$0, -44(%ebp)
	.loc 1 2442 0
	movl	-40(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2443 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 2444 0
	jmp	.L860
.L864:
.LBE34:
	.loc 1 2450 0
	cmpl	$0, -44(%ebp)
	jne	.L862
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L862
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$106, %ax
	jne	.L884
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	%edx, %ecx
	xorl	-60(%ebp), %ecx
	xorl	-64(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L886
.L884:
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$110, %ax
	jne	.L862
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L862
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L862
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L862
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L862
.L886:
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L862
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L862
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	memory_address_p@PLT
	testl	%eax, %eax
	je	.L862
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_equiv_address@PLT
	movl	-32(%ebp), %edx
	addl	$4, %edx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	je	.L862
	.loc 1 2470 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 2471 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	free_csa_memlist
	.loc 1 2472 0
	movl	$0, -44(%ebp)
	.loc 1 2473 0
	movl	$0, -48(%ebp)
	.loc 1 2474 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	.loc 1 2475 0
	jmp	.L860
.L862:
.LBE33:
	.loc 1 2479 0
	movl	-40(%ebp), %eax
	movl	%eax, -72(%ebp)
	.loc 1 2480 0
	movl	-44(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 2481 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L895
	cmpl	$0, -48(%ebp)
	je	.L895
	movl	-40(%ebp), %edx
	addl	$44, %edx
	leal	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	record_stack_memrefs@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	for_each_rtx@PLT
	testl	%eax, %eax
	jne	.L895
	.loc 1 2484 0
	movl	-68(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2485 0
	jmp	.L860
.L895:
	.loc 1 2487 0
	movl	-68(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2491 0
	cmpl	$0, -48(%ebp)
	je	.L860
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L900
	movl	-40(%ebp), %eax
	movl	44(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L860
.L900:
	.loc 1 2495 0
	cmpl	$0, -48(%ebp)
	je	.L902
	movl	-64(%ebp), %eax
	orl	-60(%ebp), %eax
	testl	%eax, %eax
	jne	.L902
	.loc 1 2496 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
.L902:
	.loc 1 2497 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	free_csa_memlist
	.loc 1 2498 0
	movl	$0, -44(%ebp)
	.loc 1 2499 0
	movl	$0, -48(%ebp)
	.loc 1 2500 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
.L860:
	.loc 1 2350 0
	movl	-36(%ebp), %eax
	movl	%eax, -40(%ebp)
.L858:
	movzbl	-17(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L859
	.loc 1 2504 0
	cmpl	$0, -48(%ebp)
	je	.L909
	movl	-64(%ebp), %eax
	orl	-60(%ebp), %eax
	testl	%eax, %eax
	jne	.L909
	.loc 1 2505 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
.L909:
	.loc 1 2506 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE40:
	.size	combine_stack_adjustments_for_block, .-combine_stack_adjustments_for_block
	.local	regmove_bb_head
	.comm	regmove_bb_head,4,4
	.local	flags_set_1_rtx
	.comm	flags_set_1_rtx,4,4
	.local	flags_set_1_set
	.comm	flags_set_1_set,4,4
	.local	regno_src_regno
	.comm	regno_src_regno,4,4
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
	.long	.LCFI15-.LCFI13
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
	.long	.LCFI16-.LFB19
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
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI20-.LFB20
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
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI23-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI26-.LCFI24
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
	.long	.LCFI27-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI30-.LCFI28
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
	.long	.LCFI31-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI34-.LCFI32
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
	.long	.LCFI35-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI38-.LCFI36
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
	.long	.LCFI46-.LCFI44
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
	.long	.LCFI47-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI48-.LCFI47
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI52-.LCFI48
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
	.long	.LCFI65-.LCFI63
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
	.long	.LCFI66-.LFB31
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
	.align 4
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI81-.LFB35
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
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI85-.LFB36
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
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI89-.LFB37
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
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI93-.LFB38
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
	.byte	0x4
	.long	.LCFI106-.LCFI102
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE50:
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/machmode.h"
	.file 5 "../../../kgccfe/gnu/bitmap.h"
	.file 6 "../../../kgccfe/gnu/basic-block.h"
	.file 7 "../../../kgccfe/gnu/sbitmap.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/libio.h"
	.file 10 "/usr/include/bits/types.h"
	.file 11 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 12 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 13 "../../../kgccfe/gnu/hard-reg-set.h"
	.file 14 "../../../kgccfe/gnu/recog.h"
	.file 15 "../../../kgccfe/gnu/varray.h"
	.file 16 "../../../kgccfe/gnu/regs.h"
	.file 17 "../../../kgccfe/gnu/flags.h"
	.file 18 "../../../kgccfe/gnu/function.h"
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LCFI31-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI31-.Ltext0
	.long	.LCFI32-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI32-.Ltext0
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LCFI47-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI47-.Ltext0
	.long	.LCFI48-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI48-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.section	.debug_info
	.long	0x49d9
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/regmove.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa7
	.uleb128 0x3
	.byte	0x4
	.long	0xad
	.uleb128 0x4
	.long	0x19d
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x8a
	.long	0xadf
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x3
	.byte	0x8d
	.long	0x896
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
	.long	0x465
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
	.long	0x465
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
	.long	0x465
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
	.long	0x465
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
	.long	0x465
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
	.long	0x465
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
	.long	0x465
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
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x3
	.byte	0xd4
	.long	0x16fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1aa
	.uleb128 0x3
	.byte	0x4
	.long	0x1b0
	.uleb128 0x4
	.long	0x1e5
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x170c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1f1
	.uleb128 0x3
	.byte	0x4
	.long	0x1f7
	.uleb128 0x7
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x209
	.uleb128 0x8
	.long	0x20e
	.uleb128 0x9
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	0x393
	.string	"reg_class"
	.byte	0x4
	.byte	0xc
	.value	0x7ec
	.uleb128 0xb
	.string	"NO_REGS"
	.sleb128 0
	.uleb128 0xb
	.string	"M16_NA_REGS"
	.sleb128 1
	.uleb128 0xb
	.string	"M16_REGS"
	.sleb128 2
	.uleb128 0xb
	.string	"T_REG"
	.sleb128 3
	.uleb128 0xb
	.string	"M16_T_REGS"
	.sleb128 4
	.uleb128 0xb
	.string	"GR_REGS"
	.sleb128 5
	.uleb128 0xb
	.string	"FP_REGS"
	.sleb128 6
	.uleb128 0xb
	.string	"HI_REG"
	.sleb128 7
	.uleb128 0xb
	.string	"LO_REG"
	.sleb128 8
	.uleb128 0xb
	.string	"HILO_REG"
	.sleb128 9
	.uleb128 0xb
	.string	"MD_REGS"
	.sleb128 10
	.uleb128 0xb
	.string	"COP0_REGS"
	.sleb128 11
	.uleb128 0xb
	.string	"COP2_REGS"
	.sleb128 12
	.uleb128 0xb
	.string	"COP3_REGS"
	.sleb128 13
	.uleb128 0xb
	.string	"HI_AND_GR_REGS"
	.sleb128 14
	.uleb128 0xb
	.string	"LO_AND_GR_REGS"
	.sleb128 15
	.uleb128 0xb
	.string	"HILO_AND_GR_REGS"
	.sleb128 16
	.uleb128 0xb
	.string	"HI_AND_FP_REGS"
	.sleb128 17
	.uleb128 0xb
	.string	"COP0_AND_GR_REGS"
	.sleb128 18
	.uleb128 0xb
	.string	"COP2_AND_GR_REGS"
	.sleb128 19
	.uleb128 0xb
	.string	"COP3_AND_GR_REGS"
	.sleb128 20
	.uleb128 0xb
	.string	"ALL_COP_REGS"
	.sleb128 21
	.uleb128 0xb
	.string	"ALL_COP_AND_GR_REGS"
	.sleb128 22
	.uleb128 0xb
	.string	"ST_REGS"
	.sleb128 23
	.uleb128 0xb
	.string	"ALL_REGS"
	.sleb128 24
	.uleb128 0xb
	.string	"LIM_REG_CLASSES"
	.sleb128 25
	.byte	0x0
	.uleb128 0xc
	.long	0x465
	.string	"mips_args"
	.byte	0x40
	.byte	0xc
	.value	0xaaa
	.uleb128 0xd
	.string	"gp_reg_found"
	.byte	0xc
	.value	0xaad
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"arg_number"
	.byte	0xc
	.value	0xab0
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"num_gprs"
	.byte	0xc
	.value	0xab5
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"num_fprs"
	.byte	0xc
	.value	0xab8
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stack_words"
	.byte	0xc
	.value	0xabb
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"fp_code"
	.byte	0xc
	.value	0xac8
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"prototype"
	.byte	0xc
	.value	0xacb
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"num_adjusts"
	.byte	0xc
	.value	0xad3
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"adjust"
	.byte	0xc
	.value	0xad4
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xe
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	0x47c
	.long	0x9c
	.uleb128 0x10
	.long	0x47c
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.string	"CUMULATIVE_ARGS"
	.byte	0xc
	.value	0xad5
	.long	0x393
	.uleb128 0x2
	.string	"size_t"
	.byte	0xb
	.byte	0xd6
	.long	0x465
	.uleb128 0x9
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x9
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x9
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x9
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x9
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x9
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0xa
	.byte	0x3b
	.long	0x501
	.uleb128 0x2
	.string	"__off_t"
	.byte	0xa
	.byte	0x90
	.long	0x54b
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0xa
	.byte	0x91
	.long	0x52c
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x20e
	.uleb128 0x2
	.string	"FILE"
	.byte	0x8
	.byte	0x2e
	.long	0x57c
	.uleb128 0x13
	.long	0x7f7
	.long	.LASF1
	.byte	0x94
	.byte	0x8
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x9
	.value	0x10c
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x9
	.value	0x111
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x9
	.value	0x112
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x9
	.value	0x113
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x9
	.value	0x114
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x9
	.value	0x115
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x9
	.value	0x116
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x9
	.value	0x117
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x9
	.value	0x118
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x9
	.value	0x11a
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x9
	.value	0x11b
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x9
	.value	0x11c
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x9
	.value	0x11e
	.long	0x85e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x9
	.value	0x120
	.long	0x864
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x9
	.value	0x122
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x9
	.value	0x126
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x9
	.value	0x128
	.long	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x9
	.value	0x12c
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x9
	.value	0x12d
	.long	0x4e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x9
	.value	0x12e
	.long	0x86a
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x9
	.value	0x132
	.long	0x87a
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x9
	.value	0x13b
	.long	0x557
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x9
	.value	0x144
	.long	0x568
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x9
	.value	0x145
	.long	0x568
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x9
	.value	0x146
	.long	0x568
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x9
	.value	0x147
	.long	0x568
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x9
	.value	0x148
	.long	0x49b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x9
	.value	0x14a
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x9
	.value	0x14c
	.long	0x880
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xf
	.long	0x807
	.long	0x20e
	.uleb128 0x10
	.long	0x47c
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4a9
	.uleb128 0x14
	.string	"_IO_lock_t"
	.byte	0x9
	.byte	0xb0
	.uleb128 0x4
	.long	0x85e
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x9
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x9
	.byte	0xb7
	.long	0x85e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x9
	.byte	0xb8
	.long	0x864
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x9
	.byte	0xbc
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x81b
	.uleb128 0x3
	.byte	0x4
	.long	0x57c
	.uleb128 0xf
	.long	0x87a
	.long	0x20e
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x80d
	.uleb128 0xf
	.long	0x890
	.long	0x20e
	.uleb128 0x10
	.long	0x47c
	.byte	0x27
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x216
	.uleb128 0x15
	.long	0xadf
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.uleb128 0xb
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0xb
	.string	"BImode"
	.sleb128 1
	.uleb128 0xb
	.string	"QImode"
	.sleb128 2
	.uleb128 0xb
	.string	"HImode"
	.sleb128 3
	.uleb128 0xb
	.string	"SImode"
	.sleb128 4
	.uleb128 0xb
	.string	"DImode"
	.sleb128 5
	.uleb128 0xb
	.string	"TImode"
	.sleb128 6
	.uleb128 0xb
	.string	"OImode"
	.sleb128 7
	.uleb128 0xb
	.string	"PQImode"
	.sleb128 8
	.uleb128 0xb
	.string	"PHImode"
	.sleb128 9
	.uleb128 0xb
	.string	"PSImode"
	.sleb128 10
	.uleb128 0xb
	.string	"PDImode"
	.sleb128 11
	.uleb128 0xb
	.string	"QFmode"
	.sleb128 12
	.uleb128 0xb
	.string	"HFmode"
	.sleb128 13
	.uleb128 0xb
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0xb
	.string	"SFmode"
	.sleb128 15
	.uleb128 0xb
	.string	"DFmode"
	.sleb128 16
	.uleb128 0xb
	.string	"XFmode"
	.sleb128 17
	.uleb128 0xb
	.string	"TFmode"
	.sleb128 18
	.uleb128 0xb
	.string	"QCmode"
	.sleb128 19
	.uleb128 0xb
	.string	"HCmode"
	.sleb128 20
	.uleb128 0xb
	.string	"SCmode"
	.sleb128 21
	.uleb128 0xb
	.string	"DCmode"
	.sleb128 22
	.uleb128 0xb
	.string	"XCmode"
	.sleb128 23
	.uleb128 0xb
	.string	"TCmode"
	.sleb128 24
	.uleb128 0xb
	.string	"CQImode"
	.sleb128 25
	.uleb128 0xb
	.string	"CHImode"
	.sleb128 26
	.uleb128 0xb
	.string	"CSImode"
	.sleb128 27
	.uleb128 0xb
	.string	"CDImode"
	.sleb128 28
	.uleb128 0xb
	.string	"CTImode"
	.sleb128 29
	.uleb128 0xb
	.string	"COImode"
	.sleb128 30
	.uleb128 0xb
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0xb
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0xb
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0xb
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0xb
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0xb
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0xb
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0xb
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0xb
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0xb
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0xb
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0xb
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0xb
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0xb
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0xb
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0xb
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0xb
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0xb
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0xb
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0xb
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0xb
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0xb
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0xb
	.string	"CCmode"
	.sleb128 53
	.uleb128 0xb
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x15
	.long	0x12ae
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x2f
	.uleb128 0xb
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0xb
	.string	"NIL"
	.sleb128 1
	.uleb128 0xb
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0xb
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0xb
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0xb
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0xb
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0xb
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0xb
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0xb
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0xb
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0xb
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0xb
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0xb
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0xb
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0xb
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0xb
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0xb
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0xb
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0xb
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0xb
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0xb
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0xb
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0xb
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0xb
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0xb
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0xb
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0xb
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0xb
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0xb
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0xb
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0xb
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0xb
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0xb
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0xb
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0xb
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0xb
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0xb
	.string	"ATTR"
	.sleb128 37
	.uleb128 0xb
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0xb
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0xb
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0xb
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0xb
	.string	"INSN"
	.sleb128 42
	.uleb128 0xb
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0xb
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0xb
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0xb
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0xb
	.string	"NOTE"
	.sleb128 47
	.uleb128 0xb
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0xb
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0xb
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0xb
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0xb
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0xb
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0xb
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0xb
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0xb
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0xb
	.string	"SET"
	.sleb128 57
	.uleb128 0xb
	.string	"USE"
	.sleb128 58
	.uleb128 0xb
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0xb
	.string	"CALL"
	.sleb128 60
	.uleb128 0xb
	.string	"RETURN"
	.sleb128 61
	.uleb128 0xb
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0xb
	.string	"RESX"
	.sleb128 63
	.uleb128 0xb
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0xb
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0xb
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0xb
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0xb
	.string	"CONST"
	.sleb128 68
	.uleb128 0xb
	.string	"PC"
	.sleb128 69
	.uleb128 0xb
	.string	"VALUE"
	.sleb128 70
	.uleb128 0xb
	.string	"REG"
	.sleb128 71
	.uleb128 0xb
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0xb
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0xb
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0xb
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0xb
	.string	"MEM"
	.sleb128 76
	.uleb128 0xb
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0xb
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0xb
	.string	"CC0"
	.sleb128 79
	.uleb128 0xb
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0xb
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0xb
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0xb
	.string	"COND"
	.sleb128 83
	.uleb128 0xb
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0xb
	.string	"PLUS"
	.sleb128 85
	.uleb128 0xb
	.string	"MINUS"
	.sleb128 86
	.uleb128 0xb
	.string	"NEG"
	.sleb128 87
	.uleb128 0xb
	.string	"MULT"
	.sleb128 88
	.uleb128 0xb
	.string	"DIV"
	.sleb128 89
	.uleb128 0xb
	.string	"MOD"
	.sleb128 90
	.uleb128 0xb
	.string	"UDIV"
	.sleb128 91
	.uleb128 0xb
	.string	"UMOD"
	.sleb128 92
	.uleb128 0xb
	.string	"AND"
	.sleb128 93
	.uleb128 0xb
	.string	"IOR"
	.sleb128 94
	.uleb128 0xb
	.string	"XOR"
	.sleb128 95
	.uleb128 0xb
	.string	"NOT"
	.sleb128 96
	.uleb128 0xb
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0xb
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0xb
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0xb
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0xb
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0xb
	.string	"SMIN"
	.sleb128 102
	.uleb128 0xb
	.string	"SMAX"
	.sleb128 103
	.uleb128 0xb
	.string	"UMIN"
	.sleb128 104
	.uleb128 0xb
	.string	"UMAX"
	.sleb128 105
	.uleb128 0xb
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0xb
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0xb
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0xb
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0xb
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0xb
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0xb
	.string	"NE"
	.sleb128 112
	.uleb128 0xb
	.string	"EQ"
	.sleb128 113
	.uleb128 0xb
	.string	"GE"
	.sleb128 114
	.uleb128 0xb
	.string	"GT"
	.sleb128 115
	.uleb128 0xb
	.string	"LE"
	.sleb128 116
	.uleb128 0xb
	.string	"LT"
	.sleb128 117
	.uleb128 0xb
	.string	"GEU"
	.sleb128 118
	.uleb128 0xb
	.string	"GTU"
	.sleb128 119
	.uleb128 0xb
	.string	"LEU"
	.sleb128 120
	.uleb128 0xb
	.string	"LTU"
	.sleb128 121
	.uleb128 0xb
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0xb
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0xb
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0xb
	.string	"UNGE"
	.sleb128 125
	.uleb128 0xb
	.string	"UNGT"
	.sleb128 126
	.uleb128 0xb
	.string	"UNLE"
	.sleb128 127
	.uleb128 0xb
	.string	"UNLT"
	.sleb128 128
	.uleb128 0xb
	.string	"LTGT"
	.sleb128 129
	.uleb128 0xb
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0xb
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0xb
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0xb
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0xb
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0xb
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0xb
	.string	"FIX"
	.sleb128 136
	.uleb128 0xb
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0xb
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0xb
	.string	"ABS"
	.sleb128 139
	.uleb128 0xb
	.string	"SQRT"
	.sleb128 140
	.uleb128 0xb
	.string	"FFS"
	.sleb128 141
	.uleb128 0xb
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0xb
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0xb
	.string	"HIGH"
	.sleb128 144
	.uleb128 0xb
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0xb
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0xb
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0xb
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0xb
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0xb
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0xb
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0xb
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0xb
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0xb
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0xb
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0xb
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0xb
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0xb
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0xb
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0xb
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0xb
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0xb
	.string	"PHI"
	.sleb128 162
	.uleb128 0xb
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x16
	.long	0x1388
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x465
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
	.long	0x465
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
	.long	0x465
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
	.long	0x465
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
	.long	0x465
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
	.long	0x465
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
	.long	0x465
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
	.long	0x465
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
	.long	0x12ae
	.uleb128 0x13
	.long	0x13ff
	.long	.LASF2
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x501
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x6b
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x6c
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x6d
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x17
	.long	.LASF2
	.byte	0x3
	.byte	0x6e
	.long	0x13a3
	.uleb128 0x18
	.long	0x14dc
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x19
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x501
	.uleb128 0x19
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x216
	.uleb128 0x19
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x465
	.uleb128 0x19
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x203
	.uleb128 0x19
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x9c
	.uleb128 0x19
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x19d
	.uleb128 0x19
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x896
	.uleb128 0x19
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0x1388
	.uleb128 0x19
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x14f0
	.uleb128 0x19
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x1556
	.uleb128 0x19
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e5
	.uleb128 0x19
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x16e1
	.uleb128 0x19
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x16e7
	.byte	0x0
	.uleb128 0x1a
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x14dc
	.uleb128 0x4
	.long	0x1556
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x1b
	.long	.LASF3
	.byte	0x5
	.byte	0x3d
	.long	0x1ed4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x1ed4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x14f6
	.uleb128 0x4
	.long	0x16e1
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x6
	.string	"head"
	.byte	0x6
	.byte	0xb5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x6
	.byte	0xb5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x6
	.byte	0xb8
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x6
	.byte	0xb9
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x6
	.byte	0xbc
	.long	0x2026
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x6
	.byte	0xbc
	.long	0x2026
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x6
	.byte	0xc1
	.long	0x1f57
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x6
	.byte	0xc5
	.long	0x1f57
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x6
	.byte	0xcb
	.long	0x1f57
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x6
	.byte	0xcd
	.long	0x1f57
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x6
	.byte	0xd0
	.long	0x568
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x6
	.byte	0xd3
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x16e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x16e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x6
	.byte	0xd9
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x6
	.byte	0xdc
	.long	0x229f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x6
	.byte	0xdf
	.long	0x1f65
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x6
	.byte	0xe2
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0x6
	.byte	0xe5
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x155c
	.uleb128 0x3
	.byte	0x4
	.long	0x13ff
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0x140a
	.uleb128 0xf
	.long	0x170c
	.long	0x16ed
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x171c
	.long	0x9c
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9c
	.uleb128 0x15
	.long	0x174f
	.string	"op_type"
	.byte	0x4
	.byte	0xe
	.byte	0x1c
	.uleb128 0xb
	.string	"OP_IN"
	.sleb128 0
	.uleb128 0xb
	.string	"OP_OUT"
	.sleb128 1
	.uleb128 0xb
	.string	"OP_INOUT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1c
	.long	0x1843
	.long	.LASF4
	.value	0x274
	.byte	0xe
	.byte	0x9b
	.uleb128 0x6
	.string	"operand"
	.byte	0xe
	.byte	0xa3
	.long	0x1843
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"operand_loc"
	.byte	0xe
	.byte	0xa6
	.long	0x1853
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"constraints"
	.byte	0xe
	.byte	0xa9
	.long	0x1863
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x6
	.string	"operand_mode"
	.byte	0xe
	.byte	0xac
	.long	0x1873
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x6
	.string	"operand_type"
	.byte	0xe
	.byte	0xaf
	.long	0x1883
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x6
	.string	"dup_loc"
	.byte	0xe
	.byte	0xb3
	.long	0x1893
	.byte	0x3
	.byte	0x23
	.uleb128 0x258
	.uleb128 0x6
	.string	"dup_num"
	.byte	0xe
	.byte	0xb7
	.long	0x7f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x268
	.uleb128 0x6
	.string	"n_operands"
	.byte	0xe
	.byte	0xc4
	.long	0x20e
	.byte	0x3
	.byte	0x23
	.uleb128 0x26c
	.uleb128 0x6
	.string	"n_dups"
	.byte	0xe
	.byte	0xc7
	.long	0x20e
	.byte	0x3
	.byte	0x23
	.uleb128 0x26d
	.uleb128 0x6
	.string	"n_alternatives"
	.byte	0xe
	.byte	0xca
	.long	0x20e
	.byte	0x3
	.byte	0x23
	.uleb128 0x26e
	.uleb128 0x1b
	.long	.LASF5
	.byte	0xe
	.byte	0xcd
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x270
	.byte	0x0
	.uleb128 0xf
	.long	0x1853
	.long	0x9c
	.uleb128 0x10
	.long	0x47c
	.byte	0x1d
	.byte	0x0
	.uleb128 0xf
	.long	0x1863
	.long	0x171c
	.uleb128 0x10
	.long	0x47c
	.byte	0x1d
	.byte	0x0
	.uleb128 0xf
	.long	0x1873
	.long	0x203
	.uleb128 0x10
	.long	0x47c
	.byte	0x1d
	.byte	0x0
	.uleb128 0xf
	.long	0x1883
	.long	0x896
	.uleb128 0x10
	.long	0x47c
	.byte	0x1d
	.byte	0x0
	.uleb128 0xf
	.long	0x1893
	.long	0x1722
	.uleb128 0x10
	.long	0x47c
	.byte	0x1d
	.byte	0x0
	.uleb128 0xf
	.long	0x18a3
	.long	0x171c
	.uleb128 0x10
	.long	0x47c
	.byte	0x3
	.byte	0x0
	.uleb128 0x4
	.long	0x18d9
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xf
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0xf
	.byte	0x32
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0xf
	.byte	0x36
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x15
	.long	0x1a74
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xf
	.byte	0x3c
	.uleb128 0xb
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0xb
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0xb
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0xb
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0xb
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0xb
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0xb
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0xb
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0xb
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0xb
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0xb
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0xb
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0xb
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0xb
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0xb
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0xb
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0xb
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0xb
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0xb
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0xb
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0xb
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x18
	.long	0x1b70
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xf
	.byte	0x55
	.uleb128 0x19
	.string	"c"
	.byte	0xf
	.byte	0x56
	.long	0x86a
	.uleb128 0x19
	.string	"uc"
	.byte	0xf
	.byte	0x58
	.long	0x1b70
	.uleb128 0x19
	.string	"s"
	.byte	0xf
	.byte	0x5a
	.long	0x1b80
	.uleb128 0x19
	.string	"us"
	.byte	0xf
	.byte	0x5c
	.long	0x1b90
	.uleb128 0x19
	.string	"i"
	.byte	0xf
	.byte	0x5e
	.long	0x1ba0
	.uleb128 0x19
	.string	"u"
	.byte	0xf
	.byte	0x60
	.long	0x1bb0
	.uleb128 0x19
	.string	"l"
	.byte	0xf
	.byte	0x62
	.long	0x1bc0
	.uleb128 0x19
	.string	"ul"
	.byte	0xf
	.byte	0x64
	.long	0x1bd0
	.uleb128 0x19
	.string	"hint"
	.byte	0xf
	.byte	0x66
	.long	0x1be0
	.uleb128 0x19
	.string	"uhint"
	.byte	0xf
	.byte	0x68
	.long	0x1bf0
	.uleb128 0x19
	.string	"generic"
	.byte	0xf
	.byte	0x6a
	.long	0x1c00
	.uleb128 0x19
	.string	"cptr"
	.byte	0xf
	.byte	0x6c
	.long	0x1c10
	.uleb128 0x19
	.string	"rtx"
	.byte	0xf
	.byte	0x6e
	.long	0x1c20
	.uleb128 0x19
	.string	"rtvec"
	.byte	0xf
	.byte	0x70
	.long	0x1c30
	.uleb128 0x19
	.string	"tree"
	.byte	0xf
	.byte	0x72
	.long	0x1c40
	.uleb128 0x19
	.string	"bitmap"
	.byte	0xf
	.byte	0x74
	.long	0x1c50
	.uleb128 0x19
	.string	"reg"
	.byte	0xf
	.byte	0x76
	.long	0x1c60
	.uleb128 0x19
	.string	"const_equiv"
	.byte	0xf
	.byte	0x78
	.long	0x1d5c
	.uleb128 0x19
	.string	"bb"
	.byte	0xf
	.byte	0x7a
	.long	0x1d6c
	.uleb128 0x19
	.string	"te"
	.byte	0xf
	.byte	0x7c
	.long	0x1d7c
	.byte	0x0
	.uleb128 0xf
	.long	0x1b80
	.long	0x4a9
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1b90
	.long	0x4f4
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1ba0
	.long	0x4ba
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1bb0
	.long	0x216
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1bc0
	.long	0x465
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1bd0
	.long	0x54b
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1be0
	.long	0x4d0
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1bf0
	.long	0x501
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1c00
	.long	0x512
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1c10
	.long	0x568
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1c20
	.long	0x56a
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1c30
	.long	0xa7
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1c40
	.long	0x1aa
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1c50
	.long	0x1f1
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1c60
	.long	0x1556
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1c70
	.long	0x1d56
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x1d56
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0xf
	.byte	0x76
	.uleb128 0x6
	.string	"first_uid"
	.byte	0x10
	.byte	0x31
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last_uid"
	.byte	0x10
	.byte	0x32
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"last_note_uid"
	.byte	0x10
	.byte	0x33
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sets"
	.byte	0x10
	.byte	0x36
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"refs"
	.byte	0x10
	.byte	0x39
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"freq"
	.byte	0x10
	.byte	0x3a
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"deaths"
	.byte	0x10
	.byte	0x3b
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"live_length"
	.byte	0x10
	.byte	0x3c
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"calls_crossed"
	.byte	0x10
	.byte	0x3d
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.long	.LASF6
	.byte	0x10
	.byte	0x3e
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"changes_mode"
	.byte	0x10
	.byte	0x3f
	.long	0x20e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1c70
	.uleb128 0xf
	.long	0x1d6c
	.long	0x18a3
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1d7c
	.long	0x16e1
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1d8c
	.long	0x1d97
	.uleb128 0x10
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1d8c
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xf
	.byte	0x7e
	.long	0x1a74
	.uleb128 0x4
	.long	0x1e25
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xf
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0xf
	.byte	0x82
	.long	0x49b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0xf
	.byte	0x83
	.long	0x49b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0xf
	.byte	0x85
	.long	0x18d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"name"
	.byte	0xf
	.byte	0x86
	.long	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0xf
	.byte	0x87
	.long	0x1d9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xf
	.byte	0x8a
	.long	0x1e38
	.uleb128 0x3
	.byte	0x4
	.long	0x1db0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x4d0
	.uleb128 0x4
	.long	0x1ea8
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x1b
	.long	.LASF7
	.byte	0x5
	.byte	0x35
	.long	0x1ea8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x5
	.byte	0x36
	.long	0x1ea8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x1eae
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e51
	.uleb128 0xf
	.long	0x1ebe
	.long	0x1e3e
	.uleb128 0x10
	.long	0x47c
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x1e51
	.uleb128 0x3
	.byte	0x4
	.long	0x1ebe
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x1556
	.uleb128 0x4
	.long	0x1f42
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x7
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x7
	.byte	0x21
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x7
	.byte	0x24
	.long	0x1bf0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x7
	.byte	0x25
	.long	0x1f51
	.uleb128 0x3
	.byte	0x4
	.long	0x1ee8
	.uleb128 0x2
	.string	"regset"
	.byte	0x6
	.byte	0x22
	.long	0x1eda
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x6
	.byte	0x75
	.long	0x501
	.uleb128 0x4
	.long	0x2020
	.string	"edge_def"
	.byte	0x28
	.byte	0x6
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x6
	.byte	0x7a
	.long	0x2020
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x6
	.byte	0x7a
	.long	0x2020
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x6
	.byte	0x7d
	.long	0x16e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF8
	.byte	0x6
	.byte	0x7d
	.long	0x16e1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x6
	.byte	0x80
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x6
	.byte	0x83
	.long	0x568
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0x6
	.byte	0x85
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x6
	.byte	0x86
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x6
	.byte	0x87
	.long	0x1f65
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f76
	.uleb128 0x2
	.string	"edge"
	.byte	0x6
	.byte	0x89
	.long	0x2020
	.uleb128 0x4
	.long	0x229f
	.string	"loop"
	.byte	0x80
	.byte	0x6
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0x6
	.value	0x176
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"header"
	.byte	0x6
	.value	0x179
	.long	0x22a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0x6
	.value	0x17c
	.long	0x22a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0x6
	.value	0x17f
	.long	0x22a5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0x6
	.value	0x184
	.long	0x22b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0x6
	.value	0x187
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1d
	.long	.LASF3
	.byte	0x6
	.value	0x18b
	.long	0x22a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0x6
	.value	0x18f
	.long	0x22a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0x6
	.value	0x192
	.long	0x1f42
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"num_nodes"
	.byte	0x6
	.value	0x195
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0x6
	.value	0x198
	.long	0x22b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"num_entries"
	.byte	0x6
	.value	0x19b
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0x6
	.value	0x19e
	.long	0x22b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"num_exits"
	.byte	0x6
	.value	0x1a1
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0x6
	.value	0x1a4
	.long	0x1f42
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0x6
	.value	0x1a7
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0x6
	.value	0x1aa
	.long	0x22b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0x6
	.value	0x1ae
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0x6
	.value	0x1b1
	.long	0x229f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0x6
	.value	0x1b4
	.long	0x229f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1d
	.long	.LASF7
	.byte	0x6
	.value	0x1b7
	.long	0x229f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0x6
	.value	0x1ba
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0x6
	.value	0x1bd
	.long	0x568
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"vtop"
	.byte	0x6
	.value	0x1c3
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0x6
	.value	0x1c7
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0x6
	.value	0x1ca
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0x6
	.value	0x1cd
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0x6
	.value	0x1d1
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0x6
	.value	0x1d4
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0x6
	.value	0x1d7
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0x6
	.value	0x1e2
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"exit_count"
	.byte	0x6
	.value	0x1e6
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2032
	.uleb128 0x17
	.long	.LASF6
	.byte	0x6
	.byte	0xe6
	.long	0x16e1
	.uleb128 0x3
	.byte	0x4
	.long	0x2026
	.uleb128 0x3
	.byte	0x4
	.long	0x229f
	.uleb128 0x4
	.long	0x2321
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x12
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0x12
	.byte	0x18
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0x12
	.byte	0x19
	.long	0x896
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0x12
	.byte	0x1a
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF7
	.byte	0x12
	.byte	0x1b
	.long	0x2321
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x22bc
	.uleb128 0x13
	.long	0x236d
	.long	.LASF9
	.byte	0x10
	.byte	0x12
	.byte	0x24
	.uleb128 0x1b
	.long	.LASF3
	.byte	0x12
	.byte	0x26
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0x12
	.byte	0x27
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.long	.LASF10
	.byte	0x12
	.byte	0x28
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF7
	.byte	0x12
	.byte	0x29
	.long	0x236d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2327
	.uleb128 0x4
	.long	0x24c2
	.string	"emit_status"
	.byte	0x34
	.byte	0x12
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0x12
	.byte	0x3a
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0x12
	.byte	0x3d
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0x12
	.byte	0x44
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0x12
	.byte	0x45
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1b
	.long	.LASF10
	.byte	0x12
	.byte	0x4a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.long	.LASF9
	.byte	0x12
	.byte	0x50
	.long	0x236d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0x12
	.byte	0x54
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0x12
	.byte	0x58
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0x12
	.byte	0x59
	.long	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0x12
	.byte	0x5f
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0x12
	.byte	0x65
	.long	0x807
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0x12
	.byte	0x69
	.long	0x24c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0x12
	.byte	0x70
	.long	0x171c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e5
	.uleb128 0x4
	.long	0x25a8
	.string	"expr_status"
	.byte	0x1c
	.byte	0x12
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0x12
	.byte	0x80
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0x12
	.byte	0x91
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0x12
	.byte	0x97
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0x12
	.byte	0x9c
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0x12
	.byte	0x9f
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0x12
	.byte	0xa2
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0x12
	.byte	0xa5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1e
	.long	0x2612
	.long	.LASF11
	.byte	0x4
	.byte	0x12
	.value	0x1f1
	.uleb128 0xb
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0xb
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0xb
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1f
	.long	0x2fd1
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x1f
	.uleb128 0x6
	.string	"eh"
	.byte	0x12
	.byte	0xb5
	.long	0x2fdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0x12
	.byte	0xb6
	.long	0x2ff1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0x12
	.byte	0xb7
	.long	0x2ff7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0x12
	.byte	0xb8
	.long	0x2ffd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0x12
	.byte	0xb9
	.long	0x3013
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"name"
	.byte	0x12
	.byte	0xbe
	.long	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"decl"
	.byte	0x12
	.byte	0xc1
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0x12
	.byte	0xc4
	.long	0x3019
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0x12
	.byte	0xc9
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"args_size"
	.byte	0x12
	.byte	0xce
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0x12
	.byte	0xd3
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0x12
	.byte	0xd7
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0x12
	.byte	0xdb
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0x12
	.byte	0xdf
	.long	0x483
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0x12
	.byte	0xe5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0x12
	.byte	0xe8
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0x12
	.byte	0xec
	.long	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0x12
	.byte	0xf0
	.long	0x3036
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0x12
	.byte	0xf3
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0x12
	.byte	0xf8
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x12
	.byte	0xfe
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x12
	.value	0x102
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x12
	.value	0x107
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"x_cleanup_label"
	.byte	0x12
	.value	0x10d
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.string	"x_return_label"
	.byte	0x12
	.value	0x112
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.string	"computed_goto_common_label"
	.byte	0x12
	.value	0x115
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"computed_goto_common_reg"
	.byte	0x12
	.value	0x116
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"x_save_expr_regs"
	.byte	0x12
	.value	0x11a
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"x_stack_slot_list"
	.byte	0x12
	.value	0x11e
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.string	"x_rtl_expr_chain"
	.byte	0x12
	.value	0x121
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"x_tail_recursion_label"
	.byte	0x12
	.value	0x125
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.string	"x_tail_recursion_reentry"
	.byte	0x12
	.value	0x128
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.string	"x_arg_pointer_save_area"
	.byte	0x12
	.value	0x12e
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"x_clobber_return_insn"
	.byte	0x12
	.value	0x133
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"x_frame_offset"
	.byte	0x12
	.value	0x138
	.long	0x501
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"x_context_display"
	.byte	0x12
	.value	0x13d
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"x_trampoline_list"
	.byte	0x12
	.value	0x146
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"x_parm_birth_insn"
	.byte	0x12
	.value	0x149
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"x_last_parm_insn"
	.byte	0x12
	.value	0x14d
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"x_max_parm_reg"
	.byte	0x12
	.value	0x151
	.long	0x465
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"x_parm_reg_stack_loc"
	.byte	0x12
	.value	0x157
	.long	0x171c
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0x12
	.value	0x15a
	.long	0x3048
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"x_temp_slot_level"
	.byte	0x12
	.value	0x15d
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"x_var_temp_slot_level"
	.byte	0x12
	.value	0x160
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"x_target_temp_slot_level"
	.byte	0x12
	.value	0x166
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"fixup_var_refs_queue"
	.byte	0x12
	.value	0x16a
	.long	0x2321
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"inlinable"
	.byte	0x12
	.value	0x16d
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"no_debugging_symbols"
	.byte	0x12
	.value	0x16e
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xd
	.string	"original_arg_vector"
	.byte	0x12
	.value	0x16f
	.long	0x19d
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"original_decl_initial"
	.byte	0x12
	.value	0x170
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.string	"inl_last_parm_insn"
	.byte	0x12
	.value	0x173
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.string	"inl_max_label_num"
	.byte	0x12
	.value	0x175
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"funcdef_no"
	.byte	0x12
	.value	0x178
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.string	"machine"
	.byte	0x12
	.value	0x17d
	.long	0x3061
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.string	"stack_alignment_needed"
	.byte	0x12
	.value	0x17f
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.string	"preferred_stack_boundary"
	.byte	0x12
	.value	0x181
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xd
	.string	"language"
	.byte	0x12
	.value	0x184
	.long	0x307b
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.string	"epilogue_delay_list"
	.byte	0x12
	.value	0x18a
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x20
	.string	"returns_struct"
	.byte	0x12
	.value	0x190
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"returns_pcc_struct"
	.byte	0x12
	.value	0x194
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"returns_pointer"
	.byte	0x12
	.value	0x197
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"needs_context"
	.byte	0x12
	.value	0x19a
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_setjmp"
	.byte	0x12
	.value	0x19d
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_longjmp"
	.byte	0x12
	.value	0x1a0
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_alloca"
	.byte	0x12
	.value	0x1a4
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_eh_return"
	.byte	0x12
	.value	0x1a7
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"has_nonlocal_label"
	.byte	0x12
	.value	0x1ab
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"has_nonlocal_goto"
	.byte	0x12
	.value	0x1af
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"contains_functions"
	.byte	0x12
	.value	0x1b2
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"has_computed_jump"
	.byte	0x12
	.value	0x1b5
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"is_thunk"
	.byte	0x12
	.value	0x1ba
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"all_throwers_are_sibcalls"
	.byte	0x12
	.value	0x1c1
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"instrument_entry_exit"
	.byte	0x12
	.value	0x1c5
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"arc_profile"
	.byte	0x12
	.value	0x1c8
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"profile"
	.byte	0x12
	.value	0x1cb
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"limit_stack"
	.byte	0x12
	.value	0x1cf
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"stdarg"
	.byte	0x12
	.value	0x1d2
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"x_whole_function_mode_p"
	.byte	0x12
	.value	0x1d8
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x12
	.value	0x1e1
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"uses_const_pool"
	.byte	0x12
	.value	0x1e4
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"uses_pic_offset_table"
	.byte	0x12
	.value	0x1e7
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"uses_eh_lsda"
	.byte	0x12
	.value	0x1ea
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"arg_pointer_save_area_init"
	.byte	0x12
	.value	0x1ed
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.long	.LASF11
	.byte	0x12
	.value	0x1fa
	.long	0x25a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"max_jumptable_ents"
	.byte	0x12
	.value	0x1fe
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x1a
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2fd1
	.uleb128 0x1a
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2fe3
	.uleb128 0x3
	.byte	0x4
	.long	0x24c8
	.uleb128 0x3
	.byte	0x4
	.long	0x2373
	.uleb128 0x1a
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3003
	.uleb128 0x3
	.byte	0x4
	.long	0x2612
	.uleb128 0x1a
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x301f
	.uleb128 0x1a
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x303c
	.uleb128 0x1a
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x304e
	.uleb128 0x1a
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3067
	.uleb128 0x21
	.long	0x30a5
	.byte	0x4
	.byte	0x1
	.byte	0x3f
	.uleb128 0xb
	.string	"READ"
	.sleb128 0
	.uleb128 0xb
	.string	"WRITE"
	.sleb128 1
	.uleb128 0xb
	.string	"READWRITE"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1f
	.long	0x3102
	.string	"match"
	.value	0x1e0
	.byte	0x1
	.byte	0x3d
	.uleb128 0x6
	.string	"with"
	.byte	0x1
	.byte	0x3e
	.long	0x3102
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"use"
	.byte	0x1
	.byte	0x3f
	.long	0x3112
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"commutative"
	.byte	0x1
	.byte	0x40
	.long	0x3102
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x6
	.string	"early_clobber"
	.byte	0x1
	.byte	0x41
	.long	0x3102
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.byte	0x0
	.uleb128 0xf
	.long	0x3112
	.long	0x216
	.uleb128 0x10
	.long	0x47c
	.byte	0x1d
	.byte	0x0
	.uleb128 0xf
	.long	0x3122
	.long	0x3081
	.uleb128 0x10
	.long	0x47c
	.byte	0x1d
	.byte	0x0
	.uleb128 0x22
	.long	0x3173
	.string	"regclass_compatible_p"
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	0x216
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x23
	.string	"class0"
	.byte	0x1
	.byte	0x57
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"class1"
	.byte	0x1
	.byte	0x57
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x22
	.long	0x325a
	.string	"try_auto_increment"
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.long	0x216
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x24
	.long	.LASF5
	.byte	0x1
	.byte	0x66
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"inc_insn"
	.byte	0x1
	.byte	0x66
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"inc_insn_set"
	.byte	0x1
	.byte	0x66
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.string	"reg"
	.byte	0x1
	.byte	0x66
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x23
	.string	"increment"
	.byte	0x1
	.byte	0x67
	.long	0x501
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"pre"
	.byte	0x1
	.byte	0x68
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x25
	.string	"inc_code"
	.byte	0x1
	.byte	0x6a
	.long	0xadf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"pset"
	.byte	0x1
	.byte	0x6c
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x25
	.string	"use"
	.byte	0x1
	.byte	0x71
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x25
	.string	"size"
	.byte	0x1
	.byte	0x74
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0x32ae
	.string	"discover_flags_reg"
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.long	0x9c
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x25
	.string	"tmp"
	.byte	0x1
	.byte	0xaa
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x25
	.string	"found"
	.byte	0x1
	.byte	0xb4
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x339f
	.string	"mark_flags_life_zones"
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x23
	.string	"flags"
	.byte	0x1
	.byte	0xde
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"flags_regno"
	.byte	0x1
	.byte	0xe0
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"flags_nregs"
	.byte	0x1
	.byte	0xe1
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.string	"block"
	.byte	0x1
	.byte	0xe2
	.long	0x22a5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	0x334f
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x25
	.string	"mode"
	.byte	0x1
	.byte	0xf0
	.long	0x896
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.long	.LASF5
	.byte	0x1
	.byte	0xf1
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x26
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x103
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"end"
	.byte	0x1
	.value	0x103
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"live"
	.byte	0x1
	.value	0x104
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x10e
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x33ed
	.string	"flags_set_1"
	.byte	0x1
	.value	0x143
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0x141
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"pat"
	.byte	0x1
	.value	0x141
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"data"
	.byte	0x1
	.value	0x142
	.long	0x568
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2e
	.long	0x3439
	.string	"replacement_quality"
	.byte	0x1
	.value	0x153
	.byte	0x1
	.long	0x216
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x2d
	.string	"reg"
	.byte	0x1
	.value	0x152
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF12
	.byte	0x1
	.value	0x154
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2e
	.long	0x3474
	.string	"perhaps_ends_bb_p"
	.byte	0x1
	.value	0x173
	.byte	0x1
	.long	0x216
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2f
	.long	.LASF5
	.byte	0x1
	.value	0x172
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x359c
	.string	"optimize_reg_copy_1"
	.byte	0x1
	.value	0x197
	.byte	0x1
	.long	0x216
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2f
	.long	.LASF5
	.byte	0x1
	.value	0x194
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF8
	.byte	0x1
	.value	0x195
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"src"
	.byte	0x1
	.value	0x196
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x198
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"q"
	.byte	0x1
	.value	0x198
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"note"
	.byte	0x1
	.value	0x199
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"dest_death"
	.byte	0x1
	.value	0x19a
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"sregno"
	.byte	0x1
	.value	0x19b
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"dregno"
	.byte	0x1
	.value	0x19c
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2b
	.string	"failed"
	.byte	0x1
	.value	0x1c6
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"d_length"
	.byte	0x1
	.value	0x1c7
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF13
	.byte	0x1
	.value	0x1c8
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"d_n_calls"
	.byte	0x1
	.value	0x1c9
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"s_n_calls"
	.byte	0x1
	.value	0x1ca
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x3640
	.string	"optimize_reg_copy_2"
	.byte	0x1
	.value	0x25e
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2f
	.long	.LASF5
	.byte	0x1
	.value	0x25b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF8
	.byte	0x1
	.value	0x25c
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"src"
	.byte	0x1
	.value	0x25d
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x25f
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"q"
	.byte	0x1
	.value	0x25f
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x260
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"sregno"
	.byte	0x1
	.value	0x261
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"dregno"
	.byte	0x1
	.value	0x262
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x372a
	.string	"optimize_reg_copy_3"
	.byte	0x1
	.value	0x29b
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2f
	.long	.LASF5
	.byte	0x1
	.value	0x298
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF8
	.byte	0x1
	.value	0x299
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"src"
	.byte	0x1
	.value	0x29a
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"src_reg"
	.byte	0x1
	.value	0x29c
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"src_no"
	.byte	0x1
	.value	0x29d
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"dst_no"
	.byte	0x1
	.value	0x29e
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x29f
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x29f
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"subreg"
	.byte	0x1
	.value	0x29f
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"old_mode"
	.byte	0x1
	.value	0x2a0
	.long	0x896
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x2b
	.string	"note"
	.byte	0x1
	.value	0x2e4
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x388c
	.string	"copy_src_to_dest"
	.byte	0x1
	.value	0x2f4
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2f
	.long	.LASF5
	.byte	0x1
	.value	0x2f0
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"src"
	.byte	0x1
	.value	0x2f1
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF8
	.byte	0x1
	.value	0x2f2
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF14
	.byte	0x1
	.value	0x2f3
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0x2f5
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"link"
	.byte	0x1
	.value	0x2f6
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LASF7
	.byte	0x1
	.value	0x2f7
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x2f8
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"move_insn"
	.byte	0x1
	.value	0x2f9
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"p_insn_notes"
	.byte	0x1
	.value	0x2fa
	.long	0x171c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"p_move_notes"
	.byte	0x1
	.value	0x2fb
	.long	0x171c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF12
	.byte	0x1
	.value	0x2fc
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"dest_regno"
	.byte	0x1
	.value	0x2fd
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x2fe
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"insn_uid"
	.byte	0x1
	.value	0x2ff
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"move_uid"
	.byte	0x1
	.value	0x300
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x2b
	.string	"old_num_regs"
	.byte	0x1
	.value	0x310
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x392b
	.string	"reg_is_remote_constant_p"
	.byte	0x1
	.value	0x36c
	.byte	0x1
	.long	0x216
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2d
	.string	"reg"
	.byte	0x1
	.value	0x369
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF5
	.byte	0x1
	.value	0x36a
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF3
	.byte	0x1
	.value	0x36b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x36d
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	0x3913
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x375
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x26
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x385
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x3a23
	.string	"fixup_match_2"
	.byte	0x1
	.value	0x3af
	.byte	0x1
	.long	0x216
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x2f
	.long	.LASF5
	.byte	0x1
	.value	0x3ad
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"dst"
	.byte	0x1
	.value	0x3ad
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"src"
	.byte	0x1
	.value	0x3ad
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"offset"
	.byte	0x1
	.value	0x3ad
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2f
	.long	.LASF15
	.byte	0x1
	.value	0x3ae
	.long	0x3a23
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x3b0
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"dst_death"
	.byte	0x1
	.value	0x3b0
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x3b1
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.value	0x3b1
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2b
	.string	"pset"
	.byte	0x1
	.value	0x3bd
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x3d1
	.long	0x501
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"add"
	.byte	0x1
	.value	0x3d3
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x570
	.uleb128 0x30
	.long	0x3d73
	.byte	0x1
	.string	"regmove_optimize"
	.byte	0x1
	.value	0x42c
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x2d
	.string	"f"
	.byte	0x1
	.value	0x429
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"nregs"
	.byte	0x1
	.value	0x42a
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF15
	.byte	0x1
	.value	0x42b
	.long	0x3a23
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x42d
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x42e
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2b
	.string	"match"
	.byte	0x1
	.value	0x42f
	.long	0x30a5
	.byte	0x3
	.byte	0x91
	.sleb128 -644
	.uleb128 0x2b
	.string	"pass"
	.byte	0x1
	.value	0x430
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x431
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2b
	.string	"copy_src"
	.byte	0x1
	.value	0x432
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2b
	.string	"copy_dst"
	.byte	0x1
	.value	0x432
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x433
	.long	0x22a5
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x31
	.string	"done"
	.byte	0x1
	.value	0x5fa
	.long	.L365
	.uleb128 0x28
	.long	0x3bec
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x454
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.string	"op_no"
	.byte	0x1
	.value	0x455
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x455
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.long	0x3b76
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2b
	.string	"srcregno"
	.byte	0x1
	.value	0x473
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x0
	.uleb128 0x26
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x489
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.string	"dst"
	.byte	0x1
	.value	0x489
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x489
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.long	.LASF21
	.byte	0x1
	.value	0x48a
	.long	0x21d
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2a
	.long	.LASF22
	.byte	0x1
	.value	0x48a
	.long	0x21d
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x2b
	.string	"comm"
	.byte	0x1
	.value	0x4c5
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x3d3b
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2b
	.string	"op_no"
	.byte	0x1
	.value	0x4e5
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x4e5
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.string	"success"
	.byte	0x1
	.value	0x4e6
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x4f5
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x4f5
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x4f5
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.string	"dst"
	.byte	0x1
	.value	0x4f5
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x4f6
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF24
	.byte	0x1
	.value	0x4f6
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.value	0x4f7
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LASF21
	.byte	0x1
	.value	0x4f8
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF22
	.byte	0x1
	.value	0x4f8
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x4f9
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	0x3cef
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x2b
	.string	"comm"
	.byte	0x1
	.value	0x513
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x28
	.long	0x3d0d
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x2b
	.string	"pset"
	.byte	0x1
	.value	0x57f
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x26
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x2b
	.string	"dstno"
	.byte	0x1
	.value	0x5b8
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"srcno"
	.byte	0x1
	.value	0x5b8
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x2b
	.string	"end"
	.byte	0x1
	.value	0x5f1
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"new"
	.byte	0x1
	.value	0x5f2
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF7
	.byte	0x1
	.value	0x5f3
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x3e6d
	.string	"find_matches"
	.byte	0x1
	.value	0x60a
	.byte	0x1
	.long	0x216
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x2f
	.long	.LASF5
	.byte	0x1
	.value	0x608
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"matchp"
	.byte	0x1
	.value	0x609
	.long	0x3e6d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"likely_spilled"
	.byte	0x1
	.value	0x60b
	.long	0x3102
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2b
	.string	"op_no"
	.byte	0x1
	.value	0x60c
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"any_matches"
	.byte	0x1
	.value	0x60d
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x61b
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"c"
	.byte	0x1
	.value	0x61c
	.long	0x20e
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x61d
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x2b
	.string	"end"
	.byte	0x1
	.value	0x63f
	.long	0x56a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"match_ul"
	.byte	0x1
	.value	0x640
	.long	0x4d0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"match"
	.byte	0x1
	.value	0x641
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x30a5
	.uleb128 0x2c
	.long	0x3f25
	.string	"replace_in_call_usage"
	.byte	0x1
	.value	0x663
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x2d
	.string	"loc"
	.byte	0x1
	.value	0x65f
	.long	0x171c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"dst_reg"
	.byte	0x1
	.value	0x660
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"src"
	.byte	0x1
	.value	0x661
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF5
	.byte	0x1
	.value	0x662
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x664
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"code"
	.byte	0x1
	.value	0x665
	.long	0xadf
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x666
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x667
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x667
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x41cc
	.string	"fixup_match_1"
	.byte	0x1
	.value	0x68e
	.byte	0x1
	.long	0x216
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x2f
	.long	.LASF5
	.byte	0x1
	.value	0x68b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"set"
	.byte	0x1
	.value	0x68b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"src"
	.byte	0x1
	.value	0x68b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF20
	.byte	0x1
	.value	0x68b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.string	"dst"
	.byte	0x1
	.value	0x68b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"backward"
	.byte	0x1
	.value	0x68c
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2d
	.string	"operand_number"
	.byte	0x1
	.value	0x68c
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2d
	.string	"match_number"
	.byte	0x1
	.value	0x68c
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x2f
	.long	.LASF15
	.byte	0x1
	.value	0x68d
	.long	0x3a23
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x68f
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.string	"post_inc"
	.byte	0x1
	.value	0x690
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2b
	.string	"post_inc_set"
	.byte	0x1
	.value	0x690
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"search_end"
	.byte	0x1
	.value	0x690
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"success"
	.byte	0x1
	.value	0x691
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.value	0x692
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.string	"s_num_calls"
	.byte	0x1
	.value	0x692
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"code"
	.byte	0x1
	.value	0x693
	.long	0xadf
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.string	"insn_const"
	.byte	0x1
	.value	0x694
	.long	0x501
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x694
	.long	0x501
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.string	"overlap"
	.byte	0x1
	.value	0x695
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x696
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF24
	.byte	0x1
	.value	0x696
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x697
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF13
	.byte	0x1
	.value	0x697
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	0x4131
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x2b
	.string	"q"
	.byte	0x1
	.value	0x6eb
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"set2"
	.byte	0x1
	.value	0x6ec
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x28
	.long	0x4169
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0x773
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x2b
	.string	"notes"
	.byte	0x1
	.value	0x77c
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x2b
	.string	"note"
	.byte	0x1
	.value	0x78f
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"q"
	.byte	0x1
	.value	0x790
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"set2"
	.byte	0x1
	.value	0x790
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"num_calls2"
	.byte	0x1
	.value	0x791
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"s_length2"
	.byte	0x1
	.value	0x791
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x4264
	.string	"stable_and_no_regs_but_for_p"
	.byte	0x1
	.value	0x81e
	.byte	0x1
	.long	0x216
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0x81d
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"src"
	.byte	0x1
	.value	0x81d
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"dst"
	.byte	0x1
	.value	0x81d
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"code"
	.byte	0x1
	.value	0x81f
	.long	0xadf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x824
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x825
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x42bc
	.string	"csa_memlist"
	.byte	0x14
	.byte	0x1
	.value	0x853
	.uleb128 0xd
	.string	"sp_offset"
	.byte	0x1
	.value	0x854
	.long	0x501
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF5
	.byte	0x1
	.value	0x855
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"mem"
	.byte	0x1
	.value	0x855
	.long	0x171c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1d
	.long	.LASF7
	.byte	0x1
	.value	0x856
	.long	0x42bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4264
	.uleb128 0x30
	.long	0x4301
	.byte	0x1
	.string	"combine_stack_adjustments"
	.byte	0x1
	.value	0x868
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x869
	.long	0x22a5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x4337
	.string	"stack_memref_p"
	.byte	0x1
	.value	0x874
	.byte	0x1
	.long	0x216
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0x873
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x43a9
	.string	"single_set_for_csa"
	.byte	0x1
	.value	0x889
	.byte	0x1
	.long	0x9c
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x2f
	.long	.LASF5
	.byte	0x1
	.value	0x888
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x88a
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"tmp"
	.byte	0x1
	.value	0x88b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x2b
	.string	"this"
	.byte	0x1
	.value	0x899
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x43ee
	.string	"free_csa_memlist"
	.byte	0x1
	.value	0x8ac
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x2f
	.long	.LASF25
	.byte	0x1
	.value	0x8ab
	.long	0x42bc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF7
	.byte	0x1
	.value	0x8ad
	.long	0x42bc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x4464
	.string	"record_one_stack_memref"
	.byte	0x1
	.value	0x8bc
	.byte	0x1
	.long	0x42bc
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x2f
	.long	.LASF5
	.byte	0x1
	.value	0x8ba
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"mem"
	.byte	0x1
	.value	0x8ba
	.long	0x171c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"next_memlist"
	.byte	0x1
	.value	0x8bb
	.long	0x42bc
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"ml"
	.byte	0x1
	.value	0x8bd
	.long	0x42bc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x44fb
	.string	"try_apply_stack_adjustment"
	.byte	0x1
	.value	0x8d5
	.byte	0x1
	.long	0x216
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x2f
	.long	.LASF5
	.byte	0x1
	.value	0x8d2
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF25
	.byte	0x1
	.value	0x8d3
	.long	0x42bc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"new_adjust"
	.byte	0x1
	.value	0x8d4
	.long	0x501
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"delta"
	.byte	0x1
	.value	0x8d4
	.long	0x501
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"ml"
	.byte	0x1
	.value	0x8d6
	.long	0x42bc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x8d7
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xc
	.long	0x453d
	.string	"record_stack_memrefs_data"
	.byte	0x8
	.byte	0x1
	.value	0x8f2
	.uleb128 0x1d
	.long	.LASF5
	.byte	0x1
	.value	0x8f3
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF25
	.byte	0x1
	.value	0x8f4
	.long	0x42bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2e
	.long	0x45a4
	.string	"record_stack_memrefs"
	.byte	0x1
	.value	0x8fb
	.byte	0x1
	.long	0x216
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x2d
	.string	"xp"
	.byte	0x1
	.value	0x8f9
	.long	0x171c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"data"
	.byte	0x1
	.value	0x8fa
	.long	0x568
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x8fc
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"d"
	.byte	0x1
	.value	0x8fd
	.long	0x45a4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x44fb
	.uleb128 0x2c
	.long	0x46d2
	.string	"combine_stack_adjustments_for_block"
	.byte	0x1
	.value	0x926
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x2d
	.string	"bb"
	.byte	0x1
	.value	0x925
	.long	0x22a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"last_sp_adjust"
	.byte	0x1
	.value	0x927
	.long	0x501
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"last_sp_set"
	.byte	0x1
	.value	0x928
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x929
	.long	0x42bc
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x92a
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF7
	.byte	0x1
	.value	0x92a
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x92a
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"data"
	.byte	0x1
	.value	0x92b
	.long	0x44fb
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"end_of_block"
	.byte	0x1
	.value	0x92c
	.long	0x46d2
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x26
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x2a
	.long	.LASF8
	.byte	0x1
	.value	0x939
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x93a
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2b
	.string	"this_adjust"
	.byte	0x1
	.value	0x942
	.long	0x501
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x25
	.string	"regmove_bb_head"
	.byte	0x1
	.byte	0x3b
	.long	0x890
	.byte	0x5
	.byte	0x3
	.long	regmove_bb_head
	.uleb128 0x25
	.string	"flags_set_1_rtx"
	.byte	0x1
	.byte	0xd9
	.long	0x9c
	.byte	0x5
	.byte	0x3
	.long	flags_set_1_rtx
	.uleb128 0x25
	.string	"flags_set_1_set"
	.byte	0x1
	.byte	0xda
	.long	0x216
	.byte	0x5
	.byte	0x3
	.long	flags_set_1_set
	.uleb128 0x2b
	.string	"regno_src_regno"
	.byte	0x1
	.value	0x149
	.long	0x890
	.byte	0x5
	.byte	0x3
	.long	regno_src_regno
	.uleb128 0xf
	.long	0x4760
	.long	0x20e
	.uleb128 0x10
	.long	0x47c
	.byte	0xaf
	.byte	0x0
	.uleb128 0x32
	.string	"call_used_regs"
	.byte	0xd
	.value	0x196
	.long	0x4750
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"target_flags"
	.byte	0xc
	.byte	0x21
	.long	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x479f
	.long	0x21d
	.uleb128 0x10
	.long	0x47c
	.byte	0xff
	.byte	0x0
	.uleb128 0x32
	.string	"mips_char_to_class"
	.byte	0xc
	.value	0x8b0
	.long	0x478f
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x47cc
	.long	0x4a9
	.uleb128 0x10
	.long	0x47c
	.byte	0x35
	.byte	0x0
	.uleb128 0x33
	.string	"mode_size"
	.byte	0x4
	.byte	0x59
	.long	0x47df
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x47bc
	.uleb128 0xf
	.long	0x47f4
	.long	0x4ba
	.uleb128 0x10
	.long	0x47c
	.byte	0x35
	.byte	0x0
	.uleb128 0x33
	.string	"mode_bitsize"
	.byte	0x4
	.byte	0x69
	.long	0x480a
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x47e4
	.uleb128 0x33
	.string	"word_mode"
	.byte	0x4
	.byte	0xad
	.long	0x896
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x4832
	.long	0x4a9
	.uleb128 0x10
	.long	0x47c
	.byte	0xa2
	.byte	0x0
	.uleb128 0x33
	.string	"rtx_length"
	.byte	0x3
	.byte	0x3c
	.long	0x4846
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x4822
	.uleb128 0xf
	.long	0x485b
	.long	0x203
	.uleb128 0x10
	.long	0x47c
	.byte	0xa2
	.byte	0x0
	.uleb128 0x33
	.string	"rtx_format"
	.byte	0x3
	.byte	0x42
	.long	0x486f
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x484b
	.uleb128 0xf
	.long	0x4884
	.long	0x20e
	.uleb128 0x10
	.long	0x47c
	.byte	0xa2
	.byte	0x0
	.uleb128 0x33
	.string	"rtx_class"
	.byte	0x3
	.byte	0x45
	.long	0x4897
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x4874
	.uleb128 0xf
	.long	0x48ac
	.long	0x9c
	.uleb128 0x10
	.long	0x47c
	.byte	0xa
	.byte	0x0
	.uleb128 0x32
	.string	"global_rtl"
	.byte	0x3
	.value	0x6e5
	.long	0x489c
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"which_alternative"
	.byte	0xe
	.byte	0x96
	.long	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF4
	.byte	0xe
	.byte	0xd0
	.long	0x174f
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x48f9
	.long	0x465
	.uleb128 0x10
	.long	0x47c
	.byte	0x18
	.byte	0x0
	.uleb128 0x32
	.string	"reg_class_size"
	.byte	0xd
	.value	0x1cf
	.long	0x48e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"basic_block_info"
	.byte	0x6
	.byte	0xfe
	.long	0x1e25
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x493c
	.long	0x155c
	.uleb128 0x10
	.long	0x47c
	.byte	0x1
	.byte	0x0
	.uleb128 0x32
	.string	"entry_exit_blocks"
	.byte	0x6
	.value	0x139
	.long	0x492c
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"reg_n_info"
	.byte	0x10
	.byte	0x43
	.long	0x1e25
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"flag_expensive_optimizations"
	.byte	0x11
	.value	0x143
	.long	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"flag_regmove"
	.byte	0x11
	.value	0x245
	.long	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"flag_non_call_exceptions"
	.byte	0x11
	.value	0x2ae
	.long	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"cfun"
	.byte	0x12
	.value	0x202
	.long	0x3019
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
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x4
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x29
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x41
	.value	0x2
	.long	.Ldebug_info0
	.long	0x49dd
	.long	0x3a29
	.string	"regmove_optimize"
	.long	0x42c2
	.string	"combine_stack_adjustments"
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
.LASF7:
	.string	"next"
.LASF17:
	.string	"num_calls"
.LASF6:
	.string	"basic_block"
.LASF20:
	.string	"src_subreg"
.LASF25:
	.string	"memlist"
.LASF2:
	.string	"mem_attrs"
.LASF3:
	.string	"first"
.LASF15:
	.string	"regmove_dump_file"
.LASF24:
	.string	"dst_note"
.LASF14:
	.string	"old_max_uid"
.LASF5:
	.string	"insn"
.LASF4:
	.string	"recog_data"
.LASF12:
	.string	"src_regno"
.LASF16:
	.string	"length"
.LASF9:
	.string	"sequence_stack"
.LASF1:
	.string	"_IO_FILE"
.LASF19:
	.string	"match_no"
.LASF13:
	.string	"s_length"
.LASF8:
	.string	"dest"
.LASF11:
	.string	"function_frequency"
.LASF10:
	.string	"sequence_rtl_expr"
.LASF21:
	.string	"src_class"
.LASF18:
	.string	"newconst"
.LASF0:
	.string	"unsigned int"
.LASF22:
	.string	"dst_class"
.LASF23:
	.string	"src_note"
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
