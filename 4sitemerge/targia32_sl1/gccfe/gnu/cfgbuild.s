	.file	"cfgbuild.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.type	__FUNCTION__.11950, @object
	.size	__FUNCTION__.11950, 21
__FUNCTION__.11950:
	.string	"inside_basic_block_p"
	.align 4
.LC0:
	.string	"../../../kgccfe/gnu/cfgbuild.c"
	.text
	.type	inside_basic_block_p, @function
inside_basic_block_p:
.LFB15:
	.file 1 "../../../kgccfe/gnu/cfgbuild.c"
	.loc 1 73 0
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
	.loc 1 74 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$42, %eax
	movl	%eax, -20(%ebp)
	cmpl	$5, -20(%ebp)
	ja	.L2
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	.L7@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L7:
	.long	.L3@GOTOFF
	.long	.L4@GOTOFF
	.long	.L3@GOTOFF
	.long	.L5@GOTOFF
	.long	.L6@GOTOFF
	.long	.L5@GOTOFF
	.text
.L6:
	.loc 1 78 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L8
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L8
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L11
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	je	.L11
.L8:
	movl	$1, -12(%ebp)
	jmp	.L13
.L11:
	movl	$0, -12(%ebp)
.L13:
	movzbl	-12(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	jmp	.L14
.L4:
	.loc 1 84 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L15
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	je	.L15
	movl	$1, -8(%ebp)
	jmp	.L18
.L15:
	movl	$0, -8(%ebp)
.L18:
	movzbl	-8(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	jmp	.L14
.L3:
	.loc 1 89 0
	movl	$1, -16(%ebp)
	jmp	.L14
.L5:
	.loc 1 93 0
	movl	$0, -16(%ebp)
	jmp	.L14
.L2:
	.loc 1 96 0
	leal	__FUNCTION__.11950@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$96, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L14:
	movl	-16(%ebp), %eax
	.loc 1 98 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	inside_basic_block_p, .-inside_basic_block_p
	.section	.rodata
	.type	__FUNCTION__.11993, @object
	.size	__FUNCTION__.11993, 20
__FUNCTION__.11993:
	.string	"control_flow_insn_p"
	.text
.globl control_flow_insn_p
	.type	control_flow_insn_p, @function
control_flow_insn_p:
.LFB16:
	.loc 1 106 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$52, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 109 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$42, %eax
	movl	%eax, -40(%ebp)
	cmpl	$5, -40(%ebp)
	ja	.L21
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	.L27@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L27:
	.long	.L22@GOTOFF
	.long	.L23@GOTOFF
	.long	.L24@GOTOFF
	.long	.L25@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.text
.L26:
	.loc 1 113 0
	movl	$0, -36(%ebp)
	jmp	.L28
.L23:
	.loc 1 117 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L29
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	je	.L29
	movl	$1, -32(%ebp)
	jmp	.L32
.L29:
	movl	$0, -32(%ebp)
.L32:
	movzbl	-32(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	jmp	.L28
.L24:
	.loc 1 122 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L33
	movl	$0, 8(%esp)
	movl	$22, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L35
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	jns	.L35
.L33:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	testb	%al, %al
	je	.L37
.L35:
	movl	$1, -28(%ebp)
	jmp	.L38
.L37:
	movl	$0, -28(%ebp)
.L38:
	movzbl	-28(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	jmp	.L28
.L22:
	.loc 1 130 0
	movl	flag_non_call_exceptions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L39
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	xorl	$1, %eax
	testb	%al, %al
	jne	.L39
	movl	$1, -24(%ebp)
	jmp	.L42
.L39:
	movl	$0, -24(%ebp)
.L42:
	movzbl	-24(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	jmp	.L28
.L25:
	.loc 1 136 0
	movl	$0, -36(%ebp)
	jmp	.L28
.L21:
	.loc 1 139 0
	leal	__FUNCTION__.11993@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$139, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L28:
	movl	-36(%ebp), %eax
	.loc 1 141 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	control_flow_insn_p, .-control_flow_insn_p
	.type	count_basic_blocks, @function
count_basic_blocks:
.LFB17:
	.loc 1 148 0
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
	.loc 1 149 0
	movl	$0, -16(%ebp)
	.loc 1 150 0
	movb	$0, -5(%ebp)
	.loc 1 153 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L45
.L46:
	.loc 1 157 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L47
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L49
.L47:
	cmpb	$0, -5(%ebp)
	je	.L49
	.loc 1 159 0
	addl	$1, -16(%ebp)
	movb	$0, -5(%ebp)
.L49:
	.loc 1 162 0
	movzbl	-5(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L51
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	inside_basic_block_p
	testb	%al, %al
	je	.L51
	.loc 1 163 0
	movb	$1, -5(%ebp)
.L51:
	.loc 1 166 0
	cmpb	$0, -5(%ebp)
	je	.L54
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	control_flow_insn_p@PLT
	testb	%al, %al
	je	.L54
	.loc 1 167 0
	addl	$1, -16(%ebp)
	movb	$0, -5(%ebp)
.L54:
	.loc 1 153 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L45:
	cmpl	$0, -12(%ebp)
	jne	.L46
	.loc 1 170 0
	cmpb	$0, -5(%ebp)
	je	.L58
	.loc 1 171 0
	addl	$1, -16(%ebp)
.L58:
	.loc 1 175 0
	cmpl	$0, -16(%ebp)
	jne	.L60
	.loc 1 177 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 178 0
	movl	$1, -16(%ebp)
.L60:
	.loc 1 181 0
	movl	-16(%ebp), %eax
	.loc 1 182 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	count_basic_blocks, .-count_basic_blocks
	.type	find_label_refs, @function
find_label_refs:
.LFB18:
	.loc 1 191 0
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
	.loc 1 194 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L64
.L65:
	.loc 1 195 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L66
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L66
.LBB2:
	.loc 1 208 0
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L69
.L70:
	.loc 1 209 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$13, %al
	jne	.L71
.LBB3:
	.loc 1 211 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 213 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L73
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L73
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L71
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L73
	jmp	.L71
.L73:
	.loc 1 218 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L71
	.loc 1 220 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L79
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$13, 4(%esp)
	movl	%edx, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L79
	jmp	.L71
.L79:
	.loc 1 224 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	alloc_EXPR_LIST@PLT
	movl	%eax, 12(%ebp)
.L71:
.LBE3:
	.loc 1 208 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L69:
	cmpl	$0, -16(%ebp)
	jne	.L70
.L66:
.LBE2:
	.loc 1 194 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L64:
	cmpl	$0, -20(%ebp)
	jne	.L65
	.loc 1 228 0
	movl	12(%ebp), %eax
	.loc 1 229 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	find_label_refs, .-find_label_refs
	.section	.rodata
	.type	__FUNCTION__.12124, @object
	.size	__FUNCTION__.12124, 16
__FUNCTION__.12124:
	.string	"make_label_edge"
	.text
	.type	make_label_edge, @function
make_label_edge:
.LFB19:
	.loc 1 242 0
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
	.loc 1 243 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L85
	.loc 1 244 0
	leal	__FUNCTION__.12124@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$244, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L85:
	.loc 1 251 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L89
	.loc 1 254 0
	movl	16(%ebp), %eax
	movl	28(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cached_make_edge@PLT
.L89:
	.loc 1 255 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	make_label_edge, .-make_label_edge
	.type	make_eh_edge, @function
make_eh_edge:
.LFB20:
	.loc 1 264 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	pushl	%ebx
.LCFI22:
	subl	$36, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 265 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L91
	movl	$4, -24(%ebp)
	jmp	.L93
.L91:
	movl	$0, -24(%ebp)
.L93:
	movl	-24(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 268 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reachable_handlers@PLT
	movl	%eax, -16(%ebp)
	.loc 1 270 0
	movl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L94
.L95:
	.loc 1 271 0
	movl	-12(%ebp), %edx
	orl	$10, %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_label_edge
	.loc 1 270 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L94:
	cmpl	$0, -8(%ebp)
	jne	.L95
	.loc 1 274 0
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_list@PLT
	.loc 1 275 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	make_eh_edge, .-make_eh_edge
	.section	.rodata
	.type	__FUNCTION__.12182, @object
	.size	__FUNCTION__.12182, 11
__FUNCTION__.12182:
	.string	"make_edges"
	.text
	.type	make_edges, @function
make_edges:
.LFB21:
	.loc 1 290 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	pushl	%edi
.LCFI26:
	pushl	%esi
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$92, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 292 0
	movl	$0, -60(%ebp)
	.loc 1 295 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	297(%edx), %eax
	andl	$-9, %eax
	movb	%al, 297(%edx)
	.loc 1 300 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L99
	cmpl	$0, 8(%ebp)
	jne	.L99
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	304(%eax), %eax
	cmpl	$100, %eax
	jle	.L102
.L99:
	.loc 1 302 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -60(%ebp)
	.loc 1 303 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 305 0
	cmpl	$0, 20(%ebp)
	je	.L102
	.loc 1 306 0
	movl	12(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L104
.L105:
.LBB4:
	.loc 1 310 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L106
.L107:
	.loc 1 311 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L108
	.loc 1 312 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -88(%ebp)
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -84(%ebp)
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-60(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -80(%ebp)
	movl	%edi, -76(%ebp)
	movl	-56(%ebp), %eax
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
	je	.L184
	movl	%esi, %edi
	xorl	%esi, %esi
.L184:
	movl	-80(%ebp), %eax
	orl	%esi, %eax
	movl	-76(%ebp), %edx
	orl	%edi, %edx
	movl	-84(%ebp), %edi
	movl	-88(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L108:
	.loc 1 310 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
.L106:
	cmpl	$0, -56(%ebp)
	jne	.L107
.LBE4:
	.loc 1 306 0
	movl	-64(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -64(%ebp)
.L104:
	movl	16(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L105
.L102:
	.loc 1 318 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L111
	.loc 1 319 0
	movl	$1, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	cached_make_edge@PLT
.L111:
	.loc 1 322 0
	movl	12(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L113
.L114:
.LBB5:
	.loc 1 326 0
	movl	$0, -40(%ebp)
	.loc 1 328 0
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L115
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leal	(%eax,%eax), %edx
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movzbl	3(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L115
	.loc 1 329 0
	movl	$0, 12(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	cached_make_edge@PLT
.L115:
	.loc 1 334 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 335 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -44(%ebp)
	.loc 1 338 0
	cmpl	$43, -44(%ebp)
	jne	.L118
.LBB6:
	.loc 1 343 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$63, %ax
	jne	.L120
	.loc 1 344 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	make_eh_edge
	jmp	.L118
.L120:
	.loc 1 348 0
	movl	$0, 8(%esp)
	movl	$26, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L118
	.loc 1 352 0
	movl	-52(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L123
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L123
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L123
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L127
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L123
.L127:
.LBB7:
	.loc 1 361 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	jne	.L129
	.loc 1 362 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L131
.L129:
	.loc 1 364 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
.L131:
	.loc 1 366 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	jmp	.L132
.L133:
	.loc 1 367 0
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	4(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	make_label_edge
	.loc 1 366 0
	subl	$1, -28(%ebp)
.L132:
	cmpl	$0, -28(%ebp)
	jns	.L133
	.loc 1 373 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L135
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L137
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L139
.L137:
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -68(%ebp)
.L139:
	movl	-68(%ebp), %esi
	movl	%esi, -72(%ebp)
	jmp	.L140
.L135:
	movl	$0, -72(%ebp)
.L140:
	movl	-72(%ebp), %edi
	movl	%edi, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L118
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L118
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	jne	.L118
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L118
	.loc 1 377 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	make_label_edge
	.loc 1 352 0
	jmp	.L118
.L123:
.LBE7:
	.loc 1 389 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	computed_jump_p@PLT
	testl	%eax, %eax
	je	.L146
	.loc 1 391 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	297(%edx), %eax
	orl	$8, %eax
	movb	%al, 297(%edx)
	.loc 1 393 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L148
.L149:
	.loc 1 394 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	$2, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	make_label_edge
	.loc 1 393 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
.L148:
	cmpl	$0, -48(%ebp)
	jne	.L149
	.loc 1 396 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L151
.L152:
	.loc 1 397 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	$2, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	make_label_edge
	.loc 1 396 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
.L151:
	cmpl	$0, -48(%ebp)
	jne	.L152
	jmp	.L118
.L146:
	.loc 1 401 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	returnjump_p@PLT
	testl	%eax, %eax
	je	.L154
	.loc 1 402 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	cached_make_edge@PLT
	jmp	.L118
.L154:
	.loc 1 407 0
	movl	-52(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	jne	.L156
	.loc 1 408 0
	leal	__FUNCTION__.12182@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$408, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L156:
	.loc 1 409 0
	movl	-52(%ebp), %eax
	movl	76(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	make_label_edge
.L118:
.LBE6:
	.loc 1 417 0
	cmpl	$44, -44(%ebp)
	jne	.L158
	movl	-52(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L158
	.loc 1 418 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	$6, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	cached_make_edge@PLT
	.loc 1 417 0
	jmp	.L161
.L158:
	.loc 1 425 0
	cmpl	$44, -44(%ebp)
	je	.L162
	movl	flag_non_call_exceptions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L161
.L162:
	.loc 1 428 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	make_eh_edge
	.loc 1 430 0
	cmpl	$44, -44(%ebp)
	jne	.L161
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L161
.LBB8:
	.loc 1 441 0
	movl	$0, 8(%esp)
	movl	$22, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -24(%ebp)
	.loc 1 443 0
	cmpl	$0, -24(%ebp)
	je	.L166
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	js	.L161
.L166:
	.loc 1 444 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	144(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L168
.L169:
	.loc 1 445 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	$6, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	make_label_edge
	.loc 1 444 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
.L168:
	cmpl	$0, -48(%ebp)
	jne	.L169
.L161:
.LBE8:
	.loc 1 451 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -52(%ebp)
	.loc 1 452 0
	cmpl	$0, -52(%ebp)
	je	.L170
	movl	-64(%ebp), %eax
	movl	52(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L172
	cmpl	$0, -40(%ebp)
	je	.L172
.L170:
	.loc 1 453 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	cached_make_edge@PLT
	.loc 1 452 0
	jmp	.L174
.L172:
	.loc 1 454 0
	movl	-64(%ebp), %eax
	movl	52(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L174
.LBB9:
	.loc 1 456 0
	movl	-64(%ebp), %eax
	movl	52(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 457 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L176
	.loc 1 458 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -20(%ebp)
.L176:
	.loc 1 459 0
	cmpl	$0, -40(%ebp)
	jne	.L178
	movl	-52(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L174
.L178:
	.loc 1 460 0
	movl	-64(%ebp), %eax
	movl	52(%eax), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	cached_make_edge@PLT
.L174:
.LBE9:
.LBE5:
	.loc 1 322 0
	movl	-64(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -64(%ebp)
.L113:
	movl	16(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L114
	.loc 1 464 0
	cmpl	$0, -60(%ebp)
	je	.L183
	.loc 1 465 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L183:
	.loc 1 466 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	make_edges, .-make_edges
	.section	.rodata
	.type	__FUNCTION__.12412, @object
	.size	__FUNCTION__.12412, 20
__FUNCTION__.12412:
	.string	"find_basic_blocks_1"
	.text
	.type	find_basic_blocks_1, @function
find_basic_blocks_1:
.LFB22:
	.loc 1 476 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	pushl	%ebx
.LCFI32:
	subl	$100, %esp
.LCFI33:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 478 0
	movl	$0, -48(%ebp)
	.loc 1 479 0
	movl	$0, -44(%ebp)
	.loc 1 480 0
	movl	$0, -40(%ebp)
	.loc 1 481 0
	movl	$0, -36(%ebp)
	.loc 1 482 0
	movl	$0, -32(%ebp)
	.loc 1 483 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -28(%ebp)
	.loc 1 491 0
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L186
.L187:
.LBB10:
	.loc 1 493 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 495 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 497 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L188
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L190
.L188:
	cmpl	$0, -36(%ebp)
	je	.L190
	.loc 1 500 0
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	create_basic_block_structure@PLT
	movl	%eax, -28(%ebp)
	.loc 1 501 0
	movl	$0, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 502 0
	movl	$0, -48(%ebp)
.L190:
	.loc 1 505 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	inside_basic_block_p
	testb	%al, %al
	je	.L192
	.loc 1 507 0
	cmpl	$0, -36(%ebp)
	jne	.L194
	.loc 1 508 0
	movl	-56(%ebp), %eax
	movl	%eax, -36(%ebp)
.L194:
	.loc 1 509 0
	movl	-56(%ebp), %eax
	movl	%eax, -32(%ebp)
.L192:
	.loc 1 512 0
	cmpl	$0, -36(%ebp)
	je	.L196
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	control_flow_insn_p@PLT
	testb	%al, %al
	je	.L196
	.loc 1 514 0
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	create_basic_block_structure@PLT
	movl	%eax, -28(%ebp)
	.loc 1 515 0
	movl	$0, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 516 0
	movl	$0, -48(%ebp)
.L196:
	.loc 1 519 0
	movl	-24(%ebp), %eax
	subl	$42, %eax
	movl	%eax, -72(%ebp)
	cmpl	$5, -72(%ebp)
	ja	.L199
	movl	$1, %eax
	movl	%eax, %edx
	movzbl	-72(%ebp), %ecx
	sall	%cl, %edx
	movl	%edx, -76(%ebp)
	movl	-76(%ebp), %eax
	andl	$27, %eax
	testl	%eax, %eax
	jne	.L207
	movl	-76(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L201
	movl	-76(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L202
	jmp	.L199
.L202:
.LBB11:
	.loc 1 523 0
	movl	-56(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 529 0
	cmpl	$-83, -20(%ebp)
	jne	.L207
	.loc 1 531 0
	cmpl	$0, -48(%ebp)
	jne	.L205
	.loc 1 532 0
	movl	-56(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L207
.L205:
	.loc 1 534 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	movl	%eax, -52(%ebp)
	.loc 1 536 0
	jmp	.L207
.L201:
.LBE11:
	.loc 1 546 0
	movl	-56(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$151, %ax
	jne	.L207
	.loc 1 549 0
	movl	-56(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_label_refs
	movl	%eax, -44(%ebp)
	.loc 1 550 0
	movl	-56(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_label_refs
	movl	%eax, -44(%ebp)
	.loc 1 551 0
	movl	-56(%ebp), %eax
	movl	44(%eax), %eax
	movl	20(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_label_refs
	movl	%eax, -44(%ebp)
	.loc 1 553 0
	movl	-56(%ebp), %eax
	movl	44(%eax), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L207
	.loc 1 554 0
	movl	-56(%ebp), %eax
	movl	44(%eax), %eax
	movl	28(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	alloc_EXPR_LIST@PLT
	movl	%eax, -40(%ebp)
	.loc 1 556 0
	jmp	.L207
.L199:
	.loc 1 559 0
	leal	__FUNCTION__.12412@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$559, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L207:
	.loc 1 562 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	je	.L211
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L213
.L211:
.LBB12:
	.loc 1 574 0
	movl	-56(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L214
.L215:
	.loc 1 575 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$13, %al
	jne	.L216
.LBB13:
	.loc 1 577 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 579 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L218
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L218
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L216
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L218
	jmp	.L216
.L218:
	.loc 1 584 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L216
	.loc 1 586 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L224
	movl	-56(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$13, 4(%esp)
	movl	%edx, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L224
	jmp	.L216
.L224:
	.loc 1 590 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	alloc_EXPR_LIST@PLT
	movl	%eax, -44(%ebp)
.L216:
.LBE13:
	.loc 1 574 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L214:
	cmpl	$0, -16(%ebp)
	jne	.L215
.L213:
.LBE12:
.LBE10:
	.loc 1 491 0
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
.L186:
	cmpl	$0, -56(%ebp)
	jne	.L187
	.loc 1 595 0
	cmpl	$0, -36(%ebp)
	je	.L228
	.loc 1 596 0
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	create_basic_block_structure@PLT
	jmp	.L230
.L228:
	.loc 1 597 0
	cmpl	$0, -48(%ebp)
	je	.L230
	.loc 1 598 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
.L230:
	.loc 1 600 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L232
	.loc 1 601 0
	leal	__FUNCTION__.12412@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$601, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L232:
	.loc 1 603 0
	movl	label_value_list@GOT(%ebx), %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 604 0
	movl	tail_recursion_label_list@GOT(%ebx), %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 605 0
	call	clear_aux_for_blocks@PLT
	.loc 1 606 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	find_basic_blocks_1, .-find_basic_blocks_1
	.section	.rodata
.LC1:
	.string	"basic_block_info"
	.text
.globl find_basic_blocks
	.type	find_basic_blocks, @function
find_basic_blocks:
.LFB23:
	.loc 1 618 0
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
	.loc 1 621 0
	movl	$3, (%esp)
	call	timevar_push@PLT
	.loc 1 624 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L236
	.loc 1 626 0
	call	clear_edges@PLT
	.loc 1 631 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L238
.L239:
	.loc 1 632 0
	movl	-8(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 631 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
.L238:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L239
	.loc 1 634 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L236
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	basic_block_info@GOT(%ebx), %eax
	movl	$0, (%eax)
.L236:
	.loc 1 637 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	count_basic_blocks
	movl	%eax, %edx
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 638 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 639 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%edx, 52(%eax)
	.loc 1 640 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, 48(%edx)
	.loc 1 650 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$18, 4(%esp)
	movl	%edx, (%esp)
	call	varray_init@PLT
	movl	%eax, %edx
	movl	basic_block_info@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 652 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_basic_blocks_1
	.loc 1 655 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %ecx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %edx
	movl	label_value_list@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	make_edges
	.loc 1 659 0
	call	tidy_fallthru_edges@PLT
	.loc 1 664 0
	movl	$3, (%esp)
	call	timevar_pop@PLT
	.loc 1 665 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	find_basic_blocks, .-find_basic_blocks
	.type	find_bb_boundaries, @function
find_bb_boundaries:
.LFB24:
	.loc 1 679 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$52, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 680 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 681 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 682 0
	movl	$0, -16(%ebp)
	.loc 1 683 0
	movl	$0, -12(%ebp)
	.loc 1 685 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L262
	.loc 1 688 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L246
	.loc 1 689 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L246:
.LBB14:
	.loc 1 694 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -8(%ebp)
	.loc 1 697 0
	cmpl	$46, -8(%ebp)
	jne	.L248
	.loc 1 699 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	split_block@PLT
	movl	%eax, -12(%ebp)
	.loc 1 700 0
	cmpl	$0, -16(%ebp)
	je	.L250
	.loc 1 701 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%edx)
.L250:
	.loc 1 703 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 704 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
	.loc 1 705 0
	movl	$0, -16(%ebp)
	.loc 1 706 0
	movl	-24(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leal	(%eax,%eax), %edx
	movl	-24(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L248
	.loc 1 707 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	make_edge@PLT
.L248:
	.loc 1 712 0
	cmpl	$0, -16(%ebp)
	je	.L253
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	inside_basic_block_p
	testb	%al, %al
	je	.L253
	.loc 1 714 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	split_block@PLT
	movl	%eax, -12(%ebp)
	.loc 1 715 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 716 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 717 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
	.loc 1 718 0
	movl	$0, -16(%ebp)
.L253:
	.loc 1 721 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	control_flow_insn_p@PLT
	testb	%al, %al
	je	.L256
	.loc 1 722 0
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
.L256:
	.loc 1 723 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	je	.L258
	.loc 1 725 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 726 0
	jmp	.L246
.L258:
.LBE14:
	.loc 1 731 0
	cmpl	$0, -16(%ebp)
	je	.L260
	.loc 1 732 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%edx)
.L260:
	.loc 1 737 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	purge_dead_edges@PLT
.L262:
	.loc 1 738 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	find_bb_boundaries, .-find_bb_boundaries
.globl __divdi3
	.type	compute_outgoing_frequencies, @function
compute_outgoing_frequencies:
.LFB25:
	.loc 1 746 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	pushl	%edi
.LCFI44:
	pushl	%esi
.LCFI45:
	pushl	%ebx
.LCFI46:
	subl	$76, %esp
.LCFI47:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 749 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L264
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L264
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L264
.LBB15:
	.loc 1 751 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -24(%ebp)
	.loc 1 754 0
	cmpl	$0, -24(%ebp)
	je	.L278
	.loc 1 757 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 760 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L270
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L272
.L270:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
.L272:
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 761 0
	movl	-32(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 762 0
	movl	8(%ebp), %eax
	movl	64(%eax), %esi
	movl	68(%eax), %edi
	movl	-20(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -60(%ebp)
	movl	-64(%ebp), %ecx
	imull	%edi, %ecx
	movl	-60(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -44(%ebp)
	addl	-44(%ebp), %ecx
	movl	-64(%ebp), %eax
	mull	%esi
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	addl	-60(%ebp), %ecx
	movl	%ecx, -60(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	addl	$5000, %eax
	adcl	$0, %edx
	movl	$10000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__divdi3@PLT
	movl	-32(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 764 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L273
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L275
.L273:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L275:
	movl	-36(%ebp), %edx
	movl	%edx, -28(%ebp)
	.loc 1 765 0
	movl	$10000, %eax
	movl	%eax, %edx
	subl	-20(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 766 0
	movl	8(%ebp), %eax
	movl	64(%eax), %esi
	movl	68(%eax), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-32(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	-56(%ebp), %esi
	movl	-52(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	-28(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
.L264:
.LBE15:
	.loc 1 769 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L278
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L278
	.loc 1 771 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 772 0
	movl	-32(%ebp), %eax
	movl	$10000, 28(%eax)
	.loc 1 773 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	-32(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
.L278:
	.loc 1 775 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE25:
	.size	compute_outgoing_frequencies, .-compute_outgoing_frequencies
.globl find_many_sub_basic_blocks
	.type	find_many_sub_basic_blocks, @function
find_many_sub_basic_blocks:
.LFB26:
	.loc 1 783 0
	pushl	%ebp
.LCFI48:
	movl	%esp, %ebp
.LCFI49:
	pushl	%edi
.LCFI50:
	pushl	%esi
.LCFI51:
	pushl	%ebx
.LCFI52:
	subl	$44, %esp
.LCFI53:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 786 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L280
.L281:
	.loc 1 787 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	8(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L313
	movl	%edi, %esi
	xorl	%edi, %edi
.L313:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L282
	movl	$2, -32(%ebp)
	jmp	.L284
.L282:
	movl	$1, -32(%ebp)
.L284:
	movl	-28(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 40(%eax)
	.loc 1 786 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
.L280:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L281
	.loc 1 790 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L286
.L287:
	.loc 1 791 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	$2, %eax
	jne	.L288
	.loc 1 792 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	find_bb_boundaries
.L288:
	.loc 1 790 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
.L286:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L287
	.loc 1 794 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L291
.L292:
	.loc 1 795 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	$1, %eax
	jne	.L293
	.loc 1 794 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
.L291:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L292
.L293:
	.loc 1 798 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 799 0
	jmp	.L295
.L296:
	.loc 1 800 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	$1, %eax
	je	.L297
	.loc 1 801 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
.L297:
	.loc 1 799 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
.L295:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L296
	.loc 1 805 0
	movl	$1, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	make_edges
	.loc 1 809 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L300
.L301:
.LBB16:
	.loc 1 813 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	$1, %eax
	je	.L302
	.loc 1 815 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	.L304
	.loc 1 817 0
	movl	-28(%ebp), %eax
	movl	$0, 64(%eax)
	movl	$0, 68(%eax)
	.loc 1 818 0
	movl	-28(%ebp), %eax
	movl	$0, 72(%eax)
	.loc 1 819 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L306
.L307:
	.loc 1 821 0
	movl	-28(%ebp), %eax
	movl	64(%eax), %esi
	movl	68(%eax), %edi
	movl	-16(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	-28(%ebp), %ecx
	movl	%eax, 64(%ecx)
	movl	%edx, 68(%ecx)
	.loc 1 822 0
	movl	-28(%ebp), %eax
	movl	72(%eax), %esi
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	imull	%edx, %eax
	leal	5000(%eax), %ecx
	movl	$1759218605, -36(%ebp)
	movl	-36(%ebp), %eax
	imull	%ecx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	leal	(%esi,%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 72(%eax)
	.loc 1 819 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L306:
	cmpl	$0, -16(%ebp)
	jne	.L307
.L304:
	.loc 1 826 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_outgoing_frequencies
.L302:
.LBE16:
	.loc 1 809 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
.L300:
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L301
	.loc 1 829 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L309
.L310:
	.loc 1 830 0
	movl	-28(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 829 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
.L309:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L310
	.loc 1 831 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE26:
	.size	find_many_sub_basic_blocks, .-find_many_sub_basic_blocks
.globl find_sub_basic_blocks
	.type	find_sub_basic_blocks, @function
find_sub_basic_blocks:
.LFB27:
	.loc 1 838 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	pushl	%edi
.LCFI56:
	pushl	%esi
.LCFI57:
	subl	$64, %esp
.LCFI58:
	.loc 1 840 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 842 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 843 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_bb_boundaries
	.loc 1 844 0
	movl	-16(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 848 0
	movl	$1, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	make_edges
	.loc 1 852 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L315
.L316:
.LBB17:
	.loc 1 856 0
	movl	-20(%ebp), %eax
	cmpl	-28(%ebp), %eax
	je	.L317
	.loc 1 858 0
	movl	-20(%ebp), %eax
	movl	$0, 64(%eax)
	movl	$0, 68(%eax)
	.loc 1 859 0
	movl	-20(%ebp), %eax
	movl	$0, 72(%eax)
	.loc 1 860 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L319
.L320:
	.loc 1 862 0
	movl	-20(%ebp), %eax
	movl	64(%eax), %esi
	movl	68(%eax), %edi
	movl	-12(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	-20(%ebp), %ecx
	movl	%eax, 64(%ecx)
	movl	%edx, 68(%ecx)
	.loc 1 863 0
	movl	-20(%ebp), %eax
	movl	72(%eax), %esi
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	-12(%ebp), %eax
	movl	28(%eax), %eax
	imull	%edx, %eax
	leal	5000(%eax), %ecx
	movl	$1759218605, -44(%ebp)
	movl	-44(%ebp), %eax
	imull	%ecx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	leal	(%esi,%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 72(%eax)
	.loc 1 860 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L319:
	cmpl	$0, -12(%ebp)
	jne	.L320
.L317:
	.loc 1 867 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_outgoing_frequencies
.LBE17:
	.loc 1 852 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
.L315:
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L316
	.loc 1 869 0
	addl	$64, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE27:
	.size	find_sub_basic_blocks, .-find_sub_basic_blocks
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
	.byte	0x4
	.long	.LCFI23-.LCFI21
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
	.long	.LCFI24-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI29-.LCFI25
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
	.byte	0x4
	.long	.LCFI41-.LCFI39
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
	.long	.LCFI42-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI47-.LCFI43
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI48-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI49-.LCFI48
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI53-.LCFI49
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
	.long	.LCFI54-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI58-.LCFI55
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE24:
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/machmode.h"
	.file 5 "../../../kgccfe/gnu/bitmap.h"
	.file 6 "../../../kgccfe/gnu/tree.h"
	.file 7 "../../../kgccfe/gnu/hashtable.h"
	.file 8 "../../../kgccfe/gnu/location.h"
	.file 9 "../../../kgccfe/gnu/function.h"
	.file 10 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 11 "../../../kgccfe/omp_types.h"
	.file 12 "../../../kgccfe/gnu/basic-block.h"
	.file 13 "../../../kgccfe/gnu/sbitmap.h"
	.file 14 "/usr/include/stdio.h"
	.file 15 "/usr/include/libio.h"
	.file 16 "/usr/include/bits/types.h"
	.file 17 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 18 "../../../kgccfe/gnu/varray.h"
	.file 19 "../../../kgccfe/gnu/regs.h"
	.file 20 "../../../kgccfe/gnu/flags.h"
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x7040
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/cfgbuild.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa8
	.uleb128 0x3
	.byte	0x4
	.long	0xae
	.uleb128 0x4
	.long	0x19e
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x8a
	.long	0x4c50
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
	.long	0x7f4
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
	.long	0x3be
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
	.long	0x3be
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
	.long	0x3be
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
	.long	0x3be
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
	.long	0x3be
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
	.long	0x3be
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
	.long	0x3be
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
	.long	0x3be
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
	.long	0x586f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1ab
	.uleb128 0x3
	.byte	0x4
	.long	0x1b1
	.uleb128 0x4
	.long	0x1e6
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x587f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1f2
	.uleb128 0x3
	.byte	0x4
	.long	0x1f8
	.uleb128 0x7
	.long	0x2d2
	.string	"tree_node"
	.byte	0x94
	.byte	0x2
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x6
	.value	0x855
	.long	0x2cb0
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x6
	.value	0x856
	.long	0x2fca
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x6
	.value	0x857
	.long	0x3012
	.uleb128 0x9
	.string	"vector"
	.byte	0x6
	.value	0x858
	.long	0x3135
	.uleb128 0x9
	.string	"string"
	.byte	0x6
	.value	0x859
	.long	0x3073
	.uleb128 0x9
	.string	"complex"
	.byte	0x6
	.value	0x85a
	.long	0x30e0
	.uleb128 0x9
	.string	"identifier"
	.byte	0x6
	.value	0x85b
	.long	0x31bb
	.uleb128 0x9
	.string	"decl"
	.byte	0x6
	.value	0x85c
	.long	0x4252
	.uleb128 0x9
	.string	"type"
	.byte	0x6
	.value	0x85d
	.long	0x3420
	.uleb128 0x9
	.string	"list"
	.byte	0x6
	.value	0x85e
	.long	0x31f2
	.uleb128 0x9
	.string	"vec"
	.byte	0x6
	.value	0x85f
	.long	0x3239
	.uleb128 0x9
	.string	"exp"
	.byte	0x6
	.value	0x860
	.long	0x328a
	.uleb128 0x9
	.string	"block"
	.byte	0x6
	.value	0x861
	.long	0x32d6
	.uleb128 0x9
	.string	"omp"
	.byte	0x6
	.value	0x863
	.long	0x4bf2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d8
	.uleb128 0xa
	.long	0x2dd
	.uleb128 0xb
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.long	0x3be
	.string	"mips_args"
	.byte	0x40
	.byte	0xa
	.value	0xaaa
	.uleb128 0xd
	.string	"gp_reg_found"
	.byte	0xa
	.value	0xaad
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"arg_number"
	.byte	0xa
	.value	0xab0
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"num_gprs"
	.byte	0xa
	.value	0xab5
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"num_fprs"
	.byte	0xa
	.value	0xab8
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stack_words"
	.byte	0xa
	.value	0xabb
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"fp_code"
	.byte	0xa
	.value	0xac8
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"prototype"
	.byte	0xa
	.value	0xacb
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"num_adjusts"
	.byte	0xa
	.value	0xad3
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"adjust"
	.byte	0xa
	.value	0xad4
	.long	0x3c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xe
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	0x3d5
	.long	0x9d
	.uleb128 0x10
	.long	0x3d5
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.string	"CUMULATIVE_ARGS"
	.byte	0xa
	.value	0xad5
	.long	0x2ec
	.uleb128 0x2
	.string	"size_t"
	.byte	0x11
	.byte	0xd6
	.long	0x3be
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
	.long	0x45a
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x10
	.byte	0x90
	.long	0x4a4
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x10
	.byte	0x91
	.long	0x485
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2dd
	.uleb128 0x2
	.string	"FILE"
	.byte	0xe
	.byte	0x2e
	.long	0x4d5
	.uleb128 0x13
	.long	0x750
	.long	.LASF2
	.byte	0x94
	.byte	0xe
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0xf
	.value	0x10c
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0xf
	.value	0x111
	.long	0x4c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0xf
	.value	0x112
	.long	0x4c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0xf
	.value	0x113
	.long	0x4c3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0xf
	.value	0x114
	.long	0x4c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0xf
	.value	0x115
	.long	0x4c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0xf
	.value	0x116
	.long	0x4c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0xf
	.value	0x117
	.long	0x4c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0xf
	.value	0x118
	.long	0x4c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0xf
	.value	0x11a
	.long	0x4c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0xf
	.value	0x11b
	.long	0x4c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0xf
	.value	0x11c
	.long	0x4c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0xf
	.value	0x11e
	.long	0x7b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0xf
	.value	0x120
	.long	0x7b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0xf
	.value	0x122
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0xf
	.value	0x126
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0xf
	.value	0x128
	.long	0x495
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0xf
	.value	0x12c
	.long	0x413
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0xf
	.value	0x12d
	.long	0x43e
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0xf
	.value	0x12e
	.long	0x7be
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0xf
	.value	0x132
	.long	0x7ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0xf
	.value	0x13b
	.long	0x4b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0xf
	.value	0x144
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0xf
	.value	0x145
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0xf
	.value	0x146
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0xf
	.value	0x147
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0xf
	.value	0x148
	.long	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0xf
	.value	0x14a
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0xf
	.value	0x14c
	.long	0x7d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x756
	.uleb128 0xa
	.long	0x402
	.uleb128 0x3
	.byte	0x4
	.long	0x402
	.uleb128 0x14
	.string	"_IO_lock_t"
	.byte	0xf
	.byte	0xb0
	.uleb128 0x4
	.long	0x7b2
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xf
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0xf
	.byte	0xb7
	.long	0x7b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0xf
	.byte	0xb8
	.long	0x7b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0xf
	.byte	0xbc
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x76f
	.uleb128 0x3
	.byte	0x4
	.long	0x4d5
	.uleb128 0xf
	.long	0x7ce
	.long	0x2dd
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x761
	.uleb128 0xf
	.long	0x7e4
	.long	0x2dd
	.uleb128 0x10
	.long	0x3d5
	.byte	0x27
	.byte	0x0
	.uleb128 0xf
	.long	0x7f4
	.long	0x2dd
	.uleb128 0x10
	.long	0x3d5
	.byte	0x13
	.byte	0x0
	.uleb128 0x15
	.long	0xa3d
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.uleb128 0x16
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x16
	.string	"BImode"
	.sleb128 1
	.uleb128 0x16
	.string	"QImode"
	.sleb128 2
	.uleb128 0x16
	.string	"HImode"
	.sleb128 3
	.uleb128 0x16
	.string	"SImode"
	.sleb128 4
	.uleb128 0x16
	.string	"DImode"
	.sleb128 5
	.uleb128 0x16
	.string	"TImode"
	.sleb128 6
	.uleb128 0x16
	.string	"OImode"
	.sleb128 7
	.uleb128 0x16
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x16
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x16
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x16
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x16
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x16
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x16
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x16
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x16
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x16
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x16
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x16
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x16
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x16
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x16
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x16
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x16
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x16
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x16
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x16
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x16
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x16
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x16
	.string	"COImode"
	.sleb128 30
	.uleb128 0x16
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x16
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x16
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x16
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x16
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x16
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x16
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x16
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x16
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x16
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x16
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x16
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x16
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x16
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x16
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x16
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x16
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x16
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x16
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x16
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x16
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x16
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x16
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x16
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x4
	.long	0xa6f
	.string	"location_s"
	.byte	0x8
	.byte	0x8
	.byte	0x1c
	.uleb128 0x6
	.string	"file"
	.byte	0x8
	.byte	0x1e
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line"
	.byte	0x8
	.byte	0x21
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x8
	.byte	0x23
	.long	0xa3d
	.uleb128 0x15
	.long	0x13a3
	.string	"tree_code"
	.byte	0x4
	.byte	0x6
	.byte	0x27
	.uleb128 0x16
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x16
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x16
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x16
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x16
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x16
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x16
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x16
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x16
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x16
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x16
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x16
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x16
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x16
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x16
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x16
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x16
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x16
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x16
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x16
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x16
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x16
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x16
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x16
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x16
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x16
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x16
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x16
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x16
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x16
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x16
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x16
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x16
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x16
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x16
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x16
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x16
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x16
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x16
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x16
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x16
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x16
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x16
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x16
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x16
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x16
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x16
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x16
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x16
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x16
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x16
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x16
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x16
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x16
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x16
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x16
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x16
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x16
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x16
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x16
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x16
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x16
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x16
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x16
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x16
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x16
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x16
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x16
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x16
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x16
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x16
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x16
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x16
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x16
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x16
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x16
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x16
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x16
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x16
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x16
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x16
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x16
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x16
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x16
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x16
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x16
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x16
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x16
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x16
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x16
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x16
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x16
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x16
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x16
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x16
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x16
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x16
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x16
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x16
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x16
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x16
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x16
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x16
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x16
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x16
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x16
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x16
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x16
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x16
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x16
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x16
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x16
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x16
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x16
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x16
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x16
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x16
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x16
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x16
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x16
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x16
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x16
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x16
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x16
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x16
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x16
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x16
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x16
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x16
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x16
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x16
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x16
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x16
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x16
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x16
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x16
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x16
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x16
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x16
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x16
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x16
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x16
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x16
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x16
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x16
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x16
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x16
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x16
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x16
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x16
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x16
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x16
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x6
	.byte	0x31
	.long	0x3be
	.uleb128 0x4
	.long	0x13f3
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x6
	.byte	0x32
	.uleb128 0x6
	.string	"block"
	.byte	0x6
	.byte	0x32
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset"
	.byte	0x6
	.byte	0x32
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x6
	.byte	0x36
	.long	0x13fd
	.uleb128 0x17
	.string	"st"
	.byte	0x1
	.uleb128 0x18
	.long	0x1452
	.long	.LASF3
	.byte	0x4
	.byte	0x6
	.byte	0x5a
	.uleb128 0x16
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x16
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x16
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x16
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x15
	.long	0x2cb0
	.string	"built_in_function"
	.byte	0x4
	.byte	0x6
	.byte	0x69
	.uleb128 0x16
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x16
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x16
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x16
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x16
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x16
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x16
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x16
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x16
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x16
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x16
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x16
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x16
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x16
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x16
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x16
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x16
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x16
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x16
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x16
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x16
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x16
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x16
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x16
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x16
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x16
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x16
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x16
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x16
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x16
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x16
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x16
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x16
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x16
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x16
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x16
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x16
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x16
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x16
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x16
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x16
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x16
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x16
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x16
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x16
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x16
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x16
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x16
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x16
	.string	"BUILT_IN_FLOOR"
	.sleb128 48
	.uleb128 0x16
	.string	"BUILT_IN_FLOORF"
	.sleb128 49
	.uleb128 0x16
	.string	"BUILT_IN_FLOORL"
	.sleb128 50
	.uleb128 0x16
	.string	"BUILT_IN_POW"
	.sleb128 51
	.uleb128 0x16
	.string	"BUILT_IN_TAN"
	.sleb128 52
	.uleb128 0x16
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 53
	.uleb128 0x16
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 54
	.uleb128 0x16
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 55
	.uleb128 0x16
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 56
	.uleb128 0x16
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 57
	.uleb128 0x16
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 58
	.uleb128 0x16
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 59
	.uleb128 0x16
	.string	"BUILD_IN_C3_MAC"
	.sleb128 60
	.uleb128 0x16
	.string	"BUILD_IN_C3_MACN"
	.sleb128 61
	.uleb128 0x16
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 62
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 63
	.uleb128 0x16
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 64
	.uleb128 0x16
	.string	"BUILD_IN_C3_MULA"
	.sleb128 65
	.uleb128 0x16
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 66
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 67
	.uleb128 0x16
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 68
	.uleb128 0x16
	.string	"BUILD_IN_C3_MACD"
	.sleb128 69
	.uleb128 0x16
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 70
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 71
	.uleb128 0x16
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 72
	.uleb128 0x16
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 73
	.uleb128 0x16
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 74
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 75
	.uleb128 0x16
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 76
	.uleb128 0x16
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 77
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 78
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 79
	.uleb128 0x16
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 80
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 81
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 82
	.uleb128 0x16
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 83
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 84
	.uleb128 0x16
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 85
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 86
	.uleb128 0x16
	.string	"BUILD_IN_C3_PTR"
	.sleb128 87
	.uleb128 0x16
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 88
	.uleb128 0x16
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 89
	.uleb128 0x16
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 90
	.uleb128 0x16
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 91
	.uleb128 0x16
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 92
	.uleb128 0x16
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 93
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 94
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 95
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 96
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 97
	.uleb128 0x16
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 98
	.uleb128 0x16
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 99
	.uleb128 0x16
	.string	"BUILD_IN_C3_DADD"
	.sleb128 100
	.uleb128 0x16
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 101
	.uleb128 0x16
	.string	"BUILD_IN_C3_FFT"
	.sleb128 102
	.uleb128 0x16
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 103
	.uleb128 0x16
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 104
	.uleb128 0x16
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 105
	.uleb128 0x16
	.string	"BUILD_IN_EXTRACT"
	.sleb128 106
	.uleb128 0x16
	.string	"BUILD_IN_C3_BITR"
	.sleb128 107
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 108
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 109
	.uleb128 0x16
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 110
	.uleb128 0x16
	.string	"BUILD_IN_C3_STORE"
	.sleb128 111
	.uleb128 0x16
	.string	"BUILD_IN_C3_REVB"
	.sleb128 112
	.uleb128 0x16
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 113
	.uleb128 0x16
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 114
	.uleb128 0x16
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 115
	.uleb128 0x16
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 116
	.uleb128 0x16
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 117
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 118
	.uleb128 0x16
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 119
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 120
	.uleb128 0x16
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 121
	.uleb128 0x16
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 122
	.uleb128 0x16
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 123
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 124
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 125
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 126
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 127
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 128
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 129
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 130
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 131
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 132
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 133
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 134
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 135
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 136
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 137
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 138
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 139
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 140
	.uleb128 0x16
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 141
	.uleb128 0x16
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 142
	.uleb128 0x16
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 143
	.uleb128 0x16
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 144
	.uleb128 0x16
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 145
	.uleb128 0x16
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 146
	.uleb128 0x16
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 147
	.uleb128 0x16
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 148
	.uleb128 0x16
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 149
	.uleb128 0x16
	.string	"BUILT_IN_C2_VRND"
	.sleb128 150
	.uleb128 0x16
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 151
	.uleb128 0x16
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 152
	.uleb128 0x16
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 153
	.uleb128 0x16
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 154
	.uleb128 0x16
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 155
	.uleb128 0x16
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 156
	.uleb128 0x16
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 157
	.uleb128 0x16
	.string	"BUILT_IN_C2_SAD"
	.sleb128 158
	.uleb128 0x16
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 159
	.uleb128 0x16
	.string	"BUILT_IN_C2_SATD"
	.sleb128 160
	.uleb128 0x16
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 161
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 162
	.uleb128 0x16
	.string	"BUILT_IN_C2_BCST"
	.sleb128 163
	.uleb128 0x16
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 164
	.uleb128 0x16
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 165
	.uleb128 0x16
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 166
	.uleb128 0x16
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 167
	.uleb128 0x16
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 168
	.uleb128 0x16
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 169
	.uleb128 0x16
	.string	"BUILT_IN_C2_MULS"
	.sleb128 170
	.uleb128 0x16
	.string	"BUILT_IN_C2_MADS"
	.sleb128 171
	.uleb128 0x16
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 172
	.uleb128 0x16
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 173
	.uleb128 0x16
	.string	"BUILT_IN_C2_MOV"
	.sleb128 174
	.uleb128 0x16
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 175
	.uleb128 0x16
	.string	"BUILT_IN_C2_CLP"
	.sleb128 176
	.uleb128 0x16
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 177
	.uleb128 0x16
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 178
	.uleb128 0x16
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 179
	.uleb128 0x16
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 180
	.uleb128 0x16
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 181
	.uleb128 0x16
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 182
	.uleb128 0x16
	.string	"BUILT_IN_C2_BOP"
	.sleb128 183
	.uleb128 0x16
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 184
	.uleb128 0x16
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 185
	.uleb128 0x16
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 186
	.uleb128 0x16
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 187
	.uleb128 0x16
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 188
	.uleb128 0x16
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 189
	.uleb128 0x16
	.string	"BUILT_IN_C2_MED"
	.sleb128 190
	.uleb128 0x16
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 191
	.uleb128 0x16
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 192
	.uleb128 0x16
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 193
	.uleb128 0x16
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 194
	.uleb128 0x16
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 195
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 196
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 197
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 198
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 199
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 200
	.uleb128 0x16
	.string	"BUILT_IN_C2_FORK"
	.sleb128 201
	.uleb128 0x16
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 202
	.uleb128 0x16
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 203
	.uleb128 0x16
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 204
	.uleb128 0x16
	.string	"BUILT_IN_SQRT"
	.sleb128 205
	.uleb128 0x16
	.string	"BUILT_IN_SIN"
	.sleb128 206
	.uleb128 0x16
	.string	"BUILT_IN_COS"
	.sleb128 207
	.uleb128 0x16
	.string	"BUILT_IN_EXP"
	.sleb128 208
	.uleb128 0x16
	.string	"BUILT_IN_LOG"
	.sleb128 209
	.uleb128 0x16
	.string	"BUILT_IN_SQRTF"
	.sleb128 210
	.uleb128 0x16
	.string	"BUILT_IN_SINF"
	.sleb128 211
	.uleb128 0x16
	.string	"BUILT_IN_COSF"
	.sleb128 212
	.uleb128 0x16
	.string	"BUILT_IN_EXPF"
	.sleb128 213
	.uleb128 0x16
	.string	"BUILT_IN_LOGF"
	.sleb128 214
	.uleb128 0x16
	.string	"BUILT_IN_SQRTL"
	.sleb128 215
	.uleb128 0x16
	.string	"BUILT_IN_SINL"
	.sleb128 216
	.uleb128 0x16
	.string	"BUILT_IN_COSL"
	.sleb128 217
	.uleb128 0x16
	.string	"BUILT_IN_EXPL"
	.sleb128 218
	.uleb128 0x16
	.string	"BUILT_IN_LOGL"
	.sleb128 219
	.uleb128 0x16
	.string	"BUILT_IN_INF"
	.sleb128 220
	.uleb128 0x16
	.string	"BUILT_IN_INFF"
	.sleb128 221
	.uleb128 0x16
	.string	"BUILT_IN_INFL"
	.sleb128 222
	.uleb128 0x16
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 223
	.uleb128 0x16
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 224
	.uleb128 0x16
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 225
	.uleb128 0x16
	.string	"BUILT_IN_NAN"
	.sleb128 226
	.uleb128 0x16
	.string	"BUILT_IN_NANF"
	.sleb128 227
	.uleb128 0x16
	.string	"BUILT_IN_NANL"
	.sleb128 228
	.uleb128 0x16
	.string	"BUILT_IN_NANS"
	.sleb128 229
	.uleb128 0x16
	.string	"BUILT_IN_NANSF"
	.sleb128 230
	.uleb128 0x16
	.string	"BUILT_IN_NANSL"
	.sleb128 231
	.uleb128 0x16
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 232
	.uleb128 0x16
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 233
	.uleb128 0x16
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 234
	.uleb128 0x16
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 235
	.uleb128 0x16
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 236
	.uleb128 0x16
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 237
	.uleb128 0x16
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 238
	.uleb128 0x16
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 239
	.uleb128 0x16
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 240
	.uleb128 0x16
	.string	"BUILT_IN_APPLY"
	.sleb128 241
	.uleb128 0x16
	.string	"BUILT_IN_RETURN"
	.sleb128 242
	.uleb128 0x16
	.string	"BUILT_IN_SETJMP"
	.sleb128 243
	.uleb128 0x16
	.string	"BUILT_IN_LONGJMP"
	.sleb128 244
	.uleb128 0x16
	.string	"BUILT_IN_TRAP"
	.sleb128 245
	.uleb128 0x16
	.string	"BUILT_IN_PREFETCH"
	.sleb128 246
	.uleb128 0x16
	.string	"BUILT_IN_PRINTF"
	.sleb128 247
	.uleb128 0x16
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 248
	.uleb128 0x16
	.string	"BUILT_IN_PUTS"
	.sleb128 249
	.uleb128 0x16
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 250
	.uleb128 0x16
	.string	"BUILT_IN_SPRINTF"
	.sleb128 251
	.uleb128 0x16
	.string	"BUILT_IN_SCANF"
	.sleb128 252
	.uleb128 0x16
	.string	"BUILT_IN_SSCANF"
	.sleb128 253
	.uleb128 0x16
	.string	"BUILT_IN_VPRINTF"
	.sleb128 254
	.uleb128 0x16
	.string	"BUILT_IN_VSCANF"
	.sleb128 255
	.uleb128 0x16
	.string	"BUILT_IN_VSSCANF"
	.sleb128 256
	.uleb128 0x16
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 257
	.uleb128 0x16
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 258
	.uleb128 0x16
	.string	"BUILT_IN_FPUTC"
	.sleb128 259
	.uleb128 0x16
	.string	"BUILT_IN_FPUTS"
	.sleb128 260
	.uleb128 0x16
	.string	"BUILT_IN_FWRITE"
	.sleb128 261
	.uleb128 0x16
	.string	"BUILT_IN_FPRINTF"
	.sleb128 262
	.uleb128 0x16
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 263
	.uleb128 0x16
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 264
	.uleb128 0x16
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 265
	.uleb128 0x16
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 266
	.uleb128 0x16
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 267
	.uleb128 0x16
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 268
	.uleb128 0x16
	.string	"BUILT_IN_ISGREATER"
	.sleb128 269
	.uleb128 0x16
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 270
	.uleb128 0x16
	.string	"BUILT_IN_ISLESS"
	.sleb128 271
	.uleb128 0x16
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 272
	.uleb128 0x16
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 273
	.uleb128 0x16
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 274
	.uleb128 0x16
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 275
	.uleb128 0x16
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 276
	.uleb128 0x16
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 277
	.uleb128 0x16
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 278
	.uleb128 0x16
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 279
	.uleb128 0x16
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 280
	.uleb128 0x16
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 281
	.uleb128 0x16
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 282
	.uleb128 0x16
	.string	"BUILT_IN_VA_START"
	.sleb128 283
	.uleb128 0x16
	.string	"BUILT_IN_STDARG_START"
	.sleb128 284
	.uleb128 0x16
	.string	"BUILT_IN_VA_END"
	.sleb128 285
	.uleb128 0x16
	.string	"BUILT_IN_VA_COPY"
	.sleb128 286
	.uleb128 0x16
	.string	"BUILT_IN_EXPECT"
	.sleb128 287
	.uleb128 0x16
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 288
	.uleb128 0x16
	.string	"BUILT_IN_NEW"
	.sleb128 289
	.uleb128 0x16
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 290
	.uleb128 0x16
	.string	"BUILT_IN_DELETE"
	.sleb128 291
	.uleb128 0x16
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 292
	.uleb128 0x16
	.string	"BUILT_IN_ABORT"
	.sleb128 293
	.uleb128 0x16
	.string	"BUILT_IN_EXIT"
	.sleb128 294
	.uleb128 0x16
	.string	"BUILT_IN__EXIT"
	.sleb128 295
	.uleb128 0x16
	.string	"BUILT_IN__EXIT2"
	.sleb128 296
	.uleb128 0x16
	.string	"END_BUILTINS"
	.sleb128 297
	.byte	0x0
	.uleb128 0x4
	.long	0x2f8e
	.string	"tree_common"
	.byte	0x10
	.byte	0x6
	.byte	0x8e
	.uleb128 0x6
	.string	"chain"
	.byte	0x6
	.byte	0x8f
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type"
	.byte	0x6
	.byte	0x90
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x6
	.byte	0x92
	.long	0xa81
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"side_effects_flag"
	.byte	0x6
	.byte	0x94
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"constant_flag"
	.byte	0x6
	.byte	0x95
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"addressable_flag"
	.byte	0x6
	.byte	0x96
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"volatile_flag"
	.byte	0x6
	.byte	0x97
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"readonly_flag"
	.byte	0x6
	.byte	0x98
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unsigned_flag"
	.byte	0x6
	.byte	0x99
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"asm_written_flag"
	.byte	0x6
	.byte	0x9a
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unused_0"
	.byte	0x6
	.byte	0x9b
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"used_flag"
	.byte	0x6
	.byte	0x9d
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"nothrow_flag"
	.byte	0x6
	.byte	0x9e
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"static_flag"
	.byte	0x6
	.byte	0x9f
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"public_flag"
	.byte	0x6
	.byte	0xa0
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"private_flag"
	.byte	0x6
	.byte	0xa1
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"protected_flag"
	.byte	0x6
	.byte	0xa2
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"bounded_flag"
	.byte	0x6
	.byte	0xa3
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"deprecated_flag"
	.byte	0x6
	.byte	0xa4
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.long	.LASF4
	.byte	0x6
	.byte	0xa6
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.long	.LASF5
	.byte	0x6
	.byte	0xa7
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.long	.LASF6
	.byte	0x6
	.byte	0xa8
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.long	.LASF7
	.byte	0x6
	.byte	0xa9
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.long	.LASF8
	.byte	0x6
	.byte	0xaa
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.long	.LASF9
	.byte	0x6
	.byte	0xab
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.long	.LASF10
	.byte	0x6
	.byte	0xac
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unused_1"
	.byte	0x6
	.byte	0xad
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"sbuf"
	.byte	0x6
	.byte	0xaf
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"sdram"
	.byte	0x6
	.byte	0xb0
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v1buf"
	.byte	0x6
	.byte	0xb1
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v2buf"
	.byte	0x6
	.byte	0xb2
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v4buf"
	.byte	0x6
	.byte	0xb3
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x2fca
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x6
	.value	0x2f6
	.uleb128 0xd
	.string	"low"
	.byte	0x6
	.value	0x2f7
	.long	0x46b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"high"
	.byte	0x6
	.value	0x2f8
	.long	0x45a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x3012
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x6
	.value	0x2ef
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x2f0
	.long	0x2cb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x2f1
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"int_cst"
	.byte	0x6
	.value	0x2f9
	.long	0x2f8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x3060
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x6
	.value	0x30b
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x30c
	.long	0x2cb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x30d
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real_cst_ptr"
	.byte	0x6
	.value	0x30e
	.long	0x306d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x17
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3060
	.uleb128 0xc
	.long	0x30da
	.string	"tree_string"
	.byte	0x20
	.byte	0x6
	.value	0x31f
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x320
	.long	0x2cb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x321
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"length"
	.byte	0x6
	.value	0x322
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"pointer"
	.byte	0x6
	.value	0x323
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"st"
	.byte	0x6
	.value	0x325
	.long	0x30da
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x13f3
	.uleb128 0xc
	.long	0x3135
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x6
	.value	0x32e
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x32f
	.long	0x2cb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x330
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real"
	.byte	0x6
	.value	0x331
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"imag"
	.byte	0x6
	.value	0x332
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xc
	.long	0x317d
	.string	"tree_vector"
	.byte	0x18
	.byte	0x6
	.value	0x340
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x341
	.long	0x2cb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x342
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"elements"
	.byte	0x6
	.value	0x343
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x13
	.long	0x31bb
	.long	.LASF11
	.byte	0xc
	.byte	0x7
	.byte	0x19
	.uleb128 0x6
	.string	"str"
	.byte	0x7
	.byte	0x1c
	.long	0x750
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0x7
	.byte	0x1d
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"hash_value"
	.byte	0x7
	.byte	0x1e
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x31f2
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x6
	.value	0x35f
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x360
	.long	0x2cb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"id"
	.byte	0x6
	.value	0x361
	.long	0x317d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x3239
	.string	"tree_list"
	.byte	0x18
	.byte	0x6
	.value	0x369
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x36a
	.long	0x2cb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"purpose"
	.byte	0x6
	.value	0x36b
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"value"
	.byte	0x6
	.value	0x36c
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x327a
	.string	"tree_vec"
	.byte	0x18
	.byte	0x6
	.value	0x377
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x378
	.long	0x2cb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"length"
	.byte	0x6
	.value	0x379
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"a"
	.byte	0x6
	.value	0x37a
	.long	0x327a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x328a
	.long	0x1e6
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x32d6
	.string	"tree_exp"
	.byte	0x18
	.byte	0x6
	.value	0x3bd
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x3be
	.long	0x2cb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"complexity"
	.byte	0x6
	.value	0x3bf
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"operands"
	.byte	0x6
	.value	0x3c2
	.long	0x327a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x33c6
	.string	"tree_block"
	.byte	0x2c
	.byte	0x6
	.value	0x3f3
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x3f4
	.long	0x2cb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"handler_block_flag"
	.byte	0x6
	.value	0x3f6
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF12
	.byte	0x6
	.value	0x3f7
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.string	"block_num"
	.byte	0x6
	.value	0x3f8
	.long	0x3be
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"vars"
	.byte	0x6
	.value	0x3fa
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"subblocks"
	.byte	0x6
	.value	0x3fb
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"supercontext"
	.byte	0x6
	.value	0x3fc
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1a
	.long	.LASF13
	.byte	0x6
	.value	0x3fd
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"fragment_origin"
	.byte	0x6
	.value	0x3fe
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"fragment_chain"
	.byte	0x6
	.value	0x3ff
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x1d
	.long	0x340d
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x6
	.value	0x562
	.uleb128 0x9
	.string	"address"
	.byte	0x6
	.value	0x563
	.long	0x2e5
	.uleb128 0x9
	.string	"pointer"
	.byte	0x6
	.value	0x564
	.long	0x4c3
	.uleb128 0x9
	.string	"die"
	.byte	0x6
	.value	0x565
	.long	0x341a
	.byte	0x0
	.uleb128 0x17
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x340d
	.uleb128 0xc
	.long	0x3773
	.string	"tree_type"
	.byte	0x74
	.byte	0x6
	.value	0x53f
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x540
	.long	0x2cb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"values"
	.byte	0x6
	.value	0x541
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"size"
	.byte	0x6
	.value	0x542
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1a
	.long	.LASF14
	.byte	0x6
	.value	0x543
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1a
	.long	.LASF15
	.byte	0x6
	.value	0x544
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"uid"
	.byte	0x6
	.value	0x545
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"precision"
	.byte	0x6
	.value	0x547
	.long	0x3be
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"mode"
	.byte	0x6
	.value	0x548
	.long	0x7f4
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"string_flag"
	.byte	0x6
	.value	0x54a
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"no_force_blk_flag"
	.byte	0x6
	.value	0x54b
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"needs_constructing_flag"
	.byte	0x6
	.value	0x54c
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"transparent_union_flag"
	.byte	0x6
	.value	0x54d
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"packed_flag"
	.byte	0x6
	.value	0x54e
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"restrict_flag"
	.byte	0x6
	.value	0x54f
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF16
	.byte	0x6
	.value	0x550
	.long	0x3be
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF4
	.byte	0x6
	.value	0x552
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x6
	.value	0x553
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x6
	.value	0x554
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF7
	.byte	0x6
	.value	0x555
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF8
	.byte	0x6
	.value	0x556
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF9
	.byte	0x6
	.value	0x557
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF10
	.byte	0x6
	.value	0x558
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF17
	.byte	0x6
	.value	0x559
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"defer_expansion"
	.byte	0x6
	.value	0x55c
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"align"
	.byte	0x6
	.value	0x55f
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"pointer_to"
	.byte	0x6
	.value	0x560
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"reference_to"
	.byte	0x6
	.value	0x561
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"symtab"
	.byte	0x6
	.value	0x566
	.long	0x33c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"name"
	.byte	0x6
	.value	0x568
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"minval"
	.byte	0x6
	.value	0x569
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"maxval"
	.byte	0x6
	.value	0x56a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"next_variant"
	.byte	0x6
	.value	0x56b
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"main_variant"
	.byte	0x6
	.value	0x56c
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"binfo"
	.byte	0x6
	.value	0x56d
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"context"
	.byte	0x6
	.value	0x56e
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"alias_set"
	.byte	0x6
	.value	0x56f
	.long	0x45a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1a
	.long	.LASF18
	.byte	0x6
	.value	0x571
	.long	0x377f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"ty_idx"
	.byte	0x6
	.value	0x573
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"field_ids_used"
	.byte	0x6
	.value	0x574
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"dst_id"
	.byte	0x6
	.value	0x575
	.long	0x13b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x17
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3773
	.uleb128 0xc
	.long	0x37ca
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x6
	.value	0x7f0
	.uleb128 0x1b
	.string	"align"
	.byte	0x6
	.value	0x7f1
	.long	0x3be
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"off_align"
	.byte	0x6
	.value	0x7f2
	.long	0x3be
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x37ff
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x6
	.value	0x7e7
	.uleb128 0x9
	.string	"f"
	.byte	0x6
	.value	0x7ea
	.long	0x1452
	.uleb128 0x9
	.string	"i"
	.byte	0x6
	.value	0x7ed
	.long	0x45a
	.uleb128 0x9
	.string	"a"
	.byte	0x6
	.value	0x7f3
	.long	0x3785
	.byte	0x0
	.uleb128 0x1d
	.long	0x383e
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x6
	.value	0x808
	.uleb128 0x9
	.string	"f"
	.byte	0x6
	.value	0x809
	.long	0x41fe
	.uleb128 0x9
	.string	"r"
	.byte	0x6
	.value	0x80a
	.long	0x9d
	.uleb128 0x9
	.string	"t"
	.byte	0x6
	.value	0x80b
	.long	0x1e6
	.uleb128 0x9
	.string	"i"
	.byte	0x6
	.value	0x80c
	.long	0x2e5
	.byte	0x0
	.uleb128 0x1e
	.long	0x41fe
	.string	"function"
	.value	0x134
	.byte	0x6
	.value	0x79d
	.uleb128 0x6
	.string	"eh"
	.byte	0x9
	.byte	0xb5
	.long	0x6607
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0x9
	.byte	0xb6
	.long	0x661b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0x9
	.byte	0xb7
	.long	0x6621
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0x9
	.byte	0xb8
	.long	0x6627
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0x9
	.byte	0xb9
	.long	0x663d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"name"
	.byte	0x9
	.byte	0xbe
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"decl"
	.byte	0x9
	.byte	0xc1
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0x9
	.byte	0xc4
	.long	0x41fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0x9
	.byte	0xc9
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"args_size"
	.byte	0x9
	.byte	0xce
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0x9
	.byte	0xd3
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0x9
	.byte	0xd7
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0x9
	.byte	0xdb
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0x9
	.byte	0xdf
	.long	0x3dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0x9
	.byte	0xe5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0x9
	.byte	0xe8
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0x9
	.byte	0xec
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0x9
	.byte	0xf0
	.long	0x665a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0x9
	.byte	0xf3
	.long	0x2e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0x9
	.byte	0xf8
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x9
	.byte	0xfe
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x9
	.value	0x102
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x9
	.value	0x107
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"x_cleanup_label"
	.byte	0x9
	.value	0x10d
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.string	"x_return_label"
	.byte	0x9
	.value	0x112
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.string	"computed_goto_common_label"
	.byte	0x9
	.value	0x115
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"computed_goto_common_reg"
	.byte	0x9
	.value	0x116
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"x_save_expr_regs"
	.byte	0x9
	.value	0x11a
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"x_stack_slot_list"
	.byte	0x9
	.value	0x11e
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.string	"x_rtl_expr_chain"
	.byte	0x9
	.value	0x121
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"x_tail_recursion_label"
	.byte	0x9
	.value	0x125
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.string	"x_tail_recursion_reentry"
	.byte	0x9
	.value	0x128
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.string	"x_arg_pointer_save_area"
	.byte	0x9
	.value	0x12e
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"x_clobber_return_insn"
	.byte	0x9
	.value	0x133
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"x_frame_offset"
	.byte	0x9
	.value	0x138
	.long	0x45a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"x_context_display"
	.byte	0x9
	.value	0x13d
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"x_trampoline_list"
	.byte	0x9
	.value	0x146
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"x_parm_birth_insn"
	.byte	0x9
	.value	0x149
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"x_last_parm_insn"
	.byte	0x9
	.value	0x14d
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"x_max_parm_reg"
	.byte	0x9
	.value	0x151
	.long	0x3be
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"x_parm_reg_stack_loc"
	.byte	0x9
	.value	0x157
	.long	0x588f
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0x9
	.value	0x15a
	.long	0x666c
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"x_temp_slot_level"
	.byte	0x9
	.value	0x15d
	.long	0x2e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"x_var_temp_slot_level"
	.byte	0x9
	.value	0x160
	.long	0x2e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"x_target_temp_slot_level"
	.byte	0x9
	.value	0x166
	.long	0x2e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"fixup_var_refs_queue"
	.byte	0x9
	.value	0x16a
	.long	0x630e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"inlinable"
	.byte	0x9
	.value	0x16d
	.long	0x2e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"no_debugging_symbols"
	.byte	0x9
	.value	0x16e
	.long	0x2e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xd
	.string	"original_arg_vector"
	.byte	0x9
	.value	0x16f
	.long	0x19e
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"original_decl_initial"
	.byte	0x9
	.value	0x170
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.string	"inl_last_parm_insn"
	.byte	0x9
	.value	0x173
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.string	"inl_max_label_num"
	.byte	0x9
	.value	0x175
	.long	0x2e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"funcdef_no"
	.byte	0x9
	.value	0x178
	.long	0x2e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.string	"machine"
	.byte	0x9
	.value	0x17d
	.long	0x6685
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.string	"stack_alignment_needed"
	.byte	0x9
	.value	0x17f
	.long	0x2e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.string	"preferred_stack_boundary"
	.byte	0x9
	.value	0x181
	.long	0x2e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xd
	.string	"language"
	.byte	0x9
	.value	0x184
	.long	0x669f
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.string	"epilogue_delay_list"
	.byte	0x9
	.value	0x18a
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1b
	.string	"returns_struct"
	.byte	0x9
	.value	0x190
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"returns_pcc_struct"
	.byte	0x9
	.value	0x194
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"returns_pointer"
	.byte	0x9
	.value	0x197
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"needs_context"
	.byte	0x9
	.value	0x19a
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"calls_setjmp"
	.byte	0x9
	.value	0x19d
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"calls_longjmp"
	.byte	0x9
	.value	0x1a0
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"calls_alloca"
	.byte	0x9
	.value	0x1a4
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"calls_eh_return"
	.byte	0x9
	.value	0x1a7
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"has_nonlocal_label"
	.byte	0x9
	.value	0x1ab
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"has_nonlocal_goto"
	.byte	0x9
	.value	0x1af
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"contains_functions"
	.byte	0x9
	.value	0x1b2
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"has_computed_jump"
	.byte	0x9
	.value	0x1b5
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"is_thunk"
	.byte	0x9
	.value	0x1ba
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"all_throwers_are_sibcalls"
	.byte	0x9
	.value	0x1c1
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"instrument_entry_exit"
	.byte	0x9
	.value	0x1c5
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"arc_profile"
	.byte	0x9
	.value	0x1c8
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"profile"
	.byte	0x9
	.value	0x1cb
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"limit_stack"
	.byte	0x9
	.value	0x1cf
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"stdarg"
	.byte	0x9
	.value	0x1d2
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"x_whole_function_mode_p"
	.byte	0x9
	.value	0x1d8
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x9
	.value	0x1e1
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"uses_const_pool"
	.byte	0x9
	.value	0x1e4
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"uses_pic_offset_table"
	.byte	0x9
	.value	0x1e7
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"uses_eh_lsda"
	.byte	0x9
	.value	0x1ea
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"arg_pointer_save_area_init"
	.byte	0x9
	.value	0x1ed
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1a
	.long	.LASF19
	.byte	0x9
	.value	0x1fa
	.long	0x6591
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"max_jumptable_ents"
	.byte	0x9
	.value	0x1fe
	.long	0x2e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x383e
	.uleb128 0x1f
	.long	0x423c
	.byte	0x4
	.byte	0x6
	.value	0x81e
	.uleb128 0x9
	.string	"st"
	.byte	0x6
	.value	0x81f
	.long	0x30da
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x6
	.value	0x820
	.long	0x13a3
	.uleb128 0x9
	.string	"field_id"
	.byte	0x6
	.value	0x821
	.long	0x3be
	.byte	0x0
	.uleb128 0x1f
	.long	0x4252
	.byte	0x4
	.byte	0x6
	.value	0x823
	.uleb128 0x9
	.string	"st2"
	.byte	0x6
	.value	0x824
	.long	0x30da
	.byte	0x0
	.uleb128 0xc
	.long	0x498f
	.string	"tree_decl"
	.byte	0x94
	.byte	0x6
	.value	0x7a0
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x7a1
	.long	0x2cb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"locus"
	.byte	0x6
	.value	0x7a2
	.long	0xa6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"uid"
	.byte	0x6
	.value	0x7a3
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"size"
	.byte	0x6
	.value	0x7a4
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1b
	.string	"mode"
	.byte	0x6
	.value	0x7a5
	.long	0x7f4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"external_flag"
	.byte	0x6
	.value	0x7a7
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"nonlocal_flag"
	.byte	0x6
	.value	0x7a8
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"regdecl_flag"
	.byte	0x6
	.value	0x7a9
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"inline_flag"
	.byte	0x6
	.value	0x7aa
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"bit_field_flag"
	.byte	0x6
	.value	0x7ab
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"virtual_flag"
	.byte	0x6
	.value	0x7ac
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"ignored_flag"
	.byte	0x6
	.value	0x7ad
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1c
	.long	.LASF12
	.byte	0x6
	.value	0x7ae
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"sbuf_flag"
	.byte	0x6
	.value	0x7b2
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"sdram_flag"
	.byte	0x6
	.value	0x7b3
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"v1buf_flag"
	.byte	0x6
	.value	0x7b4
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"v2buf_flag"
	.byte	0x6
	.value	0x7b5
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"v4buf_flag"
	.byte	0x6
	.value	0x7b6
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"in_system_header_flag"
	.byte	0x6
	.value	0x7ba
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"common_flag"
	.byte	0x6
	.value	0x7bb
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"defer_output"
	.byte	0x6
	.value	0x7bc
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"transparent_union"
	.byte	0x6
	.value	0x7bd
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"static_ctor_flag"
	.byte	0x6
	.value	0x7be
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"static_dtor_flag"
	.byte	0x6
	.value	0x7bf
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"artificial_flag"
	.byte	0x6
	.value	0x7c0
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"weak_flag"
	.byte	0x6
	.value	0x7c1
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"non_addr_const_p"
	.byte	0x6
	.value	0x7c3
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"no_instrument_function_entry_exit"
	.byte	0x6
	.value	0x7c4
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"comdat_flag"
	.byte	0x6
	.value	0x7c5
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"malloc_flag"
	.byte	0x6
	.value	0x7c6
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"no_limit_stack"
	.byte	0x6
	.value	0x7c7
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x6
	.value	0x7c8
	.long	0x1402
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"pure_flag"
	.byte	0x6
	.value	0x7c9
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF16
	.byte	0x6
	.value	0x7cb
	.long	0x3be
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"non_addressable"
	.byte	0x6
	.value	0x7cc
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF17
	.byte	0x6
	.value	0x7cd
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"uninlinable"
	.byte	0x6
	.value	0x7ce
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"thread_local_flag"
	.byte	0x6
	.value	0x7cf
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"inlined_function_flag"
	.byte	0x6
	.value	0x7d0
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"noinline_attrib"
	.byte	0x6
	.value	0x7d2
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF4
	.byte	0x6
	.value	0x7d5
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x6
	.value	0x7d6
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x6
	.value	0x7d7
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF7
	.byte	0x6
	.value	0x7d8
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF8
	.byte	0x6
	.value	0x7d9
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF9
	.byte	0x6
	.value	0x7da
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF10
	.byte	0x6
	.value	0x7db
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"lang_flag_7"
	.byte	0x6
	.value	0x7dc
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"syscall_linkage_flag"
	.byte	0x6
	.value	0x7df
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"widen_retval_flag"
	.byte	0x6
	.value	0x7e0
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"promote_static"
	.byte	0x6
	.value	0x7e3
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"always_inline_attrib"
	.byte	0x6
	.value	0x7e4
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"u1"
	.byte	0x6
	.value	0x7f4
	.long	0x37ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1a
	.long	.LASF14
	.byte	0x6
	.value	0x7f6
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"name"
	.byte	0x6
	.value	0x7f7
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"context"
	.byte	0x6
	.value	0x7f8
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"arguments"
	.byte	0x6
	.value	0x7f9
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"result"
	.byte	0x6
	.value	0x7fa
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"initial"
	.byte	0x6
	.value	0x7fb
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1a
	.long	.LASF13
	.byte	0x6
	.value	0x7fc
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"assembler_name"
	.byte	0x6
	.value	0x7fd
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"section_name"
	.byte	0x6
	.value	0x7fe
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1a
	.long	.LASF15
	.byte	0x6
	.value	0x7ff
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x800
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"live_range_rtl"
	.byte	0x6
	.value	0x801
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"u2"
	.byte	0x6
	.value	0x80d
	.long	0x37ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"saved_tree"
	.byte	0x6
	.value	0x810
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"inlined_fns"
	.byte	0x6
	.value	0x814
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"vindex"
	.byte	0x6
	.value	0x816
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"pointer_alias_set"
	.byte	0x6
	.value	0x817
	.long	0x45a
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x1a
	.long	.LASF18
	.byte	0x6
	.value	0x819
	.long	0x499b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x1b
	.string	"symtab_idx"
	.byte	0x6
	.value	0x81b
	.long	0x3be
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x1b
	.string	"label_defined"
	.byte	0x6
	.value	0x81c
	.long	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"sgi_u1"
	.byte	0x6
	.value	0x822
	.long	0x4204
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.string	"sgi_u2"
	.byte	0x6
	.value	0x825
	.long	0x423c
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.string	"decl_dst_id"
	.byte	0x6
	.value	0x826
	.long	0x13b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.string	"sl_model_name"
	.byte	0x6
	.value	0x82a
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0x17
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x498f
	.uleb128 0x15
	.long	0x4bf2
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xb
	.byte	0x1e
	.uleb128 0x16
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x16
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x16
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x16
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x16
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x16
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x16
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x16
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x16
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x16
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x16
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x16
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x16
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x16
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x16
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x16
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x16
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x16
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x16
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x16
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x16
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x16
	.string	"ordered_cons_b"
	.sleb128 21
	.uleb128 0x16
	.string	"ordered_cons_e"
	.sleb128 22
	.uleb128 0x16
	.string	"options_dir"
	.sleb128 23
	.uleb128 0x16
	.string	"exec_freq_dir"
	.sleb128 24
	.uleb128 0x16
	.string	"sl2_sections_cons_b"
	.sleb128 25
	.uleb128 0x16
	.string	"sl2_minor_sections_cons_b"
	.sleb128 26
	.uleb128 0x16
	.string	"sl2_sections_cons_e"
	.sleb128 27
	.uleb128 0x16
	.string	"sl2_section_cons_b"
	.sleb128 28
	.uleb128 0x16
	.string	"sl2_section_cons_e"
	.sleb128 29
	.uleb128 0x16
	.string	"sl2_minor_section_cons_b"
	.sleb128 30
	.uleb128 0x16
	.string	"sl2_minor_section_cons_e"
	.sleb128 31
	.byte	0x0
	.uleb128 0xc
	.long	0x4c41
	.string	"tree_omp"
	.byte	0x18
	.byte	0x6
	.value	0x832
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x833
	.long	0x2cb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"choice"
	.byte	0x6
	.value	0x834
	.long	0x49a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"omp_clause_list"
	.byte	0x6
	.value	0x835
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xb
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x3
	.byte	0x4
	.long	0x1e6
	.uleb128 0x15
	.long	0x541f
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x2f
	.uleb128 0x16
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x16
	.string	"NIL"
	.sleb128 1
	.uleb128 0x16
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x16
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x16
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x16
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x16
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x16
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x16
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x16
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x16
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x16
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x16
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x16
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x16
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x16
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x16
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x16
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x16
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x16
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x16
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x16
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x16
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x16
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x16
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x16
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x16
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x16
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x16
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x16
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x16
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x16
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x16
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x16
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x16
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x16
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x16
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x16
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x16
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x16
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x16
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x16
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x16
	.string	"INSN"
	.sleb128 42
	.uleb128 0x16
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x16
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x16
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x16
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x16
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x16
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x16
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x16
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x16
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x16
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x16
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x16
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x16
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x16
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x16
	.string	"SET"
	.sleb128 57
	.uleb128 0x16
	.string	"USE"
	.sleb128 58
	.uleb128 0x16
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x16
	.string	"CALL"
	.sleb128 60
	.uleb128 0x16
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x16
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x16
	.string	"RESX"
	.sleb128 63
	.uleb128 0x16
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x16
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x16
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x16
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x16
	.string	"CONST"
	.sleb128 68
	.uleb128 0x16
	.string	"PC"
	.sleb128 69
	.uleb128 0x16
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x16
	.string	"REG"
	.sleb128 71
	.uleb128 0x16
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x16
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x16
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x16
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x16
	.string	"MEM"
	.sleb128 76
	.uleb128 0x16
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x16
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x16
	.string	"CC0"
	.sleb128 79
	.uleb128 0x16
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x16
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x16
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x16
	.string	"COND"
	.sleb128 83
	.uleb128 0x16
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x16
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x16
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x16
	.string	"NEG"
	.sleb128 87
	.uleb128 0x16
	.string	"MULT"
	.sleb128 88
	.uleb128 0x16
	.string	"DIV"
	.sleb128 89
	.uleb128 0x16
	.string	"MOD"
	.sleb128 90
	.uleb128 0x16
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x16
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x16
	.string	"AND"
	.sleb128 93
	.uleb128 0x16
	.string	"IOR"
	.sleb128 94
	.uleb128 0x16
	.string	"XOR"
	.sleb128 95
	.uleb128 0x16
	.string	"NOT"
	.sleb128 96
	.uleb128 0x16
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x16
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x16
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x16
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x16
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x16
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x16
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x16
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x16
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x16
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x16
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x16
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x16
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x16
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x16
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x16
	.string	"NE"
	.sleb128 112
	.uleb128 0x16
	.string	"EQ"
	.sleb128 113
	.uleb128 0x16
	.string	"GE"
	.sleb128 114
	.uleb128 0x16
	.string	"GT"
	.sleb128 115
	.uleb128 0x16
	.string	"LE"
	.sleb128 116
	.uleb128 0x16
	.string	"LT"
	.sleb128 117
	.uleb128 0x16
	.string	"GEU"
	.sleb128 118
	.uleb128 0x16
	.string	"GTU"
	.sleb128 119
	.uleb128 0x16
	.string	"LEU"
	.sleb128 120
	.uleb128 0x16
	.string	"LTU"
	.sleb128 121
	.uleb128 0x16
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x16
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x16
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x16
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x16
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x16
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x16
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x16
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x16
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x16
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x16
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x16
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x16
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x16
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x16
	.string	"FIX"
	.sleb128 136
	.uleb128 0x16
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x16
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x16
	.string	"ABS"
	.sleb128 139
	.uleb128 0x16
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x16
	.string	"FFS"
	.sleb128 141
	.uleb128 0x16
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x16
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x16
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x16
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x16
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x16
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x16
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x16
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x16
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x16
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x16
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x16
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x16
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x16
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x16
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x16
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x16
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x16
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x16
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x16
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x16
	.string	"PHI"
	.sleb128 162
	.uleb128 0x16
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x20
	.long	0x54f9
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x3be
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
	.long	0x3be
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
	.long	0x3be
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
	.long	0x3be
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
	.long	0x3be
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
	.long	0x3be
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
	.long	0x3be
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
	.long	0x3be
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
	.long	0x541f
	.uleb128 0x13
	.long	0x5570
	.long	.LASF20
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x45a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x6b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x6c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x6d
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x21
	.long	.LASF20
	.byte	0x3
	.byte	0x6e
	.long	0x5514
	.uleb128 0x7
	.long	0x564d
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x22
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x45a
	.uleb128 0x22
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x2e5
	.uleb128 0x22
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x3be
	.uleb128 0x22
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x2d2
	.uleb128 0x22
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x9d
	.uleb128 0x22
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x19e
	.uleb128 0x22
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x7f4
	.uleb128 0x22
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0x54f9
	.uleb128 0x22
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x5661
	.uleb128 0x22
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x56c9
	.uleb128 0x22
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e6
	.uleb128 0x22
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x5854
	.uleb128 0x22
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x585a
	.byte	0x0
	.uleb128 0x17
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x564d
	.uleb128 0x4
	.long	0x56c9
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x6
	.string	"first"
	.byte	0x5
	.byte	0x3d
	.long	0x592b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x592b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5667
	.uleb128 0x4
	.long	0x5854
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x6
	.string	"head"
	.byte	0xc
	.byte	0xb5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0xc
	.byte	0xb5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0xc
	.byte	0xb8
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0xc
	.byte	0xb9
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0xc
	.byte	0xbc
	.long	0x6011
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0xc
	.byte	0xbc
	.long	0x6011
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0xc
	.byte	0xc1
	.long	0x5f49
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0xc
	.byte	0xc5
	.long	0x5f49
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0xc
	.byte	0xcb
	.long	0x5f49
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0xc
	.byte	0xcd
	.long	0x5f49
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0xc
	.byte	0xd0
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0xc
	.byte	0xd3
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0xc
	.byte	0xd6
	.long	0x5854
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0xc
	.byte	0xd6
	.long	0x5854
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0xc
	.byte	0xd9
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0xc
	.byte	0xdc
	.long	0x628c
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0xc
	.byte	0xdf
	.long	0x5f57
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0xc
	.byte	0xe2
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0xc
	.byte	0xe5
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x56cf
	.uleb128 0x3
	.byte	0x4
	.long	0x5570
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0x557b
	.uleb128 0xf
	.long	0x587f
	.long	0x5860
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x588f
	.long	0x9d
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9d
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x429
	.uleb128 0x4
	.long	0x58ff
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x23
	.long	.LASF21
	.byte	0x5
	.byte	0x35
	.long	0x58ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x5
	.byte	0x36
	.long	0x58ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x5905
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x58a8
	.uleb128 0xf
	.long	0x5915
	.long	0x5895
	.uleb128 0x10
	.long	0x3d5
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x58a8
	.uleb128 0x3
	.byte	0x4
	.long	0x5915
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x56c9
	.uleb128 0x4
	.long	0x5999
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0xd
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0xd
	.byte	0x21
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0xd
	.byte	0x22
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0xd
	.byte	0x23
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0xd
	.byte	0x24
	.long	0x5999
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	0x59a9
	.long	0x46b
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xd
	.byte	0x25
	.long	0x59b8
	.uleb128 0x3
	.byte	0x4
	.long	0x593f
	.uleb128 0x4
	.long	0x59f4
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0x12
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0x12
	.byte	0x32
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0x12
	.byte	0x36
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x15
	.long	0x5b8f
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0x12
	.byte	0x3c
	.uleb128 0x16
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x16
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x16
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x16
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x16
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x16
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x16
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x16
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x16
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x16
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x16
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x16
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x16
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x16
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x16
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x16
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x16
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x16
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x16
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x16
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x16
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x7
	.long	0x5c8b
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x12
	.byte	0x55
	.uleb128 0x22
	.string	"c"
	.byte	0x12
	.byte	0x56
	.long	0x7be
	.uleb128 0x22
	.string	"uc"
	.byte	0x12
	.byte	0x58
	.long	0x5c8b
	.uleb128 0x22
	.string	"s"
	.byte	0x12
	.byte	0x5a
	.long	0x5c9b
	.uleb128 0x22
	.string	"us"
	.byte	0x12
	.byte	0x5c
	.long	0x5cab
	.uleb128 0x22
	.string	"i"
	.byte	0x12
	.byte	0x5e
	.long	0x5cbb
	.uleb128 0x22
	.string	"u"
	.byte	0x12
	.byte	0x60
	.long	0x5ccb
	.uleb128 0x22
	.string	"l"
	.byte	0x12
	.byte	0x62
	.long	0x5cdb
	.uleb128 0x22
	.string	"ul"
	.byte	0x12
	.byte	0x64
	.long	0x5ceb
	.uleb128 0x22
	.string	"hint"
	.byte	0x12
	.byte	0x66
	.long	0x5cfb
	.uleb128 0x22
	.string	"uhint"
	.byte	0x12
	.byte	0x68
	.long	0x5999
	.uleb128 0x22
	.string	"generic"
	.byte	0x12
	.byte	0x6a
	.long	0x5d0b
	.uleb128 0x22
	.string	"cptr"
	.byte	0x12
	.byte	0x6c
	.long	0x5d1b
	.uleb128 0x22
	.string	"rtx"
	.byte	0x12
	.byte	0x6e
	.long	0x5d2b
	.uleb128 0x22
	.string	"rtvec"
	.byte	0x12
	.byte	0x70
	.long	0x5d3b
	.uleb128 0x22
	.string	"tree"
	.byte	0x12
	.byte	0x72
	.long	0x5d4b
	.uleb128 0x22
	.string	"bitmap"
	.byte	0x12
	.byte	0x74
	.long	0x5d5b
	.uleb128 0x22
	.string	"reg"
	.byte	0x12
	.byte	0x76
	.long	0x5d6b
	.uleb128 0x22
	.string	"const_equiv"
	.byte	0x12
	.byte	0x78
	.long	0x5e67
	.uleb128 0x22
	.string	"bb"
	.byte	0x12
	.byte	0x7a
	.long	0x5e77
	.uleb128 0x22
	.string	"te"
	.byte	0x12
	.byte	0x7c
	.long	0x5e87
	.byte	0x0
	.uleb128 0xf
	.long	0x5c9b
	.long	0x402
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5cab
	.long	0x44d
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5cbb
	.long	0x413
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5ccb
	.long	0x2e5
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5cdb
	.long	0x3be
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5ceb
	.long	0x4a4
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5cfb
	.long	0x429
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5d0b
	.long	0x45a
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5d1b
	.long	0x4c1
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5d2b
	.long	0x4c3
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5d3b
	.long	0xa8
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5d4b
	.long	0x1ab
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5d5b
	.long	0x1f2
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5d6b
	.long	0x56c9
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5d7b
	.long	0x5e61
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x5e61
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0x12
	.byte	0x76
	.uleb128 0x6
	.string	"first_uid"
	.byte	0x13
	.byte	0x31
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last_uid"
	.byte	0x13
	.byte	0x32
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"last_note_uid"
	.byte	0x13
	.byte	0x33
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sets"
	.byte	0x13
	.byte	0x36
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"refs"
	.byte	0x13
	.byte	0x39
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"freq"
	.byte	0x13
	.byte	0x3a
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"deaths"
	.byte	0x13
	.byte	0x3b
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"live_length"
	.byte	0x13
	.byte	0x3c
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"calls_crossed"
	.byte	0x13
	.byte	0x3d
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.long	.LASF22
	.byte	0x13
	.byte	0x3e
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"changes_mode"
	.byte	0x13
	.byte	0x3f
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5d7b
	.uleb128 0xf
	.long	0x5e77
	.long	0x59be
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5e87
	.long	0x5854
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5e97
	.long	0x5ea2
	.uleb128 0x10
	.long	0x3d5
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5e97
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x12
	.byte	0x7e
	.long	0x5b8f
	.uleb128 0x4
	.long	0x5f30
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x12
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0x12
	.byte	0x82
	.long	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0x12
	.byte	0x83
	.long	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0x12
	.byte	0x85
	.long	0x59f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"name"
	.byte	0x12
	.byte	0x86
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0x12
	.byte	0x87
	.long	0x5ea8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x12
	.byte	0x8a
	.long	0x5f43
	.uleb128 0x3
	.byte	0x4
	.long	0x5ebb
	.uleb128 0x2
	.string	"regset"
	.byte	0xc
	.byte	0x22
	.long	0x5931
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0xc
	.byte	0x75
	.long	0x45a
	.uleb128 0x4
	.long	0x600b
	.string	"edge_def"
	.byte	0x28
	.byte	0xc
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0xc
	.byte	0x7a
	.long	0x600b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0xc
	.byte	0x7a
	.long	0x600b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0xc
	.byte	0x7d
	.long	0x5854
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0xc
	.byte	0x7d
	.long	0x5854
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0xc
	.byte	0x80
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0xc
	.byte	0x83
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0xc
	.byte	0x85
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x23
	.long	.LASF23
	.byte	0xc
	.byte	0x86
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0xc
	.byte	0x87
	.long	0x5f57
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5f68
	.uleb128 0x2
	.string	"edge"
	.byte	0xc
	.byte	0x89
	.long	0x600b
	.uleb128 0x4
	.long	0x628c
	.string	"loop"
	.byte	0x80
	.byte	0xc
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0xc
	.value	0x176
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"header"
	.byte	0xc
	.value	0x179
	.long	0x6292
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0xc
	.value	0x17c
	.long	0x6292
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0xc
	.value	0x17f
	.long	0x6292
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0xc
	.value	0x184
	.long	0x629d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0xc
	.value	0x187
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"first"
	.byte	0xc
	.value	0x18b
	.long	0x6292
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0xc
	.value	0x18f
	.long	0x6292
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0xc
	.value	0x192
	.long	0x59a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"num_nodes"
	.byte	0xc
	.value	0x195
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0xc
	.value	0x198
	.long	0x629d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"num_entries"
	.byte	0xc
	.value	0x19b
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0xc
	.value	0x19e
	.long	0x629d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"num_exits"
	.byte	0xc
	.value	0x1a1
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0xc
	.value	0x1a4
	.long	0x59a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0xc
	.value	0x1a7
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0xc
	.value	0x1aa
	.long	0x62a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0xc
	.value	0x1ae
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0xc
	.value	0x1b1
	.long	0x628c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0xc
	.value	0x1b4
	.long	0x628c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1a
	.long	.LASF21
	.byte	0xc
	.value	0x1b7
	.long	0x628c
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0xc
	.value	0x1ba
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0xc
	.value	0x1bd
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"vtop"
	.byte	0xc
	.value	0x1c3
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0xc
	.value	0x1c7
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0xc
	.value	0x1ca
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0xc
	.value	0x1cd
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0xc
	.value	0x1d1
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0xc
	.value	0x1d4
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0xc
	.value	0x1d7
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0xc
	.value	0x1e2
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"exit_count"
	.byte	0xc
	.value	0x1e6
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x601d
	.uleb128 0x21
	.long	.LASF22
	.byte	0xc
	.byte	0xe6
	.long	0x5854
	.uleb128 0x3
	.byte	0x4
	.long	0x6011
	.uleb128 0x3
	.byte	0x4
	.long	0x628c
	.uleb128 0x4
	.long	0x630e
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x9
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0x9
	.byte	0x18
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0x9
	.byte	0x19
	.long	0x7f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0x9
	.byte	0x1a
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x23
	.long	.LASF21
	.byte	0x9
	.byte	0x1b
	.long	0x630e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x62a9
	.uleb128 0x13
	.long	0x635c
	.long	.LASF24
	.byte	0x10
	.byte	0x9
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0x9
	.byte	0x26
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0x9
	.byte	0x27
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x23
	.long	.LASF25
	.byte	0x9
	.byte	0x28
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x23
	.long	.LASF21
	.byte	0x9
	.byte	0x29
	.long	0x635c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6314
	.uleb128 0x4
	.long	0x64b1
	.string	"emit_status"
	.byte	0x34
	.byte	0x9
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0x9
	.byte	0x3a
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0x9
	.byte	0x3d
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0x9
	.byte	0x44
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0x9
	.byte	0x45
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x23
	.long	.LASF25
	.byte	0x9
	.byte	0x4a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.long	.LASF24
	.byte	0x9
	.byte	0x50
	.long	0x635c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0x9
	.byte	0x54
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0x9
	.byte	0x58
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0x9
	.byte	0x59
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0x9
	.byte	0x5f
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0x9
	.byte	0x65
	.long	0x75b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0x9
	.byte	0x69
	.long	0x4c4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0x9
	.byte	0x70
	.long	0x588f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x6591
	.string	"expr_status"
	.byte	0x1c
	.byte	0x9
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0x9
	.byte	0x80
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0x9
	.byte	0x91
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0x9
	.byte	0x97
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0x9
	.byte	0x9c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0x9
	.byte	0x9f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0x9
	.byte	0xa2
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0x9
	.byte	0xa5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x24
	.long	0x65fb
	.long	.LASF19
	.byte	0x4
	.byte	0x9
	.value	0x1f1
	.uleb128 0x16
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x16
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x16
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x17
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x65fb
	.uleb128 0x17
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x660d
	.uleb128 0x3
	.byte	0x4
	.long	0x64b1
	.uleb128 0x3
	.byte	0x4
	.long	0x6362
	.uleb128 0x17
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x662d
	.uleb128 0x17
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6643
	.uleb128 0x17
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6660
	.uleb128 0x17
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6672
	.uleb128 0x17
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x668b
	.uleb128 0xb
	.string	"float"
	.byte	0x4
	.byte	0x4
	.uleb128 0x25
	.long	0x66fa
	.string	"inside_basic_block_p"
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.long	0x4c41
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x26
	.long	.LASF26
	.byte	0x1
	.byte	0x48
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF27
	.long	0x6eed
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11950
	.byte	0x0
	.uleb128 0x28
	.long	0x6755
	.byte	0x1
	.string	"control_flow_insn_p"
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.long	0x4c41
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x26
	.long	.LASF26
	.byte	0x1
	.byte	0x69
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"note"
	.byte	0x1
	.byte	0x6b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x27
	.long	.LASF27
	.long	0x6ed8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11993
	.byte	0x0
	.uleb128 0x25
	.long	0x67be
	.string	"count_basic_blocks"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.long	0x2e5
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.byte	0x93
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"count"
	.byte	0x1
	.byte	0x95
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"saw_insn"
	.byte	0x1
	.byte	0x96
	.long	0x4c41
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x2b
	.long	.LASF26
	.byte	0x1
	.byte	0x97
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x25
	.long	0x684e
	.string	"find_label_refs"
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.long	0x9d
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.byte	0xbd
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"lvl"
	.byte	0x1
	.byte	0xbe
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.long	.LASF26
	.byte	0x1
	.byte	0xc0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x29
	.string	"note"
	.byte	0x1
	.byte	0xc5
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x29
	.string	"lab"
	.byte	0x1
	.byte	0xd3
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LASF21
	.byte	0x1
	.byte	0xd3
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x68bf
	.string	"make_label_edge"
	.byte	0x1
	.byte	0xf2
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x26
	.long	.LASF28
	.byte	0x1
	.byte	0xee
	.long	0x68bf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"src"
	.byte	0x1
	.byte	0xef
	.long	0x6292
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"label"
	.byte	0x1
	.byte	0xf0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.string	"flags"
	.byte	0x1
	.byte	0xf1
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x27
	.long	.LASF27
	.long	0x6ed3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12124
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x59a9
	.uleb128 0x2e
	.long	0x6949
	.string	"make_eh_edge"
	.byte	0x1
	.value	0x108
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x2f
	.long	.LASF28
	.byte	0x1
	.value	0x105
	.long	0x68bf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"src"
	.byte	0x1
	.value	0x106
	.long	0x6292
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF26
	.byte	0x1
	.value	0x107
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"is_call"
	.byte	0x1
	.value	0x109
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"handlers"
	.byte	0x1
	.value	0x10a
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x10a
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x6ac3
	.string	"make_edges"
	.byte	0x1
	.value	0x122
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2f
	.long	.LASF29
	.byte	0x1
	.value	0x11f
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"min"
	.byte	0x1
	.value	0x120
	.long	0x6292
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"max"
	.byte	0x1
	.value	0x120
	.long	0x6292
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.string	"update_p"
	.byte	0x1
	.value	0x121
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0x123
	.long	0x6292
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.long	.LASF28
	.byte	0x1
	.value	0x124
	.long	0x68bf
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.long	0x69e4
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x31
	.string	"e"
	.byte	0x1
	.value	0x134
	.long	0x6011
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x33
	.long	0x6ab2
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x32
	.long	.LASF26
	.byte	0x1
	.value	0x144
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x144
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"code"
	.byte	0x1
	.value	0x145
	.long	0x4c50
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.string	"force_fallthru"
	.byte	0x1
	.value	0x146
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	0x6a7a
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x31
	.string	"tmp"
	.byte	0x1
	.value	0x154
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x31
	.string	"vec"
	.byte	0x1
	.value	0x166
	.long	0x19e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.value	0x167
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x6a98
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x31
	.string	"note"
	.byte	0x1
	.value	0x1b9
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2c
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x31
	.string	"tmp"
	.byte	0x1
	.value	0x1c8
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	.LASF27
	.long	0x6ebe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12182
	.byte	0x0
	.uleb128 0x2e
	.long	0x6c07
	.string	"find_basic_blocks_1"
	.byte	0x1
	.value	0x1dc
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x30
	.string	"f"
	.byte	0x1
	.value	0x1db
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF26
	.byte	0x1
	.value	0x1dd
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.long	.LASF21
	.byte	0x1
	.value	0x1dd
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x31
	.string	"bb_note"
	.byte	0x1
	.value	0x1de
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"lvl"
	.byte	0x1
	.value	0x1df
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.string	"trll"
	.byte	0x1
	.value	0x1e0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"head"
	.byte	0x1
	.value	0x1e1
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"end"
	.byte	0x1
	.value	0x1e2
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"prev"
	.byte	0x1
	.value	0x1e3
	.long	0x6292
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	0x6bf6
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x31
	.string	"code"
	.byte	0x1
	.value	0x1ed
	.long	0x4c50
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	0x6bb3
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x31
	.string	"kind"
	.byte	0x1
	.value	0x20b
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2c
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x31
	.string	"note"
	.byte	0x1
	.value	0x234
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x31
	.string	"lab"
	.byte	0x1
	.value	0x241
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF21
	.byte	0x1
	.value	0x241
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	.LASF27
	.long	0x6ea9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12412
	.byte	0x0
	.uleb128 0x34
	.long	0x6c6c
	.byte	0x1
	.string	"find_basic_blocks"
	.byte	0x1
	.value	0x26a
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x30
	.string	"f"
	.byte	0x1
	.value	0x267
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"nregs"
	.byte	0x1
	.value	0x268
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"file"
	.byte	0x1
	.value	0x269
	.long	0x6c6c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0x26b
	.long	0x6292
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c9
	.uleb128 0x2e
	.long	0x6d13
	.string	"find_bb_boundaries"
	.byte	0x1
	.value	0x2a7
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x30
	.string	"bb"
	.byte	0x1
	.value	0x2a6
	.long	0x6292
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF26
	.byte	0x1
	.value	0x2a8
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"end"
	.byte	0x1
	.value	0x2a9
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"flow_transfer_insn"
	.byte	0x1
	.value	0x2aa
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"fallthru"
	.byte	0x1
	.value	0x2ab
	.long	0x6011
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x31
	.string	"code"
	.byte	0x1
	.value	0x2b6
	.long	0x4c50
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x6d96
	.string	"compute_outgoing_frequencies"
	.byte	0x1
	.value	0x2ea
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x30
	.string	"b"
	.byte	0x1
	.value	0x2e9
	.long	0x6292
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"e"
	.byte	0x1
	.value	0x2eb
	.long	0x6011
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"f"
	.byte	0x1
	.value	0x2eb
	.long	0x6011
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x31
	.string	"note"
	.byte	0x1
	.value	0x2ef
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF23
	.byte	0x1
	.value	0x2f0
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x6e1d
	.byte	0x1
	.string	"find_many_sub_basic_blocks"
	.byte	0x1
	.value	0x30f
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x30
	.string	"blocks"
	.byte	0x1
	.value	0x30e
	.long	0x59a9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0x310
	.long	0x6292
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"min"
	.byte	0x1
	.value	0x310
	.long	0x6292
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"max"
	.byte	0x1
	.value	0x310
	.long	0x6292
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x31
	.string	"e"
	.byte	0x1
	.value	0x32b
	.long	0x6011
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x6ea9
	.byte	0x1
	.string	"find_sub_basic_blocks"
	.byte	0x1
	.value	0x346
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x30
	.string	"bb"
	.byte	0x1
	.value	0x345
	.long	0x6292
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"min"
	.byte	0x1
	.value	0x347
	.long	0x6292
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"max"
	.byte	0x1
	.value	0x347
	.long	0x6292
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x347
	.long	0x6292
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF21
	.byte	0x1
	.value	0x348
	.long	0x6292
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x31
	.string	"e"
	.byte	0x1
	.value	0x356
	.long	0x6011
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x7e4
	.uleb128 0xf
	.long	0x6ebe
	.long	0x2dd
	.uleb128 0x10
	.long	0x3d5
	.byte	0xa
	.byte	0x0
	.uleb128 0xa
	.long	0x6eae
	.uleb128 0xf
	.long	0x6ed3
	.long	0x2dd
	.uleb128 0x10
	.long	0x3d5
	.byte	0xf
	.byte	0x0
	.uleb128 0xa
	.long	0x6ec3
	.uleb128 0xa
	.long	0x7e4
	.uleb128 0xf
	.long	0x6eed
	.long	0x2dd
	.uleb128 0x10
	.long	0x3d5
	.byte	0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x6edd
	.uleb128 0xf
	.long	0x6f02
	.long	0x2dd
	.uleb128 0x10
	.long	0x3d5
	.byte	0xa2
	.byte	0x0
	.uleb128 0x35
	.string	"rtx_class"
	.byte	0x3
	.byte	0x45
	.long	0x6f15
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x6ef2
	.uleb128 0xf
	.long	0x6f2a
	.long	0x9d
	.uleb128 0x10
	.long	0x3d5
	.byte	0x80
	.byte	0x0
	.uleb128 0x36
	.string	"const_int_rtx"
	.byte	0x3
	.value	0x6a4
	.long	0x6f1a
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x6f52
	.long	0x9d
	.uleb128 0x10
	.long	0x3d5
	.byte	0xa
	.byte	0x0
	.uleb128 0x36
	.string	"global_rtl"
	.byte	0x3
	.value	0x6e5
	.long	0x6f42
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"n_basic_blocks"
	.byte	0xc
	.byte	0xf2
	.long	0x2e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"last_basic_block"
	.byte	0xc
	.byte	0xf6
	.long	0x2e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"basic_block_info"
	.byte	0xc
	.byte	0xfe
	.long	0x5f30
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.long	.LASF29
	.byte	0xc
	.value	0x118
	.long	0x9d
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"tail_recursion_label_list"
	.byte	0xc
	.value	0x119
	.long	0x9d
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x6ff5
	.long	0x56cf
	.uleb128 0x10
	.long	0x3d5
	.byte	0x1
	.byte	0x0
	.uleb128 0x36
	.string	"entry_exit_blocks"
	.byte	0xc
	.value	0x139
	.long	0x6fe5
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"flag_non_call_exceptions"
	.byte	0x14
	.value	0x2ae
	.long	0x2e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"cfun"
	.byte	0x9
	.value	0x202
	.long	0x41fe
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
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x27
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x5
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
	.long	0x75
	.value	0x2
	.long	.Ldebug_info0
	.long	0x7044
	.long	0x66fa
	.string	"control_flow_insn_p"
	.long	0x6c07
	.string	"find_basic_blocks"
	.long	0x6d96
	.string	"find_many_sub_basic_blocks"
	.long	0x6e1d
	.string	"find_sub_basic_blocks"
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
.LASF21:
	.string	"next"
.LASF0:
	.string	"common"
.LASF23:
	.string	"probability"
.LASF19:
	.string	"function_frequency"
.LASF29:
	.string	"label_value_list"
.LASF20:
	.string	"mem_attrs"
.LASF22:
	.string	"basic_block"
.LASF11:
	.string	"ht_identifier"
.LASF13:
	.string	"abstract_origin"
.LASF18:
	.string	"lang_specific"
.LASF14:
	.string	"size_unit"
.LASF17:
	.string	"user_align"
.LASF26:
	.string	"insn"
.LASF24:
	.string	"sequence_stack"
.LASF28:
	.string	"edge_cache"
.LASF27:
	.string	"__FUNCTION__"
.LASF2:
	.string	"_IO_FILE"
.LASF5:
	.string	"lang_flag_1"
.LASF6:
	.string	"lang_flag_2"
.LASF9:
	.string	"lang_flag_5"
.LASF15:
	.string	"attributes"
.LASF4:
	.string	"lang_flag_0"
.LASF3:
	.string	"built_in_class"
.LASF7:
	.string	"lang_flag_3"
.LASF8:
	.string	"lang_flag_4"
.LASF10:
	.string	"lang_flag_6"
.LASF16:
	.string	"pointer_depth"
.LASF25:
	.string	"sequence_rtl_expr"
.LASF12:
	.string	"abstract_flag"
.LASF1:
	.string	"unsigned int"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
