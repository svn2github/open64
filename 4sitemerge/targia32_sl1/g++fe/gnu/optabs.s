	.file	"optabs.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.type	__FUNCTION__.14131, @object
	.size	__FUNCTION__.14131, 15
__FUNCTION__.14131:
	.string	"add_equal_note"
.LC0:
	.string	"../../../kg++fe/gnu/optabs.c"
	.text
	.type	add_equal_note, @function
add_equal_note:
.LFB15:
	.file 1 "../../../kg++fe/gnu/optabs.c"
	.loc 1 155 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%esi
.LCFI2:
	pushl	%ebx
.LCFI3:
	subl	$48, %esp
.LCFI4:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 159 0
	cmpl	$0, 8(%ebp)
	je	.L2
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L2
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L5
.L2:
	.loc 1 162 0
	leal	__FUNCTION__.14131@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$162, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L5:
	.loc 1 164 0
	movl	16(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$49, %al
	je	.L6
	movl	16(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$50, %al
	je	.L6
	movl	16(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$99, %al
	je	.L6
	movl	16(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	je	.L6
	.loc 1 166 0
	movl	$1, -36(%ebp)
	jmp	.L11
.L6:
	.loc 1 168 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	jne	.L12
	.loc 1 169 0
	movl	$1, -36(%ebp)
	jmp	.L11
.L12:
	.loc 1 171 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 172 0
	jmp	.L14
.L15:
	.loc 1 173 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L14:
	.loc 1 172 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L15
	.loc 1 176 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L17
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L19
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L21
.L19:
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -28(%ebp)
.L21:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L22
.L17:
	movl	$0, -32(%ebp)
.L22:
	movl	-32(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 177 0
	cmpl	$0, -16(%ebp)
	jne	.L23
	.loc 1 178 0
	movl	$1, -36(%ebp)
	jmp	.L11
.L23:
	.loc 1 180 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L25
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	jne	.L27
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L25
.L27:
	.loc 1 186 0
	movl	$1, -36(%ebp)
	jmp	.L11
.L25:
	.loc 1 190 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L29
	cmpl	$0, 24(%ebp)
	je	.L31
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L31
.L29:
	.loc 1 193 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 194 0
	jmp	.L33
.L34:
	.loc 1 196 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	je	.L35
	.loc 1 197 0
	movl	$0, -36(%ebp)
	jmp	.L11
.L35:
	.loc 1 199 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L33:
	.loc 1 194 0
	cmpl	$0, -20(%ebp)
	jne	.L34
.L31:
	.loc 1 203 0
	movl	16(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$49, %al
	jne	.L37
	.loc 1 204 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -12(%ebp)
	jmp	.L39
.L37:
	.loc 1 206 0
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %esi
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -12(%ebp)
.L39:
	.loc 1 208 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	set_unique_reg_note@PLT
	.loc 1 210 0
	movl	$1, -36(%ebp)
.L11:
	movl	-36(%ebp), %eax
	.loc 1 211 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE15:
	.size	add_equal_note, .-add_equal_note
	.type	widen_operand, @function
widen_operand:
.LFB16:
	.loc 1 225 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%ebx
.LCFI7:
	subl	$52, %esp
.LCFI8:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 229 0
	cmpl	$0, 24(%ebp)
	je	.L42
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L42
	.loc 1 230 0
	movl	8(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L45
.L42:
	.loc 1 235 0
	cmpl	$0, 24(%ebp)
	je	.L46
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L48
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L48
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L51
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	jmp	.L53
.L51:
	movl	$-1, -32(%ebp)
.L53:
	movl	-32(%ebp), %eax
	cmpl	20(%ebp), %eax
	jne	.L48
.L46:
	.loc 1 238 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_modes@PLT
	movl	%eax, -36(%ebp)
	jmp	.L45
.L48:
	.loc 1 242 0
	movl	12(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L54
	movl	$8, -24(%ebp)
	jmp	.L56
.L54:
	movl	$4, -24(%ebp)
.L56:
	movl	-24(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	jg	.L57
	.loc 1 243 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	force_reg@PLT
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -36(%ebp)
	jmp	.L45
.L57:
	.loc 1 248 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -8(%ebp)
	.loc 1 249 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$59, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 250 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_move_insn@PLT
	.loc 1 251 0
	movl	-8(%ebp), %eax
	movl	%eax, -36(%ebp)
.L45:
	movl	-36(%ebp), %eax
	.loc 1 252 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	widen_operand, .-widen_operand
	.type	expand_cmplxdiv_straight, @function
expand_cmplxdiv_straight:
.LFB17:
	.loc 1 265 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	pushl	%ebx
.LCFI11:
	subl	$84, %esp
.LCFI12:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 270 0
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 271 0
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 272 0
	movl	optab_table@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 273 0
	movl	optab_table@GOT(%ebx), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 275 0
	movl	optab_table@GOT(%ebx), %eax
	movl	44(%eax), %eax
	cmpl	48(%ebp), %eax
	jne	.L61
	.loc 1 277 0
	movl	optab_table@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 278 0
	movl	optab_table@GOT(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 279 0
	movl	optab_table@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 280 0
	movl	optab_table@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L61:
	.loc 1 284 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, 8(%ebp)
	.loc 1 285 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, 12(%ebp)
	.loc 1 287 0
	cmpl	$0, 16(%ebp)
	je	.L63
	.loc 1 288 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, 16(%ebp)
.L63:
	.loc 1 290 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, 20(%ebp)
	.loc 1 293 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -32(%ebp)
	.loc 1 296 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -28(%ebp)
	.loc 1 299 0
	cmpl	$0, -32(%ebp)
	je	.L65
	cmpl	$0, -28(%ebp)
	jne	.L67
.L65:
	.loc 1 300 0
	movl	$0, -56(%ebp)
	jmp	.L68
.L67:
	.loc 1 302 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -44(%ebp)
	.loc 1 304 0
	cmpl	$0, -44(%ebp)
	jne	.L69
	.loc 1 305 0
	movl	$0, -56(%ebp)
	jmp	.L68
.L69:
	.loc 1 307 0
	cmpl	$0, 16(%ebp)
	jne	.L71
	.loc 1 313 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -40(%ebp)
	.loc 1 316 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -36(%ebp)
	.loc 1 319 0
	cmpl	$0, -40(%ebp)
	je	.L73
	cmpl	$0, -36(%ebp)
	jne	.L75
.L73:
	.loc 1 320 0
	movl	$0, -56(%ebp)
	jmp	.L68
.L75:
	.loc 1 322 0
	movl	36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -36(%ebp)
	jmp	.L76
.L71:
	.loc 1 329 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -32(%ebp)
	.loc 1 332 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -28(%ebp)
	.loc 1 335 0
	cmpl	$0, -32(%ebp)
	je	.L77
	cmpl	$0, -28(%ebp)
	jne	.L79
.L77:
	.loc 1 336 0
	movl	$0, -56(%ebp)
	jmp	.L68
.L79:
	.loc 1 338 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -40(%ebp)
	.loc 1 341 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -32(%ebp)
	.loc 1 344 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -28(%ebp)
	.loc 1 347 0
	cmpl	$0, -32(%ebp)
	je	.L80
	cmpl	$0, -28(%ebp)
	jne	.L82
.L80:
	.loc 1 348 0
	movl	$0, -56(%ebp)
	jmp	.L68
.L82:
	.loc 1 350 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -36(%ebp)
	.loc 1 353 0
	cmpl	$0, -40(%ebp)
	je	.L83
	cmpl	$0, -36(%ebp)
	jne	.L76
.L83:
	.loc 1 354 0
	movl	$0, -56(%ebp)
	jmp	.L68
.L76:
	.loc 1 357 0
	cmpl	$6, 44(%ebp)
	jne	.L85
	.loc 1 358 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -24(%ebp)
	jmp	.L87
.L85:
	.loc 1 361 0
	movl	36(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$63, 4(%esp)
	movl	$0, (%esp)
	call	expand_divmod@PLT
	movl	%eax, -24(%ebp)
.L87:
	.loc 1 364 0
	cmpl	$0, -24(%ebp)
	jne	.L88
	.loc 1 365 0
	movl	$0, -56(%ebp)
	jmp	.L68
.L88:
	.loc 1 367 0
	movl	-24(%ebp), %eax
	cmpl	24(%ebp), %eax
	je	.L90
	.loc 1 368 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L90:
	.loc 1 370 0
	cmpl	$6, 44(%ebp)
	jne	.L92
	.loc 1 371 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -24(%ebp)
	jmp	.L94
.L92:
	.loc 1 374 0
	movl	36(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$63, 4(%esp)
	movl	$0, (%esp)
	call	expand_divmod@PLT
	movl	%eax, -24(%ebp)
.L94:
	.loc 1 377 0
	cmpl	$0, -24(%ebp)
	jne	.L95
	.loc 1 378 0
	movl	$0, -56(%ebp)
	jmp	.L68
.L95:
	.loc 1 380 0
	movl	-24(%ebp), %eax
	cmpl	28(%ebp), %eax
	je	.L97
	.loc 1 381 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L97:
	.loc 1 383 0
	movl	$1, -56(%ebp)
.L68:
	movl	-56(%ebp), %eax
	.loc 1 384 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	expand_cmplxdiv_straight, .-expand_cmplxdiv_straight
	.type	expand_cmplxdiv_wide, @function
expand_cmplxdiv_wide:
.LFB18:
	.loc 1 397 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	pushl	%ebx
.LCFI15:
	subl	$100, %esp
.LCFI16:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 403 0
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 404 0
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 405 0
	movl	optab_table@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 406 0
	movl	optab_table@GOT(%ebx), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 408 0
	movl	optab_table@GOT(%ebx), %eax
	movl	44(%eax), %eax
	cmpl	48(%ebp), %eax
	jne	.L101
	.loc 1 410 0
	movl	optab_table@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 411 0
	movl	optab_table@GOT(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 412 0
	movl	optab_table@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 413 0
	movl	optab_table@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L101:
	.loc 1 417 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, 8(%ebp)
	.loc 1 418 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, 12(%ebp)
	.loc 1 420 0
	cmpl	$0, 16(%ebp)
	je	.L103
	.loc 1 421 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, 16(%ebp)
.L103:
	.loc 1 423 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, 20(%ebp)
	.loc 1 426 0
	cmpl	$0, 36(%ebp)
	je	.L105
	.loc 1 428 0
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 429 0
	movl	20(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L107
.L105:
	.loc 1 433 0
	movl	$1, 16(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_abs@PLT
	movl	%eax, -44(%ebp)
	.loc 1 434 0
	movl	$1, 16(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_abs@PLT
	movl	%eax, -40(%ebp)
.L107:
	.loc 1 437 0
	cmpl	$0, -44(%ebp)
	je	.L108
	cmpl	$0, -40(%ebp)
	jne	.L110
.L108:
	.loc 1 438 0
	movl	$0, -72(%ebp)
	jmp	.L111
.L110:
	.loc 1 440 0
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 441 0
	call	gen_label_rtx@PLT
	movl	%eax, -36(%ebp)
	.loc 1 442 0
	movl	-36(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	$117, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_cmp_and_jump_insns@PLT
	.loc 1 447 0
	cmpl	$6, 44(%ebp)
	jne	.L112
	.loc 1 448 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -60(%ebp)
	jmp	.L114
.L112:
	.loc 1 451 0
	movl	36(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$63, 4(%esp)
	movl	$0, (%esp)
	call	expand_divmod@PLT
	movl	%eax, -60(%ebp)
.L114:
	.loc 1 454 0
	cmpl	$0, -60(%ebp)
	jne	.L115
	.loc 1 455 0
	movl	$0, -72(%ebp)
	jmp	.L111
.L115:
	.loc 1 459 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -44(%ebp)
	.loc 1 462 0
	cmpl	$0, -44(%ebp)
	jne	.L117
	.loc 1 463 0
	movl	$0, -72(%ebp)
	jmp	.L111
.L117:
	.loc 1 465 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -56(%ebp)
	.loc 1 468 0
	cmpl	$0, -56(%ebp)
	jne	.L119
	.loc 1 469 0
	movl	$0, -72(%ebp)
	jmp	.L111
.L119:
	.loc 1 473 0
	cmpl	$0, 16(%ebp)
	jne	.L121
	.loc 1 475 0
	movl	8(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 479 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -48(%ebp)
	.loc 1 482 0
	cmpl	$0, -48(%ebp)
	jne	.L123
	.loc 1 483 0
	movl	$0, -72(%ebp)
	jmp	.L111
.L123:
	.loc 1 485 0
	movl	36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -48(%ebp)
	.loc 1 488 0
	cmpl	$0, -52(%ebp)
	je	.L125
	cmpl	$0, -48(%ebp)
	jne	.L128
.L125:
	.loc 1 489 0
	movl	$0, -72(%ebp)
	jmp	.L111
.L121:
	.loc 1 496 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -44(%ebp)
	.loc 1 499 0
	cmpl	$0, -44(%ebp)
	jne	.L129
	.loc 1 500 0
	movl	$0, -72(%ebp)
	jmp	.L111
.L129:
	.loc 1 502 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -52(%ebp)
	.loc 1 505 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -44(%ebp)
	.loc 1 508 0
	cmpl	$0, -44(%ebp)
	jne	.L131
	.loc 1 509 0
	movl	$0, -72(%ebp)
	jmp	.L111
.L131:
	.loc 1 511 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -48(%ebp)
	.loc 1 514 0
	cmpl	$0, -52(%ebp)
	je	.L133
	cmpl	$0, -48(%ebp)
	jne	.L128
.L133:
	.loc 1 515 0
	movl	$0, -72(%ebp)
	jmp	.L111
.L128:
	.loc 1 518 0
	cmpl	$6, 44(%ebp)
	jne	.L135
	.loc 1 519 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -24(%ebp)
	jmp	.L137
.L135:
	.loc 1 522 0
	movl	36(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$63, 4(%esp)
	movl	$0, (%esp)
	call	expand_divmod@PLT
	movl	%eax, -24(%ebp)
.L137:
	.loc 1 525 0
	cmpl	$0, -24(%ebp)
	jne	.L138
	.loc 1 526 0
	movl	$0, -72(%ebp)
	jmp	.L111
.L138:
	.loc 1 528 0
	movl	-24(%ebp), %eax
	cmpl	24(%ebp), %eax
	je	.L140
	.loc 1 529 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L140:
	.loc 1 531 0
	cmpl	$6, 44(%ebp)
	jne	.L142
	.loc 1 532 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -24(%ebp)
	jmp	.L144
.L142:
	.loc 1 535 0
	movl	36(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$63, 4(%esp)
	movl	$0, (%esp)
	call	expand_divmod@PLT
	movl	%eax, -24(%ebp)
.L144:
	.loc 1 538 0
	cmpl	$0, -24(%ebp)
	jne	.L145
	.loc 1 539 0
	movl	$0, -72(%ebp)
	jmp	.L111
.L145:
	.loc 1 541 0
	movl	-24(%ebp), %eax
	cmpl	28(%ebp), %eax
	je	.L147
	.loc 1 542 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L147:
	.loc 1 544 0
	call	gen_label_rtx@PLT
	movl	%eax, -32(%ebp)
	.loc 1 545 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	.loc 1 546 0
	call	emit_barrier@PLT
	.loc 1 548 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 552 0
	cmpl	$6, 44(%ebp)
	jne	.L149
	.loc 1 553 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -60(%ebp)
	jmp	.L151
.L149:
	.loc 1 556 0
	movl	36(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$63, 4(%esp)
	movl	$0, (%esp)
	call	expand_divmod@PLT
	movl	%eax, -60(%ebp)
.L151:
	.loc 1 559 0
	cmpl	$0, -60(%ebp)
	jne	.L152
	.loc 1 560 0
	movl	$0, -72(%ebp)
	jmp	.L111
.L152:
	.loc 1 564 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -44(%ebp)
	.loc 1 567 0
	cmpl	$0, -44(%ebp)
	jne	.L154
	.loc 1 568 0
	movl	$0, -72(%ebp)
	jmp	.L111
.L154:
	.loc 1 570 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -56(%ebp)
	.loc 1 573 0
	cmpl	$0, -56(%ebp)
	jne	.L156
	.loc 1 574 0
	movl	$0, -72(%ebp)
	jmp	.L111
.L156:
	.loc 1 578 0
	cmpl	$0, 16(%ebp)
	jne	.L158
	.loc 1 582 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -52(%ebp)
	.loc 1 585 0
	movl	36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -48(%ebp)
	.loc 1 588 0
	cmpl	$0, -52(%ebp)
	je	.L160
	cmpl	$0, -48(%ebp)
	jne	.L163
.L160:
	.loc 1 589 0
	movl	$0, -72(%ebp)
	jmp	.L111
.L158:
	.loc 1 596 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -44(%ebp)
	.loc 1 599 0
	cmpl	$0, -44(%ebp)
	jne	.L164
	.loc 1 600 0
	movl	$0, -72(%ebp)
	jmp	.L111
.L164:
	.loc 1 602 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -52(%ebp)
	.loc 1 605 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -44(%ebp)
	.loc 1 608 0
	cmpl	$0, -44(%ebp)
	jne	.L166
	.loc 1 609 0
	movl	$0, -72(%ebp)
	jmp	.L111
.L166:
	.loc 1 611 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -48(%ebp)
	.loc 1 614 0
	cmpl	$0, -52(%ebp)
	je	.L168
	cmpl	$0, -48(%ebp)
	jne	.L163
.L168:
	.loc 1 615 0
	movl	$0, -72(%ebp)
	jmp	.L111
.L163:
	.loc 1 618 0
	cmpl	$6, 44(%ebp)
	jne	.L170
	.loc 1 619 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -24(%ebp)
	jmp	.L172
.L170:
	.loc 1 622 0
	movl	36(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$63, 4(%esp)
	movl	$0, (%esp)
	call	expand_divmod@PLT
	movl	%eax, -24(%ebp)
.L172:
	.loc 1 625 0
	cmpl	$0, -24(%ebp)
	jne	.L173
	.loc 1 626 0
	movl	$0, -72(%ebp)
	jmp	.L111
.L173:
	.loc 1 628 0
	movl	-24(%ebp), %eax
	cmpl	24(%ebp), %eax
	je	.L175
	.loc 1 629 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L175:
	.loc 1 631 0
	cmpl	$6, 44(%ebp)
	jne	.L177
	.loc 1 632 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -24(%ebp)
	jmp	.L179
.L177:
	.loc 1 635 0
	movl	36(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$63, 4(%esp)
	movl	$0, (%esp)
	call	expand_divmod@PLT
	movl	%eax, -24(%ebp)
.L179:
	.loc 1 638 0
	cmpl	$0, -24(%ebp)
	jne	.L180
	.loc 1 639 0
	movl	$0, -72(%ebp)
	jmp	.L111
.L180:
	.loc 1 641 0
	movl	-24(%ebp), %eax
	cmpl	28(%ebp), %eax
	je	.L182
	.loc 1 642 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L182:
	.loc 1 644 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 646 0
	movl	$1, -72(%ebp)
.L111:
	movl	-72(%ebp), %eax
	.loc 1 647 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	expand_cmplxdiv_wide, .-expand_cmplxdiv_wide
	.section	.rodata
	.type	__FUNCTION__.14517, @object
	.size	__FUNCTION__.14517, 20
__FUNCTION__.14517:
	.string	"expand_simple_binop"
	.text
.globl expand_simple_binop
	.type	expand_simple_binop, @function
expand_simple_binop:
.LFB19:
	.loc 1 660 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%ebx
.LCFI19:
	subl	$52, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 661 0
	movl	12(%ebp), %eax
	movl	code_to_optab@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 662 0
	cmpl	$0, -8(%ebp)
	jne	.L186
	.loc 1 663 0
	leal	__FUNCTION__.14517@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$663, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L186:
	.loc 1 665 0
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	.loc 1 666 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	expand_simple_binop, .-expand_simple_binop
	.section	.rodata
	.type	__FUNCTION__.14636, @object
	.size	__FUNCTION__.14636, 13
__FUNCTION__.14636:
	.string	"expand_binop"
	.text
.globl expand_binop
	.type	expand_binop, @function
expand_binop:
.LFB20:
	.loc 1 687 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%esi
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$704, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 690 0
	cmpl	$1, 32(%ebp)
	je	.L190
	cmpl	$3, 32(%ebp)
	je	.L190
	movl	32(%ebp), %eax
	movl	%eax, -664(%ebp)
	jmp	.L193
.L190:
	movl	$2, -664(%ebp)
.L193:
	movl	-664(%ebp), %edx
	movl	%edx, -420(%ebp)
	.loc 1 694 0
	movl	$0, -404(%ebp)
	.loc 1 699 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$97, %eax
	je	.L194
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$99, %eax
	je	.L194
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$100, %eax
	je	.L194
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$98, %eax
	je	.L194
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$101, %eax
	jne	.L199
.L194:
	movl	$1, -660(%ebp)
	jmp	.L200
.L199:
	movl	$0, -660(%ebp)
.L200:
	movl	-660(%ebp), %eax
	movl	%eax, -400(%ebp)
	.loc 1 700 0
	call	get_last_insn@PLT
	movl	%eax, -396(%ebp)
	.loc 1 703 0
	movl	8(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -416(%ebp)
	.loc 1 705 0
	movl	$0, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 16(%ebp)
	.loc 1 706 0
	movl	$0, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 20(%ebp)
	.loc 1 707 0
	cmpl	$0, 24(%ebp)
	je	.L201
	.loc 1 708 0
	movl	$1, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 24(%ebp)
.L201:
	.loc 1 710 0
	movl	flag_force_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L203
	.loc 1 712 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	force_not_mem@PLT
	movl	%eax, 16(%ebp)
	.loc 1 713 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	force_not_mem@PLT
	movl	%eax, 20(%ebp)
.L203:
	.loc 1 719 0
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L205
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L205
	.loc 1 721 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	negate_rtx@PLT
	movl	%eax, 20(%ebp)
	.loc 1 722 0
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
.L205:
	.loc 1 727 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L208
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L208
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L208
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L208
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L208
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L208
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L208
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L216
.L208:
	call	preserve_subexpressions_p@PLT
	testl	%eax, %eax
	je	.L216
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	cmpl	$4, %eax
	jle	.L216
	.loc 1 729 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, 16(%ebp)
.L216:
	.loc 1 731 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L219
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L219
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L219
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L219
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L219
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L219
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L219
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L227
.L219:
	call	preserve_subexpressions_p@PLT
	testl	%eax, %eax
	je	.L227
	cmpl	$0, -400(%ebp)
	jne	.L227
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	cmpl	$4, %eax
	jle	.L227
	.loc 1 733 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, 20(%ebp)
.L227:
	.loc 1 736 0
	call	get_last_insn@PLT
	movl	%eax, -392(%ebp)
	.loc 1 742 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$99, %al
	je	.L231
	movl	optab_table@GOT(%ebx), %eax
	movl	32(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L231
	movl	optab_table@GOT(%ebx), %eax
	movl	36(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L231
	movl	optab_table@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L231
	movl	optab_table@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L236
.L231:
	.loc 1 748 0
	movl	$1, -404(%ebp)
	.loc 1 750 0
	cmpl	$0, 24(%ebp)
	je	.L237
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L239
.L237:
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L240
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L242
.L240:
	movl	24(%ebp), %eax
	cmpl	20(%ebp), %eax
	jne	.L243
.L242:
	movl	$1, -656(%ebp)
	jmp	.L244
.L243:
	movl	$0, -656(%ebp)
.L244:
	movzbl	-656(%ebp), %eax
	testb	%al, %al
	jne	.L245
	jmp	.L247
.L239:
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L245
.L247:
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L236
.L245:
	.loc 1 757 0
	movl	20(%ebp), %eax
	movl	%eax, -408(%ebp)
	.loc 1 758 0
	movl	16(%ebp), %eax
	movl	%eax, 20(%ebp)
	.loc 1 759 0
	movl	-408(%ebp), %eax
	movl	%eax, 16(%ebp)
.L236:
	.loc 1 765 0
	cmpl	$4, 32(%ebp)
	je	.L248
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L248
.LBB2:
	.loc 1 768 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, -388(%ebp)
	.loc 1 769 0
	movl	-388(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -384(%ebp)
	.loc 1 770 0
	movl	-388(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -380(%ebp)
	.loc 1 772 0
	movl	16(%ebp), %eax
	movl	%eax, -372(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -368(%ebp)
	.loc 1 774 0
	cmpl	$0, 24(%ebp)
	je	.L251
	.loc 1 775 0
	movl	24(%ebp), %eax
	movl	%eax, -408(%ebp)
	jmp	.L253
.L251:
	.loc 1 777 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -408(%ebp)
.L253:
	.loc 1 781 0
	cmpl	$0, -404(%ebp)
	je	.L254
	.loc 1 783 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-384(%ebp), %eax
	je	.L254
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-380(%ebp), %eax
	je	.L254
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-380(%ebp), %eax
	jne	.L254
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-384(%ebp), %eax
	jne	.L254
.LBB3:
	.loc 1 788 0
	movl	16(%ebp), %eax
	movl	%eax, -364(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%ebp)
	movl	-364(%ebp), %eax
	movl	%eax, 20(%ebp)
	.loc 1 789 0
	movl	-372(%ebp), %eax
	movl	%eax, -364(%ebp)
	movl	-368(%ebp), %eax
	movl	%eax, -372(%ebp)
	movl	-364(%ebp), %eax
	movl	%eax, -368(%ebp)
.L254:
.LBE3:
	.loc 1 799 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-384(%ebp), %eax
	je	.L260
	cmpl	$0, -384(%ebp)
	je	.L260
	.loc 1 800 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L263
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -652(%ebp)
	jmp	.L265
.L263:
	movl	8(%ebp), %edx
	movl	%edx, -652(%ebp)
.L265:
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-372(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-652(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-384(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_modes@PLT
	movl	%eax, -372(%ebp)
.L260:
	.loc 1 806 0
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-380(%ebp), %eax
	je	.L266
	cmpl	$0, -380(%ebp)
	je	.L266
	.loc 1 807 0
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L269
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -648(%ebp)
	jmp	.L271
.L269:
	movl	8(%ebp), %edx
	movl	%edx, -648(%ebp)
.L271:
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-368(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-648(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-380(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_modes@PLT
	movl	%eax, -368(%ebp)
.L266:
	.loc 1 816 0
	movl	-388(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	(%eax), %edx
	movl	-384(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-372(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L272
	cmpl	$0, -384(%ebp)
	je	.L272
	.loc 1 818 0
	movl	-372(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-384(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, -372(%ebp)
.L272:
	.loc 1 820 0
	movl	-388(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	(%eax), %edx
	movl	-380(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-368(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L275
	cmpl	$0, -380(%ebp)
	je	.L275
	.loc 1 822 0
	movl	-368(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-380(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, -368(%ebp)
.L275:
	.loc 1 824 0
	movl	-388(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-408(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L278
	.loc 1 825 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -408(%ebp)
.L278:
	.loc 1 827 0
	movl	-388(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	-368(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-372(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-408(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -376(%ebp)
	.loc 1 828 0
	cmpl	$0, -376(%ebp)
	je	.L280
	.loc 1 833 0
	movl	-376(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L282
	movl	-376(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L282
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-368(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-372(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-408(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-376(%ebp), %eax
	movl	%eax, (%esp)
	call	add_equal_note
	testl	%eax, %eax
	jne	.L282
	.loc 1 836 0
	movl	-392(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
	.loc 1 837 0
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -644(%ebp)
	jmp	.L286
.L282:
	.loc 1 841 0
	movl	-376(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 842 0
	movl	-408(%ebp), %edx
	movl	%edx, -644(%ebp)
	jmp	.L286
.L280:
	.loc 1 845 0
	movl	-392(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
.L248:
.LBE2:
	.loc 1 851 0
	movl	optab_table@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L287
	movl	8(%ebp), %eax
	movl	mode_wider_mode@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L287
	cmpl	$0, 28(%ebp)
	je	.L290
	movl	optab_table@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	%eax, -640(%ebp)
	jmp	.L292
.L290:
	movl	optab_table@GOT(%ebx), %eax
	movl	32(%eax), %eax
	movl	%eax, -640(%ebp)
.L292:
	movl	8(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	-640(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L287
	.loc 1 856 0
	cmpl	$0, 28(%ebp)
	je	.L294
	movl	optab_table@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	%eax, -636(%ebp)
	jmp	.L296
.L294:
	movl	optab_table@GOT(%ebx), %eax
	movl	32(%eax), %eax
	movl	%eax, -636(%ebp)
.L296:
	movl	8(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %edx
	movl	$0, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-636(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -408(%ebp)
	.loc 1 860 0
	cmpl	$0, -408(%ebp)
	je	.L287
	.loc 1 862 0
	movl	8(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L298
	.loc 1 863 0
	movl	-408(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -644(%ebp)
	jmp	.L286
.L298:
	.loc 1 865 0
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-408(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, -644(%ebp)
	jmp	.L286
.L287:
	.loc 1 873 0
	cmpl	$1, -416(%ebp)
	je	.L300
	cmpl	$2, -416(%ebp)
	je	.L300
	cmpl	$6, -416(%ebp)
	jne	.L303
.L300:
	cmpl	$0, 32(%ebp)
	je	.L303
	cmpl	$1, 32(%ebp)
	je	.L303
	.loc 1 875 0
	movl	8(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -412(%ebp)
	jmp	.L306
.L307:
	.loc 1 878 0
	movl	-412(%ebp), %eax
	movl	12(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	jne	.L308
	movl	optab_table@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L310
	movl	-412(%ebp), %eax
	movl	mode_wider_mode@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L310
	cmpl	$0, 28(%ebp)
	je	.L313
	movl	optab_table@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	%eax, -632(%ebp)
	jmp	.L315
.L313:
	movl	optab_table@GOT(%ebx), %eax
	movl	32(%eax), %eax
	movl	%eax, -632(%ebp)
.L315:
	movl	-412(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	-632(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L310
.L308:
.LBB4:
	.loc 1 885 0
	movl	16(%ebp), %eax
	movl	%eax, -360(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -356(%ebp)
	.loc 1 886 0
	movl	$0, -352(%ebp)
	.loc 1 892 0
	movl	optab_table@GOT(%ebx), %eax
	movl	76(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L316
	movl	optab_table@GOT(%ebx), %eax
	movl	72(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L316
	movl	optab_table@GOT(%ebx), %eax
	movl	80(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L316
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L316
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L316
	movl	optab_table@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L316
	movl	optab_table@GOT(%ebx), %eax
	movl	84(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L323
.L316:
	cmpl	$1, -416(%ebp)
	jne	.L323
	.loc 1 897 0
	movl	$1, -352(%ebp)
.L323:
	.loc 1 899 0
	movl	-352(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-412(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	widen_operand
	movl	%eax, -360(%ebp)
	.loc 1 902 0
	cmpl	$0, -352(%ebp)
	je	.L325
	movl	optab_table@GOT(%ebx), %eax
	movl	84(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L325
	movl	$1, -628(%ebp)
	jmp	.L328
.L325:
	movl	$0, -628(%ebp)
.L328:
	movl	-628(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-412(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-356(%ebp), %eax
	movl	%eax, (%esp)
	call	widen_operand
	movl	%eax, -356(%ebp)
	.loc 1 905 0
	movl	$0, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-356(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-412(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -408(%ebp)
	.loc 1 907 0
	cmpl	$0, -408(%ebp)
	je	.L329
	.loc 1 909 0
	cmpl	$1, -416(%ebp)
	je	.L331
	.loc 1 911 0
	cmpl	$0, 24(%ebp)
	jne	.L333
	.loc 1 912 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 24(%ebp)
.L333:
	.loc 1 913 0
	movl	$0, 8(%esp)
	movl	-408(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_move@PLT
	.loc 1 914 0
	movl	24(%ebp), %edx
	movl	%edx, -644(%ebp)
	jmp	.L286
.L331:
	.loc 1 917 0
	movl	-408(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -644(%ebp)
	jmp	.L286
.L329:
	.loc 1 920 0
	movl	-392(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
.L310:
.LBE4:
	.loc 1 876 0
	movl	-412(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -412(%ebp)
.L306:
	.loc 1 875 0
	cmpl	$0, -412(%ebp)
	jne	.L307
.L303:
	.loc 1 925 0
	movl	optab_table@GOT(%ebx), %eax
	movl	72(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L335
	movl	optab_table@GOT(%ebx), %eax
	movl	76(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L335
	movl	optab_table@GOT(%ebx), %eax
	movl	80(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L338
.L335:
	cmpl	$1, -416(%ebp)
	jne	.L338
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -624(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L340
	movl	$8, -620(%ebp)
	jmp	.L342
.L340:
	movl	$4, -620(%ebp)
.L342:
	movl	-620(%ebp), %eax
	cmpl	%eax, -624(%ebp)
	jle	.L338
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	cmpl	$529, %eax
	je	.L338
.LBB5:
	.loc 1 936 0
	cmpl	$0, 24(%ebp)
	je	.L345
	movl	24(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L345
	movl	24(%ebp), %eax
	cmpl	20(%ebp), %eax
	jne	.L348
.L345:
	.loc 1 937 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 24(%ebp)
.L348:
	.loc 1 939 0
	call	start_sequence@PLT
	.loc 1 942 0
	movl	$0, -348(%ebp)
	jmp	.L349
.L350:
.LBB6:
	.loc 1 944 0
	movl	-348(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword@PLT
	movl	%eax, -336(%ebp)
	.loc 1 948 0
	movl	-348(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword_force@PLT
	movl	%eax, %esi
	movl	-348(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword_force@PLT
	movl	%eax, %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-336(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -332(%ebp)
	.loc 1 950 0
	cmpl	$0, -332(%ebp)
	je	.L351
	.loc 1 953 0
	movl	-336(%ebp), %eax
	cmpl	-332(%ebp), %eax
	je	.L353
	.loc 1 954 0
	movl	-332(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L353:
.LBE6:
	.loc 1 942 0
	addl	$1, -348(%ebp)
.L349:
	movl	8(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -616(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L355
	movl	$64, -612(%ebp)
	jmp	.L357
.L355:
	movl	$32, -612(%ebp)
.L357:
	movl	-616(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-612(%ebp)
	cmpl	-348(%ebp), %eax
	jg	.L350
.L351:
	.loc 1 957 0
	call	get_insns@PLT
	movl	%eax, -344(%ebp)
	.loc 1 958 0
	call	end_sequence@PLT
	.loc 1 960 0
	movl	8(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -608(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L358
	movl	$64, -604(%ebp)
	jmp	.L360
.L358:
	movl	$32, -604(%ebp)
.L360:
	movl	-608(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-604(%ebp)
	cmpl	-348(%ebp), %eax
	jne	.L338
	.loc 1 962 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L362
	.loc 1 963 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %esi
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -340(%ebp)
	jmp	.L364
.L362:
	.loc 1 967 0
	movl	$0, -340(%ebp)
.L364:
	.loc 1 969 0
	movl	-340(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-344(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_no_conflict_block@PLT
	.loc 1 970 0
	movl	24(%ebp), %edx
	movl	%edx, -644(%ebp)
	jmp	.L286
.L338:
.LBE5:
	.loc 1 975 0
	movl	optab_table@GOT(%ebx), %eax
	movl	88(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L365
	movl	optab_table@GOT(%ebx), %eax
	movl	84(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L365
	movl	optab_table@GOT(%ebx), %eax
	movl	92(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L368
.L365:
	cmpl	$1, -416(%ebp)
	jne	.L368
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L368
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -600(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L371
	movl	$16, -596(%ebp)
	jmp	.L373
.L371:
	movl	$8, -596(%ebp)
.L373:
	movl	-596(%ebp), %eax
	cmpl	%eax, -600(%ebp)
	jne	.L368
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	cmpl	$529, %eax
	je	.L368
	movl	optab_table@GOT(%ebx), %eax
	movl	84(%eax), %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L368
	movl	optab_table@GOT(%ebx), %eax
	movl	88(%eax), %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L368
.LBB7:
	.loc 1 991 0
	cmpl	$0, 24(%ebp)
	je	.L378
	movl	24(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L378
	movl	24(%ebp), %eax
	cmpl	20(%ebp), %eax
	jne	.L381
.L378:
	.loc 1 992 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 24(%ebp)
.L381:
	.loc 1 994 0
	call	start_sequence@PLT
	.loc 1 996 0
	movl	20(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -300(%ebp)
	.loc 1 1003 0
	movl	optab_table@GOT(%ebx), %eax
	movl	84(%eax), %eax
	cmpl	12(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -296(%ebp)
	.loc 1 1004 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	xorl	-296(%ebp), %eax
	movl	%eax, -292(%ebp)
	.loc 1 1006 0
	movl	-292(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword@PLT
	movl	%eax, -312(%ebp)
	.loc 1 1007 0
	movl	$1, %eax
	subl	-292(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword@PLT
	movl	%eax, -316(%ebp)
	.loc 1 1009 0
	movl	-292(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword_force@PLT
	movl	%eax, -304(%ebp)
	.loc 1 1010 0
	movl	$1, %eax
	subl	-292(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword_force@PLT
	movl	%eax, -308(%ebp)
	.loc 1 1012 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L382
	movl	$64, -592(%ebp)
	jmp	.L384
.L382:
	movl	$32, -592(%ebp)
.L384:
	movl	-592(%ebp), %edx
	cmpl	-300(%ebp), %edx
	jg	.L385
	.loc 1 1014 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L387
	movl	$64, -588(%ebp)
	jmp	.L389
.L387:
	movl	$32, -588(%ebp)
.L389:
	movl	-300(%ebp), %eax
	subl	-588(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-316(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-304(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -324(%ebp)
	.loc 1 1019 0
	cmpl	$0, -324(%ebp)
	je	.L390
	movl	-324(%ebp), %eax
	cmpl	-316(%ebp), %eax
	je	.L390
	.loc 1 1020 0
	movl	-324(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L390:
	.loc 1 1024 0
	cmpl	$0, -324(%ebp)
	je	.L393
	movl	optab_table@GOT(%ebx), %eax
	movl	92(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L393
	.loc 1 1025 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	const_tiny_rtx@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -324(%ebp)
	.loc 1 1024 0
	jmp	.L396
.L393:
	.loc 1 1026 0
	cmpl	$0, -324(%ebp)
	je	.L396
	.loc 1 1027 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L398
	movl	$63, -584(%ebp)
	movl	$0, -580(%ebp)
	jmp	.L400
.L398:
	movl	$31, -584(%ebp)
	movl	$0, -580(%ebp)
.L400:
	movl	-584(%ebp), %eax
	movl	-580(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-312(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-304(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -324(%ebp)
.L396:
	.loc 1 1032 0
	cmpl	$0, -324(%ebp)
	je	.L404
	movl	-324(%ebp), %eax
	cmpl	-312(%ebp), %eax
	je	.L404
	.loc 1 1033 0
	movl	-324(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-312(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	jmp	.L404
.L385:
.LBB8:
	.loc 1 1044 0
	cmpl	$0, -296(%ebp)
	je	.L405
	movl	optab_table@GOT(%ebx), %eax
	movl	88(%eax), %eax
	movl	%eax, -576(%ebp)
	jmp	.L407
.L405:
	movl	optab_table@GOT(%ebx), %eax
	movl	84(%eax), %eax
	movl	%eax, -576(%ebp)
.L407:
	movl	-576(%ebp), %edx
	movl	%edx, -284(%ebp)
	.loc 1 1050 0
	cmpl	$0, -296(%ebp)
	je	.L408
	movl	optab_table@GOT(%ebx), %eax
	movl	84(%eax), %eax
	movl	%eax, -572(%ebp)
	jmp	.L410
.L408:
	movl	optab_table@GOT(%ebx), %eax
	movl	88(%eax), %eax
	movl	%eax, -572(%ebp)
.L410:
	movl	-572(%ebp), %eax
	movl	%eax, -280(%ebp)
	.loc 1 1052 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L411
	movl	$64, -568(%ebp)
	jmp	.L413
.L411:
	movl	$32, -568(%ebp)
.L413:
	movl	-568(%ebp), %eax
	subl	-300(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-304(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-284(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -288(%ebp)
	.loc 1 1057 0
	cmpl	$0, -288(%ebp)
	jne	.L414
	.loc 1 1058 0
	movl	$0, -324(%ebp)
	jmp	.L416
.L414:
	.loc 1 1060 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-308(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-280(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -324(%ebp)
.L416:
	.loc 1 1063 0
	cmpl	$0, -324(%ebp)
	je	.L417
	.loc 1 1064 0
	movl	optab_table@GOT(%ebx), %eax
	movl	76(%eax), %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-316(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-324(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -324(%ebp)
.L417:
	.loc 1 1067 0
	cmpl	$0, -324(%ebp)
	je	.L419
	movl	-324(%ebp), %eax
	cmpl	-316(%ebp), %eax
	je	.L419
	.loc 1 1068 0
	movl	-324(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L419:
	.loc 1 1070 0
	cmpl	$0, -324(%ebp)
	je	.L422
	.loc 1 1071 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-312(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-304(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -324(%ebp)
.L422:
	.loc 1 1074 0
	cmpl	$0, -324(%ebp)
	je	.L404
	movl	-324(%ebp), %eax
	cmpl	-312(%ebp), %eax
	je	.L404
	.loc 1 1075 0
	movl	-324(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-312(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L404:
.LBE8:
	.loc 1 1078 0
	call	get_insns@PLT
	movl	%eax, -328(%ebp)
	.loc 1 1079 0
	call	end_sequence@PLT
	.loc 1 1081 0
	cmpl	$0, -324(%ebp)
	je	.L368
	.loc 1 1083 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L427
	.loc 1 1084 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -320(%ebp)
	jmp	.L429
.L427:
	.loc 1 1086 0
	movl	$0, -320(%ebp)
.L429:
	.loc 1 1088 0
	movl	-320(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-328(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_no_conflict_block@PLT
	.loc 1 1089 0
	movl	24(%ebp), %edx
	movl	%edx, -644(%ebp)
	jmp	.L286
.L368:
.LBE7:
	.loc 1 1094 0
	movl	optab_table@GOT(%ebx), %eax
	movl	96(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L430
	movl	optab_table@GOT(%ebx), %eax
	movl	100(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L432
.L430:
	cmpl	$1, -416(%ebp)
	jne	.L432
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L432
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -564(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L435
	movl	$16, -560(%ebp)
	jmp	.L437
.L435:
	movl	$8, -560(%ebp)
.L437:
	movl	-560(%ebp), %eax
	cmpl	%eax, -564(%ebp)
	jne	.L432
	movl	optab_table@GOT(%ebx), %eax
	movl	84(%eax), %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L432
	movl	optab_table@GOT(%ebx), %eax
	movl	88(%eax), %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L432
.LBB9:
	.loc 1 1109 0
	cmpl	$0, 24(%ebp)
	je	.L441
	movl	24(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L441
	movl	24(%ebp), %eax
	cmpl	20(%ebp), %eax
	jne	.L444
.L441:
	.loc 1 1110 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 24(%ebp)
.L444:
	.loc 1 1112 0
	call	start_sequence@PLT
	.loc 1 1114 0
	movl	20(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -248(%ebp)
	.loc 1 1121 0
	movl	optab_table@GOT(%ebx), %eax
	movl	96(%eax), %eax
	cmpl	12(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -244(%ebp)
	.loc 1 1122 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	xorl	-244(%ebp), %eax
	movl	%eax, -240(%ebp)
	.loc 1 1124 0
	movl	-240(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword@PLT
	movl	%eax, -264(%ebp)
	.loc 1 1125 0
	movl	$1, %eax
	subl	-240(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword@PLT
	movl	%eax, -268(%ebp)
	.loc 1 1127 0
	movl	-240(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword_force@PLT
	movl	%eax, -256(%ebp)
	.loc 1 1128 0
	movl	$1, %eax
	subl	-240(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword_force@PLT
	movl	%eax, -260(%ebp)
	.loc 1 1130 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L445
	movl	$64, -556(%ebp)
	jmp	.L447
.L445:
	movl	$32, -556(%ebp)
.L447:
	movl	-556(%ebp), %edx
	cmpl	-248(%ebp), %edx
	jne	.L448
	.loc 1 1133 0
	movl	-260(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-264(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 1134 0
	movl	-256(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-268(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 1135 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -252(%ebp)
	jmp	.L450
.L448:
.LBB10:
	.loc 1 1143 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L451
	movl	$64, -548(%ebp)
	jmp	.L453
.L451:
	movl	$32, -548(%ebp)
.L453:
	movl	-548(%ebp), %eax
	cmpl	-248(%ebp), %eax
	setg	%al
	movzbl	%al, %eax
	cmpl	-244(%ebp), %eax
	je	.L454
	movl	optab_table@GOT(%ebx), %eax
	movl	88(%eax), %eax
	movl	%eax, -552(%ebp)
	jmp	.L456
.L454:
	movl	optab_table@GOT(%ebx), %eax
	movl	84(%eax), %eax
	movl	%eax, -552(%ebp)
.L456:
	movl	-552(%ebp), %edx
	movl	%edx, -212(%ebp)
	.loc 1 1146 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L457
	movl	$64, -540(%ebp)
	jmp	.L459
.L457:
	movl	$32, -540(%ebp)
.L459:
	movl	-540(%ebp), %eax
	cmpl	-248(%ebp), %eax
	setg	%al
	movzbl	%al, %eax
	cmpl	-244(%ebp), %eax
	je	.L460
	movl	optab_table@GOT(%ebx), %eax
	movl	84(%eax), %eax
	movl	%eax, -544(%ebp)
	jmp	.L462
.L460:
	movl	optab_table@GOT(%ebx), %eax
	movl	88(%eax), %eax
	movl	%eax, -544(%ebp)
.L462:
	movl	-544(%ebp), %edx
	movl	%edx, -208(%ebp)
	.loc 1 1149 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L463
	movl	$64, -536(%ebp)
	jmp	.L465
.L463:
	movl	$32, -536(%ebp)
.L465:
	movl	-536(%ebp), %eax
	cmpl	-248(%ebp), %eax
	jge	.L466
	.loc 1 1151 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L468
	movl	$64, -532(%ebp)
	jmp	.L470
.L468:
	movl	$32, -532(%ebp)
.L470:
	movl	-248(%ebp), %eax
	subl	-532(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -220(%ebp)
	.loc 1 1152 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L471
	movl	$128, -528(%ebp)
	jmp	.L473
.L471:
	movl	$64, -528(%ebp)
.L473:
	movl	-528(%ebp), %eax
	subl	-248(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -216(%ebp)
	jmp	.L474
.L466:
	.loc 1 1156 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L475
	movl	$64, -524(%ebp)
	jmp	.L477
.L475:
	movl	$32, -524(%ebp)
.L477:
	movl	-524(%ebp), %eax
	subl	-248(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -220(%ebp)
	.loc 1 1157 0
	movl	-248(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -216(%ebp)
.L474:
	.loc 1 1160 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-220(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-208(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -236(%ebp)
	.loc 1 1163 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-216(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-260(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-212(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -232(%ebp)
	.loc 1 1167 0
	cmpl	$0, -236(%ebp)
	je	.L478
	cmpl	$0, -232(%ebp)
	je	.L478
	.loc 1 1168 0
	movl	optab_table@GOT(%ebx), %eax
	movl	76(%eax), %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-268(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-232(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -252(%ebp)
	.loc 1 1167 0
	jmp	.L481
.L478:
	.loc 1 1171 0
	movl	$0, -252(%ebp)
.L481:
	.loc 1 1173 0
	cmpl	$0, -252(%ebp)
	je	.L482
	movl	-252(%ebp), %eax
	cmpl	-268(%ebp), %eax
	je	.L482
	.loc 1 1174 0
	movl	-252(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-268(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L482:
	.loc 1 1176 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-220(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-260(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-208(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -228(%ebp)
	.loc 1 1179 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-216(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-212(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -224(%ebp)
	.loc 1 1183 0
	cmpl	$0, -252(%ebp)
	je	.L485
	cmpl	$0, -228(%ebp)
	je	.L485
	cmpl	$0, -224(%ebp)
	je	.L485
	.loc 1 1184 0
	movl	optab_table@GOT(%ebx), %eax
	movl	76(%eax), %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-264(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-224(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-228(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -252(%ebp)
.L485:
	.loc 1 1188 0
	cmpl	$0, -252(%ebp)
	je	.L450
	movl	-252(%ebp), %eax
	cmpl	-264(%ebp), %eax
	je	.L450
	.loc 1 1189 0
	movl	-252(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-264(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L450:
.LBE10:
	.loc 1 1192 0
	call	get_insns@PLT
	movl	%eax, -276(%ebp)
	.loc 1 1193 0
	call	end_sequence@PLT
	.loc 1 1195 0
	cmpl	$0, -252(%ebp)
	je	.L432
	.loc 1 1197 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L492
	.loc 1 1198 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -272(%ebp)
	jmp	.L494
.L492:
	.loc 1 1200 0
	movl	$0, -272(%ebp)
.L494:
	.loc 1 1205 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L495
	movl	$64, -520(%ebp)
	jmp	.L497
.L495:
	movl	$32, -520(%ebp)
.L497:
	movl	-520(%ebp), %edx
	cmpl	-248(%ebp), %edx
	je	.L498
	.loc 1 1206 0
	movl	-272(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_no_conflict_block@PLT
	jmp	.L500
.L498:
	.loc 1 1208 0
	movl	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
.L500:
	.loc 1 1211 0
	movl	24(%ebp), %eax
	movl	%eax, -644(%ebp)
	jmp	.L286
.L432:
.LBE9:
	.loc 1 1216 0
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L501
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L503
.L501:
	cmpl	$1, -416(%ebp)
	jne	.L503
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -516(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L505
	movl	$16, -512(%ebp)
	jmp	.L507
.L505:
	movl	$8, -512(%ebp)
.L507:
	movl	-512(%ebp), %edx
	cmpl	%edx, -516(%ebp)
	jl	.L503
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	cmpl	$529, %eax
	je	.L503
.LBB11:
	.loc 1 1222 0
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L510
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, -508(%ebp)
	jmp	.L512
.L510:
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -508(%ebp)
.L512:
	movl	-508(%ebp), %eax
	movl	%eax, -200(%ebp)
	.loc 1 1223 0
	movl	8(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -504(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L513
	movl	$64, -500(%ebp)
	jmp	.L515
.L513:
	movl	$32, -500(%ebp)
.L515:
	movl	-504(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-500(%ebp)
	movl	%eax, -196(%ebp)
	.loc 1 1224 0
	movl	$0, -192(%ebp)
	movl	$0, -188(%ebp)
	.loc 1 1231 0
	movl	$1, -172(%ebp)
	.loc 1 1237 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -184(%ebp)
	.loc 1 1238 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -180(%ebp)
	.loc 1 1240 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -176(%ebp)
	.loc 1 1242 0
	cmpl	$0, 24(%ebp)
	je	.L516
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L518
.L516:
	.loc 1 1243 0
	movl	-176(%ebp), %eax
	movl	%eax, 24(%ebp)
.L518:
	.loc 1 1246 0
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L519
	.loc 1 1247 0
	movl	-176(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$59, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
.L519:
	.loc 1 1250 0
	movl	$0, -204(%ebp)
	jmp	.L521
.L522:
.LBB12:
	.loc 1 1252 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L523
	movl	-204(%ebp), %edx
	movl	-196(%ebp), %eax
	subl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -496(%ebp)
	jmp	.L525
.L523:
	movl	-204(%ebp), %edx
	movl	%edx, -496(%ebp)
.L525:
	movl	-496(%ebp), %eax
	movl	%eax, -168(%ebp)
	.loc 1 1253 0
	movl	-168(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword@PLT
	movl	%eax, -164(%ebp)
	.loc 1 1254 0
	movl	-168(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword_force@PLT
	movl	%eax, -160(%ebp)
	.loc 1 1255 0
	movl	-168(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-180(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword_force@PLT
	movl	%eax, -156(%ebp)
	.loc 1 1259 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -152(%ebp)
	.loc 1 1262 0
	cmpl	$0, -152(%ebp)
	je	.L526
	.loc 1 1265 0
	movl	-204(%ebp), %eax
	addl	$1, %eax
	cmpl	-196(%ebp), %eax
	jae	.L528
	.loc 1 1268 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -188(%ebp)
	.loc 1 1269 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -492(%ebp)
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L530
	movl	$117, -488(%ebp)
	jmp	.L532
.L530:
	movl	$115, -488(%ebp)
.L532:
	movl	-172(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$1, 20(%esp)
	movl	-492(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-488(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-188(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_store_flag_force@PLT
	movl	%eax, -188(%ebp)
.L528:
	.loc 1 1276 0
	cmpl	$0, -204(%ebp)
	je	.L533
.LBB13:
	.loc 1 1281 0
	cmpl	$1, -172(%ebp)
	jne	.L535
	movl	12(%ebp), %edx
	movl	%edx, -484(%ebp)
	jmp	.L537
.L535:
	movl	-200(%ebp), %eax
	movl	%eax, -484(%ebp)
.L537:
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	-192(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-484(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -148(%ebp)
	.loc 1 1286 0
	movl	-204(%ebp), %eax
	addl	$1, %eax
	cmpl	-196(%ebp), %eax
	jae	.L538
.LBB14:
	.loc 1 1289 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -144(%ebp)
	.loc 1 1290 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -480(%ebp)
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L540
	movl	$117, -476(%ebp)
	jmp	.L542
.L540:
	movl	$115, -476(%ebp)
.L542:
	movl	-172(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$1, 20(%esp)
	movl	-480(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_store_flag_force@PLT
	movl	%eax, -144(%ebp)
	.loc 1 1297 0
	movl	optab_table@GOT(%ebx), %eax
	movl	76(%eax), %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	-188(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-188(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -188(%ebp)
	.loc 1 1300 0
	cmpl	$0, -188(%ebp)
	je	.L526
.L538:
.LBE14:
	.loc 1 1303 0
	movl	-148(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L533:
.LBE13:
	.loc 1 1306 0
	movl	-188(%ebp), %eax
	movl	%eax, -192(%ebp)
.LBE12:
	.loc 1 1250 0
	addl	$1, -204(%ebp)
.L521:
	movl	-204(%ebp), %eax
	cmpl	-196(%ebp), %eax
	jb	.L522
.L526:
	.loc 1 1309 0
	movl	8(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -472(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L543
	movl	$64, -468(%ebp)
	jmp	.L545
.L543:
	movl	$32, -468(%ebp)
.L545:
	movl	-472(%ebp), %eax
	movl	$0, %edx
	divl	-468(%ebp)
	cmpl	-204(%ebp), %eax
	jne	.L546
	.loc 1 1311 0
	movl	optab_table@GOT(%ebx), %eax
	movl	120(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L548
.LBB15:
	.loc 1 1313 0
	movl	-176(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	movl	%eax, -140(%ebp)
	.loc 1 1315 0
	movl	-180(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %esi
	movl	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	set_unique_reg_note@PLT
	jmp	.L550
.L548:
.LBE15:
	.loc 1 1322 0
	movl	-176(%ebp), %eax
	movl	%eax, 24(%ebp)
.L550:
	.loc 1 1324 0
	movl	24(%ebp), %edx
	movl	%edx, -644(%ebp)
	jmp	.L286
.L546:
	.loc 1 1328 0
	movl	-392(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
.L503:
.LBE11:
	.loc 1 1381 0
	movl	optab_table@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L551
	cmpl	$1, -416(%ebp)
	jne	.L551
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -464(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L554
	movl	$16, -460(%ebp)
	jmp	.L556
.L554:
	movl	$8, -460(%ebp)
.L556:
	movl	-460(%ebp), %eax
	cmpl	%eax, -464(%ebp)
	jne	.L551
	movl	optab_table@GOT(%ebx), %eax
	movl	16(%eax), %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L551
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L551
	movl	optab_table@GOT(%ebx), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	jne	.L560
	movl	optab_table@GOT(%ebx), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L551
.L560:
.LBB16:
	.loc 1 1391 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -136(%ebp)
	.loc 1 1392 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -132(%ebp)
	.loc 1 1393 0
	movl	-132(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword_force@PLT
	movl	%eax, -128(%ebp)
	.loc 1 1394 0
	movl	-136(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword_force@PLT
	movl	%eax, -124(%ebp)
	.loc 1 1395 0
	movl	-132(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword_force@PLT
	movl	%eax, -120(%ebp)
	.loc 1 1396 0
	movl	-136(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword_force@PLT
	movl	%eax, -116(%ebp)
	.loc 1 1397 0
	movl	$0, -112(%ebp)
	.loc 1 1398 0
	movl	$0, -108(%ebp)
	.loc 1 1399 0
	movl	$0, -104(%ebp)
	.loc 1 1403 0
	movl	24(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L562
	movl	24(%ebp), %eax
	cmpl	20(%ebp), %eax
	je	.L562
	cmpl	$0, 24(%ebp)
	je	.L565
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L565
.L562:
	.loc 1 1405 0
	movl	$0, 24(%ebp)
.L565:
	.loc 1 1411 0
	movl	optab_table@GOT(%ebx), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L567
	.loc 1 1413 0
	movl	optab_table@GOT(%ebx), %eax
	movl	36(%eax), %edx
	movl	$0, 24(%esp)
	movl	$1, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -112(%ebp)
	.loc 1 1417 0
	cmpl	$0, -112(%ebp)
	jne	.L569
	.loc 1 1418 0
	movl	-392(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
	jmp	.L567
.L569:
	.loc 1 1420 0
	movl	-128(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	-120(%ebp), %eax
	movl	%eax, -104(%ebp)
.L567:
	.loc 1 1423 0
	cmpl	$0, -112(%ebp)
	jne	.L571
	movl	optab_table@GOT(%ebx), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L571
.LBB17:
	.loc 1 1427 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L574
	movl	$63, -456(%ebp)
	movl	$0, -452(%ebp)
	jmp	.L576
.L574:
	movl	$31, -456(%ebp)
	movl	$0, -452(%ebp)
.L576:
	movl	-456(%ebp), %eax
	movl	-452(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -100(%ebp)
	.loc 1 1428 0
	movl	optab_table@GOT(%ebx), %eax
	movl	32(%eax), %edx
	movl	$0, 24(%esp)
	movl	$1, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -112(%ebp)
	.loc 1 1430 0
	movl	optab_table@GOT(%ebx), %eax
	movl	88(%eax), %ecx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -108(%ebp)
	.loc 1 1432 0
	cmpl	$0, -108(%ebp)
	je	.L577
	.loc 1 1433 0
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -108(%ebp)
	jmp	.L579
.L577:
	.loc 1 1437 0
	movl	optab_table@GOT(%ebx), %eax
	movl	92(%eax), %ecx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -108(%ebp)
	.loc 1 1439 0
	cmpl	$0, -108(%ebp)
	je	.L579
	.loc 1 1440 0
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -108(%ebp)
.L579:
	.loc 1 1445 0
	movl	optab_table@GOT(%ebx), %eax
	movl	88(%eax), %ecx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -104(%ebp)
	.loc 1 1447 0
	cmpl	$0, -104(%ebp)
	je	.L581
	.loc 1 1448 0
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -104(%ebp)
	jmp	.L571
.L581:
	.loc 1 1452 0
	movl	optab_table@GOT(%ebx), %eax
	movl	92(%eax), %ecx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -104(%ebp)
	.loc 1 1454 0
	cmpl	$0, -104(%ebp)
	je	.L571
	.loc 1 1455 0
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -104(%ebp)
.L571:
.LBE17:
	.loc 1 1471 0
	cmpl	$0, -112(%ebp)
	je	.L584
	cmpl	$0, -108(%ebp)
	je	.L584
	cmpl	$0, -104(%ebp)
	je	.L584
.LBB18:
	.loc 1 1473 0
	movl	-132(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword@PLT
	movl	%eax, -96(%ebp)
	.loc 1 1475 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -92(%ebp)
	.loc 1 1477 0
	movl	-96(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L588
	.loc 1 1478 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	force_reg@PLT
	movl	%eax, -96(%ebp)
.L588:
	.loc 1 1480 0
	cmpl	$0, -92(%ebp)
	je	.L590
	.loc 1 1481 0
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -92(%ebp)
.L590:
	.loc 1 1484 0
	cmpl	$0, -92(%ebp)
	je	.L592
	movl	-92(%ebp), %eax
	cmpl	-96(%ebp), %eax
	je	.L592
	.loc 1 1485 0
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L592:
	.loc 1 1487 0
	cmpl	$0, -92(%ebp)
	je	.L595
	.loc 1 1488 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -92(%ebp)
.L595:
	.loc 1 1491 0
	cmpl	$0, -92(%ebp)
	je	.L597
	.loc 1 1492 0
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-420(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -92(%ebp)
.L597:
	.loc 1 1496 0
	cmpl	$0, -92(%ebp)
	je	.L599
	movl	-92(%ebp), %eax
	cmpl	-96(%ebp), %eax
	je	.L599
	.loc 1 1497 0
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L599:
	.loc 1 1499 0
	movl	-132(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword@PLT
	movl	%eax, %edx
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_move_insn@PLT
	.loc 1 1501 0
	cmpl	$0, -92(%ebp)
	je	.L584
	.loc 1 1503 0
	movl	optab_table@GOT(%ebx), %eax
	movl	120(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L603
	.loc 1 1505 0
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	movl	%eax, -92(%ebp)
	.loc 1 1506 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %esi
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	set_unique_reg_note@PLT
.L603:
	.loc 1 1513 0
	movl	-112(%ebp), %edx
	movl	%edx, -644(%ebp)
	jmp	.L286
.L584:
.LBE18:
	.loc 1 1521 0
	movl	-392(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
.L551:
.LBE16:
	.loc 1 1526 0
	cmpl	$7, -416(%ebp)
	je	.L605
	cmpl	$8, -416(%ebp)
	jne	.L607
.L605:
	.loc 1 1527 0
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
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
	call	expand_vector_binop
	movl	%eax, -644(%ebp)
	jmp	.L286
.L607:
	.loc 1 1538 0
	cmpl	$6, -416(%ebp)
	je	.L608
	cmpl	$5, -416(%ebp)
	jne	.L610
.L608:
.LBB19:
	.loc 1 1540 0
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
	.loc 1 1541 0
	movl	$0, -80(%ebp)
	movl	$0, -76(%ebp)
	.loc 1 1545 0
	movl	$0, -52(%ebp)
	.loc 1 1548 0
	movl	8(%ebp), %eax
	movl	inner_mode_array@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1550 0
	cmpl	$52, -48(%ebp)
	jne	.L611
	.loc 1 1551 0
	leal	__FUNCTION__.14636@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1551, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L611:
	.loc 1 1553 0
	cmpl	$0, 24(%ebp)
	jne	.L613
	.loc 1 1554 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 24(%ebp)
.L613:
	.loc 1 1556 0
	call	start_sequence@PLT
	.loc 1 1558 0
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_realpart@PLT
	movl	%eax, -72(%ebp)
	.loc 1 1559 0
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_imagpart@PLT
	movl	%eax, -68(%ebp)
	.loc 1 1561 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	8(%ebp), %eax
	jne	.L615
	.loc 1 1563 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_realpart@PLT
	movl	%eax, -88(%ebp)
	.loc 1 1564 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_imagpart@PLT
	movl	%eax, -84(%ebp)
	jmp	.L617
.L615:
	.loc 1 1567 0
	movl	16(%ebp), %eax
	movl	%eax, -88(%ebp)
.L617:
	.loc 1 1569 0
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	8(%ebp), %eax
	jne	.L618
	.loc 1 1571 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_realpart@PLT
	movl	%eax, -80(%ebp)
	.loc 1 1572 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_imagpart@PLT
	movl	%eax, -76(%ebp)
	jmp	.L620
.L618:
	.loc 1 1575 0
	movl	20(%ebp), %eax
	movl	%eax, -80(%ebp)
.L620:
	.loc 1 1577 0
	cmpl	$0, -88(%ebp)
	je	.L621
	cmpl	$0, -80(%ebp)
	je	.L621
	cmpl	$0, -84(%ebp)
	jne	.L624
	cmpl	$0, -76(%ebp)
	jne	.L624
.L621:
	.loc 1 1578 0
	leal	__FUNCTION__.14636@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1578, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L624:
	.loc 1 1580 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -448(%ebp)
	cmpl	$88, -448(%ebp)
	je	.L628
	cmpl	$88, -448(%ebp)
	ja	.L630
	movl	-448(%ebp), %eax
	subl	$85, %eax
	cmpl	$1, %eax
	ja	.L626
	jmp	.L627
.L630:
	cmpl	$89, -448(%ebp)
	je	.L629
	jmp	.L626
.L627:
	.loc 1 1586 0
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -64(%ebp)
	.loc 1 1589 0
	cmpl	$0, -64(%ebp)
	je	.L631
	.loc 1 1591 0
	movl	-64(%ebp), %eax
	cmpl	-72(%ebp), %eax
	je	.L633
	.loc 1 1592 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L633:
	.loc 1 1594 0
	cmpl	$0, -84(%ebp)
	je	.L635
	cmpl	$0, -76(%ebp)
	je	.L635
	.loc 1 1595 0
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -64(%ebp)
	.loc 1 1594 0
	jmp	.L638
.L635:
	.loc 1 1597 0
	cmpl	$0, -84(%ebp)
	je	.L639
	.loc 1 1598 0
	movl	-84(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L638
.L639:
	.loc 1 1599 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$86, %eax
	jne	.L641
	.loc 1 1600 0
	movl	optab_table@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L643
	movl	optab_table@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, -444(%ebp)
	jmp	.L645
.L643:
	movl	optab_table@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, -444(%ebp)
.L645:
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-444(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -64(%ebp)
	jmp	.L638
.L641:
	.loc 1 1604 0
	movl	-76(%ebp), %eax
	movl	%eax, -64(%ebp)
.L638:
	.loc 1 1606 0
	cmpl	$0, -64(%ebp)
	je	.L631
	.loc 1 1608 0
	movl	-64(%ebp), %eax
	cmpl	-68(%ebp), %eax
	je	.L647
	.loc 1 1609 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L647:
	.loc 1 1611 0
	movl	$1, -52(%ebp)
	.loc 1 1612 0
	jmp	.L631
.L628:
	.loc 1 1617 0
	cmpl	$0, -84(%ebp)
	je	.L649
	cmpl	$0, -76(%ebp)
	je	.L649
.LBB20:
	.loc 1 1622 0
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -88(%ebp)
	.loc 1 1623 0
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -80(%ebp)
	.loc 1 1624 0
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -84(%ebp)
	.loc 1 1625 0
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -76(%ebp)
	.loc 1 1627 0
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1630 0
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1633 0
	cmpl	$0, -44(%ebp)
	je	.L631
	cmpl	$0, -40(%ebp)
	je	.L631
	.loc 1 1636 0
	movl	optab_table@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L654
	movl	optab_table@GOT(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, -440(%ebp)
	jmp	.L656
.L654:
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, -440(%ebp)
.L656:
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-440(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -64(%ebp)
	.loc 1 1641 0
	cmpl	$0, -64(%ebp)
	je	.L631
	.loc 1 1643 0
	movl	-64(%ebp), %eax
	cmpl	-72(%ebp), %eax
	je	.L658
	.loc 1 1644 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L658:
	.loc 1 1646 0
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1649 0
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1652 0
	cmpl	$0, -44(%ebp)
	je	.L631
	cmpl	$0, -40(%ebp)
	je	.L631
	.loc 1 1655 0
	movl	optab_table@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L662
	movl	optab_table@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -436(%ebp)
	jmp	.L664
.L662:
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -436(%ebp)
.L664:
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-436(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -64(%ebp)
	.loc 1 1660 0
	cmpl	$0, -64(%ebp)
	je	.L631
	.loc 1 1662 0
	movl	-64(%ebp), %eax
	cmpl	-68(%ebp), %eax
	je	.L666
	.loc 1 1663 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L666:
	.loc 1 1665 0
	movl	$1, -52(%ebp)
	.loc 1 1617 0
	jmp	.L631
.L649:
.LBE20:
	.loc 1 1670 0
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -88(%ebp)
	.loc 1 1671 0
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -80(%ebp)
	.loc 1 1673 0
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -64(%ebp)
	.loc 1 1675 0
	cmpl	$0, -64(%ebp)
	je	.L631
	.loc 1 1677 0
	movl	-64(%ebp), %eax
	cmpl	-72(%ebp), %eax
	je	.L670
	.loc 1 1678 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L670:
	.loc 1 1680 0
	cmpl	$0, -84(%ebp)
	je	.L672
	.loc 1 1681 0
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -64(%ebp)
	jmp	.L674
.L672:
	.loc 1 1684 0
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -64(%ebp)
.L674:
	.loc 1 1687 0
	cmpl	$0, -64(%ebp)
	je	.L631
	.loc 1 1689 0
	movl	-64(%ebp), %eax
	cmpl	-68(%ebp), %eax
	je	.L676
	.loc 1 1690 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L676:
	.loc 1 1692 0
	movl	$1, -52(%ebp)
	.loc 1 1694 0
	jmp	.L631
.L629:
	.loc 1 1699 0
	cmpl	$0, -76(%ebp)
	jne	.L678
	.loc 1 1704 0
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -80(%ebp)
	.loc 1 1707 0
	cmpl	$6, -416(%ebp)
	jne	.L680
	.loc 1 1708 0
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -64(%ebp)
	jmp	.L682
.L680:
	.loc 1 1711 0
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$63, 4(%esp)
	movl	$0, (%esp)
	call	expand_divmod@PLT
	movl	%eax, -64(%ebp)
.L682:
	.loc 1 1714 0
	cmpl	$0, -64(%ebp)
	je	.L631
	.loc 1 1716 0
	movl	-64(%ebp), %eax
	cmpl	-72(%ebp), %eax
	je	.L684
	.loc 1 1717 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L684:
	.loc 1 1719 0
	cmpl	$6, -416(%ebp)
	jne	.L686
	.loc 1 1720 0
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -64(%ebp)
	jmp	.L688
.L686:
	.loc 1 1723 0
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$63, 4(%esp)
	movl	$0, (%esp)
	call	expand_divmod@PLT
	movl	%eax, -64(%ebp)
.L688:
	.loc 1 1726 0
	cmpl	$0, -64(%ebp)
	je	.L631
	.loc 1 1728 0
	movl	-64(%ebp), %eax
	cmpl	-68(%ebp), %eax
	je	.L690
	.loc 1 1729 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L690:
	.loc 1 1731 0
	movl	$1, -52(%ebp)
	jmp	.L631
.L678:
	.loc 1 1735 0
	movl	flag_complex_divide_method@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -432(%ebp)
	cmpl	$0, -432(%ebp)
	je	.L694
	cmpl	$1, -432(%ebp)
	je	.L695
	jmp	.L693
.L694:
	.loc 1 1738 0
	movl	12(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	-416(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_cmplxdiv_straight
	movl	%eax, -52(%ebp)
	.loc 1 1742 0
	jmp	.L631
.L695:
	.loc 1 1745 0
	movl	12(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	-416(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_cmplxdiv_wide
	movl	%eax, -52(%ebp)
	.loc 1 1749 0
	jmp	.L631
.L693:
	.loc 1 1752 0
	leal	__FUNCTION__.14636@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1752, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L626:
	.loc 1 1758 0
	leal	__FUNCTION__.14636@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1758, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L631:
	.loc 1 1761 0
	call	get_insns@PLT
	movl	%eax, -60(%ebp)
	.loc 1 1762 0
	call	end_sequence@PLT
	.loc 1 1764 0
	cmpl	$0, -52(%ebp)
	je	.L610
	.loc 1 1766 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L697
	.loc 1 1767 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %esi
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -56(%ebp)
	jmp	.L699
.L697:
	.loc 1 1771 0
	movl	$0, -56(%ebp)
.L699:
	.loc 1 1773 0
	movl	-56(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_no_conflict_block@PLT
	.loc 1 1775 0
	movl	24(%ebp), %edx
	movl	%edx, -644(%ebp)
	jmp	.L286
.L610:
.LBE19:
	.loc 1 1782 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	8(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L700
	cmpl	$1, 32(%ebp)
	je	.L702
	cmpl	$3, 32(%ebp)
	jne	.L700
.L702:
.LBB21:
	.loc 1 1786 0
	movl	20(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1787 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1790 0
	call	start_sequence@PLT
	.loc 1 1792 0
	cmpl	$0, -400(%ebp)
	je	.L704
	.loc 1 1794 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1797 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$1, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, -32(%ebp)
.L704:
	.loc 1 1800 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L706
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	8(%ebp), %eax
	je	.L706
	.loc 1 1802 0
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, 16(%ebp)
.L706:
	.loc 1 1806 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	8(%eax,%edx,8), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$2, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	emit_library_call_value@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1810 0
	call	get_insns@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1811 0
	call	end_sequence@PLT
	.loc 1 1813 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 24(%ebp)
	.loc 1 1814 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_libcall_block@PLT
	.loc 1 1817 0
	movl	24(%ebp), %eax
	movl	%eax, -644(%ebp)
	jmp	.L286
.L700:
.LBE21:
	.loc 1 1820 0
	movl	-392(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
	.loc 1 1824 0
	cmpl	$2, 32(%ebp)
	je	.L709
	cmpl	$3, 32(%ebp)
	je	.L709
	cmpl	$4, 32(%ebp)
	je	.L709
	.loc 1 1828 0
	movl	-396(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
	.loc 1 1829 0
	movl	$0, -644(%ebp)
	jmp	.L286
.L709:
	.loc 1 1835 0
	cmpl	$3, 32(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 32(%ebp)
	.loc 1 1840 0
	cmpl	$1, -416(%ebp)
	je	.L713
	cmpl	$2, -416(%ebp)
	je	.L713
	cmpl	$6, -416(%ebp)
	jne	.L716
.L713:
	.loc 1 1842 0
	movl	8(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -412(%ebp)
	jmp	.L717
.L718:
	.loc 1 1845 0
	movl	-412(%ebp), %eax
	movl	12(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	jne	.L719
	cmpl	$1, 32(%ebp)
	jne	.L721
	movl	-412(%ebp), %eax
	movl	12(%ebp), %edx
	movl	8(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L721
.L719:
.LBB22:
	.loc 1 1850 0
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1851 0
	movl	$0, -12(%ebp)
	.loc 1 1857 0
	movl	optab_table@GOT(%ebx), %eax
	movl	76(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L723
	movl	optab_table@GOT(%ebx), %eax
	movl	72(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L723
	movl	optab_table@GOT(%ebx), %eax
	movl	80(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L723
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L723
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L723
	movl	optab_table@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L723
	movl	optab_table@GOT(%ebx), %eax
	movl	84(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L730
.L723:
	cmpl	$1, -416(%ebp)
	jne	.L730
	.loc 1 1862 0
	movl	$1, -12(%ebp)
.L730:
	.loc 1 1864 0
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-412(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	widen_operand
	movl	%eax, -20(%ebp)
	.loc 1 1868 0
	cmpl	$0, -12(%ebp)
	je	.L732
	movl	optab_table@GOT(%ebx), %eax
	movl	84(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L732
	movl	$1, -428(%ebp)
	jmp	.L735
.L732:
	movl	$0, -428(%ebp)
.L735:
	movl	-428(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-412(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	widen_operand
	movl	%eax, -16(%ebp)
	.loc 1 1871 0
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-412(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -408(%ebp)
	.loc 1 1873 0
	cmpl	$0, -408(%ebp)
	je	.L736
	.loc 1 1875 0
	cmpl	$1, -416(%ebp)
	je	.L738
	.loc 1 1877 0
	cmpl	$0, 24(%ebp)
	jne	.L740
	.loc 1 1878 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 24(%ebp)
.L740:
	.loc 1 1879 0
	movl	$0, 8(%esp)
	movl	-408(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_move@PLT
	.loc 1 1880 0
	movl	24(%ebp), %eax
	movl	%eax, -644(%ebp)
	jmp	.L286
.L738:
	.loc 1 1883 0
	movl	-408(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -644(%ebp)
	jmp	.L286
.L736:
	.loc 1 1886 0
	movl	-392(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
.L721:
.LBE22:
	.loc 1 1843 0
	movl	-412(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -412(%ebp)
.L717:
	.loc 1 1842 0
	cmpl	$0, -412(%ebp)
	jne	.L718
.L716:
	.loc 1 1891 0
	movl	-396(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
	.loc 1 1892 0
	movl	$0, -644(%ebp)
.L286:
	movl	-644(%ebp), %eax
	.loc 1 1893 0
	addl	$704, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE20:
	.size	expand_binop, .-expand_binop
	.section	.rodata
	.type	__FUNCTION__.15941, @object
	.size	__FUNCTION__.15941, 20
__FUNCTION__.15941:
	.string	"expand_vector_binop"
	.text
	.type	expand_vector_binop, @function
expand_vector_binop:
.LFB21:
	.loc 1 1905 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%edi
.LCFI28:
	pushl	%esi
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$188, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1911 0
	movl	8(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1913 0
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	.loc 1 1914 0
	movl	8(%ebp), %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -68(%ebp)
	.loc 1 1920 0
	movl	-20(%ebp), %edx
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -64(%ebp)
	.loc 1 1921 0
	jmp	.L744
.L745:
	.loc 1 1924 0
	movl	-64(%ebp), %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	8(%ebp), %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	%eax, %ecx
	jne	.L746
	movl	-64(%ebp), %eax
	movl	12(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L746
	.loc 1 1926 0
	movl	-64(%ebp), %eax
	movl	%eax, -68(%ebp)
.L746:
	.loc 1 1922 0
	movl	-64(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -64(%ebp)
.L744:
	.loc 1 1921 0
	movl	-64(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jb	.L745
	.loc 1 1929 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	subl	$85, %eax
	movl	%eax, -124(%ebp)
	cmpl	$10, -124(%ebp)
	ja	.L750
	movl	$1, %eax
	movl	%eax, %esi
	movzbl	-124(%ebp), %ecx
	sall	%cl, %esi
	movl	%esi, -128(%ebp)
	movl	-128(%ebp), %eax
	andl	$27, %eax
	testl	%eax, %eax
	jne	.L751
	movl	-128(%ebp), %eax
	andl	$1792, %eax
	testl	%eax, %eax
	jne	.L752
	jmp	.L750
.L752:
	.loc 1 1934 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	int_mode_for_mode@PLT
	movl	%eax, -64(%ebp)
	.loc 1 1935 0
	cmpl	$52, -64(%ebp)
	je	.L751
	.loc 1 1936 0
	movl	-64(%ebp), %eax
	movl	%eax, -68(%ebp)
.L751:
	.loc 1 1941 0
	movl	-68(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	.loc 1 1942 0
	movl	-68(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -48(%ebp)
	.loc 1 1943 0
	movl	-60(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-52(%ebp)
	movl	%eax, -56(%ebp)
	.loc 1 1947 0
	movl	8(%ebp), %edx
	movl	mode_unit_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-52(%ebp), %eax
	jne	.L754
	cmpl	$0, 32(%ebp)
	jne	.L754
	.loc 1 1948 0
	movl	$0, -120(%ebp)
	jmp	.L757
.L754:
	.loc 1 1950 0
	call	start_sequence@PLT
	.loc 1 1953 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	8(%ebp), %eax
	je	.L758
	.loc 1 1954 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, 16(%ebp)
.L758:
	.loc 1 1955 0
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	8(%ebp), %eax
	je	.L760
	.loc 1 1956 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, 20(%ebp)
.L760:
	.loc 1 1958 0
	cmpl	$0, 24(%ebp)
	jne	.L762
	.loc 1 1959 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 24(%ebp)
.L762:
	.loc 1 1961 0
	movl	$0, -44(%ebp)
	jmp	.L764
.L765:
	.loc 1 1969 0
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L766
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L768
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L770
	movl	$8, -116(%ebp)
	jmp	.L772
.L770:
	movl	$4, -116(%ebp)
.L772:
	movl	-116(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jle	.L766
	jmp	.L774
.L768:
	movl	-44(%ebp), %eax
	movl	%eax, %edx
	imull	-52(%ebp), %edx
	movl	%edx, -112(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L775
	movl	$8, -108(%ebp)
	jmp	.L777
.L775:
	movl	$4, -108(%ebp)
.L777:
	movl	-112(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-108(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L766
.L774:
	.loc 1 1973 0
	movl	$0, -40(%ebp)
	.loc 1 1969 0
	jmp	.L778
.L766:
	.loc 1 1975 0
	movl	-44(%ebp), %eax
	imull	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_gen_subreg@PLT
	movl	%eax, -40(%ebp)
.L778:
	.loc 1 1976 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L779
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L779
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L779
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L779
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L779
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L779
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L779
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L787
.L779:
	.loc 1 1977 0
	movl	-44(%ebp), %eax
	imull	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_gen_subreg@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1976 0
	jmp	.L788
.L787:
	.loc 1 1979 0
	movl	-60(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	-44(%ebp), %eax
	imull	-48(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	%eax, %esi
	sarl	$31, %esi
	movl	%esi, -100(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	%edx, 36(%esp)
	movl	%ecx, 40(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_bit_field@PLT
	movl	%eax, -36(%ebp)
.L788:
	.loc 1 1981 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L789
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L789
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L789
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L789
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L789
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L789
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L789
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L797
.L789:
	.loc 1 1982 0
	movl	-44(%ebp), %eax
	imull	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_gen_subreg@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1981 0
	jmp	.L798
.L797:
	.loc 1 1984 0
	movl	-60(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	-44(%ebp), %eax
	imull	-48(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	%eax, %esi
	sarl	$31, %esi
	movl	%esi, -92(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	%edx, 36(%esp)
	movl	%ecx, 40(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_bit_field@PLT
	movl	%eax, -32(%ebp)
.L798:
	.loc 1 1987 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$89, %eax
	jne	.L799
	.loc 1 1989 0
	cmpl	$8, -20(%ebp)
	jne	.L801
	.loc 1 1990 0
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -28(%ebp)
	jmp	.L804
.L801:
	.loc 1 1993 0
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$63, 4(%esp)
	movl	$0, (%esp)
	call	expand_divmod@PLT
	movl	%eax, -28(%ebp)
	jmp	.L804
.L799:
	.loc 1 1997 0
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -28(%ebp)
.L804:
	.loc 1 2000 0
	cmpl	$0, -28(%ebp)
	je	.L805
	.loc 1 2003 0
	cmpl	$0, -40(%ebp)
	je	.L807
	.loc 1 2004 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	jmp	.L809
.L807:
	.loc 1 2006 0
	movl	-60(%ebp), %eax
	movl	%eax, -144(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -140(%ebp)
	movl	-44(%ebp), %eax
	imull	-48(%ebp), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	-48(%ebp), %ecx
	movl	%ecx, -132(%ebp)
	movl	-132(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-144(%ebp), %edx
	movl	-140(%ebp), %ecx
	movl	%edx, 28(%esp)
	movl	%ecx, 32(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 16(%esp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	store_bit_field@PLT
.L809:
	.loc 1 1961 0
	addl	$1, -44(%ebp)
.L764:
	movl	-44(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jl	.L765
.L805:
	.loc 1 2015 0
	call	get_insns@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2016 0
	call	end_sequence@PLT
	.loc 1 2017 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 2019 0
	movl	24(%ebp), %edx
	movl	%edx, -120(%ebp)
	jmp	.L757
.L750:
	.loc 1 2012 0
	leal	__FUNCTION__.15941@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2012, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L757:
	movl	-120(%ebp), %eax
	.loc 1 2020 0
	addl	$188, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	expand_vector_binop, .-expand_vector_binop
	.type	expand_vector_unop, @function
expand_vector_unop:
.LFB22:
	.loc 1 2031 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	pushl	%edi
.LCFI34:
	pushl	%esi
.LCFI35:
	pushl	%ebx
.LCFI36:
	subl	$156, %esp
.LCFI37:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2036 0
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	.loc 1 2037 0
	movl	8(%ebp), %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -64(%ebp)
	.loc 1 2043 0
	movl	8(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, %edx
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2044 0
	jmp	.L812
.L813:
	.loc 1 2047 0
	movl	-60(%ebp), %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	8(%ebp), %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	%eax, %ecx
	jne	.L814
	movl	-60(%ebp), %eax
	movl	12(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L814
	.loc 1 2049 0
	movl	-60(%ebp), %eax
	movl	%eax, -64(%ebp)
.L814:
	.loc 1 2045 0
	movl	-60(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
.L812:
	.loc 1 2044 0
	movl	-60(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jb	.L813
	.loc 1 2052 0
	movl	optab_table@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L818
	movl	-64(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L818
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	8(%ebp), %eax
	jne	.L818
.LBB23:
	.loc 1 2058 0
	movl	8(%ebp), %edx
	movl	const_tiny_rtx@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %ecx
	movl	$0, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2060 0
	cmpl	$0, -20(%ebp)
	je	.L818
	.loc 1 2061 0
	movl	-20(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L823
.L818:
.LBE23:
	.loc 1 2064 0
	movl	optab_table@GOT(%ebx), %eax
	movl	144(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L824
	.loc 1 2066 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	int_mode_for_mode@PLT
	movl	%eax, -60(%ebp)
	.loc 1 2067 0
	cmpl	$52, -60(%ebp)
	je	.L824
	.loc 1 2068 0
	movl	-60(%ebp), %eax
	movl	%eax, -64(%ebp)
.L824:
	.loc 1 2071 0
	movl	-64(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	.loc 1 2072 0
	movl	-64(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -44(%ebp)
	.loc 1 2073 0
	movl	-56(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-48(%ebp)
	movl	%eax, -52(%ebp)
	.loc 1 2076 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	8(%ebp), %eax
	je	.L827
	.loc 1 2077 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, 16(%ebp)
.L827:
	.loc 1 2079 0
	cmpl	$0, 20(%ebp)
	jne	.L829
	.loc 1 2080 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 20(%ebp)
.L829:
	.loc 1 2082 0
	call	start_sequence@PLT
	.loc 1 2084 0
	movl	$0, -40(%ebp)
	jmp	.L831
.L832:
	.loc 1 2092 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L833
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L835
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L837
	movl	$8, -92(%ebp)
	jmp	.L839
.L837:
	movl	$4, -92(%ebp)
.L839:
	movl	-92(%ebp), %edx
	cmpl	-48(%ebp), %edx
	jle	.L833
	jmp	.L841
.L835:
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	imull	-48(%ebp), %edx
	movl	%edx, -88(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L842
	movl	$8, -84(%ebp)
	jmp	.L844
.L842:
	movl	$4, -84(%ebp)
.L844:
	movl	-88(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-84(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L833
.L841:
	.loc 1 2096 0
	movl	$0, -36(%ebp)
	.loc 1 2092 0
	jmp	.L845
.L833:
	.loc 1 2098 0
	movl	-40(%ebp), %eax
	imull	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_gen_subreg@PLT
	movl	%eax, -36(%ebp)
.L845:
	.loc 1 2099 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L846
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L846
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L846
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L846
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L846
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L846
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L846
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L854
.L846:
	.loc 1 2100 0
	movl	-40(%ebp), %eax
	imull	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_gen_subreg@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2099 0
	jmp	.L855
.L854:
	.loc 1 2102 0
	movl	-56(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -108(%ebp)
	movl	-40(%ebp), %eax
	imull	-44(%ebp), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	-100(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, 40(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 16(%esp)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_bit_field@PLT
	movl	%eax, -32(%ebp)
.L855:
	.loc 1 2105 0
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2107 0
	cmpl	$0, -36(%ebp)
	je	.L856
	.loc 1 2108 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	jmp	.L858
.L856:
	.loc 1 2110 0
	movl	-56(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -108(%ebp)
	movl	-40(%ebp), %eax
	imull	-44(%ebp), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	-100(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 16(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	store_bit_field@PLT
.L858:
	.loc 1 2084 0
	addl	$1, -40(%ebp)
.L831:
	movl	-40(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jl	.L832
	.loc 1 2114 0
	call	get_insns@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2115 0
	call	end_sequence@PLT
	.loc 1 2116 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 2118 0
	movl	20(%ebp), %edx
	movl	%edx, -96(%ebp)
.L823:
	movl	-96(%ebp), %eax
	.loc 1 2119 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	expand_vector_unop, .-expand_vector_unop
.globl sign_expand_binop
	.type	sign_expand_binop, @function
sign_expand_binop:
.LFB23:
	.loc 1 2135 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$484, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2137 0
	cmpl	$0, 32(%ebp)
	je	.L862
	movl	12(%ebp), %eax
	movl	%eax, -460(%ebp)
	jmp	.L864
.L862:
	movl	16(%ebp), %eax
	movl	%eax, -460(%ebp)
.L864:
	movl	-460(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2141 0
	movl	$0, 24(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2143 0
	cmpl	$0, -12(%ebp)
	jne	.L865
	cmpl	$0, 36(%ebp)
	jne	.L867
.L865:
	.loc 1 2144 0
	movl	-12(%ebp), %eax
	movl	%eax, -456(%ebp)
	jmp	.L868
.L867:
	.loc 1 2148 0
	movl	16(%ebp), %eax
	leal	-448(%ebp), %ecx
	movl	%eax, %edx
	movl	$436, %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	memcpy@PLT
	.loc 1 2149 0
	movl	8(%ebp), %eax
	movl	$529, -444(%ebp,%eax,8)
	.loc 1 2150 0
	movl	8(%ebp), %eax
	movl	$0, -440(%ebp,%eax,8)
	.loc 1 2152 0
	movl	$2, 24(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-448(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2156 0
	cmpl	$0, -12(%ebp)
	jne	.L869
	cmpl	$0, 32(%ebp)
	je	.L869
	.loc 1 2157 0
	movl	$2, 24(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -12(%ebp)
.L869:
	.loc 1 2159 0
	cmpl	$0, -12(%ebp)
	jne	.L872
	cmpl	$2, 36(%ebp)
	jne	.L874
.L872:
	.loc 1 2160 0
	movl	-12(%ebp), %eax
	movl	%eax, -456(%ebp)
	jmp	.L868
.L874:
	.loc 1 2163 0
	movl	$1, 24(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2164 0
	cmpl	$0, -12(%ebp)
	jne	.L875
	cmpl	$1, 36(%ebp)
	jne	.L877
.L875:
	.loc 1 2165 0
	movl	-12(%ebp), %eax
	movl	%eax, -456(%ebp)
	jmp	.L868
.L877:
	.loc 1 2168 0
	movl	36(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-448(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2170 0
	cmpl	$0, -12(%ebp)
	je	.L878
	.loc 1 2171 0
	movl	-12(%ebp), %eax
	movl	%eax, -456(%ebp)
	jmp	.L868
.L878:
	.loc 1 2172 0
	cmpl	$0, 32(%ebp)
	je	.L880
	.loc 1 2173 0
	movl	36(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -456(%ebp)
	jmp	.L868
.L880:
	.loc 1 2175 0
	movl	$0, -456(%ebp)
.L868:
	movl	-456(%ebp), %eax
	.loc 1 2176 0
	addl	$484, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	sign_expand_binop, .-sign_expand_binop
	.section	.rodata
	.type	__FUNCTION__.16306, @object
	.size	__FUNCTION__.16306, 20
__FUNCTION__.16306:
	.string	"expand_twoval_binop"
	.text
.globl expand_twoval_binop
	.type	expand_twoval_binop, @function
expand_twoval_binop:
.LFB24:
	.loc 1 2196 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$116, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2197 0
	cmpl	$0, 20(%ebp)
	je	.L884
	movl	20(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L886
.L884:
	movl	24(%ebp), %edx
	movl	%edx, -84(%ebp)
.L886:
	movl	-84(%ebp), %edx
	movzbl	2(%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -64(%ebp)
	.loc 1 2200 0
	call	get_last_insn@PLT
	movl	%eax, -52(%ebp)
	.loc 1 2203 0
	movl	-64(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2205 0
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 12(%ebp)
	.loc 1 2206 0
	movl	$0, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 16(%ebp)
	.loc 1 2208 0
	movl	flag_force_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L887
	.loc 1 2210 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	force_not_mem@PLT
	movl	%eax, 12(%ebp)
	.loc 1 2211 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	force_not_mem@PLT
	movl	%eax, 16(%ebp)
.L887:
	.loc 1 2216 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L889
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L889
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L889
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L889
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L889
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L889
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L889
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L897
.L889:
	call	preserve_subexpressions_p@PLT
	testl	%eax, %eax
	je	.L897
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	cmpl	$4, %eax
	jle	.L897
	.loc 1 2218 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, 12(%ebp)
.L897:
	.loc 1 2220 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L900
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L900
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L900
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L900
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L900
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L900
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L900
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L908
.L900:
	call	preserve_subexpressions_p@PLT
	testl	%eax, %eax
	je	.L908
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	cmpl	$4, %eax
	jle	.L908
	.loc 1 2222 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, 16(%ebp)
.L908:
	.loc 1 2224 0
	cmpl	$0, 20(%ebp)
	je	.L911
	.loc 1 2225 0
	movl	$1, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 20(%ebp)
	jmp	.L913
.L911:
	.loc 1 2227 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 20(%ebp)
.L913:
	.loc 1 2228 0
	cmpl	$0, 24(%ebp)
	je	.L914
	.loc 1 2229 0
	movl	$1, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 24(%ebp)
	jmp	.L916
.L914:
	.loc 1 2231 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 24(%ebp)
.L916:
	.loc 1 2234 0
	call	get_last_insn@PLT
	movl	%eax, -48(%ebp)
	.loc 1 2236 0
	movl	-64(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	cmpl	$529, %eax
	je	.L917
.LBB24:
	.loc 1 2238 0
	movl	-64(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2239 0
	movl	-44(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -40(%ebp)
	.loc 1 2240 0
	movl	-44(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -36(%ebp)
	.loc 1 2242 0
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2250 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-40(%ebp), %eax
	je	.L919
	cmpl	$0, -40(%ebp)
	je	.L919
	.loc 1 2251 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L922
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	jmp	.L924
.L922:
	movl	-64(%ebp), %eax
	movl	%eax, -80(%ebp)
.L924:
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-80(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_modes@PLT
	movl	%eax, -28(%ebp)
.L919:
	.loc 1 2257 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-36(%ebp), %eax
	je	.L925
	cmpl	$0, -36(%ebp)
	je	.L925
	.loc 1 2258 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L928
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
	jmp	.L930
.L928:
	movl	-64(%ebp), %eax
	movl	%eax, -76(%ebp)
.L930:
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_modes@PLT
	movl	%eax, -24(%ebp)
.L925:
	.loc 1 2265 0
	movl	-44(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L931
	.loc 1 2266 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, -28(%ebp)
.L931:
	.loc 1 2268 0
	movl	-44(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L933
	.loc 1 2269 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, -24(%ebp)
.L933:
	.loc 1 2273 0
	movl	-44(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	je	.L935
	movl	-44(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$36, %eax
	movl	(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L937
.L935:
	.loc 1 2275 0
	leal	__FUNCTION__.16306@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2275, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L937:
	.loc 1 2277 0
	movl	-44(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -32(%ebp)
	.loc 1 2278 0
	cmpl	$0, -32(%ebp)
	je	.L938
	.loc 1 2280 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 2281 0
	movl	$1, -72(%ebp)
	jmp	.L940
.L938:
	.loc 1 2284 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
.L917:
.LBE24:
	.loc 1 2289 0
	cmpl	$1, -60(%ebp)
	je	.L941
	cmpl	$2, -60(%ebp)
	je	.L941
	cmpl	$6, -60(%ebp)
	jne	.L944
.L941:
	.loc 1 2291 0
	movl	-64(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	jmp	.L945
.L946:
	.loc 1 2294 0
	movl	-56(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L947
.LBB25:
	.loc 1 2297 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2298 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2299 0
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_modes@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2300 0
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_modes@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2302 0
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_twoval_binop@PLT
	testl	%eax, %eax
	je	.L949
	.loc 1 2305 0
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_move@PLT
	.loc 1 2306 0
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_move@PLT
	.loc 1 2307 0
	movl	$1, -72(%ebp)
	jmp	.L940
.L949:
	.loc 1 2310 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
.L947:
.LBE25:
	.loc 1 2292 0
	movl	-56(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
.L945:
	.loc 1 2291 0
	cmpl	$0, -56(%ebp)
	jne	.L946
.L944:
	.loc 1 2315 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
	.loc 1 2316 0
	movl	$0, -72(%ebp)
.L940:
	movl	-72(%ebp), %eax
	.loc 1 2317 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	expand_twoval_binop, .-expand_twoval_binop
	.section	.rodata
	.type	__FUNCTION__.16490, @object
	.size	__FUNCTION__.16490, 19
__FUNCTION__.16490:
	.string	"expand_simple_unop"
	.text
.globl expand_simple_unop
	.type	expand_simple_unop, @function
expand_simple_unop:
.LFB25:
	.loc 1 2329 0
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
	.loc 1 2330 0
	movl	12(%ebp), %eax
	movl	code_to_optab@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2331 0
	cmpl	$0, -8(%ebp)
	jne	.L953
	.loc 1 2332 0
	leal	__FUNCTION__.16490@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2332, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L953:
	.loc 1 2334 0
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	.loc 1 2335 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	expand_simple_unop, .-expand_simple_unop
	.section	.rodata
	.type	__FUNCTION__.16527, @object
	.size	__FUNCTION__.16527, 12
__FUNCTION__.16527:
	.string	"expand_unop"
	.text
.globl expand_unop
	.type	expand_unop, @function
expand_unop:
.LFB26:
	.loc 1 2355 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%ebx
.LCFI52:
	subl	$164, %esp
.LCFI53:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2359 0
	call	get_last_insn@PLT
	movl	%eax, -76(%ebp)
	.loc 1 2362 0
	movl	8(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -88(%ebp)
	.loc 1 2364 0
	movl	$0, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 16(%ebp)
	.loc 1 2366 0
	movl	flag_force_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L957
	.loc 1 2368 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	force_not_mem@PLT
	movl	%eax, 16(%ebp)
.L957:
	.loc 1 2371 0
	cmpl	$0, 20(%ebp)
	je	.L959
	.loc 1 2372 0
	movl	$1, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 20(%ebp)
.L959:
	.loc 1 2374 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L961
.LBB26:
	.loc 1 2376 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, -68(%ebp)
	.loc 1 2377 0
	movl	-68(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -64(%ebp)
	.loc 1 2378 0
	movl	16(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2380 0
	cmpl	$0, 20(%ebp)
	je	.L963
	.loc 1 2381 0
	movl	20(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L965
.L963:
	.loc 1 2383 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -80(%ebp)
.L965:
	.loc 1 2385 0
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L966
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-64(%ebp), %eax
	je	.L966
	.loc 1 2387 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, -60(%ebp)
.L966:
	.loc 1 2391 0
	movl	-68(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L969
	.loc 1 2392 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, -60(%ebp)
.L969:
	.loc 1 2394 0
	movl	-68(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L971
	.loc 1 2395 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -80(%ebp)
.L971:
	.loc 1 2397 0
	movl	-68(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -72(%ebp)
	.loc 1 2398 0
	cmpl	$0, -72(%ebp)
	je	.L973
	.loc 1 2400 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L975
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L975
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	$0, 16(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	add_equal_note
	testl	%eax, %eax
	jne	.L975
	.loc 1 2403 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
	.loc 1 2404 0
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -136(%ebp)
	jmp	.L979
.L975:
	.loc 1 2407 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 2409 0
	movl	-80(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L979
.L973:
	.loc 1 2412 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
.L961:
.LBE26:
	.loc 1 2417 0
	cmpl	$1, -88(%ebp)
	je	.L980
	cmpl	$2, -88(%ebp)
	je	.L980
	cmpl	$6, -88(%ebp)
	jne	.L983
.L980:
	.loc 1 2418 0
	movl	8(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -84(%ebp)
	jmp	.L984
.L985:
	.loc 1 2421 0
	movl	-84(%ebp), %eax
	movl	12(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L986
.LBB27:
	.loc 1 2423 0
	movl	16(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2429 0
	movl	optab_table@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L988
	movl	optab_table@GOT(%ebx), %eax
	movl	144(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L990
.L988:
	cmpl	$1, -88(%ebp)
	jne	.L990
	movl	$1, -132(%ebp)
	jmp	.L992
.L990:
	movl	$0, -132(%ebp)
.L992:
	movl	-132(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	widen_operand
	movl	%eax, -56(%ebp)
	.loc 1 2434 0
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -80(%ebp)
	.loc 1 2437 0
	cmpl	$0, -80(%ebp)
	je	.L993
	.loc 1 2439 0
	cmpl	$1, -88(%ebp)
	je	.L995
	.loc 1 2441 0
	cmpl	$0, 20(%ebp)
	jne	.L997
	.loc 1 2442 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 20(%ebp)
.L997:
	.loc 1 2443 0
	movl	$0, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_move@PLT
	.loc 1 2444 0
	movl	20(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L979
.L995:
	.loc 1 2447 0
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -136(%ebp)
	jmp	.L979
.L993:
	.loc 1 2450 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
.L986:
.LBE27:
	.loc 1 2419 0
	movl	-84(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -84(%ebp)
.L984:
	.loc 1 2418 0
	cmpl	$0, -84(%ebp)
	jne	.L985
.L983:
	.loc 1 2455 0
	movl	optab_table@GOT(%ebx), %eax
	movl	144(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L999
	cmpl	$1, -88(%ebp)
	jne	.L999
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -128(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1002
	movl	$8, -124(%ebp)
	jmp	.L1004
.L1002:
	movl	$4, -124(%ebp)
.L1004:
	movl	-124(%ebp), %eax
	cmpl	%eax, -128(%ebp)
	jle	.L999
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	cmpl	$529, %eax
	je	.L999
.LBB28:
	.loc 1 2463 0
	cmpl	$0, 20(%ebp)
	je	.L1007
	movl	20(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L1009
.L1007:
	.loc 1 2464 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 20(%ebp)
.L1009:
	.loc 1 2466 0
	call	start_sequence@PLT
	.loc 1 2469 0
	movl	$0, -52(%ebp)
	jmp	.L1010
.L1011:
.LBB29:
	.loc 1 2471 0
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword@PLT
	movl	%eax, -44(%ebp)
	.loc 1 2474 0
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword_force@PLT
	movl	%eax, %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_unop@PLT
	movl	%eax, -40(%ebp)
	.loc 1 2476 0
	movl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	je	.L1012
	.loc 1 2477 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L1012:
.LBE29:
	.loc 1 2469 0
	addl	$1, -52(%ebp)
.L1010:
	movl	8(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -120(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1014
	movl	$64, -116(%ebp)
	jmp	.L1016
.L1014:
	movl	$32, -116(%ebp)
.L1016:
	movl	-120(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-116(%ebp)
	cmpl	-52(%ebp), %eax
	jg	.L1011
	.loc 1 2480 0
	call	get_insns@PLT
	movl	%eax, -48(%ebp)
	.loc 1 2481 0
	call	end_sequence@PLT
	.loc 1 2483 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_no_conflict_block@PLT
	.loc 1 2486 0
	movl	20(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L979
.L999:
.LBE28:
	.loc 1 2490 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$87, %eax
	jne	.L1018
	cmpl	$6, -88(%ebp)
	je	.L1020
	cmpl	$5, -88(%ebp)
	jne	.L1018
.L1020:
.LBB30:
	.loc 1 2498 0
	movl	8(%ebp), %eax
	movl	inner_mode_array@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2500 0
	cmpl	$52, -24(%ebp)
	jne	.L1022
	.loc 1 2501 0
	leal	__FUNCTION__.16527@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2501, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1022:
	.loc 1 2503 0
	cmpl	$0, 20(%ebp)
	jne	.L1024
	.loc 1 2504 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 20(%ebp)
.L1024:
	.loc 1 2506 0
	call	start_sequence@PLT
	.loc 1 2508 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_imagpart@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2509 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_imagpart@PLT
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2512 0
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	je	.L1026
	.loc 1 2513 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L1026:
	.loc 1 2515 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_realpart@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2516 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_realpart@PLT
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2519 0
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	je	.L1028
	.loc 1 2520 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L1028:
	.loc 1 2522 0
	call	get_insns@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2523 0
	call	end_sequence@PLT
	.loc 1 2525 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_no_conflict_block@PLT
	.loc 1 2528 0
	movl	20(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L979
.L1018:
.LBE30:
	.loc 1 2532 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	8(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L1030
.LBB31:
	.loc 1 2537 0
	call	start_sequence@PLT
	.loc 1 2541 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	8(%eax,%edx,8), %edx
	movl	8(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	emit_library_call_value@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2543 0
	call	get_insns@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2544 0
	call	end_sequence@PLT
	.loc 1 2546 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 20(%ebp)
	.loc 1 2547 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_libcall_block@PLT
	.loc 1 2550 0
	movl	20(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L979
.L1030:
.LBE31:
	.loc 1 2553 0
	cmpl	$8, -88(%ebp)
	je	.L1032
	cmpl	$7, -88(%ebp)
	jne	.L1034
.L1032:
	.loc 1 2554 0
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
	call	expand_vector_unop
	movl	%eax, -136(%ebp)
	jmp	.L979
.L1034:
	.loc 1 2558 0
	cmpl	$1, -88(%ebp)
	je	.L1035
	cmpl	$2, -88(%ebp)
	je	.L1035
	cmpl	$6, -88(%ebp)
	jne	.L1038
.L1035:
	.loc 1 2560 0
	movl	8(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -84(%ebp)
	jmp	.L1039
.L1040:
	.loc 1 2563 0
	movl	-84(%ebp), %eax
	movl	12(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	jne	.L1041
	movl	-84(%ebp), %eax
	movl	12(%ebp), %edx
	movl	8(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L1043
.L1041:
.LBB32:
	.loc 1 2567 0
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2573 0
	movl	optab_table@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L1044
	movl	optab_table@GOT(%ebx), %eax
	movl	144(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1046
.L1044:
	cmpl	$1, -88(%ebp)
	jne	.L1046
	movl	$1, -112(%ebp)
	jmp	.L1048
.L1046:
	movl	$0, -112(%ebp)
.L1048:
	movl	-112(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	widen_operand
	movl	%eax, -12(%ebp)
	.loc 1 2578 0
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -80(%ebp)
	.loc 1 2581 0
	cmpl	$0, -80(%ebp)
	je	.L1049
	.loc 1 2583 0
	cmpl	$1, -88(%ebp)
	je	.L1051
	.loc 1 2585 0
	cmpl	$0, 20(%ebp)
	jne	.L1053
	.loc 1 2586 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 20(%ebp)
.L1053:
	.loc 1 2587 0
	movl	$0, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_move@PLT
	.loc 1 2588 0
	movl	20(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L979
.L1051:
	.loc 1 2591 0
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -136(%ebp)
	jmp	.L979
.L1049:
	.loc 1 2594 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
.L1043:
.LBE32:
	.loc 1 2561 0
	movl	-84(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -84(%ebp)
.L1039:
	.loc 1 2560 0
	cmpl	$0, -84(%ebp)
	jne	.L1040
.L1038:
	.loc 1 2601 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$87, %eax
	jne	.L1055
.LBB33:
	.loc 1 2604 0
	movl	8(%ebp), %edx
	movl	const_tiny_rtx@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -108(%ebp)
	movl	optab_table@GOT(%ebx), %eax
	movl	132(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1057
	movl	optab_table@GOT(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, -104(%ebp)
	jmp	.L1059
.L1057:
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, -104(%ebp)
.L1059:
	movl	$3, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2608 0
	cmpl	$0, -8(%ebp)
	je	.L1055
	.loc 1 2609 0
	movl	-8(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L979
.L1055:
.LBE33:
	.loc 1 2612 0
	movl	$0, -136(%ebp)
.L979:
	movl	-136(%ebp), %eax
	.loc 1 2613 0
	addl	$164, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	expand_unop, .-expand_unop
.globl expand_abs
	.type	expand_abs, @function
expand_abs:
.LFB27:
	.loc 1 2631 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	pushl	%ebx
.LCFI56:
	subl	$68, %esp
.LCFI57:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2634 0
	movl	flag_trapv@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1063
	.loc 1 2635 0
	movl	$1, 20(%ebp)
.L1063:
	.loc 1 2638 0
	cmpl	$0, 20(%ebp)
	je	.L1065
	movl	optab_table@GOT(%ebx), %eax
	movl	136(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1067
.L1065:
	movl	optab_table@GOT(%ebx), %eax
	movl	140(%eax), %eax
	movl	%eax, -36(%ebp)
.L1067:
	movl	$0, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2640 0
	cmpl	$0, -20(%ebp)
	je	.L1068
	.loc 1 2641 0
	movl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1070
.L1068:
	.loc 1 2644 0
	movl	optab_table@GOT(%ebx), %eax
	movl	108(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L1071
.LBB34:
	.loc 1 2646 0
	call	get_last_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2648 0
	movl	optab_table@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2649 0
	cmpl	$0, -20(%ebp)
	je	.L1073
	.loc 1 2650 0
	movl	optab_table@GOT(%ebx), %eax
	movl	108(%eax), %edx
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -20(%ebp)
.L1073:
	.loc 1 2653 0
	cmpl	$0, -20(%ebp)
	je	.L1075
	.loc 1 2654 0
	movl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1070
.L1075:
	.loc 1 2656 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
.L1071:
.LBE34:
	.loc 1 2663 0
	movl	8(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L1077
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L1077
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1080
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1077
.L1080:
.LBB35:
	.loc 1 2667 0
	movl	8(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2669 0
	movl	optab_table@GOT(%ebx), %eax
	movl	80(%eax), %edx
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2671 0
	cmpl	$0, -20(%ebp)
	je	.L1082
	.loc 1 2672 0
	cmpl	$0, 20(%ebp)
	je	.L1084
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1086
.L1084:
	movl	optab_table@GOT(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
.L1086:
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -20(%ebp)
.L1082:
	.loc 1 2675 0
	cmpl	$0, -20(%ebp)
	je	.L1077
	.loc 1 2676 0
	movl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1070
.L1077:
.LBE35:
	.loc 1 2683 0
	movl	12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L1088
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1088
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1088
	.loc 1 2685 0
	movl	$1, 24(%ebp)
.L1088:
	.loc 1 2687 0
	call	gen_label_rtx@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2688 0
	cmpl	$0, 16(%ebp)
	je	.L1092
	cmpl	$0, 24(%ebp)
	je	.L1092
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	8(%ebp), %eax
	jne	.L1092
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1096
	movl	16(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1092
.L1096:
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1098
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1098
.L1092:
	.loc 1 2693 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 16(%ebp)
.L1098:
	.loc 1 2695 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 2696 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movl	%eax, 4(%edx)
	.loc 1 2700 0
	movl	8(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	jne	.L1100
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$114, (%esp)
	call	can_compare_p@PLT
	testl	%eax, %eax
	jne	.L1100
	.loc 1 2702 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_jump_by_parts_greater_rtx@PLT
	.loc 1 2700 0
	jmp	.L1103
.L1100:
	.loc 1 2705 0
	movl	8(%ebp), %edx
	movl	const_tiny_rtx@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	$114, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	do_compare_rtx_and_jump@PLT
.L1103:
	.loc 1 2708 0
	cmpl	$0, 20(%ebp)
	je	.L1104
	movl	optab_table@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1106
.L1104:
	movl	optab_table@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, -24(%ebp)
.L1106:
	movl	$0, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, 12(%ebp)
	.loc 1 2710 0
	movl	12(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L1107
	.loc 1 2711 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L1107:
	.loc 1 2712 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 2713 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	%eax, 4(%edx)
	.loc 1 2714 0
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1070:
	movl	-32(%ebp), %eax
	.loc 1 2715 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	expand_abs, .-expand_abs
	.section	.rodata
	.type	__FUNCTION__.16897, @object
	.size	__FUNCTION__.16897, 19
__FUNCTION__.16897:
	.string	"expand_complex_abs"
	.text
.globl expand_complex_abs
	.type	expand_complex_abs, @function
expand_complex_abs:
.LFB28:
	.loc 1 2732 0
	pushl	%ebp
.LCFI58:
	movl	%esp, %ebp
.LCFI59:
	pushl	%ebx
.LCFI60:
	subl	$116, %esp
.LCFI61:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2733 0
	movl	8(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -76(%ebp)
	.loc 1 2736 0
	call	get_last_insn@PLT
	movl	%eax, -64(%ebp)
	.loc 1 2742 0
	movl	8(%ebp), %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2744 0
	cmpl	$52, -48(%ebp)
	jne	.L1111
	.loc 1 2745 0
	leal	__FUNCTION__.16897@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2745, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1111:
	.loc 1 2747 0
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 12(%ebp)
	.loc 1 2749 0
	movl	flag_force_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1113
	.loc 1 2751 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	force_not_mem@PLT
	movl	%eax, 12(%ebp)
.L1113:
	.loc 1 2754 0
	call	get_last_insn@PLT
	movl	%eax, -60(%ebp)
	.loc 1 2756 0
	cmpl	$0, 16(%ebp)
	je	.L1115
	.loc 1 2757 0
	movl	$1, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 16(%ebp)
.L1115:
	.loc 1 2759 0
	cmpl	$0, 20(%ebp)
	jne	.L1117
	movl	flag_trapv@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1117
	movl	8(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L1117
	movl	optab_table@GOT(%ebx), %eax
	movl	140(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L1121
.L1117:
	movl	optab_table@GOT(%ebx), %eax
	movl	136(%eax), %eax
	movl	%eax, -92(%ebp)
.L1121:
	movl	-92(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2763 0
	movl	8(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L1122
.LBB36:
	.loc 1 2765 0
	movl	8(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2766 0
	movl	-44(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -40(%ebp)
	.loc 1 2767 0
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2769 0
	cmpl	$0, 16(%ebp)
	je	.L1124
	.loc 1 2770 0
	movl	16(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1126
.L1124:
	.loc 1 2772 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -68(%ebp)
.L1126:
	.loc 1 2774 0
	movl	-36(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L1127
	movl	-36(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-40(%ebp), %eax
	je	.L1127
	.loc 1 2776 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, -36(%ebp)
.L1127:
	.loc 1 2780 0
	movl	-44(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L1130
	.loc 1 2781 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, -36(%ebp)
.L1130:
	.loc 1 2783 0
	movl	-44(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L1132
	.loc 1 2784 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -68(%ebp)
.L1132:
	.loc 1 2786 0
	movl	-44(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -56(%ebp)
	.loc 1 2787 0
	cmpl	$0, -56(%ebp)
	je	.L1134
	.loc 1 2789 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1136
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1136
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	$0, 16(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	add_equal_note
	testl	%eax, %eax
	jne	.L1136
	.loc 1 2793 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
	.loc 1 2794 0
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -88(%ebp)
	jmp	.L1140
.L1136:
	.loc 1 2798 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 2800 0
	movl	-68(%ebp), %eax
	movl	%eax, -88(%ebp)
	jmp	.L1140
.L1134:
	.loc 1 2803 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
.L1122:
.LBE36:
	.loc 1 2808 0
	movl	8(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -72(%ebp)
	jmp	.L1141
.L1142:
	.loc 1 2811 0
	movl	-72(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L1143
.LBB37:
	.loc 1 2814 0
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2816 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_modes@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2817 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_complex_abs@PLT
	movl	%eax, -68(%ebp)
	.loc 1 2819 0
	cmpl	$0, -68(%ebp)
	je	.L1145
	.loc 1 2821 0
	cmpl	$5, -76(%ebp)
	je	.L1147
	.loc 1 2823 0
	cmpl	$0, 16(%ebp)
	jne	.L1149
	.loc 1 2824 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 16(%ebp)
.L1149:
	.loc 1 2825 0
	movl	$0, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_move@PLT
	.loc 1 2826 0
	movl	16(%ebp), %eax
	movl	%eax, -88(%ebp)
	jmp	.L1140
.L1147:
	.loc 1 2829 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -88(%ebp)
	jmp	.L1140
.L1145:
	.loc 1 2832 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
.L1143:
.LBE37:
	.loc 1 2809 0
	movl	-72(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -72(%ebp)
.L1141:
	.loc 1 2808 0
	cmpl	$0, -72(%ebp)
	jne	.L1142
	.loc 1 2838 0
	movl	optab_table@GOT(%ebx), %eax
	movl	152(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L1152
	movl	flag_trapv@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1152
.LBB38:
	.loc 1 2843 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_realpart@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2844 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_imagpart@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2847 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_mult@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2848 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_mult@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2851 0
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2855 0
	movl	optab_table@GOT(%ebx), %eax
	movl	152(%eax), %edx
	movl	$0, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, 16(%ebp)
	.loc 1 2856 0
	cmpl	$0, 16(%ebp)
	jne	.L1155
	.loc 1 2857 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
	jmp	.L1152
.L1155:
	.loc 1 2859 0
	movl	16(%ebp), %eax
	movl	%eax, -88(%ebp)
	jmp	.L1140
.L1152:
.LBE38:
	.loc 1 2863 0
	movl	8(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	8(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L1157
.LBB39:
	.loc 1 2868 0
	call	start_sequence@PLT
	.loc 1 2872 0
	movl	optab_table@GOT(%ebx), %eax
	movl	136(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%edx,%eax,8), %edx
	movl	8(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 16(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	emit_library_call_value@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2874 0
	call	get_insns@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2875 0
	call	end_sequence@PLT
	.loc 1 2877 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 16(%ebp)
	.loc 1 2878 0
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_libcall_block@PLT
	.loc 1 2881 0
	movl	16(%ebp), %eax
	movl	%eax, -88(%ebp)
	jmp	.L1140
.L1157:
.LBE39:
	.loc 1 2886 0
	movl	8(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -72(%ebp)
	jmp	.L1159
.L1160:
	.loc 1 2889 0
	movl	-72(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	jne	.L1161
	movl	-72(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	8(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L1163
.L1161:
.LBB40:
	.loc 1 2893 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2895 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_modes@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2897 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_complex_abs@PLT
	movl	%eax, -68(%ebp)
	.loc 1 2899 0
	cmpl	$0, -68(%ebp)
	je	.L1164
	.loc 1 2901 0
	cmpl	$5, -76(%ebp)
	je	.L1166
	.loc 1 2903 0
	cmpl	$0, 16(%ebp)
	jne	.L1168
	.loc 1 2904 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 16(%ebp)
.L1168:
	.loc 1 2905 0
	movl	$0, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_move@PLT
	.loc 1 2906 0
	movl	16(%ebp), %eax
	movl	%eax, -88(%ebp)
	jmp	.L1140
.L1166:
	.loc 1 2909 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -88(%ebp)
	jmp	.L1140
.L1164:
	.loc 1 2912 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
.L1163:
.LBE40:
	.loc 1 2887 0
	movl	-72(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -72(%ebp)
.L1159:
	.loc 1 2886 0
	cmpl	$0, -72(%ebp)
	jne	.L1160
	.loc 1 2916 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
	.loc 1 2917 0
	movl	$0, -88(%ebp)
.L1140:
	movl	-88(%ebp), %eax
	.loc 1 2918 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	expand_complex_abs, .-expand_complex_abs
.globl emit_unop_insn
	.type	emit_unop_insn, @function
emit_unop_insn:
.LFB29:
	.loc 1 2932 0
	pushl	%ebp
.LCFI62:
	movl	%esp, %ebp
.LCFI63:
	pushl	%ebx
.LCFI64:
	subl	$36, %esp
.LCFI65:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2934 0
	movl	8(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	.loc 1 2937 0
	movl	$1, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2939 0
	movl	$0, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 16(%ebp)
	.loc 1 2944 0
	movl	flag_force_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1173
	cmpl	$130, 20(%ebp)
	je	.L1173
	cmpl	$131, 20(%ebp)
	je	.L1173
	.loc 1 2945 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	force_not_mem@PLT
	movl	%eax, 16(%ebp)
.L1173:
	.loc 1 2949 0
	movl	8(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L1177
	.loc 1 2950 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, 16(%ebp)
.L1177:
	.loc 1 2952 0
	movl	8(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	je	.L1179
	movl	flag_force_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1181
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1181
.L1179:
	.loc 1 2954 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -16(%ebp)
.L1181:
	.loc 1 2956 0
	movl	8(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -8(%ebp)
	.loc 1 2958 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1183
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1183
	cmpl	$0, 20(%ebp)
	je	.L1183
	.loc 1 2959 0
	movl	$0, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_equal_note
.L1183:
	.loc 1 2961 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 2963 0
	movl	-16(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L1189
	.loc 1 2964 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L1189:
	.loc 1 2965 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	emit_unop_insn, .-emit_unop_insn
	.section	.rodata
	.type	__FUNCTION__.17146, @object
	.size	__FUNCTION__.17146, 23
__FUNCTION__.17146:
	.string	"emit_no_conflict_block"
	.text
.globl emit_no_conflict_block
	.type	emit_no_conflict_block, @function
emit_no_conflict_block:
.LFB30:
	.loc 1 3001 0
	pushl	%ebp
.LCFI66:
	movl	%esp, %ebp
.LCFI67:
	pushl	%ebx
.LCFI68:
	subl	$52, %esp
.LCFI69:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3004 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1191
	movl	reload_in_progress@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1193
.L1191:
	.loc 1 3005 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -40(%ebp)
	jmp	.L1194
.L1193:
	.loc 1 3007 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1195
.L1196:
	.loc 1 3008 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L1197
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L1199
.L1197:
	.loc 1 3010 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -40(%ebp)
	jmp	.L1194
.L1199:
	.loc 1 3007 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L1195:
	cmpl	$0, -20(%ebp)
	jne	.L1196
	.loc 1 3014 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1201
.L1202:
.LBB41:
	.loc 1 3016 0
	movl	$0, -16(%ebp)
	.loc 1 3019 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3023 0
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L1203
	.loc 1 3024 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L1203:
	.loc 1 3025 0
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L1205
	.loc 1 3026 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L1205:
	.loc 1 3028 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L1207
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L1207
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L1210
.L1207:
	.loc 1 3030 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3028 0
	jmp	.L1211
.L1210:
	.loc 1 3031 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L1211
	.loc 1 3033 0
	movl	$0, -8(%ebp)
	jmp	.L1213
.L1214:
	.loc 1 3034 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1215
	.loc 1 3036 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3037 0
	jmp	.L1211
.L1215:
	.loc 1 3033 0
	addl	$1, -8(%ebp)
.L1213:
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L1214
.L1211:
	.loc 1 3041 0
	cmpl	$0, -16(%ebp)
	jne	.L1217
	.loc 1 3042 0
	leal	__FUNCTION__.17146@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3042, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1217:
	.loc 1 3044 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L1219
	.loc 1 3046 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1221
	.loc 1 3047 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 20(%edx)
	jmp	.L1223
.L1221:
	.loc 1 3049 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%ebp)
.L1223:
	.loc 1 3051 0
	cmpl	$0, -32(%ebp)
	je	.L1224
	.loc 1 3052 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
.L1224:
	.loc 1 3054 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	add_insn@PLT
.L1219:
.LBE41:
	.loc 1 3014 0
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
.L1201:
	cmpl	$0, -20(%ebp)
	jne	.L1202
	.loc 1 3058 0
	call	get_last_insn@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3062 0
	movl	12(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L1227
	movl	12(%ebp), %eax
	cmpl	20(%ebp), %eax
	je	.L1227
	.loc 1 3063 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$59, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
.L1227:
	.loc 1 3065 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1230
.L1231:
	.loc 1 3067 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3068 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	add_insn@PLT
	.loc 1 3070 0
	cmpl	$0, 20(%ebp)
	je	.L1232
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1232
	.loc 1 3071 0
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$9, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 68(%eax)
.L1232:
	.loc 1 3074 0
	cmpl	$0, 16(%ebp)
	je	.L1235
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1235
	.loc 1 3075 0
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$9, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 68(%eax)
.L1235:
	.loc 1 3065 0
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
.L1230:
	cmpl	$0, -20(%ebp)
	jne	.L1231
	.loc 1 3079 0
	movl	optab_table@GOT(%ebx), %eax
	movl	120(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L1239
	.loc 1 3082 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	movl	%eax, -24(%ebp)
	.loc 1 3083 0
	cmpl	$0, 24(%ebp)
	je	.L1243
	.loc 1 3084 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	set_unique_reg_note@PLT
	jmp	.L1243
.L1239:
	.loc 1 3088 0
	call	get_last_insn@PLT
	movl	%eax, -24(%ebp)
	.loc 1 3095 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L1243:
	.loc 1 3098 0
	cmpl	$0, -36(%ebp)
	jne	.L1244
	.loc 1 3099 0
	call	get_insns@PLT
	movl	%eax, -28(%ebp)
	jmp	.L1246
.L1244:
	.loc 1 3101 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
.L1246:
	.loc 1 3104 0
	movl	-28(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$7, 4(%esp)
	movl	$4, (%esp)
	call	gen_rtx_fmt_ue@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 3106 0
	movl	-24(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$6, 4(%esp)
	movl	$4, (%esp)
	call	gen_rtx_fmt_ue@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 3108 0
	movl	-24(%ebp), %eax
	movl	%eax, -40(%ebp)
.L1194:
	movl	-40(%ebp), %eax
	.loc 1 3109 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	emit_no_conflict_block, .-emit_no_conflict_block
.globl emit_libcall_block
	.type	emit_libcall_block, @function
emit_libcall_block:
.LFB31:
	.loc 1 3142 0
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
	.loc 1 3143 0
	movl	12(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 3148 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1249
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1251
.L1249:
	.loc 1 3149 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 12(%ebp)
.L1251:
	.loc 1 3153 0
	movl	flag_non_call_exceptions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1252
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	je	.L1252
	.loc 1 3155 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1255
.L1256:
	.loc 1 3156 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1257
.LBB42:
	.loc 1 3158 0
	movl	$0, 8(%esp)
	movl	$22, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -28(%ebp)
	.loc 1 3160 0
	cmpl	$0, -28(%ebp)
	je	.L1257
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -72(%ebp)
	movl	%ecx, -68(%ebp)
	cmpl	$0, -68(%ebp)
	jg	.L1257
	cmpl	$0, -68(%ebp)
	js	.L1261
	cmpl	$0, -72(%ebp)
	ja	.L1257
.L1261:
	.loc 1 3161 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L1257:
.LBE42:
	.loc 1 3155 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
.L1255:
	cmpl	$0, -32(%ebp)
	jne	.L1256
	.loc 1 3153 0
	jmp	.L1263
.L1252:
	.loc 1 3169 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1264
.L1265:
	.loc 1 3170 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1266
.LBB43:
	.loc 1 3172 0
	movl	$0, 8(%esp)
	movl	$22, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -24(%ebp)
	.loc 1 3174 0
	cmpl	$0, -24(%ebp)
	je	.L1268
	.loc 1 3175 0
	movl	$-1, 4(%esp)
	movl	$-1, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L1266
.L1268:
	.loc 1 3177 0
	movl	-32(%ebp), %eax
	movl	68(%eax), %esi
	movl	$-1, 4(%esp)
	movl	$-1, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$22, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 68(%eax)
.L1266:
.LBE43:
	.loc 1 3169 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
.L1264:
	cmpl	$0, -32(%ebp)
	jne	.L1265
.L1263:
	.loc 1 3187 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1270
.L1271:
.LBB44:
	.loc 1 3189 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1272
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1274
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1276
.L1274:
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -60(%ebp)
.L1276:
	movl	-60(%ebp), %ecx
	movl	%ecx, -64(%ebp)
	jmp	.L1277
.L1272:
	movl	$0, -64(%ebp)
.L1277:
	movl	-64(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3194 0
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L1278
	.loc 1 3195 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L1278:
	.loc 1 3196 0
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L1280
	.loc 1 3197 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L1280:
	.loc 1 3199 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3201 0
	cmpl	$0, -20(%ebp)
	je	.L1282
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1282
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1282
	movl	-32(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L1286
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1288
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L1282
.L1288:
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_used_between_p@PLT
	testl	%eax, %eax
	jne	.L1282
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	modified_in_p@PLT
	testl	%eax, %eax
	jne	.L1282
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	modified_between_p@PLT
	testl	%eax, %eax
	jne	.L1282
.L1286:
	.loc 1 3210 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1292
	.loc 1 3211 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 20(%edx)
	jmp	.L1294
.L1292:
	.loc 1 3213 0
	movl	-44(%ebp), %eax
	movl	%eax, 8(%ebp)
.L1294:
	.loc 1 3215 0
	cmpl	$0, -44(%ebp)
	je	.L1295
	.loc 1 3216 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 12(%eax)
.L1295:
	.loc 1 3218 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	add_insn@PLT
.L1282:
.LBE44:
	.loc 1 3187 0
	movl	-44(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1270:
	cmpl	$0, -32(%ebp)
	jne	.L1271
	.loc 1 3222 0
	call	get_last_insn@PLT
	movl	%eax, -48(%ebp)
	.loc 1 3226 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1298
.L1299:
	.loc 1 3228 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3230 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	add_insn@PLT
	.loc 1 3226 0
	movl	-44(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1298:
	cmpl	$0, -32(%ebp)
	jne	.L1299
	.loc 1 3233 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3234 0
	movl	optab_table@GOT(%ebx), %eax
	movl	120(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L1301
	.loc 1 3236 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	set_unique_reg_note@PLT
	jmp	.L1303
.L1301:
	.loc 1 3244 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L1303:
	.loc 1 3247 0
	movl	-52(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L1304
	.loc 1 3248 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L1304:
	.loc 1 3250 0
	cmpl	$0, -48(%ebp)
	jne	.L1306
	.loc 1 3251 0
	call	get_insns@PLT
	movl	%eax, -40(%ebp)
	jmp	.L1308
.L1306:
	.loc 1 3253 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
.L1308:
	.loc 1 3256 0
	movl	flag_non_call_exceptions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1309
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	jne	.L1318
.L1309:
.LBB45:
	.loc 1 3262 0
	movb	$1, -9(%ebp)
	.loc 1 3263 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3264 0
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1312
.L1313:
	.loc 1 3265 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	control_flow_insn_p@PLT
	testb	%al, %al
	je	.L1314
	.loc 1 3267 0
	movb	$0, -9(%ebp)
	.loc 1 3268 0
	jmp	.L1316
.L1314:
	.loc 1 3264 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
.L1312:
	movl	-32(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jne	.L1313
.L1316:
	.loc 1 3271 0
	cmpb	$0, -9(%ebp)
	je	.L1318
	.loc 1 3273 0
	movl	-40(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$7, 4(%esp)
	movl	$4, (%esp)
	call	gen_rtx_fmt_ue@PLT
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 3275 0
	movl	-36(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$6, 4(%esp)
	movl	$4, (%esp)
	call	gen_rtx_fmt_ue@PLT
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, 68(%eax)
.L1318:
.LBE45:
	.loc 1 3279 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE31:
	.size	emit_libcall_block, .-emit_libcall_block
.globl emit_clr_insn
	.type	emit_clr_insn, @function
emit_clr_insn:
.LFB32:
	.loc 1 3286 0
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
	.loc 1 3287 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 3288 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	emit_clr_insn, .-emit_clr_insn
.globl emit_0_to_1_insn
	.type	emit_0_to_1_insn, @function
emit_0_to_1_insn:
.LFB33:
	.loc 1 3296 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	pushl	%ebx
.LCFI81:
	subl	$20, %esp
.LCFI82:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3297 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 3298 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	emit_0_to_1_insn, .-emit_0_to_1_insn
.globl can_compare_p
	.type	can_compare_p, @function
can_compare_p:
.LFB34:
	.loc 1 3313 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	subl	$4, %esp
.LCFI85:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
.L1324:
	.loc 1 3316 0
	movl	optab_table@GOT(%ecx), %eax
	movl	172(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L1325
	.loc 1 3318 0
	cmpl	$0, 16(%ebp)
	jne	.L1327
	.loc 1 3319 0
	movl	8(%ebp), %edx
	movl	bcc_gen_fctn@GOT(%ecx), %eax
	movl	(%eax,%edx,4), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%ebp)
	jmp	.L1329
.L1327:
	.loc 1 3320 0
	cmpl	$2, 16(%ebp)
	jne	.L1330
	.loc 1 3321 0
	movl	8(%ebp), %edx
	movl	setcc_gen_code@GOT(%ecx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$529, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%ebp)
	jmp	.L1329
.L1330:
	.loc 1 3324 0
	movl	$1, -4(%ebp)
	jmp	.L1329
.L1325:
	.loc 1 3326 0
	cmpl	$0, 16(%ebp)
	jne	.L1332
	movl	optab_table@GOT(%ecx), %eax
	movl	188(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L1332
	.loc 1 3328 0
	movl	$1, -4(%ebp)
	jmp	.L1329
.L1332:
	.loc 1 3329 0
	cmpl	$1, 16(%ebp)
	jne	.L1335
	movl	optab_table@GOT(%ecx), %eax
	movl	192(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L1335
	.loc 1 3331 0
	movl	$1, -4(%ebp)
	jmp	.L1329
.L1335:
	.loc 1 3332 0
	cmpl	$2, 16(%ebp)
	jne	.L1338
	movl	optab_table@GOT(%ecx), %eax
	movl	196(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L1338
	.loc 1 3334 0
	movl	$1, -4(%ebp)
	jmp	.L1329
.L1338:
	.loc 1 3336 0
	movl	12(%ebp), %edx
	movl	mode_wider_mode@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, 12(%ebp)
	.loc 1 3338 0
	cmpl	$0, 12(%ebp)
	jne	.L1324
	.loc 1 3340 0
	movl	$0, -4(%ebp)
.L1329:
	movl	-4(%ebp), %eax
	.loc 1 3341 0
	leave
	ret
.LFE34:
	.size	can_compare_p, .-can_compare_p
	.section	.rodata
	.type	__FUNCTION__.17481, @object
	.size	__FUNCTION__.17481, 17
__FUNCTION__.17481:
	.string	"prepare_cmp_insn"
	.text
	.type	prepare_cmp_insn, @function
prepare_cmp_insn:
.LFB35:
	.loc 1 3367 0
	pushl	%ebp
.LCFI86:
	movl	%esp, %ebp
.LCFI87:
	pushl	%esi
.LCFI88:
	pushl	%ebx
.LCFI89:
	subl	$176, %esp
.LCFI90:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3368 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 3369 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3370 0
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3373 0
	movl	-48(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3380 0
	cmpl	$52, -48(%ebp)
	je	.L1344
	movl	flag_force_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1344
	.loc 1 3382 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	force_not_mem@PLT
	movl	%eax, -44(%ebp)
	.loc 1 3383 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	force_not_mem@PLT
	movl	%eax, -40(%ebp)
.L1344:
	.loc 1 3388 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1347
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1347
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1347
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1347
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1347
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1347
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1347
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1355
.L1347:
	call	preserve_subexpressions_p@PLT
	testl	%eax, %eax
	je	.L1355
	movl	$84, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	cmpl	$4, %eax
	jle	.L1355
	.loc 1 3390 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -44(%ebp)
.L1355:
	.loc 1 3392 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1358
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1358
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1358
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1358
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1358
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1358
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1358
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1366
.L1358:
	call	preserve_subexpressions_p@PLT
	testl	%eax, %eax
	je	.L1366
	movl	$84, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	cmpl	$4, %eax
	jle	.L1366
	.loc 1 3394 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -40(%ebp)
.L1366:
	.loc 1 3405 0
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L1369
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L1369
	.loc 1 3406 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -44(%ebp)
.L1369:
	.loc 1 3410 0
	cmpl	$52, -48(%ebp)
	jne	.L1372
.LBB46:
	.loc 1 3415 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1374
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -128(%ebp)
	jmp	.L1376
.L1374:
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L1377
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -124(%ebp)
	jmp	.L1379
.L1377:
	movl	$8, -124(%ebp)
.L1379:
	movl	-124(%ebp), %eax
	movl	%eax, -128(%ebp)
.L1376:
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1380
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L1382
.L1380:
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L1383
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -116(%ebp)
	jmp	.L1385
.L1383:
	movl	$8, -116(%ebp)
.L1385:
	movl	-116(%ebp), %edx
	movl	%edx, -120(%ebp)
.L1382:
	movl	-120(%ebp), %esi
	cmpl	%esi, -128(%ebp)
	jae	.L1386
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1388
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	shrl	$3, %eax
	movl	%eax, -112(%ebp)
	movl	$0, -108(%ebp)
	jmp	.L1390
.L1388:
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L1391
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	shrl	$3, %eax
	movl	%eax, -104(%ebp)
	movl	$0, -100(%ebp)
	jmp	.L1393
.L1391:
	movl	$1, -104(%ebp)
	movl	$0, -100(%ebp)
.L1393:
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
.L1390:
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	jmp	.L1394
.L1386:
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1395
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	shrl	$3, %eax
	movl	%eax, -96(%ebp)
	movl	$0, -92(%ebp)
	jmp	.L1397
.L1395:
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L1398
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	shrl	$3, %eax
	movl	%eax, -88(%ebp)
	movl	$0, -84(%ebp)
	jmp	.L1400
.L1398:
	movl	$1, -88(%ebp)
	movl	$0, -84(%ebp)
.L1400:
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
.L1397:
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
.L1394:
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3417 0
	call	emit_queue@PLT
	.loc 1 3418 0
	movl	$0, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, -44(%ebp)
	.loc 1 3419 0
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, -40(%ebp)
	.loc 1 3421 0
	cmpl	$0, 20(%ebp)
	jne	.L1401
	.loc 1 3422 0
	leal	__FUNCTION__.17481@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3422, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1401:
	.loc 1 3493 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %ecx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	%ecx, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, -72(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1403
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1403
	movl	$5, -68(%ebp)
	jmp	.L1406
.L1403:
	movl	$4, -68(%ebp)
.L1406:
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1407
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1407
	movl	$5, -60(%ebp)
	jmp	.L1410
.L1407:
	movl	$4, -60(%ebp)
.L1410:
	movl	-44(%ebp), %eax
	movl	4(%eax), %ecx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	-76(%ebp), %esi
	movl	%esi, 40(%esp)
	movl	-72(%ebp), %esi
	movl	%esi, 36(%esp)
	movl	-68(%ebp), %esi
	movl	%esi, 32(%esp)
	movl	-64(%ebp), %esi
	movl	%esi, 28(%esp)
	movl	-60(%ebp), %esi
	movl	%esi, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	$3, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$4, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	emit_library_call_value@PLT
	movl	%eax, -28(%ebp)
	.loc 1 3509 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 3511 0
	movl	8(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3512 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3513 0
	movl	24(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3514 0
	jmp	.L1421
.L1372:
.LBE46:
	.loc 1 3517 0
	movl	8(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3518 0
	movl	12(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3519 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	can_compare_p@PLT
	testl	%eax, %eax
	jne	.L1421
	.loc 1 3524 0
	movl	optab_table@GOT(%ebx), %eax
	movl	172(%eax), %edx
	movl	-48(%ebp), %eax
	movl	8(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L1413
	cmpl	$2, -32(%ebp)
	je	.L1413
.LBB47:
	.loc 1 3526 0
	movl	optab_table@GOT(%ebx), %eax
	movl	172(%eax), %edx
	movl	-48(%ebp), %eax
	movl	8(%edx,%eax,8), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3531 0
	cmpl	$0, -36(%ebp)
	je	.L1416
	movl	optab_table@GOT(%ebx), %eax
	movl	176(%eax), %edx
	movl	-48(%ebp), %eax
	movl	8(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L1416
	.loc 1 3532 0
	movl	optab_table@GOT(%ebx), %eax
	movl	176(%eax), %edx
	movl	-48(%ebp), %eax
	movl	8(%edx,%eax,8), %eax
	movl	%eax, -16(%ebp)
.L1416:
	.loc 1 3534 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$2, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$3, 8(%esp)
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_library_call_value@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3540 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3541 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3542 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3543 0
	jmp	.L1421
.L1413:
.LBE47:
	.loc 1 3546 0
	cmpl	$2, -32(%ebp)
	jne	.L1419
	.loc 1 3547 0
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prepare_float_lib_cmp
	jmp	.L1421
.L1419:
	.loc 1 3550 0
	leal	__FUNCTION__.17481@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3550, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1421:
	.loc 1 3551 0
	addl	$176, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE35:
	.size	prepare_cmp_insn, .-prepare_cmp_insn
.globl prepare_operand
	.type	prepare_operand, @function
prepare_operand:
.LFB36:
	.loc 1 3565 0
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	pushl	%esi
.LCFI93:
	pushl	%ebx
.LCFI94:
	subl	$32, %esp
.LCFI95:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3566 0
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3568 0
	movl	20(%ebp), %eax
	cmpl	24(%ebp), %eax
	je	.L1423
	.loc 1 3569 0
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_modes@PLT
	movl	%eax, 12(%ebp)
.L1423:
	.loc 1 3571 0
	movl	8(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %ecx
	movl	16(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %esi
	movl	8(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %ecx
	movl	16(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	jne	.L1425
	.loc 1 3574 0
	movl	no_new_pseudos@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1427
	.loc 1 3575 0
	movl	$0, -12(%ebp)
	jmp	.L1429
.L1427:
	.loc 1 3576 0
	movl	8(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %ecx
	movl	16(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, 12(%ebp)
.L1425:
	.loc 1 3579 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
.L1429:
	movl	-12(%ebp), %eax
	.loc 1 3580 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE36:
	.size	prepare_operand, .-prepare_operand
	.section	.rodata
	.type	__FUNCTION__.17745, @object
	.size	__FUNCTION__.17745, 25
__FUNCTION__.17745:
	.string	"emit_cmp_and_jump_insn_1"
	.text
	.type	emit_cmp_and_jump_insn_1, @function
emit_cmp_and_jump_insn_1:
.LFB37:
	.loc 1 3594 0
	pushl	%ebp
.LCFI96:
	movl	%esp, %ebp
.LCFI97:
	pushl	%ebx
.LCFI98:
	subl	$52, %esp
.LCFI99:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3595 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3596 0
	movl	16(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3597 0
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
.L1432:
.LBB48:
	.loc 1 3603 0
	movl	-12(%ebp), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 3605 0
	cmpl	$0, 28(%ebp)
	je	.L1433
	.loc 1 3607 0
	movl	optab_table@GOT(%ebx), %eax
	movl	188(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3609 0
	cmpl	$529, -8(%ebp)
	je	.L1433
	movl	-8(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	je	.L1433
	.loc 1 3612 0
	movl	-8(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	prepare_operand@PLT
	movl	%eax, 8(%ebp)
	.loc 1 3613 0
	movl	-8(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	prepare_operand@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3614 0
	movl	-8(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	.loc 1 3615 0
	jmp	.L1451
.L1433:
	.loc 1 3620 0
	movl	optab_table@GOT(%ebx), %eax
	movl	180(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3621 0
	movl	16(%ebp), %edx
	movl	const_tiny_rtx@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	12(%ebp), %eax
	jne	.L1438
	cmpl	$529, -8(%ebp)
	je	.L1438
	.loc 1 3623 0
	movl	-8(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	prepare_operand@PLT
	movl	%eax, 8(%ebp)
	.loc 1 3624 0
	movl	-8(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 3625 0
	cmpl	$0, 28(%ebp)
	je	.L1451
	.loc 1 3626 0
	movl	20(%ebp), %edx
	movl	bcc_gen_fctn@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	.loc 1 3627 0
	jmp	.L1451
.L1438:
	.loc 1 3632 0
	movl	optab_table@GOT(%ebx), %eax
	movl	172(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3633 0
	cmpl	$529, -8(%ebp)
	je	.L1443
	.loc 1 3635 0
	movl	-8(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	prepare_operand@PLT
	movl	%eax, 8(%ebp)
	.loc 1 3636 0
	movl	-8(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	prepare_operand@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3637 0
	movl	-8(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 3638 0
	cmpl	$0, 28(%ebp)
	je	.L1451
	.loc 1 3639 0
	movl	20(%ebp), %edx
	movl	bcc_gen_fctn@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	.loc 1 3640 0
	jmp	.L1451
.L1443:
	.loc 1 3643 0
	cmpl	$1, -16(%ebp)
	je	.L1447
	cmpl	$2, -16(%ebp)
	je	.L1447
	cmpl	$6, -16(%ebp)
	jne	.L1450
.L1447:
	.loc 1 3647 0
	movl	-12(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
.LBE48:
	.loc 1 3649 0
	cmpl	$0, -12(%ebp)
	jne	.L1432
.L1450:
	.loc 1 3651 0
	leal	__FUNCTION__.17745@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3651, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1451:
	.loc 1 3652 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	emit_cmp_and_jump_insn_1, .-emit_cmp_and_jump_insn_1
	.section	.rodata
	.type	__FUNCTION__.17821, @object
	.size	__FUNCTION__.17821, 24
__FUNCTION__.17821:
	.string	"emit_cmp_and_jump_insns"
	.text
.globl emit_cmp_and_jump_insns
	.type	emit_cmp_and_jump_insns, @function
emit_cmp_and_jump_insns:
.LFB38:
	.loc 1 3679 0
	pushl	%ebp
.LCFI100:
	movl	%esp, %ebp
.LCFI101:
	pushl	%edi
.LCFI102:
	pushl	%esi
.LCFI103:
	pushl	%ebx
.LCFI104:
	subl	$60, %esp
.LCFI105:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3680 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3683 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_commutative_operands_p@PLT
	testl	%eax, %eax
	je	.L1453
	.loc 1 3687 0
	cmpl	$0, 32(%ebp)
	jne	.L1455
	.loc 1 3688 0
	leal	__FUNCTION__.17821@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3688, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1455:
	.loc 1 3690 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3691 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_condition@PLT
	movl	%eax, 16(%ebp)
.L1453:
	.loc 1 3702 0
	call	emit_queue@PLT
	.loc 1 3703 0
	movl	28(%ebp), %eax
	testl	%eax, %eax
	je	.L1457
	.loc 1 3704 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	unsigned_condition@PLT
	movl	%eax, 16(%ebp)
.L1457:
	.loc 1 3706 0
	movl	$0, 24(%esp)
	leal	28(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	prepare_cmp_insn
	.loc 1 3708 0
	movl	28(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	24(%ebp), %esi
	movl	-20(%ebp), %edi
	movl	-16(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_cmp_and_jump_insn_1
	.loc 1 3709 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE38:
	.size	emit_cmp_and_jump_insns, .-emit_cmp_and_jump_insns
.globl emit_cmp_insn
	.type	emit_cmp_insn, @function
emit_cmp_insn:
.LFB39:
	.loc 1 3720 0
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
	.loc 1 3721 0
	movl	$0, 24(%esp)
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
	call	emit_cmp_and_jump_insns@PLT
	.loc 1 3722 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	emit_cmp_insn, .-emit_cmp_insn
	.section	.rodata
	.type	__FUNCTION__.17910, @object
	.size	__FUNCTION__.17910, 22
__FUNCTION__.17910:
	.string	"prepare_float_lib_cmp"
	.text
	.type	prepare_float_lib_cmp, @function
prepare_float_lib_cmp:
.LFB40:
	.loc 1 3733 0
	pushl	%ebp
.LCFI110:
	movl	%esp, %ebp
.LCFI111:
	pushl	%ebx
.LCFI112:
	subl	$100, %esp
.LCFI113:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3734 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3736 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3737 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3738 0
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 3739 0
	movl	$0, -16(%ebp)
	.loc 1 3742 0
	cmpl	$13, -20(%ebp)
	jne	.L1463
	.loc 1 3743 0
	movl	-36(%ebp), %eax
	subl	$112, %eax
	movl	%eax, -40(%ebp)
	cmpl	$10, -40(%ebp)
	ja	.L1482
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	.L1473@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1473:
	.long	.L1466@GOTOFF
	.long	.L1467@GOTOFF
	.long	.L1468@GOTOFF
	.long	.L1469@GOTOFF
	.long	.L1470@GOTOFF
	.long	.L1471@GOTOFF
	.long	.L1482@GOTOFF
	.long	.L1482@GOTOFF
	.long	.L1482@GOTOFF
	.long	.L1482@GOTOFF
	.long	.L1472@GOTOFF
	.text
.L1467:
	.loc 1 3746 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	96(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3747 0
	jmp	.L1482
.L1466:
	.loc 1 3750 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	100(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3751 0
	jmp	.L1482
.L1469:
	.loc 1 3754 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	104(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3755 0
	cmpl	$0, -16(%ebp)
	jne	.L1482
	.loc 1 3757 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3758 0
	movl	16(%ebp), %eax
	movl	$117, (%eax)
	.loc 1 3759 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	112(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3761 0
	jmp	.L1482
.L1468:
	.loc 1 3764 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	108(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3765 0
	cmpl	$0, -16(%ebp)
	jne	.L1482
	.loc 1 3767 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3768 0
	movl	16(%ebp), %eax
	movl	$116, (%eax)
	.loc 1 3769 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	116(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3771 0
	jmp	.L1482
.L1471:
	.loc 1 3774 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	112(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3775 0
	cmpl	$0, -16(%ebp)
	jne	.L1482
	.loc 1 3777 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3778 0
	movl	16(%ebp), %eax
	movl	$115, (%eax)
	.loc 1 3779 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	104(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3781 0
	jmp	.L1482
.L1470:
	.loc 1 3784 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	116(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3785 0
	cmpl	$0, -16(%ebp)
	jne	.L1482
	.loc 1 3787 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3788 0
	movl	16(%ebp), %eax
	movl	$114, (%eax)
	.loc 1 3789 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	108(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3791 0
	jmp	.L1482
.L1472:
	.loc 1 3794 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	120(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1482
.L1463:
	.loc 1 3800 0
	cmpl	$15, -20(%ebp)
	jne	.L1483
	.loc 1 3801 0
	movl	-36(%ebp), %eax
	subl	$112, %eax
	movl	%eax, -44(%ebp)
	cmpl	$10, -44(%ebp)
	ja	.L1482
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	.L1493@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1493:
	.long	.L1486@GOTOFF
	.long	.L1487@GOTOFF
	.long	.L1488@GOTOFF
	.long	.L1489@GOTOFF
	.long	.L1490@GOTOFF
	.long	.L1491@GOTOFF
	.long	.L1482@GOTOFF
	.long	.L1482@GOTOFF
	.long	.L1482@GOTOFF
	.long	.L1482@GOTOFF
	.long	.L1492@GOTOFF
	.text
.L1487:
	.loc 1 3804 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	124(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3805 0
	jmp	.L1482
.L1486:
	.loc 1 3808 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3809 0
	jmp	.L1482
.L1489:
	.loc 1 3812 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3813 0
	cmpl	$0, -16(%ebp)
	jne	.L1482
	.loc 1 3815 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3816 0
	movl	16(%ebp), %eax
	movl	$117, (%eax)
	.loc 1 3817 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	140(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3819 0
	jmp	.L1482
.L1488:
	.loc 1 3822 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	136(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3823 0
	cmpl	$0, -16(%ebp)
	jne	.L1482
	.loc 1 3825 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3826 0
	movl	16(%ebp), %eax
	movl	$116, (%eax)
	.loc 1 3827 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	144(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3829 0
	jmp	.L1482
.L1491:
	.loc 1 3832 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	140(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3833 0
	cmpl	$0, -16(%ebp)
	jne	.L1482
	.loc 1 3835 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3836 0
	movl	16(%ebp), %eax
	movl	$115, (%eax)
	.loc 1 3837 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3839 0
	jmp	.L1482
.L1490:
	.loc 1 3842 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	144(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3843 0
	cmpl	$0, -16(%ebp)
	jne	.L1482
	.loc 1 3845 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3846 0
	movl	16(%ebp), %eax
	movl	$114, (%eax)
	.loc 1 3847 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	136(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3849 0
	jmp	.L1482
.L1492:
	.loc 1 3852 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	148(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1482
.L1483:
	.loc 1 3858 0
	cmpl	$16, -20(%ebp)
	jne	.L1502
	.loc 1 3859 0
	movl	-36(%ebp), %eax
	subl	$112, %eax
	movl	%eax, -48(%ebp)
	cmpl	$10, -48(%ebp)
	ja	.L1482
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	.L1512@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1512:
	.long	.L1505@GOTOFF
	.long	.L1506@GOTOFF
	.long	.L1507@GOTOFF
	.long	.L1508@GOTOFF
	.long	.L1509@GOTOFF
	.long	.L1510@GOTOFF
	.long	.L1482@GOTOFF
	.long	.L1482@GOTOFF
	.long	.L1482@GOTOFF
	.long	.L1482@GOTOFF
	.long	.L1511@GOTOFF
	.text
.L1506:
	.loc 1 3862 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	152(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3863 0
	jmp	.L1482
.L1505:
	.loc 1 3866 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	156(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3867 0
	jmp	.L1482
.L1508:
	.loc 1 3870 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	160(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3871 0
	cmpl	$0, -16(%ebp)
	jne	.L1482
	.loc 1 3873 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3874 0
	movl	16(%ebp), %eax
	movl	$117, (%eax)
	.loc 1 3875 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	168(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3877 0
	jmp	.L1482
.L1507:
	.loc 1 3880 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	164(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3881 0
	cmpl	$0, -16(%ebp)
	jne	.L1482
	.loc 1 3883 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3884 0
	movl	16(%ebp), %eax
	movl	$116, (%eax)
	.loc 1 3885 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	172(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3887 0
	jmp	.L1482
.L1510:
	.loc 1 3890 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	168(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3891 0
	cmpl	$0, -16(%ebp)
	jne	.L1482
	.loc 1 3893 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3894 0
	movl	16(%ebp), %eax
	movl	$115, (%eax)
	.loc 1 3895 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	160(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3897 0
	jmp	.L1482
.L1509:
	.loc 1 3900 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	172(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3901 0
	cmpl	$0, -16(%ebp)
	jne	.L1482
	.loc 1 3903 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3904 0
	movl	16(%ebp), %eax
	movl	$114, (%eax)
	.loc 1 3905 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	164(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3907 0
	jmp	.L1482
.L1511:
	.loc 1 3910 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	176(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1482
.L1502:
	.loc 1 3916 0
	cmpl	$17, -20(%ebp)
	jne	.L1521
	.loc 1 3917 0
	movl	-36(%ebp), %eax
	subl	$112, %eax
	movl	%eax, -52(%ebp)
	cmpl	$10, -52(%ebp)
	ja	.L1482
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	.L1531@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1531:
	.long	.L1524@GOTOFF
	.long	.L1525@GOTOFF
	.long	.L1526@GOTOFF
	.long	.L1527@GOTOFF
	.long	.L1528@GOTOFF
	.long	.L1529@GOTOFF
	.long	.L1482@GOTOFF
	.long	.L1482@GOTOFF
	.long	.L1482@GOTOFF
	.long	.L1482@GOTOFF
	.long	.L1530@GOTOFF
	.text
.L1525:
	.loc 1 3920 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	180(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3921 0
	jmp	.L1482
.L1524:
	.loc 1 3924 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	184(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3925 0
	jmp	.L1482
.L1527:
	.loc 1 3928 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	188(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3929 0
	cmpl	$0, -16(%ebp)
	jne	.L1482
	.loc 1 3931 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3932 0
	movl	16(%ebp), %eax
	movl	$117, (%eax)
	.loc 1 3933 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	196(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3935 0
	jmp	.L1482
.L1526:
	.loc 1 3938 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	192(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3939 0
	cmpl	$0, -16(%ebp)
	jne	.L1482
	.loc 1 3941 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3942 0
	movl	16(%ebp), %eax
	movl	$116, (%eax)
	.loc 1 3943 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	200(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3945 0
	jmp	.L1482
.L1529:
	.loc 1 3948 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	196(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3949 0
	cmpl	$0, -16(%ebp)
	jne	.L1482
	.loc 1 3951 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3952 0
	movl	16(%ebp), %eax
	movl	$115, (%eax)
	.loc 1 3953 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	188(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3955 0
	jmp	.L1482
.L1528:
	.loc 1 3958 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	200(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3959 0
	cmpl	$0, -16(%ebp)
	jne	.L1482
	.loc 1 3961 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3962 0
	movl	16(%ebp), %eax
	movl	$114, (%eax)
	.loc 1 3963 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	192(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3965 0
	jmp	.L1482
.L1530:
	.loc 1 3968 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	204(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1482
.L1521:
	.loc 1 3974 0
	cmpl	$18, -20(%ebp)
	jne	.L1540
	.loc 1 3975 0
	movl	-36(%ebp), %eax
	subl	$112, %eax
	movl	%eax, -56(%ebp)
	cmpl	$10, -56(%ebp)
	ja	.L1482
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	.L1550@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1550:
	.long	.L1543@GOTOFF
	.long	.L1544@GOTOFF
	.long	.L1545@GOTOFF
	.long	.L1546@GOTOFF
	.long	.L1547@GOTOFF
	.long	.L1548@GOTOFF
	.long	.L1482@GOTOFF
	.long	.L1482@GOTOFF
	.long	.L1482@GOTOFF
	.long	.L1482@GOTOFF
	.long	.L1549@GOTOFF
	.text
.L1544:
	.loc 1 3978 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	208(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3979 0
	jmp	.L1482
.L1543:
	.loc 1 3982 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	212(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3983 0
	jmp	.L1482
.L1546:
	.loc 1 3986 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	216(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3987 0
	cmpl	$0, -16(%ebp)
	jne	.L1482
	.loc 1 3989 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3990 0
	movl	16(%ebp), %eax
	movl	$117, (%eax)
	.loc 1 3991 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	224(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3993 0
	jmp	.L1482
.L1545:
	.loc 1 3996 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	220(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3997 0
	cmpl	$0, -16(%ebp)
	jne	.L1482
	.loc 1 3999 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4000 0
	movl	16(%ebp), %eax
	movl	$116, (%eax)
	.loc 1 4001 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	228(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4003 0
	jmp	.L1482
.L1548:
	.loc 1 4006 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	224(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4007 0
	cmpl	$0, -16(%ebp)
	jne	.L1482
	.loc 1 4009 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4010 0
	movl	16(%ebp), %eax
	movl	$115, (%eax)
	.loc 1 4011 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	216(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4013 0
	jmp	.L1482
.L1547:
	.loc 1 4016 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	228(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4017 0
	cmpl	$0, -16(%ebp)
	jne	.L1482
	.loc 1 4019 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4020 0
	movl	16(%ebp), %eax
	movl	$114, (%eax)
	.loc 1 4021 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	220(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4023 0
	jmp	.L1482
.L1549:
	.loc 1 4026 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	232(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1482
.L1540:
.LBB49:
	.loc 1 4036 0
	movl	-20(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	jmp	.L1559
.L1560:
	.loc 1 4039 0
	movl	optab_table@GOT(%ebx), %eax
	movl	172(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	jne	.L1561
	movl	optab_table@GOT(%ebx), %eax
	movl	172(%eax), %edx
	movl	-8(%ebp), %eax
	movl	8(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L1563
.L1561:
	.loc 1 4043 0
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, -28(%ebp)
	.loc 1 4044 0
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, -24(%ebp)
	.loc 1 4045 0
	movl	$0, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4046 0
	movl	$0, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4047 0
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
	call	prepare_float_lib_cmp
	.loc 1 4048 0
	jmp	.L1570
.L1563:
	.loc 1 4037 0
	movl	-8(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
.L1559:
	.loc 1 4036 0
	cmpl	$0, -8(%ebp)
	jne	.L1560
	.loc 1 4051 0
	leal	__FUNCTION__.17910@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4051, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1482:
.LBE49:
	.loc 1 4054 0
	cmpl	$0, -16(%ebp)
	jne	.L1566
	.loc 1 4055 0
	leal	__FUNCTION__.17910@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4055, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1566:
	.loc 1 4057 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$2, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$3, 8(%esp)
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_library_call_value@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4059 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4060 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4061 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4062 0
	cmpl	$122, -36(%ebp)
	jne	.L1568
	.loc 1 4063 0
	movl	16(%ebp), %eax
	movl	$112, (%eax)
.L1568:
	.loc 1 4068 0
	movl	24(%ebp), %eax
	movl	$0, (%eax)
.L1570:
	.loc 1 4069 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	prepare_float_lib_cmp, .-prepare_float_lib_cmp
.globl emit_indirect_jump
	.type	emit_indirect_jump, @function
emit_indirect_jump:
.LFB41:
	.loc 1 4076 0
	pushl	%ebp
.LCFI114:
	movl	%esp, %ebp
.LCFI115:
	pushl	%ebx
.LCFI116:
	subl	$20, %esp
.LCFI117:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4077 0
	movl	insn_data@GOT(%ebx), %eax
	movl	10072(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1572
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1572
	movl	$5, -12(%ebp)
	jmp	.L1575
.L1572:
	movl	$4, -12(%ebp)
.L1575:
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*-16(%ebp)
	testl	%eax, %eax
	jne	.L1576
	.loc 1 4079 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1578
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1578
	movl	$5, -8(%ebp)
	jmp	.L1581
.L1578:
	movl	$4, -8(%ebp)
.L1581:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, 8(%ebp)
.L1576:
	.loc 1 4081 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_indirect_jump@PLT
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	.loc 1 4082 0
	call	emit_barrier@PLT
	.loc 1 4083 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	emit_indirect_jump, .-emit_indirect_jump
.globl emit_conditional_move
	.type	emit_conditional_move, @function
emit_conditional_move:
.LFB42:
	.loc 1 4111 0
	pushl	%ebp
.LCFI118:
	movl	%esp, %ebp
.LCFI119:
	pushl	%esi
.LCFI120:
	pushl	%ebx
.LCFI121:
	subl	$64, %esp
.LCFI122:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4119 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_commutative_operands_p@PLT
	testl	%eax, %eax
	je	.L1584
	.loc 1 4121 0
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 4122 0
	movl	20(%ebp), %eax
	movl	%eax, 16(%ebp)
	.loc 1 4123 0
	movl	-32(%ebp), %eax
	movl	%eax, 20(%ebp)
	.loc 1 4124 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_condition@PLT
	movl	%eax, 12(%ebp)
.L1584:
	.loc 1 4130 0
	cmpl	$117, 12(%ebp)
	jne	.L1586
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1586
	movl	20(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	xorl	$1, %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1586
	.loc 1 4131 0
	movl	$116, 12(%ebp)
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 20(%ebp)
	.loc 1 4130 0
	jmp	.L1590
.L1586:
	.loc 1 4132 0
	cmpl	$115, 12(%ebp)
	jne	.L1590
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1590
	movl	20(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-1, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1590
	.loc 1 4133 0
	movl	$114, 12(%ebp)
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 20(%ebp)
.L1590:
	.loc 1 4135 0
	cmpl	$0, 24(%ebp)
	jne	.L1594
	.loc 1 4136 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 24(%ebp)
.L1594:
	.loc 1 4138 0
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_commutative_operands_p@PLT
	testl	%eax, %eax
	je	.L1596
	movl	$0, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reversed_comparison_code_parts@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L1596
	.loc 1 4142 0
	movl	28(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 4143 0
	movl	32(%ebp), %eax
	movl	%eax, 28(%ebp)
	.loc 1 4144 0
	movl	-32(%ebp), %eax
	movl	%eax, 32(%ebp)
	.loc 1 4145 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%ebp)
.L1596:
	.loc 1 4148 0
	cmpl	$0, 36(%ebp)
	jne	.L1599
	.loc 1 4149 0
	movl	28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 36(%ebp)
.L1599:
	.loc 1 4151 0
	movl	36(%ebp), %eax
	movl	movcc_gen_code@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4153 0
	cmpl	$529, -16(%ebp)
	jne	.L1601
	.loc 1 4154 0
	movl	$0, -44(%ebp)
	jmp	.L1603
.L1601:
	.loc 1 4156 0
	movl	flag_force_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1604
	.loc 1 4158 0
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	force_not_mem@PLT
	movl	%eax, 28(%ebp)
	.loc 1 4159 0
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	force_not_mem@PLT
	movl	%eax, 32(%ebp)
.L1604:
	.loc 1 4162 0
	cmpl	$0, 8(%ebp)
	je	.L1606
	.loc 1 4163 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 8(%ebp)
	jmp	.L1608
.L1606:
	.loc 1 4165 0
	movl	36(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 8(%ebp)
.L1608:
	.loc 1 4167 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4169 0
	call	emit_queue@PLT
	.loc 1 4171 0
	movl	$0, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 28(%ebp)
	.loc 1 4172 0
	movl	$0, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 32(%ebp)
	.loc 1 4176 0
	movl	-16(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	(%eax), %esi
	movl	-16(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	jne	.L1609
	.loc 1 4178 0
	movl	-16(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -28(%ebp)
.L1609:
	.loc 1 4180 0
	movl	-16(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	(%eax), %esi
	movl	-16(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	jne	.L1611
	.loc 1 4182 0
	movl	-16(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %edx
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, 28(%ebp)
.L1611:
	.loc 1 4184 0
	movl	-16(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$36, %eax
	movl	(%eax), %esi
	movl	-16(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$36, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	jne	.L1613
	.loc 1 4186 0
	movl	-16(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$36, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %edx
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, 32(%ebp)
.L1613:
	.loc 1 4191 0
	movl	$0, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_from_rtx@PLT
	movl	%eax, -24(%ebp)
	.loc 1 4198 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	12(%ebp), %eax
	je	.L1615
	.loc 1 4199 0
	movl	$0, -44(%ebp)
	jmp	.L1603
.L1615:
	.loc 1 4201 0
	movl	-16(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -20(%ebp)
	.loc 1 4204 0
	cmpl	$0, -20(%ebp)
	jne	.L1617
	.loc 1 4205 0
	movl	$0, -44(%ebp)
	jmp	.L1603
.L1617:
	.loc 1 4207 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 4209 0
	movl	-28(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L1619
	.loc 1 4210 0
	movl	$0, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_move@PLT
.L1619:
	.loc 1 4212 0
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
.L1603:
	movl	-44(%ebp), %eax
	.loc 1 4213 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE42:
	.size	emit_conditional_move, .-emit_conditional_move
.globl can_conditionally_move_p
	.type	can_conditionally_move_p, @function
can_conditionally_move_p:
.LFB43:
	.loc 1 4226 0
	pushl	%ebp
.LCFI123:
	movl	%esp, %ebp
.LCFI124:
	subl	$4, %esp
.LCFI125:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 4227 0
	movl	8(%ebp), %eax
	movl	movcc_gen_code@GOT(%ecx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$529, %eax
	je	.L1623
	.loc 1 4228 0
	movl	$1, -4(%ebp)
	jmp	.L1625
.L1623:
	.loc 1 4230 0
	movl	$0, -4(%ebp)
.L1625:
	movl	-4(%ebp), %eax
	.loc 1 4231 0
	leave
	ret
.LFE43:
	.size	can_conditionally_move_p, .-can_conditionally_move_p
	.section	.rodata
	.type	__FUNCTION__.18167, @object
	.size	__FUNCTION__.18167, 14
__FUNCTION__.18167:
	.string	"gen_add2_insn"
	.text
.globl gen_add2_insn
	.type	gen_add2_insn, @function
gen_add2_insn:
.LFB44:
	.loc 1 4247 0
	pushl	%ebp
.LCFI126:
	movl	%esp, %ebp
.LCFI127:
	pushl	%esi
.LCFI128:
	pushl	%ebx
.LCFI129:
	subl	$32, %esp
.LCFI130:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4248 0
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4250 0
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	je	.L1628
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	je	.L1628
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	jne	.L1631
.L1628:
	.loc 1 4256 0
	leal	__FUNCTION__.18167@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4256, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1631:
	.loc 1 4258 0
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 4259 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE44:
	.size	gen_add2_insn, .-gen_add2_insn
.globl gen_add3_insn
	.type	gen_add3_insn, @function
gen_add3_insn:
.LFB45:
	.loc 1 4266 0
	pushl	%ebp
.LCFI131:
	movl	%esp, %ebp
.LCFI132:
	pushl	%esi
.LCFI133:
	pushl	%ebx
.LCFI134:
	subl	$32, %esp
.LCFI135:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4267 0
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4269 0
	cmpl	$529, -12(%ebp)
	je	.L1634
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	je	.L1634
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	je	.L1634
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	jne	.L1638
.L1634:
	.loc 1 4276 0
	movl	$0, -28(%ebp)
	jmp	.L1639
.L1638:
	.loc 1 4278 0
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -28(%ebp)
.L1639:
	movl	-28(%ebp), %eax
	.loc 1 4279 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE45:
	.size	gen_add3_insn, .-gen_add3_insn
	.section	.rodata
	.type	__FUNCTION__.18262, @object
	.size	__FUNCTION__.18262, 15
__FUNCTION__.18262:
	.string	"have_add2_insn"
	.text
.globl have_add2_insn
	.type	have_add2_insn, @function
have_add2_insn:
.LFB46:
	.loc 1 4284 0
	pushl	%ebp
.LCFI136:
	movl	%esp, %ebp
.LCFI137:
	pushl	%esi
.LCFI138:
	pushl	%ebx
.LCFI139:
	subl	$32, %esp
.LCFI140:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4287 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L1642
	.loc 1 4288 0
	leal	__FUNCTION__.18262@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4288, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1642:
	.loc 1 4290 0
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4292 0
	cmpl	$529, -12(%ebp)
	jne	.L1644
	.loc 1 4293 0
	movl	$0, -28(%ebp)
	jmp	.L1646
.L1644:
	.loc 1 4295 0
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	je	.L1647
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	je	.L1647
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	jne	.L1650
.L1647:
	.loc 1 4301 0
	movl	$0, -28(%ebp)
	jmp	.L1646
.L1650:
	.loc 1 4303 0
	movl	$1, -28(%ebp)
.L1646:
	movl	-28(%ebp), %eax
	.loc 1 4304 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE46:
	.size	have_add2_insn, .-have_add2_insn
	.section	.rodata
	.type	__FUNCTION__.18311, @object
	.size	__FUNCTION__.18311, 14
__FUNCTION__.18311:
	.string	"gen_sub2_insn"
	.text
.globl gen_sub2_insn
	.type	gen_sub2_insn, @function
gen_sub2_insn:
.LFB47:
	.loc 1 4311 0
	pushl	%ebp
.LCFI141:
	movl	%esp, %ebp
.LCFI142:
	pushl	%esi
.LCFI143:
	pushl	%ebx
.LCFI144:
	subl	$32, %esp
.LCFI145:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4312 0
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4314 0
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	je	.L1653
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	je	.L1653
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	jne	.L1656
.L1653:
	.loc 1 4320 0
	leal	__FUNCTION__.18311@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4320, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1656:
	.loc 1 4322 0
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 4323 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE47:
	.size	gen_sub2_insn, .-gen_sub2_insn
.globl gen_sub3_insn
	.type	gen_sub3_insn, @function
gen_sub3_insn:
.LFB48:
	.loc 1 4330 0
	pushl	%ebp
.LCFI146:
	movl	%esp, %ebp
.LCFI147:
	pushl	%esi
.LCFI148:
	pushl	%ebx
.LCFI149:
	subl	$32, %esp
.LCFI150:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4331 0
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4333 0
	cmpl	$529, -12(%ebp)
	je	.L1659
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	je	.L1659
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	je	.L1659
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	jne	.L1663
.L1659:
	.loc 1 4340 0
	movl	$0, -28(%ebp)
	jmp	.L1664
.L1663:
	.loc 1 4342 0
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -28(%ebp)
.L1664:
	movl	-28(%ebp), %eax
	.loc 1 4343 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE48:
	.size	gen_sub3_insn, .-gen_sub3_insn
	.section	.rodata
	.type	__FUNCTION__.18406, @object
	.size	__FUNCTION__.18406, 15
__FUNCTION__.18406:
	.string	"have_sub2_insn"
	.text
.globl have_sub2_insn
	.type	have_sub2_insn, @function
have_sub2_insn:
.LFB49:
	.loc 1 4348 0
	pushl	%ebp
.LCFI151:
	movl	%esp, %ebp
.LCFI152:
	pushl	%esi
.LCFI153:
	pushl	%ebx
.LCFI154:
	subl	$32, %esp
.LCFI155:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4351 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L1667
	.loc 1 4352 0
	leal	__FUNCTION__.18406@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4352, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1667:
	.loc 1 4354 0
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4356 0
	cmpl	$529, -12(%ebp)
	jne	.L1669
	.loc 1 4357 0
	movl	$0, -28(%ebp)
	jmp	.L1671
.L1669:
	.loc 1 4359 0
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	je	.L1672
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	je	.L1672
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	testl	%eax, %eax
	jne	.L1675
.L1672:
	.loc 1 4365 0
	movl	$0, -28(%ebp)
	jmp	.L1671
.L1675:
	.loc 1 4367 0
	movl	$1, -28(%ebp)
.L1671:
	movl	-28(%ebp), %eax
	.loc 1 4368 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE49:
	.size	have_sub2_insn, .-have_sub2_insn
	.section	.rodata
	.type	__FUNCTION__.18463, @object
	.size	__FUNCTION__.18463, 14
__FUNCTION__.18463:
	.string	"gen_move_insn"
	.text
.globl gen_move_insn
	.type	gen_move_insn, @function
gen_move_insn:
.LFB50:
	.loc 1 4376 0
	pushl	%ebp
.LCFI156:
	movl	%esp, %ebp
.LCFI157:
	pushl	%ebx
.LCFI158:
	subl	$68, %esp
.LCFI159:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4377 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 4381 0
	cmpl	$0, -28(%ebp)
	jne	.L1678
	.loc 1 4382 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
.L1678:
	.loc 1 4384 0
	movl	optab_table@GOT(%ebx), %eax
	movl	120(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4390 0
	movl	-28(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$4, %eax
	jne	.L1680
	cmpl	$529, -24(%ebp)
	jne	.L1680
.LBB50:
	.loc 1 4392 0
	movl	$0, -16(%ebp)
	.loc 1 4393 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4395 0
	cmpl	$53, -28(%ebp)
	je	.L1683
	movl	optab_table@GOT(%ebx), %eax
	movl	120(%eax), %eax
	movl	428(%eax), %eax
	cmpl	$529, %eax
	je	.L1683
	.loc 1 4397 0
	movl	$53, -16(%ebp)
	.loc 1 4395 0
	jmp	.L1686
.L1683:
	.loc 1 4399 0
	movl	$2, -16(%ebp)
	jmp	.L1687
.L1688:
	.loc 1 4401 0
	movl	-16(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-28(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	je	.L1686
	.loc 1 4400 0
	movl	-16(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
.L1687:
	.loc 1 4399 0
	cmpl	$0, -16(%ebp)
	jne	.L1688
.L1686:
	.loc 1 4404 0
	cmpl	$0, -16(%ebp)
	jne	.L1690
	.loc 1 4405 0
	leal	__FUNCTION__.18463@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4405, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1690:
	.loc 1 4414 0
	movl	reload_in_progress@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1692
	.loc 1 4416 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart_common@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4417 0
	cmpl	$0, 8(%ebp)
	jne	.L1694
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1694
	.loc 1 4419 0
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4420 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_replacements@PLT
.L1694:
	.loc 1 4423 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart_common@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4424 0
	cmpl	$0, 12(%ebp)
	jne	.L1700
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1700
	.loc 1 4426 0
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4427 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_replacements@PLT
	jmp	.L1700
.L1692:
	.loc 1 4432 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4433 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, 12(%ebp)
.L1700:
	.loc 1 4436 0
	movl	optab_table@GOT(%ebx), %eax
	movl	120(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4437 0
	movl	-24(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -40(%ebp)
	jmp	.L1701
.L1680:
.LBE50:
	.loc 1 4440 0
	call	start_sequence@PLT
	.loc 1 4441 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn_1@PLT
	.loc 1 4442 0
	call	get_insns@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4443 0
	call	end_sequence@PLT
	.loc 1 4444 0
	movl	-20(%ebp), %eax
	movl	%eax, -40(%ebp)
.L1701:
	movl	-40(%ebp), %eax
	.loc 1 4445 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	gen_move_insn, .-gen_move_insn
.globl can_extend_p
	.type	can_extend_p, @function
can_extend_p:
.LFB51:
	.loc 1 4455 0
	pushl	%ebp
.LCFI160:
	movl	%esp, %ebp
.LCFI161:
	pushl	%edi
.LCFI162:
	pushl	%esi
.LCFI163:
	pushl	%ebx
.LCFI164:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4461 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	cmpl	$0, 16(%ebp)
	setne	%al
	movzbl	%al, %edx
	movl	extendtab@GOT(%ebx), %ecx
	imull	$54, %esi, %eax
	addl	%edi, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	(%ecx,%eax,4), %eax
	.loc 1 4462 0
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE51:
	.size	can_extend_p, .-can_extend_p
.globl gen_extend_insn
	.type	gen_extend_insn, @function
gen_extend_insn:
.LFB52:
	.loc 1 4472 0
	pushl	%ebp
.LCFI165:
	movl	%esp, %ebp
.LCFI166:
	pushl	%edi
.LCFI167:
	pushl	%esi
.LCFI168:
	pushl	%ebx
.LCFI169:
	subl	$12, %esp
.LCFI170:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4473 0
	movl	16(%ebp), %esi
	movl	20(%ebp), %edi
	cmpl	$0, 24(%ebp)
	setne	%al
	movzbl	%al, %edx
	movl	extendtab@GOT(%ebx), %ecx
	imull	$54, %esi, %eax
	addl	%edi, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	(%ecx,%eax,4), %eax
	movl	%eax, %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 4474 0
	addl	$12, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE52:
	.size	gen_extend_insn, .-gen_extend_insn
	.type	can_fix_p, @function
can_fix_p:
.LFB53:
	.loc 1 4490 0
	pushl	%ebp
.LCFI171:
	movl	%esp, %ebp
.LCFI172:
	pushl	%edi
.LCFI173:
	pushl	%esi
.LCFI174:
	pushl	%ebx
.LCFI175:
	subl	$4, %esp
.LCFI176:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4491 0
	movl	20(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 4492 0
	movl	12(%ebp), %esi
	movl	8(%ebp), %edi
	cmpl	$0, 16(%ebp)
	setne	%al
	movzbl	%al, %edx
	movl	fixtrunctab@GOT(%ebx), %ecx
	imull	$54, %esi, %eax
	addl	%edi, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	(%ecx,%eax,4), %eax
	cmpl	$529, %eax
	je	.L1708
	.loc 1 4494 0
	movl	12(%ebp), %esi
	movl	8(%ebp), %edi
	cmpl	$0, 16(%ebp)
	setne	%al
	movzbl	%al, %edx
	movl	fixtrunctab@GOT(%ebx), %ecx
	imull	$54, %esi, %eax
	addl	%edi, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	(%ecx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1710
.L1708:
	.loc 1 4496 0
	movl	optab_table@GOT(%ebx), %eax
	movl	68(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L1711
	.loc 1 4498 0
	movl	20(%ebp), %eax
	movl	$1, (%eax)
	.loc 1 4499 0
	movl	12(%ebp), %esi
	movl	8(%ebp), %edi
	cmpl	$0, 16(%ebp)
	setne	%al
	movzbl	%al, %edx
	movl	fixtab@GOT(%ebx), %ecx
	imull	$54, %esi, %eax
	addl	%edi, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	(%ecx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1710
.L1711:
	.loc 1 4501 0
	movl	$529, -16(%ebp)
.L1710:
	movl	-16(%ebp), %eax
	.loc 1 4502 0
	addl	$4, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE53:
	.size	can_fix_p, .-can_fix_p
	.type	can_float_p, @function
can_float_p:
.LFB54:
	.loc 1 4508 0
	pushl	%ebp
.LCFI177:
	movl	%esp, %ebp
.LCFI178:
	pushl	%edi
.LCFI179:
	pushl	%esi
.LCFI180:
	pushl	%ebx
.LCFI181:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4509 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	cmpl	$0, 16(%ebp)
	setne	%al
	movzbl	%al, %edx
	movl	floattab@GOT(%ebx), %ecx
	imull	$54, %esi, %eax
	addl	%edi, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	(%ecx,%eax,4), %eax
	.loc 1 4510 0
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE54:
	.size	can_float_p, .-can_float_p
	.section	.rodata
	.type	__FUNCTION__.18588, @object
	.size	__FUNCTION__.18588, 13
__FUNCTION__.18588:
	.string	"expand_float"
	.text
.globl expand_float
	.type	expand_float, @function
expand_float:
.LFB55:
	.loc 1 4522 0
	pushl	%ebp
.LCFI182:
	movl	%esp, %ebp
.LCFI183:
	pushl	%ebx
.LCFI184:
	subl	$68, %esp
.LCFI185:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4524 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 4528 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L1717
	.loc 1 4529 0
	leal	__FUNCTION__.18588@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4529, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1717:
	.loc 1 4536 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	jmp	.L1719
.L1720:
	.loc 1 4538 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	jmp	.L1721
.L1722:
.LBB51:
	.loc 1 4541 0
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4543 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-28(%ebp), %eax
	je	.L1723
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	significand_size@PLT
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %ecx
	jl	.L1725
.L1723:
	.loc 1 4547 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	can_float_p
	movl	%eax, -36(%ebp)
	.loc 1 4548 0
	cmpl	$529, -36(%ebp)
	jne	.L1726
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-24(%ebp), %eax
	je	.L1726
	cmpl	$0, 16(%ebp)
	je	.L1726
	.loc 1 4549 0
	movl	$0, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	can_float_p
	movl	%eax, -36(%ebp)
	movl	$0, -20(%ebp)
.L1726:
	.loc 1 4551 0
	cmpl	$529, -36(%ebp)
	je	.L1725
	.loc 1 4553 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4554 0
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4556 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-24(%ebp), %eax
	je	.L1731
	.loc 1 4557 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, 12(%ebp)
.L1731:
	.loc 1 4559 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-28(%ebp), %eax
	je	.L1733
	.loc 1 4560 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -32(%ebp)
.L1733:
	.loc 1 4562 0
	cmpl	$0, -20(%ebp)
	je	.L1735
	movl	$137, -40(%ebp)
	jmp	.L1737
.L1735:
	movl	$135, -40(%ebp)
.L1737:
	movl	-36(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_unop_insn@PLT
	.loc 1 4565 0
	movl	-32(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L1788
	.loc 1 4566 0
	movl	$0, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_move@PLT
	.loc 1 4567 0
	jmp	.L1788
.L1725:
.LBE51:
	.loc 1 4539 0
	movl	-24(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
.L1721:
	.loc 1 4538 0
	cmpl	$0, -24(%ebp)
	jne	.L1722
	.loc 1 4537 0
	movl	-28(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
.L1719:
	.loc 1 4536 0
	cmpl	$0, -28(%ebp)
	jne	.L1720
.LBB52:
	.loc 1 4694 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4695 0
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4697 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	4(%eax), %eax
	cmpb	%al, %dl
	jae	.L1743
	.loc 1 4698 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, 12(%ebp)
.L1743:
	.loc 1 4700 0
	movl	flag_force_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1745
	.loc 1 4701 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	force_not_mem@PLT
	movl	%eax, 12(%ebp)
.L1745:
	.loc 1 4703 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$15, %al
	jne	.L1747
	.loc 1 4705 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$4, %al
	jne	.L1749
	.loc 1 4706 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	236(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1756
.L1749:
	.loc 1 4707 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$5, %al
	jne	.L1752
	.loc 1 4708 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	240(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1756
.L1752:
	.loc 1 4709 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$6, %al
	jne	.L1754
	.loc 1 4710 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	244(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1756
.L1754:
	.loc 1 4712 0
	leal	__FUNCTION__.18588@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4712, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1747:
	.loc 1 4714 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$16, %al
	jne	.L1757
	.loc 1 4716 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$4, %al
	jne	.L1759
	.loc 1 4717 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	248(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1756
.L1759:
	.loc 1 4718 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$5, %al
	jne	.L1762
	.loc 1 4719 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	252(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1756
.L1762:
	.loc 1 4720 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$6, %al
	jne	.L1764
	.loc 1 4721 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1756
.L1764:
	.loc 1 4723 0
	leal	__FUNCTION__.18588@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4723, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1757:
	.loc 1 4725 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$17, %al
	jne	.L1766
	.loc 1 4727 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$4, %al
	jne	.L1768
	.loc 1 4728 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1756
.L1768:
	.loc 1 4729 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$5, %al
	jne	.L1771
	.loc 1 4730 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	264(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1756
.L1771:
	.loc 1 4731 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$6, %al
	jne	.L1773
	.loc 1 4732 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	268(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1756
.L1773:
	.loc 1 4734 0
	leal	__FUNCTION__.18588@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4734, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1766:
	.loc 1 4736 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$18, %al
	jne	.L1775
	.loc 1 4738 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$4, %al
	jne	.L1777
	.loc 1 4739 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	272(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1756
.L1777:
	.loc 1 4740 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$5, %al
	jne	.L1780
	.loc 1 4741 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	276(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1756
.L1780:
	.loc 1 4742 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$6, %al
	jne	.L1782
	.loc 1 4743 0
	movl	libfunc_table@GOT(%ebx), %eax
	movl	280(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1756
.L1782:
	.loc 1 4745 0
	leal	__FUNCTION__.18588@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4745, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1775:
	.loc 1 4748 0
	leal	__FUNCTION__.18588@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4748, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1756:
	.loc 1 4750 0
	call	start_sequence@PLT
	.loc 1 4752 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%edx, 24(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_library_call_value@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4755 0
	call	get_insns@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4756 0
	call	end_sequence@PLT
	.loc 1 4758 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$135, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_libcall_block@PLT
.L1784:
.LBE52:
	.loc 1 4767 0
	movl	-32(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L1788
	.loc 1 4769 0
	movl	-32(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L1786
	.loc 1 4770 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	jmp	.L1788
.L1786:
	.loc 1 4772 0
	movl	$0, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_move@PLT
.L1788:
	.loc 1 4774 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	expand_float, .-expand_float
	.type	ftruncify, @function
ftruncify:
.LFB56:
	.loc 1 4782 0
	pushl	%ebp
.LCFI186:
	movl	%esp, %ebp
.LCFI187:
	pushl	%ebx
.LCFI188:
	subl	$36, %esp
.LCFI189:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4783 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4784 0
	movl	optab_table@GOT(%ebx), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	$0, 16(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_unop@PLT
	.loc 1 4785 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	ftruncify, .-ftruncify
	.section	.rodata
	.type	__FUNCTION__.18785, @object
	.size	__FUNCTION__.18785, 11
__FUNCTION__.18785:
	.string	"expand_fix"
	.text
.globl expand_fix
	.type	expand_fix, @function
expand_fix:
.LFB57:
	.loc 1 4791 0
	pushl	%ebp
.LCFI190:
	movl	%esp, %ebp
.LCFI191:
	pushl	%esi
.LCFI192:
	pushl	%ebx
.LCFI193:
	subl	$176, %esp
.LCFI194:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4793 0
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 4795 0
	movl	$0, -64(%ebp)
	.loc 1 4796 0
	movl	$0, -44(%ebp)
	.loc 1 4803 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	jmp	.L1792
.L1793:
	.loc 1 4805 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	jmp	.L1794
.L1795:
.LBB53:
	.loc 1 4808 0
	movl	16(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 4810 0
	leal	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	can_fix_p
	movl	%eax, -60(%ebp)
	.loc 1 4811 0
	cmpl	$529, -60(%ebp)
	jne	.L1796
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-48(%ebp), %eax
	je	.L1796
	cmpl	$0, 16(%ebp)
	je	.L1796
	.loc 1 4812 0
	leal	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	can_fix_p
	movl	%eax, -60(%ebp)
	movl	$0, -40(%ebp)
.L1796:
	.loc 1 4814 0
	cmpl	$529, -60(%ebp)
	je	.L1800
	.loc 1 4816 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4817 0
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4819 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-52(%ebp), %eax
	je	.L1802
	.loc 1 4820 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, 12(%ebp)
.L1802:
	.loc 1 4822 0
	movl	-64(%ebp), %eax
	testl	%eax, %eax
	je	.L1804
	.loc 1 4823 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	ftruncify
	movl	%eax, 12(%ebp)
.L1804:
	.loc 1 4825 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-48(%ebp), %eax
	je	.L1806
	.loc 1 4826 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -56(%ebp)
.L1806:
	.loc 1 4828 0
	cmpl	$0, -40(%ebp)
	je	.L1808
	movl	$138, -148(%ebp)
	jmp	.L1810
.L1808:
	movl	$136, -148(%ebp)
.L1810:
	movl	-60(%ebp), %edx
	movl	-148(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_unop_insn@PLT
	.loc 1 4830 0
	movl	-56(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L1917
	.loc 1 4831 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_move@PLT
	.loc 1 4832 0
	jmp	.L1917
.L1800:
.LBE53:
	.loc 1 4806 0
	movl	-48(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
.L1794:
	.loc 1 4805 0
	cmpl	$0, -48(%ebp)
	jne	.L1795
	.loc 1 4804 0
	movl	-52(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
.L1792:
	.loc 1 4803 0
	cmpl	$0, -52(%ebp)
	jne	.L1793
	.loc 1 4845 0
	cmpl	$0, 16(%ebp)
	je	.L1816
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	cmpw	$64, %ax
	ja	.L1816
	.loc 1 4846 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	jmp	.L1819
.L1820:
	.loc 1 4849 0
	movl	-52(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	cmpw	%ax, %cx
	jbe	.L1821
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	leal	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	can_fix_p
	cmpl	$529, %eax
	je	.L1821
.LBB54:
	.loc 1 4857 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -36(%ebp)
	.loc 1 4858 0
	movl	-36(%ebp), %eax
	subl	$1, %eax
	movl	%eax, 4(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	real_2expN@PLT
	.loc 1 4859 0
	movl	-52(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 20(%esp)
	call	const_double_from_real_value@PLT
	movl	%eax, -32(%ebp)
	.loc 1 4860 0
	call	gen_label_rtx@PLT
	movl	%eax, -28(%ebp)
	.loc 1 4861 0
	call	gen_label_rtx@PLT
	movl	%eax, -24(%ebp)
	.loc 1 4863 0
	call	emit_queue@PLT
	.loc 1 4864 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4865 0
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4867 0
	movl	flag_force_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1824
	.loc 1 4868 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	force_not_mem@PLT
	movl	%eax, 12(%ebp)
.L1824:
	.loc 1 4870 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-52(%ebp), %eax
	je	.L1826
	.loc 1 4871 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, 12(%ebp)
.L1826:
	.loc 1 4874 0
	call	do_pending_stack_adjust@PLT
	.loc 1 4875 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	%edx, 16(%esp)
	movl	$0, 12(%esp)
	movl	$114, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_cmp_and_jump_insns@PLT
	.loc 1 4879 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_fix@PLT
	.loc 1 4880 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	.loc 1 4881 0
	call	emit_barrier@PLT
	.loc 1 4886 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 4887 0
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %ecx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -56(%ebp)
	.loc 1 4889 0
	movl	$0, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_fix@PLT
	.loc 1 4890 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	-36(%ebp), %ecx
	subl	$1, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1918
	movl	%eax, %edx
	xorl	%eax, %eax
.L1918:
	movl	%esi, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	gen_int_mode@PLT
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	80(%eax), %esi
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	$3, 24(%esp)
	movl	$1, 20(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -56(%ebp)
	.loc 1 4896 0
	movl	-56(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L1828
	.loc 1 4897 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L1828:
	.loc 1 4899 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 4901 0
	movl	optab_table@GOT(%ebx), %eax
	movl	120(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L1917
	.loc 1 4905 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4906 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$138, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	set_unique_reg_note@PLT
	.loc 1 4913 0
	jmp	.L1917
.L1821:
.LBE54:
	.loc 1 4847 0
	movl	-52(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
.L1819:
	.loc 1 4846 0
	cmpl	$0, -52(%ebp)
	jne	.L1820
.L1816:
	.loc 1 4920 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	4(%eax), %eax
	cmpb	%al, %dl
	jae	.L1832
	.loc 1 4922 0
	movl	$4, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -56(%ebp)
	.loc 1 4924 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_fix@PLT
	jmp	.L1834
.L1832:
	.loc 1 4926 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$15, %al
	jne	.L1835
	.loc 1 4928 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$4, %al
	jne	.L1837
	.loc 1 4929 0
	cmpl	$0, 16(%ebp)
	je	.L1839
	movl	libfunc_table@GOT(%ebx), %eax
	movl	332(%eax), %eax
	movl	%eax, -144(%ebp)
	jmp	.L1841
.L1839:
	movl	libfunc_table@GOT(%ebx), %eax
	movl	284(%eax), %eax
	movl	%eax, -144(%ebp)
.L1841:
	movl	-144(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1834
.L1837:
	.loc 1 4930 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$5, %al
	jne	.L1843
	.loc 1 4931 0
	cmpl	$0, 16(%ebp)
	je	.L1845
	movl	libfunc_table@GOT(%ebx), %eax
	movl	336(%eax), %eax
	movl	%eax, -140(%ebp)
	jmp	.L1847
.L1845:
	movl	libfunc_table@GOT(%ebx), %eax
	movl	288(%eax), %eax
	movl	%eax, -140(%ebp)
.L1847:
	movl	-140(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1834
.L1843:
	.loc 1 4932 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$6, %al
	jne	.L1848
	.loc 1 4933 0
	cmpl	$0, 16(%ebp)
	je	.L1850
	movl	libfunc_table@GOT(%ebx), %eax
	movl	340(%eax), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1852
.L1850:
	movl	libfunc_table@GOT(%ebx), %eax
	movl	292(%eax), %eax
	movl	%eax, -136(%ebp)
.L1852:
	movl	-136(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1834
.L1848:
	.loc 1 4935 0
	leal	__FUNCTION__.18785@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4935, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1835:
	.loc 1 4937 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$16, %al
	jne	.L1853
	.loc 1 4939 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$4, %al
	jne	.L1855
	.loc 1 4940 0
	cmpl	$0, 16(%ebp)
	je	.L1857
	movl	libfunc_table@GOT(%ebx), %eax
	movl	344(%eax), %eax
	movl	%eax, -132(%ebp)
	jmp	.L1859
.L1857:
	movl	libfunc_table@GOT(%ebx), %eax
	movl	296(%eax), %eax
	movl	%eax, -132(%ebp)
.L1859:
	movl	-132(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1834
.L1855:
	.loc 1 4941 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$5, %al
	jne	.L1861
	.loc 1 4942 0
	cmpl	$0, 16(%ebp)
	je	.L1863
	movl	libfunc_table@GOT(%ebx), %eax
	movl	348(%eax), %eax
	movl	%eax, -128(%ebp)
	jmp	.L1865
.L1863:
	movl	libfunc_table@GOT(%ebx), %eax
	movl	300(%eax), %eax
	movl	%eax, -128(%ebp)
.L1865:
	movl	-128(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1834
.L1861:
	.loc 1 4943 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$6, %al
	jne	.L1866
	.loc 1 4944 0
	cmpl	$0, 16(%ebp)
	je	.L1868
	movl	libfunc_table@GOT(%ebx), %eax
	movl	352(%eax), %eax
	movl	%eax, -124(%ebp)
	jmp	.L1870
.L1868:
	movl	libfunc_table@GOT(%ebx), %eax
	movl	304(%eax), %eax
	movl	%eax, -124(%ebp)
.L1870:
	movl	-124(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1834
.L1866:
	.loc 1 4946 0
	leal	__FUNCTION__.18785@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4946, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1853:
	.loc 1 4948 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$17, %al
	jne	.L1871
	.loc 1 4950 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$4, %al
	jne	.L1873
	.loc 1 4951 0
	cmpl	$0, 16(%ebp)
	je	.L1875
	movl	libfunc_table@GOT(%ebx), %eax
	movl	356(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L1877
.L1875:
	movl	libfunc_table@GOT(%ebx), %eax
	movl	308(%eax), %eax
	movl	%eax, -120(%ebp)
.L1877:
	movl	-120(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1834
.L1873:
	.loc 1 4952 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$5, %al
	jne	.L1879
	.loc 1 4953 0
	cmpl	$0, 16(%ebp)
	je	.L1881
	movl	libfunc_table@GOT(%ebx), %eax
	movl	360(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1883
.L1881:
	movl	libfunc_table@GOT(%ebx), %eax
	movl	312(%eax), %eax
	movl	%eax, -116(%ebp)
.L1883:
	movl	-116(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1834
.L1879:
	.loc 1 4954 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$6, %al
	jne	.L1884
	.loc 1 4955 0
	cmpl	$0, 16(%ebp)
	je	.L1886
	movl	libfunc_table@GOT(%ebx), %eax
	movl	364(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L1888
.L1886:
	movl	libfunc_table@GOT(%ebx), %eax
	movl	316(%eax), %eax
	movl	%eax, -112(%ebp)
.L1888:
	movl	-112(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1834
.L1884:
	.loc 1 4957 0
	leal	__FUNCTION__.18785@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4957, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1871:
	.loc 1 4959 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$18, %al
	jne	.L1889
	.loc 1 4961 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$4, %al
	jne	.L1891
	.loc 1 4962 0
	cmpl	$0, 16(%ebp)
	je	.L1893
	movl	libfunc_table@GOT(%ebx), %eax
	movl	368(%eax), %eax
	movl	%eax, -108(%ebp)
	jmp	.L1895
.L1893:
	movl	libfunc_table@GOT(%ebx), %eax
	movl	320(%eax), %eax
	movl	%eax, -108(%ebp)
.L1895:
	movl	-108(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1834
.L1891:
	.loc 1 4963 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$5, %al
	jne	.L1897
	.loc 1 4964 0
	cmpl	$0, 16(%ebp)
	je	.L1899
	movl	libfunc_table@GOT(%ebx), %eax
	movl	372(%eax), %eax
	movl	%eax, -104(%ebp)
	jmp	.L1901
.L1899:
	movl	libfunc_table@GOT(%ebx), %eax
	movl	324(%eax), %eax
	movl	%eax, -104(%ebp)
.L1901:
	movl	-104(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1834
.L1897:
	.loc 1 4965 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$6, %al
	jne	.L1902
	.loc 1 4966 0
	cmpl	$0, 16(%ebp)
	je	.L1904
	movl	libfunc_table@GOT(%ebx), %eax
	movl	376(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1906
.L1904:
	movl	libfunc_table@GOT(%ebx), %eax
	movl	328(%eax), %eax
	movl	%eax, -100(%ebp)
.L1906:
	movl	-100(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1834
.L1902:
	.loc 1 4968 0
	leal	__FUNCTION__.18785@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4968, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1889:
	.loc 1 4971 0
	leal	__FUNCTION__.18785@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4971, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1834:
	.loc 1 4973 0
	cmpl	$0, -44(%ebp)
	je	.L1907
.LBB55:
	.loc 1 4978 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4979 0
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4981 0
	movl	flag_force_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1909
	.loc 1 4982 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	force_not_mem@PLT
	movl	%eax, 12(%ebp)
.L1909:
	.loc 1 4984 0
	call	start_sequence@PLT
	.loc 1 4986 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%edx, 24(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_library_call_value@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4989 0
	call	get_insns@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4990 0
	call	end_sequence@PLT
	.loc 1 4992 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -96(%ebp)
	cmpl	$0, 16(%ebp)
	je	.L1911
	movl	$138, -92(%ebp)
	jmp	.L1913
.L1911:
	movl	$136, -92(%ebp)
.L1913:
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_libcall_block@PLT
.L1907:
.LBE55:
	.loc 1 4997 0
	movl	-56(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L1917
	.loc 1 4999 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L1915
	.loc 1 5000 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	jmp	.L1917
.L1915:
	.loc 1 5002 0
	movl	$0, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_move@PLT
.L1917:
	.loc 1 5004 0
	addl	$176, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE57:
	.size	expand_fix, .-expand_fix
.globl have_insn_for
	.type	have_insn_for, @function
have_insn_for:
.LFB58:
	.loc 1 5012 0
	pushl	%ebp
.LCFI195:
	movl	%esp, %ebp
.LCFI196:
	subl	$4, %esp
.LCFI197:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 5013 0
	movl	8(%ebp), %eax
	movl	code_to_optab@GOT(%ecx), %edx
	movl	(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L1920
	movl	8(%ebp), %edx
	movl	code_to_optab@GOT(%ecx), %eax
	movl	(%eax,%edx,4), %edx
	movl	12(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L1920
	movl	$1, -4(%ebp)
	jmp	.L1923
.L1920:
	movl	$0, -4(%ebp)
.L1923:
	movl	-4(%ebp), %eax
	.loc 1 5016 0
	leave
	ret
.LFE58:
	.size	have_insn_for, .-have_insn_for
	.type	new_optab, @function
new_optab:
.LFB59:
	.loc 1 5021 0
	pushl	%ebp
.LCFI198:
	movl	%esp, %ebp
.LCFI199:
	pushl	%ebx
.LCFI200:
	subl	$20, %esp
.LCFI201:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5023 0
	movl	$436, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 5024 0
	movl	$0, -12(%ebp)
	jmp	.L1926
.L1927:
	.loc 1 5026 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	$529, 4(%eax,%edx,8)
	.loc 1 5027 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	$0, 8(%eax,%edx,8)
	.loc 1 5024 0
	addl	$1, -12(%ebp)
.L1926:
	cmpl	$53, -12(%ebp)
	jle	.L1927
	.loc 1 5030 0
	movl	-8(%ebp), %eax
	.loc 1 5031 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE59:
	.size	new_optab, .-new_optab
	.type	init_libfuncs, @function
init_libfuncs:
.LFB62:
	.loc 1 5080 0
	pushl	%ebp
.LCFI202:
	movl	%esp, %ebp
.LCFI203:
	pushl	%edi
.LCFI204:
	pushl	%ebx
.LCFI205:
	subl	$80, %esp
.LCFI206:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 5080 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 5082 0
	movl	-48(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -68(%ebp)
	movl	$0, %eax
	cld
	movl	-68(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	.loc 1 5084 0
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1931
.L1932:
.LBB56:
	.loc 1 5087 0
	movl	-40(%ebp), %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -32(%ebp)
	.loc 1 5088 0
	movl	-32(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -72(%ebp)
	movl	$0, %eax
	cld
	movl	-72(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	.loc 1 5089 0
	movl	-28(%ebp), %eax
	addl	-36(%ebp), %eax
	addl	$4, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	12(%esp), %eax
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %ecx
	movl	%ecx, -24(%ebp)
	.loc 1 5093 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5094 0
	movl	-20(%ebp), %eax
	movb	$95, (%eax)
	addl	$1, -20(%ebp)
	.loc 1 5095 0
	movl	-20(%ebp), %eax
	movb	$95, (%eax)
	addl	$1, -20(%ebp)
	.loc 1 5096 0
	movl	-48(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1933
.L1934:
	.loc 1 5097 0
	movl	-16(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-20(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -20(%ebp)
	addl	$1, -16(%ebp)
.L1933:
	.loc 1 5096 0
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1934
	.loc 1 5098 0
	movl	-32(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1936
.L1937:
	.loc 1 5099 0
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_tolower@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %edx
	movl	-20(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -20(%ebp)
	.loc 1 5098 0
	addl	$1, -16(%ebp)
.L1936:
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1937
	.loc 1 5100 0
	movl	24(%ebp), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -20(%ebp)
	.loc 1 5101 0
	movl	-20(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 5103 0
	movl	-40(%ebp), %edi
	movl	%edi, -60(%ebp)
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc_string@PLT
	movl	%eax, -56(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1939
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1939
	movl	$5, -52(%ebp)
	jmp	.L1942
.L1939:
	movl	$4, -52(%ebp)
.L1942:
	movl	-56(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$78, (%esp)
	call	gen_rtx_fmt_s@PLT
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	-60(%ebp), %ecx
	movl	%edx, 8(%eax,%ecx,8)
.LBE56:
	.loc 1 5085 0
	addl	$1, -40(%ebp)
.L1931:
	.loc 1 5084 0
	movl	-40(%ebp), %eax
	cmpl	16(%ebp), %eax
	jle	.L1932
	.loc 1 5107 0
	movl	-12(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L1945
	call	__stack_chk_fail_local
.L1945:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE62:
	.size	init_libfuncs, .-init_libfuncs
	.type	init_integral_libfuncs, @function
init_integral_libfuncs:
.LFB63:
	.loc 1 5119 0
	pushl	%ebp
.LCFI207:
	movl	%esp, %ebp
.LCFI208:
	subl	$24, %esp
.LCFI209:
	.loc 1 5120 0
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$4, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	init_libfuncs
	.loc 1 5121 0
	leave
	ret
.LFE63:
	.size	init_integral_libfuncs, .-init_integral_libfuncs
	.type	init_floating_libfuncs, @function
init_floating_libfuncs:
.LFB64:
	.loc 1 5133 0
	pushl	%ebp
.LCFI210:
	movl	%esp, %ebp
.LCFI211:
	subl	$24, %esp
.LCFI212:
	.loc 1 5134 0
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$18, 8(%esp)
	movl	$15, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	init_libfuncs
	.loc 1 5135 0
	leave
	ret
.LFE64:
	.size	init_floating_libfuncs, .-init_floating_libfuncs
.globl init_one_libfunc
	.type	init_one_libfunc, @function
init_one_libfunc:
.LFB65:
	.loc 1 5140 0
	pushl	%ebp
.LCFI213:
	movl	%esp, %ebp
.LCFI214:
	pushl	%esi
.LCFI215:
	pushl	%ebx
.LCFI216:
	subl	$32, %esp
.LCFI217:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5146 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	build_function_type@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$31, (%esp)
	call	build_decl@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5147 0
	movl	-12(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 5148 0
	movl	-12(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$1, %eax
	movb	%al, 33(%edx)
	.loc 1 5149 0
	movl	-12(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$8, %eax
	movb	%al, 10(%edx)
	.loc 1 5152 0
	movl	-12(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L1951
	movl	-12(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1953
.L1951:
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-12(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -28(%ebp)
.L1953:
	movl	-28(%ebp), %edx
	movl	4(%edx), %eax
	.loc 1 5153 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE65:
	.size	init_one_libfunc, .-init_one_libfunc
	.section	.rodata
.LC1:
	.string	"add"
.LC2:
	.string	"addv"
.LC3:
	.string	"sub"
.LC4:
	.string	"subv"
.LC5:
	.string	"mul"
.LC6:
	.string	"mulv"
.LC7:
	.string	"div"
.LC8:
	.string	"divv"
.LC9:
	.string	"udiv"
.LC10:
	.string	"divmod"
.LC11:
	.string	"udivmod"
.LC12:
	.string	"mod"
.LC13:
	.string	"umod"
.LC14:
	.string	"ftrunc"
.LC15:
	.string	"and"
.LC16:
	.string	"ior"
.LC17:
	.string	"xor"
.LC18:
	.string	"ashl"
.LC19:
	.string	"ashr"
.LC20:
	.string	"lshr"
.LC21:
	.string	"min"
.LC22:
	.string	"max"
.LC23:
	.string	"umin"
.LC24:
	.string	"umax"
.LC25:
	.string	"neg"
.LC26:
	.string	"negv"
.LC27:
	.string	"one_cmpl"
.LC28:
	.string	"ffs"
.LC29:
	.string	"cmp"
.LC30:
	.string	"ucmp"
.LC31:
	.string	"cabs"
.LC32:
	.string	"__extendsfdf2"
.LC33:
	.string	"__extendsfxf2"
.LC34:
	.string	"__extendsftf2"
.LC35:
	.string	"__extenddfxf2"
.LC36:
	.string	"__extenddftf2"
.LC37:
	.string	"__truncdfsf2"
.LC38:
	.string	"__truncxfsf2"
.LC39:
	.string	"__trunctfsf2"
.LC40:
	.string	"__truncxfdf2"
.LC41:
	.string	"__trunctfdf2"
.LC42:
	.string	"abort"
.LC43:
	.string	"memcpy"
.LC44:
	.string	"memmove"
.LC45:
	.string	"bcopy"
.LC46:
	.string	"memcmp"
.LC47:
	.string	"__gcc_bcmp"
.LC48:
	.string	"memset"
.LC49:
	.string	"bzero"
.LC50:
	.string	"_Unwind_Resume"
.LC51:
	.string	"__builtin_setjmp"
.LC52:
	.string	"__builtin_longjmp"
.LC53:
	.string	"_Unwind_SjLj_Register"
.LC54:
	.string	"_Unwind_SjLj_Unregister"
.LC55:
	.string	"__eqhf2"
.LC56:
	.string	"__nehf2"
.LC57:
	.string	"__gthf2"
.LC58:
	.string	"__gehf2"
.LC59:
	.string	"__lthf2"
.LC60:
	.string	"__lehf2"
.LC61:
	.string	"__unordhf2"
.LC62:
	.string	"__eqsf2"
.LC63:
	.string	"__nesf2"
.LC64:
	.string	"__gtsf2"
.LC65:
	.string	"__gesf2"
.LC66:
	.string	"__ltsf2"
.LC67:
	.string	"__lesf2"
.LC68:
	.string	"__unordsf2"
.LC69:
	.string	"__eqdf2"
.LC70:
	.string	"__nedf2"
.LC71:
	.string	"__gtdf2"
.LC72:
	.string	"__gedf2"
.LC73:
	.string	"__ltdf2"
.LC74:
	.string	"__ledf2"
.LC75:
	.string	"__unorddf2"
.LC76:
	.string	"__eqxf2"
.LC77:
	.string	"__nexf2"
.LC78:
	.string	"__gtxf2"
.LC79:
	.string	"__gexf2"
.LC80:
	.string	"__ltxf2"
.LC81:
	.string	"__lexf2"
.LC82:
	.string	"__unordxf2"
.LC83:
	.string	"__eqtf2"
.LC84:
	.string	"__netf2"
.LC85:
	.string	"__gttf2"
.LC86:
	.string	"__getf2"
.LC87:
	.string	"__lttf2"
.LC88:
	.string	"__letf2"
.LC89:
	.string	"__unordtf2"
.LC90:
	.string	"__floatsisf"
.LC91:
	.string	"__floatdisf"
.LC92:
	.string	"__floattisf"
.LC93:
	.string	"__floatsidf"
.LC94:
	.string	"__floatdidf"
.LC95:
	.string	"__floattidf"
.LC96:
	.string	"__floatsixf"
.LC97:
	.string	"__floatdixf"
.LC98:
	.string	"__floattixf"
.LC99:
	.string	"__floatsitf"
.LC100:
	.string	"__floatditf"
.LC101:
	.string	"__floattitf"
.LC102:
	.string	"__fixsfsi"
.LC103:
	.string	"__fixsfdi"
.LC104:
	.string	"__fixsfti"
.LC105:
	.string	"__fixdfsi"
.LC106:
	.string	"__fixdfdi"
.LC107:
	.string	"__fixdfti"
.LC108:
	.string	"__fixxfsi"
.LC109:
	.string	"__fixxfdi"
.LC110:
	.string	"__fixxfti"
.LC111:
	.string	"__fixtfsi"
.LC112:
	.string	"__fixtfdi"
.LC113:
	.string	"__fixtfti"
.LC114:
	.string	"__fixunssfsi"
.LC115:
	.string	"__fixunssfdi"
.LC116:
	.string	"__fixunssfti"
.LC117:
	.string	"__fixunsdfsi"
.LC118:
	.string	"__fixunsdfdi"
.LC119:
	.string	"__fixunsdfti"
.LC120:
	.string	"__fixunsxfsi"
.LC121:
	.string	"__fixunsxfdi"
.LC122:
	.string	"__fixunsxfti"
.LC123:
	.string	"__fixunstfsi"
.LC124:
	.string	"__fixunstfdi"
.LC125:
	.string	"__fixunstfti"
.LC126:
	.string	"__cyg_profile_func_enter"
.LC127:
	.string	"__cyg_profile_func_exit"
.LC128:
	.string	"__mips16_addsf3"
.LC129:
	.string	"__mips16_subsf3"
.LC130:
	.string	"__mips16_mulsf3"
.LC131:
	.string	"__mips16_divsf3"
.LC132:
	.string	"__mips16_eqsf2"
.LC133:
	.string	"__mips16_nesf2"
.LC134:
	.string	"__mips16_gtsf2"
.LC135:
	.string	"__mips16_gesf2"
.LC136:
	.string	"__mips16_ltsf2"
.LC137:
	.string	"__mips16_lesf2"
.LC138:
	.string	"__mips16_floatsisf"
.LC139:
	.string	"__mips16_fixsfsi"
.LC140:
	.string	"__mips16_adddf3"
.LC141:
	.string	"__mips16_subdf3"
.LC142:
	.string	"__mips16_muldf3"
.LC143:
	.string	"__mips16_divdf3"
.LC144:
	.string	"__mips16_extendsfdf2"
.LC145:
	.string	"__mips16_truncdfsf2"
.LC146:
	.string	"__mips16_eqdf2"
.LC147:
	.string	"__mips16_nedf2"
.LC148:
	.string	"__mips16_gtdf2"
.LC149:
	.string	"__mips16_gedf2"
.LC150:
	.string	"__mips16_ltdf2"
.LC151:
	.string	"__mips16_ledf2"
.LC152:
	.string	"__mips16_floatsidf"
.LC153:
	.string	"__mips16_fixdfsi"
	.text
.globl init_optabs
	.type	init_optabs, @function
init_optabs:
.LFB66:
	.loc 1 5160 0
	pushl	%ebp
.LCFI218:
	movl	%esp, %ebp
.LCFI219:
	pushl	%esi
.LCFI220:
	pushl	%ebx
.LCFI221:
	subl	$48, %esp
.LCFI222:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5165 0
	movl	$0, -20(%ebp)
	jmp	.L1956
.L1957:
	.loc 1 5166 0
	movl	$0, -16(%ebp)
	jmp	.L1958
.L1959:
	.loc 1 5167 0
	movl	$0, -12(%ebp)
	jmp	.L1960
.L1961:
	.loc 1 5168 0
	movl	-20(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %ecx
	movl	fixtab@GOT(%ebx), %esi
	imull	$54, %eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	movl	$529, (%esi,%eax,4)
	.loc 1 5167 0
	addl	$1, -12(%ebp)
.L1960:
	cmpl	$1, -12(%ebp)
	jbe	.L1961
	.loc 1 5166 0
	addl	$1, -16(%ebp)
.L1958:
	cmpl	$53, -16(%ebp)
	jbe	.L1959
	.loc 1 5165 0
	addl	$1, -20(%ebp)
.L1956:
	cmpl	$53, -20(%ebp)
	jbe	.L1957
	.loc 1 5170 0
	movl	$0, -20(%ebp)
	jmp	.L1965
.L1966:
	.loc 1 5171 0
	movl	$0, -16(%ebp)
	jmp	.L1967
.L1968:
	.loc 1 5172 0
	movl	$0, -12(%ebp)
	jmp	.L1969
.L1970:
	.loc 1 5173 0
	movl	-20(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %ecx
	movl	fixtrunctab@GOT(%ebx), %esi
	imull	$54, %eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	movl	$529, (%esi,%eax,4)
	.loc 1 5172 0
	addl	$1, -12(%ebp)
.L1969:
	cmpl	$1, -12(%ebp)
	jbe	.L1970
	.loc 1 5171 0
	addl	$1, -16(%ebp)
.L1967:
	cmpl	$53, -16(%ebp)
	jbe	.L1968
	.loc 1 5170 0
	addl	$1, -20(%ebp)
.L1965:
	cmpl	$53, -20(%ebp)
	jbe	.L1966
	.loc 1 5175 0
	movl	$0, -20(%ebp)
	jmp	.L1974
.L1975:
	.loc 1 5176 0
	movl	$0, -16(%ebp)
	jmp	.L1976
.L1977:
	.loc 1 5177 0
	movl	$0, -12(%ebp)
	jmp	.L1978
.L1979:
	.loc 1 5178 0
	movl	-20(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %ecx
	movl	floattab@GOT(%ebx), %esi
	imull	$54, %eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	movl	$529, (%esi,%eax,4)
	.loc 1 5177 0
	addl	$1, -12(%ebp)
.L1978:
	cmpl	$1, -12(%ebp)
	jbe	.L1979
	.loc 1 5176 0
	addl	$1, -16(%ebp)
.L1976:
	cmpl	$53, -16(%ebp)
	jbe	.L1977
	.loc 1 5175 0
	addl	$1, -20(%ebp)
.L1974:
	cmpl	$53, -20(%ebp)
	jbe	.L1975
	.loc 1 5180 0
	movl	$0, -20(%ebp)
	jmp	.L1983
.L1984:
	.loc 1 5181 0
	movl	$0, -16(%ebp)
	jmp	.L1985
.L1986:
	.loc 1 5182 0
	movl	$0, -12(%ebp)
	jmp	.L1987
.L1988:
	.loc 1 5183 0
	movl	-20(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %ecx
	movl	extendtab@GOT(%ebx), %esi
	imull	$54, %eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	movl	$529, (%esi,%eax,4)
	.loc 1 5182 0
	addl	$1, -12(%ebp)
.L1987:
	cmpl	$1, -12(%ebp)
	jbe	.L1988
	.loc 1 5181 0
	addl	$1, -16(%ebp)
.L1985:
	cmpl	$53, -16(%ebp)
	jbe	.L1986
	.loc 1 5180 0
	addl	$1, -20(%ebp)
.L1983:
	cmpl	$53, -20(%ebp)
	jbe	.L1984
	.loc 1 5185 0
	movl	$0, -20(%ebp)
	jmp	.L1992
.L1993:
	.loc 1 5186 0
	movl	-20(%ebp), %edx
	movl	setcc_gen_code@GOT(%ebx), %eax
	movl	$529, (%eax,%edx,4)
	.loc 1 5185 0
	addl	$1, -20(%ebp)
.L1992:
	cmpl	$162, -20(%ebp)
	jbe	.L1993
	.loc 1 5189 0
	movl	$0, -20(%ebp)
	jmp	.L1995
.L1996:
	.loc 1 5190 0
	movl	-20(%ebp), %edx
	movl	movcc_gen_code@GOT(%ebx), %eax
	movl	$529, (%eax,%edx,4)
	.loc 1 5189 0
	addl	$1, -20(%ebp)
.L1995:
	cmpl	$53, -20(%ebp)
	jbe	.L1996
	.loc 1 5193 0
	movl	$85, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5194 0
	movl	$85, (%esp)
	call	init_optabv
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 4(%eax)
	.loc 1 5195 0
	movl	$86, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 8(%eax)
	.loc 1 5196 0
	movl	$86, (%esp)
	call	init_optabv
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 12(%eax)
	.loc 1 5197 0
	movl	$88, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 16(%eax)
	.loc 1 5198 0
	movl	$88, (%esp)
	call	init_optabv
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 20(%eax)
	.loc 1 5199 0
	movl	$0, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 24(%eax)
	.loc 1 5200 0
	movl	$0, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 28(%eax)
	.loc 1 5201 0
	movl	$0, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 32(%eax)
	.loc 1 5202 0
	movl	$0, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 36(%eax)
	.loc 1 5203 0
	movl	$89, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 40(%eax)
	.loc 1 5204 0
	movl	$89, (%esp)
	call	init_optabv
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 44(%eax)
	.loc 1 5205 0
	movl	$0, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 48(%eax)
	.loc 1 5206 0
	movl	$91, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 52(%eax)
	.loc 1 5207 0
	movl	$0, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 56(%eax)
	.loc 1 5208 0
	movl	$90, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 60(%eax)
	.loc 1 5209 0
	movl	$92, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 64(%eax)
	.loc 1 5210 0
	movl	$0, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 68(%eax)
	.loc 1 5211 0
	movl	$93, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 72(%eax)
	.loc 1 5212 0
	movl	$94, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 76(%eax)
	.loc 1 5213 0
	movl	$95, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 80(%eax)
	.loc 1 5214 0
	movl	$97, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 84(%eax)
	.loc 1 5215 0
	movl	$99, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 92(%eax)
	.loc 1 5216 0
	movl	$100, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 88(%eax)
	.loc 1 5217 0
	movl	$98, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 96(%eax)
	.loc 1 5218 0
	movl	$101, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 100(%eax)
	.loc 1 5219 0
	movl	$102, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 104(%eax)
	.loc 1 5220 0
	movl	$103, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 108(%eax)
	.loc 1 5221 0
	movl	$104, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 112(%eax)
	.loc 1 5222 0
	movl	$105, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 116(%eax)
	.loc 1 5226 0
	movl	$57, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 120(%eax)
	.loc 1 5227 0
	movl	$74, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 124(%eax)
	.loc 1 5228 0
	movl	$84, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 172(%eax)
	.loc 1 5230 0
	movl	$0, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 176(%eax)
	.loc 1 5231 0
	movl	$0, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 180(%eax)
	.loc 1 5232 0
	movl	$87, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 128(%eax)
	.loc 1 5233 0
	movl	$87, (%esp)
	call	init_optabv
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 132(%eax)
	.loc 1 5234 0
	movl	$139, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 136(%eax)
	.loc 1 5235 0
	movl	$139, (%esp)
	call	init_optabv
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 140(%eax)
	.loc 1 5236 0
	movl	$96, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 144(%eax)
	.loc 1 5237 0
	movl	$141, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 148(%eax)
	.loc 1 5238 0
	movl	$140, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 152(%eax)
	.loc 1 5239 0
	movl	$0, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 156(%eax)
	.loc 1 5240 0
	movl	$0, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 160(%eax)
	.loc 1 5241 0
	movl	$0, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 164(%eax)
	.loc 1 5242 0
	movl	$0, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 168(%eax)
	.loc 1 5243 0
	movl	$0, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 184(%eax)
	.loc 1 5244 0
	movl	$0, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 188(%eax)
	.loc 1 5245 0
	movl	$0, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 192(%eax)
	.loc 1 5246 0
	movl	$0, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 196(%eax)
	.loc 1 5247 0
	movl	$0, (%esp)
	call	init_optab
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	%edx, 200(%eax)
	.loc 1 5249 0
	movl	$0, -20(%ebp)
	jmp	.L1998
.L1999:
	.loc 1 5251 0
	movl	-20(%ebp), %edx
	movl	movstr_optab@GOT(%ebx), %eax
	movl	$529, (%eax,%edx,4)
	.loc 1 5252 0
	movl	-20(%ebp), %edx
	movl	clrstr_optab@GOT(%ebx), %eax
	movl	$529, (%eax,%edx,4)
	.loc 1 5255 0
	movl	-20(%ebp), %ecx
	movl	-20(%ebp), %edx
	movl	reload_out_optab@GOT(%ebx), %eax
	movl	$529, (%eax,%edx,4)
	movl	reload_out_optab@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	reload_in_optab@GOT(%ebx), %eax
	movl	%edx, (%eax,%ecx,4)
	.loc 1 5249 0
	addl	$1, -20(%ebp)
.L1998:
	cmpl	$53, -20(%ebp)
	jbe	.L1999
	.loc 1 5260 0
	call	init_all_optabs@PLT
	.loc 1 5271 0
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5272 0
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_floating_libfuncs
	.loc 1 5273 0
	movl	optab_table@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5274 0
	movl	optab_table@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_floating_libfuncs
	.loc 1 5275 0
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5276 0
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_floating_libfuncs
	.loc 1 5277 0
	movl	optab_table@GOT(%ebx), %eax
	movl	12(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5278 0
	movl	optab_table@GOT(%ebx), %eax
	movl	12(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_floating_libfuncs
	.loc 1 5279 0
	movl	optab_table@GOT(%ebx), %eax
	movl	16(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5280 0
	movl	optab_table@GOT(%ebx), %eax
	movl	16(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_floating_libfuncs
	.loc 1 5281 0
	movl	optab_table@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5282 0
	movl	optab_table@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_floating_libfuncs
	.loc 1 5283 0
	movl	optab_table@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5284 0
	movl	optab_table@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_floating_libfuncs
	.loc 1 5285 0
	movl	optab_table@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5286 0
	movl	optab_table@GOT(%ebx), %eax
	movl	52(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5287 0
	movl	optab_table@GOT(%ebx), %eax
	movl	48(%eax), %edx
	movl	$52, 8(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5288 0
	movl	optab_table@GOT(%ebx), %eax
	movl	56(%eax), %edx
	movl	$52, 8(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5289 0
	movl	optab_table@GOT(%ebx), %eax
	movl	60(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5290 0
	movl	optab_table@GOT(%ebx), %eax
	movl	64(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5291 0
	movl	optab_table@GOT(%ebx), %eax
	movl	68(%eax), %edx
	movl	$50, 8(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_floating_libfuncs
	.loc 1 5292 0
	movl	optab_table@GOT(%ebx), %eax
	movl	72(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5293 0
	movl	optab_table@GOT(%ebx), %eax
	movl	76(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5294 0
	movl	optab_table@GOT(%ebx), %eax
	movl	80(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5295 0
	movl	optab_table@GOT(%ebx), %eax
	movl	84(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5296 0
	movl	optab_table@GOT(%ebx), %eax
	movl	92(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5297 0
	movl	optab_table@GOT(%ebx), %eax
	movl	88(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5298 0
	movl	optab_table@GOT(%ebx), %eax
	movl	104(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5299 0
	movl	optab_table@GOT(%ebx), %eax
	movl	104(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_floating_libfuncs
	.loc 1 5300 0
	movl	optab_table@GOT(%ebx), %eax
	movl	108(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5301 0
	movl	optab_table@GOT(%ebx), %eax
	movl	108(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_floating_libfuncs
	.loc 1 5302 0
	movl	optab_table@GOT(%ebx), %eax
	movl	112(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5303 0
	movl	optab_table@GOT(%ebx), %eax
	movl	116(%eax), %edx
	movl	$51, 8(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5304 0
	movl	optab_table@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	$50, 8(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5305 0
	movl	optab_table@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	$50, 8(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_floating_libfuncs
	.loc 1 5306 0
	movl	optab_table@GOT(%ebx), %eax
	movl	132(%eax), %edx
	movl	$50, 8(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5307 0
	movl	optab_table@GOT(%ebx), %eax
	movl	132(%eax), %edx
	movl	$50, 8(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_floating_libfuncs
	.loc 1 5308 0
	movl	optab_table@GOT(%ebx), %eax
	movl	144(%eax), %edx
	movl	$50, 8(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5309 0
	movl	optab_table@GOT(%ebx), %eax
	movl	148(%eax), %edx
	movl	$50, 8(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5312 0
	movl	optab_table@GOT(%ebx), %eax
	movl	172(%eax), %edx
	movl	$50, 8(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5313 0
	movl	optab_table@GOT(%ebx), %eax
	movl	176(%eax), %edx
	movl	$50, 8(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_integral_libfuncs
	.loc 1 5314 0
	movl	optab_table@GOT(%ebx), %eax
	movl	172(%eax), %edx
	movl	$50, 8(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_floating_libfuncs
	.loc 1 5363 0
	movl	optab_table@GOT(%ebx), %eax
	movl	136(%eax), %esi
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, 184(%esi)
	.loc 1 5367 0
	movl	optab_table@GOT(%ebx), %eax
	movl	148(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2001
	movl	$64, -28(%ebp)
	jmp	.L2003
.L2001:
	movl	$32, -28(%ebp)
.L2003:
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	mode_for_size@PLT
	movl	%eax, %esi
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	-32(%ebp), %edx
	movl	%eax, 8(%edx,%esi,8)
	.loc 1 5370 0
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5371 0
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 4(%eax)
	.loc 1 5372 0
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 8(%eax)
	.loc 1 5373 0
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 12(%eax)
	.loc 1 5374 0
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 16(%eax)
	.loc 1 5376 0
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 20(%eax)
	.loc 1 5377 0
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 24(%eax)
	.loc 1 5378 0
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 28(%eax)
	.loc 1 5379 0
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 32(%eax)
	.loc 1 5380 0
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 36(%eax)
	.loc 1 5382 0
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 40(%eax)
	.loc 1 5383 0
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 44(%eax)
	.loc 1 5384 0
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 48(%eax)
	.loc 1 5385 0
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 52(%eax)
	.loc 1 5386 0
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 56(%eax)
	.loc 1 5387 0
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 60(%eax)
	.loc 1 5388 0
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 64(%eax)
	.loc 1 5389 0
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 68(%eax)
	.loc 1 5391 0
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 72(%eax)
	.loc 1 5395 0
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 80(%eax)
	.loc 1 5396 0
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 84(%eax)
	.loc 1 5401 0
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 88(%eax)
	.loc 1 5402 0
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 92(%eax)
	.loc 1 5405 0
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 96(%eax)
	.loc 1 5406 0
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 100(%eax)
	.loc 1 5407 0
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 104(%eax)
	.loc 1 5408 0
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 108(%eax)
	.loc 1 5409 0
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 112(%eax)
	.loc 1 5410 0
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 116(%eax)
	.loc 1 5411 0
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 120(%eax)
	.loc 1 5413 0
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 124(%eax)
	.loc 1 5414 0
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 128(%eax)
	.loc 1 5415 0
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 132(%eax)
	.loc 1 5416 0
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 136(%eax)
	.loc 1 5417 0
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 140(%eax)
	.loc 1 5418 0
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 144(%eax)
	.loc 1 5419 0
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 148(%eax)
	.loc 1 5421 0
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 152(%eax)
	.loc 1 5422 0
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 156(%eax)
	.loc 1 5423 0
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 160(%eax)
	.loc 1 5424 0
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 164(%eax)
	.loc 1 5425 0
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 168(%eax)
	.loc 1 5426 0
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 172(%eax)
	.loc 1 5427 0
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 176(%eax)
	.loc 1 5429 0
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 180(%eax)
	.loc 1 5430 0
	leal	.LC77@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 184(%eax)
	.loc 1 5431 0
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 188(%eax)
	.loc 1 5432 0
	leal	.LC79@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 192(%eax)
	.loc 1 5433 0
	leal	.LC80@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 196(%eax)
	.loc 1 5434 0
	leal	.LC81@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 200(%eax)
	.loc 1 5435 0
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 204(%eax)
	.loc 1 5437 0
	leal	.LC83@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 208(%eax)
	.loc 1 5438 0
	leal	.LC84@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 212(%eax)
	.loc 1 5439 0
	leal	.LC85@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 216(%eax)
	.loc 1 5440 0
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 220(%eax)
	.loc 1 5441 0
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 224(%eax)
	.loc 1 5442 0
	leal	.LC88@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 228(%eax)
	.loc 1 5443 0
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 232(%eax)
	.loc 1 5445 0
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 236(%eax)
	.loc 1 5446 0
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 240(%eax)
	.loc 1 5447 0
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 244(%eax)
	.loc 1 5449 0
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 248(%eax)
	.loc 1 5450 0
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 252(%eax)
	.loc 1 5451 0
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 256(%eax)
	.loc 1 5453 0
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 260(%eax)
	.loc 1 5454 0
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 264(%eax)
	.loc 1 5455 0
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 268(%eax)
	.loc 1 5457 0
	leal	.LC99@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 272(%eax)
	.loc 1 5458 0
	leal	.LC100@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 276(%eax)
	.loc 1 5459 0
	leal	.LC101@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 280(%eax)
	.loc 1 5461 0
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 284(%eax)
	.loc 1 5462 0
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 288(%eax)
	.loc 1 5463 0
	leal	.LC104@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 292(%eax)
	.loc 1 5465 0
	leal	.LC105@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 296(%eax)
	.loc 1 5466 0
	leal	.LC106@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 300(%eax)
	.loc 1 5467 0
	leal	.LC107@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 304(%eax)
	.loc 1 5469 0
	leal	.LC108@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 308(%eax)
	.loc 1 5470 0
	leal	.LC109@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 312(%eax)
	.loc 1 5471 0
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 316(%eax)
	.loc 1 5473 0
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 320(%eax)
	.loc 1 5474 0
	leal	.LC112@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 324(%eax)
	.loc 1 5475 0
	leal	.LC113@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 328(%eax)
	.loc 1 5477 0
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 332(%eax)
	.loc 1 5478 0
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 336(%eax)
	.loc 1 5479 0
	leal	.LC116@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 340(%eax)
	.loc 1 5481 0
	leal	.LC117@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 344(%eax)
	.loc 1 5482 0
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 348(%eax)
	.loc 1 5483 0
	leal	.LC119@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 352(%eax)
	.loc 1 5485 0
	leal	.LC120@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 356(%eax)
	.loc 1 5486 0
	leal	.LC121@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 360(%eax)
	.loc 1 5487 0
	leal	.LC122@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 364(%eax)
	.loc 1 5489 0
	leal	.LC123@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 368(%eax)
	.loc 1 5490 0
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 372(%eax)
	.loc 1 5491 0
	leal	.LC125@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 376(%eax)
	.loc 1 5494 0
	leal	.LC126@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 380(%eax)
	.loc 1 5496 0
	leal	.LC127@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 384(%eax)
	.loc 1 5499 0
	movl	mips_isa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L2004
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L2004
	.loc 1 5500 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$113, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, trap_rtx@GOTOFF(%ebx)
.L2004:
	.loc 1 5504 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2011
	movl	mips16_hard_float@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2011
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %esi
	leal	.LC128@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, 128(%esi)
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %esi
	leal	.LC129@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, 128(%esi)
	movl	optab_table@GOT(%ebx), %eax
	movl	16(%eax), %esi
	leal	.LC130@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, 128(%esi)
	movl	optab_table@GOT(%ebx), %eax
	movl	40(%eax), %esi
	leal	.LC131@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, 128(%esi)
	leal	.LC132@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 124(%eax)
	leal	.LC133@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 128(%eax)
	leal	.LC134@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 132(%eax)
	leal	.LC135@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 136(%eax)
	leal	.LC136@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 140(%eax)
	leal	.LC137@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 144(%eax)
	leal	.LC138@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 236(%eax)
	leal	.LC139@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 284(%eax)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L2011
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %esi
	leal	.LC140@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, 136(%esi)
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %esi
	leal	.LC141@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, 136(%esi)
	movl	optab_table@GOT(%ebx), %eax
	movl	16(%eax), %esi
	leal	.LC142@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, 136(%esi)
	movl	optab_table@GOT(%ebx), %eax
	movl	40(%eax), %esi
	leal	.LC143@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, 136(%esi)
	leal	.LC144@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, (%eax)
	leal	.LC145@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 20(%eax)
	leal	.LC146@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 152(%eax)
	leal	.LC147@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 156(%eax)
	leal	.LC148@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 160(%eax)
	leal	.LC149@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 164(%eax)
	leal	.LC150@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 168(%eax)
	leal	.LC151@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 172(%eax)
	leal	.LC152@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 248(%eax)
	leal	.LC153@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 296(%eax)
.L2011:
	.loc 1 5506 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE66:
	.size	init_optabs, .-init_optabs
	.type	init_optabv, @function
init_optabv:
.LFB61:
	.loc 1 5050 0
	pushl	%ebp
.LCFI223:
	movl	%esp, %ebp
.LCFI224:
	subl	$24, %esp
.LCFI225:
	.loc 1 5051 0
	call	new_optab
	movl	%eax, -4(%ebp)
	.loc 1 5052 0
	movl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5053 0
	movl	-4(%ebp), %eax
	.loc 1 5054 0
	leave
	ret
.LFE61:
	.size	init_optabv, .-init_optabv
	.type	init_optab, @function
init_optab:
.LFB60:
	.loc 1 5038 0
	pushl	%ebp
.LCFI226:
	movl	%esp, %ebp
.LCFI227:
	pushl	%ebx
.LCFI228:
	subl	$20, %esp
.LCFI229:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5039 0
	call	new_optab
	movl	%eax, -8(%ebp)
	.loc 1 5040 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5041 0
	movl	8(%ebp), %ecx
	movl	code_to_optab@GOT(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx,%ecx,4)
	.loc 1 5042 0
	movl	-8(%ebp), %eax
	.loc 1 5043 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE60:
	.size	init_optab, .-init_optab
.globl gen_cond_trap
	.type	gen_cond_trap, @function
gen_cond_trap:
.LFB67:
	.loc 1 5515 0
	pushl	%ebp
.LCFI230:
	movl	%esp, %ebp
.LCFI231:
	pushl	%ebx
.LCFI232:
	subl	$52, %esp
.LCFI233:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5516 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 5520 0
	movl	mips_isa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L2017
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2019
.L2017:
	.loc 1 5521 0
	movl	$0, -24(%ebp)
	jmp	.L2020
.L2019:
	.loc 1 5523 0
	cmpl	$0, -16(%ebp)
	jne	.L2021
	.loc 1 5524 0
	movl	$0, -24(%ebp)
	jmp	.L2020
.L2021:
	.loc 1 5526 0
	movl	optab_table@GOT(%ebx), %eax
	movl	172(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5527 0
	cmpl	$529, -12(%ebp)
	jne	.L2023
	.loc 1 5528 0
	movl	$0, -24(%ebp)
	jmp	.L2020
.L2023:
	.loc 1 5530 0
	call	start_sequence@PLT
	.loc 1 5531 0
	movl	-12(%ebp), %edx
	movl	$0, 20(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	prepare_operand@PLT
	movl	%eax, 12(%ebp)
	.loc 1 5532 0
	movl	-12(%ebp), %edx
	movl	$0, 20(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	prepare_operand@PLT
	movl	%eax, 16(%ebp)
	.loc 1 5533 0
	cmpl	$0, 12(%ebp)
	je	.L2025
	cmpl	$0, 16(%ebp)
	jne	.L2027
.L2025:
	.loc 1 5535 0
	call	end_sequence@PLT
	.loc 1 5536 0
	movl	$0, -24(%ebp)
	jmp	.L2020
.L2027:
	.loc 1 5538 0
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 5540 0
	movl	trap_rtx@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movw	%ax, (%edx)
	.loc 1 5541 0
	movl	trap_rtx@GOTOFF(%ebx), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_conditional_trap@PLT
	movl	%eax, -8(%ebp)
	.loc 1 5542 0
	cmpl	$0, -8(%ebp)
	je	.L2028
	.loc 1 5544 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 5545 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
.L2028:
	.loc 1 5547 0
	call	end_sequence@PLT
	.loc 1 5549 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L2020:
	movl	-24(%ebp), %eax
	.loc 1 5550 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE67:
	.size	gen_cond_trap, .-gen_cond_trap
.globl gt_ggc_r_gt_optabs_h
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	gt_ggc_r_gt_optabs_h, @object
	.size	gt_ggc_r_gt_optabs_h, 32
gt_ggc_r_gt_optabs_h:
	.long	trap_rtx
	.long	1
	.long	4
	.long	gt_ggc_mx_rtx_def
	.long	0
	.long	0
	.long	0
	.long	0
	.local	trap_rtx
	.comm	trap_rtx,4,4
	.comm	optab_table,204,32
	.comm	extendtab,23328,32
	.comm	fixtab,23328,32
	.comm	fixtrunctab,23328,32
	.comm	floattab,23328,32
	.comm	code_to_optab,656,32
	.comm	bcc_gen_fctn,652,32
	.comm	setcc_gen_code,652,32
	.comm	movcc_gen_code,216,32
	.comm	libfunc_table,388,32
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
	.byte	0x86
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
	.long	.LCFI25-.LCFI22
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI26-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI31-.LCFI27
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
	.long	.LCFI32-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI37-.LCFI33
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
	.long	.LCFI38-.LFB23
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI42-.LFB24
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
	.long	.LCFI53-.LCFI51
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
	.long	.LCFI57-.LCFI55
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
	.long	.LCFI58-.LFB28
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
	.byte	0x4
	.long	.LCFI65-.LCFI63
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
	.long	.LCFI66-.LFB30
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI70-.LFB31
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
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI75-.LFB32
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
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI79-.LFB33
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
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI83-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI84-.LCFI83
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
	.long	.LCFI90-.LCFI87
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI91-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI92-.LCFI91
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI95-.LCFI92
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI105-.LCFI101
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI106-.LFB39
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
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI110-.LFB40
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
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI114-.LFB41
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
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI118-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI119-.LCFI118
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI122-.LCFI119
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI123-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI124-.LCFI123
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
	.long	.LCFI130-.LCFI127
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI131-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI132-.LCFI131
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI135-.LCFI132
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
	.long	.LCFI136-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI137-.LCFI136
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI140-.LCFI137
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
	.long	.LCFI141-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI142-.LCFI141
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI145-.LCFI142
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
	.long	.LCFI146-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI147-.LCFI146
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI150-.LCFI147
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
	.long	.LCFI151-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI152-.LCFI151
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI155-.LCFI152
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI156-.LFB50
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
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI160-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI161-.LCFI160
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI164-.LCFI161
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
	.long	.LCFI165-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI166-.LCFI165
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI170-.LCFI166
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
	.long	.LCFI171-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI172-.LCFI171
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI176-.LCFI172
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI177-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI178-.LCFI177
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI181-.LCFI178
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI182-.LFB55
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
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI186-.LFB56
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
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI190-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI191-.LCFI190
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI194-.LCFI191
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI195-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI196-.LCFI195
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.long	.LFB59
	.long	.LFE59-.LFB59
	.byte	0x4
	.long	.LCFI198-.LFB59
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
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI202-.LFB62
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
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB63
	.long	.LFE63-.LFB63
	.byte	0x4
	.long	.LCFI207-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI208-.LCFI207
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB64
	.long	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI210-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI211-.LCFI210
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.byte	0x4
	.long	.LCFI213-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI214-.LCFI213
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI217-.LCFI214
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
	.long	.LFB66
	.long	.LFE66-.LFB66
	.byte	0x4
	.long	.LCFI218-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI219-.LCFI218
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI222-.LCFI219
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
	.long	.LFB61
	.long	.LFE61-.LFB61
	.byte	0x4
	.long	.LCFI223-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI224-.LCFI223
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.long	.LFB60
	.long	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI226-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI227-.LCFI226
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI229-.LCFI227
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
	.long	.LCFI230-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI231-.LCFI230
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI233-.LCFI231
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE104:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/rtl.h"
	.file 4 "../../../kg++fe/gnu/machmode.h"
	.file 5 "../../../kg++fe/gnu/bitmap.h"
	.file 6 "../../../kg++fe/gnu/tree.h"
	.file 7 "../../../kg++fe/gnu/real.h"
	.file 8 "../../../kg++fe/gnu/hashtable.h"
	.file 9 "../../../kg++fe/gnu/location.h"
	.file 10 "../../../kg++fe/gnu/function.h"
	.file 11 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 12 "../../../kg++fe/omp_types.h"
	.file 13 "../../../kg++fe/gnu/basic-block.h"
	.file 14 "../../../kg++fe/gnu/sbitmap.h"
	.file 15 "../../../kg++fe/gnu/expr.h"
	.file 16 "../../../kg++fe/gnu/optabs.h"
	.file 17 "../../../kg++fe/gnu/MIPS/insn-codes.h"
	.file 18 "../../../include/gnu/safe-ctype.h"
	.file 19 "../../../kg++fe/gnu/flags.h"
	.file 20 "../../../kg++fe/gnu/recog.h"
	.file 21 "../../../kg++fe/gnu/MIPS/gt-optabs.h"
	.file 22 "../../../kg++fe/gnu/ggc.h"
	.file 23 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
	.long	.LCFI136-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI136-.Ltext0
	.long	.LCFI137-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI137-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
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
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
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
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
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
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
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
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
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
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
	.long	.LCFI165-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI165-.Ltext0
	.long	.LCFI166-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI166-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
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
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
	.long	.LCFI177-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI177-.Ltext0
	.long	.LCFI178-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI178-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
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
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
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
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
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
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
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
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
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
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB62-.Ltext0
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
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB63-.Ltext0
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
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB64-.Ltext0
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
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB65-.Ltext0
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
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB66-.Ltext0
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
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB61-.Ltext0
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
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB60-.Ltext0
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
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB67-.Ltext0
	.long	.LCFI230-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI230-.Ltext0
	.long	.LCFI231-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI231-.Ltext0
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xbf2f
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/optabs.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa6
	.uleb128 0x3
	.byte	0x4
	.long	0xac
	.uleb128 0x4
	.long	0x19a
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.long	.LASF0
	.byte	0x3
	.byte	0x84
	.long	0x95d
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x3
	.byte	0x87
	.long	0x665
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
	.long	0x53a
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
	.long	0x53a
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
	.long	0x53a
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
	.long	0x53a
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
	.long	0x53a
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
	.long	0x53a
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
	.long	0x53a
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
	.long	0x53a
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
	.long	0x1576
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
	.byte	0xf2
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x3
	.byte	0xf3
	.long	0x1586
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
	.long	0x2ce
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x9
	.long	.LASF2
	.byte	0x6
	.value	0x887
	.long	0x3c58
	.uleb128 0xa
	.string	"int_cst"
	.byte	0x6
	.value	0x888
	.long	0x3f76
	.uleb128 0xa
	.string	"real_cst"
	.byte	0x6
	.value	0x889
	.long	0x3fbe
	.uleb128 0xa
	.string	"vector"
	.byte	0x6
	.value	0x88a
	.long	0x412b
	.uleb128 0xa
	.string	"string"
	.byte	0x6
	.value	0x88b
	.long	0x4069
	.uleb128 0xa
	.string	"complex"
	.byte	0x6
	.value	0x88c
	.long	0x40d6
	.uleb128 0xa
	.string	"identifier"
	.byte	0x6
	.value	0x88d
	.long	0x41b1
	.uleb128 0xa
	.string	"decl"
	.byte	0x6
	.value	0x88e
	.long	0x521e
	.uleb128 0xa
	.string	"type"
	.byte	0x6
	.value	0x88f
	.long	0x4410
	.uleb128 0xa
	.string	"list"
	.byte	0x6
	.value	0x890
	.long	0x41e8
	.uleb128 0xa
	.string	"vec"
	.byte	0x6
	.value	0x891
	.long	0x4229
	.uleb128 0xa
	.string	"exp"
	.byte	0x6
	.value	0x892
	.long	0x427a
	.uleb128 0xa
	.string	"block"
	.byte	0x6
	.value	0x893
	.long	0x42c6
	.uleb128 0xa
	.string	"omp"
	.byte	0x6
	.value	0x895
	.long	0x5bf3
	.byte	0x0
	.uleb128 0xb
	.long	0x44e
	.string	"processor_type"
	.byte	0x4
	.byte	0xb
	.byte	0x3b
	.uleb128 0xc
	.string	"PROCESSOR_DEFAULT"
	.sleb128 0
	.uleb128 0xc
	.string	"PROCESSOR_R3000"
	.sleb128 1
	.uleb128 0xc
	.string	"PROCESSOR_R3900"
	.sleb128 2
	.uleb128 0xc
	.string	"PROCESSOR_R6000"
	.sleb128 3
	.uleb128 0xc
	.string	"PROCESSOR_R4000"
	.sleb128 4
	.uleb128 0xc
	.string	"PROCESSOR_R4100"
	.sleb128 5
	.uleb128 0xc
	.string	"PROCESSOR_R4111"
	.sleb128 6
	.uleb128 0xc
	.string	"PROCESSOR_R4120"
	.sleb128 7
	.uleb128 0xc
	.string	"PROCESSOR_R4300"
	.sleb128 8
	.uleb128 0xc
	.string	"PROCESSOR_R4600"
	.sleb128 9
	.uleb128 0xc
	.string	"PROCESSOR_R4650"
	.sleb128 10
	.uleb128 0xc
	.string	"PROCESSOR_R5000"
	.sleb128 11
	.uleb128 0xc
	.string	"PROCESSOR_R5400"
	.sleb128 12
	.uleb128 0xc
	.string	"PROCESSOR_R5500"
	.sleb128 13
	.uleb128 0xc
	.string	"PROCESSOR_R8000"
	.sleb128 14
	.uleb128 0xc
	.string	"PROCESSOR_R4KC"
	.sleb128 15
	.uleb128 0xc
	.string	"PROCESSOR_R5KC"
	.sleb128 16
	.uleb128 0xc
	.string	"PROCESSOR_R20KC"
	.sleb128 17
	.uleb128 0xc
	.string	"PROCESSOR_SR71000"
	.sleb128 18
	.uleb128 0xc
	.string	"PROCESSOR_SB1"
	.sleb128 19
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x454
	.uleb128 0xd
	.long	0x459
	.uleb128 0xe
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xe
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xf
	.long	0x53a
	.string	"mips_args"
	.byte	0x40
	.byte	0xb
	.value	0xaaa
	.uleb128 0x10
	.string	"gp_reg_found"
	.byte	0xb
	.value	0xaad
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"arg_number"
	.byte	0xb
	.value	0xab0
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"num_gprs"
	.byte	0xb
	.value	0xab5
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"num_fprs"
	.byte	0xb
	.value	0xab8
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"stack_words"
	.byte	0xb
	.value	0xabb
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"fp_code"
	.byte	0xb
	.value	0xac8
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"prototype"
	.byte	0xb
	.value	0xacb
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"num_adjusts"
	.byte	0xb
	.value	0xad3
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.string	"adjust"
	.byte	0xb
	.value	0xad4
	.long	0x541
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x11
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0x12
	.long	0x551
	.long	0x9b
	.uleb128 0x13
	.long	0x551
	.byte	0x7
	.byte	0x0
	.uleb128 0x11
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0x14
	.string	"CUMULATIVE_ARGS"
	.byte	0xb
	.value	0xad5
	.long	0x468
	.uleb128 0x2
	.string	"size_t"
	.byte	0x17
	.byte	0xd6
	.long	0x53a
	.uleb128 0xe
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xe
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0xe
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0xe
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0xe
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0xe
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0xe
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0xe
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x15
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x459
	.uleb128 0x3
	.byte	0x4
	.long	0x61b
	.uleb128 0xd
	.long	0x57e
	.uleb128 0x3
	.byte	0x4
	.long	0x57e
	.uleb128 0x3
	.byte	0x4
	.long	0x62c
	.uleb128 0x16
	.long	0x638
	.byte	0x1
	.uleb128 0x17
	.long	0x60d
	.byte	0x0
	.uleb128 0x12
	.long	0x648
	.long	0x459
	.uleb128 0x13
	.long	0x551
	.byte	0x17
	.byte	0x0
	.uleb128 0x12
	.long	0x658
	.long	0x459
	.uleb128 0x13
	.long	0x551
	.byte	0x13
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x461
	.uleb128 0x3
	.byte	0x4
	.long	0x664
	.uleb128 0x18
	.uleb128 0xb
	.long	0x8ae
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
	.uleb128 0x19
	.long	0x95d
	.long	.LASF4
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
	.uleb128 0xb
	.long	0x112c
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x29
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
	.uleb128 0x1a
	.long	0x1206
	.byte	0x4
	.byte	0x3
	.byte	0x47
	.uleb128 0x6
	.string	"min_align"
	.byte	0x3
	.byte	0x49
	.long	0x53a
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
	.long	0x53a
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
	.long	0x53a
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
	.long	0x53a
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
	.long	0x53a
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
	.long	0x53a
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
	.long	0x53a
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
	.long	0x53a
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
	.long	0x112c
	.uleb128 0x1b
	.long	0x1279
	.long	.LASF5
	.byte	0x18
	.byte	0x3
	.byte	0x62
	.uleb128 0x7
	.string	"alias"
	.byte	0x3
	.byte	0x63
	.long	0x5d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x3
	.byte	0x64
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x3
	.byte	0x65
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.long	.LASF7
	.byte	0x3
	.byte	0x66
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x3
	.byte	0x67
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.long	.LASF5
	.byte	0x3
	.byte	0x68
	.long	0x1221
	.uleb128 0x8
	.long	0x1356
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x6d
	.uleb128 0x1e
	.string	"rtwint"
	.byte	0x3
	.byte	0x6e
	.long	0x5d6
	.uleb128 0x1e
	.string	"rtint"
	.byte	0x3
	.byte	0x6f
	.long	0x461
	.uleb128 0x1e
	.string	"rtuint"
	.byte	0x3
	.byte	0x70
	.long	0x53a
	.uleb128 0x1e
	.string	"rtstr"
	.byte	0x3
	.byte	0x71
	.long	0x44e
	.uleb128 0x1e
	.string	"rtx"
	.byte	0x3
	.byte	0x72
	.long	0x9b
	.uleb128 0x1e
	.string	"rtvec"
	.byte	0x3
	.byte	0x73
	.long	0x19a
	.uleb128 0x1e
	.string	"rttype"
	.byte	0x3
	.byte	0x74
	.long	0x665
	.uleb128 0x1e
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x75
	.long	0x1206
	.uleb128 0x1e
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x76
	.long	0x136a
	.uleb128 0x1e
	.string	"rtbit"
	.byte	0x3
	.byte	0x77
	.long	0x13d0
	.uleb128 0x1e
	.string	"rttree"
	.byte	0x3
	.byte	0x78
	.long	0x1e2
	.uleb128 0x1e
	.string	"bb"
	.byte	0x3
	.byte	0x79
	.long	0x155b
	.uleb128 0x1e
	.string	"rtmem"
	.byte	0x3
	.byte	0x7a
	.long	0x1561
	.byte	0x0
	.uleb128 0x1f
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1356
	.uleb128 0x4
	.long	0x13d0
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x77
	.uleb128 0x1c
	.long	.LASF8
	.byte	0x5
	.byte	0x3d
	.long	0x85f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x85f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1370
	.uleb128 0x4
	.long	0x155b
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x79
	.uleb128 0x7
	.string	"head"
	.byte	0xd
	.byte	0xb5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0xd
	.byte	0xb5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0xd
	.byte	0xb8
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0xd
	.byte	0xb9
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0xd
	.byte	0xbc
	.long	0x8748
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0xd
	.byte	0xbc
	.long	0x8748
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0xd
	.byte	0xc1
	.long	0x867a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0xd
	.byte	0xc5
	.long	0x867a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0xd
	.byte	0xcb
	.long	0x867a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0xd
	.byte	0xcd
	.long	0x867a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0xd
	.byte	0xd0
	.long	0x60d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"index"
	.byte	0xd
	.byte	0xd3
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0xd
	.byte	0xd6
	.long	0x155b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0xd
	.byte	0xd6
	.long	0x155b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0xd
	.byte	0xd9
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0xd
	.byte	0xdc
	.long	0x89c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0xd
	.byte	0xdf
	.long	0x8688
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0xd
	.byte	0xe2
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"flags"
	.byte	0xd
	.byte	0xe5
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x13d6
	.uleb128 0x3
	.byte	0x4
	.long	0x1279
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x7c
	.long	0x1284
	.uleb128 0x12
	.long	0x1586
	.long	0x1567
	.uleb128 0x13
	.long	0x551
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x1596
	.long	0x9b
	.uleb128 0x13
	.long	0x551
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9b
	.uleb128 0x4
	.long	0x15ce
	.string	"location_s"
	.byte	0x8
	.byte	0x9
	.byte	0x1c
	.uleb128 0x7
	.string	"file"
	.byte	0x9
	.byte	0x1e
	.long	0x44e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"line"
	.byte	0x9
	.byte	0x21
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x9
	.byte	0x23
	.long	0x159c
	.uleb128 0xb
	.long	0x1f02
	.string	"tree_code"
	.byte	0x4
	.byte	0x6
	.byte	0x25
	.uleb128 0xc
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0xc
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0xc
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0xc
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0xc
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0xc
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0xc
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0xc
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0xc
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0xc
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0xc
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0xc
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0xc
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0xc
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0xc
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0xc
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0xc
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0xc
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0xc
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0xc
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0xc
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0xc
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0xc
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0xc
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0xc
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0xc
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0xc
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0xc
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0xc
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0xc
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0xc
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0xc
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0xc
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0xc
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0xc
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0xc
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0xc
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0xc
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0xc
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0xc
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0xc
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0xc
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0xc
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0xc
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0xc
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0xc
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0xc
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0xc
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0xc
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0xc
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0xc
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0xc
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0xc
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0xc
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0xc
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0xc
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0xc
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0xc
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0xc
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0xc
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0xc
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0xc
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0xc
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0xc
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0xc
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0xc
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0xc
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0xc
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0xc
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0xc
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0xc
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0xc
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0xc
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0xc
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0xc
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0xc
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0xc
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0xc
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0xc
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0xc
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0xc
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0xc
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0xc
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0xc
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0xc
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0xc
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0xc
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0xc
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0xc
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0xc
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0xc
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0xc
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0xc
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0xc
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0xc
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0xc
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0xc
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0xc
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0xc
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0xc
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0xc
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0xc
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0xc
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0xc
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0xc
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0xc
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0xc
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0xc
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0xc
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0xc
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0xc
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0xc
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0xc
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0xc
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0xc
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0xc
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0xc
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0xc
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0xc
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0xc
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0xc
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0xc
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0xc
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0xc
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0xc
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0xc
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0xc
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0xc
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0xc
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0xc
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0xc
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0xc
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0xc
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0xc
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0xc
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0xc
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0xc
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0xc
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0xc
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0xc
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0xc
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0xc
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0xc
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0xc
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0xc
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0xc
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0xc
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0xc
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0xc
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0xc
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0xc
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0xc
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x6
	.byte	0x2f
	.long	0x53a
	.uleb128 0x4
	.long	0x1f4f
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x6
	.byte	0x30
	.uleb128 0x7
	.string	"block"
	.byte	0x6
	.byte	0x30
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x6
	.byte	0x30
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x6
	.byte	0x34
	.long	0x1f59
	.uleb128 0x1f
	.string	"st"
	.byte	0x1
	.uleb128 0x19
	.long	0x1fae
	.long	.LASF9
	.byte	0x4
	.byte	0x6
	.byte	0x58
	.uleb128 0xc
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0xc
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0xc
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0xc
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0xb
	.long	0x3c58
	.string	"built_in_function"
	.byte	0x4
	.byte	0x6
	.byte	0x67
	.uleb128 0xc
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0xc
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0xc
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0xc
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0xc
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0xc
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0xc
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0xc
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0xc
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0xc
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0xc
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0xc
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0xc
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0xc
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0xc
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0xc
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0xc
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0xc
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0xc
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0xc
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0xc
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0xc
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0xc
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0xc
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0xc
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0xc
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0xc
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0xc
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0xc
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0xc
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0xc
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0xc
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0xc
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0xc
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0xc
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0xc
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0xc
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0xc
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0xc
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0xc
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0xc
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0xc
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0xc
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0xc
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0xc
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0xc
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0xc
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0xc
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0xc
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0xc
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0xc
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0xc
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0xc
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0xc
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0xc
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0xc
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0xc
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0xc
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0xc
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0xc
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0xc
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0xc
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0xc
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0xc
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0xc
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0xc
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0xc
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0xc
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0xc
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0xc
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0xc
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0xc
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0xc
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0xc
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0xc
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0xc
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0xc
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0xc
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0xc
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0xc
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0xc
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0xc
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0xc
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0xc
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0xc
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0xc
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0xc
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0xc
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0xc
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0xc
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0xc
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0xc
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0xc
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0xc
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0xc
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0xc
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0xc
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0xc
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0xc
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0xc
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0xc
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0xc
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0xc
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0xc
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0xc
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0xc
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0xc
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0xc
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0xc
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0xc
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0xc
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0xc
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0xc
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0xc
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0xc
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0xc
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0xc
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0xc
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0xc
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0xc
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0xc
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0xc
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0xc
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0xc
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0xc
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0xc
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0xc
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0xc
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0xc
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0xc
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0xc
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0xc
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0xc
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0xc
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0xc
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0xc
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0xc
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0xc
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0xc
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0xc
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0xc
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0xc
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0xc
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0xc
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0xc
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0xc
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0xc
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0xc
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0xc
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0xc
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0xc
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0xc
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0xc
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0xc
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0xc
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0xc
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0xc
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0xc
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0xc
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0xc
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0xc
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0xc
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0xc
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0xc
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0xc
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0xc
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0xc
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0xc
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0xc
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0xc
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0xc
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0xc
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0xc
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0xc
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0xc
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0xc
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0xc
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0xc
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0xc
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0xc
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0xc
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0xc
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0xc
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0xc
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0xc
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0xc
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0xc
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0xc
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0xc
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0xc
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0xc
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0xc
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0xc
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0xc
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0xc
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0xc
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0xc
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0xc
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0xc
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0xc
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0xc
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0xc
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0xc
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0xc
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0xc
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0xc
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0xc
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0xc
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0xc
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0xc
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0xc
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0xc
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0xc
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0xc
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0xc
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0xc
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0xc
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0xc
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0xc
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0xc
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0xc
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0xc
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0xc
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0xc
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0xc
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0xc
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0xc
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0xc
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0xc
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0xc
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0xc
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0xc
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0xc
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0xc
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0xc
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0xc
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0xc
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0xc
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0xc
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0xc
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0xc
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0xc
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0xc
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0xc
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0xc
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0xc
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0xc
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0xc
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0xc
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0xc
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0xc
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0xc
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0xc
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0xc
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0xc
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0xc
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0xc
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0xc
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0xc
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0xc
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0xc
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0xc
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0xc
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0xc
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0xc
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0xc
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0xc
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0xc
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0xc
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0xc
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0xc
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0xc
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0xc
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0xc
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0xc
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0xc
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0xc
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0xc
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0xc
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0xc
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0xc
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0xc
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0xc
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0xc
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0xc
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0xc
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0xc
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0xc
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0xc
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0xc
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0xc
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0xc
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0xc
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0xc
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0xc
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0xc
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0xc
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0xc
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0xc
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0xc
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0xc
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0xc
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0xc
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0xc
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0xc
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0xc
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0xc
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0xc
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0xc
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0xc
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0xc
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0xc
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0xc
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0xc
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0xc
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0xc
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0xc
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0xc
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0xc
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0xc
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0xc
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0xc
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0xc
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0xc
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0xc
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0xc
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0xc
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0xc
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0xc
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0xc
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0xc
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0xc
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0xc
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0xc
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0xc
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0xc
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0xc
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0xc
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0xc
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0xc
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0xc
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0xc
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0xc
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0xc
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0xc
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0xc
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0xc
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0xc
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0xc
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0xc
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0xc
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0xc
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0xc
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0xc
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0xc
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0xc
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0xc
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0xc
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x3f3a
	.string	"tree_common"
	.byte	0x10
	.byte	0x6
	.byte	0x8c
	.uleb128 0x7
	.string	"chain"
	.byte	0x6
	.byte	0x8d
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type"
	.byte	0x6
	.byte	0x8e
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.long	.LASF0
	.byte	0x6
	.byte	0x90
	.long	0x15e0
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"side_effects_flag"
	.byte	0x6
	.byte	0x92
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"constant_flag"
	.byte	0x6
	.byte	0x93
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"addressable_flag"
	.byte	0x6
	.byte	0x94
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"volatile_flag"
	.byte	0x6
	.byte	0x95
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"readonly_flag"
	.byte	0x6
	.byte	0x96
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"unsigned_flag"
	.byte	0x6
	.byte	0x97
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"asm_written_flag"
	.byte	0x6
	.byte	0x98
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"not_emitted_by_gxx"
	.byte	0x6
	.byte	0x9a
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"used_flag"
	.byte	0x6
	.byte	0x9f
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"nothrow_flag"
	.byte	0x6
	.byte	0xa0
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"static_flag"
	.byte	0x6
	.byte	0xa1
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"public_flag"
	.byte	0x6
	.byte	0xa2
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"private_flag"
	.byte	0x6
	.byte	0xa3
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"protected_flag"
	.byte	0x6
	.byte	0xa4
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bounded_flag"
	.byte	0x6
	.byte	0xa5
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"deprecated_flag"
	.byte	0x6
	.byte	0xa6
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x6
	.byte	0xa8
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF11
	.byte	0x6
	.byte	0xa9
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF12
	.byte	0x6
	.byte	0xaa
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF13
	.byte	0x6
	.byte	0xab
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF14
	.byte	0x6
	.byte	0xac
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF15
	.byte	0x6
	.byte	0xad
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF16
	.byte	0x6
	.byte	0xae
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF17
	.byte	0x6
	.byte	0xb0
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sbuf"
	.byte	0x6
	.byte	0xb5
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"sdram"
	.byte	0x6
	.byte	0xb6
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v1buf"
	.byte	0x6
	.byte	0xb7
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v2buf"
	.byte	0x6
	.byte	0xb8
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v4buf"
	.byte	0x6
	.byte	0xb9
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	0x3f76
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x6
	.value	0x30a
	.uleb128 0x10
	.string	"low"
	.byte	0x6
	.value	0x30b
	.long	0x5e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"high"
	.byte	0x6
	.value	0x30c
	.long	0x5d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xf
	.long	0x3fbe
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x6
	.value	0x303
	.uleb128 0x20
	.long	.LASF2
	.byte	0x6
	.value	0x304
	.long	0x3c58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"rtl"
	.byte	0x6
	.value	0x305
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"int_cst"
	.byte	0x6
	.value	0x30d
	.long	0x3f3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x400c
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x6
	.value	0x31f
	.uleb128 0x20
	.long	.LASF2
	.byte	0x6
	.value	0x320
	.long	0x3c58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"rtl"
	.byte	0x6
	.value	0x321
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"real_cst_ptr"
	.byte	0x6
	.value	0x322
	.long	0x4063
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x4063
	.string	"real_value"
	.byte	0x18
	.byte	0x6
	.value	0x319
	.uleb128 0x5
	.long	.LASF18
	.byte	0x7
	.byte	0x35
	.long	0x850c
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sign"
	.byte	0x7
	.byte	0x37
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"exp"
	.byte	0x7
	.byte	0x38
	.long	0x461
	.byte	0x4
	.byte	0x1d
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"sig"
	.byte	0x7
	.byte	0x39
	.long	0x8552
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x400c
	.uleb128 0xf
	.long	0x40d0
	.string	"tree_string"
	.byte	0x20
	.byte	0x6
	.value	0x333
	.uleb128 0x20
	.long	.LASF2
	.byte	0x6
	.value	0x334
	.long	0x3c58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"rtl"
	.byte	0x6
	.value	0x335
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"length"
	.byte	0x6
	.value	0x336
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"pointer"
	.byte	0x6
	.value	0x337
	.long	0x44e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"st"
	.byte	0x6
	.value	0x339
	.long	0x40d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f4f
	.uleb128 0xf
	.long	0x412b
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x6
	.value	0x342
	.uleb128 0x20
	.long	.LASF2
	.byte	0x6
	.value	0x343
	.long	0x3c58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"rtl"
	.byte	0x6
	.value	0x344
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"real"
	.byte	0x6
	.value	0x345
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"imag"
	.byte	0x6
	.value	0x346
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xf
	.long	0x4173
	.string	"tree_vector"
	.byte	0x18
	.byte	0x6
	.value	0x355
	.uleb128 0x20
	.long	.LASF2
	.byte	0x6
	.value	0x356
	.long	0x3c58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"rtl"
	.byte	0x6
	.value	0x357
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"elements"
	.byte	0x6
	.value	0x358
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1b
	.long	0x41b1
	.long	.LASF19
	.byte	0xc
	.byte	0x8
	.byte	0x19
	.uleb128 0x7
	.string	"str"
	.byte	0x8
	.byte	0x1c
	.long	0x615
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"len"
	.byte	0x8
	.byte	0x1d
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"hash_value"
	.byte	0x8
	.byte	0x1e
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xf
	.long	0x41e8
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x6
	.value	0x376
	.uleb128 0x20
	.long	.LASF2
	.byte	0x6
	.value	0x377
	.long	0x3c58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"id"
	.byte	0x6
	.value	0x378
	.long	0x4173
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xf
	.long	0x4229
	.string	"tree_list"
	.byte	0x18
	.byte	0x6
	.value	0x380
	.uleb128 0x20
	.long	.LASF2
	.byte	0x6
	.value	0x381
	.long	0x3c58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.long	.LASF20
	.byte	0x6
	.value	0x382
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.long	.LASF21
	.byte	0x6
	.value	0x383
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x426a
	.string	"tree_vec"
	.byte	0x18
	.byte	0x6
	.value	0x38e
	.uleb128 0x20
	.long	.LASF2
	.byte	0x6
	.value	0x38f
	.long	0x3c58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"length"
	.byte	0x6
	.value	0x390
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"a"
	.byte	0x6
	.value	0x391
	.long	0x426a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x12
	.long	0x427a
	.long	0x1e2
	.uleb128 0x13
	.long	0x551
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x42c6
	.string	"tree_exp"
	.byte	0x18
	.byte	0x6
	.value	0x3d4
	.uleb128 0x20
	.long	.LASF2
	.byte	0x6
	.value	0x3d5
	.long	0x3c58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"complexity"
	.byte	0x6
	.value	0x3d6
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"operands"
	.byte	0x6
	.value	0x3d9
	.long	0x426a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x43b6
	.string	"tree_block"
	.byte	0x2c
	.byte	0x6
	.value	0x40a
	.uleb128 0x20
	.long	.LASF2
	.byte	0x6
	.value	0x40b
	.long	0x3c58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x21
	.string	"handler_block_flag"
	.byte	0x6
	.value	0x40d
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x22
	.long	.LASF22
	.byte	0x6
	.value	0x40e
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x21
	.string	"block_num"
	.byte	0x6
	.value	0x40f
	.long	0x53a
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"vars"
	.byte	0x6
	.value	0x411
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"subblocks"
	.byte	0x6
	.value	0x412
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"supercontext"
	.byte	0x6
	.value	0x413
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x20
	.long	.LASF23
	.byte	0x6
	.value	0x414
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.string	"fragment_origin"
	.byte	0x6
	.value	0x415
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.string	"fragment_chain"
	.byte	0x6
	.value	0x416
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x23
	.long	0x43fd
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x6
	.value	0x570
	.uleb128 0xa
	.string	"address"
	.byte	0x6
	.value	0x571
	.long	0x461
	.uleb128 0xa
	.string	"pointer"
	.byte	0x6
	.value	0x572
	.long	0x60f
	.uleb128 0xa
	.string	"die"
	.byte	0x6
	.value	0x573
	.long	0x440a
	.byte	0x0
	.uleb128 0x1f
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x43fd
	.uleb128 0xf
	.long	0x475c
	.string	"tree_type"
	.byte	0x74
	.byte	0x6
	.value	0x551
	.uleb128 0x20
	.long	.LASF2
	.byte	0x6
	.value	0x552
	.long	0x3c58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"values"
	.byte	0x6
	.value	0x553
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.long	.LASF7
	.byte	0x6
	.value	0x554
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x20
	.long	.LASF24
	.byte	0x6
	.value	0x555
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x20
	.long	.LASF25
	.byte	0x6
	.value	0x556
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.string	"uid"
	.byte	0x6
	.value	0x557
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"precision"
	.byte	0x6
	.value	0x559
	.long	0x53a
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF1
	.byte	0x6
	.value	0x55a
	.long	0x665
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"string_flag"
	.byte	0x6
	.value	0x55c
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"no_force_blk_flag"
	.byte	0x6
	.value	0x55d
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"needs_constructing_flag"
	.byte	0x6
	.value	0x55e
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"transparent_union_flag"
	.byte	0x6
	.value	0x55f
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"packed_flag"
	.byte	0x6
	.value	0x560
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"restrict_flag"
	.byte	0x6
	.value	0x561
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF26
	.byte	0x6
	.value	0x562
	.long	0x53a
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF10
	.byte	0x6
	.value	0x564
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF11
	.byte	0x6
	.value	0x565
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF12
	.byte	0x6
	.value	0x566
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF13
	.byte	0x6
	.value	0x567
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF14
	.byte	0x6
	.value	0x568
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF15
	.byte	0x6
	.value	0x569
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF16
	.byte	0x6
	.value	0x56a
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF27
	.byte	0x6
	.value	0x56b
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.string	"align"
	.byte	0x6
	.value	0x56d
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.string	"pointer_to"
	.byte	0x6
	.value	0x56e
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.string	"reference_to"
	.byte	0x6
	.value	0x56f
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.string	"symtab"
	.byte	0x6
	.value	0x574
	.long	0x43b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.string	"name"
	.byte	0x6
	.value	0x576
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.string	"minval"
	.byte	0x6
	.value	0x577
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.string	"maxval"
	.byte	0x6
	.value	0x578
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.string	"next_variant"
	.byte	0x6
	.value	0x579
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.string	"main_variant"
	.byte	0x6
	.value	0x57a
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.string	"binfo"
	.byte	0x6
	.value	0x57b
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.string	"context"
	.byte	0x6
	.value	0x57c
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.string	"alias_set"
	.byte	0x6
	.value	0x57d
	.long	0x5d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x20
	.long	.LASF28
	.byte	0x6
	.value	0x57f
	.long	0x4768
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.string	"ty_idx"
	.byte	0x6
	.value	0x581
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.string	"field_ids_used"
	.byte	0x6
	.value	0x582
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x10
	.string	"dst_id"
	.byte	0x6
	.value	0x583
	.long	0x1f13
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.string	"extra_methods"
	.byte	0x6
	.value	0x58a
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x1f
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x475c
	.uleb128 0xf
	.long	0x47b3
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x6
	.value	0x817
	.uleb128 0x21
	.string	"align"
	.byte	0x6
	.value	0x818
	.long	0x53a
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x21
	.string	"off_align"
	.byte	0x6
	.value	0x819
	.long	0x53a
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x47e8
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x6
	.value	0x80e
	.uleb128 0xa
	.string	"f"
	.byte	0x6
	.value	0x811
	.long	0x1fae
	.uleb128 0xa
	.string	"i"
	.byte	0x6
	.value	0x814
	.long	0x5d6
	.uleb128 0xa
	.string	"a"
	.byte	0x6
	.value	0x81a
	.long	0x476e
	.byte	0x0
	.uleb128 0x23
	.long	0x4827
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x6
	.value	0x837
	.uleb128 0xa
	.string	"f"
	.byte	0x6
	.value	0x838
	.long	0x51e0
	.uleb128 0xa
	.string	"r"
	.byte	0x6
	.value	0x839
	.long	0x9b
	.uleb128 0xa
	.string	"t"
	.byte	0x6
	.value	0x83a
	.long	0x1e2
	.uleb128 0xa
	.string	"i"
	.byte	0x6
	.value	0x83b
	.long	0x461
	.byte	0x0
	.uleb128 0x24
	.long	0x51e0
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x19
	.uleb128 0x7
	.string	"eh"
	.byte	0xa
	.byte	0xb5
	.long	0x5fab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0xa
	.byte	0xb6
	.long	0x5fbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0xa
	.byte	0xb7
	.long	0x5fc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0xa
	.byte	0xb8
	.long	0x5fcb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0xa
	.byte	0xb9
	.long	0x5fe1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"name"
	.byte	0xa
	.byte	0xbe
	.long	0x44e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"decl"
	.byte	0xa
	.byte	0xc1
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"outer"
	.byte	0xa
	.byte	0xc4
	.long	0x51e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0xa
	.byte	0xc9
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1c
	.long	.LASF29
	.byte	0xa
	.byte	0xce
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0xa
	.byte	0xd3
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0xa
	.byte	0xd7
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"arg_offset_rtx"
	.byte	0xa
	.byte	0xdb
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"args_info"
	.byte	0xa
	.byte	0xdf
	.long	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"return_rtx"
	.byte	0xa
	.byte	0xe5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"internal_arg_pointer"
	.byte	0xa
	.byte	0xe8
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"cannot_inline"
	.byte	0xa
	.byte	0xec
	.long	0x44e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0xa
	.byte	0xf0
	.long	0x5ffe
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0xa
	.byte	0xf3
	.long	0x461
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"x_nonlocal_labels"
	.byte	0xa
	.byte	0xf8
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xa
	.byte	0xfe
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x10
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xa
	.value	0x102
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x10
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xa
	.value	0x107
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x10
	.string	"x_cleanup_label"
	.byte	0xa
	.value	0x10d
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x10
	.string	"x_return_label"
	.byte	0xa
	.value	0x112
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x10
	.string	"computed_goto_common_label"
	.byte	0xa
	.value	0x115
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x10
	.string	"computed_goto_common_reg"
	.byte	0xa
	.value	0x116
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x10
	.string	"x_save_expr_regs"
	.byte	0xa
	.value	0x11a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x10
	.string	"x_stack_slot_list"
	.byte	0xa
	.value	0x11e
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x10
	.string	"x_rtl_expr_chain"
	.byte	0xa
	.value	0x121
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x10
	.string	"x_tail_recursion_label"
	.byte	0xa
	.value	0x125
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x10
	.string	"x_tail_recursion_reentry"
	.byte	0xa
	.value	0x128
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x10
	.string	"x_arg_pointer_save_area"
	.byte	0xa
	.value	0x12e
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x10
	.string	"x_clobber_return_insn"
	.byte	0xa
	.value	0x133
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x10
	.string	"x_frame_offset"
	.byte	0xa
	.value	0x138
	.long	0x5d6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x10
	.string	"x_context_display"
	.byte	0xa
	.value	0x13d
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x10
	.string	"x_trampoline_list"
	.byte	0xa
	.value	0x146
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x10
	.string	"x_parm_birth_insn"
	.byte	0xa
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x10
	.string	"x_last_parm_insn"
	.byte	0xa
	.value	0x14d
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x10
	.string	"x_max_parm_reg"
	.byte	0xa
	.value	0x151
	.long	0x53a
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x10
	.string	"x_parm_reg_stack_loc"
	.byte	0xa
	.value	0x157
	.long	0x1596
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x10
	.string	"x_temp_slots"
	.byte	0xa
	.value	0x15a
	.long	0x6010
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x10
	.string	"x_temp_slot_level"
	.byte	0xa
	.value	0x15d
	.long	0x461
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x10
	.string	"x_var_temp_slot_level"
	.byte	0xa
	.value	0x160
	.long	0x461
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x10
	.string	"x_target_temp_slot_level"
	.byte	0xa
	.value	0x166
	.long	0x461
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x10
	.string	"fixup_var_refs_queue"
	.byte	0xa
	.value	0x16a
	.long	0x5cb5
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x10
	.string	"inlinable"
	.byte	0xa
	.value	0x16d
	.long	0x461
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x10
	.string	"no_debugging_symbols"
	.byte	0xa
	.value	0x16e
	.long	0x461
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x10
	.string	"original_arg_vector"
	.byte	0xa
	.value	0x16f
	.long	0x19a
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x10
	.string	"original_decl_initial"
	.byte	0xa
	.value	0x170
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x10
	.string	"inl_last_parm_insn"
	.byte	0xa
	.value	0x173
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x10
	.string	"inl_max_label_num"
	.byte	0xa
	.value	0x175
	.long	0x461
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x10
	.string	"funcdef_no"
	.byte	0xa
	.value	0x178
	.long	0x461
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x10
	.string	"machine"
	.byte	0xa
	.value	0x17d
	.long	0x6029
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0x10
	.string	"stack_alignment_needed"
	.byte	0xa
	.value	0x17f
	.long	0x461
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0x10
	.string	"preferred_stack_boundary"
	.byte	0xa
	.value	0x181
	.long	0x461
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0x10
	.string	"language"
	.byte	0xa
	.value	0x184
	.long	0x6043
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0x10
	.string	"epilogue_delay_list"
	.byte	0xa
	.value	0x18a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x21
	.string	"returns_struct"
	.byte	0xa
	.value	0x190
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"returns_pcc_struct"
	.byte	0xa
	.value	0x194
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"returns_pointer"
	.byte	0xa
	.value	0x197
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"needs_context"
	.byte	0xa
	.value	0x19a
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"calls_setjmp"
	.byte	0xa
	.value	0x19d
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"calls_longjmp"
	.byte	0xa
	.value	0x1a0
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"calls_alloca"
	.byte	0xa
	.value	0x1a4
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"calls_eh_return"
	.byte	0xa
	.value	0x1a7
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"has_nonlocal_label"
	.byte	0xa
	.value	0x1ab
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"has_nonlocal_goto"
	.byte	0xa
	.value	0x1af
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"contains_functions"
	.byte	0xa
	.value	0x1b2
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"has_computed_jump"
	.byte	0xa
	.value	0x1b5
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"is_thunk"
	.byte	0xa
	.value	0x1ba
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"all_throwers_are_sibcalls"
	.byte	0xa
	.value	0x1c1
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"instrument_entry_exit"
	.byte	0xa
	.value	0x1c5
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"arc_profile"
	.byte	0xa
	.value	0x1c8
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"profile"
	.byte	0xa
	.value	0x1cb
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"limit_stack"
	.byte	0xa
	.value	0x1cf
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"stdarg"
	.byte	0xa
	.value	0x1d2
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"x_whole_function_mode_p"
	.byte	0xa
	.value	0x1d8
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xa
	.value	0x1e1
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"uses_const_pool"
	.byte	0xa
	.value	0x1e4
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"uses_pic_offset_table"
	.byte	0xa
	.value	0x1e7
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"uses_eh_lsda"
	.byte	0xa
	.value	0x1ea
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"arg_pointer_save_area_init"
	.byte	0xa
	.value	0x1ed
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.long	.LASF30
	.byte	0xa
	.value	0x1fa
	.long	0x5f35
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0x10
	.string	"max_jumptable_ents"
	.byte	0xa
	.value	0x1fe
	.long	0x461
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4827
	.uleb128 0x25
	.long	0x521e
	.byte	0x4
	.byte	0x6
	.value	0x84e
	.uleb128 0xa
	.string	"st"
	.byte	0x6
	.value	0x84f
	.long	0x40d0
	.uleb128 0xa
	.string	"label_idx"
	.byte	0x6
	.value	0x850
	.long	0x1f02
	.uleb128 0xa
	.string	"field_id"
	.byte	0x6
	.value	0x851
	.long	0x53a
	.byte	0x0
	.uleb128 0xf
	.long	0x5963
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x6
	.value	0x7c5
	.uleb128 0x20
	.long	.LASF2
	.byte	0x6
	.value	0x7c6
	.long	0x3c58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"locus"
	.byte	0x6
	.value	0x7c7
	.long	0x15ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"uid"
	.byte	0x6
	.value	0x7c8
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x20
	.long	.LASF7
	.byte	0x6
	.value	0x7c9
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x22
	.long	.LASF1
	.byte	0x6
	.value	0x7ca
	.long	0x665
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"external_flag"
	.byte	0x6
	.value	0x7cc
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"nonlocal_flag"
	.byte	0x6
	.value	0x7cd
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"regdecl_flag"
	.byte	0x6
	.value	0x7ce
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"inline_flag"
	.byte	0x6
	.value	0x7cf
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"bit_field_flag"
	.byte	0x6
	.value	0x7d0
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"virtual_flag"
	.byte	0x6
	.value	0x7d1
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"ignored_flag"
	.byte	0x6
	.value	0x7d2
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.long	.LASF22
	.byte	0x6
	.value	0x7d3
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"sbuf_flag"
	.byte	0x6
	.value	0x7d7
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"sdram_flag"
	.byte	0x6
	.value	0x7d8
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"v1buf_flag"
	.byte	0x6
	.value	0x7d9
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"v2buf_flag"
	.byte	0x6
	.value	0x7da
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"v4buf_flag"
	.byte	0x6
	.value	0x7db
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"in_system_header_flag"
	.byte	0x6
	.value	0x7df
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"common_flag"
	.byte	0x6
	.value	0x7e0
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"defer_output"
	.byte	0x6
	.value	0x7e1
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"transparent_union"
	.byte	0x6
	.value	0x7e2
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"static_ctor_flag"
	.byte	0x6
	.value	0x7e3
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"static_dtor_flag"
	.byte	0x6
	.value	0x7e4
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"artificial_flag"
	.byte	0x6
	.value	0x7e5
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"weak_flag"
	.byte	0x6
	.value	0x7e6
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"non_addr_const_p"
	.byte	0x6
	.value	0x7e8
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"no_instrument_function_entry_exit"
	.byte	0x6
	.value	0x7e9
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"comdat_flag"
	.byte	0x6
	.value	0x7ea
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"malloc_flag"
	.byte	0x6
	.value	0x7eb
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"no_limit_stack"
	.byte	0x6
	.value	0x7ec
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF9
	.byte	0x6
	.value	0x7ed
	.long	0x1f5e
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"pure_flag"
	.byte	0x6
	.value	0x7ee
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF26
	.byte	0x6
	.value	0x7f0
	.long	0x53a
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"non_addressable"
	.byte	0x6
	.value	0x7f1
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF27
	.byte	0x6
	.value	0x7f2
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"uninlinable"
	.byte	0x6
	.value	0x7f3
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"thread_local_flag"
	.byte	0x6
	.value	0x7f4
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"inlined_function_flag"
	.byte	0x6
	.value	0x7f5
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"threadprivate_flag"
	.byte	0x6
	.value	0x7f7
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF10
	.byte	0x6
	.value	0x7fa
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF11
	.byte	0x6
	.value	0x7fb
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF12
	.byte	0x6
	.value	0x7fc
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF13
	.byte	0x6
	.value	0x7fd
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF14
	.byte	0x6
	.value	0x7fe
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF15
	.byte	0x6
	.value	0x7ff
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF16
	.byte	0x6
	.value	0x800
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF17
	.byte	0x6
	.value	0x801
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"syscall_linkage_flag"
	.byte	0x6
	.value	0x804
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"widen_retval_flag"
	.byte	0x6
	.value	0x805
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"emitted_by_gxx"
	.byte	0x6
	.value	0x808
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.string	"u1"
	.byte	0x6
	.value	0x81b
	.long	0x47b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x20
	.long	.LASF24
	.byte	0x6
	.value	0x81d
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.string	"name"
	.byte	0x6
	.value	0x81e
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.string	"context"
	.byte	0x6
	.value	0x81f
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.string	"arguments"
	.byte	0x6
	.value	0x820
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x20
	.long	.LASF31
	.byte	0x6
	.value	0x821
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.string	"initial"
	.byte	0x6
	.value	0x822
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.string	"initial_2"
	.byte	0x6
	.value	0x824
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.string	"alias_target"
	.byte	0x6
	.value	0x825
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.string	"thunk_delta"
	.byte	0x6
	.value	0x829
	.long	0x5d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x20
	.long	.LASF23
	.byte	0x6
	.value	0x82b
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x10
	.string	"assembler_name"
	.byte	0x6
	.value	0x82c
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.string	"section_name"
	.byte	0x6
	.value	0x82d
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x20
	.long	.LASF25
	.byte	0x6
	.value	0x82e
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x10
	.string	"rtl"
	.byte	0x6
	.value	0x82f
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.string	"live_range_rtl"
	.byte	0x6
	.value	0x830
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x10
	.string	"u2"
	.byte	0x6
	.value	0x83c
	.long	0x47e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x10
	.string	"saved_tree"
	.byte	0x6
	.value	0x83f
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x10
	.string	"inlined_fns"
	.byte	0x6
	.value	0x843
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.string	"vindex"
	.byte	0x6
	.value	0x845
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x10
	.string	"pointer_alias_set"
	.byte	0x6
	.value	0x846
	.long	0x5d6
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x20
	.long	.LASF28
	.byte	0x6
	.value	0x848
	.long	0x596f
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x21
	.string	"symtab_idx"
	.byte	0x6
	.value	0x84b
	.long	0x53a
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x21
	.string	"label_defined"
	.byte	0x6
	.value	0x84c
	.long	0x53a
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x10
	.string	"sgi_u1"
	.byte	0x6
	.value	0x852
	.long	0x51e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x10
	.string	"decl_dst_id"
	.byte	0x6
	.value	0x858
	.long	0x1f13
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x10
	.string	"sl_model_name"
	.byte	0x6
	.value	0x85c
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0x1f
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5963
	.uleb128 0xb
	.long	0x5bf3
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xc
	.byte	0x1d
	.uleb128 0xc
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0xc
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0xc
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0xc
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0xc
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0xc
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0xc
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0xc
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0xc
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0xc
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0xc
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0xc
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0xc
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0xc
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0xc
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0xc
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0xc
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0xc
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0xc
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0xc
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0xc
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0xc
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0xc
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0xc
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0xc
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0xc
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0xc
	.string	"options_dir"
	.sleb128 26
	.uleb128 0xc
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0xc
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0xc
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0xc
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0xc
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0xc
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0xc
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0xc
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0xf
	.long	0x5c42
	.string	"tree_omp"
	.byte	0x18
	.byte	0x6
	.value	0x864
	.uleb128 0x20
	.long	.LASF2
	.byte	0x6
	.value	0x865
	.long	0x3c58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"choice"
	.byte	0x6
	.value	0x866
	.long	0x5975
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"omp_clause_list"
	.byte	0x6
	.value	0x867
	.long	0x60d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x44e
	.uleb128 0xe
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x3
	.byte	0x4
	.long	0x1e2
	.uleb128 0x4
	.long	0x5cb5
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xa
	.byte	0x17
	.uleb128 0x7
	.string	"modified"
	.byte	0xa
	.byte	0x18
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"promoted_mode"
	.byte	0xa
	.byte	0x19
	.long	0x665
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF32
	.byte	0xa
	.byte	0x1a
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF33
	.byte	0xa
	.byte	0x1b
	.long	0x5cb5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5c56
	.uleb128 0x1b
	.long	0x5d00
	.long	.LASF34
	.byte	0x10
	.byte	0xa
	.byte	0x24
	.uleb128 0x1c
	.long	.LASF8
	.byte	0xa
	.byte	0x26
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF35
	.byte	0xa
	.byte	0x27
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF36
	.byte	0xa
	.byte	0x28
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF33
	.byte	0xa
	.byte	0x29
	.long	0x5d00
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5cbb
	.uleb128 0x4
	.long	0x5e55
	.string	"emit_status"
	.byte	0x34
	.byte	0xa
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0xa
	.byte	0x3a
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0xa
	.byte	0x3d
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_insn"
	.byte	0xa
	.byte	0x44
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_insn"
	.byte	0xa
	.byte	0x45
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.long	.LASF36
	.byte	0xa
	.byte	0x4a
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF34
	.byte	0xa
	.byte	0x50
	.long	0x5d00
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0xa
	.byte	0x54
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0xa
	.byte	0x58
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0xa
	.byte	0x59
	.long	0x44e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0xa
	.byte	0x5f
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"regno_pointer_align"
	.byte	0xa
	.byte	0x65
	.long	0x620
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0xa
	.byte	0x69
	.long	0x5c50
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"x_regno_reg_rtx"
	.byte	0xa
	.byte	0x70
	.long	0x1596
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x5f35
	.string	"expr_status"
	.byte	0x1c
	.byte	0xa
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0xa
	.byte	0x80
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0xa
	.byte	0x91
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0xa
	.byte	0x97
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_saveregs_value"
	.byte	0xa
	.byte	0x9c
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_apply_args_value"
	.byte	0xa
	.byte	0x9f
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x_forced_labels"
	.byte	0xa
	.byte	0xa2
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_pending_chain"
	.byte	0xa
	.byte	0xa5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x26
	.long	0x5f9f
	.long	.LASF30
	.byte	0x4
	.byte	0xa
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
	.uleb128 0x1f
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5f9f
	.uleb128 0x1f
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5fb1
	.uleb128 0x3
	.byte	0x4
	.long	0x5e55
	.uleb128 0x3
	.byte	0x4
	.long	0x5d06
	.uleb128 0x1f
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5fd1
	.uleb128 0x1f
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5fe7
	.uleb128 0x1f
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6004
	.uleb128 0x1f
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6016
	.uleb128 0x1f
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x602f
	.uleb128 0x27
	.long	0x60af
	.string	"optab_methods"
	.byte	0x4
	.byte	0xf
	.value	0x107
	.uleb128 0xc
	.string	"OPTAB_DIRECT"
	.sleb128 0
	.uleb128 0xc
	.string	"OPTAB_LIB"
	.sleb128 1
	.uleb128 0xc
	.string	"OPTAB_WIDEN"
	.sleb128 2
	.uleb128 0xc
	.string	"OPTAB_LIB_WIDEN"
	.sleb128 3
	.uleb128 0xc
	.string	"OPTAB_MUST_WIDEN"
	.sleb128 4
	.byte	0x0
	.uleb128 0x19
	.long	0x820e
	.long	.LASF37
	.byte	0x4
	.byte	0x11
	.byte	0x7
	.uleb128 0xc
	.string	"CODE_FOR_trap"
	.sleb128 0
	.uleb128 0xc
	.string	"CODE_FOR_adddf3"
	.sleb128 2
	.uleb128 0xc
	.string	"CODE_FOR_addsf3"
	.sleb128 3
	.uleb128 0xc
	.string	"CODE_FOR_addsi3_internal"
	.sleb128 4
	.uleb128 0xc
	.string	"CODE_FOR_adddi3_internal_1"
	.sleb128 8
	.uleb128 0xc
	.string	"CODE_FOR_adddi3_internal_2"
	.sleb128 9
	.uleb128 0xc
	.string	"CODE_FOR_adddi3_internal_3"
	.sleb128 10
	.uleb128 0xc
	.string	"CODE_FOR_addsi3_internal_2"
	.sleb128 14
	.uleb128 0xc
	.string	"CODE_FOR_subdf3"
	.sleb128 16
	.uleb128 0xc
	.string	"CODE_FOR_subsf3"
	.sleb128 17
	.uleb128 0xc
	.string	"CODE_FOR_subsi3_internal"
	.sleb128 18
	.uleb128 0xc
	.string	"CODE_FOR_subdi3_internal"
	.sleb128 22
	.uleb128 0xc
	.string	"CODE_FOR_subdi3_internal_2"
	.sleb128 23
	.uleb128 0xc
	.string	"CODE_FOR_subdi3_internal_3"
	.sleb128 24
	.uleb128 0xc
	.string	"CODE_FOR_subsi3_internal_2"
	.sleb128 28
	.uleb128 0xc
	.string	"CODE_FOR_muldf3_internal"
	.sleb128 30
	.uleb128 0xc
	.string	"CODE_FOR_muldf3_r4300"
	.sleb128 31
	.uleb128 0xc
	.string	"CODE_FOR_mulsf3_internal"
	.sleb128 32
	.uleb128 0xc
	.string	"CODE_FOR_mulsf3_r4300"
	.sleb128 33
	.uleb128 0xc
	.string	"CODE_FOR_mulsi3_mult3"
	.sleb128 34
	.uleb128 0xc
	.string	"CODE_FOR_mulsi3_internal"
	.sleb128 35
	.uleb128 0xc
	.string	"CODE_FOR_mulsi3_r4000"
	.sleb128 36
	.uleb128 0xc
	.string	"CODE_FOR_muldi3_internal"
	.sleb128 41
	.uleb128 0xc
	.string	"CODE_FOR_muldi3_internal2"
	.sleb128 42
	.uleb128 0xc
	.string	"CODE_FOR_mulsidi3_internal"
	.sleb128 43
	.uleb128 0xc
	.string	"CODE_FOR_mulsidi3_64bit"
	.sleb128 44
	.uleb128 0xc
	.string	"CODE_FOR_xmulsi3_highpart_internal"
	.sleb128 47
	.uleb128 0xc
	.string	"CODE_FOR_xmulsi3_highpart_mulhi"
	.sleb128 48
	.uleb128 0xc
	.string	"CODE_FOR_smuldi3_highpart"
	.sleb128 50
	.uleb128 0xc
	.string	"CODE_FOR_umuldi3_highpart"
	.sleb128 51
	.uleb128 0xc
	.string	"CODE_FOR_madsi"
	.sleb128 52
	.uleb128 0xc
	.string	"CODE_FOR_divdf3"
	.sleb128 63
	.uleb128 0xc
	.string	"CODE_FOR_divsf3"
	.sleb128 64
	.uleb128 0xc
	.string	"CODE_FOR_divmodsi4_internal"
	.sleb128 67
	.uleb128 0xc
	.string	"CODE_FOR_divmoddi4_internal"
	.sleb128 68
	.uleb128 0xc
	.string	"CODE_FOR_udivmodsi4_internal"
	.sleb128 69
	.uleb128 0xc
	.string	"CODE_FOR_udivmoddi4_internal"
	.sleb128 70
	.uleb128 0xc
	.string	"CODE_FOR_div_trap_normal"
	.sleb128 71
	.uleb128 0xc
	.string	"CODE_FOR_div_trap_mips16"
	.sleb128 72
	.uleb128 0xc
	.string	"CODE_FOR_divsi3_internal"
	.sleb128 73
	.uleb128 0xc
	.string	"CODE_FOR_divdi3_internal"
	.sleb128 74
	.uleb128 0xc
	.string	"CODE_FOR_modsi3_internal"
	.sleb128 75
	.uleb128 0xc
	.string	"CODE_FOR_moddi3_internal"
	.sleb128 76
	.uleb128 0xc
	.string	"CODE_FOR_udivsi3_internal"
	.sleb128 77
	.uleb128 0xc
	.string	"CODE_FOR_udivdi3_internal"
	.sleb128 78
	.uleb128 0xc
	.string	"CODE_FOR_umodsi3_internal"
	.sleb128 79
	.uleb128 0xc
	.string	"CODE_FOR_umoddi3_internal"
	.sleb128 80
	.uleb128 0xc
	.string	"CODE_FOR_sqrtdf2"
	.sleb128 81
	.uleb128 0xc
	.string	"CODE_FOR_sqrtsf2"
	.sleb128 82
	.uleb128 0xc
	.string	"CODE_FOR_abssi2"
	.sleb128 85
	.uleb128 0xc
	.string	"CODE_FOR_absdi2"
	.sleb128 86
	.uleb128 0xc
	.string	"CODE_FOR_absdf2"
	.sleb128 87
	.uleb128 0xc
	.string	"CODE_FOR_abssf2"
	.sleb128 88
	.uleb128 0xc
	.string	"CODE_FOR_ffssi2"
	.sleb128 89
	.uleb128 0xc
	.string	"CODE_FOR_ffsdi2"
	.sleb128 90
	.uleb128 0xc
	.string	"CODE_FOR_negsi2"
	.sleb128 91
	.uleb128 0xc
	.string	"CODE_FOR_negdi2_internal"
	.sleb128 92
	.uleb128 0xc
	.string	"CODE_FOR_negdi2_internal_2"
	.sleb128 93
	.uleb128 0xc
	.string	"CODE_FOR_negdf2"
	.sleb128 94
	.uleb128 0xc
	.string	"CODE_FOR_negsf2"
	.sleb128 95
	.uleb128 0xc
	.string	"CODE_FOR_one_cmplsi2"
	.sleb128 96
	.uleb128 0xc
	.string	"CODE_FOR_one_cmpldi2"
	.sleb128 97
	.uleb128 0xc
	.string	"CODE_FOR_anddi3_internal1"
	.sleb128 102
	.uleb128 0xc
	.string	"CODE_FOR_xordi3_immed"
	.sleb128 112
	.uleb128 0xc
	.string	"CODE_FOR_truncdfsf2"
	.sleb128 115
	.uleb128 0xc
	.string	"CODE_FOR_truncdisi2"
	.sleb128 116
	.uleb128 0xc
	.string	"CODE_FOR_truncdihi2"
	.sleb128 117
	.uleb128 0xc
	.string	"CODE_FOR_truncdiqi2"
	.sleb128 118
	.uleb128 0xc
	.string	"CODE_FOR_zero_extendsidi2_internal"
	.sleb128 125
	.uleb128 0xc
	.string	"CODE_FOR_extendhidi2_internal"
	.sleb128 137
	.uleb128 0xc
	.string	"CODE_FOR_extendhisi2_internal"
	.sleb128 138
	.uleb128 0xc
	.string	"CODE_FOR_extendqihi2_internal"
	.sleb128 139
	.uleb128 0xc
	.string	"CODE_FOR_extendqisi2_insn"
	.sleb128 140
	.uleb128 0xc
	.string	"CODE_FOR_extendqidi2_insn"
	.sleb128 141
	.uleb128 0xc
	.string	"CODE_FOR_extendsfdf2"
	.sleb128 142
	.uleb128 0xc
	.string	"CODE_FOR_fix_truncdfsi2_insn"
	.sleb128 143
	.uleb128 0xc
	.string	"CODE_FOR_fix_truncdfsi2_macro"
	.sleb128 144
	.uleb128 0xc
	.string	"CODE_FOR_fix_truncsfsi2_insn"
	.sleb128 145
	.uleb128 0xc
	.string	"CODE_FOR_fix_truncsfsi2_macro"
	.sleb128 146
	.uleb128 0xc
	.string	"CODE_FOR_fix_truncdfdi2"
	.sleb128 147
	.uleb128 0xc
	.string	"CODE_FOR_fix_truncsfdi2"
	.sleb128 148
	.uleb128 0xc
	.string	"CODE_FOR_floatsidf2"
	.sleb128 149
	.uleb128 0xc
	.string	"CODE_FOR_floatdidf2"
	.sleb128 150
	.uleb128 0xc
	.string	"CODE_FOR_floatsisf2"
	.sleb128 151
	.uleb128 0xc
	.string	"CODE_FOR_floatdisf2"
	.sleb128 152
	.uleb128 0xc
	.string	"CODE_FOR_movsi_ulw"
	.sleb128 153
	.uleb128 0xc
	.string	"CODE_FOR_movsi_usw"
	.sleb128 154
	.uleb128 0xc
	.string	"CODE_FOR_movdi_uld"
	.sleb128 155
	.uleb128 0xc
	.string	"CODE_FOR_movdi_usd"
	.sleb128 156
	.uleb128 0xc
	.string	"CODE_FOR_high"
	.sleb128 157
	.uleb128 0xc
	.string	"CODE_FOR_low"
	.sleb128 158
	.uleb128 0xc
	.string	"CODE_FOR_movdi_internal"
	.sleb128 160
	.uleb128 0xc
	.string	"CODE_FOR_movdi_internal2"
	.sleb128 162
	.uleb128 0xc
	.string	"CODE_FOR_movsi_internal"
	.sleb128 166
	.uleb128 0xc
	.string	"CODE_FOR_hilo_delay"
	.sleb128 168
	.uleb128 0xc
	.string	"CODE_FOR_movcc"
	.sleb128 169
	.uleb128 0xc
	.string	"CODE_FOR_movhi_internal"
	.sleb128 178
	.uleb128 0xc
	.string	"CODE_FOR_movqi_internal"
	.sleb128 180
	.uleb128 0xc
	.string	"CODE_FOR_movsf_internal1"
	.sleb128 182
	.uleb128 0xc
	.string	"CODE_FOR_movsf_internal2"
	.sleb128 183
	.uleb128 0xc
	.string	"CODE_FOR_movdf_internal1"
	.sleb128 185
	.uleb128 0xc
	.string	"CODE_FOR_movdf_internal1a"
	.sleb128 186
	.uleb128 0xc
	.string	"CODE_FOR_movdf_internal2"
	.sleb128 187
	.uleb128 0xc
	.string	"CODE_FOR_loadgp"
	.sleb128 189
	.uleb128 0xc
	.string	"CODE_FOR_movstrsi_internal"
	.sleb128 190
	.uleb128 0xc
	.string	"CODE_FOR_movstrsi_internal2"
	.sleb128 192
	.uleb128 0xc
	.string	"CODE_FOR_movstrsi_internal3"
	.sleb128 194
	.uleb128 0xc
	.string	"CODE_FOR_ashlsi3_internal1"
	.sleb128 195
	.uleb128 0xc
	.string	"CODE_FOR_ashlsi3_internal2"
	.sleb128 196
	.uleb128 0xc
	.string	"CODE_FOR_ashldi3_internal"
	.sleb128 197
	.uleb128 0xc
	.string	"CODE_FOR_ashldi3_internal2"
	.sleb128 198
	.uleb128 0xc
	.string	"CODE_FOR_ashldi3_internal3"
	.sleb128 199
	.uleb128 0xc
	.string	"CODE_FOR_ashldi3_internal4"
	.sleb128 200
	.uleb128 0xc
	.string	"CODE_FOR_ashrsi3_internal1"
	.sleb128 202
	.uleb128 0xc
	.string	"CODE_FOR_ashrsi3_internal2"
	.sleb128 203
	.uleb128 0xc
	.string	"CODE_FOR_ashrdi3_internal"
	.sleb128 204
	.uleb128 0xc
	.string	"CODE_FOR_ashrdi3_internal2"
	.sleb128 205
	.uleb128 0xc
	.string	"CODE_FOR_ashrdi3_internal3"
	.sleb128 206
	.uleb128 0xc
	.string	"CODE_FOR_ashrdi3_internal4"
	.sleb128 207
	.uleb128 0xc
	.string	"CODE_FOR_lshrsi3_internal1"
	.sleb128 209
	.uleb128 0xc
	.string	"CODE_FOR_lshrsi3_internal2"
	.sleb128 210
	.uleb128 0xc
	.string	"CODE_FOR_lshrdi3_internal"
	.sleb128 212
	.uleb128 0xc
	.string	"CODE_FOR_lshrdi3_internal2"
	.sleb128 213
	.uleb128 0xc
	.string	"CODE_FOR_lshrdi3_internal3"
	.sleb128 214
	.uleb128 0xc
	.string	"CODE_FOR_lshrdi3_internal4"
	.sleb128 215
	.uleb128 0xc
	.string	"CODE_FOR_rotrsi3"
	.sleb128 217
	.uleb128 0xc
	.string	"CODE_FOR_rotrdi3"
	.sleb128 218
	.uleb128 0xc
	.string	"CODE_FOR_branch_fp"
	.sleb128 219
	.uleb128 0xc
	.string	"CODE_FOR_branch_fp_inverted"
	.sleb128 220
	.uleb128 0xc
	.string	"CODE_FOR_branch_zero"
	.sleb128 221
	.uleb128 0xc
	.string	"CODE_FOR_branch_zero_inverted"
	.sleb128 222
	.uleb128 0xc
	.string	"CODE_FOR_branch_zero_di"
	.sleb128 223
	.uleb128 0xc
	.string	"CODE_FOR_branch_zero_di_inverted"
	.sleb128 224
	.uleb128 0xc
	.string	"CODE_FOR_branch_equality"
	.sleb128 225
	.uleb128 0xc
	.string	"CODE_FOR_branch_equality_di"
	.sleb128 226
	.uleb128 0xc
	.string	"CODE_FOR_branch_equality_inverted"
	.sleb128 227
	.uleb128 0xc
	.string	"CODE_FOR_branch_equality_di_inverted"
	.sleb128 228
	.uleb128 0xc
	.string	"CODE_FOR_seq_si_zero"
	.sleb128 231
	.uleb128 0xc
	.string	"CODE_FOR_seq_di_zero"
	.sleb128 233
	.uleb128 0xc
	.string	"CODE_FOR_sne_si_zero"
	.sleb128 235
	.uleb128 0xc
	.string	"CODE_FOR_sne_di_zero"
	.sleb128 236
	.uleb128 0xc
	.string	"CODE_FOR_sgt_si"
	.sleb128 237
	.uleb128 0xc
	.string	"CODE_FOR_sgt_di"
	.sleb128 239
	.uleb128 0xc
	.string	"CODE_FOR_slt_si"
	.sleb128 241
	.uleb128 0xc
	.string	"CODE_FOR_slt_di"
	.sleb128 243
	.uleb128 0xc
	.string	"CODE_FOR_sle_si_const"
	.sleb128 245
	.uleb128 0xc
	.string	"CODE_FOR_sle_di_const"
	.sleb128 247
	.uleb128 0xc
	.string	"CODE_FOR_sgtu_si"
	.sleb128 249
	.uleb128 0xc
	.string	"CODE_FOR_sgtu_di"
	.sleb128 251
	.uleb128 0xc
	.string	"CODE_FOR_sltu_si"
	.sleb128 253
	.uleb128 0xc
	.string	"CODE_FOR_sltu_di"
	.sleb128 255
	.uleb128 0xc
	.string	"CODE_FOR_sleu_si_const"
	.sleb128 257
	.uleb128 0xc
	.string	"CODE_FOR_sleu_di_const"
	.sleb128 259
	.uleb128 0xc
	.string	"CODE_FOR_sunordered_df"
	.sleb128 261
	.uleb128 0xc
	.string	"CODE_FOR_sunlt_df"
	.sleb128 262
	.uleb128 0xc
	.string	"CODE_FOR_suneq_df"
	.sleb128 263
	.uleb128 0xc
	.string	"CODE_FOR_sunle_df"
	.sleb128 264
	.uleb128 0xc
	.string	"CODE_FOR_seq_df"
	.sleb128 265
	.uleb128 0xc
	.string	"CODE_FOR_slt_df"
	.sleb128 266
	.uleb128 0xc
	.string	"CODE_FOR_sle_df"
	.sleb128 267
	.uleb128 0xc
	.string	"CODE_FOR_sgt_df"
	.sleb128 268
	.uleb128 0xc
	.string	"CODE_FOR_sge_df"
	.sleb128 269
	.uleb128 0xc
	.string	"CODE_FOR_sunordered_sf"
	.sleb128 270
	.uleb128 0xc
	.string	"CODE_FOR_sunlt_sf"
	.sleb128 271
	.uleb128 0xc
	.string	"CODE_FOR_suneq_sf"
	.sleb128 272
	.uleb128 0xc
	.string	"CODE_FOR_sunle_sf"
	.sleb128 273
	.uleb128 0xc
	.string	"CODE_FOR_seq_sf"
	.sleb128 274
	.uleb128 0xc
	.string	"CODE_FOR_slt_sf"
	.sleb128 275
	.uleb128 0xc
	.string	"CODE_FOR_sle_sf"
	.sleb128 276
	.uleb128 0xc
	.string	"CODE_FOR_sgt_sf"
	.sleb128 277
	.uleb128 0xc
	.string	"CODE_FOR_sge_sf"
	.sleb128 278
	.uleb128 0xc
	.string	"CODE_FOR_jump"
	.sleb128 279
	.uleb128 0xc
	.string	"CODE_FOR_indirect_jump_internal1"
	.sleb128 281
	.uleb128 0xc
	.string	"CODE_FOR_indirect_jump_internal2"
	.sleb128 282
	.uleb128 0xc
	.string	"CODE_FOR_tablejump_internal1"
	.sleb128 283
	.uleb128 0xc
	.string	"CODE_FOR_tablejump_internal2"
	.sleb128 284
	.uleb128 0xc
	.string	"CODE_FOR_casesi_internal"
	.sleb128 287
	.uleb128 0xc
	.string	"CODE_FOR_casesi_internal_di"
	.sleb128 288
	.uleb128 0xc
	.string	"CODE_FOR_blockage"
	.sleb128 289
	.uleb128 0xc
	.string	"CODE_FOR_return"
	.sleb128 290
	.uleb128 0xc
	.string	"CODE_FOR_return_internal"
	.sleb128 291
	.uleb128 0xc
	.string	"CODE_FOR_get_fnaddr"
	.sleb128 292
	.uleb128 0xc
	.string	"CODE_FOR_eh_set_lr_si"
	.sleb128 293
	.uleb128 0xc
	.string	"CODE_FOR_eh_set_lr_di"
	.sleb128 294
	.uleb128 0xc
	.string	"CODE_FOR_exception_receiver"
	.sleb128 295
	.uleb128 0xc
	.string	"CODE_FOR_call_internal1"
	.sleb128 297
	.uleb128 0xc
	.string	"CODE_FOR_call_internal2"
	.sleb128 298
	.uleb128 0xc
	.string	"CODE_FOR_call_internal3a"
	.sleb128 299
	.uleb128 0xc
	.string	"CODE_FOR_call_internal3b"
	.sleb128 300
	.uleb128 0xc
	.string	"CODE_FOR_call_internal3c"
	.sleb128 301
	.uleb128 0xc
	.string	"CODE_FOR_call_internal4a"
	.sleb128 302
	.uleb128 0xc
	.string	"CODE_FOR_call_internal4b"
	.sleb128 303
	.uleb128 0xc
	.string	"CODE_FOR_call_value_internal1"
	.sleb128 305
	.uleb128 0xc
	.string	"CODE_FOR_call_value_internal2"
	.sleb128 306
	.uleb128 0xc
	.string	"CODE_FOR_call_value_internal3a"
	.sleb128 307
	.uleb128 0xc
	.string	"CODE_FOR_call_value_internal3b"
	.sleb128 308
	.uleb128 0xc
	.string	"CODE_FOR_call_value_internal3c"
	.sleb128 309
	.uleb128 0xc
	.string	"CODE_FOR_call_value_internal4a"
	.sleb128 310
	.uleb128 0xc
	.string	"CODE_FOR_call_value_internal4b"
	.sleb128 311
	.uleb128 0xc
	.string	"CODE_FOR_call_value_multiple_internal1"
	.sleb128 312
	.uleb128 0xc
	.string	"CODE_FOR_call_value_multiple_internal2"
	.sleb128 313
	.uleb128 0xc
	.string	"CODE_FOR_prefetch_si_address"
	.sleb128 314
	.uleb128 0xc
	.string	"CODE_FOR_prefetch_si"
	.sleb128 315
	.uleb128 0xc
	.string	"CODE_FOR_prefetch_di_address"
	.sleb128 316
	.uleb128 0xc
	.string	"CODE_FOR_prefetch_di"
	.sleb128 317
	.uleb128 0xc
	.string	"CODE_FOR_nop"
	.sleb128 318
	.uleb128 0xc
	.string	"CODE_FOR_consttable_qi"
	.sleb128 331
	.uleb128 0xc
	.string	"CODE_FOR_consttable_hi"
	.sleb128 332
	.uleb128 0xc
	.string	"CODE_FOR_consttable_si"
	.sleb128 333
	.uleb128 0xc
	.string	"CODE_FOR_consttable_di"
	.sleb128 334
	.uleb128 0xc
	.string	"CODE_FOR_consttable_sf"
	.sleb128 335
	.uleb128 0xc
	.string	"CODE_FOR_consttable_df"
	.sleb128 336
	.uleb128 0xc
	.string	"CODE_FOR_align_2"
	.sleb128 337
	.uleb128 0xc
	.string	"CODE_FOR_align_4"
	.sleb128 338
	.uleb128 0xc
	.string	"CODE_FOR_align_8"
	.sleb128 339
	.uleb128 0xc
	.string	"CODE_FOR_leasi"
	.sleb128 340
	.uleb128 0xc
	.string	"CODE_FOR_leadi"
	.sleb128 341
	.uleb128 0xc
	.string	"CODE_FOR_conditional_trap"
	.sleb128 342
	.uleb128 0xc
	.string	"CODE_FOR_addsi3"
	.sleb128 343
	.uleb128 0xc
	.string	"CODE_FOR_adddi3"
	.sleb128 346
	.uleb128 0xc
	.string	"CODE_FOR_subsi3"
	.sleb128 353
	.uleb128 0xc
	.string	"CODE_FOR_subdi3"
	.sleb128 356
	.uleb128 0xc
	.string	"CODE_FOR_muldf3"
	.sleb128 363
	.uleb128 0xc
	.string	"CODE_FOR_mulsf3"
	.sleb128 364
	.uleb128 0xc
	.string	"CODE_FOR_mulsi3"
	.sleb128 365
	.uleb128 0xc
	.string	"CODE_FOR_muldi3"
	.sleb128 371
	.uleb128 0xc
	.string	"CODE_FOR_mulsidi3"
	.sleb128 372
	.uleb128 0xc
	.string	"CODE_FOR_umulsidi3"
	.sleb128 373
	.uleb128 0xc
	.string	"CODE_FOR_smulsi3_highpart"
	.sleb128 374
	.uleb128 0xc
	.string	"CODE_FOR_umulsi3_highpart"
	.sleb128 375
	.uleb128 0xc
	.string	"CODE_FOR_divmodsi4"
	.sleb128 376
	.uleb128 0xc
	.string	"CODE_FOR_divmoddi4"
	.sleb128 377
	.uleb128 0xc
	.string	"CODE_FOR_udivmodsi4"
	.sleb128 378
	.uleb128 0xc
	.string	"CODE_FOR_udivmoddi4"
	.sleb128 379
	.uleb128 0xc
	.string	"CODE_FOR_div_trap"
	.sleb128 380
	.uleb128 0xc
	.string	"CODE_FOR_divsi3"
	.sleb128 381
	.uleb128 0xc
	.string	"CODE_FOR_divdi3"
	.sleb128 382
	.uleb128 0xc
	.string	"CODE_FOR_modsi3"
	.sleb128 383
	.uleb128 0xc
	.string	"CODE_FOR_moddi3"
	.sleb128 384
	.uleb128 0xc
	.string	"CODE_FOR_udivsi3"
	.sleb128 385
	.uleb128 0xc
	.string	"CODE_FOR_udivdi3"
	.sleb128 386
	.uleb128 0xc
	.string	"CODE_FOR_umodsi3"
	.sleb128 387
	.uleb128 0xc
	.string	"CODE_FOR_umoddi3"
	.sleb128 388
	.uleb128 0xc
	.string	"CODE_FOR_negdi2"
	.sleb128 389
	.uleb128 0xc
	.string	"CODE_FOR_andsi3"
	.sleb128 391
	.uleb128 0xc
	.string	"CODE_FOR_anddi3"
	.sleb128 392
	.uleb128 0xc
	.string	"CODE_FOR_iorsi3"
	.sleb128 394
	.uleb128 0xc
	.string	"CODE_FOR_iordi3"
	.sleb128 395
	.uleb128 0xc
	.string	"CODE_FOR_xorsi3"
	.sleb128 397
	.uleb128 0xc
	.string	"CODE_FOR_xordi3"
	.sleb128 398
	.uleb128 0xc
	.string	"CODE_FOR_zero_extendsidi2"
	.sleb128 401
	.uleb128 0xc
	.string	"CODE_FOR_zero_extendhisi2"
	.sleb128 402
	.uleb128 0xc
	.string	"CODE_FOR_zero_extendhidi2"
	.sleb128 403
	.uleb128 0xc
	.string	"CODE_FOR_zero_extendqihi2"
	.sleb128 404
	.uleb128 0xc
	.string	"CODE_FOR_zero_extendqisi2"
	.sleb128 405
	.uleb128 0xc
	.string	"CODE_FOR_zero_extendqidi2"
	.sleb128 406
	.uleb128 0xc
	.string	"CODE_FOR_extendsidi2"
	.sleb128 407
	.uleb128 0xc
	.string	"CODE_FOR_extendhidi2"
	.sleb128 408
	.uleb128 0xc
	.string	"CODE_FOR_extendhisi2"
	.sleb128 409
	.uleb128 0xc
	.string	"CODE_FOR_extendqihi2"
	.sleb128 410
	.uleb128 0xc
	.string	"CODE_FOR_extendqisi2"
	.sleb128 411
	.uleb128 0xc
	.string	"CODE_FOR_extendqidi2"
	.sleb128 412
	.uleb128 0xc
	.string	"CODE_FOR_fix_truncdfsi2"
	.sleb128 413
	.uleb128 0xc
	.string	"CODE_FOR_fix_truncsfsi2"
	.sleb128 414
	.uleb128 0xc
	.string	"CODE_FOR_fixuns_truncdfsi2"
	.sleb128 415
	.uleb128 0xc
	.string	"CODE_FOR_fixuns_truncdfdi2"
	.sleb128 416
	.uleb128 0xc
	.string	"CODE_FOR_fixuns_truncsfsi2"
	.sleb128 417
	.uleb128 0xc
	.string	"CODE_FOR_fixuns_truncsfdi2"
	.sleb128 418
	.uleb128 0xc
	.string	"CODE_FOR_extv"
	.sleb128 419
	.uleb128 0xc
	.string	"CODE_FOR_extzv"
	.sleb128 420
	.uleb128 0xc
	.string	"CODE_FOR_insv"
	.sleb128 421
	.uleb128 0xc
	.string	"CODE_FOR_movdi"
	.sleb128 422
	.uleb128 0xc
	.string	"CODE_FOR_reload_indi"
	.sleb128 425
	.uleb128 0xc
	.string	"CODE_FOR_reload_outdi"
	.sleb128 426
	.uleb128 0xc
	.string	"CODE_FOR_movsi"
	.sleb128 428
	.uleb128 0xc
	.string	"CODE_FOR_reload_outsi"
	.sleb128 432
	.uleb128 0xc
	.string	"CODE_FOR_reload_insi"
	.sleb128 433
	.uleb128 0xc
	.string	"CODE_FOR_reload_incc"
	.sleb128 434
	.uleb128 0xc
	.string	"CODE_FOR_reload_outcc"
	.sleb128 435
	.uleb128 0xc
	.string	"CODE_FOR_movhi"
	.sleb128 436
	.uleb128 0xc
	.string	"CODE_FOR_movqi"
	.sleb128 438
	.uleb128 0xc
	.string	"CODE_FOR_movsf"
	.sleb128 440
	.uleb128 0xc
	.string	"CODE_FOR_movdf"
	.sleb128 441
	.uleb128 0xc
	.string	"CODE_FOR_movstrsi"
	.sleb128 443
	.uleb128 0xc
	.string	"CODE_FOR_ashlsi3"
	.sleb128 444
	.uleb128 0xc
	.string	"CODE_FOR_ashldi3"
	.sleb128 446
	.uleb128 0xc
	.string	"CODE_FOR_ashrsi3"
	.sleb128 452
	.uleb128 0xc
	.string	"CODE_FOR_ashrdi3"
	.sleb128 454
	.uleb128 0xc
	.string	"CODE_FOR_lshrsi3"
	.sleb128 460
	.uleb128 0xc
	.string	"CODE_FOR_lshrdi3"
	.sleb128 463
	.uleb128 0xc
	.string	"CODE_FOR_cmpsi"
	.sleb128 469
	.uleb128 0xc
	.string	"CODE_FOR_tstsi"
	.sleb128 470
	.uleb128 0xc
	.string	"CODE_FOR_cmpdi"
	.sleb128 471
	.uleb128 0xc
	.string	"CODE_FOR_tstdi"
	.sleb128 472
	.uleb128 0xc
	.string	"CODE_FOR_cmpdf"
	.sleb128 473
	.uleb128 0xc
	.string	"CODE_FOR_cmpsf"
	.sleb128 474
	.uleb128 0xc
	.string	"CODE_FOR_bunordered"
	.sleb128 475
	.uleb128 0xc
	.string	"CODE_FOR_bordered"
	.sleb128 476
	.uleb128 0xc
	.string	"CODE_FOR_bunlt"
	.sleb128 477
	.uleb128 0xc
	.string	"CODE_FOR_bunge"
	.sleb128 478
	.uleb128 0xc
	.string	"CODE_FOR_buneq"
	.sleb128 479
	.uleb128 0xc
	.string	"CODE_FOR_bltgt"
	.sleb128 480
	.uleb128 0xc
	.string	"CODE_FOR_bunle"
	.sleb128 481
	.uleb128 0xc
	.string	"CODE_FOR_bungt"
	.sleb128 482
	.uleb128 0xc
	.string	"CODE_FOR_beq"
	.sleb128 483
	.uleb128 0xc
	.string	"CODE_FOR_bne"
	.sleb128 484
	.uleb128 0xc
	.string	"CODE_FOR_bgt"
	.sleb128 485
	.uleb128 0xc
	.string	"CODE_FOR_bge"
	.sleb128 486
	.uleb128 0xc
	.string	"CODE_FOR_blt"
	.sleb128 487
	.uleb128 0xc
	.string	"CODE_FOR_ble"
	.sleb128 488
	.uleb128 0xc
	.string	"CODE_FOR_bgtu"
	.sleb128 489
	.uleb128 0xc
	.string	"CODE_FOR_bgeu"
	.sleb128 490
	.uleb128 0xc
	.string	"CODE_FOR_bltu"
	.sleb128 491
	.uleb128 0xc
	.string	"CODE_FOR_bleu"
	.sleb128 492
	.uleb128 0xc
	.string	"CODE_FOR_seq"
	.sleb128 493
	.uleb128 0xc
	.string	"CODE_FOR_sne"
	.sleb128 494
	.uleb128 0xc
	.string	"CODE_FOR_sgt"
	.sleb128 495
	.uleb128 0xc
	.string	"CODE_FOR_sge"
	.sleb128 496
	.uleb128 0xc
	.string	"CODE_FOR_slt"
	.sleb128 497
	.uleb128 0xc
	.string	"CODE_FOR_sle"
	.sleb128 498
	.uleb128 0xc
	.string	"CODE_FOR_sgtu"
	.sleb128 499
	.uleb128 0xc
	.string	"CODE_FOR_sgeu"
	.sleb128 500
	.uleb128 0xc
	.string	"CODE_FOR_sltu"
	.sleb128 501
	.uleb128 0xc
	.string	"CODE_FOR_sleu"
	.sleb128 502
	.uleb128 0xc
	.string	"CODE_FOR_indirect_jump"
	.sleb128 503
	.uleb128 0xc
	.string	"CODE_FOR_tablejump"
	.sleb128 504
	.uleb128 0xc
	.string	"CODE_FOR_tablejump_internal3"
	.sleb128 505
	.uleb128 0xc
	.string	"CODE_FOR_tablejump_mips161"
	.sleb128 506
	.uleb128 0xc
	.string	"CODE_FOR_tablejump_mips162"
	.sleb128 507
	.uleb128 0xc
	.string	"CODE_FOR_tablejump_internal4"
	.sleb128 508
	.uleb128 0xc
	.string	"CODE_FOR_casesi"
	.sleb128 509
	.uleb128 0xc
	.string	"CODE_FOR_builtin_setjmp_setup"
	.sleb128 510
	.uleb128 0xc
	.string	"CODE_FOR_builtin_setjmp_setup_32"
	.sleb128 511
	.uleb128 0xc
	.string	"CODE_FOR_builtin_setjmp_setup_64"
	.sleb128 512
	.uleb128 0xc
	.string	"CODE_FOR_builtin_longjmp"
	.sleb128 513
	.uleb128 0xc
	.string	"CODE_FOR_prologue"
	.sleb128 514
	.uleb128 0xc
	.string	"CODE_FOR_epilogue"
	.sleb128 515
	.uleb128 0xc
	.string	"CODE_FOR_eh_return"
	.sleb128 516
	.uleb128 0xc
	.string	"CODE_FOR_call"
	.sleb128 518
	.uleb128 0xc
	.string	"CODE_FOR_call_internal0"
	.sleb128 519
	.uleb128 0xc
	.string	"CODE_FOR_call_value"
	.sleb128 520
	.uleb128 0xc
	.string	"CODE_FOR_call_value_internal0"
	.sleb128 521
	.uleb128 0xc
	.string	"CODE_FOR_call_value_multiple_internal0"
	.sleb128 522
	.uleb128 0xc
	.string	"CODE_FOR_untyped_call"
	.sleb128 523
	.uleb128 0xc
	.string	"CODE_FOR_prefetch"
	.sleb128 524
	.uleb128 0xc
	.string	"CODE_FOR_movsicc"
	.sleb128 525
	.uleb128 0xc
	.string	"CODE_FOR_movdicc"
	.sleb128 526
	.uleb128 0xc
	.string	"CODE_FOR_movsfcc"
	.sleb128 527
	.uleb128 0xc
	.string	"CODE_FOR_movdfcc"
	.sleb128 528
	.uleb128 0xc
	.string	"CODE_FOR_nothing"
	.sleb128 529
	.byte	0x0
	.uleb128 0x4
	.long	0x8242
	.string	"optab_handlers"
	.byte	0x8
	.byte	0x10
	.byte	0x2c
	.uleb128 0x1c
	.long	.LASF37
	.byte	0x10
	.byte	0x2d
	.long	0x60af
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF38
	.byte	0x10
	.byte	0x2e
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x24
	.long	0x8273
	.string	"optab"
	.value	0x1b4
	.byte	0x10
	.byte	0x2a
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x10
	.byte	0x2b
	.long	0x95d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"handlers"
	.byte	0x10
	.byte	0x2f
	.long	0x8273
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x12
	.long	0x8283
	.long	0x820e
	.uleb128 0x13
	.long	0x551
	.byte	0x35
	.byte	0x0
	.uleb128 0x2
	.string	"optab"
	.byte	0x10
	.byte	0x31
	.long	0x8290
	.uleb128 0x3
	.byte	0x4
	.long	0x8242
	.uleb128 0x2
	.string	"rtxfun"
	.byte	0x10
	.byte	0xed
	.long	0x82a4
	.uleb128 0x3
	.byte	0x4
	.long	0x82aa
	.uleb128 0x28
	.long	0x82ba
	.byte	0x1
	.long	0x9b
	.uleb128 0x17
	.long	0x9b
	.byte	0x0
	.uleb128 0x27
	.long	0x82ff
	.string	"can_compare_purpose"
	.byte	0x4
	.byte	0x10
	.value	0x132
	.uleb128 0xc
	.string	"ccp_jump"
	.sleb128 0
	.uleb128 0xc
	.string	"ccp_cmov"
	.sleb128 1
	.uleb128 0xc
	.string	"ccp_store_flag"
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.string	"insn_operand_predicate_fn"
	.byte	0x14
	.byte	0xd9
	.long	0x8320
	.uleb128 0x3
	.byte	0x4
	.long	0x8326
	.uleb128 0x28
	.long	0x833b
	.byte	0x1
	.long	0x461
	.uleb128 0x17
	.long	0x9b
	.uleb128 0x17
	.long	0x665
	.byte	0x0
	.uleb128 0x2
	.string	"insn_gen_fn"
	.byte	0x14
	.byte	0xdb
	.long	0x834e
	.uleb128 0x3
	.byte	0x4
	.long	0x8354
	.uleb128 0x28
	.long	0x8365
	.byte	0x1
	.long	0x9b
	.uleb128 0x17
	.long	0x9b
	.uleb128 0x29
	.byte	0x0
	.uleb128 0x4
	.long	0x83e4
	.string	"insn_operand_data"
	.byte	0xc
	.byte	0x14
	.byte	0xde
	.uleb128 0x7
	.string	"predicate"
	.byte	0x14
	.byte	0xdf
	.long	0x83e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"constraint"
	.byte	0x14
	.byte	0xe1
	.long	0x5c42
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.long	.LASF1
	.byte	0x14
	.byte	0xe3
	.long	0x83e9
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"strict_low"
	.byte	0x14
	.byte	0xe5
	.long	0x454
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.string	"eliminable"
	.byte	0x14
	.byte	0xe7
	.long	0x454
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0xd
	.long	0x82ff
	.uleb128 0xd
	.long	0x665
	.uleb128 0x1b
	.long	0x8495
	.long	.LASF39
	.byte	0x14
	.byte	0x14
	.byte	0xf2
	.uleb128 0x7
	.string	"name"
	.byte	0x14
	.byte	0xf3
	.long	0x5c42
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"output"
	.byte	0x14
	.byte	0xf4
	.long	0x65e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"genfun"
	.byte	0x14
	.byte	0xf5
	.long	0x8495
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"operand"
	.byte	0x14
	.byte	0xf6
	.long	0x849a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"n_operands"
	.byte	0x14
	.byte	0xf8
	.long	0x454
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"n_dups"
	.byte	0x14
	.byte	0xf9
	.long	0x454
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x7
	.string	"n_alternatives"
	.byte	0x14
	.byte	0xfa
	.long	0x454
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x7
	.string	"output_format"
	.byte	0x14
	.byte	0xfb
	.long	0x454
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.byte	0x0
	.uleb128 0xd
	.long	0x833b
	.uleb128 0xd
	.long	0x849f
	.uleb128 0x3
	.byte	0x4
	.long	0x84a5
	.uleb128 0xd
	.long	0x8365
	.uleb128 0x12
	.long	0x84ba
	.long	0x5e7
	.uleb128 0x13
	.long	0x551
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x850c
	.string	"ggc_root_tab"
	.byte	0x10
	.byte	0x16
	.byte	0x32
	.uleb128 0x7
	.string	"base"
	.byte	0x16
	.byte	0x33
	.long	0x60d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"nelt"
	.byte	0x16
	.byte	0x34
	.long	0x570
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"stride"
	.byte	0x16
	.byte	0x35
	.long	0x570
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"cb"
	.byte	0x16
	.byte	0x36
	.long	0x626
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xb
	.long	0x8552
	.string	"real_value_class"
	.byte	0x4
	.byte	0x7
	.byte	0x22
	.uleb128 0xc
	.string	"rvc_zero"
	.sleb128 0
	.uleb128 0xc
	.string	"rvc_normal"
	.sleb128 1
	.uleb128 0xc
	.string	"rvc_inf"
	.sleb128 2
	.uleb128 0xc
	.string	"rvc_nan"
	.sleb128 3
	.byte	0x0
	.uleb128 0x12
	.long	0x8562
	.long	0x5a5
	.uleb128 0x13
	.long	0x551
	.byte	0x4
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x5a5
	.uleb128 0x4
	.long	0x85cc
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF33
	.byte	0x5
	.byte	0x35
	.long	0x85cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x5
	.byte	0x36
	.long	0x85cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x85d2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8575
	.uleb128 0x12
	.long	0x85e2
	.long	0x8562
	.uleb128 0x13
	.long	0x551
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x8575
	.uleb128 0x3
	.byte	0x4
	.long	0x85e2
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x13d0
	.uleb128 0x4
	.long	0x8665
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0xe
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0xe
	.byte	0x21
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF7
	.byte	0xe
	.byte	0x22
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0xe
	.byte	0x23
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0xe
	.byte	0x24
	.long	0x84aa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xe
	.byte	0x25
	.long	0x8674
	.uleb128 0x3
	.byte	0x4
	.long	0x860c
	.uleb128 0x2
	.string	"regset"
	.byte	0xd
	.byte	0x22
	.long	0x85fe
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0xd
	.byte	0x75
	.long	0x5d6
	.uleb128 0x4
	.long	0x8742
	.string	"edge_def"
	.byte	0x28
	.byte	0xd
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0xd
	.byte	0x7a
	.long	0x8742
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0xd
	.byte	0x7a
	.long	0x8742
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0xd
	.byte	0x7d
	.long	0x155b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"dest"
	.byte	0xd
	.byte	0x7d
	.long	0x155b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.long	.LASF40
	.byte	0xd
	.byte	0x80
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0xd
	.byte	0x83
	.long	0x60d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"flags"
	.byte	0xd
	.byte	0x85
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0xd
	.byte	0x86
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"count"
	.byte	0xd
	.byte	0x87
	.long	0x8688
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8699
	.uleb128 0x2
	.string	"edge"
	.byte	0xd
	.byte	0x89
	.long	0x8742
	.uleb128 0x4
	.long	0x89c0
	.string	"loop"
	.byte	0x80
	.byte	0xd
	.byte	0xdc
	.uleb128 0x10
	.string	"num"
	.byte	0xd
	.value	0x176
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"header"
	.byte	0xd
	.value	0x179
	.long	0x89c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"latch"
	.byte	0xd
	.value	0x17c
	.long	0x89c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"pre_header"
	.byte	0xd
	.value	0x17f
	.long	0x89c6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"pre_header_edges"
	.byte	0xd
	.value	0x184
	.long	0x89d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"num_pre_header_edges"
	.byte	0xd
	.value	0x187
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x20
	.long	.LASF8
	.byte	0xd
	.value	0x18b
	.long	0x89c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x20
	.long	.LASF35
	.byte	0xd
	.value	0x18f
	.long	0x89c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.string	"nodes"
	.byte	0xd
	.value	0x192
	.long	0x8665
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.string	"num_nodes"
	.byte	0xd
	.value	0x195
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.string	"entry_edges"
	.byte	0xd
	.value	0x198
	.long	0x89d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.string	"num_entries"
	.byte	0xd
	.value	0x19b
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.string	"exit_edges"
	.byte	0xd
	.value	0x19e
	.long	0x89d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.string	"num_exits"
	.byte	0xd
	.value	0x1a1
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.string	"exits_doms"
	.byte	0xd
	.value	0x1a4
	.long	0x8665
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.string	"depth"
	.byte	0xd
	.value	0x1a7
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.string	"pred"
	.byte	0xd
	.value	0x1aa
	.long	0x89df
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.string	"level"
	.byte	0xd
	.value	0x1ae
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.string	"outer"
	.byte	0xd
	.value	0x1b1
	.long	0x89c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.string	"inner"
	.byte	0xd
	.value	0x1b4
	.long	0x89c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x20
	.long	.LASF33
	.byte	0xd
	.value	0x1b7
	.long	0x89c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.string	"invalid"
	.byte	0xd
	.value	0x1ba
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x10
	.string	"aux"
	.byte	0xd
	.value	0x1bd
	.long	0x60d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x10
	.string	"vtop"
	.byte	0xd
	.value	0x1c3
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.string	"cont"
	.byte	0xd
	.value	0x1c7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.string	"start"
	.byte	0xd
	.value	0x1ca
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x10
	.string	"end"
	.byte	0xd
	.value	0x1cd
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.string	"top"
	.byte	0xd
	.value	0x1d1
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x10
	.string	"scan_start"
	.byte	0xd
	.value	0x1d4
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x10
	.string	"sink"
	.byte	0xd
	.value	0x1d7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x10
	.string	"exit_labels"
	.byte	0xd
	.value	0x1e2
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.string	"exit_count"
	.byte	0xd
	.value	0x1e6
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8754
	.uleb128 0x2
	.string	"basic_block"
	.byte	0xd
	.byte	0xe6
	.long	0x155b
	.uleb128 0x3
	.byte	0x4
	.long	0x8748
	.uleb128 0x3
	.byte	0x4
	.long	0x89c0
	.uleb128 0x2a
	.long	0x8aa2
	.string	"add_equal_note"
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.long	0x461
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2b
	.long	.LASF40
	.byte	0x1
	.byte	0x97
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF41
	.byte	0x1
	.byte	0x98
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.long	.LASF0
	.byte	0x1
	.byte	0x99
	.long	0x95d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.string	"op0"
	.byte	0x1
	.byte	0x9a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.string	"op1"
	.byte	0x1
	.byte	0x9a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"last_insn"
	.byte	0x1
	.byte	0x9c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF42
	.byte	0x1
	.byte	0x9c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"set"
	.byte	0x1
	.byte	0x9c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"note"
	.byte	0x1
	.byte	0x9d
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF43
	.long	0xb989
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14131
	.byte	0x0
	.uleb128 0x2a
	.long	0x8b20
	.string	"widen_operand"
	.byte	0x1
	.byte	0xe1
	.byte	0x1
	.long	0x9b
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2c
	.string	"op"
	.byte	0x1
	.byte	0xdd
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF1
	.byte	0x1
	.byte	0xde
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"oldmode"
	.byte	0x1
	.byte	0xde
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.long	.LASF32
	.byte	0x1
	.byte	0xdf
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.long	.LASF44
	.byte	0x1
	.byte	0xe0
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2e
	.long	.LASF31
	.byte	0x1
	.byte	0xe2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x8ca8
	.string	"expand_cmplxdiv_straight"
	.byte	0x1
	.value	0x109
	.byte	0x1
	.long	0x461
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x31
	.string	"real0"
	.byte	0x1
	.value	0x103
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"real1"
	.byte	0x1
	.value	0x103
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"imag0"
	.byte	0x1
	.value	0x103
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"imag1"
	.byte	0x1
	.value	0x103
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"realr"
	.byte	0x1
	.value	0x103
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.string	"imagr"
	.byte	0x1
	.value	0x103
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x32
	.long	.LASF45
	.byte	0x1
	.value	0x104
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x105
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x32
	.long	.LASF46
	.byte	0x1
	.value	0x106
	.long	0x6049
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x32
	.long	.LASF18
	.byte	0x1
	.value	0x107
	.long	0x8ae
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x32
	.long	.LASF47
	.byte	0x1
	.value	0x108
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x33
	.string	"divisor"
	.byte	0x1
	.value	0x10a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"real_t"
	.byte	0x1
	.value	0x10b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"imag_t"
	.byte	0x1
	.value	0x10b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"temp1"
	.byte	0x1
	.value	0x10c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"temp2"
	.byte	0x1
	.value	0x10c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"res"
	.byte	0x1
	.value	0x10d
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF48
	.byte	0x1
	.value	0x10e
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LASF49
	.byte	0x1
	.value	0x10f
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF50
	.byte	0x1
	.value	0x110
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LASF51
	.byte	0x1
	.value	0x111
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x8e6d
	.string	"expand_cmplxdiv_wide"
	.byte	0x1
	.value	0x18d
	.byte	0x1
	.long	0x461
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x31
	.string	"real0"
	.byte	0x1
	.value	0x187
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"real1"
	.byte	0x1
	.value	0x187
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"imag0"
	.byte	0x1
	.value	0x187
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"imag1"
	.byte	0x1
	.value	0x187
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"realr"
	.byte	0x1
	.value	0x187
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.string	"imagr"
	.byte	0x1
	.value	0x187
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x32
	.long	.LASF45
	.byte	0x1
	.value	0x188
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x189
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x32
	.long	.LASF46
	.byte	0x1
	.value	0x18a
	.long	0x6049
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x32
	.long	.LASF18
	.byte	0x1
	.value	0x18b
	.long	0x8ae
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x32
	.long	.LASF47
	.byte	0x1
	.value	0x18c
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x33
	.string	"ratio"
	.byte	0x1
	.value	0x18e
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"divisor"
	.byte	0x1
	.value	0x18e
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"real_t"
	.byte	0x1
	.value	0x18f
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"imag_t"
	.byte	0x1
	.value	0x18f
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"temp1"
	.byte	0x1
	.value	0x190
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"temp2"
	.byte	0x1
	.value	0x190
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"lab1"
	.byte	0x1
	.value	0x190
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"lab2"
	.byte	0x1
	.value	0x190
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x191
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"res"
	.byte	0x1
	.value	0x192
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF48
	.byte	0x1
	.value	0x193
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LASF49
	.byte	0x1
	.value	0x194
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF50
	.byte	0x1
	.value	0x195
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LASF51
	.byte	0x1
	.value	0x196
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	0x8f26
	.byte	0x1
	.string	"expand_simple_binop"
	.byte	0x1
	.value	0x294
	.byte	0x1
	.long	0x9b
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x28e
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF0
	.byte	0x1
	.value	0x28f
	.long	0x95d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"op0"
	.byte	0x1
	.value	0x290
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"op1"
	.byte	0x1
	.value	0x290
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF41
	.byte	0x1
	.value	0x291
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x292
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x32
	.long	.LASF46
	.byte	0x1
	.value	0x293
	.long	0x6049
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x33
	.string	"binop"
	.byte	0x1
	.value	0x295
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2f
	.long	.LASF43
	.long	0xb984
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14517
	.byte	0x0
	.uleb128 0x35
	.long	0x9800
	.byte	0x1
	.string	"expand_binop"
	.byte	0x1
	.value	0x2af
	.byte	0x1
	.long	0x9b
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x2a9
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF47
	.byte	0x1
	.value	0x2aa
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"op0"
	.byte	0x1
	.value	0x2ab
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"op1"
	.byte	0x1
	.value	0x2ab
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF41
	.byte	0x1
	.value	0x2ac
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x2ad
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x32
	.long	.LASF46
	.byte	0x1
	.value	0x2ae
	.long	0x6049
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x33
	.string	"next_methods"
	.byte	0x1
	.value	0x2b0
	.long	0x6049
	.byte	0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x34
	.long	.LASF18
	.byte	0x1
	.value	0x2b3
	.long	0x8ae
	.byte	0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x34
	.long	.LASF52
	.byte	0x1
	.value	0x2b4
	.long	0x665
	.byte	0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x34
	.long	.LASF53
	.byte	0x1
	.value	0x2b5
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x33
	.string	"commutative_op"
	.byte	0x1
	.value	0x2b6
	.long	0x461
	.byte	0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x33
	.string	"shift_op"
	.byte	0x1
	.value	0x2b7
	.long	0x461
	.byte	0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x34
	.long	.LASF54
	.byte	0x1
	.value	0x2bc
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x34
	.long	.LASF35
	.byte	0x1
	.value	0x2bd
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x36
	.long	0x90da
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x34
	.long	.LASF55
	.byte	0x1
	.value	0x300
	.long	0x461
	.byte	0x3
	.byte	0x91
	.sleb128 -396
	.uleb128 0x34
	.long	.LASF56
	.byte	0x1
	.value	0x301
	.long	0x665
	.byte	0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x33
	.string	"mode1"
	.byte	0x1
	.value	0x302
	.long	0x665
	.byte	0x3
	.byte	0x91
	.sleb128 -388
	.uleb128 0x33
	.string	"pat"
	.byte	0x1
	.value	0x303
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x34
	.long	.LASF57
	.byte	0x1
	.value	0x304
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x33
	.string	"xop1"
	.byte	0x1
	.value	0x304
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x37
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x33
	.string	"tmp"
	.byte	0x1
	.value	0x312
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -372
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x9119
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x34
	.long	.LASF57
	.byte	0x1
	.value	0x375
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x33
	.string	"xop1"
	.byte	0x1
	.value	0x375
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x34
	.long	.LASF44
	.byte	0x1
	.value	0x376
	.long	0x461
	.byte	0x3
	.byte	0x91
	.sleb128 -360
	.byte	0x0
	.uleb128 0x36
	.long	0x917d
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x3a2
	.long	0x461
	.byte	0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x34
	.long	.LASF40
	.byte	0x1
	.value	0x3a3
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x34
	.long	.LASF58
	.byte	0x1
	.value	0x3a4
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x37
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x34
	.long	.LASF59
	.byte	0x1
	.value	0x3b0
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x3b1
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -340
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x926b
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x34
	.long	.LASF40
	.byte	0x1
	.value	0x3d8
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x33
	.string	"inter"
	.byte	0x1
	.value	0x3d8
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x34
	.long	.LASF58
	.byte	0x1
	.value	0x3d8
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x34
	.long	.LASF60
	.byte	0x1
	.value	0x3d9
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x34
	.long	.LASF61
	.byte	0x1
	.value	0x3d9
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x34
	.long	.LASF62
	.byte	0x1
	.value	0x3da
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x34
	.long	.LASF63
	.byte	0x1
	.value	0x3da
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x34
	.long	.LASF64
	.byte	0x1
	.value	0x3db
	.long	0x461
	.byte	0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x34
	.long	.LASF65
	.byte	0x1
	.value	0x3db
	.long	0x461
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x34
	.long	.LASF66
	.byte	0x1
	.value	0x3db
	.long	0x461
	.byte	0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x37
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x33
	.string	"carries"
	.byte	0x1
	.value	0x40d
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x34
	.long	.LASF67
	.byte	0x1
	.value	0x40e
	.long	0x8283
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x34
	.long	.LASF68
	.byte	0x1
	.value	0x40e
	.long	0x8283
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x93e0
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x34
	.long	.LASF40
	.byte	0x1
	.value	0x44d
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x34
	.long	.LASF58
	.byte	0x1
	.value	0x44d
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x34
	.long	.LASF60
	.byte	0x1
	.value	0x44e
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x34
	.long	.LASF61
	.byte	0x1
	.value	0x44e
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x34
	.long	.LASF62
	.byte	0x1
	.value	0x44f
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x34
	.long	.LASF63
	.byte	0x1
	.value	0x44f
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x33
	.string	"inter"
	.byte	0x1
	.value	0x450
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x34
	.long	.LASF64
	.byte	0x1
	.value	0x451
	.long	0x461
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x34
	.long	.LASF65
	.byte	0x1
	.value	0x451
	.long	0x461
	.byte	0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x34
	.long	.LASF66
	.byte	0x1
	.value	0x451
	.long	0x461
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x37
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x33
	.string	"into_temp1"
	.byte	0x1
	.value	0x473
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x33
	.string	"into_temp2"
	.byte	0x1
	.value	0x473
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x33
	.string	"outof_temp1"
	.byte	0x1
	.value	0x473
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x33
	.string	"outof_temp2"
	.byte	0x1
	.value	0x473
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x33
	.string	"first_shift_count"
	.byte	0x1
	.value	0x474
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x33
	.string	"second_shift_count"
	.byte	0x1
	.value	0x474
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x34
	.long	.LASF67
	.byte	0x1
	.value	0x475
	.long	0x8283
	.byte	0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x34
	.long	.LASF68
	.byte	0x1
	.value	0x475
	.long	0x8283
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x955c
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x4c5
	.long	0x53a
	.byte	0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x33
	.string	"otheroptab"
	.byte	0x1
	.value	0x4c6
	.long	0x8283
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x33
	.string	"nwords"
	.byte	0x1
	.value	0x4c7
	.long	0x9800
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x33
	.string	"carry_in"
	.byte	0x1
	.value	0x4c8
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x33
	.string	"carry_out"
	.byte	0x1
	.value	0x4c8
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x34
	.long	.LASF57
	.byte	0x1
	.value	0x4c9
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x33
	.string	"xop1"
	.byte	0x1
	.value	0x4c9
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x33
	.string	"xtarget"
	.byte	0x1
	.value	0x4c9
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x33
	.string	"normalizep"
	.byte	0x1
	.value	0x4cf
	.long	0x461
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x36
	.long	0x9541
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x33
	.string	"index"
	.byte	0x1
	.value	0x4e4
	.long	0x461
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x34
	.long	.LASF59
	.byte	0x1
	.value	0x4e5
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x33
	.string	"op0_piece"
	.byte	0x1
	.value	0x4e6
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x33
	.string	"op1_piece"
	.byte	0x1
	.value	0x4e7
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x4e8
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x37
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x33
	.string	"newx"
	.byte	0x1
	.value	0x4fe
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x37
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x33
	.string	"carry_tmp"
	.byte	0x1
	.value	0x509
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x34
	.long	.LASF53
	.byte	0x1
	.value	0x521
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x9671
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x33
	.string	"low"
	.byte	0x1
	.value	0x56f
	.long	0x461
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x33
	.string	"high"
	.byte	0x1
	.value	0x570
	.long	0x461
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x33
	.string	"op0_high"
	.byte	0x1
	.value	0x571
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x33
	.string	"op0_low"
	.byte	0x1
	.value	0x572
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x33
	.string	"op1_high"
	.byte	0x1
	.value	0x573
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x33
	.string	"op1_low"
	.byte	0x1
	.value	0x574
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x33
	.string	"product"
	.byte	0x1
	.value	0x575
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.string	"op0_xhigh"
	.byte	0x1
	.value	0x576
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x33
	.string	"op1_xhigh"
	.byte	0x1
	.value	0x577
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x36
	.long	0x963d
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x33
	.string	"wordm1"
	.byte	0x1
	.value	0x593
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x0
	.uleb128 0x37
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x33
	.string	"product_high"
	.byte	0x1
	.value	0x5c1
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x34
	.long	.LASF53
	.byte	0x1
	.value	0x5c2
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x9763
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x33
	.string	"real0"
	.byte	0x1
	.value	0x604
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x33
	.string	"imag0"
	.byte	0x1
	.value	0x604
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x33
	.string	"real1"
	.byte	0x1
	.value	0x605
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.string	"imag1"
	.byte	0x1
	.value	0x605
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.string	"realr"
	.byte	0x1
	.value	0x606
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.string	"imagr"
	.byte	0x1
	.value	0x606
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x33
	.string	"res"
	.byte	0x1
	.value	0x606
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"seq"
	.byte	0x1
	.value	0x607
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x34
	.long	.LASF58
	.byte	0x1
	.value	0x608
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"ok"
	.byte	0x1
	.value	0x609
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.long	.LASF45
	.byte	0x1
	.value	0x60c
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x37
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x33
	.string	"temp1"
	.byte	0x1
	.value	0x653
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"temp2"
	.byte	0x1
	.value	0x653
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x97b3
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x34
	.long	.LASF40
	.byte	0x1
	.value	0x6f9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"op1x"
	.byte	0x1
	.value	0x6fa
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"op1_mode"
	.byte	0x1
	.value	0x6fb
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF21
	.byte	0x1
	.value	0x6fc
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x36
	.long	0x97ef
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x34
	.long	.LASF57
	.byte	0x1
	.value	0x73a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"xop1"
	.byte	0x1
	.value	0x73a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF44
	.byte	0x1
	.value	0x73b
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF43
	.long	0xb97f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14636
	.byte	0x0
	.uleb128 0xd
	.long	0x53a
	.uleb128 0x30
	.long	0x9971
	.string	"expand_vector_binop"
	.byte	0x1
	.value	0x771
	.byte	0x1
	.long	0x9b
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x76b
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF47
	.byte	0x1
	.value	0x76c
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"op0"
	.byte	0x1
	.value	0x76d
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"op1"
	.byte	0x1
	.value	0x76d
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF41
	.byte	0x1
	.value	0x76e
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x76f
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x32
	.long	.LASF46
	.byte	0x1
	.value	0x770
	.long	0x6049
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x34
	.long	.LASF45
	.byte	0x1
	.value	0x772
	.long	0x665
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x33
	.string	"tmode"
	.byte	0x1
	.value	0x772
	.long	0x665
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.long	.LASF7
	.byte	0x1
	.value	0x773
	.long	0x461
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"elts"
	.byte	0x1
	.value	0x773
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"subsize"
	.byte	0x1
	.value	0x773
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.long	.LASF69
	.byte	0x1
	.value	0x773
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x773
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x774
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"a"
	.byte	0x1
	.value	0x774
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"b"
	.byte	0x1
	.value	0x774
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"res"
	.byte	0x1
	.value	0x774
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"seq"
	.byte	0x1
	.value	0x774
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF18
	.byte	0x1
	.value	0x775
	.long	0x8ae
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF43
	.long	0xb97a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15941
	.byte	0x0
	.uleb128 0x30
	.long	0x9aae
	.string	"expand_vector_unop"
	.byte	0x1
	.value	0x7ef
	.byte	0x1
	.long	0x9b
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x7ea
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"unoptab"
	.byte	0x1
	.value	0x7eb
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"op0"
	.byte	0x1
	.value	0x7ec
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF41
	.byte	0x1
	.value	0x7ed
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x7ee
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.long	.LASF45
	.byte	0x1
	.value	0x7f0
	.long	0x665
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"tmode"
	.byte	0x1
	.value	0x7f0
	.long	0x665
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x34
	.long	.LASF7
	.byte	0x1
	.value	0x7f1
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"elts"
	.byte	0x1
	.value	0x7f1
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"subsize"
	.byte	0x1
	.value	0x7f1
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF69
	.byte	0x1
	.value	0x7f1
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x7f1
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x7f2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"a"
	.byte	0x1
	.value	0x7f2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"res"
	.byte	0x1
	.value	0x7f2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"seq"
	.byte	0x1
	.value	0x7f2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x34
	.long	.LASF53
	.byte	0x1
	.value	0x809
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x9b98
	.byte	0x1
	.string	"sign_expand_binop"
	.byte	0x1
	.value	0x857
	.byte	0x1
	.long	0x9b
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x852
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"uoptab"
	.byte	0x1
	.value	0x853
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"soptab"
	.byte	0x1
	.value	0x853
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"op0"
	.byte	0x1
	.value	0x854
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"op1"
	.byte	0x1
	.value	0x854
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.long	.LASF41
	.byte	0x1
	.value	0x854
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x855
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x32
	.long	.LASF46
	.byte	0x1
	.value	0x856
	.long	0x6049
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x34
	.long	.LASF53
	.byte	0x1
	.value	0x858
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"direct_optab"
	.byte	0x1
	.value	0x859
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.string	"wide_soptab"
	.byte	0x1
	.value	0x85a
	.long	0x8242
	.byte	0x3
	.byte	0x91
	.sleb128 -456
	.byte	0x0
	.uleb128 0x35
	.long	0x9d37
	.byte	0x1
	.string	"expand_twoval_binop"
	.byte	0x1
	.value	0x894
	.byte	0x1
	.long	0x461
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x32
	.long	.LASF47
	.byte	0x1
	.value	0x890
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"op0"
	.byte	0x1
	.value	0x891
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"op1"
	.byte	0x1
	.value	0x891
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"targ0"
	.byte	0x1
	.value	0x892
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"targ1"
	.byte	0x1
	.value	0x892
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x893
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x895
	.long	0x665
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.long	.LASF18
	.byte	0x1
	.value	0x896
	.long	0x8ae
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x34
	.long	.LASF52
	.byte	0x1
	.value	0x897
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LASF54
	.byte	0x1
	.value	0x898
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.long	.LASF35
	.byte	0x1
	.value	0x899
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	0x9cdc
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x34
	.long	.LASF55
	.byte	0x1
	.value	0x8be
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.long	.LASF56
	.byte	0x1
	.value	0x8bf
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"mode1"
	.byte	0x1
	.value	0x8c0
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"pat"
	.byte	0x1
	.value	0x8c1
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF57
	.byte	0x1
	.value	0x8c2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"xop1"
	.byte	0x1
	.value	0x8c2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x36
	.long	0x9d26
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x33
	.string	"t0"
	.byte	0x1
	.value	0x8f9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"t1"
	.byte	0x1
	.value	0x8fa
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"cop0"
	.byte	0x1
	.value	0x8fb
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"cop1"
	.byte	0x1
	.value	0x8fc
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF43
	.long	0xb975
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16306
	.byte	0x0
	.uleb128 0x35
	.long	0x9dd0
	.byte	0x1
	.string	"expand_simple_unop"
	.byte	0x1
	.value	0x919
	.byte	0x1
	.long	0x9b
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x914
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF0
	.byte	0x1
	.value	0x915
	.long	0x95d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"op0"
	.byte	0x1
	.value	0x916
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF41
	.byte	0x1
	.value	0x917
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x918
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x33
	.string	"unop"
	.byte	0x1
	.value	0x91a
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2f
	.long	.LASF43
	.long	0xb970
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16490
	.byte	0x0
	.uleb128 0x35
	.long	0x9fff
	.byte	0x1
	.string	"expand_unop"
	.byte	0x1
	.value	0x933
	.byte	0x1
	.long	0x9b
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x92e
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"unoptab"
	.byte	0x1
	.value	0x92f
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"op0"
	.byte	0x1
	.value	0x930
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF41
	.byte	0x1
	.value	0x931
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x932
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.long	.LASF18
	.byte	0x1
	.value	0x934
	.long	0x8ae
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x34
	.long	.LASF52
	.byte	0x1
	.value	0x935
	.long	0x665
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x34
	.long	.LASF53
	.byte	0x1
	.value	0x936
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x34
	.long	.LASF35
	.byte	0x1
	.value	0x937
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.string	"pat"
	.byte	0x1
	.value	0x938
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.long	0x9ed3
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x34
	.long	.LASF55
	.byte	0x1
	.value	0x948
	.long	0x461
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x34
	.long	.LASF56
	.byte	0x1
	.value	0x949
	.long	0x665
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.long	.LASF57
	.byte	0x1
	.value	0x94a
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x36
	.long	0x9ef0
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x34
	.long	.LASF57
	.byte	0x1
	.value	0x977
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x36
	.long	0x9f40
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x99c
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.long	.LASF40
	.byte	0x1
	.value	0x99d
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x37
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x34
	.long	.LASF59
	.byte	0x1
	.value	0x9a7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x9a8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x9f88
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x34
	.long	.LASF59
	.byte	0x1
	.value	0x9bd
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x9be
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"seq"
	.byte	0x1
	.value	0x9bf
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF45
	.byte	0x1
	.value	0x9c2
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x36
	.long	0x9fb4
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x34
	.long	.LASF40
	.byte	0x1
	.value	0x9e6
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LASF21
	.byte	0x1
	.value	0x9e7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x36
	.long	0x9fd1
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x34
	.long	.LASF57
	.byte	0x1
	.value	0xa07
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x36
	.long	0x9fee
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x34
	.long	.LASF53
	.byte	0x1
	.value	0xa2b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF43
	.long	0xb96b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16527
	.byte	0x0
	.uleb128 0x35
	.long	0xa0d7
	.byte	0x1
	.string	"expand_abs"
	.byte	0x1
	.value	0xa47
	.byte	0x1
	.long	0x9b
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0xa42
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"op0"
	.byte	0x1
	.value	0xa43
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF41
	.byte	0x1
	.value	0xa44
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"result_unsignedp"
	.byte	0x1
	.value	0xa45
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"safe"
	.byte	0x1
	.value	0xa46
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.long	.LASF53
	.byte	0x1
	.value	0xa48
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"op1"
	.byte	0x1
	.value	0xa48
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	0xa0b8
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x34
	.long	.LASF35
	.byte	0x1
	.value	0xa56
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x37
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x33
	.string	"extended"
	.byte	0x1
	.value	0xa69
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0xa2b9
	.byte	0x1
	.string	"expand_complex_abs"
	.byte	0x1
	.value	0xaac
	.byte	0x1
	.long	0x9b
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0xaa8
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"op0"
	.byte	0x1
	.value	0xaa9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF41
	.byte	0x1
	.value	0xaaa
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0xaab
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.long	.LASF18
	.byte	0x1
	.value	0xaad
	.long	0x8ae
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x34
	.long	.LASF52
	.byte	0x1
	.value	0xaae
	.long	0x665
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.long	.LASF53
	.byte	0x1
	.value	0xaaf
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x34
	.long	.LASF54
	.byte	0x1
	.value	0xab0
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.long	.LASF35
	.byte	0x1
	.value	0xab1
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"pat"
	.byte	0x1
	.value	0xab2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"this_abs_optab"
	.byte	0x1
	.value	0xab3
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.long	.LASF45
	.byte	0x1
	.value	0xab6
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	0xa203
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x34
	.long	.LASF55
	.byte	0x1
	.value	0xacd
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.long	.LASF56
	.byte	0x1
	.value	0xace
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF57
	.byte	0x1
	.value	0xacf
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x36
	.long	0xa220
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x34
	.long	.LASF57
	.byte	0x1
	.value	0xafe
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x36
	.long	0xa25f
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x33
	.string	"real"
	.byte	0x1
	.value	0xb19
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"imag"
	.byte	0x1
	.value	0xb19
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"total"
	.byte	0x1
	.value	0xb19
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x36
	.long	0xa28b
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x34
	.long	.LASF40
	.byte	0x1
	.value	0xb31
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF21
	.byte	0x1
	.value	0xb32
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x36
	.long	0xa2a8
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x34
	.long	.LASF57
	.byte	0x1
	.value	0xb4d
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF43
	.long	0xb956
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16897
	.byte	0x0
	.uleb128 0x38
	.long	0xa348
	.byte	0x1
	.string	"emit_unop_insn"
	.byte	0x1
	.value	0xb74
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x32
	.long	.LASF55
	.byte	0x1
	.value	0xb70
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF41
	.byte	0x1
	.value	0xb71
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"op0"
	.byte	0x1
	.value	0xb72
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF0
	.byte	0x1
	.value	0xb73
	.long	0x95d
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.long	.LASF53
	.byte	0x1
	.value	0xb75
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF56
	.byte	0x1
	.value	0xb76
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"pat"
	.byte	0x1
	.value	0xb77
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	0xa45d
	.byte	0x1
	.string	"emit_no_conflict_block"
	.byte	0x1
	.value	0xbb9
	.byte	0x1
	.long	0x9b
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x32
	.long	.LASF40
	.byte	0x1
	.value	0xbb5
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF41
	.byte	0x1
	.value	0xbb6
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"op0"
	.byte	0x1
	.value	0xbb7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"op1"
	.byte	0x1
	.value	0xbb7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"equiv"
	.byte	0x1
	.value	0xbb8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x33
	.string	"prev"
	.byte	0x1
	.value	0xbba
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LASF33
	.byte	0x1
	.value	0xbba
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF8
	.byte	0x1
	.value	0xbba
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF35
	.byte	0x1
	.value	0xbba
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF42
	.byte	0x1
	.value	0xbba
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.long	0xa44c
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x33
	.string	"set"
	.byte	0x1
	.value	0xbc8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"note"
	.byte	0x1
	.value	0xbc8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xbc9
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF43
	.long	0xb941
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17146
	.byte	0x0
	.uleb128 0x38
	.long	0xa5c1
	.byte	0x1
	.string	"emit_libcall_block"
	.byte	0x1
	.value	0xc46
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x32
	.long	.LASF40
	.byte	0x1
	.value	0xc42
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF41
	.byte	0x1
	.value	0xc43
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF31
	.byte	0x1
	.value	0xc44
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"equiv"
	.byte	0x1
	.value	0xc45
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.string	"final_dest"
	.byte	0x1
	.value	0xc47
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"prev"
	.byte	0x1
	.value	0xc48
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF33
	.byte	0x1
	.value	0xc48
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.long	.LASF8
	.byte	0x1
	.value	0xc48
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF35
	.byte	0x1
	.value	0xc48
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LASF42
	.byte	0x1
	.value	0xc48
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	0xa544
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x33
	.string	"note"
	.byte	0x1
	.value	0xc56
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x36
	.long	0xa562
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x33
	.string	"note"
	.byte	0x1
	.value	0xc64
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x36
	.long	0xa58f
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x33
	.string	"set"
	.byte	0x1
	.value	0xc75
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"note"
	.byte	0x1
	.value	0xc76
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x37
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x33
	.string	"attach_libcall_retval_notes"
	.byte	0x1
	.value	0xcbe
	.long	0x5c47
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0xa5f3
	.byte	0x1
	.string	"emit_clr_insn"
	.byte	0x1
	.value	0xcd6
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xcd5
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x38
	.long	0xa628
	.byte	0x1
	.string	"emit_0_to_1_insn"
	.byte	0x1
	.value	0xce0
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xcdf
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0xa67e
	.byte	0x1
	.string	"can_compare_p"
	.byte	0x1
	.value	0xcf1
	.byte	0x1
	.long	0x461
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x32
	.long	.LASF0
	.byte	0x1
	.value	0xcee
	.long	0x95d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0xcef
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF20
	.byte	0x1
	.value	0xcf0
	.long	0x82ba
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x39
	.long	0xa7d8
	.string	"prepare_cmp_insn"
	.byte	0x1
	.value	0xd27
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x31
	.string	"px"
	.byte	0x1
	.value	0xd21
	.long	0x1596
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"py"
	.byte	0x1
	.value	0xd21
	.long	0x1596
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0xd22
	.long	0xa7d8
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF7
	.byte	0x1
	.value	0xd23
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"pmode"
	.byte	0x1
	.value	0xd24
	.long	0xa7de
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.long	.LASF71
	.byte	0x1
	.value	0xd25
	.long	0x658
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x32
	.long	.LASF20
	.byte	0x1
	.value	0xd26
	.long	0x82ba
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0xd28
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xd29
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"y"
	.byte	0x1
	.value	0xd29
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF32
	.byte	0x1
	.value	0xd2a
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LASF18
	.byte	0x1
	.value	0xd2b
	.long	0x8ae
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	0xa79b
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x34
	.long	.LASF31
	.byte	0x1
	.value	0xd54
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"result_mode"
	.byte	0x1
	.value	0xd55
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"opalign"
	.byte	0x1
	.value	0xd56
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x36
	.long	0xa7c7
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x34
	.long	.LASF38
	.byte	0x1
	.value	0xdc6
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF31
	.byte	0x1
	.value	0xdc7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF43
	.long	0xb92c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17481
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x95d
	.uleb128 0x3
	.byte	0x4
	.long	0x665
	.uleb128 0x35
	.long	0xa869
	.byte	0x1
	.string	"prepare_operand"
	.byte	0x1
	.value	0xded
	.byte	0x1
	.long	0x9b
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x32
	.long	.LASF55
	.byte	0x1
	.value	0xde8
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xde9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"opnum"
	.byte	0x1
	.value	0xdea
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0xdeb
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF52
	.byte	0x1
	.value	0xdeb
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0xdec
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0x0
	.uleb128 0x39
	.long	0xa94b
	.string	"emit_cmp_and_jump_insn_1"
	.byte	0x1
	.value	0xe0a
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xe05
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.value	0xe05
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0xe06
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF72
	.byte	0x1
	.value	0xe07
	.long	0x95d
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0xe08
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.string	"label"
	.byte	0x1
	.value	0xe09
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x33
	.string	"test"
	.byte	0x1
	.value	0xe0b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LASF18
	.byte	0x1
	.value	0xe0c
	.long	0x8ae
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF52
	.byte	0x1
	.value	0xe0d
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.long	0xa93a
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x34
	.long	.LASF55
	.byte	0x1
	.value	0xe12
	.long	0x60af
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF43
	.long	0xb917
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17745
	.byte	0x0
	.uleb128 0x38
	.long	0xaa0f
	.byte	0x1
	.string	"emit_cmp_and_jump_insns"
	.byte	0x1
	.value	0xe5f
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xe59
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.value	0xe59
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF72
	.byte	0x1
	.value	0xe5a
	.long	0x95d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF7
	.byte	0x1
	.value	0xe5b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0xe5c
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0xe5d
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x31
	.string	"label"
	.byte	0x1
	.value	0xe5e
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x33
	.string	"op0"
	.byte	0x1
	.value	0xe60
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"op1"
	.byte	0x1
	.value	0xe60
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF43
	.long	0xb902
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17821
	.byte	0x0
	.uleb128 0x38
	.long	0xaa8a
	.byte	0x1
	.string	"emit_cmp_insn"
	.byte	0x1
	.value	0xe88
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xe83
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.value	0xe83
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF72
	.byte	0x1
	.value	0xe84
	.long	0x95d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF7
	.byte	0x1
	.value	0xe85
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0xe86
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0xe87
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0x0
	.uleb128 0x39
	.long	0xab93
	.string	"prepare_float_lib_cmp"
	.byte	0x1
	.value	0xe95
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x31
	.string	"px"
	.byte	0x1
	.value	0xe91
	.long	0x1596
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"py"
	.byte	0x1
	.value	0xe91
	.long	0x1596
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0xe92
	.long	0xa7d8
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"pmode"
	.byte	0x1
	.value	0xe93
	.long	0xa7de
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF71
	.byte	0x1
	.value	0xe94
	.long	0x658
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.long	.LASF72
	.byte	0x1
	.value	0xe96
	.long	0x95d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"tmp"
	.byte	0x1
	.value	0xe97
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xe98
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"y"
	.byte	0x1
	.value	0xe99
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0xe9a
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LASF38
	.byte	0x1
	.value	0xe9b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF31
	.byte	0x1
	.value	0xe9c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.long	0xab82
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x34
	.long	.LASF52
	.byte	0x1
	.value	0xfc2
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF43
	.long	0xb8fd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17910
	.byte	0x0
	.uleb128 0x38
	.long	0xabcc
	.byte	0x1
	.string	"emit_indirect_jump"
	.byte	0x1
	.value	0xfec
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x31
	.string	"loc"
	.byte	0x1
	.value	0xfeb
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0xaceb
	.byte	0x1
	.string	"emit_conditional_move"
	.byte	0x1
	.value	0x100f
	.byte	0x1
	.long	0x9b
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x32
	.long	.LASF41
	.byte	0x1
	.value	0x1008
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF0
	.byte	0x1
	.value	0x1009
	.long	0x95d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"op0"
	.byte	0x1
	.value	0x100a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"op1"
	.byte	0x1
	.value	0x100a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"cmode"
	.byte	0x1
	.value	0x100b
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.string	"op2"
	.byte	0x1
	.value	0x100c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x31
	.string	"op3"
	.byte	0x1
	.value	0x100c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x100d
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x100e
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x33
	.string	"tem"
	.byte	0x1
	.value	0x1010
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"subtarget"
	.byte	0x1
	.value	0x1010
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF72
	.byte	0x1
	.value	0x1010
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF42
	.byte	0x1
	.value	0x1010
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LASF55
	.byte	0x1
	.value	0x1011
	.long	0x60af
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"reversed"
	.byte	0x1
	.value	0x1012
	.long	0x95d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x35
	.long	0xad2e
	.byte	0x1
	.string	"can_conditionally_move_p"
	.byte	0x1
	.value	0x1082
	.byte	0x1
	.long	0x461
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x1081
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0xad90
	.byte	0x1
	.string	"gen_add2_insn"
	.byte	0x1
	.value	0x1097
	.byte	0x1
	.long	0x9b
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x1096
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.value	0x1096
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF55
	.byte	0x1
	.value	0x1098
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF43
	.long	0xb8e8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18167
	.byte	0x0
	.uleb128 0x35
	.long	0xadf1
	.byte	0x1
	.string	"gen_add3_insn"
	.byte	0x1
	.value	0x10aa
	.byte	0x1
	.long	0x9b
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x31
	.string	"r0"
	.byte	0x1
	.value	0x10a9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"r1"
	.byte	0x1
	.value	0x10a9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"c"
	.byte	0x1
	.value	0x10a9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.long	.LASF55
	.byte	0x1
	.value	0x10ab
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x35
	.long	0xae54
	.byte	0x1
	.string	"have_add2_insn"
	.byte	0x1
	.value	0x10bc
	.byte	0x1
	.long	0x461
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x10bb
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.value	0x10bb
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF55
	.byte	0x1
	.value	0x10bd
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF43
	.long	0xb8e3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18262
	.byte	0x0
	.uleb128 0x35
	.long	0xaeb6
	.byte	0x1
	.string	"gen_sub2_insn"
	.byte	0x1
	.value	0x10d7
	.byte	0x1
	.long	0x9b
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x10d6
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.value	0x10d6
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF55
	.byte	0x1
	.value	0x10d8
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF43
	.long	0xb8de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18311
	.byte	0x0
	.uleb128 0x35
	.long	0xaf17
	.byte	0x1
	.string	"gen_sub3_insn"
	.byte	0x1
	.value	0x10ea
	.byte	0x1
	.long	0x9b
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x31
	.string	"r0"
	.byte	0x1
	.value	0x10e9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"r1"
	.byte	0x1
	.value	0x10e9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"c"
	.byte	0x1
	.value	0x10e9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.long	.LASF55
	.byte	0x1
	.value	0x10eb
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x35
	.long	0xaf7a
	.byte	0x1
	.string	"have_sub2_insn"
	.byte	0x1
	.value	0x10fc
	.byte	0x1
	.long	0x461
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x10fb
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.value	0x10fb
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF55
	.byte	0x1
	.value	0x10fd
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF43
	.long	0xb8d9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18406
	.byte	0x0
	.uleb128 0x35
	.long	0xb035
	.byte	0x1
	.string	"gen_move_insn"
	.byte	0x1
	.value	0x1118
	.byte	0x1
	.long	0x9b
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x1117
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.value	0x1117
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x1119
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF37
	.byte	0x1
	.value	0x111a
	.long	0x60af
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"seq"
	.byte	0x1
	.value	0x111b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.long	0xb024
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x33
	.string	"tmode"
	.byte	0x1
	.value	0x1128
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"x1"
	.byte	0x1
	.value	0x1129
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"y1"
	.byte	0x1
	.value	0x1129
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF43
	.long	0xb8c4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18463
	.byte	0x0
	.uleb128 0x35
	.long	0xb094
	.byte	0x1
	.string	"can_extend_p"
	.byte	0x1
	.value	0x1167
	.byte	0x1
	.long	0x60af
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x31
	.string	"to_mode"
	.byte	0x1
	.value	0x1165
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"from_mode"
	.byte	0x1
	.value	0x1165
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x1166
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x35
	.long	0xb108
	.byte	0x1
	.string	"gen_extend_insn"
	.byte	0x1
	.value	0x1178
	.byte	0x1
	.long	0x9b
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x1175
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.value	0x1175
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"mto"
	.byte	0x1
	.value	0x1176
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"mfrom"
	.byte	0x1
	.value	0x1176
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x1177
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.uleb128 0x30
	.long	0xb177
	.string	"can_fix_p"
	.byte	0x1
	.value	0x118a
	.byte	0x1
	.long	0x60af
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x31
	.string	"fixmode"
	.byte	0x1
	.value	0x1187
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"fltmode"
	.byte	0x1
	.value	0x1187
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x1188
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"truncp_ptr"
	.byte	0x1
	.value	0x1189
	.long	0x658
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x30
	.long	0xb1d2
	.string	"can_float_p"
	.byte	0x1
	.value	0x119c
	.byte	0x1
	.long	0x60af
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x31
	.string	"fltmode"
	.byte	0x1
	.value	0x119a
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"fixmode"
	.byte	0x1
	.value	0x119a
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x119b
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x38
	.long	0xb2db
	.byte	0x1
	.string	"expand_float"
	.byte	0x1
	.value	0x11aa
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x31
	.string	"to"
	.byte	0x1
	.value	0x11a8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"from"
	.byte	0x1
	.value	0x11a8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x11a9
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.long	.LASF55
	.byte	0x1
	.value	0x11ab
	.long	0x60af
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LASF41
	.byte	0x1
	.value	0x11ac
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"fmode"
	.byte	0x1
	.value	0x11ad
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"imode"
	.byte	0x1
	.value	0x11ad
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3a
	.string	"done"
	.byte	0x1
	.value	0x129a
	.long	.L1784
	.uleb128 0x36
	.long	0xb28c
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x34
	.long	.LASF73
	.byte	0x1
	.value	0x11bd
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x36
	.long	0xb2ca
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x33
	.string	"libfcn"
	.byte	0x1
	.value	0x1252
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF40
	.byte	0x1
	.value	0x1253
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LASF21
	.byte	0x1
	.value	0x1254
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF43
	.long	0xb8af
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18588
	.byte	0x0
	.uleb128 0x30
	.long	0xb31b
	.string	"ftruncify"
	.byte	0x1
	.value	0x12ae
	.byte	0x1
	.long	0x9b
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x12ad
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF53
	.byte	0x1
	.value	0x12af
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	0xb49e
	.byte	0x1
	.string	"expand_fix"
	.byte	0x1
	.value	0x12b7
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x31
	.string	"to"
	.byte	0x1
	.value	0x12b5
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"from"
	.byte	0x1
	.value	0x12b5
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x12b6
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.long	.LASF55
	.byte	0x1
	.value	0x12b8
	.long	0x60af
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x34
	.long	.LASF41
	.byte	0x1
	.value	0x12b9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"fmode"
	.byte	0x1
	.value	0x12ba
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"imode"
	.byte	0x1
	.value	0x12ba
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"must_trunc"
	.byte	0x1
	.value	0x12bb
	.long	0x461
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"libfcn"
	.byte	0x1
	.value	0x12bc
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x36
	.long	0xb3f0
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x34
	.long	.LASF73
	.byte	0x1
	.value	0x12c8
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x36
	.long	0xb461
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x33
	.string	"bitsize"
	.byte	0x1
	.value	0x12f5
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LASF6
	.byte	0x1
	.value	0x12f6
	.long	0x400c
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x33
	.string	"limit"
	.byte	0x1
	.value	0x12f7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"lab1"
	.byte	0x1
	.value	0x12f7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"lab2"
	.byte	0x1
	.value	0x12f7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF42
	.byte	0x1
	.value	0x12f7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x36
	.long	0xb48d
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x34
	.long	.LASF40
	.byte	0x1
	.value	0x136f
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF21
	.byte	0x1
	.value	0x1370
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF43
	.long	0xb89a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18785
	.byte	0x0
	.uleb128 0x35
	.long	0xb4e5
	.byte	0x1
	.string	"have_insn_for"
	.byte	0x1
	.value	0x1394
	.byte	0x1
	.long	0x461
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x32
	.long	.LASF0
	.byte	0x1
	.value	0x1392
	.long	0x95d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x1393
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x30
	.long	0xb524
	.string	"new_optab"
	.byte	0x1
	.value	0x139d
	.byte	0x1
	.long	0x8283
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x139e
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"op"
	.byte	0x1
	.value	0x139f
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xb627
	.string	"init_libfuncs"
	.byte	0x1
	.value	0x13d8
	.byte	0x1
	.long	.LFB62
	.long	.LFE62
	.long	.LLST45
	.uleb128 0x32
	.long	.LASF74
	.byte	0x1
	.value	0x13d3
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.string	"first_mode"
	.byte	0x1
	.value	0x13d4
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"last_mode"
	.byte	0x1
	.value	0x13d5
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF75
	.byte	0x1
	.value	0x13d6
	.long	0x44e
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.long	.LASF76
	.byte	0x1
	.value	0x13d7
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x13d9
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"opname_len"
	.byte	0x1
	.value	0x13da
	.long	0x53a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x37
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x33
	.string	"mname"
	.byte	0x1
	.value	0x13df
	.long	0x44e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"mname_len"
	.byte	0x1
	.value	0x13e0
	.long	0x53a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"libfunc_name"
	.byte	0x1
	.value	0x13e1
	.long	0x60f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x13e2
	.long	0x60f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"q"
	.byte	0x1
	.value	0x13e3
	.long	0x44e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xb681
	.string	"init_integral_libfuncs"
	.byte	0x1
	.value	0x13ff
	.byte	0x1
	.long	.LFB63
	.long	.LFE63
	.long	.LLST46
	.uleb128 0x32
	.long	.LASF74
	.byte	0x1
	.value	0x13fc
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF75
	.byte	0x1
	.value	0x13fd
	.long	0x44e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF76
	.byte	0x1
	.value	0x13fe
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x39
	.long	0xb6db
	.string	"init_floating_libfuncs"
	.byte	0x1
	.value	0x140d
	.byte	0x1
	.long	.LFB64
	.long	.LFE64
	.long	.LLST47
	.uleb128 0x32
	.long	.LASF74
	.byte	0x1
	.value	0x140a
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF75
	.byte	0x1
	.value	0x140b
	.long	0x44e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF76
	.byte	0x1
	.value	0x140c
	.long	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x35
	.long	0xb727
	.byte	0x1
	.string	"init_one_libfunc"
	.byte	0x1
	.value	0x1414
	.byte	0x1
	.long	0x9b
	.long	.LFB65
	.long	.LFE65
	.long	.LLST48
	.uleb128 0x31
	.string	"name"
	.byte	0x1
	.value	0x1413
	.long	0x44e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"decl"
	.byte	0x1
	.value	0x1419
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x38
	.long	0xb771
	.byte	0x1
	.string	"init_optabs"
	.byte	0x1
	.value	0x1428
	.byte	0x1
	.long	.LFB66
	.long	.LFE66
	.long	.LLST49
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x1429
	.long	0x53a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x1429
	.long	0x53a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"k"
	.byte	0x1
	.value	0x1429
	.long	0x53a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x30
	.long	0xb7b4
	.string	"init_optabv"
	.byte	0x1
	.value	0x13ba
	.byte	0x1
	.long	0x8283
	.long	.LFB61
	.long	.LFE61
	.long	.LLST50
	.uleb128 0x32
	.long	.LASF0
	.byte	0x1
	.value	0x13b9
	.long	0x95d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"op"
	.byte	0x1
	.value	0x13bb
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x30
	.long	0xb7f6
	.string	"init_optab"
	.byte	0x1
	.value	0x13ae
	.byte	0x1
	.long	0x8283
	.long	.LFB60
	.long	.LFE60
	.long	.LLST51
	.uleb128 0x32
	.long	.LASF0
	.byte	0x1
	.value	0x13ad
	.long	0x95d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"op"
	.byte	0x1
	.value	0x13af
	.long	0x8283
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	0xb88a
	.byte	0x1
	.string	"gen_cond_trap"
	.byte	0x1
	.value	0x158b
	.byte	0x1
	.long	0x9b
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x32
	.long	.LASF0
	.byte	0x1
	.value	0x1589
	.long	0x95d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"op1"
	.byte	0x1
	.value	0x158a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"op2"
	.byte	0x1
	.value	0x158a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"tcode"
	.byte	0x1
	.value	0x158a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x158c
	.long	0x665
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF55
	.byte	0x1
	.value	0x158d
	.long	0x60af
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LASF42
	.byte	0x1
	.value	0x158e
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x12
	.long	0xb89a
	.long	0x459
	.uleb128 0x13
	.long	0x551
	.byte	0xa
	.byte	0x0
	.uleb128 0xd
	.long	0xb88a
	.uleb128 0x12
	.long	0xb8af
	.long	0x459
	.uleb128 0x13
	.long	0x551
	.byte	0xc
	.byte	0x0
	.uleb128 0xd
	.long	0xb89f
	.uleb128 0x12
	.long	0xb8c4
	.long	0x459
	.uleb128 0x13
	.long	0x551
	.byte	0xd
	.byte	0x0
	.uleb128 0xd
	.long	0xb8b4
	.uleb128 0x12
	.long	0xb8d9
	.long	0x459
	.uleb128 0x13
	.long	0x551
	.byte	0xe
	.byte	0x0
	.uleb128 0xd
	.long	0xb8c9
	.uleb128 0xd
	.long	0xb8b4
	.uleb128 0xd
	.long	0xb8c9
	.uleb128 0xd
	.long	0xb8b4
	.uleb128 0x12
	.long	0xb8fd
	.long	0x459
	.uleb128 0x13
	.long	0x551
	.byte	0x15
	.byte	0x0
	.uleb128 0xd
	.long	0xb8ed
	.uleb128 0xd
	.long	0x638
	.uleb128 0x12
	.long	0xb917
	.long	0x459
	.uleb128 0x13
	.long	0x551
	.byte	0x18
	.byte	0x0
	.uleb128 0xd
	.long	0xb907
	.uleb128 0x12
	.long	0xb92c
	.long	0x459
	.uleb128 0x13
	.long	0x551
	.byte	0x10
	.byte	0x0
	.uleb128 0xd
	.long	0xb91c
	.uleb128 0x12
	.long	0xb941
	.long	0x459
	.uleb128 0x13
	.long	0x551
	.byte	0x16
	.byte	0x0
	.uleb128 0xd
	.long	0xb931
	.uleb128 0x12
	.long	0xb956
	.long	0x459
	.uleb128 0x13
	.long	0x551
	.byte	0x12
	.byte	0x0
	.uleb128 0xd
	.long	0xb946
	.uleb128 0x12
	.long	0xb96b
	.long	0x459
	.uleb128 0x13
	.long	0x551
	.byte	0xb
	.byte	0x0
	.uleb128 0xd
	.long	0xb95b
	.uleb128 0xd
	.long	0xb946
	.uleb128 0xd
	.long	0x648
	.uleb128 0xd
	.long	0x648
	.uleb128 0xd
	.long	0xb89f
	.uleb128 0xd
	.long	0x648
	.uleb128 0xd
	.long	0xb8c9
	.uleb128 0x2d
	.string	"trap_rtx"
	.byte	0x1
	.byte	0x60
	.long	0x9b
	.byte	0x5
	.byte	0x3
	.long	trap_rtx
	.uleb128 0x3b
	.string	"target_flags"
	.byte	0xb
	.byte	0x21
	.long	0x461
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"mips_tune"
	.byte	0xb
	.byte	0xa4
	.long	0x2ce
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"mips_isa"
	.byte	0xb
	.byte	0xa6
	.long	0x461
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"mips16_hard_float"
	.byte	0xb
	.byte	0xa8
	.long	0x461
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0xba0a
	.long	0x57e
	.uleb128 0x13
	.long	0x551
	.byte	0xff
	.byte	0x0
	.uleb128 0x3b
	.string	"_sch_tolower"
	.byte	0x12
	.byte	0x62
	.long	0xba20
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xb9fa
	.uleb128 0x12
	.long	0xba35
	.long	0x44e
	.uleb128 0x13
	.long	0x551
	.byte	0x35
	.byte	0x0
	.uleb128 0x3b
	.string	"mode_name"
	.byte	0x4
	.byte	0x29
	.long	0xba48
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xba25
	.uleb128 0x12
	.long	0xba5d
	.long	0x8ae
	.uleb128 0x13
	.long	0x551
	.byte	0x35
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF4
	.byte	0x4
	.byte	0x34
	.long	0xba6a
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xba4d
	.uleb128 0x12
	.long	0xba7f
	.long	0x57e
	.uleb128 0x13
	.long	0x551
	.byte	0x35
	.byte	0x0
	.uleb128 0x3b
	.string	"mode_size"
	.byte	0x4
	.byte	0x59
	.long	0xba92
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xba6f
	.uleb128 0x3b
	.string	"mode_unit_size"
	.byte	0x4
	.byte	0x5e
	.long	0xbaaf
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xba6f
	.uleb128 0x12
	.long	0xbac4
	.long	0x58f
	.uleb128 0x13
	.long	0x551
	.byte	0x35
	.byte	0x0
	.uleb128 0x3b
	.string	"mode_bitsize"
	.byte	0x4
	.byte	0x69
	.long	0xbada
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xbab4
	.uleb128 0x12
	.long	0xbaef
	.long	0x665
	.uleb128 0x13
	.long	0x551
	.byte	0x35
	.byte	0x0
	.uleb128 0x3b
	.string	"inner_mode_array"
	.byte	0x4
	.byte	0x77
	.long	0xbb09
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xbadf
	.uleb128 0x3b
	.string	"mode_wider_mode"
	.byte	0x4
	.byte	0x84
	.long	0xbb27
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xba6f
	.uleb128 0x12
	.long	0xbb3c
	.long	0x665
	.uleb128 0x13
	.long	0x551
	.byte	0x8
	.byte	0x0
	.uleb128 0x3b
	.string	"class_narrowest_mode"
	.byte	0x4
	.byte	0xa6
	.long	0xbb5a
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xbb2c
	.uleb128 0x3b
	.string	"word_mode"
	.byte	0x4
	.byte	0xad
	.long	0x665
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0xbb82
	.long	0x459
	.uleb128 0x13
	.long	0x551
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3b
	.string	"rtx_class"
	.byte	0x3
	.byte	0x3f
	.long	0xbb95
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xbb72
	.uleb128 0x12
	.long	0xbbaa
	.long	0x9b
	.uleb128 0x13
	.long	0x551
	.byte	0x80
	.byte	0x0
	.uleb128 0x3d
	.string	"const_int_rtx"
	.byte	0x3
	.value	0x69e
	.long	0xbb9a
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0xbbd8
	.long	0x9b
	.uleb128 0x13
	.long	0x551
	.byte	0x2
	.uleb128 0x13
	.long	0x551
	.byte	0x35
	.byte	0x0
	.uleb128 0x3d
	.string	"const_tiny_rtx"
	.byte	0x3
	.value	0x6a6
	.long	0xbbc2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"reload_in_progress"
	.byte	0x3
	.value	0x762
	.long	0x461
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"no_new_pseudos"
	.byte	0x3
	.value	0x76e
	.long	0x461
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0xbc37
	.long	0x1e2
	.uleb128 0x13
	.long	0x551
	.byte	0xa
	.byte	0x0
	.uleb128 0x3d
	.string	"integer_types"
	.byte	0x6
	.value	0x95f
	.long	0xbc27
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0xbc5f
	.long	0x1e2
	.uleb128 0x13
	.long	0x551
	.byte	0x5
	.byte	0x0
	.uleb128 0x3d
	.string	"sizetype_tab"
	.byte	0x6
	.value	0xb10
	.long	0xbc4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"flag_force_mem"
	.byte	0x13
	.value	0x106
	.long	0x461
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"flag_complex_divide_method"
	.byte	0x13
	.value	0x181
	.long	0x461
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"flag_trapv"
	.byte	0x13
	.value	0x26e
	.long	0x461
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"flag_non_call_exceptions"
	.byte	0x13
	.value	0x2b2
	.long	0x461
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"cfun"
	.byte	0xa
	.value	0x202
	.long	0x51e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0xbd0b
	.long	0x8283
	.uleb128 0x13
	.long	0x551
	.byte	0x32
	.byte	0x0
	.uleb128 0x3e
	.string	"optab_table"
	.byte	0x1
	.byte	0x3a
	.long	0xbcfb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	optab_table
	.uleb128 0x12
	.long	0xbd41
	.long	0x60af
	.uleb128 0x13
	.long	0x551
	.byte	0x35
	.uleb128 0x13
	.long	0x551
	.byte	0x35
	.uleb128 0x13
	.long	0x551
	.byte	0x1
	.byte	0x0
	.uleb128 0x3e
	.string	"extendtab"
	.byte	0x1
	.byte	0x3f
	.long	0xbd25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	extendtab
	.uleb128 0x3e
	.string	"fixtab"
	.byte	0x1
	.byte	0x42
	.long	0xbd25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	fixtab
	.uleb128 0x3e
	.string	"fixtrunctab"
	.byte	0x1
	.byte	0x43
	.long	0xbd25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	fixtrunctab
	.uleb128 0x3e
	.string	"floattab"
	.byte	0x1
	.byte	0x44
	.long	0xbd25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	floattab
	.uleb128 0x12
	.long	0xbdaf
	.long	0x60af
	.uleb128 0x13
	.long	0x551
	.byte	0x35
	.byte	0x0
	.uleb128 0x3b
	.string	"reload_in_optab"
	.byte	0x10
	.byte	0xe6
	.long	0xbd9f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"reload_out_optab"
	.byte	0x10
	.byte	0xe7
	.long	0xbd9f
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0xbdf2
	.long	0x8283
	.uleb128 0x13
	.long	0x551
	.byte	0xa3
	.byte	0x0
	.uleb128 0x3e
	.string	"code_to_optab"
	.byte	0x1
	.byte	0x47
	.long	0xbde2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	code_to_optab
	.uleb128 0x12
	.long	0xbe1e
	.long	0x8296
	.uleb128 0x13
	.long	0x551
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3e
	.string	"bcc_gen_fctn"
	.byte	0x1
	.byte	0x4c
	.long	0xbe0e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	bcc_gen_fctn
	.uleb128 0x12
	.long	0xbe49
	.long	0x60af
	.uleb128 0x13
	.long	0x551
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3e
	.string	"setcc_gen_code"
	.byte	0x1
	.byte	0x52
	.long	0xbe39
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	setcc_gen_code
	.uleb128 0x3e
	.string	"movcc_gen_code"
	.byte	0x1
	.byte	0x5a
	.long	0xbd9f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	movcc_gen_code
	.uleb128 0x3d
	.string	"movstr_optab"
	.byte	0x10
	.value	0x102
	.long	0xbd9f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"clrstr_optab"
	.byte	0x10
	.value	0x105
	.long	0xbd9f
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0xbec1
	.long	0x9b
	.uleb128 0x13
	.long	0x551
	.byte	0x60
	.byte	0x0
	.uleb128 0x3e
	.string	"libfunc_table"
	.byte	0x1
	.byte	0x3c
	.long	0xbeb1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	libfunc_table
	.uleb128 0x12
	.long	0xbee8
	.long	0x83ee
	.uleb128 0x3f
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF39
	.byte	0x14
	.byte	0xfe
	.long	0xbef5
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xbedd
	.uleb128 0x12
	.long	0xbf0a
	.long	0x84ba
	.uleb128 0x13
	.long	0x551
	.byte	0x1
	.byte	0x0
	.uleb128 0x3e
	.string	"gt_ggc_r_gt_optabs_h"
	.byte	0x15
	.byte	0x19
	.long	0xbf2d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_r_gt_optabs_h
	.uleb128 0xd
	.long	0xbefa
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x18
	.byte	0x0
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3f
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x388
	.value	0x2
	.long	.Ldebug_info0
	.long	0xbf33
	.long	0x8e6d
	.string	"expand_simple_binop"
	.long	0x8f26
	.string	"expand_binop"
	.long	0x9aae
	.string	"sign_expand_binop"
	.long	0x9b98
	.string	"expand_twoval_binop"
	.long	0x9d37
	.string	"expand_simple_unop"
	.long	0x9dd0
	.string	"expand_unop"
	.long	0x9fff
	.string	"expand_abs"
	.long	0xa0d7
	.string	"expand_complex_abs"
	.long	0xa2b9
	.string	"emit_unop_insn"
	.long	0xa348
	.string	"emit_no_conflict_block"
	.long	0xa45d
	.string	"emit_libcall_block"
	.long	0xa5c1
	.string	"emit_clr_insn"
	.long	0xa5f3
	.string	"emit_0_to_1_insn"
	.long	0xa628
	.string	"can_compare_p"
	.long	0xa7e4
	.string	"prepare_operand"
	.long	0xa94b
	.string	"emit_cmp_and_jump_insns"
	.long	0xaa0f
	.string	"emit_cmp_insn"
	.long	0xab93
	.string	"emit_indirect_jump"
	.long	0xabcc
	.string	"emit_conditional_move"
	.long	0xaceb
	.string	"can_conditionally_move_p"
	.long	0xad2e
	.string	"gen_add2_insn"
	.long	0xad90
	.string	"gen_add3_insn"
	.long	0xadf1
	.string	"have_add2_insn"
	.long	0xae54
	.string	"gen_sub2_insn"
	.long	0xaeb6
	.string	"gen_sub3_insn"
	.long	0xaf17
	.string	"have_sub2_insn"
	.long	0xaf7a
	.string	"gen_move_insn"
	.long	0xb035
	.string	"can_extend_p"
	.long	0xb094
	.string	"gen_extend_insn"
	.long	0xb1d2
	.string	"expand_float"
	.long	0xb31b
	.string	"expand_fix"
	.long	0xb49e
	.string	"have_insn_for"
	.long	0xb6db
	.string	"init_one_libfunc"
	.long	0xb727
	.string	"init_optabs"
	.long	0xb7f6
	.string	"gen_cond_trap"
	.long	0xbd0b
	.string	"optab_table"
	.long	0xbd41
	.string	"extendtab"
	.long	0xbd59
	.string	"fixtab"
	.long	0xbd6e
	.string	"fixtrunctab"
	.long	0xbd88
	.string	"floattab"
	.long	0xbdf2
	.string	"code_to_optab"
	.long	0xbe1e
	.string	"bcc_gen_fctn"
	.long	0xbe49
	.string	"setcc_gen_code"
	.long	0xbe66
	.string	"movcc_gen_code"
	.long	0xbec1
	.string	"libfunc_table"
	.long	0xbf0a
	.string	"gt_ggc_r_gt_optabs_h"
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
.LASF35:
	.string	"last"
.LASF31:
	.string	"result"
.LASF39:
	.string	"insn_data"
.LASF11:
	.string	"lang_flag_1"
.LASF12:
	.string	"lang_flag_2"
.LASF16:
	.string	"lang_flag_6"
.LASF17:
	.string	"lang_flag_7"
.LASF67:
	.string	"reverse_unsigned_shift"
.LASF47:
	.string	"binoptab"
.LASF7:
	.string	"size"
.LASF8:
	.string	"first"
.LASF65:
	.string	"left_shift"
.LASF5:
	.string	"mem_attrs"
.LASF71:
	.string	"punsignedp"
.LASF52:
	.string	"wider_mode"
.LASF61:
	.string	"outof_target"
.LASF2:
	.string	"common"
.LASF76:
	.string	"suffix"
.LASF46:
	.string	"methods"
.LASF28:
	.string	"lang_specific"
.LASF36:
	.string	"sequence_rtl_expr"
.LASF75:
	.string	"opname"
.LASF34:
	.string	"sequence_stack"
.LASF30:
	.string	"function_frequency"
.LASF13:
	.string	"lang_flag_3"
.LASF70:
	.string	"pcomparison"
.LASF33:
	.string	"next"
.LASF3:
	.string	"unsigned int"
.LASF51:
	.string	"this_mul_optab"
.LASF23:
	.string	"abstract_origin"
.LASF26:
	.string	"pointer_depth"
.LASF73:
	.string	"doing_unsigned"
.LASF64:
	.string	"shift_count"
.LASF54:
	.string	"entry_last"
.LASF27:
	.string	"user_align"
.LASF56:
	.string	"mode0"
.LASF69:
	.string	"subbitsize"
.LASF24:
	.string	"size_unit"
.LASF18:
	.string	"class"
.LASF53:
	.string	"temp"
.LASF21:
	.string	"value"
.LASF74:
	.string	"optable"
.LASF29:
	.string	"args_size"
.LASF41:
	.string	"target"
.LASF72:
	.string	"comparison"
.LASF63:
	.string	"outof_input"
.LASF44:
	.string	"no_extend"
.LASF20:
	.string	"purpose"
.LASF40:
	.string	"insns"
.LASF45:
	.string	"submode"
.LASF10:
	.string	"lang_flag_0"
.LASF14:
	.string	"lang_flag_4"
.LASF15:
	.string	"lang_flag_5"
.LASF22:
	.string	"abstract_flag"
.LASF68:
	.string	"unsigned_shift"
.LASF49:
	.string	"this_sub_optab"
.LASF0:
	.string	"code"
.LASF4:
	.string	"mode_class"
.LASF32:
	.string	"unsignedp"
.LASF19:
	.string	"ht_identifier"
.LASF6:
	.string	"offset"
.LASF37:
	.string	"insn_code"
.LASF55:
	.string	"icode"
.LASF50:
	.string	"this_neg_optab"
.LASF43:
	.string	"__FUNCTION__"
.LASF9:
	.string	"built_in_class"
.LASF58:
	.string	"equiv_value"
.LASF42:
	.string	"insn"
.LASF60:
	.string	"into_target"
.LASF48:
	.string	"this_add_optab"
.LASF38:
	.string	"libfunc"
.LASF57:
	.string	"xop0"
.LASF1:
	.string	"mode"
.LASF59:
	.string	"target_piece"
.LASF62:
	.string	"into_input"
.LASF25:
	.string	"attributes"
.LASF66:
	.string	"outof_word"
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
