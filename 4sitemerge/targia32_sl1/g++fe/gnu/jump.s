	.file	"jump.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl rebuild_jump_labels
	.type	rebuild_jump_labels, @function
rebuild_jump_labels:
.LFB15:
	.file 1 "../../../kg++fe/gnu/jump.c"
	.loc 1 80 0
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
	.loc 1 82 0
	movl	$0, -8(%ebp)
	.loc 1 84 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	init_label_info
	addl	$1, %eax
	movl	%eax, -8(%ebp)
	.loc 1 86 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_all_labels
	.loc 1 92 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2
.L3:
	.loc 1 93 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L4
	.loc 1 94 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	36(%edx), %eax
	addl	$1, %eax
	movl	%eax, 36(%edx)
.L4:
	.loc 1 92 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L2:
	cmpl	$0, -12(%ebp)
	jne	.L3
	.loc 1 95 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	rebuild_jump_labels, .-rebuild_jump_labels
.globl cleanup_barriers
	.type	cleanup_barriers, @function
cleanup_barriers:
.LFB16:
	.loc 1 107 0
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
	.loc 1 109 0
	call	get_insns@PLT
	movl	%eax, -16(%ebp)
	jmp	.L9
.L10:
	.loc 1 111 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 112 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L11
	.loc 1 114 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 115 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L13
	.loc 1 116 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_barrier@PLT
	jmp	.L11
.L13:
	.loc 1 117 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L11
	.loc 1 118 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	reorder_insns@PLT
.L11:
	.loc 1 109 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L9:
	cmpl	$0, -16(%ebp)
	jne	.L10
	.loc 1 121 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	cleanup_barriers, .-cleanup_barriers
	.type	next_nonnote_insn_in_loop, @function
next_nonnote_insn_in_loop:
.LFB17:
	.loc 1 130 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	subl	$4, %esp
.LCFI10:
	.loc 1 131 0
	jmp	.L28
.L20:
	.loc 1 133 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 134 0
	cmpl	$0, 8(%ebp)
	je	.L21
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L21
	.loc 1 136 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L19
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-95, %eax
	jne	.L19
	.loc 1 138 0
	movl	$0, -4(%ebp)
	jmp	.L26
.L19:
.L28:
	.loc 1 131 0
	cmpl	$0, 8(%ebp)
	jne	.L20
.L21:
	.loc 1 141 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
.L26:
	movl	-4(%ebp), %eax
	.loc 1 142 0
	leave
	ret
.LFE17:
	.size	next_nonnote_insn_in_loop, .-next_nonnote_insn_in_loop
.globl copy_loop_headers
	.type	copy_loop_headers, @function
copy_loop_headers:
.LFB18:
	.loc 1 147 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	pushl	%ebx
.LCFI13:
	subl	$20, %esp
.LCFI14:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 150 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L30
.L31:
.LBB2:
	.loc 1 154 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 160 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L32
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	jne	.L32
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn_in_loop
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L32
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	any_uncondjump_p@PLT
	testl	%eax, %eax
	je	.L32
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	je	.L32
	.loc 1 165 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 166 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	duplicate_loop_exit_test
	testl	%eax, %eax
	je	.L32
	.loc 1 168 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L32:
.LBE2:
	.loc 1 150 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L30:
	cmpl	$0, -20(%ebp)
	jne	.L31
	.loc 1 172 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	copy_loop_headers, .-copy_loop_headers
.globl purge_line_number_notes
	.type	purge_line_number_notes, @function
purge_line_number_notes:
.LFB19:
	.loc 1 177 0
	pushl	%ebp
.LCFI15:
	movl	%esp, %ebp
.LCFI16:
	pushl	%ebx
.LCFI17:
	subl	$20, %esp
.LCFI18:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 178 0
	movl	$0, -12(%ebp)
	.loc 1 185 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L42
.L43:
	.loc 1 186 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L44
	.loc 1 188 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-87, %eax
	jne	.L46
	.loc 1 191 0
	movl	$0, -12(%ebp)
	jmp	.L44
.L46:
	.loc 1 192 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	js	.L44
	.loc 1 195 0
	cmpl	$0, -12(%ebp)
	je	.L49
	movl	-8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	%eax, %edx
	jne	.L49
	movl	-8(%ebp), %eax
	movl	44(%eax), %edx
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, %edx
	jne	.L49
	.loc 1 199 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 200 0
	jmp	.L44
.L49:
	.loc 1 203 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L44:
	.loc 1 185 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L42:
	cmpl	$0, -8(%ebp)
	jne	.L43
	.loc 1 206 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	purge_line_number_notes, .-purge_line_number_notes
	.type	init_label_info, @function
init_label_info:
.LFB20:
	.loc 1 214 0
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
	.loc 1 215 0
	movl	$0, -20(%ebp)
	.loc 1 218 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L56
.L57:
	.loc 1 220 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L58
	.loc 1 221 0
	movl	-16(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 36(%eax)
	jmp	.L60
.L58:
	.loc 1 222 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L61
	.loc 1 223 0
	movl	-16(%ebp), %eax
	movl	$0, 76(%eax)
	jmp	.L60
.L61:
	.loc 1 224 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	je	.L63
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L60
.L63:
.LBB3:
	.loc 1 228 0
	movl	-16(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L65
.L66:
	.loc 1 230 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 231 0
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$13, %al
	jne	.L67
	movl	-16(%ebp), %eax
	movl	44(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L67
	.loc 1 233 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L67:
	.loc 1 228 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L65:
	cmpl	$0, -12(%ebp)
	jne	.L66
.L60:
.LBE3:
	.loc 1 236 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	jle	.L70
	.loc 1 237 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L70:
	.loc 1 218 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L56:
	cmpl	$0, -16(%ebp)
	jne	.L57
	.loc 1 240 0
	movl	-20(%ebp), %eax
	.loc 1 241 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	init_label_info, .-init_label_info
	.type	mark_all_labels, @function
mark_all_labels:
.LFB21:
	.loc 1 249 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	pushl	%ebx
.LCFI25:
	subl	$36, %esp
.LCFI26:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 252 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L75
.L76:
	.loc 1 253 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L77
	.loc 1 255 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L79
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$151, %ax
	jne	.L79
	.loc 1 258 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	mark_all_labels
	.loc 1 259 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	mark_all_labels
	.loc 1 260 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	mark_all_labels
	.loc 1 264 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L77
.LBB4:
	.loc 1 266 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$77, (%esp)
	call	gen_rtx_fmt_u00@PLT
	movl	%eax, -16(%ebp)
	.loc 1 268 0
	movl	$0, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_jump_label@PLT
	.loc 1 269 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 28(%edx)
	.loc 1 272 0
	jmp	.L77
.L79:
.LBE4:
	.loc 1 275 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_jump_label@PLT
	.loc 1 276 0
	movl	-20(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L77
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L77
	.loc 1 281 0
	movl	-20(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	jne	.L77
.LBB5:
	.loc 1 283 0
	movl	$0, 8(%esp)
	movl	$13, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -12(%ebp)
	.loc 1 284 0
	cmpl	$0, -12(%ebp)
	je	.L77
.LBB6:
	.loc 1 288 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$77, (%esp)
	call	gen_rtx_fmt_u00@PLT
	movl	%eax, -8(%ebp)
	.loc 1 291 0
	movl	$0, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_jump_label@PLT
	.loc 1 292 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 293 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 76(%eax)
.L77:
.LBE6:
.LBE5:
	.loc 1 252 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L75:
	cmpl	$0, -20(%ebp)
	jne	.L76
	.loc 1 298 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	mark_all_labels, .-mark_all_labels
	.section	.rodata
	.type	__FUNCTION__.11296, @object
	.size	__FUNCTION__.11296, 25
__FUNCTION__.11296:
	.string	"duplicate_loop_exit_test"
.LC0:
	.string	"../../../kg++fe/gnu/jump.c"
	.text
	.type	duplicate_loop_exit_test, @function
duplicate_loop_exit_test:
.LFB22:
	.loc 1 314 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	pushl	%esi
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$112, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 316 0
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	.loc 1 317 0
	movl	$0, -36(%ebp)
	.loc 1 319 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn_in_loop
	movl	76(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 321 0
	call	max_reg_num@PLT
	movl	%eax, -24(%ebp)
	.loc 1 322 0
	movl	$0, -20(%ebp)
	.loc 1 338 0
	movl	-32(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 339 0
	jmp	.L91
.L92:
	.loc 1 344 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$42, %eax
	movl	%eax, -92(%ebp)
	cmpl	$5, -92(%ebp)
	ja	.L93
	movl	-92(%ebp), %eax
	sall	$2, %eax
	movl	.L97@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L97:
	.long	.L103@GOTOFF
	.long	.L103@GOTOFF
	.long	.L95@GOTOFF
	.long	.L93@GOTOFF
	.long	.L95@GOTOFF
	.long	.L96@GOTOFF
	.text
.L95:
	.loc 1 348 0
	movl	$0, -88(%ebp)
	jmp	.L98
.L96:
	.loc 1 351 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jg	.L93
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-98, %eax
	je	.L101
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-97, %eax
	jne	.L93
.L101:
	.loc 1 358 0
	movl	$0, -88(%ebp)
	jmp	.L98
.L104:
	.loc 1 366 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L103:
	.loc 1 365 0
	movl	$0, 8(%esp)
	movl	$5, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -52(%ebp)
	cmpl	$0, -52(%ebp)
	jne	.L104
	.loc 1 367 0
	addl	$1, -36(%ebp)
	cmpl	$20, -36(%ebp)
	jg	.L106
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L106
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L93
.L106:
	.loc 1 370 0
	movl	$0, -88(%ebp)
	jmp	.L98
.L93:
	.loc 1 342 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
.L91:
	.loc 1 339 0
	cmpl	$0, -64(%ebp)
	je	.L109
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L92
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-95, %eax
	jne	.L92
.L109:
	.loc 1 378 0
	cmpl	$0, -64(%ebp)
	jne	.L112
	.loc 1 379 0
	movl	$0, -88(%ebp)
	jmp	.L98
.L112:
	.loc 1 381 0
	movl	-64(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 385 0
	movl	-32(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L114
.L115:
	.loc 1 386 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L116
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L118
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L120
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L122
.L120:
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -80(%ebp)
.L122:
	movl	-80(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L123
.L118:
	movl	$0, -84(%ebp)
.L123:
	movl	-84(%ebp), %eax
	movl	%eax, -60(%ebp)
	cmpl	$0, -60(%ebp)
	je	.L116
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L125
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L116
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L116
.L125:
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L116
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %edx
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L116
	.loc 1 394 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L130
.L131:
	.loc 1 395 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L132
	.loc 1 394 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
.L130:
	movl	-52(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jne	.L131
.L132:
	.loc 1 398 0
	movl	-52(%ebp), %eax
	cmpl	-28(%ebp), %eax
	je	.L116
	.loc 1 402 0
	cmpl	$0, -20(%ebp)
	jne	.L135
	.loc 1 403 0
	movl	-24(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -20(%ebp)
.L135:
	.loc 1 405 0
	movl	-56(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$16, %eax
	movb	%al, 3(%edx)
	.loc 1 407 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-20(%ebp), %esi
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, (%esi)
.L116:
	.loc 1 385 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
.L114:
	movl	-64(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jne	.L115
	.loc 1 410 0
	call	gen_label_rtx@PLT
	movl	%eax, -16(%ebp)
	.loc 1 413 0
	movl	-32(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L138
.L139:
	.loc 1 415 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -76(%ebp)
	cmpl	$43, -76(%ebp)
	je	.L142
	cmpl	$43, -76(%ebp)
	ja	.L145
	cmpl	$42, -76(%ebp)
	je	.L141
	jmp	.L140
.L145:
	cmpl	$45, -76(%ebp)
	je	.L143
	cmpl	$47, -76(%ebp)
	je	.L144
	jmp	.L140
.L143:
	.loc 1 418 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_barrier_before@PLT
	movl	%eax, -44(%ebp)
	.loc 1 419 0
	jmp	.L146
.L144:
	.loc 1 422 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	js	.L146
	.loc 1 424 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_note_before@PLT
	movl	%eax, -44(%ebp)
	.loc 1 425 0
	movl	-64(%ebp), %eax
	movl	36(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 427 0
	jmp	.L146
.L141:
	.loc 1 430 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	copy_insn@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_before@PLT
	movl	%eax, -44(%ebp)
	.loc 1 431 0
	cmpl	$0, -20(%ebp)
	je	.L149
	.loc 1 432 0
	movl	-24(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	44(%eax), %ecx
	movl	$1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	replace_regs@PLT
.L149:
	.loc 1 434 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_jump_label@PLT
	.loc 1 435 0
	movl	-64(%ebp), %eax
	movl	36(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 439 0
	movl	-64(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L151
.L152:
	.loc 1 440 0
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$13, %al
	je	.L153
	.loc 1 442 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$3, %ax
	jne	.L155
	.loc 1 443 0
	movl	-44(%ebp), %eax
	movl	68(%eax), %ecx
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, (%esp)
	call	copy_insn_1@PLT
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 68(%eax)
	jmp	.L153
.L155:
	.loc 1 448 0
	movl	-44(%ebp), %eax
	movl	68(%eax), %ecx
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	gen_rtx_fmt_ue@PLT
	movl	%eax, (%esp)
	call	copy_insn_1@PLT
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 68(%eax)
.L153:
	.loc 1 439 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
.L151:
	cmpl	$0, -48(%ebp)
	jne	.L152
	.loc 1 454 0
	cmpl	$0, -20(%ebp)
	je	.L146
	movl	-44(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L146
	.loc 1 455 0
	movl	-24(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	68(%eax), %ecx
	movl	$1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	replace_regs@PLT
	.loc 1 456 0
	jmp	.L146
.L142:
	.loc 1 459 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	copy_insn@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_jump_insn_before@PLT
	movl	%eax, -44(%ebp)
	.loc 1 461 0
	movl	-64(%ebp), %eax
	movl	36(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 462 0
	cmpl	$0, -20(%ebp)
	je	.L161
	.loc 1 463 0
	movl	-24(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	44(%eax), %ecx
	movl	$1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	replace_regs@PLT
.L161:
	.loc 1 464 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_jump_label@PLT
	.loc 1 465 0
	movl	-64(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L163
	.loc 1 467 0
	movl	-64(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	call	copy_insn_1@PLT
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 468 0
	cmpl	$0, -20(%ebp)
	je	.L163
	.loc 1 469 0
	movl	-24(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	68(%eax), %ecx
	movl	$1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	replace_regs@PLT
.L163:
	.loc 1 475 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L146
.LBB7:
	.loc 1 477 0
	movl	-44(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 478 0
	cmpl	$0, -12(%ebp)
	je	.L146
	.loc 1 482 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	testl	%eax, %eax
	je	.L169
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	cmpl	%eax, %esi
	jne	.L169
	.loc 1 486 0
	movl	$1, 8(%esp)
	movl	$13, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_insn_def@PLT
	.loc 1 489 0
	movl	$0, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_jump@PLT
	.loc 1 482 0
	jmp	.L146
.L169:
	.loc 1 492 0
	movl	$0, 8(%esp)
	movl	$13, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_insn_def@PLT
	.loc 1 495 0
	jmp	.L146
.L140:
.LBE7:
	.loc 1 498 0
	leal	__FUNCTION__.11296@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$498, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L146:
	.loc 1 503 0
	cmpl	$0, -40(%ebp)
	jne	.L172
	.loc 1 504 0
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
.L172:
	.loc 1 413 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
.L138:
	movl	-64(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jne	.L139
	.loc 1 509 0
	cmpl	$0, -44(%ebp)
	je	.L175
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L177
.L175:
	.loc 1 511 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	get_label_after@PLT
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_jump_insn_before@PLT
	movl	%eax, -44(%ebp)
	.loc 1 518 0
	cmpl	$0, -40(%ebp)
	jne	.L178
	.loc 1 519 0
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
.L178:
	.loc 1 521 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_jump_label@PLT
	.loc 1 522 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_barrier_before@PLT
.L177:
	.loc 1 525 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label_before@PLT
	.loc 1 530 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_scan_update@PLT
	.loc 1 533 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$-93, (%esp)
	call	emit_note_before@PLT
	.loc 1 535 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 538 0
	cmpl	$0, -20(%ebp)
	je	.L180
	.loc 1 539 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L180:
	.loc 1 541 0
	movl	$1, -88(%ebp)
.L98:
	movl	-88(%ebp), %eax
	.loc 1 542 0
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE22:
	.size	duplicate_loop_exit_test, .-duplicate_loop_exit_test
.globl squeeze_notes
	.type	squeeze_notes, @function
squeeze_notes:
.LFB23:
	.loc 1 554 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	subl	$36, %esp
.LCFI34:
	.loc 1 555 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 556 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 560 0
	movl	$0, -12(%ebp)
	.loc 1 561 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 563 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L184
.L185:
	.loc 1 565 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 566 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L186
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-97, %eax
	je	.L188
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-98, %eax
	je	.L188
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	je	.L188
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-95, %eax
	je	.L188
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-94, %eax
	je	.L188
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-93, %eax
	jne	.L186
.L188:
	.loc 1 574 0
	movl	-20(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jne	.L194
	.loc 1 575 0
	movl	-16(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L197
.L194:
.LBB8:
	.loc 1 578 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 579 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 580 0
	movl	-20(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 581 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 582 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 583 0
	movl	-4(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 584 0
	movl	-16(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 566 0
	jmp	.L197
.L186:
.LBE8:
	.loc 1 588 0
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
.L197:
	.loc 1 563 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L184:
	movl	-20(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jne	.L185
	.loc 1 592 0
	movl	-28(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jne	.L199
	.loc 1 593 0
	movl	$1, -36(%ebp)
	jmp	.L201
.L199:
	.loc 1 595 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 597 0
	movl	8(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 598 0
	movl	12(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 599 0
	movl	$0, -36(%ebp)
.L201:
	movl	-36(%ebp), %eax
	.loc 1 600 0
	leave
	ret
.LFE23:
	.size	squeeze_notes, .-squeeze_notes
.globl get_label_before
	.type	get_label_before, @function
get_label_before:
.LFB24:
	.loc 1 607 0
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	pushl	%ebx
.LCFI37:
	subl	$36, %esp
.LCFI38:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 612 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 614 0
	cmpl	$0, -12(%ebp)
	je	.L204
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L206
.L204:
.LBB9:
	.loc 1 616 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 618 0
	call	gen_label_rtx@PLT
	movl	%eax, -12(%ebp)
	.loc 1 619 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label_after@PLT
	.loc 1 620 0
	movl	-12(%ebp), %eax
	movl	$0, 36(%eax)
.L206:
.LBE9:
	.loc 1 622 0
	movl	-12(%ebp), %eax
	.loc 1 623 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	get_label_before, .-get_label_before
.globl get_label_after
	.type	get_label_after, @function
get_label_after:
.LFB25:
	.loc 1 630 0
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
	.loc 1 635 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 637 0
	cmpl	$0, -8(%ebp)
	je	.L209
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L211
.L209:
	.loc 1 639 0
	call	gen_label_rtx@PLT
	movl	%eax, -8(%ebp)
	.loc 1 640 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label_after@PLT
	.loc 1 641 0
	movl	-8(%ebp), %eax
	movl	$0, 36(%eax)
.L211:
	.loc 1 643 0
	movl	-8(%ebp), %eax
	.loc 1 644 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	get_label_after, .-get_label_after
.globl reversed_comparison_code_parts
	.type	reversed_comparison_code_parts, @function
reversed_comparison_code_parts:
.LFB26:
	.loc 1 656 0
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
	.loc 1 660 0
	movl	8(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	je	.L214
	.loc 1 661 0
	movl	$0, -40(%ebp)
	jmp	.L216
.L214:
	.loc 1 663 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 664 0
	cmpl	$0, -24(%ebp)
	jne	.L217
	.loc 1 665 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
.L217:
	.loc 1 682 0
	movl	8(%ebp), %eax
	subl	$112, %eax
	movl	%eax, -44(%ebp)
	cmpl	$17, -44(%ebp)
	ja	.L219
	movl	$1, %eax
	movl	%eax, %edx
	movzbl	-44(%ebp), %ecx
	sall	%cl, %edx
	movl	%edx, -48(%ebp)
	movl	-48(%ebp), %eax
	andl	$963, %eax
	testl	%eax, %eax
	jne	.L220
	movl	-48(%ebp), %eax
	andl	$138240, %eax
	testl	%eax, %eax
	jne	.L221
	movl	-48(%ebp), %eax
	andl	$122880, %eax
	testl	%eax, %eax
	jne	.L222
	jmp	.L219
.L220:
	.loc 1 693 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reverse_condition@PLT
	movl	%eax, -40(%ebp)
	jmp	.L216
.L221:
	.loc 1 700 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reverse_condition_maybe_unordered@PLT
	movl	%eax, -40(%ebp)
	jmp	.L216
.L222:
	.loc 1 706 0
	movl	$0, -40(%ebp)
	jmp	.L216
.L219:
	.loc 1 711 0
	movl	-24(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$4, %eax
	jne	.L223
.LBB10:
	.loc 1 722 0
	cmpl	$0, 20(%ebp)
	jne	.L225
	.loc 1 723 0
	movl	$0, -40(%ebp)
	jmp	.L216
.L225:
	.loc 1 725 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -20(%ebp)
	.loc 1 726 0
	jmp	.L227
.L228:
.LBB11:
	.loc 1 729 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	set_of@PLT
	movl	%eax, -16(%ebp)
	.loc 1 730 0
	cmpl	$0, -16(%ebp)
	je	.L229
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L229
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L229
.LBB12:
	.loc 1 733 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 735 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$84, %ax
	jne	.L233
.LBB13:
	.loc 1 737 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 738 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 739 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 740 0
	cmpl	$0, -24(%ebp)
	jne	.L223
	.loc 1 741 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 742 0
	jmp	.L223
.L233:
.LBE13:
	.loc 1 746 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L229
	.loc 1 748 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 749 0
	jmp	.L238
.L229:
.LBE12:
	.loc 1 754 0
	cmpl	$0, -16(%ebp)
	je	.L238
	.loc 1 755 0
	movl	$0, -40(%ebp)
	jmp	.L216
.L238:
.LBE11:
	.loc 1 727 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -20(%ebp)
.L227:
	.loc 1 726 0
	cmpl	$0, -20(%ebp)
	je	.L223
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L228
.L223:
.LBE10:
	.loc 1 761 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L241
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L243
	movl	-24(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$4, %eax
	je	.L243
	movl	-24(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L246
	movl	-24(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L246
	movl	-24(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	jne	.L241
.L246:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L243
.L241:
	.loc 1 765 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reverse_condition@PLT
	movl	%eax, -40(%ebp)
	jmp	.L216
.L243:
	.loc 1 767 0
	movl	$0, -40(%ebp)
.L216:
	movl	-40(%ebp), %eax
	.loc 1 768 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	reversed_comparison_code_parts, .-reversed_comparison_code_parts
.globl reversed_comparison_code
	.type	reversed_comparison_code, @function
reversed_comparison_code:
.LFB27:
	.loc 1 775 0
	pushl	%ebp
.LCFI47:
	movl	%esp, %ebp
.LCFI48:
	pushl	%esi
.LCFI49:
	pushl	%ebx
.LCFI50:
	subl	$32, %esp
.LCFI51:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 776 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	je	.L251
	.loc 1 777 0
	movl	$0, -12(%ebp)
	jmp	.L253
.L251:
	.loc 1 778 0
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	reversed_comparison_code_parts@PLT
	movl	%eax, -12(%ebp)
.L253:
	movl	-12(%ebp), %eax
	.loc 1 781 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE27:
	.size	reversed_comparison_code, .-reversed_comparison_code
	.section	.rodata
	.type	__FUNCTION__.11676, @object
	.size	__FUNCTION__.11676, 18
__FUNCTION__.11676:
	.string	"reverse_condition"
	.text
.globl reverse_condition
	.type	reverse_condition, @function
reverse_condition:
.LFB28:
	.loc 1 794 0
	pushl	%ebp
.LCFI52:
	movl	%esp, %ebp
.LCFI53:
	pushl	%ebx
.LCFI54:
	subl	$20, %esp
.LCFI55:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 795 0
	movl	8(%ebp), %eax
	subl	$112, %eax
	movl	%eax, -12(%ebp)
	cmpl	$17, -12(%ebp)
	ja	.L256
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	.L270@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L270:
	.long	.L257@GOTOFF
	.long	.L258@GOTOFF
	.long	.L259@GOTOFF
	.long	.L260@GOTOFF
	.long	.L261@GOTOFF
	.long	.L262@GOTOFF
	.long	.L263@GOTOFF
	.long	.L264@GOTOFF
	.long	.L265@GOTOFF
	.long	.L266@GOTOFF
	.long	.L267@GOTOFF
	.long	.L268@GOTOFF
	.long	.L269@GOTOFF
	.long	.L269@GOTOFF
	.long	.L269@GOTOFF
	.long	.L269@GOTOFF
	.long	.L269@GOTOFF
	.long	.L269@GOTOFF
	.text
.L258:
	.loc 1 798 0
	movl	$112, -8(%ebp)
	jmp	.L271
.L257:
	.loc 1 800 0
	movl	$113, -8(%ebp)
	jmp	.L271
.L260:
	.loc 1 802 0
	movl	$116, -8(%ebp)
	jmp	.L271
.L259:
	.loc 1 804 0
	movl	$117, -8(%ebp)
	jmp	.L271
.L262:
	.loc 1 806 0
	movl	$114, -8(%ebp)
	jmp	.L271
.L261:
	.loc 1 808 0
	movl	$115, -8(%ebp)
	jmp	.L271
.L264:
	.loc 1 810 0
	movl	$120, -8(%ebp)
	jmp	.L271
.L263:
	.loc 1 812 0
	movl	$121, -8(%ebp)
	jmp	.L271
.L266:
	.loc 1 814 0
	movl	$118, -8(%ebp)
	jmp	.L271
.L265:
	.loc 1 816 0
	movl	$119, -8(%ebp)
	jmp	.L271
.L267:
	.loc 1 818 0
	movl	$123, -8(%ebp)
	jmp	.L271
.L268:
	.loc 1 820 0
	movl	$122, -8(%ebp)
	jmp	.L271
.L269:
	.loc 1 828 0
	movl	$0, -8(%ebp)
	jmp	.L271
.L256:
	.loc 1 831 0
	leal	__FUNCTION__.11676@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$831, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L271:
	movl	-8(%ebp), %eax
	.loc 1 833 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	reverse_condition, .-reverse_condition
	.section	.rodata
	.align 32
	.type	__FUNCTION__.11697, @object
	.size	__FUNCTION__.11697, 34
__FUNCTION__.11697:
	.string	"reverse_condition_maybe_unordered"
	.text
.globl reverse_condition_maybe_unordered
	.type	reverse_condition_maybe_unordered, @function
reverse_condition_maybe_unordered:
.LFB29:
	.loc 1 842 0
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
	.loc 1 843 0
	movl	8(%ebp), %eax
	subl	$112, %eax
	movl	%eax, -12(%ebp)
	cmpl	$17, -12(%ebp)
	ja	.L274
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	.L289@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L289:
	.long	.L275@GOTOFF
	.long	.L276@GOTOFF
	.long	.L277@GOTOFF
	.long	.L278@GOTOFF
	.long	.L279@GOTOFF
	.long	.L280@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L274@GOTOFF
	.long	.L281@GOTOFF
	.long	.L282@GOTOFF
	.long	.L283@GOTOFF
	.long	.L284@GOTOFF
	.long	.L285@GOTOFF
	.long	.L286@GOTOFF
	.long	.L287@GOTOFF
	.long	.L288@GOTOFF
	.text
.L276:
	.loc 1 846 0
	movl	$112, -8(%ebp)
	jmp	.L290
.L275:
	.loc 1 848 0
	movl	$113, -8(%ebp)
	jmp	.L290
.L278:
	.loc 1 850 0
	movl	$127, -8(%ebp)
	jmp	.L290
.L277:
	.loc 1 852 0
	movl	$128, -8(%ebp)
	jmp	.L290
.L280:
	.loc 1 854 0
	movl	$125, -8(%ebp)
	jmp	.L290
.L279:
	.loc 1 856 0
	movl	$126, -8(%ebp)
	jmp	.L290
.L288:
	.loc 1 858 0
	movl	$124, -8(%ebp)
	jmp	.L290
.L281:
	.loc 1 860 0
	movl	$123, -8(%ebp)
	jmp	.L290
.L282:
	.loc 1 862 0
	movl	$122, -8(%ebp)
	jmp	.L290
.L287:
	.loc 1 864 0
	movl	$114, -8(%ebp)
	jmp	.L290
.L286:
	.loc 1 866 0
	movl	$115, -8(%ebp)
	jmp	.L290
.L285:
	.loc 1 868 0
	movl	$116, -8(%ebp)
	jmp	.L290
.L284:
	.loc 1 870 0
	movl	$117, -8(%ebp)
	jmp	.L290
.L283:
	.loc 1 872 0
	movl	$129, -8(%ebp)
	jmp	.L290
.L274:
	.loc 1 875 0
	leal	__FUNCTION__.11697@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$875, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L290:
	movl	-8(%ebp), %eax
	.loc 1 877 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	reverse_condition_maybe_unordered, .-reverse_condition_maybe_unordered
	.section	.rodata
	.type	__FUNCTION__.11722, @object
	.size	__FUNCTION__.11722, 15
__FUNCTION__.11722:
	.string	"swap_condition"
	.text
.globl swap_condition
	.type	swap_condition, @function
swap_condition:
.LFB30:
	.loc 1 885 0
	pushl	%ebp
.LCFI60:
	movl	%esp, %ebp
.LCFI61:
	pushl	%ebx
.LCFI62:
	subl	$20, %esp
.LCFI63:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 886 0
	movl	8(%ebp), %eax
	subl	$112, %eax
	movl	%eax, -12(%ebp)
	cmpl	$17, -12(%ebp)
	ja	.L293
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	.L307@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L307:
	.long	.L294@GOTOFF
	.long	.L294@GOTOFF
	.long	.L295@GOTOFF
	.long	.L296@GOTOFF
	.long	.L297@GOTOFF
	.long	.L298@GOTOFF
	.long	.L299@GOTOFF
	.long	.L300@GOTOFF
	.long	.L301@GOTOFF
	.long	.L302@GOTOFF
	.long	.L294@GOTOFF
	.long	.L294@GOTOFF
	.long	.L294@GOTOFF
	.long	.L303@GOTOFF
	.long	.L304@GOTOFF
	.long	.L305@GOTOFF
	.long	.L306@GOTOFF
	.long	.L294@GOTOFF
	.text
.L294:
	.loc 1 894 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L308
.L296:
	.loc 1 897 0
	movl	$117, -8(%ebp)
	jmp	.L308
.L295:
	.loc 1 899 0
	movl	$116, -8(%ebp)
	jmp	.L308
.L298:
	.loc 1 901 0
	movl	$115, -8(%ebp)
	jmp	.L308
.L297:
	.loc 1 903 0
	movl	$114, -8(%ebp)
	jmp	.L308
.L300:
	.loc 1 905 0
	movl	$121, -8(%ebp)
	jmp	.L308
.L299:
	.loc 1 907 0
	movl	$120, -8(%ebp)
	jmp	.L308
.L302:
	.loc 1 909 0
	movl	$119, -8(%ebp)
	jmp	.L308
.L301:
	.loc 1 911 0
	movl	$118, -8(%ebp)
	jmp	.L308
.L306:
	.loc 1 913 0
	movl	$126, -8(%ebp)
	jmp	.L308
.L305:
	.loc 1 915 0
	movl	$125, -8(%ebp)
	jmp	.L308
.L304:
	.loc 1 917 0
	movl	$128, -8(%ebp)
	jmp	.L308
.L303:
	.loc 1 919 0
	movl	$127, -8(%ebp)
	jmp	.L308
.L293:
	.loc 1 922 0
	leal	__FUNCTION__.11722@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$922, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L308:
	movl	-8(%ebp), %eax
	.loc 1 924 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	swap_condition, .-swap_condition
	.section	.rodata
	.type	__FUNCTION__.11739, @object
	.size	__FUNCTION__.11739, 19
__FUNCTION__.11739:
	.string	"unsigned_condition"
	.text
.globl unsigned_condition
	.type	unsigned_condition, @function
unsigned_condition:
.LFB31:
	.loc 1 933 0
	pushl	%ebp
.LCFI64:
	movl	%esp, %ebp
.LCFI65:
	pushl	%ebx
.LCFI66:
	subl	$20, %esp
.LCFI67:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 934 0
	movl	8(%ebp), %eax
	subl	$112, %eax
	movl	%eax, -12(%ebp)
	cmpl	$9, -12(%ebp)
	ja	.L311
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	.L317@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L317:
	.long	.L312@GOTOFF
	.long	.L312@GOTOFF
	.long	.L313@GOTOFF
	.long	.L314@GOTOFF
	.long	.L315@GOTOFF
	.long	.L316@GOTOFF
	.long	.L312@GOTOFF
	.long	.L312@GOTOFF
	.long	.L312@GOTOFF
	.long	.L312@GOTOFF
	.text
.L312:
	.loc 1 942 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L318
.L314:
	.loc 1 945 0
	movl	$119, -8(%ebp)
	jmp	.L318
.L313:
	.loc 1 947 0
	movl	$118, -8(%ebp)
	jmp	.L318
.L316:
	.loc 1 949 0
	movl	$121, -8(%ebp)
	jmp	.L318
.L315:
	.loc 1 951 0
	movl	$120, -8(%ebp)
	jmp	.L318
.L311:
	.loc 1 954 0
	leal	__FUNCTION__.11739@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$954, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L318:
	movl	-8(%ebp), %eax
	.loc 1 956 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	unsigned_condition, .-unsigned_condition
	.section	.rodata
	.type	__FUNCTION__.11756, @object
	.size	__FUNCTION__.11756, 17
__FUNCTION__.11756:
	.string	"signed_condition"
	.text
.globl signed_condition
	.type	signed_condition, @function
signed_condition:
.LFB32:
	.loc 1 963 0
	pushl	%ebp
.LCFI68:
	movl	%esp, %ebp
.LCFI69:
	pushl	%ebx
.LCFI70:
	subl	$20, %esp
.LCFI71:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 964 0
	movl	8(%ebp), %eax
	subl	$112, %eax
	movl	%eax, -12(%ebp)
	cmpl	$9, -12(%ebp)
	ja	.L321
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	.L327@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L327:
	.long	.L322@GOTOFF
	.long	.L322@GOTOFF
	.long	.L322@GOTOFF
	.long	.L322@GOTOFF
	.long	.L322@GOTOFF
	.long	.L322@GOTOFF
	.long	.L323@GOTOFF
	.long	.L324@GOTOFF
	.long	.L325@GOTOFF
	.long	.L326@GOTOFF
	.text
.L322:
	.loc 1 972 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L328
.L324:
	.loc 1 975 0
	movl	$115, -8(%ebp)
	jmp	.L328
.L323:
	.loc 1 977 0
	movl	$114, -8(%ebp)
	jmp	.L328
.L326:
	.loc 1 979 0
	movl	$117, -8(%ebp)
	jmp	.L328
.L325:
	.loc 1 981 0
	movl	$116, -8(%ebp)
	jmp	.L328
.L321:
	.loc 1 984 0
	leal	__FUNCTION__.11756@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$984, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L328:
	movl	-8(%ebp), %eax
	.loc 1 986 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	signed_condition, .-signed_condition
.globl comparison_dominates_p
	.type	comparison_dominates_p, @function
comparison_dominates_p:
.LFB33:
	.loc 1 994 0
	pushl	%ebp
.LCFI72:
	movl	%esp, %ebp
.LCFI73:
	subl	$8, %esp
.LCFI74:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 998 0
	cmpl	$0, 8(%ebp)
	je	.L331
	cmpl	$0, 12(%ebp)
	jne	.L333
.L331:
	.loc 1 999 0
	movl	$0, -4(%ebp)
	jmp	.L334
.L333:
	.loc 1 1001 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L335
	.loc 1 1002 0
	movl	$1, -4(%ebp)
	jmp	.L334
.L335:
	.loc 1 1004 0
	movl	8(%ebp), %eax
	subl	$113, %eax
	movl	%eax, -8(%ebp)
	cmpl	$16, -8(%ebp)
	ja	.L337
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	.L349@GOTOFF(%eax,%ecx), %eax
	addl	%ecx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L349:
	.long	.L338@GOTOFF
	.long	.L339@GOTOFF
	.long	.L340@GOTOFF
	.long	.L339@GOTOFF
	.long	.L341@GOTOFF
	.long	.L337@GOTOFF
	.long	.L342@GOTOFF
	.long	.L337@GOTOFF
	.long	.L343@GOTOFF
	.long	.L344@GOTOFF
	.long	.L337@GOTOFF
	.long	.L345@GOTOFF
	.long	.L337@GOTOFF
	.long	.L346@GOTOFF
	.long	.L337@GOTOFF
	.long	.L347@GOTOFF
	.long	.L348@GOTOFF
	.text
.L345:
	.loc 1 1007 0
	cmpl	$127, 12(%ebp)
	je	.L350
	cmpl	$125, 12(%ebp)
	jne	.L337
.L350:
	.loc 1 1008 0
	movl	$1, -4(%ebp)
	jmp	.L334
.L338:
	.loc 1 1012 0
	cmpl	$116, 12(%ebp)
	je	.L353
	cmpl	$120, 12(%ebp)
	je	.L353
	cmpl	$114, 12(%ebp)
	je	.L353
	cmpl	$118, 12(%ebp)
	je	.L353
	cmpl	$123, 12(%ebp)
	jne	.L337
.L353:
	.loc 1 1014 0
	movl	$1, -4(%ebp)
	jmp	.L334
.L347:
	.loc 1 1018 0
	cmpl	$127, 12(%ebp)
	je	.L359
	cmpl	$112, 12(%ebp)
	jne	.L337
.L359:
	.loc 1 1019 0
	movl	$1, -4(%ebp)
	jmp	.L334
.L341:
	.loc 1 1023 0
	cmpl	$116, 12(%ebp)
	je	.L362
	cmpl	$112, 12(%ebp)
	je	.L362
	cmpl	$123, 12(%ebp)
	je	.L362
	cmpl	$129, 12(%ebp)
	jne	.L337
.L362:
	.loc 1 1024 0
	movl	$1, -4(%ebp)
	jmp	.L334
.L346:
	.loc 1 1028 0
	cmpl	$125, 12(%ebp)
	je	.L367
	cmpl	$112, 12(%ebp)
	jne	.L337
.L367:
	.loc 1 1029 0
	movl	$1, -4(%ebp)
	jmp	.L334
.L340:
	.loc 1 1033 0
	cmpl	$114, 12(%ebp)
	je	.L370
	cmpl	$112, 12(%ebp)
	je	.L370
	cmpl	$123, 12(%ebp)
	je	.L370
	cmpl	$129, 12(%ebp)
	jne	.L337
.L370:
	.loc 1 1034 0
	movl	$1, -4(%ebp)
	jmp	.L334
.L339:
	.loc 1 1039 0
	cmpl	$123, 12(%ebp)
	jne	.L337
	.loc 1 1040 0
	movl	$1, -4(%ebp)
	jmp	.L334
.L348:
	.loc 1 1044 0
	cmpl	$112, 12(%ebp)
	je	.L377
	cmpl	$123, 12(%ebp)
	jne	.L337
.L377:
	.loc 1 1045 0
	movl	$1, -4(%ebp)
	jmp	.L334
.L343:
	.loc 1 1049 0
	cmpl	$120, 12(%ebp)
	je	.L380
	cmpl	$112, 12(%ebp)
	jne	.L337
.L380:
	.loc 1 1050 0
	movl	$1, -4(%ebp)
	jmp	.L334
.L342:
	.loc 1 1054 0
	cmpl	$118, 12(%ebp)
	je	.L383
	cmpl	$112, 12(%ebp)
	jne	.L337
.L383:
	.loc 1 1055 0
	movl	$1, -4(%ebp)
	jmp	.L334
.L344:
	.loc 1 1059 0
	cmpl	$112, 12(%ebp)
	je	.L386
	cmpl	$124, 12(%ebp)
	je	.L386
	cmpl	$127, 12(%ebp)
	je	.L386
	cmpl	$128, 12(%ebp)
	je	.L386
	cmpl	$125, 12(%ebp)
	je	.L386
	cmpl	$126, 12(%ebp)
	jne	.L337
.L386:
	.loc 1 1061 0
	movl	$1, -4(%ebp)
	jmp	.L334
.L337:
	.loc 1 1068 0
	movl	$0, -4(%ebp)
.L334:
	movl	-4(%ebp), %eax
	.loc 1 1069 0
	leave
	ret
.LFE33:
	.size	comparison_dominates_p, .-comparison_dominates_p
.globl simplejump_p
	.type	simplejump_p, @function
simplejump_p:
.LFB34:
	.loc 1 1076 0
	pushl	%ebp
.LCFI75:
	movl	%esp, %ebp
.LCFI76:
	subl	$4, %esp
.LCFI77:
	.loc 1 1077 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L394
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L394
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	jne	.L394
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L394
	movl	$1, -4(%ebp)
	jmp	.L399
.L394:
	movl	$0, -4(%ebp)
.L399:
	movl	-4(%ebp), %eax
	.loc 1 1081 0
	leave
	ret
.LFE34:
	.size	simplejump_p, .-simplejump_p
.globl tablejump_p
	.type	tablejump_p, @function
tablejump_p:
.LFB35:
	.loc 1 1088 0
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
	.loc 1 1090 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L402
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L402
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L402
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L402
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L402
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L408
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L402
.L408:
	movl	$1, -24(%ebp)
	jmp	.L410
.L402:
	movl	$0, -24(%ebp)
.L410:
	movl	-24(%ebp), %eax
	.loc 1 1097 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	tablejump_p, .-tablejump_p
.globl condjump_p
	.type	condjump_p, @function
condjump_p:
.LFB36:
	.loc 1 1108 0
	pushl	%ebp
.LCFI82:
	movl	%esp, %ebp
.LCFI83:
	subl	$24, %esp
.LCFI84:
	.loc 1 1109 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1111 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L413
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	je	.L415
.L413:
	.loc 1 1113 0
	movl	$0, -24(%ebp)
	jmp	.L416
.L415:
	.loc 1 1115 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1116 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L417
	.loc 1 1117 0
	movl	$1, -24(%ebp)
	jmp	.L416
.L417:
	.loc 1 1119 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	jne	.L419
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	jne	.L421
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L423
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	je	.L423
.L421:
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	jne	.L419
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L423
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L419
.L423:
	movl	$1, -20(%ebp)
	jmp	.L427
.L419:
	movl	$0, -20(%ebp)
.L427:
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L416:
	movl	-24(%ebp), %eax
	.loc 1 1128 0
	leave
	ret
.LFE36:
	.size	condjump_p, .-condjump_p
.globl condjump_in_parallel_p
	.type	condjump_in_parallel_p, @function
condjump_in_parallel_p:
.LFB37:
	.loc 1 1139 0
	pushl	%ebp
.LCFI85:
	movl	%esp, %ebp
.LCFI86:
	subl	$20, %esp
.LCFI87:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1140 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1142 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	je	.L430
	.loc 1 1143 0
	movl	$0, -20(%ebp)
	jmp	.L432
.L430:
	.loc 1 1145 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1147 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L433
	.loc 1 1148 0
	movl	$0, -20(%ebp)
	jmp	.L432
.L433:
	.loc 1 1149 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	je	.L435
	.loc 1 1150 0
	movl	$0, -20(%ebp)
	jmp	.L432
.L435:
	.loc 1 1151 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L437
	.loc 1 1152 0
	movl	$1, -20(%ebp)
	jmp	.L432
.L437:
	.loc 1 1153 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	je	.L439
	.loc 1 1154 0
	movl	$0, -20(%ebp)
	jmp	.L432
.L439:
	.loc 1 1155 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %edx
	movl	global_rtl@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L441
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L443
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L441
.L443:
	.loc 1 1158 0
	movl	$1, -20(%ebp)
	jmp	.L432
.L441:
	.loc 1 1159 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %edx
	movl	global_rtl@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L445
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L447
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L445
.L447:
	.loc 1 1162 0
	movl	$1, -20(%ebp)
	jmp	.L432
.L445:
	.loc 1 1163 0
	movl	$0, -20(%ebp)
.L432:
	movl	-20(%ebp), %eax
	.loc 1 1164 0
	leave
	ret
.LFE37:
	.size	condjump_in_parallel_p, .-condjump_in_parallel_p
.globl pc_set
	.type	pc_set, @function
pc_set:
.LFB38:
	.loc 1 1171 0
	pushl	%ebp
.LCFI88:
	movl	%esp, %ebp
.LCFI89:
	subl	$20, %esp
.LCFI90:
	.loc 1 1173 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L451
	.loc 1 1174 0
	movl	$0, -20(%ebp)
	jmp	.L453
.L451:
	.loc 1 1175 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1179 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L454
	.loc 1 1180 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
.L454:
	.loc 1 1181 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L456
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	jne	.L456
	.loc 1 1182 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L453
.L456:
	.loc 1 1184 0
	movl	$0, -20(%ebp)
.L453:
	movl	-20(%ebp), %eax
	.loc 1 1185 0
	leave
	ret
.LFE38:
	.size	pc_set, .-pc_set
.globl any_uncondjump_p
	.type	any_uncondjump_p, @function
any_uncondjump_p:
.LFB39:
	.loc 1 1193 0
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	pushl	%ebx
.LCFI93:
	subl	$36, %esp
.LCFI94:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1194 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1195 0
	cmpl	$0, -8(%ebp)
	jne	.L461
	.loc 1 1196 0
	movl	$0, -24(%ebp)
	jmp	.L463
.L461:
	.loc 1 1197 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L464
	.loc 1 1198 0
	movl	$0, -24(%ebp)
	jmp	.L463
.L464:
	.loc 1 1199 0
	movl	$1, -24(%ebp)
.L463:
	movl	-24(%ebp), %eax
	.loc 1 1200 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	any_uncondjump_p, .-any_uncondjump_p
.globl any_condjump_p
	.type	any_condjump_p, @function
any_condjump_p:
.LFB40:
	.loc 1 1212 0
	pushl	%ebp
.LCFI95:
	movl	%esp, %ebp
.LCFI96:
	pushl	%ebx
.LCFI97:
	subl	$36, %esp
.LCFI98:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1213 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1216 0
	cmpl	$0, -16(%ebp)
	jne	.L468
	.loc 1 1217 0
	movl	$0, -28(%ebp)
	jmp	.L470
.L468:
	.loc 1 1218 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	je	.L471
	.loc 1 1219 0
	movl	$0, -28(%ebp)
	jmp	.L470
.L471:
	.loc 1 1221 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1222 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -8(%ebp)
	.loc 1 1224 0
	cmpl	$69, -8(%ebp)
	jne	.L473
	cmpl	$77, -12(%ebp)
	je	.L475
	cmpl	$61, -12(%ebp)
	je	.L475
.L473:
	cmpl	$69, -12(%ebp)
	jne	.L477
	cmpl	$77, -8(%ebp)
	je	.L475
	cmpl	$61, -8(%ebp)
	jne	.L477
.L475:
	movl	$1, -24(%ebp)
	jmp	.L480
.L477:
	movl	$0, -24(%ebp)
.L480:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L470:
	movl	-28(%ebp), %eax
	.loc 1 1226 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	any_condjump_p, .-any_condjump_p
.globl condjump_label
	.type	condjump_label, @function
condjump_label:
.LFB41:
	.loc 1 1233 0
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
	.loc 1 1234 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1236 0
	cmpl	$0, -8(%ebp)
	jne	.L483
	.loc 1 1237 0
	movl	$0, -24(%ebp)
	jmp	.L485
.L483:
	.loc 1 1238 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1239 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L486
	.loc 1 1240 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L485
.L486:
	.loc 1 1241 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	je	.L488
	.loc 1 1242 0
	movl	$0, -24(%ebp)
	jmp	.L485
.L488:
	.loc 1 1243 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L490
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L490
	.loc 1 1244 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L485
.L490:
	.loc 1 1245 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L493
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L493
	.loc 1 1246 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L485
.L493:
	.loc 1 1247 0
	movl	$0, -24(%ebp)
.L485:
	movl	-24(%ebp), %eax
	.loc 1 1248 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	condjump_label, .-condjump_label
	.type	returnjump_p_1, @function
returnjump_p_1:
.LFB42:
	.loc 1 1256 0
	pushl	%ebp
.LCFI103:
	movl	%esp, %ebp
.LCFI104:
	subl	$20, %esp
.LCFI105:
	.loc 1 1257 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1259 0
	cmpl	$0, -4(%ebp)
	je	.L498
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	je	.L500
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L498
	movl	-4(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L498
.L500:
	movl	$1, -20(%ebp)
	jmp	.L503
.L498:
	movl	$0, -20(%ebp)
.L503:
	movl	-20(%ebp), %eax
	.loc 1 1261 0
	leave
	ret
.LFE42:
	.size	returnjump_p_1, .-returnjump_p_1
.globl returnjump_p
	.type	returnjump_p, @function
returnjump_p:
.LFB43:
	.loc 1 1266 0
	pushl	%ebp
.LCFI106:
	movl	%esp, %ebp
.LCFI107:
	pushl	%ebx
.LCFI108:
	subl	$20, %esp
.LCFI109:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1267 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L506
	.loc 1 1268 0
	movl	$0, -8(%ebp)
	jmp	.L508
.L506:
	.loc 1 1269 0
	movl	8(%ebp), %eax
	addl	$44, %eax
	movl	$0, 8(%esp)
	leal	returnjump_p_1@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
	movl	%eax, -8(%ebp)
.L508:
	movl	-8(%ebp), %eax
	.loc 1 1270 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	returnjump_p, .-returnjump_p
.globl onlyjump_p
	.type	onlyjump_p, @function
onlyjump_p:
.LFB44:
	.loc 1 1278 0
	pushl	%ebp
.LCFI110:
	movl	%esp, %ebp
.LCFI111:
	pushl	%ebx
.LCFI112:
	subl	$36, %esp
.LCFI113:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1281 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L511
	.loc 1 1282 0
	movl	$0, -32(%ebp)
	jmp	.L513
.L511:
	.loc 1 1284 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L514
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L516
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L518
.L516:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -24(%ebp)
.L518:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L519
.L514:
	movl	$0, -28(%ebp)
.L519:
	movl	-28(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1285 0
	cmpl	$0, -8(%ebp)
	jne	.L520
	.loc 1 1286 0
	movl	$0, -32(%ebp)
	jmp	.L513
.L520:
	.loc 1 1287 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	je	.L522
	.loc 1 1288 0
	movl	$0, -32(%ebp)
	jmp	.L513
.L522:
	.loc 1 1289 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	je	.L524
	.loc 1 1290 0
	movl	$0, -32(%ebp)
	jmp	.L513
.L524:
	.loc 1 1292 0
	movl	$1, -32(%ebp)
.L513:
	movl	-32(%ebp), %eax
	.loc 1 1293 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	onlyjump_p, .-onlyjump_p
.globl follow_jumps
	.type	follow_jumps, @function
follow_jumps:
.LFB45:
	.loc 1 1363 0
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
	.loc 1 1366 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1369 0
	movl	$0, -12(%ebp)
	.loc 1 1370 0
	jmp	.L528
.L529:
.LBB14:
	.loc 1 1385 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L530
	.loc 1 1386 0
	movl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L532
.L533:
	.loc 1 1387 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L534
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	je	.L536
	movl	flag_test_coverage@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L534
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jle	.L534
.L536:
	.loc 1 1392 0
	movl	-16(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L539
.L534:
	.loc 1 1386 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L532:
	movl	-8(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jne	.L533
.L530:
	.loc 1 1395 0
	movl	-24(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L540
	.loc 1 1396 0
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L539
.L540:
	.loc 1 1398 0
	movl	-24(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1399 0
	cmpl	$0, -8(%ebp)
	je	.L542
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L544
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	je	.L544
.L542:
	.loc 1 1403 0
	movl	-24(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -16(%ebp)
.LBE14:
	.loc 1 1378 0
	addl	$1, -12(%ebp)
.L528:
	.loc 1 1370 0
	cmpl	$9, -12(%ebp)
	jg	.L544
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L544
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L544
	movl	-24(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L549
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	any_uncondjump_p@PLT
	testl	%eax, %eax
	je	.L549
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	jne	.L552
.L549:
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L544
.L552:
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L544
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L529
.L544:
	.loc 1 1405 0
	cmpl	$10, -12(%ebp)
	jne	.L554
	.loc 1 1406 0
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L539
.L554:
	.loc 1 1407 0
	movl	-16(%ebp), %eax
	movl	%eax, -40(%ebp)
.L539:
	movl	-40(%ebp), %eax
	.loc 1 1408 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	follow_jumps, .-follow_jumps
	.section	.rodata
	.type	__FUNCTION__.12202, @object
	.size	__FUNCTION__.12202, 16
__FUNCTION__.12202:
	.string	"mark_jump_label"
	.text
.globl mark_jump_label
	.type	mark_jump_label, @function
mark_jump_label:
.LFB46:
	.loc 1 1429 0
	pushl	%ebp
.LCFI118:
	movl	%esp, %ebp
.LCFI119:
	pushl	%ebx
.LCFI120:
	subl	$52, %esp
.LCFI121:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1430 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1434 0
	movl	-28(%ebp), %eax
	subl	$54, %eax
	movl	%eax, -40(%ebp)
	cmpl	$25, -40(%ebp)
	ja	.L558
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	.L564@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L564:
	.long	.L559@GOTOFF
	.long	.L559@GOTOFF
	.long	.L558@GOTOFF
	.long	.L558@GOTOFF
	.long	.L558@GOTOFF
	.long	.L594@GOTOFF
	.long	.L594@GOTOFF
	.long	.L558@GOTOFF
	.long	.L558@GOTOFF
	.long	.L558@GOTOFF
	.long	.L594@GOTOFF
	.long	.L594@GOTOFF
	.long	.L558@GOTOFF
	.long	.L558@GOTOFF
	.long	.L558@GOTOFF
	.long	.L594@GOTOFF
	.long	.L558@GOTOFF
	.long	.L594@GOTOFF
	.long	.L558@GOTOFF
	.long	.L558@GOTOFF
	.long	.L558@GOTOFF
	.long	.L558@GOTOFF
	.long	.L561@GOTOFF
	.long	.L562@GOTOFF
	.long	.L563@GOTOFF
	.long	.L594@GOTOFF
	.text
.L561:
	.loc 1 1446 0
	movl	$1, 16(%ebp)
	.loc 1 1447 0
	jmp	.L558
.L563:
	.loc 1 1450 0
	cmpl	$0, 16(%ebp)
	je	.L594
	.loc 1 1454 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L558
	.loc 1 1455 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pool_constant@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_jump_label@PLT
	.loc 1 1456 0
	jmp	.L558
.L562:
.LBB15:
	.loc 1 1460 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1464 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L569
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-88, %eax
	je	.L558
.L569:
	.loc 1 1468 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L571
	.loc 1 1469 0
	leal	__FUNCTION__.12202@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1469, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L571:
	.loc 1 1472 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L558
	.loc 1 1475 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1476 0
	cmpl	$0, 12(%ebp)
	je	.L574
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L576
.L574:
	.loc 1 1477 0
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 36(%eax)
.L576:
	.loc 1 1479 0
	cmpl	$0, 12(%ebp)
	je	.L594
	.loc 1 1481 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L579
	.loc 1 1482 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 76(%edx)
	jmp	.L594
.L579:
	.loc 1 1489 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$13, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L594
	.loc 1 1490 0
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$13, 4(%esp)
	movl	$4, (%esp)
	call	gen_rtx_fmt_ue@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 1494 0
	jmp	.L594
.L559:
.LBE15:
	.loc 1 1501 0
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L594
.LBB16:
	.loc 1 1503 0
	cmpl	$55, -28(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1505 0
	movl	$0, -24(%ebp)
	jmp	.L584
.L585:
	.loc 1 1506 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-24(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	mark_jump_label@PLT
	.loc 1 1505 0
	addl	$1, -24(%ebp)
.L584:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jg	.L585
	.loc 1 1508 0
	jmp	.L594
.L558:
.LBE16:
	.loc 1 1514 0
	movl	-28(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1515 0
	movl	-28(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	jmp	.L586
.L587:
	.loc 1 1517 0
	movl	-24(%ebp), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L588
	.loc 1 1518 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_jump_label@PLT
	jmp	.L590
.L588:
	.loc 1 1519 0
	movl	-24(%ebp), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L590
.LBB17:
	.loc 1 1522 0
	movl	$0, -8(%ebp)
	jmp	.L592
.L593:
	.loc 1 1523 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_jump_label@PLT
	.loc 1 1522 0
	addl	$1, -8(%ebp)
.L592:
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L593
.L590:
.LBE17:
	.loc 1 1515 0
	subl	$1, -24(%ebp)
.L586:
	cmpl	$0, -24(%ebp)
	jns	.L587
.L594:
	.loc 1 1526 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	mark_jump_label, .-mark_jump_label
.globl delete_jump
	.type	delete_jump, @function
delete_jump:
.LFB47:
	.loc 1 1535 0
	pushl	%ebp
.LCFI122:
	movl	%esp, %ebp
.LCFI123:
	pushl	%ebx
.LCFI124:
	subl	$36, %esp
.LCFI125:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1536 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L596
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L598
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L600
.L598:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -24(%ebp)
.L600:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L601
.L596:
	movl	$0, -28(%ebp)
.L601:
	movl	-28(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1538 0
	cmpl	$0, -8(%ebp)
	je	.L605
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	jne	.L605
	.loc 1 1539 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_computation
.L605:
	.loc 1 1540 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	delete_jump, .-delete_jump
	.section	.rodata
	.type	__FUNCTION__.12319, @object
	.size	__FUNCTION__.12319, 15
__FUNCTION__.12319:
	.string	"delete_barrier"
	.text
.globl delete_barrier
	.type	delete_barrier, @function
delete_barrier:
.LFB48:
	.loc 1 1547 0
	pushl	%ebp
.LCFI126:
	movl	%esp, %ebp
.LCFI127:
	pushl	%ebx
.LCFI128:
	subl	$20, %esp
.LCFI129:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1548 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L607
	.loc 1 1549 0
	leal	__FUNCTION__.12319@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1549, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L607:
	.loc 1 1551 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 1552 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	delete_barrier, .-delete_barrier
	.type	delete_prior_computation, @function
delete_prior_computation:
.LFB49:
	.loc 1 1562 0
	pushl	%ebp
.LCFI130:
	movl	%esp, %ebp
.LCFI131:
	pushl	%ebx
.LCFI132:
	subl	$84, %esp
.LCFI133:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1564 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1566 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1567 0
	jmp	.L611
.L612:
.LBB18:
	.loc 1 1571 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1575 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L613
	movl	-44(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L657
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L657
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$60, %ax
	jne	.L657
.L613:
	.loc 1 1584 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	je	.L657
	.loc 1 1587 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L619
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	je	.L657
.L619:
	.loc 1 1593 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	je	.L621
	.loc 1 1595 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	je	.L623
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L657
.L623:
	.loc 1 1598 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L625
.LBB19:
	.loc 1 1605 0
	movl	$0, -32(%ebp)
	jmp	.L627
.L628:
.LBB20:
	.loc 1 1607 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1609 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L629
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L631
.L629:
.LBE20:
	.loc 1 1605 0
	addl	$1, -32(%ebp)
.L627:
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-32(%ebp), %eax
	jg	.L628
.L631:
	.loc 1 1614 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L657
	.loc 1 1615 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_computation
	jmp	.L657
.L625:
.LBE19:
	.loc 1 1617 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L657
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L657
.LBB21:
	.loc 1 1620 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1624 0
	cmpl	$175, -24(%ebp)
	jg	.L637
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -60(%ebp)
	jmp	.L639
.L637:
	movl	$1, -60(%ebp)
.L639:
	movl	-24(%ebp), %eax
	addl	-60(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1626 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1630 0
	cmpl	$175, -16(%ebp)
	jg	.L640
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -56(%ebp)
	jmp	.L642
.L640:
	movl	$1, -56(%ebp)
.L642:
	movl	-16(%ebp), %eax
	addl	-56(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1632 0
	movl	-24(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L643
	movl	-20(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jg	.L643
	.loc 1 1634 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_computation
	.loc 1 1632 0
	jmp	.L657
.L643:
	.loc 1 1640 0
	movl	-24(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jg	.L657
	movl	-20(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L657
.LBB22:
	.loc 1 1645 0
	movl	-44(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$10, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 1649 0
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L648
.L649:
	.loc 1 1650 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$10, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	find_regno_note@PLT
	testl	%eax, %eax
	je	.L650
	.loc 1 1649 0
	addl	$1, -8(%ebp)
.L648:
	movl	-8(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L649
.L650:
	.loc 1 1653 0
	movl	-8(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L657
	.loc 1 1654 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_computation
	.loc 1 1658 0
	jmp	.L657
.L621:
.LBE22:
.LBE21:
	.loc 1 1664 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L653
	.loc 1 1666 0
	movl	-44(%ebp), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1667 0
	movl	-44(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 68(%edx)
	.loc 1 1668 0
	jmp	.L657
.L653:
.LBE18:
	.loc 1 1569 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -44(%ebp)
.L611:
	.loc 1 1567 0
	cmpl	$0, -44(%ebp)
	je	.L657
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	je	.L612
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L612
.L657:
	.loc 1 1671 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	delete_prior_computation, .-delete_prior_computation
	.type	delete_computation, @function
delete_computation:
.LFB50:
	.loc 1 1689 0
	pushl	%ebp
.LCFI134:
	movl	%esp, %ebp
.LCFI135:
	pushl	%ebx
.LCFI136:
	subl	$36, %esp
.LCFI137:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1716 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L659
.L660:
	.loc 1 1718 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1720 0
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$1, %al
	jne	.L661
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L661
	.loc 1 1725 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_prior_computation
.L661:
	.loc 1 1716 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L659:
	cmpl	$0, -12(%ebp)
	jne	.L660
	.loc 1 1728 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 1729 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	delete_computation, .-delete_computation
.globl delete_related_insns
	.type	delete_related_insns, @function
delete_related_insns:
.LFB51:
	.loc 1 1742 0
	pushl	%ebp
.LCFI138:
	movl	%esp, %ebp
.LCFI139:
	pushl	%ebx
.LCFI140:
	subl	$68, %esp
.LCFI141:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1743 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	.loc 1 1745 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1747 0
	jmp	.L667
.L668:
	.loc 1 1748 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
.L667:
	.loc 1 1747 0
	cmpl	$0, -40(%ebp)
	je	.L669
	movl	-40(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L668
.L669:
	.loc 1 1751 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L671
	.loc 1 1752 0
	movl	-40(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L673
.L671:
	.loc 1 1754 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 1759 0
	cmpl	$0, -40(%ebp)
	je	.L674
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L674
	.loc 1 1760 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
.L674:
	.loc 1 1765 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L677
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L677
.LBB23:
	.loc 1 1767 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1769 0
	movl	-32(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L680
	.loc 1 1774 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 1780 0
	jmp	.L682
.L683:
	.loc 1 1781 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
.L682:
	.loc 1 1780 0
	cmpl	$0, -40(%ebp)
	je	.L684
	movl	-40(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L683
.L684:
	.loc 1 1782 0
	movl	-40(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L673
.L680:
	.loc 1 1784 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L677
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L677
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L688
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L677
.L688:
	.loc 1 1793 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L677:
.LBE23:
	.loc 1 1799 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L690
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L692
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L690
.L692:
.LBB24:
	.loc 1 1803 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1804 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1805 0
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1807 0
	movl	$0, -20(%ebp)
	jmp	.L694
.L695:
	.loc 1 1808 0
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L696
	.loc 1 1809 0
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L696:
	.loc 1 1807 0
	addl	$1, -20(%ebp)
.L694:
	movl	-20(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L695
	.loc 1 1810 0
	jmp	.L699
.L700:
	.loc 1 1811 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
.L699:
	.loc 1 1810 0
	cmpl	$0, -40(%ebp)
	je	.L701
	movl	-40(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L700
.L701:
	.loc 1 1812 0
	movl	-40(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L673
.L690:
.LBE24:
	.loc 1 1816 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	je	.L703
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L712
.L703:
	.loc 1 1817 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L706
.L707:
	.loc 1 1818 0
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$13, %al
	jne	.L708
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L708
	.loc 1 1821 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L708
	.loc 1 1822 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L708:
	.loc 1 1817 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -44(%ebp)
.L706:
	cmpl	$0, -44(%ebp)
	jne	.L707
	.loc 1 1824 0
	jmp	.L712
.L713:
	.loc 1 1825 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
.L712:
	.loc 1 1824 0
	cmpl	$0, -36(%ebp)
	je	.L714
	movl	-36(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L713
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L713
.L714:
	.loc 1 1831 0
	cmpl	$0, -48(%ebp)
	je	.L717
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L717
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L717
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L721
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L717
.L721:
	.loc 1 1836 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	movl	%eax, -40(%ebp)
.L717:
	.loc 1 1840 0
	cmpl	$0, -48(%ebp)
	je	.L723
	cmpl	$0, -36(%ebp)
	je	.L723
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L723
	.loc 1 1843 0
	jmp	.L741
.L728:
.LBB25:
	.loc 1 1848 0
	cmpl	$47, -8(%ebp)
	jne	.L729
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-91, %eax
	je	.L729
	.loc 1 1850 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1848 0
	jmp	.L727
.L729:
	.loc 1 1852 0
	cmpl	$46, -8(%ebp)
	jne	.L732
	movl	-40(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L732
	.loc 1 1853 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1852 0
	jmp	.L727
.L732:
	.loc 1 1859 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	movl	%eax, -40(%ebp)
.L727:
.L741:
	.loc 1 1843 0
	cmpl	$0, -40(%ebp)
	je	.L723
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L728
	cmpl	$47, -8(%ebp)
	je	.L728
	cmpl	$45, -8(%ebp)
	je	.L728
	cmpl	$46, -8(%ebp)
	jne	.L723
	movl	-40(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L728
.L723:
.LBE25:
	.loc 1 1863 0
	movl	-40(%ebp), %eax
	movl	%eax, -56(%ebp)
.L673:
	movl	-56(%ebp), %eax
	.loc 1 1864 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	delete_related_insns, .-delete_related_insns
.globl next_nondeleted_insn
	.type	next_nondeleted_insn, @function
next_nondeleted_insn:
.LFB52:
	.loc 1 1872 0
	pushl	%ebp
.LCFI142:
	movl	%esp, %ebp
.LCFI143:
	.loc 1 1873 0
	jmp	.L743
.L744:
	.loc 1 1874 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L743:
	.loc 1 1873 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L744
	.loc 1 1875 0
	movl	8(%ebp), %eax
	.loc 1 1876 0
	popl	%ebp
	ret
.LFE52:
	.size	next_nondeleted_insn, .-next_nondeleted_insn
.globl delete_for_peephole
	.type	delete_for_peephole, @function
delete_for_peephole:
.LFB53:
	.loc 1 1886 0
	pushl	%ebp
.LCFI144:
	movl	%esp, %ebp
.LCFI145:
	subl	$16, %esp
.LCFI146:
	.loc 1 1887 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L748:
.LBB26:
	.loc 1 1891 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1892 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1894 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L749
	.loc 1 1896 0
	movl	-12(%ebp), %eax
	movzbl	3(%eax), %edx
	orl	$8, %edx
	movb	%dl, 3(%eax)
	.loc 1 1901 0
	cmpl	$0, -4(%ebp)
	je	.L751
	.loc 1 1902 0
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 20(%edx)
.L751:
	.loc 1 1904 0
	cmpl	$0, -8(%ebp)
	je	.L749
	.loc 1 1905 0
	movl	-8(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, 12(%edx)
.L749:
	.loc 1 1908 0
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L756
	.loc 1 1910 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1911 0
	jmp	.L748
.L756:
.LBE26:
	.loc 1 1917 0
	leave
	ret
.LFE53:
	.size	delete_for_peephole, .-delete_for_peephole
	.section	.rodata
.LC1:
	.string	"will never be executed"
	.text
.globl never_reached_warning
	.type	never_reached_warning, @function
never_reached_warning:
.LFB54:
	.loc 1 1931 0
	pushl	%ebp
.LCFI147:
	movl	%esp, %ebp
.LCFI148:
	pushl	%ebx
.LCFI149:
	subl	$52, %esp
.LCFI150:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1933 0
	movl	$0, -24(%ebp)
	.loc 1 1934 0
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	.loc 1 1936 0
	movl	warn_notreached@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L783
	.loc 1 1942 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
.L760:
.LBB27:
	.loc 1 1945 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1946 0
	cmpl	$0, -8(%ebp)
	je	.L764
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L764
	.loc 1 1949 0
	movl	-8(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1950 0
	jmp	.L760
.L765:
.LBE27:
	.loc 1 1957 0
	cmpl	$0, 12(%ebp)
	jne	.L766
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L768
.L766:
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L768
	.loc 1 1961 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L770
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	js	.L770
	.loc 1 1964 0
	cmpl	$0, -24(%ebp)
	jne	.L773
	.loc 1 1965 0
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L776
.L773:
	.loc 1 1967 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %edx
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %eax
	orl	%eax, -20(%ebp)
	.loc 1 1961 0
	jmp	.L776
.L770:
	.loc 1 1970 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L776
	.loc 1 1972 0
	cmpl	$0, -12(%ebp)
	jne	.L768
	.loc 1 1974 0
	movl	$1, -16(%ebp)
.L776:
	.loc 1 1977 0
	movl	-28(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L779
	.loc 1 1978 0
	movl	$1, -12(%ebp)
.L779:
	.loc 1 1955 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
.L764:
	cmpl	$0, -28(%ebp)
	jne	.L765
.L768:
	.loc 1 1980 0
	cmpl	$0, -20(%ebp)
	je	.L783
	cmpl	$0, -16(%ebp)
	je	.L783
	.loc 1 1981 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %edx
	movl	-24(%ebp), %eax
	movl	36(%eax), %ecx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	warning_with_file_and_line@PLT
.L783:
	.loc 1 1984 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	never_reached_warning, .-never_reached_warning
	.type	redirect_exp_1, @function
redirect_exp_1:
.LFB55:
	.loc 1 1994 0
	pushl	%ebp
.LCFI151:
	movl	%esp, %ebp
.LCFI152:
	pushl	%ebx
.LCFI153:
	subl	$52, %esp
.LCFI154:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1995 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1996 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 2000 0
	cmpl	$77, -24(%ebp)
	jne	.L785
	.loc 1 2002 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L793
.LBB28:
	.loc 1 2005 0
	cmpl	$0, 16(%ebp)
	je	.L789
	.loc 1 2006 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$77, (%esp)
	call	gen_rtx_fmt_u00@PLT
	movl	%eax, -12(%ebp)
	jmp	.L791
.L789:
	.loc 1 2008 0
	movl	$0, 4(%esp)
	movl	$61, (%esp)
	call	gen_rtx_fmt_@PLT
	movl	%eax, -12(%ebp)
.L791:
	.loc 1 2010 0
	movl	$1, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 2011 0
	jmp	.L812
.L785:
.LBE28:
	.loc 1 2014 0
	cmpl	$61, -24(%ebp)
	jne	.L793
	cmpl	$0, 12(%ebp)
	jne	.L793
	.loc 1 2016 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$77, (%esp)
	call	gen_rtx_fmt_u00@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2017 0
	movl	20(%ebp), %eax
	addl	$44, %eax
	cmpl	8(%ebp), %eax
	jne	.L796
	.loc 1 2018 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -28(%ebp)
.L796:
	.loc 1 2019 0
	movl	$1, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 2020 0
	jmp	.L812
.L793:
	.loc 1 2023 0
	cmpl	$57, -24(%ebp)
	jne	.L798
	cmpl	$0, 16(%ebp)
	jne	.L798
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L798
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L798
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L798
	.loc 1 2027 0
	movl	$0, 4(%esp)
	movl	$61, (%esp)
	call	gen_rtx_fmt_@PLT
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 2028 0
	jmp	.L812
.L798:
	.loc 1 2031 0
	movl	-24(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2032 0
	movl	-24(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L804
.L805:
	.loc 1 2034 0
	movl	-20(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L806
	.loc 1 2035 0
	movl	-20(%ebp), %eax
	sall	$3, %eax
	addl	-28(%ebp), %eax
	leal	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	redirect_exp_1
	jmp	.L808
.L806:
	.loc 1 2036 0
	movl	-20(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L808
.LBB29:
	.loc 1 2039 0
	movl	$0, -8(%ebp)
	jmp	.L810
.L811:
	.loc 1 2040 0
	movl	-20(%ebp), %edx
	movl	-28(%ebp), %eax
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
	call	redirect_exp_1
	.loc 1 2039 0
	addl	$1, -8(%ebp)
.L810:
	movl	-20(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L811
.L808:
.LBE29:
	.loc 1 2032 0
	subl	$1, -20(%ebp)
.L804:
	cmpl	$0, -20(%ebp)
	jns	.L805
.L812:
	.loc 1 2043 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	redirect_exp_1, .-redirect_exp_1
	.type	redirect_exp, @function
redirect_exp:
.LFB56:
	.loc 1 2051 0
	pushl	%ebp
.LCFI155:
	movl	%esp, %ebp
.LCFI156:
	pushl	%ebx
.LCFI157:
	subl	$36, %esp
.LCFI158:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2054 0
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L814
	.loc 1 2055 0
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	addl	$4, %eax
	movl	%eax, -8(%ebp)
	jmp	.L816
.L814:
	.loc 1 2057 0
	movl	16(%ebp), %eax
	addl	$44, %eax
	movl	%eax, -8(%ebp)
.L816:
	.loc 1 2059 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_exp_1
	.loc 1 2060 0
	call	num_validated_changes@PLT
	testl	%eax, %eax
	jne	.L817
	.loc 1 2061 0
	movl	$0, -24(%ebp)
	jmp	.L819
.L817:
	.loc 1 2063 0
	call	apply_change_group@PLT
	movl	%eax, -24(%ebp)
.L819:
	movl	-24(%ebp), %eax
	.loc 1 2064 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	redirect_exp, .-redirect_exp
.globl redirect_jump_1
	.type	redirect_jump_1, @function
redirect_jump_1:
.LFB57:
	.loc 1 2073 0
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
	.loc 1 2074 0
	call	num_validated_changes@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2077 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L822
	.loc 1 2078 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	addl	$4, %eax
	movl	%eax, -8(%ebp)
	jmp	.L824
.L822:
	.loc 1 2080 0
	movl	8(%ebp), %eax
	addl	$44, %eax
	movl	%eax, -8(%ebp)
.L824:
	.loc 1 2082 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_exp_1
	.loc 1 2083 0
	call	num_validated_changes@PLT
	cmpl	-12(%ebp), %eax
	setg	%al
	movzbl	%al, %eax
	.loc 1 2084 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	redirect_jump_1, .-redirect_jump_1
.globl redirect_jump
	.type	redirect_jump, @function
redirect_jump:
.LFB58:
	.loc 1 2100 0
	pushl	%ebp
.LCFI163:
	movl	%esp, %ebp
.LCFI164:
	pushl	%ebx
.LCFI165:
	subl	$36, %esp
.LCFI166:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2101 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2103 0
	movl	12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jne	.L827
	.loc 1 2104 0
	movl	$1, -24(%ebp)
	jmp	.L829
.L827:
	.loc 1 2106 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_exp
	testl	%eax, %eax
	jne	.L830
	.loc 1 2107 0
	movl	$0, -24(%ebp)
	jmp	.L829
.L830:
	.loc 1 2109 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 76(%edx)
	.loc 1 2110 0
	cmpl	$0, 12(%ebp)
	je	.L832
	.loc 1 2111 0
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 36(%eax)
.L832:
	.loc 1 2115 0
	cmpl	$0, -8(%ebp)
	je	.L834
	cmpl	$0, 12(%ebp)
	je	.L834
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L834
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L834
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	cmpl	$-91, %eax
	jne	.L834
	.loc 1 2119 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$-91, (%esp)
	call	emit_note_after@PLT
.L834:
	.loc 1 2121 0
	cmpl	$0, -8(%ebp)
	je	.L840
	movl	-8(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 36(%eax)
	movl	-8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L840
	cmpl	$0, 16(%ebp)
	je	.L840
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L840
	.loc 1 2124 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L840:
	.loc 1 2126 0
	movl	$1, -24(%ebp)
.L829:
	movl	-24(%ebp), %eax
	.loc 1 2127 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	redirect_jump, .-redirect_jump
	.section	.rodata
	.type	__FUNCTION__.12884, @object
	.size	__FUNCTION__.12884, 13
__FUNCTION__.12884:
	.string	"invert_exp_1"
	.text
	.type	invert_exp_1, @function
invert_exp_1:
.LFB59:
	.loc 1 2135 0
	pushl	%ebp
.LCFI167:
	movl	%esp, %ebp
.LCFI168:
	pushl	%ebx
.LCFI169:
	subl	$52, %esp
.LCFI170:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2137 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2139 0
	cmpl	$0, -20(%ebp)
	jne	.L847
	.loc 1 2140 0
	leal	__FUNCTION__.12884@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2140, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L847:
	.loc 1 2141 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2143 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 2145 0
	cmpl	$82, -24(%ebp)
	jne	.L849
.LBB30:
	.loc 1 2147 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2156 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	reversed_comparison_code@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2158 0
	cmpl	$0, -8(%ebp)
	je	.L851
	.loc 1 2160 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	-20(%ebp), %edx
	addl	$4, %edx
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 2165 0
	jmp	.L854
.L851:
	.loc 1 2168 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2169 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	-20(%ebp), %edx
	addl	$12, %edx
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 2170 0
	movl	-20(%ebp), %edx
	addl	$20, %edx
	movl	$1, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	jmp	.L854
.L849:
.LBE30:
	.loc 1 2173 0
	leal	__FUNCTION__.12884@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2173, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L854:
	.loc 1 2174 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE59:
	.size	invert_exp_1, .-invert_exp_1
	.type	invert_exp, @function
invert_exp:
.LFB60:
	.loc 1 2184 0
	pushl	%ebp
.LCFI171:
	movl	%esp, %ebp
.LCFI172:
	pushl	%ebx
.LCFI173:
	subl	$20, %esp
.LCFI174:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2185 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_exp_1
	.loc 1 2186 0
	call	num_validated_changes@PLT
	testl	%eax, %eax
	jne	.L856
	.loc 1 2187 0
	movl	$0, -8(%ebp)
	jmp	.L858
.L856:
	.loc 1 2189 0
	call	apply_change_group@PLT
	movl	%eax, -8(%ebp)
.L858:
	movl	-8(%ebp), %eax
	.loc 1 2190 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE60:
	.size	invert_exp, .-invert_exp
.globl invert_jump_1
	.type	invert_jump_1, @function
invert_jump_1:
.LFB61:
	.loc 1 2200 0
	pushl	%ebp
.LCFI175:
	movl	%esp, %ebp
.LCFI176:
	pushl	%ebx
.LCFI177:
	subl	$36, %esp
.LCFI178:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2203 0
	call	num_validated_changes@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2204 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_exp_1
	.loc 1 2205 0
	call	num_validated_changes@PLT
	cmpl	-8(%ebp), %eax
	jne	.L861
	.loc 1 2206 0
	movl	$0, -24(%ebp)
	jmp	.L863
.L861:
	.loc 1 2208 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_jump_1@PLT
	movl	%eax, -24(%ebp)
.L863:
	movl	-24(%ebp), %eax
	.loc 1 2209 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE61:
	.size	invert_jump_1, .-invert_jump_1
	.section	.rodata
	.type	__FUNCTION__.12934, @object
	.size	__FUNCTION__.12934, 12
__FUNCTION__.12934:
	.string	"invert_jump"
	.text
.globl invert_jump
	.type	invert_jump, @function
invert_jump:
.LFB62:
	.loc 1 2218 0
	pushl	%ebp
.LCFI179:
	movl	%esp, %ebp
.LCFI180:
	pushl	%ebx
.LCFI181:
	subl	$20, %esp
.LCFI182:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2224 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_exp
	testl	%eax, %eax
	jne	.L866
	.loc 1 2225 0
	movl	$0, -8(%ebp)
	jmp	.L868
.L866:
	.loc 1 2227 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_jump@PLT
	testl	%eax, %eax
	je	.L869
	.loc 1 2229 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_br_probabilities@PLT
	.loc 1 2231 0
	movl	$1, -8(%ebp)
	jmp	.L868
.L869:
	.loc 1 2234 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_exp
	testl	%eax, %eax
	jne	.L871
	.loc 1 2236 0
	leal	__FUNCTION__.12934@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2236, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L871:
	.loc 1 2238 0
	movl	$0, -8(%ebp)
.L868:
	movl	-8(%ebp), %eax
	.loc 1 2239 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE62:
	.size	invert_jump, .-invert_jump
	.section	.rodata
	.type	__FUNCTION__.12981, @object
	.size	__FUNCTION__.12981, 23
__FUNCTION__.12981:
	.string	"rtx_renumbered_equal_p"
	.text
.globl rtx_renumbered_equal_p
	.type	rtx_renumbered_equal_p, @function
rtx_renumbered_equal_p:
.LFB63:
	.loc 1 2258 0
	pushl	%ebp
.LCFI183:
	movl	%esp, %ebp
.LCFI184:
	pushl	%edi
.LCFI185:
	pushl	%esi
.LCFI186:
	pushl	%ebx
.LCFI187:
	subl	$92, %esp
.LCFI188:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2260 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -44(%ebp)
	.loc 1 2263 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L875
	.loc 1 2264 0
	movl	$1, -72(%ebp)
	jmp	.L877
.L875:
	.loc 1 2266 0
	cmpl	$71, -44(%ebp)
	je	.L878
	cmpl	$73, -44(%ebp)
	jne	.L880
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L880
.L878:
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L882
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L880
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L880
.L882:
.LBB31:
	.loc 1 2270 0
	movl	$-1, -36(%ebp)
	movl	$-1, -32(%ebp)
	.loc 1 2271 0
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	.loc 1 2273 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	je	.L885
	.loc 1 2274 0
	movl	$0, -72(%ebp)
	jmp	.L877
.L885:
	.loc 1 2278 0
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L887
	.loc 1 2279 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	movl	%eax, -72(%ebp)
	jmp	.L877
.L887:
	.loc 1 2281 0
	cmpl	$73, -44(%ebp)
	jne	.L889
	.loc 1 2283 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2284 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2286 0
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L893
	.loc 1 2288 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	-28(%ebp), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edi
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2292 0
	movl	$0, -28(%ebp)
	jmp	.L893
.L889:
	.loc 1 2297 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2298 0
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L893
	.loc 1 2299 0
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -36(%ebp)
.L893:
	.loc 1 2302 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L895
	.loc 1 2304 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2305 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2307 0
	movl	-32(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L899
	.loc 1 2309 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	-24(%ebp), %esi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edi
	movl	-32(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2313 0
	movl	$0, -24(%ebp)
	jmp	.L899
.L895:
	.loc 1 2318 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2319 0
	movl	-32(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L899
	.loc 1 2320 0
	movl	-32(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -32(%ebp)
.L899:
	.loc 1 2323 0
	cmpl	$0, -36(%ebp)
	js	.L901
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jne	.L901
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jne	.L901
	movl	$1, -68(%ebp)
	jmp	.L905
.L901:
	movl	$0, -68(%ebp)
.L905:
	movl	-68(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L877
.L880:
.LBE31:
	.loc 1 2328 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-44(%ebp), %eax
	je	.L906
	.loc 1 2329 0
	movl	$0, -72(%ebp)
	jmp	.L877
.L906:
	.loc 1 2331 0
	movl	-44(%ebp), %edx
	subl	$46, %edx
	movl	%edx, -76(%ebp)
	cmpl	$33, -76(%ebp)
	ja	.L908
	movl	-76(%ebp), %eax
	sall	$2, %eax
	movl	.L914@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L914:
	.long	.L909@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L910@GOTOFF
	.long	.L910@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L911@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L910@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L908@GOTOFF
	.long	.L912@GOTOFF
	.long	.L913@GOTOFF
	.long	.L910@GOTOFF
	.text
.L910:
	.loc 1 2337 0
	movl	$0, -72(%ebp)
	jmp	.L877
.L911:
	.loc 1 2340 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -60(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-64(%ebp), %eax
	xorl	%esi, %eax
	movl	-60(%ebp), %edx
	xorl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -72(%ebp)
	jmp	.L877
.L912:
	.loc 1 2344 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L915
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L917
.L915:
	.loc 1 2345 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -72(%ebp)
	jmp	.L877
.L917:
	.loc 1 2349 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	next_real_insn@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	next_real_insn@PLT
	cmpl	%eax, %esi
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -72(%ebp)
	jmp	.L877
.L913:
	.loc 1 2353 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -72(%ebp)
	jmp	.L877
.L909:
	.loc 1 2357 0
	movl	$0, -72(%ebp)
	jmp	.L877
.L908:
	.loc 1 2365 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	je	.L918
	.loc 1 2366 0
	movl	$0, -72(%ebp)
	jmp	.L877
.L918:
	.loc 1 2372 0
	cmpl	$113, -44(%ebp)
	je	.L920
	cmpl	$112, -44(%ebp)
	je	.L920
	movl	-44(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$99, %al
	jne	.L923
.L920:
	cmpl	$85, -44(%ebp)
	je	.L923
	.loc 1 2374 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_renumbered_equal_p@PLT
	testl	%eax, %eax
	je	.L925
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_renumbered_equal_p@PLT
	testl	%eax, %eax
	jne	.L927
.L925:
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_renumbered_equal_p@PLT
	testl	%eax, %eax
	je	.L928
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_renumbered_equal_p@PLT
	testl	%eax, %eax
	je	.L928
.L927:
	movl	$1, -56(%ebp)
	jmp	.L930
.L928:
	movl	$0, -56(%ebp)
.L930:
	movl	-56(%ebp), %ecx
	movl	%ecx, -72(%ebp)
	jmp	.L877
.L923:
	.loc 1 2378 0
	movl	-44(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	je	.L931
	movl	-44(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$50, %al
	jne	.L933
.L931:
	.loc 1 2379 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_renumbered_equal_p@PLT
	testl	%eax, %eax
	je	.L934
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_renumbered_equal_p@PLT
	testl	%eax, %eax
	je	.L934
	movl	$1, -52(%ebp)
	jmp	.L937
.L934:
	movl	$0, -52(%ebp)
.L937:
	movl	-52(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L877
.L933:
	.loc 1 2381 0
	movl	-44(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$49, %al
	jne	.L938
	.loc 1 2382 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_renumbered_equal_p@PLT
	movl	%eax, -72(%ebp)
	jmp	.L877
.L938:
	.loc 1 2387 0
	movl	-44(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2388 0
	movl	-44(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -48(%ebp)
	jmp	.L940
.L941:
.LBB32:
	.loc 1 2391 0
	movl	-48(%ebp), %eax
	addl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -80(%ebp)
	cmpl	$71, -80(%ebp)
	ja	.L942
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	.L951@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L951:
	.long	.L954@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L944@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L945@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L946@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L942@GOTOFF
	.long	.L947@GOTOFF
	.long	.L948@GOTOFF
	.long	.L949@GOTOFF
	.long	.L942@GOTOFF
	.long	.L950@GOTOFF
	.text
.L950:
	.loc 1 2394 0
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	8(%eax,%edx,8), %edi
	movl	-48(%ebp), %edx
	movl	12(%ebp), %eax
	leal	4(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L954
	.loc 1 2395 0
	movl	$0, -72(%ebp)
	jmp	.L877
.L946:
	.loc 1 2399 0
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-48(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	cmpl	%eax, %ecx
	je	.L954
	.loc 1 2400 0
	movl	$0, -72(%ebp)
	jmp	.L877
.L948:
	.loc 1 2404 0
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-48(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	cmpl	%eax, %ecx
	je	.L954
	.loc 1 2405 0
	movl	$0, -72(%ebp)
	jmp	.L877
.L947:
	.loc 1 2409 0
	movl	-48(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L954
	.loc 1 2410 0
	movl	$0, -72(%ebp)
	jmp	.L877
.L945:
	.loc 1 2414 0
	movl	-48(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_renumbered_equal_p@PLT
	testl	%eax, %eax
	jne	.L954
	.loc 1 2415 0
	movl	$0, -72(%ebp)
	jmp	.L877
.L949:
	.loc 1 2419 0
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-48(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	cmpl	%eax, %ecx
	je	.L954
	.loc 1 2420 0
	movl	$0, -72(%ebp)
	jmp	.L877
.L944:
	.loc 1 2426 0
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %ecx
	movl	-48(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	je	.L964
	.loc 1 2427 0
	movl	$0, -72(%ebp)
	jmp	.L877
.L964:
	.loc 1 2428 0
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L966
.L967:
	.loc 1 2429 0
	movl	-48(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %ecx
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_renumbered_equal_p@PLT
	testl	%eax, %eax
	jne	.L968
	.loc 1 2430 0
	movl	$0, -72(%ebp)
	jmp	.L877
.L968:
	.loc 1 2428 0
	subl	$1, -20(%ebp)
.L966:
	cmpl	$0, -20(%ebp)
	jns	.L967
	.loc 1 2431 0
	jmp	.L954
.L942:
	.loc 1 2434 0
	leal	__FUNCTION__.12981@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2434, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L954:
.LBE32:
	.loc 1 2388 0
	subl	$1, -48(%ebp)
.L940:
	cmpl	$0, -48(%ebp)
	jns	.L941
	.loc 1 2437 0
	movl	$1, -72(%ebp)
.L877:
	movl	-72(%ebp), %eax
	.loc 1 2438 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE63:
	.size	rtx_renumbered_equal_p, .-rtx_renumbered_equal_p
.globl true_regnum
	.type	true_regnum, @function
true_regnum:
.LFB64:
	.loc 1 2448 0
	pushl	%ebp
.LCFI189:
	movl	%esp, %ebp
.LCFI190:
	pushl	%esi
.LCFI191:
	pushl	%ebx
.LCFI192:
	subl	$48, %esp
.LCFI193:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2449 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L974
	.loc 1 2451 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L976
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L976
	.loc 1 2452 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -28(%ebp)
	jmp	.L979
.L976:
	.loc 1 2453 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L979
.L974:
	.loc 1 2455 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L980
.LBB33:
	.loc 1 2457 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	true_regnum@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2458 0
	cmpl	$0, -12(%ebp)
	js	.L980
	cmpl	$175, -12(%ebp)
	jg	.L980
	.loc 1 2459 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L979
.L980:
.LBE33:
	.loc 1 2463 0
	movl	$-1, -28(%ebp)
.L979:
	movl	-28(%ebp), %eax
	.loc 1 2464 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE64:
	.size	true_regnum, .-true_regnum
	.section	.rodata
	.type	__FUNCTION__.13299, @object
	.size	__FUNCTION__.13299, 16
__FUNCTION__.13299:
	.string	"reg_or_subregno"
	.text
.globl reg_or_subregno
	.type	reg_or_subregno, @function
reg_or_subregno:
.LFB65:
	.loc 1 2470 0
	pushl	%ebp
.LCFI194:
	movl	%esp, %ebp
.LCFI195:
	pushl	%ebx
.LCFI196:
	subl	$20, %esp
.LCFI197:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2471 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L986
	.loc 1 2472 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L988
.L986:
	.loc 1 2473 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L989
	.loc 1 2474 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L988
.L989:
	.loc 1 2475 0
	leal	__FUNCTION__.13299@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2475, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L988:
	movl	-8(%ebp), %eax
	.loc 1 2476 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE65:
	.size	reg_or_subregno, .-reg_or_subregno
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
	.byte	0x4
	.long	.LCFI18-.LCFI16
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
	.long	.LCFI19-.LFB20
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
	.long	.LCFI31-.LCFI28
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
	.long	.LCFI32-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI33-.LCFI32
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
	.long	.LCFI51-.LCFI48
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
	.long	.LCFI52-.LFB28
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
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI56-.LFB29
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
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI60-.LFB30
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI64-.LFB31
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
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI68-.LFB32
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
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI72-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI73-.LCFI72
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI75-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI76-.LCFI75
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
	.long	.LCFI78-.LFB35
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
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI82-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI83-.LCFI82
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI85-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI86-.LCFI85
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
	.long	.LCFI88-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI89-.LCFI88
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
	.long	.LCFI91-.LFB39
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
	.long	.LCFI98-.LCFI96
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
	.long	.LCFI99-.LFB41
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
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI103-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI104-.LCFI103
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
	.long	.LCFI106-.LFB43
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
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI110-.LFB44
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
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI114-.LFB45
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
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI118-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI119-.LCFI118
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI121-.LCFI119
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
	.long	.LCFI122-.LFB47
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
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI126-.LFB48
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
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI130-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI131-.LCFI130
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI133-.LCFI131
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
	.long	.LCFI134-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI135-.LCFI134
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI137-.LCFI135
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
	.long	.LCFI138-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI139-.LCFI138
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI141-.LCFI139
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
	.long	.LCFI142-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI143-.LCFI142
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI144-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI145-.LCFI144
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
	.long	.LCFI147-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI148-.LCFI147
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI150-.LCFI148
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
	.long	.LCFI151-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI152-.LCFI151
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI154-.LCFI152
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
	.long	.LCFI155-.LFB56
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
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI159-.LFB57
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
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI163-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI164-.LCFI163
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI166-.LCFI164
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
	.long	.LCFI167-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI168-.LCFI167
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI170-.LCFI168
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
	.long	.LCFI171-.LFB60
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
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB61
	.long	.LFE61-.LFB61
	.byte	0x4
	.long	.LCFI175-.LFB61
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
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI179-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI180-.LCFI179
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI182-.LCFI180
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
	.long	.LCFI183-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI184-.LCFI183
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI188-.LCFI184
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
	.long	.LCFI189-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI190-.LCFI189
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI193-.LCFI190
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
	.long	.LCFI194-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI195-.LCFI194
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI197-.LCFI195
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE100:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/rtl.h"
	.file 4 "../../../kg++fe/gnu/machmode.h"
	.file 5 "../../../kg++fe/gnu/bitmap.h"
	.file 6 "../../../kg++fe/gnu/basic-block.h"
	.file 7 "../../../kg++fe/gnu/sbitmap.h"
	.file 8 "../../../kg++fe/gnu/flags.h"
	.file 9 "../../../kg++fe/gnu/regs.h"
	.file 10 "../../../kg++fe/gnu/varray.h"
	.file 11 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 12 "../../../kg++fe/gnu/function.h"
	.file 13 "../../../kg++fe/gnu/MIPS/mips.h"
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
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
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
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
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
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
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
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
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
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
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
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
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
	.long	.LCFI134-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI134-.Ltext0
	.long	.LCFI135-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI135-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
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
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
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
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
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
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
	.long	.LCFI147-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI147-.Ltext0
	.long	.LCFI148-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI148-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
	.long	.LCFI151-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI151-.Ltext0
	.long	.LCFI152-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI152-.Ltext0
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
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
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
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
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
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
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
	.long	.LCFI167-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI167-.Ltext0
	.long	.LCFI168-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI168-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
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
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB61-.Ltext0
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
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB62-.Ltext0
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
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB63-.Ltext0
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
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB64-.Ltext0
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
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB65-.Ltext0
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
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x449f
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/jump.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa4
	.uleb128 0x3
	.byte	0x4
	.long	0xaa
	.uleb128 0x4
	.long	0x199
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.long	.LASF0
	.byte	0x3
	.byte	0x84
	.long	0x6d4
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"mode"
	.byte	0x3
	.byte	0x87
	.long	0x3dc
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"jump"
	.byte	0x3
	.byte	0x8e
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"call"
	.byte	0x3
	.byte	0x91
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"unchanging"
	.byte	0x3
	.byte	0x99
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"volatil"
	.byte	0x3
	.byte	0xa2
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"in_struct"
	.byte	0x3
	.byte	0xb4
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"used"
	.byte	0x3
	.byte	0xbb
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"integrated"
	.byte	0x3
	.byte	0xc0
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"frame_related"
	.byte	0x3
	.byte	0xc9
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"fld"
	.byte	0x3
	.byte	0xce
	.long	0x12f3
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
	.long	0x1e1
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x3
	.byte	0xf2
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x3
	.byte	0xf3
	.long	0x1303
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1ed
	.uleb128 0x3
	.byte	0x4
	.long	0x1f3
	.uleb128 0x8
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x205
	.uleb128 0x9
	.long	0x20a
	.uleb128 0xa
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	0x2eb
	.string	"mips_args"
	.byte	0x40
	.byte	0xd
	.value	0xaaa
	.uleb128 0xc
	.string	"gp_reg_found"
	.byte	0xd
	.value	0xaad
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"arg_number"
	.byte	0xd
	.value	0xab0
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"num_gprs"
	.byte	0xd
	.value	0xab5
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"num_fprs"
	.byte	0xd
	.value	0xab8
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"stack_words"
	.byte	0xd
	.value	0xabb
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"fp_code"
	.byte	0xd
	.value	0xac8
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"prototype"
	.byte	0xd
	.value	0xacb
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"num_adjusts"
	.byte	0xd
	.value	0xad3
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"adjust"
	.byte	0xd
	.value	0xad4
	.long	0x2f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xd
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xe
	.long	0x302
	.long	0x99
	.uleb128 0xf
	.long	0x302
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x10
	.string	"CUMULATIVE_ARGS"
	.byte	0xd
	.value	0xad5
	.long	0x219
	.uleb128 0x2
	.string	"size_t"
	.byte	0xb
	.byte	0xd6
	.long	0x2eb
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
	.uleb128 0xa
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x11
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x20a
	.uleb128 0x3
	.byte	0x4
	.long	0x32f
	.uleb128 0xe
	.long	0x3dc
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x625
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
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
	.uleb128 0x14
	.long	0x6d4
	.long	.LASF2
	.byte	0x4
	.byte	0x4
	.byte	0x2c
	.uleb128 0x13
	.string	"MODE_RANDOM"
	.sleb128 0
	.uleb128 0x13
	.string	"MODE_INT"
	.sleb128 1
	.uleb128 0x13
	.string	"MODE_FLOAT"
	.sleb128 2
	.uleb128 0x13
	.string	"MODE_PARTIAL_INT"
	.sleb128 3
	.uleb128 0x13
	.string	"MODE_CC"
	.sleb128 4
	.uleb128 0x13
	.string	"MODE_COMPLEX_INT"
	.sleb128 5
	.uleb128 0x13
	.string	"MODE_COMPLEX_FLOAT"
	.sleb128 6
	.uleb128 0x13
	.string	"MODE_VECTOR_INT"
	.sleb128 7
	.uleb128 0x13
	.string	"MODE_VECTOR_FLOAT"
	.sleb128 8
	.uleb128 0x13
	.string	"MAX_MODE_CLASS"
	.sleb128 9
	.byte	0x0
	.uleb128 0x12
	.long	0xea3
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x29
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
	.uleb128 0x15
	.long	0xf7d
	.byte	0x4
	.byte	0x3
	.byte	0x47
	.uleb128 0x6
	.string	"min_align"
	.byte	0x3
	.byte	0x49
	.long	0x2eb
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"base_after_vec"
	.byte	0x3
	.byte	0x4b
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min_after_vec"
	.byte	0x3
	.byte	0x4c
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"max_after_vec"
	.byte	0x3
	.byte	0x4e
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min_after_base"
	.byte	0x3
	.byte	0x50
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"max_after_base"
	.byte	0x3
	.byte	0x52
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset_unsigned"
	.byte	0x3
	.byte	0x55
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"scale"
	.byte	0x3
	.byte	0x57
	.long	0x2eb
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
	.long	0xea3
	.uleb128 0x16
	.long	0xff4
	.long	.LASF3
	.byte	0x18
	.byte	0x3
	.byte	0x62
	.uleb128 0x7
	.string	"alias"
	.byte	0x3
	.byte	0x63
	.long	0x387
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x3
	.byte	0x64
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"offset"
	.byte	0x3
	.byte	0x65
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
	.byte	0x3
	.byte	0x66
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x3
	.byte	0x67
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x17
	.long	.LASF3
	.byte	0x3
	.byte	0x68
	.long	0xf98
	.uleb128 0x18
	.long	0x10d1
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x6d
	.uleb128 0x19
	.string	"rtwint"
	.byte	0x3
	.byte	0x6e
	.long	0x387
	.uleb128 0x19
	.string	"rtint"
	.byte	0x3
	.byte	0x6f
	.long	0x212
	.uleb128 0x19
	.string	"rtuint"
	.byte	0x3
	.byte	0x70
	.long	0x2eb
	.uleb128 0x19
	.string	"rtstr"
	.byte	0x3
	.byte	0x71
	.long	0x1ff
	.uleb128 0x19
	.string	"rtx"
	.byte	0x3
	.byte	0x72
	.long	0x99
	.uleb128 0x19
	.string	"rtvec"
	.byte	0x3
	.byte	0x73
	.long	0x199
	.uleb128 0x19
	.string	"rttype"
	.byte	0x3
	.byte	0x74
	.long	0x3dc
	.uleb128 0x19
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x75
	.long	0xf7d
	.uleb128 0x19
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x76
	.long	0x10e5
	.uleb128 0x19
	.string	"rtbit"
	.byte	0x3
	.byte	0x77
	.long	0x114d
	.uleb128 0x19
	.string	"rttree"
	.byte	0x3
	.byte	0x78
	.long	0x1e1
	.uleb128 0x19
	.string	"bb"
	.byte	0x3
	.byte	0x79
	.long	0x12d8
	.uleb128 0x19
	.string	"rtmem"
	.byte	0x3
	.byte	0x7a
	.long	0x12de
	.byte	0x0
	.uleb128 0x1a
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x10d1
	.uleb128 0x4
	.long	0x114d
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x77
	.uleb128 0x7
	.string	"first"
	.byte	0x5
	.byte	0x3d
	.long	0x1949
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x1949
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x10eb
	.uleb128 0x4
	.long	0x12d8
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x79
	.uleb128 0x7
	.string	"head"
	.byte	0x6
	.byte	0xb5
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0x6
	.byte	0xb5
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0x6
	.byte	0xb8
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0x6
	.byte	0xb9
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0x6
	.byte	0xbc
	.long	0x1a9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0x6
	.byte	0xbc
	.long	0x1a9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0x6
	.byte	0xc1
	.long	0x19cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0x6
	.byte	0xc5
	.long	0x19cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0x6
	.byte	0xcb
	.long	0x19cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0x6
	.byte	0xcd
	.long	0x19cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0x6
	.byte	0xd0
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"index"
	.byte	0x6
	.byte	0xd3
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x12d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x12d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0x6
	.byte	0xd9
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0x6
	.byte	0xdc
	.long	0x1d17
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0x6
	.byte	0xdf
	.long	0x19da
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0x6
	.byte	0xe2
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"flags"
	.byte	0x6
	.byte	0xe5
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1153
	.uleb128 0x3
	.byte	0x4
	.long	0xff4
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x7c
	.long	0xfff
	.uleb128 0xe
	.long	0x1303
	.long	0x12e4
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1313
	.long	0x99
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x99
	.uleb128 0x4
	.long	0x134f
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xa
	.byte	0x24
	.uleb128 0x7
	.string	"rtx"
	.byte	0xa
	.byte	0x32
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"age"
	.byte	0xa
	.byte	0x36
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x12
	.long	0x14ea
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xa
	.byte	0x3c
	.uleb128 0x13
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x13
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x13
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x13
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x13
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x13
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x13
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x13
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x13
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x13
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x13
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x13
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x13
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x13
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x13
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x13
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x13
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x13
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x13
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x13
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x13
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x18
	.long	0x15e6
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xa
	.byte	0x55
	.uleb128 0x19
	.string	"c"
	.byte	0xa
	.byte	0x56
	.long	0x3cc
	.uleb128 0x19
	.string	"uc"
	.byte	0xa
	.byte	0x58
	.long	0x15e6
	.uleb128 0x19
	.string	"s"
	.byte	0xa
	.byte	0x5a
	.long	0x15f6
	.uleb128 0x19
	.string	"us"
	.byte	0xa
	.byte	0x5c
	.long	0x1606
	.uleb128 0x19
	.string	"i"
	.byte	0xa
	.byte	0x5e
	.long	0x1616
	.uleb128 0x19
	.string	"u"
	.byte	0xa
	.byte	0x60
	.long	0x1626
	.uleb128 0x19
	.string	"l"
	.byte	0xa
	.byte	0x62
	.long	0x1636
	.uleb128 0x19
	.string	"ul"
	.byte	0xa
	.byte	0x64
	.long	0x1646
	.uleb128 0x19
	.string	"hint"
	.byte	0xa
	.byte	0x66
	.long	0x1656
	.uleb128 0x19
	.string	"uhint"
	.byte	0xa
	.byte	0x68
	.long	0x1666
	.uleb128 0x19
	.string	"generic"
	.byte	0xa
	.byte	0x6a
	.long	0x1676
	.uleb128 0x19
	.string	"cptr"
	.byte	0xa
	.byte	0x6c
	.long	0x1686
	.uleb128 0x19
	.string	"rtx"
	.byte	0xa
	.byte	0x6e
	.long	0x1696
	.uleb128 0x19
	.string	"rtvec"
	.byte	0xa
	.byte	0x70
	.long	0x16a6
	.uleb128 0x19
	.string	"tree"
	.byte	0xa
	.byte	0x72
	.long	0x16b6
	.uleb128 0x19
	.string	"bitmap"
	.byte	0xa
	.byte	0x74
	.long	0x16c6
	.uleb128 0x19
	.string	"reg"
	.byte	0xa
	.byte	0x76
	.long	0x16d6
	.uleb128 0x19
	.string	"const_equiv"
	.byte	0xa
	.byte	0x78
	.long	0x17d2
	.uleb128 0x19
	.string	"bb"
	.byte	0xa
	.byte	0x7a
	.long	0x17e2
	.uleb128 0x19
	.string	"te"
	.byte	0xa
	.byte	0x7c
	.long	0x17f2
	.byte	0x0
	.uleb128 0xe
	.long	0x15f6
	.long	0x32f
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1606
	.long	0x37a
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1616
	.long	0x340
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1626
	.long	0x212
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1636
	.long	0x2eb
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1646
	.long	0x3b2
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1656
	.long	0x356
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1666
	.long	0x387
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1676
	.long	0x398
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1686
	.long	0x3be
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1696
	.long	0x3c0
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x16a6
	.long	0xa4
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x16b6
	.long	0x1a6
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x16c6
	.long	0x1ed
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x16d6
	.long	0x114d
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x16e6
	.long	0x17cc
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x17cc
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0xa
	.byte	0x76
	.uleb128 0x7
	.string	"first_uid"
	.byte	0x9
	.byte	0x31
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last_uid"
	.byte	0x9
	.byte	0x32
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"last_note_uid"
	.byte	0x9
	.byte	0x33
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"sets"
	.byte	0x9
	.byte	0x36
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"refs"
	.byte	0x9
	.byte	0x39
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"freq"
	.byte	0x9
	.byte	0x3a
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"deaths"
	.byte	0x9
	.byte	0x3b
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"live_length"
	.byte	0x9
	.byte	0x3c
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"calls_crossed"
	.byte	0x9
	.byte	0x3d
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x9
	.byte	0x3e
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"changes_mode"
	.byte	0x9
	.byte	0x3f
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x16e6
	.uleb128 0xe
	.long	0x17e2
	.long	0x1319
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x17f2
	.long	0x12d8
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1802
	.long	0x180d
	.uleb128 0xf
	.long	0x302
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1802
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xa
	.byte	0x7e
	.long	0x14ea
	.uleb128 0x4
	.long	0x189b
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xa
	.byte	0x81
	.uleb128 0x7
	.string	"num_elements"
	.byte	0xa
	.byte	0x82
	.long	0x321
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elements_used"
	.byte	0xa
	.byte	0x83
	.long	0x321
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type"
	.byte	0xa
	.byte	0x85
	.long	0x134f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"name"
	.byte	0xa
	.byte	0x86
	.long	0x1ff
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"data"
	.byte	0xa
	.byte	0x87
	.long	0x1813
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xa
	.byte	0x8a
	.long	0x18ae
	.uleb128 0x3
	.byte	0x4
	.long	0x1826
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x356
	.uleb128 0x4
	.long	0x191d
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x1b
	.long	.LASF5
	.byte	0x5
	.byte	0x35
	.long	0x191d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.long	.LASF6
	.byte	0x5
	.byte	0x36
	.long	0x191d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x1923
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x18c7
	.uleb128 0xe
	.long	0x1933
	.long	0x18b4
	.uleb128 0xf
	.long	0x302
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x18c7
	.uleb128 0x3
	.byte	0x4
	.long	0x1933
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x114d
	.uleb128 0x4
	.long	0x19b7
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x7
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0x7
	.byte	0x21
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0x7
	.byte	0x24
	.long	0x1666
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x7
	.byte	0x25
	.long	0x19c6
	.uleb128 0x3
	.byte	0x4
	.long	0x195d
	.uleb128 0x2
	.string	"regset"
	.byte	0x6
	.byte	0x22
	.long	0x194f
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x6
	.byte	0x75
	.long	0x387
	.uleb128 0x4
	.long	0x1a96
	.string	"edge_def"
	.byte	0x28
	.byte	0x6
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0x6
	.byte	0x7a
	.long	0x1a96
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0x6
	.byte	0x7a
	.long	0x1a96
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0x6
	.byte	0x7d
	.long	0x12d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"dest"
	.byte	0x6
	.byte	0x7d
	.long	0x12d8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"insns"
	.byte	0x6
	.byte	0x80
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0x6
	.byte	0x83
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"flags"
	.byte	0x6
	.byte	0x85
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0x6
	.byte	0x86
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"count"
	.byte	0x6
	.byte	0x87
	.long	0x19da
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x19eb
	.uleb128 0x2
	.string	"edge"
	.byte	0x6
	.byte	0x89
	.long	0x1a96
	.uleb128 0x4
	.long	0x1d17
	.string	"loop"
	.byte	0x80
	.byte	0x6
	.byte	0xdc
	.uleb128 0xc
	.string	"num"
	.byte	0x6
	.value	0x176
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"header"
	.byte	0x6
	.value	0x179
	.long	0x1d1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"latch"
	.byte	0x6
	.value	0x17c
	.long	0x1d1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"pre_header"
	.byte	0x6
	.value	0x17f
	.long	0x1d1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"pre_header_edges"
	.byte	0x6
	.value	0x184
	.long	0x1d28
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"num_pre_header_edges"
	.byte	0x6
	.value	0x187
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"first"
	.byte	0x6
	.value	0x18b
	.long	0x1d1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"last"
	.byte	0x6
	.value	0x18f
	.long	0x1d1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"nodes"
	.byte	0x6
	.value	0x192
	.long	0x19b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"num_nodes"
	.byte	0x6
	.value	0x195
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.string	"entry_edges"
	.byte	0x6
	.value	0x198
	.long	0x1d28
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"num_entries"
	.byte	0x6
	.value	0x19b
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"exit_edges"
	.byte	0x6
	.value	0x19e
	.long	0x1d28
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"num_exits"
	.byte	0x6
	.value	0x1a1
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.string	"exits_doms"
	.byte	0x6
	.value	0x1a4
	.long	0x19b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.string	"depth"
	.byte	0x6
	.value	0x1a7
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.string	"pred"
	.byte	0x6
	.value	0x1aa
	.long	0x1d2e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.string	"level"
	.byte	0x6
	.value	0x1ae
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.string	"outer"
	.byte	0x6
	.value	0x1b1
	.long	0x1d17
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.string	"inner"
	.byte	0x6
	.value	0x1b4
	.long	0x1d17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x6
	.value	0x1b7
	.long	0x1d17
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.string	"invalid"
	.byte	0x6
	.value	0x1ba
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.string	"aux"
	.byte	0x6
	.value	0x1bd
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.string	"vtop"
	.byte	0x6
	.value	0x1c3
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.string	"cont"
	.byte	0x6
	.value	0x1c7
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.string	"start"
	.byte	0x6
	.value	0x1ca
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xc
	.string	"end"
	.byte	0x6
	.value	0x1cd
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.string	"top"
	.byte	0x6
	.value	0x1d1
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xc
	.string	"scan_start"
	.byte	0x6
	.value	0x1d4
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xc
	.string	"sink"
	.byte	0x6
	.value	0x1d7
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xc
	.string	"exit_labels"
	.byte	0x6
	.value	0x1e2
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xc
	.string	"exit_count"
	.byte	0x6
	.value	0x1e6
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1aa8
	.uleb128 0x17
	.long	.LASF4
	.byte	0x6
	.byte	0xe6
	.long	0x12d8
	.uleb128 0x3
	.byte	0x4
	.long	0x1a9c
	.uleb128 0x3
	.byte	0x4
	.long	0x1d17
	.uleb128 0x4
	.long	0x1d99
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xc
	.byte	0x17
	.uleb128 0x7
	.string	"modified"
	.byte	0xc
	.byte	0x18
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"promoted_mode"
	.byte	0xc
	.byte	0x19
	.long	0x3dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"unsignedp"
	.byte	0xc
	.byte	0x1a
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF5
	.byte	0xc
	.byte	0x1b
	.long	0x1d99
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1d34
	.uleb128 0x16
	.long	0x1de7
	.long	.LASF7
	.byte	0x10
	.byte	0xc
	.byte	0x24
	.uleb128 0x7
	.string	"first"
	.byte	0xc
	.byte	0x26
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last"
	.byte	0xc
	.byte	0x27
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.long	.LASF8
	.byte	0xc
	.byte	0x28
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF5
	.byte	0xc
	.byte	0x29
	.long	0x1de7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1d9f
	.uleb128 0x4
	.long	0x1f3c
	.string	"emit_status"
	.byte	0x34
	.byte	0xc
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0xc
	.byte	0x3a
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0xc
	.byte	0x3d
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_insn"
	.byte	0xc
	.byte	0x44
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_insn"
	.byte	0xc
	.byte	0x45
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1b
	.long	.LASF8
	.byte	0xc
	.byte	0x4a
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.long	.LASF7
	.byte	0xc
	.byte	0x50
	.long	0x1de7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0xc
	.byte	0x54
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0xc
	.byte	0x58
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0xc
	.byte	0x59
	.long	0x1ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0xc
	.byte	0x5f
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"regno_pointer_align"
	.byte	0xc
	.byte	0x65
	.long	0x3c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0xc
	.byte	0x69
	.long	0x1f3c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"x_regno_reg_rtx"
	.byte	0xc
	.byte	0x70
	.long	0x1313
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e1
	.uleb128 0x4
	.long	0x2022
	.string	"expr_status"
	.byte	0x1c
	.byte	0xc
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0xc
	.byte	0x80
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0xc
	.byte	0x91
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0xc
	.byte	0x97
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_saveregs_value"
	.byte	0xc
	.byte	0x9c
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_apply_args_value"
	.byte	0xc
	.byte	0x9f
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x_forced_labels"
	.byte	0xc
	.byte	0xa2
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_pending_chain"
	.byte	0xc
	.byte	0xa5
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1d
	.long	0x208c
	.long	.LASF9
	.byte	0x4
	.byte	0xc
	.value	0x1f1
	.uleb128 0x13
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x13
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x13
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1e
	.long	0x2a4b
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x19
	.uleb128 0x7
	.string	"eh"
	.byte	0xc
	.byte	0xb5
	.long	0x2a57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0xc
	.byte	0xb6
	.long	0x2a6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0xc
	.byte	0xb7
	.long	0x2a71
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0xc
	.byte	0xb8
	.long	0x2a77
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0xc
	.byte	0xb9
	.long	0x2a8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"name"
	.byte	0xc
	.byte	0xbe
	.long	0x1ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"decl"
	.byte	0xc
	.byte	0xc1
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"outer"
	.byte	0xc
	.byte	0xc4
	.long	0x2a93
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0xc
	.byte	0xc9
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"args_size"
	.byte	0xc
	.byte	0xce
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0xc
	.byte	0xd3
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0xc
	.byte	0xd7
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"arg_offset_rtx"
	.byte	0xc
	.byte	0xdb
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"args_info"
	.byte	0xc
	.byte	0xdf
	.long	0x309
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"return_rtx"
	.byte	0xc
	.byte	0xe5
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"internal_arg_pointer"
	.byte	0xc
	.byte	0xe8
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"cannot_inline"
	.byte	0xc
	.byte	0xec
	.long	0x1ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0xc
	.byte	0xf0
	.long	0x2ab0
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0xc
	.byte	0xf3
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"x_nonlocal_labels"
	.byte	0xc
	.byte	0xf8
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xc
	.byte	0xfe
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xc
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xc
	.value	0x102
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xc
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xc
	.value	0x107
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xc
	.string	"x_cleanup_label"
	.byte	0xc
	.value	0x10d
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xc
	.string	"x_return_label"
	.byte	0xc
	.value	0x112
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xc
	.string	"computed_goto_common_label"
	.byte	0xc
	.value	0x115
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xc
	.string	"computed_goto_common_reg"
	.byte	0xc
	.value	0x116
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xc
	.string	"x_save_expr_regs"
	.byte	0xc
	.value	0x11a
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xc
	.string	"x_stack_slot_list"
	.byte	0xc
	.value	0x11e
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xc
	.string	"x_rtl_expr_chain"
	.byte	0xc
	.value	0x121
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xc
	.string	"x_tail_recursion_label"
	.byte	0xc
	.value	0x125
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xc
	.string	"x_tail_recursion_reentry"
	.byte	0xc
	.value	0x128
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xc
	.string	"x_arg_pointer_save_area"
	.byte	0xc
	.value	0x12e
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xc
	.string	"x_clobber_return_insn"
	.byte	0xc
	.value	0x133
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xc
	.string	"x_frame_offset"
	.byte	0xc
	.value	0x138
	.long	0x387
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xc
	.string	"x_context_display"
	.byte	0xc
	.value	0x13d
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xc
	.string	"x_trampoline_list"
	.byte	0xc
	.value	0x146
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xc
	.string	"x_parm_birth_insn"
	.byte	0xc
	.value	0x149
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xc
	.string	"x_last_parm_insn"
	.byte	0xc
	.value	0x14d
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xc
	.string	"x_max_parm_reg"
	.byte	0xc
	.value	0x151
	.long	0x2eb
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xc
	.string	"x_parm_reg_stack_loc"
	.byte	0xc
	.value	0x157
	.long	0x1313
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xc
	.string	"x_temp_slots"
	.byte	0xc
	.value	0x15a
	.long	0x2ac2
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xc
	.string	"x_temp_slot_level"
	.byte	0xc
	.value	0x15d
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xc
	.string	"x_var_temp_slot_level"
	.byte	0xc
	.value	0x160
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xc
	.string	"x_target_temp_slot_level"
	.byte	0xc
	.value	0x166
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xc
	.string	"fixup_var_refs_queue"
	.byte	0xc
	.value	0x16a
	.long	0x1d99
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xc
	.string	"inlinable"
	.byte	0xc
	.value	0x16d
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xc
	.string	"no_debugging_symbols"
	.byte	0xc
	.value	0x16e
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xc
	.string	"original_arg_vector"
	.byte	0xc
	.value	0x16f
	.long	0x199
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xc
	.string	"original_decl_initial"
	.byte	0xc
	.value	0x170
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xc
	.string	"inl_last_parm_insn"
	.byte	0xc
	.value	0x173
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xc
	.string	"inl_max_label_num"
	.byte	0xc
	.value	0x175
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xc
	.string	"funcdef_no"
	.byte	0xc
	.value	0x178
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xc
	.string	"machine"
	.byte	0xc
	.value	0x17d
	.long	0x2adb
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xc
	.string	"stack_alignment_needed"
	.byte	0xc
	.value	0x17f
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xc
	.string	"preferred_stack_boundary"
	.byte	0xc
	.value	0x181
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xc
	.string	"language"
	.byte	0xc
	.value	0x184
	.long	0x2af5
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xc
	.string	"epilogue_delay_list"
	.byte	0xc
	.value	0x18a
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1f
	.string	"returns_struct"
	.byte	0xc
	.value	0x190
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"returns_pcc_struct"
	.byte	0xc
	.value	0x194
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"returns_pointer"
	.byte	0xc
	.value	0x197
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"needs_context"
	.byte	0xc
	.value	0x19a
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_setjmp"
	.byte	0xc
	.value	0x19d
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_longjmp"
	.byte	0xc
	.value	0x1a0
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_alloca"
	.byte	0xc
	.value	0x1a4
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_eh_return"
	.byte	0xc
	.value	0x1a7
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_nonlocal_label"
	.byte	0xc
	.value	0x1ab
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_nonlocal_goto"
	.byte	0xc
	.value	0x1af
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"contains_functions"
	.byte	0xc
	.value	0x1b2
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_computed_jump"
	.byte	0xc
	.value	0x1b5
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"is_thunk"
	.byte	0xc
	.value	0x1ba
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"all_throwers_are_sibcalls"
	.byte	0xc
	.value	0x1c1
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"instrument_entry_exit"
	.byte	0xc
	.value	0x1c5
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"arc_profile"
	.byte	0xc
	.value	0x1c8
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"profile"
	.byte	0xc
	.value	0x1cb
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"limit_stack"
	.byte	0xc
	.value	0x1cf
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"stdarg"
	.byte	0xc
	.value	0x1d2
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"x_whole_function_mode_p"
	.byte	0xc
	.value	0x1d8
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xc
	.value	0x1e1
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_const_pool"
	.byte	0xc
	.value	0x1e4
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_pic_offset_table"
	.byte	0xc
	.value	0x1e7
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_eh_lsda"
	.byte	0xc
	.value	0x1ea
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"arg_pointer_save_area_init"
	.byte	0xc
	.value	0x1ed
	.long	0x2eb
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1c
	.long	.LASF9
	.byte	0xc
	.value	0x1fa
	.long	0x2022
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xc
	.string	"max_jumptable_ents"
	.byte	0xc
	.value	0x1fe
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x1a
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2a4b
	.uleb128 0x1a
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2a5d
	.uleb128 0x3
	.byte	0x4
	.long	0x1f42
	.uleb128 0x3
	.byte	0x4
	.long	0x1ded
	.uleb128 0x1a
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2a7d
	.uleb128 0x3
	.byte	0x4
	.long	0x208c
	.uleb128 0x1a
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2a99
	.uleb128 0x1a
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2ab6
	.uleb128 0x1a
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2ac8
	.uleb128 0x1a
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2ae1
	.uleb128 0xa
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x20
	.long	0x2b5a
	.byte	0x1
	.string	"rebuild_jump_labels"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x21
	.string	"f"
	.byte	0x1
	.byte	0x4f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.long	.LASF10
	.byte	0x1
	.byte	0x51
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.string	"max_uid"
	.byte	0x1
	.byte	0x52
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x20
	.long	0x2bab
	.byte	0x1
	.string	"cleanup_barriers"
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x22
	.long	.LASF10
	.byte	0x1
	.byte	0x6c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF5
	.byte	0x1
	.byte	0x6c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LASF6
	.byte	0x1
	.byte	0x6c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x2bec
	.string	"next_nonnote_insn_in_loop"
	.byte	0x1
	.byte	0x82
	.byte	0x1
	.long	0x99
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x25
	.long	.LASF10
	.byte	0x1
	.byte	0x81
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x20
	.long	0x2c65
	.byte	0x1
	.string	"copy_loop_headers"
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x21
	.string	"f"
	.byte	0x1
	.byte	0x92
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.long	.LASF10
	.byte	0x1
	.byte	0x94
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.long	.LASF5
	.byte	0x1
	.byte	0x94
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x23
	.string	"temp"
	.byte	0x1
	.byte	0x98
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.string	"temp1"
	.byte	0x1
	.byte	0x98
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x2cc1
	.byte	0x1
	.string	"purge_line_number_notes"
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x21
	.string	"f"
	.byte	0x1
	.byte	0xb0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"last_note"
	.byte	0x1
	.byte	0xb2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LASF10
	.byte	0x1
	.byte	0xb3
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x2d41
	.string	"init_label_info"
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.long	0x212
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x21
	.string	"f"
	.byte	0x1
	.byte	0xd5
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"largest_uid"
	.byte	0x1
	.byte	0xd7
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.long	.LASF10
	.byte	0x1
	.byte	0xd8
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x23
	.string	"note"
	.byte	0x1
	.byte	0xe2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LASF5
	.byte	0x1
	.byte	0xe2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x2dd6
	.string	"mark_all_labels"
	.byte	0x1
	.byte	0xf9
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x21
	.string	"f"
	.byte	0x1
	.byte	0xf8
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.long	.LASF10
	.byte	0x1
	.byte	0xfa
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	0x2d9c
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x29
	.long	.LASF11
	.byte	0x1
	.value	0x10a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x26
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2a
	.string	"label_note"
	.byte	0x1
	.value	0x11b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x29
	.long	.LASF11
	.byte	0x1
	.value	0x120
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x2f42
	.string	"duplicate_loop_exit_test"
	.byte	0x1
	.value	0x13a
	.byte	0x1
	.long	0x212
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2c
	.string	"loop_start"
	.byte	0x1
	.value	0x139
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF10
	.byte	0x1
	.value	0x13b
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.string	"set"
	.byte	0x1
	.value	0x13b
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.string	"reg"
	.byte	0x1
	.value	0x13b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.string	"p"
	.byte	0x1
	.value	0x13b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.string	"link"
	.byte	0x1
	.value	0x13b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.string	"copy"
	.byte	0x1
	.value	0x13c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.string	"first_copy"
	.byte	0x1
	.value	0x13c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.string	"num_insns"
	.byte	0x1
	.value	0x13d
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.string	"exitcode"
	.byte	0x1
	.value	0x13e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"lastexit"
	.byte	0x1
	.value	0x140
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.string	"max_reg"
	.byte	0x1
	.value	0x141
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.string	"reg_map"
	.byte	0x1
	.value	0x142
	.long	0x1313
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.string	"loop_pre_header_label"
	.byte	0x1
	.value	0x143
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	0x2f31
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x29
	.long	.LASF12
	.byte	0x1
	.value	0x1dd
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2d
	.long	.LASF13
	.long	0x431b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11296
	.byte	0x0
	.uleb128 0x2e
	.long	0x3008
	.byte	0x1
	.string	"squeeze_notes"
	.byte	0x1
	.value	0x22a
	.byte	0x1
	.long	0x2afb
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2c
	.string	"startp"
	.byte	0x1
	.value	0x228
	.long	0x1313
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"endp"
	.byte	0x1
	.value	0x229
	.long	0x1313
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"start"
	.byte	0x1
	.value	0x22b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.string	"end"
	.byte	0x1
	.value	0x22c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF10
	.byte	0x1
	.value	0x22e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.long	.LASF5
	.byte	0x1
	.value	0x22f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"last"
	.byte	0x1
	.value	0x230
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.string	"past_end"
	.byte	0x1
	.value	0x231
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x29
	.long	.LASF6
	.byte	0x1
	.value	0x242
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x306b
	.byte	0x1
	.string	"get_label_before"
	.byte	0x1
	.value	0x25f
	.byte	0x1
	.long	0x99
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x25e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF12
	.byte	0x1
	.value	0x260
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x29
	.long	.LASF6
	.byte	0x1
	.value	0x268
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x30b4
	.byte	0x1
	.string	"get_label_after"
	.byte	0x1
	.value	0x276
	.byte	0x1
	.long	0x99
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x275
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF12
	.byte	0x1
	.value	0x277
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x31a0
	.byte	0x1
	.string	"reversed_comparison_code_parts"
	.byte	0x1
	.value	0x290
	.byte	0x1
	.long	0x6d4
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x28f
	.long	0x6d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"arg0"
	.byte	0x1
	.value	0x28e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"arg1"
	.byte	0x1
	.value	0x28e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x28e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2a
	.string	"mode"
	.byte	0x1
	.value	0x291
	.long	0x3dc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x29
	.long	.LASF6
	.byte	0x1
	.value	0x2cd
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2a
	.string	"set"
	.byte	0x1
	.value	0x2d9
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x2a
	.string	"src"
	.byte	0x1
	.value	0x2dd
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x29
	.long	.LASF14
	.byte	0x1
	.value	0x2e1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x31f2
	.byte	0x1
	.string	"reversed_comparison_code"
	.byte	0x1
	.value	0x307
	.byte	0x1
	.long	0x6d4
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x2f
	.long	.LASF14
	.byte	0x1
	.value	0x306
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x306
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2e
	.long	0x323e
	.byte	0x1
	.string	"reverse_condition"
	.byte	0x1
	.value	0x31a
	.byte	0x1
	.long	0x6d4
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x319
	.long	0x6d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF13
	.long	0x4306
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11676
	.byte	0x0
	.uleb128 0x2e
	.long	0x329a
	.byte	0x1
	.string	"reverse_condition_maybe_unordered"
	.byte	0x1
	.value	0x34a
	.byte	0x1
	.long	0x6d4
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x349
	.long	0x6d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF13
	.long	0x42f1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11697
	.byte	0x0
	.uleb128 0x2e
	.long	0x32e3
	.byte	0x1
	.string	"swap_condition"
	.byte	0x1
	.value	0x375
	.byte	0x1
	.long	0x6d4
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x374
	.long	0x6d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF13
	.long	0x42dc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11722
	.byte	0x0
	.uleb128 0x2e
	.long	0x3330
	.byte	0x1
	.string	"unsigned_condition"
	.byte	0x1
	.value	0x3a5
	.byte	0x1
	.long	0x6d4
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x3a4
	.long	0x6d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF13
	.long	0x42d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11739
	.byte	0x0
	.uleb128 0x2e
	.long	0x337b
	.byte	0x1
	.string	"signed_condition"
	.byte	0x1
	.value	0x3c3
	.byte	0x1
	.long	0x6d4
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x3c2
	.long	0x6d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF13
	.long	0x42c2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11756
	.byte	0x0
	.uleb128 0x2e
	.long	0x33cf
	.byte	0x1
	.string	"comparison_dominates_p"
	.byte	0x1
	.value	0x3e2
	.byte	0x1
	.long	0x212
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x2c
	.string	"code1"
	.byte	0x1
	.value	0x3e1
	.long	0x6d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"code2"
	.byte	0x1
	.value	0x3e1
	.long	0x6d4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2e
	.long	0x3406
	.byte	0x1
	.string	"simplejump_p"
	.byte	0x1
	.value	0x434
	.byte	0x1
	.long	0x212
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x433
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x344d
	.byte	0x1
	.string	"tablejump_p"
	.byte	0x1
	.value	0x440
	.byte	0x1
	.long	0x212
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x43f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"table"
	.byte	0x1
	.value	0x441
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x348f
	.byte	0x1
	.string	"condjump_p"
	.byte	0x1
	.value	0x454
	.byte	0x1
	.long	0x212
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x453
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x455
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2e
	.long	0x34dd
	.byte	0x1
	.string	"condjump_in_parallel_p"
	.byte	0x1
	.value	0x473
	.byte	0x1
	.long	0x212
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x472
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x474
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2e
	.long	0x351d
	.byte	0x1
	.string	"pc_set"
	.byte	0x1
	.value	0x493
	.byte	0x1
	.long	0x99
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x492
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"pat"
	.byte	0x1
	.value	0x494
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2e
	.long	0x3565
	.byte	0x1
	.string	"any_uncondjump_p"
	.byte	0x1
	.value	0x4a9
	.byte	0x1
	.long	0x212
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x4a8
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x4aa
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x35c5
	.byte	0x1
	.string	"any_condjump_p"
	.byte	0x1
	.value	0x4bc
	.byte	0x1
	.long	0x212
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x4bb
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x4bd
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"a"
	.byte	0x1
	.value	0x4be
	.long	0x6d4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.string	"b"
	.byte	0x1
	.value	0x4be
	.long	0x6d4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x360b
	.byte	0x1
	.string	"condjump_label"
	.byte	0x1
	.value	0x4d1
	.byte	0x1
	.long	0x99
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x4d0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x4d2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x3660
	.string	"returnjump_p_1"
	.byte	0x1
	.value	0x4e8
	.byte	0x1
	.long	0x212
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x2c
	.string	"loc"
	.byte	0x1
	.value	0x4e6
	.long	0x1313
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"data"
	.byte	0x1
	.value	0x4e7
	.long	0x3be
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x4e9
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2e
	.long	0x3697
	.byte	0x1
	.string	"returnjump_p"
	.byte	0x1
	.value	0x4f2
	.byte	0x1
	.long	0x212
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x4f1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x36db
	.byte	0x1
	.string	"onlyjump_p"
	.byte	0x1
	.value	0x4fe
	.byte	0x1
	.long	0x212
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x4fd
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"set"
	.byte	0x1
	.value	0x4ff
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x376b
	.byte	0x1
	.string	"follow_jumps"
	.byte	0x1
	.value	0x553
	.byte	0x1
	.long	0x99
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x2f
	.long	.LASF12
	.byte	0x1
	.value	0x552
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF10
	.byte	0x1
	.value	0x554
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF5
	.byte	0x1
	.value	0x555
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.string	"value"
	.byte	0x1
	.value	0x556
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"depth"
	.byte	0x1
	.value	0x557
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2a
	.string	"tem"
	.byte	0x1
	.value	0x568
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x3853
	.byte	0x1
	.string	"mark_jump_label"
	.byte	0x1
	.value	0x595
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.value	0x592
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x593
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"in_mem"
	.byte	0x1
	.value	0x594
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.long	.LASF0
	.byte	0x1
	.value	0x596
	.long	0x6d4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x597
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.string	"fmt"
	.byte	0x1
	.value	0x598
	.long	0x1ff
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	0x3807
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x29
	.long	.LASF12
	.byte	0x1
	.value	0x5b4
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x28
	.long	0x3827
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2a
	.string	"eltnum"
	.byte	0x1
	.value	0x5df
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x28
	.long	0x3842
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x5f1
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	.LASF13
	.long	0x42ad
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12202
	.byte	0x0
	.uleb128 0x30
	.long	0x3894
	.byte	0x1
	.string	"delete_jump"
	.byte	0x1
	.value	0x5ff
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x5fe
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"set"
	.byte	0x1
	.value	0x600
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x38d9
	.byte	0x1
	.string	"delete_barrier"
	.byte	0x1
	.value	0x60b
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x60a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF13
	.long	0x42a8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12319
	.byte	0x0
	.uleb128 0x31
	.long	0x3a0d
	.string	"delete_prior_computation"
	.byte	0x1
	.value	0x61a
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x2c
	.string	"note"
	.byte	0x1
	.value	0x618
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x619
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"our_prev"
	.byte	0x1
	.value	0x61b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.string	"reg"
	.byte	0x1
	.value	0x61c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x2a
	.string	"pat"
	.byte	0x1
	.value	0x623
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	0x3996
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x643
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x2a
	.string	"part"
	.byte	0x1
	.value	0x647
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x2a
	.string	"dest_regno"
	.byte	0x1
	.value	0x654
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.string	"dest_endregno"
	.byte	0x1
	.value	0x655
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.string	"regno"
	.byte	0x1
	.value	0x65a
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"endregno"
	.byte	0x1
	.value	0x65b
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x66b
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x3a64
	.string	"delete_computation"
	.byte	0x1
	.value	0x699
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x698
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"note"
	.byte	0x1
	.value	0x69a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.long	.LASF5
	.byte	0x1
	.value	0x69a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x3b84
	.byte	0x1
	.string	"delete_related_insns"
	.byte	0x1
	.value	0x6ce
	.byte	0x1
	.long	0x99
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x6cd
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"was_code_label"
	.byte	0x1
	.value	0x6cf
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.string	"note"
	.byte	0x1
	.value	0x6d0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LASF5
	.byte	0x1
	.value	0x6d1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF6
	.byte	0x1
	.value	0x6d1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	0x3b1b
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x2a
	.string	"lab"
	.byte	0x1
	.value	0x6e7
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"lab_next"
	.byte	0x1
	.value	0x6e7
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x28
	.long	0x3b6a
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x2a
	.string	"pat"
	.byte	0x1
	.value	0x70b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x70c
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.string	"diff_vec_p"
	.byte	0x1
	.value	0x70c
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.value	0x70d
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x26
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x29
	.long	.LASF0
	.byte	0x1
	.value	0x732
	.long	0x6d4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x3bc3
	.byte	0x1
	.string	"next_nondeleted_insn"
	.byte	0x1
	.value	0x750
	.byte	0x1
	.long	0x99
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x74f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x30
	.long	0x3c43
	.byte	0x1
	.string	"delete_for_peephole"
	.byte	0x1
	.value	0x75e
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x2c
	.string	"from"
	.byte	0x1
	.value	0x75d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"to"
	.byte	0x1
	.value	0x75d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF10
	.byte	0x1
	.value	0x75f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x29
	.long	.LASF5
	.byte	0x1
	.value	0x763
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x29
	.long	.LASF6
	.byte	0x1
	.value	0x764
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x3d26
	.byte	0x1
	.string	"never_reached_warning"
	.byte	0x1
	.value	0x78b
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x2c
	.string	"avoided_insn"
	.byte	0x1
	.value	0x78a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"finish"
	.byte	0x1
	.value	0x78a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF10
	.byte	0x1
	.value	0x78c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.string	"a_line_note"
	.byte	0x1
	.value	0x78d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.string	"two_avoided_lines"
	.byte	0x1
	.value	0x78e
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.string	"contains_insn"
	.byte	0x1
	.value	0x78e
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"reached_end"
	.byte	0x1
	.value	0x78e
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x29
	.long	.LASF6
	.byte	0x1
	.value	0x799
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x3df1
	.string	"redirect_exp_1"
	.byte	0x1
	.value	0x7ca
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x2c
	.string	"loc"
	.byte	0x1
	.value	0x7c7
	.long	0x1313
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF15
	.byte	0x1
	.value	0x7c8
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF16
	.byte	0x1
	.value	0x7c8
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x7c9
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x7cb
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.long	.LASF0
	.byte	0x1
	.value	0x7cc
	.long	0x6d4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x7cd
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.string	"fmt"
	.byte	0x1
	.value	0x7ce
	.long	0x1ff
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	0x3dd9
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x2a
	.string	"n"
	.byte	0x1
	.value	0x7d4
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x26
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x7f6
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x3e54
	.string	"redirect_exp"
	.byte	0x1
	.value	0x803
	.byte	0x1
	.long	0x212
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x2f
	.long	.LASF15
	.byte	0x1
	.value	0x801
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF16
	.byte	0x1
	.value	0x801
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x802
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.string	"loc"
	.byte	0x1
	.value	0x804
	.long	0x1313
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x3ebc
	.byte	0x1
	.string	"redirect_jump_1"
	.byte	0x1
	.value	0x819
	.byte	0x1
	.long	0x212
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x2c
	.string	"jump"
	.byte	0x1
	.value	0x818
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF16
	.byte	0x1
	.value	0x818
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF17
	.byte	0x1
	.value	0x81a
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.string	"loc"
	.byte	0x1
	.value	0x81b
	.long	0x1313
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x3f22
	.byte	0x1
	.string	"redirect_jump"
	.byte	0x1
	.value	0x834
	.byte	0x1
	.long	0x212
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x2c
	.string	"jump"
	.byte	0x1
	.value	0x832
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF16
	.byte	0x1
	.value	0x832
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF18
	.byte	0x1
	.value	0x833
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.long	.LASF15
	.byte	0x1
	.value	0x835
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0x3fc6
	.string	"invert_exp_1"
	.byte	0x1
	.value	0x857
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x856
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF0
	.byte	0x1
	.value	0x858
	.long	0x6d4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x859
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	0x3fb5
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x2a
	.string	"comp"
	.byte	0x1
	.value	0x863
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"tem"
	.byte	0x1
	.value	0x864
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.string	"reversed_code"
	.byte	0x1
	.value	0x865
	.long	0x6d4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	.LASF13
	.long	0x4293
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12884
	.byte	0x0
	.uleb128 0x2b
	.long	0x3ffa
	.string	"invert_exp"
	.byte	0x1
	.value	0x888
	.byte	0x1
	.long	0x212
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x887
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x4051
	.byte	0x1
	.string	"invert_jump_1"
	.byte	0x1
	.value	0x898
	.byte	0x1
	.long	0x212
	.long	.LFB61
	.long	.LFE61
	.long	.LLST46
	.uleb128 0x2c
	.string	"jump"
	.byte	0x1
	.value	0x897
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF16
	.byte	0x1
	.value	0x897
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF17
	.byte	0x1
	.value	0x899
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x40b6
	.byte	0x1
	.string	"invert_jump"
	.byte	0x1
	.value	0x8aa
	.byte	0x1
	.long	0x212
	.long	.LFB62
	.long	.LFE62
	.long	.LLST47
	.uleb128 0x2c
	.string	"jump"
	.byte	0x1
	.value	0x8a8
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF16
	.byte	0x1
	.value	0x8a8
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF18
	.byte	0x1
	.value	0x8a9
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF13
	.long	0x427e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12934
	.byte	0x0
	.uleb128 0x2e
	.long	0x41ac
	.byte	0x1
	.string	"rtx_renumbered_equal_p"
	.byte	0x1
	.value	0x8d2
	.byte	0x1
	.long	0x212
	.long	.LFB63
	.long	.LFE63
	.long	.LLST48
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.value	0x8d1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"y"
	.byte	0x1
	.value	0x8d1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x8d3
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF0
	.byte	0x1
	.value	0x8d4
	.long	0x6d4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.string	"fmt"
	.byte	0x1
	.value	0x8d5
	.long	0x1ff
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	0x4180
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x2a
	.string	"reg_x"
	.byte	0x1
	.value	0x8de
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.string	"reg_y"
	.byte	0x1
	.value	0x8de
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"byte_x"
	.byte	0x1
	.value	0x8df
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.string	"byte_y"
	.byte	0x1
	.value	0x8df
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x28
	.long	0x419b
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x956
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	.LASF13
	.long	0x4269
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12981
	.byte	0x0
	.uleb128 0x2e
	.long	0x41fa
	.byte	0x1
	.string	"true_regnum"
	.byte	0x1
	.value	0x990
	.byte	0x1
	.long	0x212
	.long	.LFB64
	.long	.LFE64
	.long	.LLST49
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.value	0x98f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x2a
	.string	"base"
	.byte	0x1
	.value	0x999
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x4244
	.byte	0x1
	.string	"reg_or_subregno"
	.byte	0x1
	.value	0x9a6
	.byte	0x1
	.long	0x2eb
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x2c
	.string	"reg"
	.byte	0x1
	.value	0x9a5
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF13
	.long	0x4254
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13299
	.byte	0x0
	.uleb128 0xe
	.long	0x4254
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0xf
	.byte	0x0
	.uleb128 0x9
	.long	0x4244
	.uleb128 0xe
	.long	0x4269
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0x16
	.byte	0x0
	.uleb128 0x9
	.long	0x4259
	.uleb128 0xe
	.long	0x427e
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0xb
	.byte	0x0
	.uleb128 0x9
	.long	0x426e
	.uleb128 0xe
	.long	0x4293
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0xc
	.byte	0x0
	.uleb128 0x9
	.long	0x4283
	.uleb128 0xe
	.long	0x42a8
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0xe
	.byte	0x0
	.uleb128 0x9
	.long	0x4298
	.uleb128 0x9
	.long	0x4244
	.uleb128 0xe
	.long	0x42c2
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0x10
	.byte	0x0
	.uleb128 0x9
	.long	0x42b2
	.uleb128 0xe
	.long	0x42d7
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0x12
	.byte	0x0
	.uleb128 0x9
	.long	0x42c7
	.uleb128 0x9
	.long	0x4298
	.uleb128 0xe
	.long	0x42f1
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0x21
	.byte	0x0
	.uleb128 0x9
	.long	0x42e1
	.uleb128 0xe
	.long	0x4306
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0x11
	.byte	0x0
	.uleb128 0x9
	.long	0x42f6
	.uleb128 0xe
	.long	0x431b
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0x18
	.byte	0x0
	.uleb128 0x9
	.long	0x430b
	.uleb128 0xe
	.long	0x4330
	.long	0x625
	.uleb128 0xf
	.long	0x302
	.byte	0x35
	.byte	0x0
	.uleb128 0x32
	.long	.LASF2
	.byte	0x4
	.byte	0x34
	.long	0x433d
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x4320
	.uleb128 0xe
	.long	0x4352
	.long	0x32f
	.uleb128 0xf
	.long	0x302
	.byte	0xa2
	.byte	0x0
	.uleb128 0x33
	.string	"rtx_length"
	.byte	0x3
	.byte	0x36
	.long	0x4366
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x4342
	.uleb128 0xe
	.long	0x437b
	.long	0x1ff
	.uleb128 0xf
	.long	0x302
	.byte	0xa2
	.byte	0x0
	.uleb128 0x33
	.string	"rtx_format"
	.byte	0x3
	.byte	0x3c
	.long	0x438f
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x436b
	.uleb128 0xe
	.long	0x43a4
	.long	0x20a
	.uleb128 0xf
	.long	0x302
	.byte	0xa2
	.byte	0x0
	.uleb128 0x33
	.string	"rtx_class"
	.byte	0x3
	.byte	0x3f
	.long	0x43b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x4394
	.uleb128 0xe
	.long	0x43cc
	.long	0x99
	.uleb128 0xf
	.long	0x302
	.byte	0xa
	.byte	0x0
	.uleb128 0x34
	.string	"global_rtl"
	.byte	0x3
	.value	0x6df
	.long	0x43bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"reload_completed"
	.byte	0x3
	.value	0x75d
	.long	0x212
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"optimize"
	.byte	0x8
	.byte	0x41
	.long	0x212
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"warn_notreached"
	.byte	0x8
	.byte	0x6f
	.long	0x212
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"flag_test_coverage"
	.byte	0x8
	.byte	0xce
	.long	0x212
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"flag_finite_math_only"
	.byte	0x8
	.value	0x175
	.long	0x212
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"reg_n_info"
	.byte	0x9
	.byte	0x43
	.long	0x189b
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"reg_renumber"
	.byte	0x9
	.byte	0x9a
	.long	0x448d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x37a
	.uleb128 0x34
	.string	"cfun"
	.byte	0xc
	.value	0x202
	.long	0x2a93
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x25
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
	.uleb128 0x2b
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x32
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
	.long	0x362
	.value	0x2
	.long	.Ldebug_info0
	.long	0x44a3
	.long	0x2b04
	.string	"rebuild_jump_labels"
	.long	0x2b5a
	.string	"cleanup_barriers"
	.long	0x2bec
	.string	"copy_loop_headers"
	.long	0x2c65
	.string	"purge_line_number_notes"
	.long	0x2f42
	.string	"squeeze_notes"
	.long	0x3008
	.string	"get_label_before"
	.long	0x306b
	.string	"get_label_after"
	.long	0x30b4
	.string	"reversed_comparison_code_parts"
	.long	0x31a0
	.string	"reversed_comparison_code"
	.long	0x31f2
	.string	"reverse_condition"
	.long	0x323e
	.string	"reverse_condition_maybe_unordered"
	.long	0x329a
	.string	"swap_condition"
	.long	0x32e3
	.string	"unsigned_condition"
	.long	0x3330
	.string	"signed_condition"
	.long	0x337b
	.string	"comparison_dominates_p"
	.long	0x33cf
	.string	"simplejump_p"
	.long	0x3406
	.string	"tablejump_p"
	.long	0x344d
	.string	"condjump_p"
	.long	0x348f
	.string	"condjump_in_parallel_p"
	.long	0x34dd
	.string	"pc_set"
	.long	0x351d
	.string	"any_uncondjump_p"
	.long	0x3565
	.string	"any_condjump_p"
	.long	0x35c5
	.string	"condjump_label"
	.long	0x3660
	.string	"returnjump_p"
	.long	0x3697
	.string	"onlyjump_p"
	.long	0x36db
	.string	"follow_jumps"
	.long	0x376b
	.string	"mark_jump_label"
	.long	0x3853
	.string	"delete_jump"
	.long	0x3894
	.string	"delete_barrier"
	.long	0x3a64
	.string	"delete_related_insns"
	.long	0x3b84
	.string	"next_nondeleted_insn"
	.long	0x3bc3
	.string	"delete_for_peephole"
	.long	0x3c43
	.string	"never_reached_warning"
	.long	0x3e54
	.string	"redirect_jump_1"
	.long	0x3ebc
	.string	"redirect_jump"
	.long	0x3ffa
	.string	"invert_jump_1"
	.long	0x4051
	.string	"invert_jump"
	.long	0x40b6
	.string	"rtx_renumbered_equal_p"
	.long	0x41ac
	.string	"true_regnum"
	.long	0x41fa
	.string	"reg_or_subregno"
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
.LASF5:
	.string	"next"
.LASF4:
	.string	"basic_block"
.LASF17:
	.string	"ochanges"
.LASF3:
	.string	"mem_attrs"
.LASF0:
	.string	"code"
.LASF10:
	.string	"insn"
.LASF7:
	.string	"sequence_stack"
.LASF12:
	.string	"label"
.LASF13:
	.string	"__FUNCTION__"
.LASF16:
	.string	"nlabel"
.LASF18:
	.string	"delete_unused"
.LASF15:
	.string	"olabel"
.LASF11:
	.string	"label_ref"
.LASF14:
	.string	"comparison"
.LASF2:
	.string	"mode_class"
.LASF9:
	.string	"function_frequency"
.LASF8:
	.string	"sequence_rtl_expr"
.LASF1:
	.string	"unsigned int"
.LASF6:
	.string	"prev"
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
