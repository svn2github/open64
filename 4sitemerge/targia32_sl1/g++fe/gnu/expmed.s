	.file	"expmed.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl init_expmed
	.type	init_expmed, @function
init_expmed:
.LFB15:
	.file 1 "../../../kg++fe/gnu/expmed.c"
	.loc 1 110 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%edi
.LCFI2:
	pushl	%esi
.LCFI3:
	pushl	%ebx
.LCFI4:
	subl	$76, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 116 0
	call	start_sequence@PLT
	.loc 1 120 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$10000, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -44(%ebp)
	.loc 1 122 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	movl	%eax, zero_cost@GOTOFF(%ebx)
	.loc 1 123 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	$57, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	movl	%eax, add_cost@GOTOFF(%ebx)
	.loc 1 125 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$97, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 129 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -36(%ebp)
	.loc 1 136 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$86, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -32(%ebp)
	.loc 1 143 0
	call	init_recog@PLT
	.loc 1 145 0
	movl	$0, shift_cost@GOTOFF(%ebx)
	.loc 1 146 0
	movl	add_cost@GOTOFF(%ebx), %eax
	movl	%eax, shiftsub_cost@GOTOFF(%ebx)
	movl	shiftsub_cost@GOTOFF(%ebx), %eax
	movl	%eax, shiftadd_cost@GOTOFF(%ebx)
	.loc 1 148 0
	movl	$1, -28(%ebp)
	jmp	.L2
.L3:
.LBB2:
	.loc 1 150 0
	movl	-28(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L17
	movl	%eax, %edx
	xorl	%eax, %eax
.L17:
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -16(%ebp)
	.loc 1 151 0
	movl	-28(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	$32000, shiftsub_cost@GOTOFF(%ebx,%eax,4)
	movl	shiftsub_cost@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, shiftadd_cost@GOTOFF(%ebx,%edx,4)
	movl	shiftadd_cost@GOTOFF(%ebx,%edx,4), %eax
	movl	%eax, shift_cost@GOTOFF(%ebx,%ecx,4)
	.loc 1 153 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %esi
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, 12(%esi)
	.loc 1 154 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %edx
	leal	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	recog@PLT
	testl	%eax, %eax
	js	.L4
	.loc 1 155 0
	movl	-28(%ebp), %esi
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	$57, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	movl	%eax, shift_cost@GOTOFF(%ebx,%esi,4)
.L4:
	.loc 1 157 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 158 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %edx
	leal	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	recog@PLT
	testl	%eax, %eax
	js	.L6
	.loc 1 159 0
	movl	-28(%ebp), %esi
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	$57, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	movl	%eax, shiftadd_cost@GOTOFF(%ebx,%esi,4)
.L6:
	.loc 1 161 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 162 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %edx
	leal	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	recog@PLT
	testl	%eax, %eax
	js	.L8
	.loc 1 163 0
	movl	-28(%ebp), %esi
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	$57, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	movl	%eax, shiftsub_cost@GOTOFF(%ebx,%esi,4)
.L8:
.LBE2:
	.loc 1 148 0
	addl	$1, -28(%ebp)
.L2:
	cmpl	$63, -28(%ebp)
	jle	.L3
	.loc 1 166 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$87, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	$57, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	movl	%eax, negate_cost@GOTOFF(%ebx)
	.loc 1 168 0
	movl	$32, 4(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$89, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	$57, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	movl	%eax, %edx
	movl	add_cost@GOTOFF(%ebx), %eax
	addl	%eax, %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
	movl	%eax, sdiv_pow2_cheap@GOTOFF(%ebx)
	.loc 1 171 0
	movl	$32, 4(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$90, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	$57, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	movl	%eax, %edx
	movl	add_cost@GOTOFF(%ebx), %eax
	addl	%eax, %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
	movl	%eax, smod_pow2_cheap@GOTOFF(%ebx)
	.loc 1 175 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 176 0
	jmp	.L11
.L12:
	.loc 1 179 0
	movl	$10000, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -44(%ebp)
	.loc 1 180 0
	movl	-24(%ebp), %esi
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$91, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	$57, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	movl	%eax, div_cost@GOTOFF(%ebx,%esi,4)
	.loc 1 181 0
	movl	-24(%ebp), %esi
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	$57, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	movl	%eax, mul_cost@GOTOFF(%ebx,%esi,4)
	.loc 1 182 0
	movl	-24(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 183 0
	cmpl	$0, -20(%ebp)
	je	.L13
	.loc 1 185 0
	movl	-20(%ebp), %edi
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$131, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, %esi
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$131, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	$57, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	movl	%eax, mul_widen_cost@GOTOFF(%ebx,%edi,4)
	.loc 1 190 0
	movl	-24(%ebp), %edi
	movl	-24(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -64(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$131, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, %esi
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$131, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	-64(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$100, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$132, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	$57, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	movl	%eax, mul_highpart_cost@GOTOFF(%ebx,%edi,4)
.L13:
	.loc 1 177 0
	movl	-24(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
.L11:
	.loc 1 176 0
	cmpl	$0, -24(%ebp)
	jne	.L12
	.loc 1 204 0
	call	end_sequence@PLT
	.loc 1 205 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	init_expmed, .-init_expmed
.globl negate_rtx
	.type	negate_rtx, @function
negate_rtx:
.LFB16:
	.loc 1 215 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%ebx
.LCFI8:
	subl	$36, %esp
.LCFI9:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 216 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$87, (%esp)
	call	simplify_unary_operation@PLT
	movl	%eax, -8(%ebp)
	.loc 1 218 0
	cmpl	$0, -8(%ebp)
	jne	.L19
	.loc 1 219 0
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
	movl	%eax, -8(%ebp)
.L19:
	.loc 1 221 0
	movl	-8(%ebp), %eax
	.loc 1 222 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	negate_rtx, .-negate_rtx
	.section	.rodata
	.type	__FUNCTION__.12714, @object
	.size	__FUNCTION__.12714, 20
__FUNCTION__.12714:
	.string	"mode_for_extraction"
.LC0:
	.string	"../../../kg++fe/gnu/expmed.c"
	.text
.globl mode_for_extraction
	.type	mode_for_extraction, @function
mode_for_extraction:
.LFB17:
	.loc 1 232 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$36, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 235 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	cmpl	$1, -28(%ebp)
	je	.L25
	cmpl	$1, -28(%ebp)
	jb	.L24
	cmpl	$2, -28(%ebp)
	je	.L26
	jmp	.L23
.L24:
	.loc 1 238 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L27
	.loc 1 240 0
	movl	insn_data@GOT(%ebx), %eax
	leal	8420(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 241 0
	jmp	.L29
.L27:
	.loc 1 243 0
	movl	$54, -24(%ebp)
	jmp	.L30
.L25:
	.loc 1 246 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L31
	.loc 1 248 0
	movl	insn_data@GOT(%ebx), %eax
	leal	8380(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 249 0
	jmp	.L29
.L31:
	.loc 1 251 0
	movl	$54, -24(%ebp)
	jmp	.L30
.L26:
	.loc 1 254 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L33
	.loc 1 256 0
	movl	insn_data@GOT(%ebx), %eax
	leal	8400(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 257 0
	jmp	.L29
.L33:
	.loc 1 259 0
	movl	$54, -24(%ebp)
	jmp	.L30
.L23:
	.loc 1 262 0
	leal	__FUNCTION__.12714@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$262, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L29:
	.loc 1 265 0
	cmpl	$-1, 12(%ebp)
	jne	.L35
	.loc 1 266 0
	movl	$0, -24(%ebp)
	jmp	.L30
.L35:
	.loc 1 270 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movzwl	8(%eax), %eax
	testw	%ax, %ax
	jne	.L37
	.loc 1 271 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L30
.L37:
	.loc 1 272 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
.L30:
	movl	-24(%ebp), %eax
	.loc 1 273 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	mode_for_extraction, .-mode_for_extraction
	.section	.rodata
	.type	__FUNCTION__.12763, @object
	.size	__FUNCTION__.12763, 16
__FUNCTION__.12763:
	.string	"store_bit_field"
.globl __udivdi3
.globl __umoddi3
	.text
.globl store_bit_field
	.type	store_bit_field, @function
store_bit_field:
.LFB18:
	.loc 1 299 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	pushl	%edi
.LCFI16:
	pushl	%esi
.LCFI17:
	pushl	%ebx
.LCFI18:
	subl	$604, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -136(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -144(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -140(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -148(%ebp)
	.loc 1 301 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L41
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L43
	movl	$64, -548(%ebp)
	jmp	.L45
.L43:
	movl	$32, -548(%ebp)
.L45:
	movl	-548(%ebp), %eax
	movl	%eax, -552(%ebp)
	jmp	.L46
.L41:
	movl	$8, -552(%ebp)
.L46:
	movl	-552(%ebp), %edx
	movl	%edx, -104(%ebp)
	.loc 1 302 0
	movl	-104(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	.loc 1 303 0
	movl	-104(%ebp), %eax
	movl	$0, %edx
	movl	-144(%ebp), %esi
	movl	-140(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	.loc 1 304 0
	movl	8(%ebp), %eax
	movl	%eax, -100(%ebp)
	.loc 1 307 0
	movl	$3, 4(%esp)
	movl	$0, (%esp)
	call	mode_for_extraction@PLT
	movl	%eax, -92(%ebp)
	.loc 1 311 0
	cmpl	$0, -148(%ebp)
	js	.L57
	.loc 1 312 0
	movl	-152(%ebp), %esi
	movl	-148(%ebp), %edi
	movl	%esi, -544(%ebp)
	movl	%edi, -540(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L49
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L51
.L49:
	movl	$128, -536(%ebp)
	movl	$0, -532(%ebp)
	jmp	.L52
.L51:
	movl	$64, -536(%ebp)
	movl	$0, -532(%ebp)
.L52:
	movl	-536(%ebp), %eax
	movl	-532(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -528(%ebp)
	movl	%edx, -524(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L53
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L55
.L53:
	movl	$16, -520(%ebp)
	movl	$0, -516(%ebp)
	jmp	.L56
.L55:
	movl	$8, -520(%ebp)
	movl	$0, -516(%ebp)
.L56:
	movl	-524(%ebp), %ecx
	imull	-520(%ebp), %ecx
	movl	-516(%ebp), %eax
	imull	-528(%ebp), %eax
	addl	%eax, %ecx
	movl	-528(%ebp), %eax
	mull	-520(%ebp)
	movl	%eax, -568(%ebp)
	movl	%edx, -564(%ebp)
	addl	-564(%ebp), %ecx
	movl	%ecx, -564(%ebp)
	movl	-544(%ebp), %eax
	movl	-540(%ebp), %edx
	subl	-568(%ebp), %eax
	sbbl	-564(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 315 0
	jmp	.L57
.L58:
	.loc 1 322 0
	movl	-100(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -512(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L59
	movl	$8, -508(%ebp)
	jmp	.L61
.L59:
	movl	$4, -508(%ebp)
.L61:
	movl	-512(%ebp), %eax
	movl	$0, %edx
	divl	-508(%ebp)
	movl	$0, %edx
	addl	%eax, -120(%ebp)
	adcl	%edx, -116(%ebp)
	.loc 1 325 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -100(%ebp)
.L57:
	.loc 1 315 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L58
	.loc 1 328 0
	movl	$0, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 32(%ebp)
	.loc 1 330 0
	movl	flag_force_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L63
.LBB3:
	.loc 1 332 0
	movl	generating_concat_p@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 333 0
	movl	generating_concat_p@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 334 0
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	force_not_mem@PLT
	movl	%eax, 32(%ebp)
	.loc 1 335 0
	movl	generating_concat_p@GOT(%ebx), %edx
	movl	-88(%ebp), %eax
	movl	%eax, (%edx)
.L63:
.LBE3:
	.loc 1 345 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L65
	movl	$64, -504(%ebp)
	movl	$0, -500(%ebp)
	jmp	.L67
.L65:
	movl	$32, -504(%ebp)
	movl	$0, -500(%ebp)
.L67:
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	-504(%ebp), %esi
	movl	-500(%ebp), %edi
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__umoddi3@PLT
	shrdl	$3, %edx, %eax
	shrl	$3, %edx
	movl	%eax, -492(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L68
	movl	$8, -488(%ebp)
	movl	$0, -484(%ebp)
	jmp	.L70
.L68:
	movl	$4, -488(%ebp)
	movl	$0, -484(%ebp)
.L70:
	movl	-484(%ebp), %ecx
	imull	-120(%ebp), %ecx
	movl	-116(%ebp), %eax
	imull	-488(%ebp), %eax
	addl	%eax, %ecx
	movl	-120(%ebp), %eax
	mull	-488(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	addl	-492(%ebp), %eax
	movl	%eax, -96(%ebp)
	.loc 1 348 0
	movl	-112(%ebp), %eax
	orl	-108(%ebp), %eax
	testl	%eax, %eax
	jne	.L71
	movl	28(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%edx, %ecx
	xorl	-132(%ebp), %ecx
	xorl	-136(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L71
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L74
	movl	28(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -468(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L76
	movl	$8, -464(%ebp)
	jmp	.L78
.L76:
	movl	$4, -464(%ebp)
.L78:
	movl	-464(%ebp), %edi
	cmpl	%edi, -468(%ebp)
	jge	.L79
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	28(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jne	.L81
.L79:
	movl	28(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	-96(%ebp), %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L81
	movl	$1, -472(%ebp)
	jmp	.L83
.L81:
	movl	$0, -472(%ebp)
.L83:
	movzbl	-472(%ebp), %eax
	movb	%al, -473(%ebp)
	jmp	.L84
.L74:
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	$3, %esi, %edi
	sall	$3, %esi
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L85
	movl	-100(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L87
	movl	-100(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -456(%ebp)
	jmp	.L89
.L87:
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L90
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -452(%ebp)
	jmp	.L92
.L90:
	movl	$8, -452(%ebp)
.L92:
	movl	-452(%ebp), %edx
	movl	%edx, -456(%ebp)
.L89:
	movl	28(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -556(%ebp)
	movl	-456(%ebp), %eax
	movl	$0, %edx
	divl	-556(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L85
	movl	$1, -460(%ebp)
	jmp	.L94
.L85:
	movl	$0, -460(%ebp)
.L94:
	movzbl	-460(%ebp), %edx
	movb	%dl, -473(%ebp)
.L84:
	cmpb	$0, -473(%ebp)
	je	.L71
	.loc 1 358 0
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	28(%ebp), %eax
	je	.L96
	.loc 1 360 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L98
	.loc 1 362 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	28(%ebp), %eax
	je	.L100
	movl	28(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L100
	movl	28(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$3, %eax
	jne	.L103
.L100:
	.loc 1 365 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -100(%ebp)
	.loc 1 362 0
	jmp	.L98
.L103:
	.loc 1 370 0
	leal	__FUNCTION__.12763@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$370, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L98:
	.loc 1 372 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L104
	.loc 1 373 0
	movl	-96(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -100(%ebp)
	jmp	.L96
.L104:
	.loc 1 375 0
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -100(%ebp)
.L96:
	.loc 1 377 0
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 378 0
	movl	32(%ebp), %ecx
	movl	%ecx, -448(%ebp)
	jmp	.L106
.L71:
.LBB4:
	.loc 1 386 0
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	int_mode_for_mode@PLT
	movl	%eax, -84(%ebp)
	.loc 1 387 0
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-84(%ebp), %eax
	je	.L107
	.loc 1 389 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L109
	.loc 1 390 0
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -100(%ebp)
	jmp	.L107
.L109:
	.loc 1 391 0
	cmpl	$52, -84(%ebp)
	je	.L111
	.loc 1 392 0
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -100(%ebp)
	jmp	.L107
.L111:
	.loc 1 394 0
	leal	__FUNCTION__.12763@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$394, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L107:
.LBE4:
	.loc 1 400 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L113
	.loc 1 402 0
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	shallow_copy_rtx@PLT
	movl	%eax, -100(%ebp)
	.loc 1 403 0
	movl	$0, 4(%esp)
	movl	$0, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 404 0
	movl	$0, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_expr@PLT
.L113:
	.loc 1 410 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L115
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L115
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	cmpl	-104(%ebp), %eax
	jae	.L115
	.loc 1 413 0
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %edx
	movl	-104(%ebp), %eax
	subl	%edx, %eax
	movl	$0, %edx
	addl	%eax, -112(%ebp)
	adcl	%edx, -108(%ebp)
.L115:
	.loc 1 418 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L119
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L121
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	-112(%ebp), %esi
	movl	-108(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -440(%ebp)
	movl	%edi, -436(%ebp)
	movl	-104(%ebp), %esi
	movl	$0, %edi
	movl	-440(%ebp), %eax
	xorl	%esi, %eax
	movl	-436(%ebp), %edx
	xorl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	sete	-441(%ebp)
	jmp	.L123
.L121:
	movl	-108(%ebp), %eax
	orl	-112(%ebp), %eax
	testl	%eax, %eax
	sete	-441(%ebp)
.L123:
	cmpb	$0, -441(%ebp)
	je	.L119
	movl	28(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%edx, %ecx
	xorl	-132(%ebp), %ecx
	xorl	-136(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L119
	movl	optab_table@GOT(%ebx), %eax
	movl	124(%eax), %edx
	movl	28(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L119
.LBB5:
	.loc 1 424 0
	movl	optab_table@GOT(%ebx), %eax
	movl	124(%eax), %edx
	movl	28(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -80(%ebp)
	.loc 1 427 0
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L127
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L129
.L127:
	.loc 1 428 0
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, 32(%ebp)
	.loc 1 427 0
	jmp	.L130
.L129:
	.loc 1 429 0
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L130
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L130
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L130
	.loc 1 432 0
	movl	$0, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, 32(%ebp)
.L130:
	.loc 1 434 0
	movl	-80(%ebp), %edx
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
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L134
	.loc 1 435 0
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, 32(%ebp)
.L134:
	.loc 1 437 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L136
	.loc 1 439 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	28(%ebp), %eax
	je	.L138
	movl	28(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L138
	movl	28(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$3, %eax
	jne	.L141
.L138:
	.loc 1 442 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -100(%ebp)
	.loc 1 439 0
	jmp	.L136
.L141:
	.loc 1 447 0
	leal	__FUNCTION__.12763@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$447, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L136:
	.loc 1 450 0
	movl	-80(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -428(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L142
	movl	$64, -424(%ebp)
	movl	$0, -420(%ebp)
	jmp	.L144
.L142:
	movl	$32, -424(%ebp)
	movl	$0, -420(%ebp)
.L144:
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	-424(%ebp), %esi
	movl	-420(%ebp), %edi
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__umoddi3@PLT
	shrdl	$3, %edx, %eax
	shrl	$3, %edx
	movl	%eax, -412(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L145
	movl	$8, -408(%ebp)
	movl	$0, -404(%ebp)
	jmp	.L147
.L145:
	movl	$4, -408(%ebp)
	movl	$0, -404(%ebp)
.L147:
	movl	-404(%ebp), %ecx
	imull	-120(%ebp), %ecx
	movl	-116(%ebp), %eax
	imull	-408(%ebp), %eax
	addl	%eax, %ecx
	movl	-120(%ebp), %eax
	mull	-408(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	addl	-412(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, %edx
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*-428(%ebp)
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 456 0
	movl	32(%ebp), %edi
	movl	%edi, -448(%ebp)
	jmp	.L106
.L119:
.LBE5:
	.loc 1 461 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L148
	movl	$64, -400(%ebp)
	movl	$0, -396(%ebp)
	jmp	.L150
.L148:
	movl	$32, -400(%ebp)
	movl	$0, -396(%ebp)
.L150:
	movl	-396(%ebp), %eax
	cmpl	-132(%ebp), %eax
	ja	.L151
	movl	-396(%ebp), %edx
	cmpl	-132(%ebp), %edx
	jb	.L153
	movl	-400(%ebp), %ecx
	cmpl	-136(%ebp), %ecx
	jae	.L151
.L153:
.LBB6:
	.loc 1 469 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L154
	cmpl	$52, 28(%ebp)
	je	.L154
	movl	$1, -388(%ebp)
	jmp	.L157
.L154:
	movl	$0, -388(%ebp)
.L157:
	movl	-388(%ebp), %esi
	movl	%esi, -76(%ebp)
	.loc 1 470 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L158
	movl	$63, -384(%ebp)
	movl	$0, -380(%ebp)
	jmp	.L160
.L158:
	movl	$31, -384(%ebp)
	movl	$0, -380(%ebp)
.L160:
	movl	-384(%ebp), %eax
	movl	-380(%ebp), %edx
	addl	-136(%ebp), %eax
	adcl	-132(%ebp), %edx
	movl	%eax, -376(%ebp)
	movl	%edx, -372(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L161
	movl	$64, -368(%ebp)
	movl	$0, -364(%ebp)
	jmp	.L163
.L161:
	movl	$32, -368(%ebp)
	movl	$0, -364(%ebp)
.L163:
	movl	-368(%ebp), %edx
	movl	-364(%ebp), %ecx
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	-376(%ebp), %esi
	movl	-372(%ebp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -72(%ebp)
	.loc 1 478 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L164
	movl	$64, -360(%ebp)
	jmp	.L166
.L164:
	movl	$32, -360(%ebp)
.L166:
	movl	-360(%ebp), %eax
	imull	-72(%ebp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	smallest_mode_for_size@PLT
	movl	%eax, 28(%ebp)
	.loc 1 480 0
	movl	$0, -68(%ebp)
	jmp	.L167
.L168:
.LBB7:
	.loc 1 484 0
	cmpl	$0, -76(%ebp)
	je	.L169
	movl	-68(%ebp), %eax
	movl	-72(%ebp), %edx
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	subl	$1, %eax
	movl	%eax, -356(%ebp)
	jmp	.L171
.L169:
	movl	-68(%ebp), %eax
	movl	%eax, -356(%ebp)
.L171:
	movl	-356(%ebp), %edx
	movl	%edx, -64(%ebp)
	.loc 1 489 0
	cmpl	$0, -76(%ebp)
	je	.L172
	movl	-136(%ebp), %ecx
	movl	%ecx, -344(%ebp)
	movl	-68(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -340(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L174
	movl	$64, -336(%ebp)
	jmp	.L176
.L174:
	movl	$32, -336(%ebp)
.L176:
	movl	-340(%ebp), %eax
	imull	-336(%ebp), %eax
	movl	-344(%ebp), %esi
	subl	%eax, %esi
	movl	%esi, %eax
	testl	%eax, %eax
	jle	.L177
	movl	-136(%ebp), %edi
	movl	%edi, -332(%ebp)
	movl	-68(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -328(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L179
	movl	$64, -324(%ebp)
	jmp	.L181
.L179:
	movl	$32, -324(%ebp)
.L181:
	movl	-328(%ebp), %eax
	imull	-324(%ebp), %eax
	movl	-332(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -348(%ebp)
	jmp	.L182
.L177:
	movl	$0, -348(%ebp)
.L182:
	movl	-348(%ebp), %ecx
	movl	%ecx, -352(%ebp)
	jmp	.L183
.L172:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L184
	movl	$64, -320(%ebp)
	jmp	.L186
.L184:
	movl	$32, -320(%ebp)
.L186:
	movl	-68(%ebp), %eax
	imull	-320(%ebp), %eax
	movl	%eax, -352(%ebp)
.L183:
	movl	-352(%ebp), %esi
	movl	%esi, -60(%ebp)
	.loc 1 491 0
	movl	32(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L187
	movl	32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -316(%ebp)
	jmp	.L189
.L187:
	movl	28(%ebp), %edi
	movl	%edi, -316(%ebp)
.L189:
	movl	-316(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword_force@PLT
	movl	%eax, -312(%ebp)
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -308(%ebp)
	movl	-60(%ebp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	-144(%ebp), %esi
	adcl	-140(%ebp), %edi
	movl	%esi, -304(%ebp)
	movl	%edi, -300(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L190
	movl	$64, -288(%ebp)
	movl	$0, -284(%ebp)
	jmp	.L192
.L190:
	movl	$32, -288(%ebp)
	movl	$0, -284(%ebp)
.L192:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L193
	movl	$64, -276(%ebp)
	jmp	.L195
.L193:
	movl	$32, -276(%ebp)
.L195:
	movl	-276(%ebp), %eax
	imull	-68(%ebp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, -568(%ebp)
	movl	%edx, -564(%ebp)
	movl	-568(%ebp), %edx
	movl	-564(%ebp), %ecx
	subl	%esi, %edx
	sbbl	%edi, %ecx
	movl	%edx, -272(%ebp)
	movl	%ecx, -268(%ebp)
	movl	-268(%ebp), %ecx
	cmpl	%ecx, -284(%ebp)
	ja	.L196
	movl	-268(%ebp), %esi
	cmpl	%esi, -284(%ebp)
	jb	.L198
	movl	-272(%ebp), %edi
	cmpl	%edi, -288(%ebp)
	jae	.L196
.L198:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L199
	movl	$64, -264(%ebp)
	movl	$0, -260(%ebp)
	jmp	.L201
.L199:
	movl	$32, -264(%ebp)
	movl	$0, -260(%ebp)
.L201:
	movl	-264(%ebp), %eax
	movl	-260(%ebp), %edx
	movl	%eax, -296(%ebp)
	movl	%edx, -292(%ebp)
	jmp	.L202
.L196:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L203
	movl	$64, -252(%ebp)
	jmp	.L205
.L203:
	movl	$32, -252(%ebp)
.L205:
	movl	-252(%ebp), %eax
	imull	-68(%ebp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	movl	-136(%ebp), %edx
	movl	-132(%ebp), %ecx
	movl	%edx, -568(%ebp)
	movl	%ecx, -564(%ebp)
	movl	-568(%ebp), %eax
	movl	-564(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, -296(%ebp)
	movl	%edx, -292(%ebp)
.L202:
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	-312(%ebp), %edx
	movl	%edx, 24(%esp)
	movl	-308(%ebp), %ecx
	movl	%ecx, 20(%esp)
	movl	-304(%ebp), %esi
	movl	-300(%ebp), %edi
	movl	%esi, 12(%esp)
	movl	%edi, 16(%esp)
	movl	-296(%ebp), %eax
	movl	-292(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	store_bit_field@PLT
.LBE7:
	.loc 1 480 0
	addl	$1, -68(%ebp)
.L167:
	movl	-68(%ebp), %eax
	cmpl	-72(%ebp), %eax
	jb	.L168
	.loc 1 500 0
	movl	32(%ebp), %edx
	movl	%edx, -448(%ebp)
	jmp	.L106
.L151:
.LBE6:
	.loc 1 509 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L207
	.loc 1 511 0
	movl	-120(%ebp), %eax
	orl	-116(%ebp), %eax
	testl	%eax, %eax
	jne	.L209
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -248(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L211
	movl	$8, -244(%ebp)
	jmp	.L213
.L211:
	movl	$4, -244(%ebp)
.L213:
	movl	-244(%ebp), %ecx
	cmpl	%ecx, -248(%ebp)
	jle	.L214
.L209:
	.loc 1 514 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L215
	.loc 1 520 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L217
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jne	.L217
	.loc 1 523 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -100(%ebp)
	.loc 1 520 0
	jmp	.L215
.L217:
	.loc 1 525 0
	leal	__FUNCTION__.12763@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$525, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L215:
	.loc 1 527 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L220
	movl	$8, -240(%ebp)
	movl	$0, -236(%ebp)
	jmp	.L222
.L220:
	movl	$4, -240(%ebp)
	movl	$0, -236(%ebp)
.L222:
	movl	-236(%ebp), %ecx
	imull	-120(%ebp), %ecx
	movl	-116(%ebp), %eax
	imull	-240(%ebp), %eax
	addl	%eax, %ecx
	movl	-120(%ebp), %eax
	mull	-240(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -228(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L223
	movl	$64, -224(%ebp)
	jmp	.L225
.L223:
	movl	$32, -224(%ebp)
.L225:
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	-224(%ebp), %esi
	movl	%esi, (%esp)
	call	mode_for_size@PLT
	movl	-228(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	-100(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -100(%ebp)
.L214:
	.loc 1 530 0
	movl	$0, -120(%ebp)
	movl	$0, -116(%ebp)
	jmp	.L226
.L207:
	.loc 1 533 0
	movl	$1, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, -100(%ebp)
.L226:
	.loc 1 539 0
	movl	32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	je	.L227
	movl	32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$3, %eax
	je	.L227
	.loc 1 541 0
	movl	32(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L230
	movl	32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	int_mode_for_mode@PLT
	movl	%eax, -220(%ebp)
	jmp	.L232
.L230:
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -220(%ebp)
.L232:
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-220(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, 32(%ebp)
.L227:
	.loc 1 548 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L233
	movl	32(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L233
	movl	-136(%ebp), %eax
	xorl	$1, %eax
	orl	-132(%ebp), %eax
	testl	%eax, %eax
	jne	.L236
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L233
.L236:
	movl	-92(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -216(%ebp)
	movl	-216(%ebp), %edx
	movl	%edx, -216(%ebp)
	movl	$0, -212(%ebp)
	movl	-212(%ebp), %ecx
	cmpl	-132(%ebp), %ecx
	jb	.L233
	movl	-212(%ebp), %esi
	cmpl	-132(%ebp), %esi
	ja	.L239
	movl	-216(%ebp), %edi
	cmpl	-136(%ebp), %edi
	jb	.L233
.L239:
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L240
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L242
.L240:
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	-136(%ebp), %esi
	movl	-132(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -208(%ebp)
	movl	%edi, -204(%ebp)
	movl	-92(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -200(%ebp)
	movl	-200(%ebp), %edi
	movl	%edi, -200(%ebp)
	movl	$0, -196(%ebp)
	movl	-196(%ebp), %eax
	cmpl	%eax, -204(%ebp)
	ja	.L233
	movl	-196(%ebp), %edx
	cmpl	%edx, -204(%ebp)
	jb	.L242
	movl	-200(%ebp), %ecx
	cmpl	%ecx, -208(%ebp)
	ja	.L233
.L242:
.LBB8:
	.loc 1 556 0
	movl	-112(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 558 0
	movl	-100(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 559 0
	call	get_last_insn@PLT
	movl	%eax, -44(%ebp)
	.loc 1 561 0
	movl	$3, 4(%esp)
	movl	$0, (%esp)
	call	mode_for_extraction@PLT
	movl	%eax, -36(%ebp)
	.loc 1 562 0
	movl	volatile_ok@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 564 0
	movl	volatile_ok@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 570 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L244
	movl	insn_data@GOT(%ebx), %eax
	movl	8432(%eax), %eax
	movl	(%eax), %edx
	movl	$0, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L244
.LBB9:
	.loc 1 582 0
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L247
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-36(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L249
.L247:
	.loc 1 584 0
	movl	-100(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -192(%ebp)
	movl	-100(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L250
	movl	-100(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -188(%ebp)
	jmp	.L252
.L250:
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L253
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -184(%ebp)
	jmp	.L255
.L253:
	movl	$8, -184(%ebp)
.L255:
	movl	-184(%ebp), %esi
	movl	%esi, -188(%ebp)
.L252:
	movl	-144(%ebp), %edx
	movl	-136(%ebp), %ecx
	movl	-192(%ebp), %edi
	movl	%edi, 16(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-188(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	get_best_mode@PLT
	movl	%eax, -24(%ebp)
	.loc 1 582 0
	jmp	.L256
.L249:
	.loc 1 588 0
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
.L256:
	.loc 1 590 0
	cmpl	$0, -24(%ebp)
	je	.L233
	movl	-24(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -180(%ebp)
	movl	-100(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L258
	movl	-100(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -176(%ebp)
	jmp	.L260
.L258:
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L261
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -172(%ebp)
	jmp	.L263
.L261:
	movl	$8, -172(%ebp)
.L263:
	movl	-172(%ebp), %edx
	movl	%edx, -176(%ebp)
.L260:
	movl	-176(%ebp), %ecx
	cmpl	%ecx, -180(%ebp)
	ja	.L233
	.loc 1 597 0
	movl	-24(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -104(%ebp)
	.loc 1 598 0
	movl	-104(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -168(%ebp)
	movl	%edx, -164(%ebp)
	movl	-24(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	-164(%ebp), %ecx
	imull	%eax, %ecx
	movl	-168(%ebp), %esi
	imull	%edx, %esi
	addl	%esi, %ecx
	mull	-168(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	.loc 1 599 0
	movl	-104(%ebp), %eax
	movl	$0, %edx
	movl	-144(%ebp), %esi
	movl	-140(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	.loc 1 600 0
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -100(%ebp)
	.loc 1 604 0
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_reg@PLT
	movl	%eax, -28(%ebp)
	.loc 1 605 0
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	store_bit_field@PLT
	.loc 1 607 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 608 0
	movl	32(%ebp), %esi
	movl	%esi, -448(%ebp)
	jmp	.L106
.L244:
.LBE9:
	.loc 1 610 0
	movl	volatile_ok@GOT(%ebx), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 613 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L265
	.loc 1 614 0
	movl	-120(%ebp), %edx
	movl	-116(%ebp), %ecx
	movl	byte_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -48(%ebp)
.L265:
	.loc 1 618 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L267
	.loc 1 621 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -48(%ebp)
.L267:
	.loc 1 622 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L269
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-36(%ebp), %eax
	je	.L269
	.loc 1 623 0
	movl	$0, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -48(%ebp)
.L269:
	.loc 1 628 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L272
	.loc 1 629 0
	movl	-136(%ebp), %edx
	movl	-104(%ebp), %eax
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, %edx
	movl	-56(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -56(%ebp)
.L272:
	.loc 1 636 0
	movl	-36(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -104(%ebp)
	.loc 1 639 0
	movl	32(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 640 0
	movl	32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-36(%ebp), %eax
	je	.L274
	.loc 1 642 0
	movl	32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -160(%ebp)
	movl	-160(%ebp), %esi
	movl	%esi, -160(%ebp)
	movl	$0, -156(%ebp)
	movl	-156(%ebp), %edi
	cmpl	-132(%ebp), %edi
	jb	.L276
	movl	-156(%ebp), %eax
	cmpl	-132(%ebp), %eax
	ja	.L278
	movl	-160(%ebp), %edx
	cmpl	-136(%ebp), %edx
	jb	.L276
.L278:
	.loc 1 648 0
	movl	32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-36(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jae	.L279
.LBB10:
	.loc 1 652 0
	movl	32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_subreg@PLT
	movl	%eax, -20(%ebp)
	.loc 1 653 0
	cmpl	$0, -20(%ebp)
	jne	.L281
	.loc 1 654 0
	movl	32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	force_reg@PLT
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_gen_subreg@PLT
	movl	%eax, -20(%ebp)
.L281:
	.loc 1 658 0
	movl	-20(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L274
.L279:
.LBE10:
	.loc 1 661 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -52(%ebp)
	jmp	.L274
.L276:
	.loc 1 663 0
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L284
	.loc 1 664 0
	movl	32(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	gen_int_mode@PLT
	movl	%eax, -52(%ebp)
	jmp	.L274
.L284:
	.loc 1 665 0
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L274
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L274
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L274
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L274
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L274
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L274
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L274
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L274
	.loc 1 670 0
	leal	__FUNCTION__.12763@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$670, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L274:
	.loc 1 675 0
	movl	insn_data@GOT(%ebx), %eax
	movl	8432(%eax), %eax
	addl	$36, %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L294
	.loc 1 677 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -52(%ebp)
.L294:
	.loc 1 679 0
	movl	-56(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %esi
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_insv@PLT
	movl	%eax, -40(%ebp)
	.loc 1 680 0
	cmpl	$0, -40(%ebp)
	je	.L296
	.loc 1 681 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	jmp	.L299
.L296:
	.loc 1 684 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
	.loc 1 685 0
	movl	32(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	store_fixed_bit_field
	.loc 1 548 0
	jmp	.L299
.L233:
.LBE8:
	.loc 1 691 0
	movl	32(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	store_fixed_bit_field
.L299:
	.loc 1 692 0
	movl	32(%ebp), %ecx
	movl	%ecx, -448(%ebp)
.L106:
	movl	-448(%ebp), %eax
	.loc 1 693 0
	addl	$604, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE18:
	.size	store_bit_field, .-store_bit_field
	.section	.rodata
	.type	__FUNCTION__.13481, @object
	.size	__FUNCTION__.13481, 22
__FUNCTION__.13481:
	.string	"store_fixed_bit_field"
	.text
	.type	store_fixed_bit_field, @function
store_fixed_bit_field:
.LFB19:
	.loc 1 711 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	pushl	%edi
.LCFI22:
	pushl	%esi
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$188, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -84(%ebp)
	.loc 1 713 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L302
	movl	$64, -140(%ebp)
	jmp	.L304
.L302:
	movl	$32, -140(%ebp)
.L304:
	movl	-140(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 715 0
	movl	$0, -28(%ebp)
	.loc 1 716 0
	movl	$0, -24(%ebp)
	.loc 1 725 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L305
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L307
.L305:
	.loc 1 727 0
	movl	-72(%ebp), %eax
	orl	-68(%ebp), %eax
	testl	%eax, %eax
	je	.L308
	.loc 1 728 0
	leal	__FUNCTION__.13481@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$728, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L308:
	.loc 1 730 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -136(%ebp)
	movl	%edi, -132(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L310
	movl	$64, -128(%ebp)
	movl	$0, -124(%ebp)
	jmp	.L312
.L310:
	movl	$32, -128(%ebp)
	movl	$0, -124(%ebp)
.L312:
	movl	-124(%ebp), %edi
	cmpl	%edi, -132(%ebp)
	jb	.L317
	movl	-124(%ebp), %eax
	cmpl	%eax, -132(%ebp)
	ja	.L315
	movl	-128(%ebp), %edx
	cmpl	%edx, -136(%ebp)
	jbe	.L317
.L315:
	.loc 1 732 0
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	store_split_bit_field
	.loc 1 733 0
	jmp	.L371
.L307:
	.loc 1 743 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	.loc 1 744 0
	movl	-44(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	testw	%ax, %ax
	je	.L318
	movl	-44(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	cmpw	%ax, %cx
	jbe	.L320
.L318:
	.loc 1 746 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L320:
	.loc 1 747 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -116(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L321
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L323
.L321:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L324
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -108(%ebp)
	jmp	.L326
.L324:
	movl	$8, -108(%ebp)
.L326:
	movl	-108(%ebp), %esi
	movl	%esi, -112(%ebp)
.L323:
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	%eax, %edx
	movl	-88(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	movl	-80(%ebp), %ecx
	movl	-116(%ebp), %edi
	movl	%edi, 16(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	get_best_mode@PLT
	movl	%eax, -44(%ebp)
	.loc 1 750 0
	cmpl	$0, -44(%ebp)
	jne	.L327
	.loc 1 754 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	addl	-88(%ebp), %edx
	adcl	-84(%ebp), %ecx
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	store_split_bit_field
	.loc 1 756 0
	jmp	.L371
.L327:
	.loc 1 759 0
	movl	-44(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -40(%ebp)
	.loc 1 764 0
	movl	-40(%ebp), %esi
	movl	$0, %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	-100(%ebp), %edi
	cmpl	-84(%ebp), %edi
	ja	.L329
	movl	-100(%ebp), %eax
	cmpl	-84(%ebp), %eax
	jb	.L331
	movl	-104(%ebp), %edx
	cmpl	-88(%ebp), %edx
	ja	.L329
.L331:
	.loc 1 766 0
	movl	-40(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-40(%ebp), %eax
	shrl	$3, %eax
	movl	%eax, -160(%ebp)
	movl	$0, -156(%ebp)
	movl	-160(%ebp), %ecx
	imull	%edi, %ecx
	movl	-156(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -144(%ebp)
	addl	-144(%ebp), %ecx
	movl	-160(%ebp), %eax
	mull	%esi
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
	addl	-156(%ebp), %ecx
	movl	%ecx, -156(%ebp)
	movl	-160(%ebp), %esi
	movl	-156(%ebp), %edi
	addl	%esi, -72(%ebp)
	adcl	%edi, -68(%ebp)
	.loc 1 767 0
	movl	-40(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-40(%ebp), %eax
	shrl	$3, %eax
	movl	%eax, -160(%ebp)
	movl	$0, -156(%ebp)
	movl	-160(%ebp), %ecx
	imull	%edi, %ecx
	movl	-156(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -148(%ebp)
	addl	-148(%ebp), %ecx
	movl	-160(%ebp), %eax
	mull	%esi
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
	addl	-156(%ebp), %ecx
	movl	%ecx, -156(%ebp)
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	shldl	$3, %eax, %edx
	sall	$3, %eax
	subl	%eax, -88(%ebp)
	sbbl	%edx, -84(%ebp)
.L329:
	.loc 1 775 0
	movl	-40(%ebp), %eax
	shrl	$3, %eax
	movl	$0, %edx
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	shldl	$3, %eax, %edx
	sall	$3, %eax
	addl	%eax, -88(%ebp)
	adcl	%edx, -84(%ebp)
	.loc 1 776 0
	movl	-40(%ebp), %eax
	shrl	$3, %eax
	movl	$0, %edx
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	subl	%eax, -72(%ebp)
	sbbl	%edx, -68(%ebp)
	.loc 1 777 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, 8(%ebp)
.L317:
	.loc 1 780 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	.loc 1 788 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L332
	.loc 1 792 0
	movl	-40(%ebp), %eax
	movl	$0, %edx
	subl	-80(%ebp), %eax
	sbbl	-76(%ebp), %edx
	subl	-88(%ebp), %eax
	sbbl	-84(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
.L332:
	.loc 1 800 0
	movl	36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L334
.LBB11:
	.loc 1 802 0
	movl	36(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 804 0
	cmpl	$0, -76(%ebp)
	ja	.L336
	cmpl	$0, -76(%ebp)
	jb	.L338
	cmpl	$63, -80(%ebp)
	ja	.L336
.L338:
	.loc 1 805 0
	movl	-80(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L373
	movl	%eax, %edx
	xorl	%eax, %eax
.L373:
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	-56(%ebp), %eax
	andl	%esi, %eax
	movl	-52(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
.L336:
	.loc 1 807 0
	movl	-56(%ebp), %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	jne	.L339
	.loc 1 808 0
	movl	$1, -28(%ebp)
	jmp	.L341
.L339:
	.loc 1 809 0
	cmpl	$0, -76(%ebp)
	ja	.L342
	cmpl	$0, -76(%ebp)
	jb	.L344
	cmpl	$63, -80(%ebp)
	ja	.L342
.L344:
	movl	-80(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L372
	movl	%eax, %edx
	xorl	%eax, %eax
.L372:
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%edx, %ecx
	xorl	-52(%ebp), %ecx
	xorl	-56(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L345
.L342:
	movl	-80(%ebp), %eax
	xorl	$64, %eax
	orl	-76(%ebp), %eax
	testl	%eax, %eax
	jne	.L341
	movl	-52(%ebp), %eax
	xorl	$-1, %eax
	movl	-56(%ebp), %edx
	xorl	$-1, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L341
.L345:
	.loc 1 812 0
	movl	$1, -24(%ebp)
.L341:
	.loc 1 814 0
	movl	-80(%ebp), %eax
	movl	-88(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	lshift_value
	movl	%eax, 36(%ebp)
	jmp	.L347
.L334:
.LBE11:
.LBB12:
	.loc 1 819 0
	movl	36(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%edx, %ecx
	xorl	-76(%ebp), %ecx
	xorl	-80(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L348
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	-88(%ebp), %esi
	movl	-84(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	-44(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L348
	movl	$1, -96(%ebp)
	jmp	.L351
.L348:
	movl	$0, -96(%ebp)
.L351:
	movl	-96(%ebp), %edx
	movl	%edx, -20(%ebp)
	.loc 1 821 0
	movl	36(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-44(%ebp), %eax
	je	.L352
	.loc 1 823 0
	movl	36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L354
	movl	36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L356
.L354:
	movl	-44(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	36(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jae	.L356
	.loc 1 825 0
	movl	36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, 36(%ebp)
	.loc 1 823 0
	jmp	.L352
.L356:
	.loc 1 827 0
	movl	$1, 8(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, 36(%ebp)
.L352:
	.loc 1 830 0
	cmpl	$0, -20(%ebp)
	je	.L358
	.loc 1 831 0
	movl	-80(%ebp), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	mask_rtx
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	72(%eax), %ecx
	movl	$3, 24(%esp)
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, 36(%ebp)
.L358:
	.loc 1 834 0
	movl	-88(%ebp), %eax
	orl	-84(%ebp), %eax
	testl	%eax, %eax
	je	.L347
	.loc 1 835 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	expand_shift@PLT
	movl	%eax, 36(%ebp)
.L347:
.LBE12:
	.loc 1 842 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L361
	movl	flag_force_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L363
.L361:
	movl	8(%ebp), %esi
	movl	%esi, -92(%ebp)
	jmp	.L364
.L363:
	movl	$0, -92(%ebp)
.L364:
	movl	-92(%ebp), %edi
	movl	%edi, -36(%ebp)
	.loc 1 844 0
	cmpl	$0, -24(%ebp)
	jne	.L365
	.loc 1 846 0
	movl	-80(%ebp), %eax
	movl	-88(%ebp), %edx
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	mask_rtx
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	72(%eax), %ecx
	movl	$3, 24(%esp)
	movl	$1, 20(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -32(%ebp)
	.loc 1 849 0
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L367
.L365:
	.loc 1 852 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
.L367:
	.loc 1 856 0
	cmpl	$0, -28(%ebp)
	jne	.L368
	.loc 1 857 0
	movl	optab_table@GOT(%ebx), %eax
	movl	76(%eax), %edx
	movl	$3, 24(%esp)
	movl	$1, 20(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -32(%ebp)
.L368:
	.loc 1 859 0
	movl	8(%ebp), %eax
	cmpl	-32(%ebp), %eax
	je	.L371
	.loc 1 860 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L371:
	.loc 1 861 0
	addl	$188, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	store_fixed_bit_field, .-store_fixed_bit_field
	.type	store_split_bit_field, @function
store_split_bit_field:
.LFB20:
	.loc 1 877 0
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
	subl	$268, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 879 0
	movl	$0, -40(%ebp)
	.loc 1 883 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L375
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L377
.L375:
	.loc 1 884 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L378
	movl	$64, -204(%ebp)
	jmp	.L380
.L378:
	movl	$32, -204(%ebp)
.L380:
	movl	-204(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 883 0
	jmp	.L381
.L377:
	.loc 1 886 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L382
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -196(%ebp)
	jmp	.L384
.L382:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L385
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -192(%ebp)
	jmp	.L387
.L385:
	movl	$8, -192(%ebp)
.L387:
	movl	-192(%ebp), %edx
	movl	%edx, -196(%ebp)
.L384:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L388
	movl	$64, -188(%ebp)
	jmp	.L390
.L388:
	movl	$32, -188(%ebp)
.L390:
	movl	-188(%ebp), %ecx
	cmpl	%ecx, -196(%ebp)
	jae	.L391
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L393
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -184(%ebp)
	jmp	.L395
.L393:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L396
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -180(%ebp)
	jmp	.L398
.L396:
	movl	$8, -180(%ebp)
.L398:
	movl	-180(%ebp), %esi
	movl	%esi, -184(%ebp)
.L395:
	movl	-184(%ebp), %edi
	movl	%edi, -200(%ebp)
	jmp	.L399
.L391:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L400
	movl	$64, -176(%ebp)
	jmp	.L402
.L400:
	movl	$32, -176(%ebp)
.L402:
	movl	-176(%ebp), %eax
	movl	%eax, -200(%ebp)
.L399:
	movl	-200(%ebp), %edx
	movl	%edx, -44(%ebp)
.L381:
	.loc 1 889 0
	cmpl	$0, -44(%ebp)
	je	.L462
	.loc 1 896 0
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L405
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L405
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L405
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L405
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L405
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L405
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L405
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L413
.L405:
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L413
.LBB13:
	.loc 1 898 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_lowpart_common@PLT
	movl	%eax, -36(%ebp)
	.loc 1 900 0
	cmpl	$0, -36(%ebp)
	je	.L415
	movl	28(%ebp), %eax
	cmpl	-36(%ebp), %eax
	je	.L415
	.loc 1 901 0
	movl	-36(%ebp), %eax
	movl	%eax, 28(%ebp)
	.loc 1 900 0
	jmp	.L424
.L415:
	.loc 1 903 0
	movl	28(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L419
	movl	28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -172(%ebp)
	jmp	.L421
.L419:
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -172(%ebp)
.L421:
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-172(%ebp), %ecx
	movl	%ecx, (%esp)
	call	force_reg@PLT
	movl	%eax, %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_lowpart_common@PLT
	movl	%eax, 28(%ebp)
	.loc 1 896 0
	jmp	.L424
.L413:
.LBE13:
	.loc 1 908 0
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L424
	.loc 1 909 0
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_reg@PLT
	movl	%eax, 28(%ebp)
	.loc 1 911 0
	jmp	.L424
.L425:
.LBB14:
	.loc 1 918 0
	movl	-40(%ebp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	-96(%ebp), %esi
	adcl	-92(%ebp), %edi
	movl	-44(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 919 0
	movl	-40(%ebp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	-96(%ebp), %esi
	adcl	-92(%ebp), %edi
	movl	-44(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 924 0
	movl	-40(%ebp), %esi
	movl	$0, %edi
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -232(%ebp)
	movl	%edx, -228(%ebp)
	movl	-232(%ebp), %edx
	movl	-228(%ebp), %ecx
	subl	%esi, %edx
	sbbl	%edi, %ecx
	movl	%edx, -160(%ebp)
	movl	%ecx, -156(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L426
	movl	$64, -152(%ebp)
	movl	$0, -148(%ebp)
	jmp	.L428
.L426:
	movl	$32, -152(%ebp)
	movl	$0, -148(%ebp)
.L428:
	movl	-148(%ebp), %ecx
	cmpl	%ecx, -156(%ebp)
	ja	.L429
	movl	-148(%ebp), %esi
	cmpl	%esi, -156(%ebp)
	jb	.L431
	movl	-152(%ebp), %edi
	cmpl	%edi, -160(%ebp)
	jae	.L429
.L431:
	movl	-40(%ebp), %esi
	movl	$0, %edi
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -232(%ebp)
	movl	%edx, -228(%ebp)
	movl	-232(%ebp), %edx
	movl	-228(%ebp), %ecx
	subl	%esi, %edx
	sbbl	%edi, %ecx
	movl	%edx, -168(%ebp)
	movl	%ecx, -164(%ebp)
	jmp	.L432
.L429:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L433
	movl	$64, -144(%ebp)
	movl	$0, -140(%ebp)
	jmp	.L435
.L433:
	movl	$32, -144(%ebp)
	movl	$0, -140(%ebp)
.L435:
	movl	-144(%ebp), %esi
	movl	-140(%ebp), %edi
	movl	%esi, -168(%ebp)
	movl	%edi, -164(%ebp)
.L432:
	movl	-168(%ebp), %eax
	movl	-164(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 925 0
	movl	-44(%ebp), %eax
	movl	$0, %edx
	subl	-64(%ebp), %eax
	sbbl	-60(%ebp), %edx
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	%esi, -224(%ebp)
	movl	%edi, -220(%ebp)
	movl	%eax, -216(%ebp)
	movl	%edx, -212(%ebp)
	movl	-220(%ebp), %edi
	cmpl	%edi, -212(%ebp)
	jb	.L436
	movl	-220(%ebp), %eax
	cmpl	%eax, -212(%ebp)
	ja	.L437
	movl	-224(%ebp), %edx
	cmpl	%edx, -216(%ebp)
	jbe	.L436
.L437:
	movl	-224(%ebp), %esi
	movl	-220(%ebp), %edi
	movl	%esi, -216(%ebp)
	movl	%edi, -212(%ebp)
.L436:
	movl	-216(%ebp), %eax
	movl	-212(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 927 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L438
.LBB15:
	.loc 1 934 0
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L440
	movl	28(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	jne	.L442
.L440:
	.loc 1 935 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L443
	movl	$64, -132(%ebp)
	jmp	.L445
.L443:
	movl	$32, -132(%ebp)
.L445:
	movl	-132(%ebp), %edx
	movl	%edx, -24(%ebp)
	.loc 1 934 0
	jmp	.L446
.L442:
	.loc 1 937 0
	movl	28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
.L446:
	.loc 1 940 0
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L447
	.loc 1 941 0
	movl	28(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-88(%ebp), %eax
	movl	%eax, %edx
	subl	-40(%ebp), %edx
	movl	-72(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L465
	movl	%edx, %eax
	xorl	%edx, %edx
.L465:
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	-72(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L466
	movl	%eax, %edx
	xorl	%eax, %eax
.L466:
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-128(%ebp), %eax
	andl	%esi, %eax
	movl	-124(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -32(%ebp)
	jmp	.L450
.L447:
	.loc 1 948 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	subl	-88(%ebp), %esi
	sbbl	-84(%ebp), %edi
	movl	-40(%ebp), %eax
	movl	$0, %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	addl	%esi, %edx
	adcl	%edi, %ecx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	$1, 36(%esp)
	movl	$0, 32(%esp)
	movl	%edx, 24(%esp)
	movl	%ecx, 28(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	extract_fixed_bit_field
	movl	%eax, -32(%ebp)
	jmp	.L450
.L438:
.LBE15:
	.loc 1 955 0
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L451
	.loc 1 956 0
	movl	28(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	-40(%ebp), %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L463
	movl	%edi, %esi
	xorl	%edi, %edi
.L463:
	movl	%esi, -120(%ebp)
	movl	%edi, -116(%ebp)
	movl	-72(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L464
	movl	%eax, %edx
	xorl	%eax, %eax
.L464:
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-120(%ebp), %eax
	andl	%esi, %eax
	movl	-116(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -32(%ebp)
	jmp	.L450
.L451:
	.loc 1 960 0
	movl	-40(%ebp), %edx
	movl	$0, %ecx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	$1, 36(%esp)
	movl	$0, 32(%esp)
	movl	%edx, 24(%esp)
	movl	%ecx, 28(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	extract_fixed_bit_field
	movl	%eax, -32(%ebp)
.L450:
	.loc 1 970 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L453
.LBB16:
	.loc 1 972 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -112(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L455
	movl	$8, -108(%ebp)
	jmp	.L457
.L455:
	movl	$4, -108(%ebp)
.L457:
	movl	-112(%ebp), %eax
	movl	$0, %edx
	divl	-108(%ebp)
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 973 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_subword_force@PLT
	movl	%eax, -28(%ebp)
	.loc 1 975 0
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	jmp	.L458
.L453:
.LBE16:
	.loc 1 977 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L459
	.loc 1 979 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-56(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword_force@PLT
	movl	%eax, -28(%ebp)
	.loc 1 980 0
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	jmp	.L458
.L459:
	.loc 1 983 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
.L458:
	.loc 1 987 0
	movl	-44(%ebp), %eax
	movl	$0, %edx
	movl	%edx, %esi
	imull	-56(%ebp), %esi
	movl	-52(%ebp), %ecx
	imull	%eax, %ecx
	addl	%ecx, %esi
	movl	-56(%ebp), %ecx
	mull	%ecx
	addl	%edx, %esi
	movl	%esi, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	$3, %edi, %esi
	shrl	$3, %edi
	movl	-32(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	store_fixed_bit_field
	.loc 1 989 0
	movl	-72(%ebp), %eax
	addl	%eax, -40(%ebp)
.L424:
.LBE14:
	.loc 1 911 0
	movl	-40(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-100(%ebp), %edx
	cmpl	-84(%ebp), %edx
	jb	.L425
	movl	-100(%ebp), %ecx
	cmpl	-84(%ebp), %ecx
	ja	.L462
	movl	-104(%ebp), %esi
	cmpl	-88(%ebp), %esi
	jb	.L425
.L462:
	.loc 1 991 0
	addl	$268, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE20:
	.size	store_split_bit_field, .-store_split_bit_field
	.section	.rodata
	.type	__FUNCTION__.13927, @object
	.size	__FUNCTION__.13927, 18
__FUNCTION__.13927:
	.string	"extract_bit_field"
	.text
.globl extract_bit_field
	.type	extract_bit_field, @function
extract_bit_field:
.LFB21:
	.loc 1 1023 0
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
	subl	$716, %esp
.LCFI37:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -232(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -228(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -240(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -236(%ebp)
	movl	44(%ebp), %eax
	movl	%eax, -248(%ebp)
	movl	48(%ebp), %eax
	movl	%eax, -244(%ebp)
	.loc 1 1025 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L468
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L470
	movl	$64, -668(%ebp)
	jmp	.L472
.L470:
	movl	$32, -668(%ebp)
.L472:
	movl	-668(%ebp), %eax
	movl	%eax, -672(%ebp)
	jmp	.L473
.L468:
	movl	$8, -672(%ebp)
.L473:
	movl	-672(%ebp), %edx
	movl	%edx, -188(%ebp)
	.loc 1 1026 0
	movl	-188(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-240(%ebp), %eax
	movl	-236(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -224(%ebp)
	movl	%edx, -220(%ebp)
	.loc 1 1027 0
	movl	-188(%ebp), %eax
	movl	$0, %edx
	movl	-240(%ebp), %esi
	movl	-236(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	movl	%eax, -216(%ebp)
	movl	%edx, -212(%ebp)
	.loc 1 1028 0
	movl	8(%ebp), %eax
	movl	%eax, -184(%ebp)
	.loc 1 1029 0
	movl	32(%ebp), %eax
	movl	%eax, -180(%ebp)
	.loc 1 1030 0
	movl	$0, -176(%ebp)
	.loc 1 1032 0
	movl	$0, 4(%esp)
	movl	$1, (%esp)
	call	mode_for_extraction@PLT
	movl	%eax, -168(%ebp)
	.loc 1 1033 0
	movl	$0, 4(%esp)
	movl	$2, (%esp)
	call	mode_for_extraction@PLT
	movl	%eax, -164(%ebp)
	.loc 1 1039 0
	cmpl	$0, -244(%ebp)
	js	.L474
	.loc 1 1040 0
	movl	-248(%ebp), %esi
	movl	-244(%ebp), %edi
	movl	%esi, -664(%ebp)
	movl	%edi, -660(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L476
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L478
.L476:
	movl	$128, -656(%ebp)
	movl	$0, -652(%ebp)
	jmp	.L479
.L478:
	movl	$64, -656(%ebp)
	movl	$0, -652(%ebp)
.L479:
	movl	-656(%ebp), %eax
	movl	-652(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-216(%ebp), %eax
	movl	-212(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -648(%ebp)
	movl	%edx, -644(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L480
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L482
.L480:
	movl	$16, -640(%ebp)
	movl	$0, -636(%ebp)
	jmp	.L483
.L482:
	movl	$8, -640(%ebp)
	movl	$0, -636(%ebp)
.L483:
	movl	-644(%ebp), %ecx
	imull	-640(%ebp), %ecx
	movl	-636(%ebp), %eax
	imull	-648(%ebp), %eax
	addl	%eax, %ecx
	movl	-648(%ebp), %eax
	mull	-640(%ebp)
	movl	%eax, -680(%ebp)
	movl	%edx, -676(%ebp)
	addl	-676(%ebp), %ecx
	movl	%ecx, -676(%ebp)
	movl	-664(%ebp), %eax
	movl	-660(%ebp), %edx
	subl	-680(%ebp), %eax
	sbbl	-676(%ebp), %edx
	movl	%eax, -248(%ebp)
	movl	%edx, -244(%ebp)
.L474:
	.loc 1 1043 0
	cmpl	$0, 40(%ebp)
	jne	.L486
	.loc 1 1044 0
	movl	36(%ebp), %eax
	movl	%eax, 40(%ebp)
	.loc 1 1046 0
	jmp	.L486
.L487:
	.loc 1 1048 0
	movl	-184(%ebp), %eax
	movl	12(%eax), %eax
	sall	$3, %eax
	movl	$0, %edx
	addl	%eax, -216(%ebp)
	adcl	%edx, -212(%ebp)
	.loc 1 1049 0
	movl	-188(%ebp), %edx
	movl	$0, %ecx
	movl	%edx, -632(%ebp)
	movl	%ecx, -628(%ebp)
	movl	-628(%ebp), %ecx
	cmpl	-212(%ebp), %ecx
	ja	.L488
	movl	-628(%ebp), %esi
	cmpl	-212(%ebp), %esi
	jb	.L490
	movl	-632(%ebp), %edi
	cmpl	-216(%ebp), %edi
	jae	.L488
.L490:
	.loc 1 1051 0
	movl	-188(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-216(%ebp), %eax
	movl	-212(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	addl	%eax, -224(%ebp)
	adcl	%edx, -220(%ebp)
	.loc 1 1052 0
	movl	-188(%ebp), %eax
	movl	$0, %edx
	movl	-216(%ebp), %esi
	movl	-212(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	movl	%eax, -216(%ebp)
	movl	%edx, -212(%ebp)
.L488:
	.loc 1 1054 0
	movl	-184(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -184(%ebp)
.L486:
	.loc 1 1046 0
	movl	-184(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L487
	.loc 1 1057 0
	movl	-184(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L492
	movl	-184(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	36(%ebp), %eax
	jne	.L492
	movl	-240(%ebp), %eax
	orl	-236(%ebp), %eax
	testl	%eax, %eax
	jne	.L492
	movl	-184(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%edx, %ecx
	xorl	-228(%ebp), %ecx
	xorl	-232(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L492
	.loc 1 1063 0
	movl	-184(%ebp), %eax
	movl	%eax, -624(%ebp)
	jmp	.L497
.L492:
.LBB17:
	.loc 1 1069 0
	movl	-184(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	int_mode_for_mode@PLT
	movl	%eax, -152(%ebp)
	.loc 1 1070 0
	movl	-184(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-152(%ebp), %eax
	je	.L498
	.loc 1 1072 0
	movl	-184(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L500
	.loc 1 1073 0
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -184(%ebp)
	jmp	.L498
.L500:
	.loc 1 1074 0
	cmpl	$52, -152(%ebp)
	je	.L502
	.loc 1 1075 0
	movl	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -184(%ebp)
	jmp	.L498
.L502:
	.loc 1 1077 0
	leal	__FUNCTION__.13927@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1077, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L498:
.LBE17:
	.loc 1 1083 0
	movl	-184(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L504
	.loc 1 1085 0
	movl	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	shallow_copy_rtx@PLT
	movl	%eax, -184(%ebp)
	.loc 1 1086 0
	movl	$0, 4(%esp)
	movl	$0, 8(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 1087 0
	movl	$0, 4(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_expr@PLT
.L504:
	.loc 1 1096 0
	movl	-216(%ebp), %eax
	movl	-212(%ebp), %edx
	shrdl	$3, %edx, %eax
	shrl	$3, %edx
	movl	%eax, -620(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L506
	movl	$8, -616(%ebp)
	movl	$0, -612(%ebp)
	jmp	.L508
.L506:
	movl	$4, -616(%ebp)
	movl	$0, -612(%ebp)
.L508:
	movl	-612(%ebp), %ecx
	imull	-224(%ebp), %ecx
	movl	-220(%ebp), %eax
	imull	-616(%ebp), %eax
	addl	%eax, %ecx
	movl	-224(%ebp), %eax
	mull	-616(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	addl	-620(%ebp), %eax
	movl	%eax, -156(%ebp)
	.loc 1 1101 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L509
	movl	-184(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L509
	movl	-184(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	cmpl	-188(%ebp), %eax
	jae	.L509
	.loc 1 1104 0
	movl	-184(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %edx
	movl	-188(%ebp), %eax
	subl	%edx, %eax
	movl	$0, %edx
	addl	%eax, -216(%ebp)
	adcl	%edx, -212(%ebp)
.L509:
	.loc 1 1110 0
	movl	40(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$7, %eax
	je	.L513
	movl	40(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	je	.L513
	movl	40(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	-232(%ebp), %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mode_for_size@PLT
	movl	%eax, -604(%ebp)
	jmp	.L516
.L513:
	movl	36(%ebp), %edx
	movl	%edx, -604(%ebp)
.L516:
	movl	-604(%ebp), %ecx
	movl	%ecx, -160(%ebp)
	.loc 1 1114 0
	movl	-184(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L517
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L519
	movl	-184(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	cmpw	$32, %ax
	jbe	.L519
	movl	36(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$32, %ax
	jbe	.L517
.L519:
	movl	-160(%ebp), %eax
	movl	mode_size@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L517
	movl	-160(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	-156(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%esi
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L523
.L517:
	movl	-184(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L524
	movl	-224(%ebp), %eax
	movl	-220(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	$3, %esi, %edi
	sall	$3, %esi
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L524
	movl	-184(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L527
	movl	-184(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -600(%ebp)
	movl	$0, -596(%ebp)
	jmp	.L529
.L527:
	movl	-184(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L530
	movl	-184(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -592(%ebp)
	movl	$0, -588(%ebp)
	jmp	.L532
.L530:
	movl	$8, -592(%ebp)
	movl	$0, -588(%ebp)
.L532:
	movl	-592(%ebp), %eax
	movl	-588(%ebp), %edx
	movl	%eax, -600(%ebp)
	movl	%edx, -596(%ebp)
.L529:
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-600(%ebp), %edx
	movl	-596(%ebp), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	__umoddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L524
.L523:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L533
	movl	$64, -584(%ebp)
	movl	$0, -580(%ebp)
	jmp	.L535
.L533:
	movl	$32, -584(%ebp)
	movl	$0, -580(%ebp)
.L535:
	movl	-580(%ebp), %ecx
	cmpl	-228(%ebp), %ecx
	ja	.L536
	movl	-580(%ebp), %esi
	cmpl	-228(%ebp), %esi
	jb	.L538
	movl	-584(%ebp), %edi
	cmpl	-232(%ebp), %edi
	ja	.L536
.L538:
	movl	36(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%edx, %ecx
	xorl	-228(%ebp), %ecx
	xorl	-232(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L536
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L540
	movl	$64, -576(%ebp)
	movl	$0, -572(%ebp)
	jmp	.L542
.L540:
	movl	$32, -576(%ebp)
	movl	$0, -572(%ebp)
.L542:
	movl	-216(%ebp), %eax
	movl	-212(%ebp), %edx
	movl	-576(%ebp), %esi
	movl	-572(%ebp), %edi
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__umoddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L543
.L536:
	movl	40(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	-232(%ebp), %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mode_for_size@PLT
	cmpl	$52, %eax
	je	.L524
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L545
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	movl	-216(%ebp), %esi
	movl	-212(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -568(%ebp)
	movl	%edi, -564(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L547
	movl	$64, -560(%ebp)
	movl	$0, -556(%ebp)
	jmp	.L549
.L547:
	movl	$32, -560(%ebp)
	movl	$0, -556(%ebp)
.L549:
	movl	-564(%ebp), %eax
	xorl	-556(%ebp), %eax
	movl	-568(%ebp), %edx
	xorl	-560(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L543
	jmp	.L524
.L545:
	movl	-216(%ebp), %eax
	orl	-212(%ebp), %eax
	testl	%eax, %eax
	jne	.L524
.L543:
	.loc 1 1134 0
	movl	-184(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-160(%ebp), %eax
	je	.L550
	.loc 1 1136 0
	movl	-184(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L552
	.loc 1 1138 0
	movl	-184(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-160(%ebp), %eax
	je	.L554
	movl	-160(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L554
	movl	-160(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$3, %eax
	jne	.L524
.L554:
	.loc 1 1141 0
	movl	-184(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -184(%ebp)
.L552:
	.loc 1 1148 0
	movl	-184(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L557
	.loc 1 1149 0
	movl	-156(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -184(%ebp)
	jmp	.L550
.L557:
	.loc 1 1151 0
	movl	-224(%ebp), %eax
	movl	-220(%ebp), %edx
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -184(%ebp)
.L550:
	.loc 1 1153 0
	movl	-160(%ebp), %eax
	cmpl	36(%ebp), %eax
	je	.L559
	.loc 1 1154 0
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	40(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, -624(%ebp)
	jmp	.L497
.L559:
	.loc 1 1155 0
	movl	-184(%ebp), %edi
	movl	%edi, -624(%ebp)
	jmp	.L497
.L524:
	.loc 1 1161 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L561
	movl	$64, -552(%ebp)
	movl	$0, -548(%ebp)
	jmp	.L563
.L561:
	movl	$32, -552(%ebp)
	movl	$0, -548(%ebp)
.L563:
	movl	-548(%ebp), %eax
	cmpl	-228(%ebp), %eax
	ja	.L564
	movl	-548(%ebp), %edx
	cmpl	-228(%ebp), %edx
	jb	.L566
	movl	-552(%ebp), %ecx
	cmpl	-232(%ebp), %ecx
	jae	.L564
.L566:
.LBB18:
	.loc 1 1168 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L567
	movl	$63, -544(%ebp)
	movl	$0, -540(%ebp)
	jmp	.L569
.L567:
	movl	$31, -544(%ebp)
	movl	$0, -540(%ebp)
.L569:
	movl	-544(%ebp), %esi
	movl	-540(%ebp), %edi
	addl	-232(%ebp), %esi
	adcl	-228(%ebp), %edi
	movl	%esi, -536(%ebp)
	movl	%edi, -532(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L570
	movl	$64, -528(%ebp)
	movl	$0, -524(%ebp)
	jmp	.L572
.L570:
	movl	$32, -528(%ebp)
	movl	$0, -524(%ebp)
.L572:
	movl	-528(%ebp), %eax
	movl	-524(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-536(%ebp), %edx
	movl	-532(%ebp), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -148(%ebp)
	.loc 1 1171 0
	cmpl	$0, 32(%ebp)
	je	.L573
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L575
.L573:
	.loc 1 1172 0
	movl	36(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 32(%ebp)
.L575:
	.loc 1 1175 0
	movl	32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$59, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 1177 0
	movl	$0, -144(%ebp)
	jmp	.L576
.L577:
.LBB19:
	.loc 1 1185 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L578
	movl	32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -512(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L580
	movl	$8, -508(%ebp)
	jmp	.L582
.L580:
	movl	$4, -508(%ebp)
.L582:
	movl	-512(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-508(%ebp)
	subl	-144(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -516(%ebp)
	jmp	.L583
.L578:
	movl	-144(%ebp), %ecx
	movl	%ecx, -516(%ebp)
.L583:
	movl	-516(%ebp), %esi
	movl	%esi, -140(%ebp)
	.loc 1 1190 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L584
	movl	-232(%ebp), %edi
	movl	%edi, -496(%ebp)
	movl	-144(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -492(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L586
	movl	$64, -488(%ebp)
	jmp	.L588
.L586:
	movl	$32, -488(%ebp)
.L588:
	movl	-492(%ebp), %eax
	imull	-488(%ebp), %eax
	movl	-496(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	js	.L589
	movl	-232(%ebp), %ecx
	movl	%ecx, -484(%ebp)
	movl	-144(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -480(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L591
	movl	$64, -476(%ebp)
	jmp	.L593
.L591:
	movl	$32, -476(%ebp)
.L593:
	movl	-480(%ebp), %eax
	imull	-476(%ebp), %eax
	movl	-484(%ebp), %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, -500(%ebp)
	jmp	.L594
.L589:
	movl	$0, -500(%ebp)
.L594:
	movl	-500(%ebp), %edi
	movl	%edi, -504(%ebp)
	jmp	.L595
.L584:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L596
	movl	$64, -472(%ebp)
	jmp	.L598
.L596:
	movl	$32, -472(%ebp)
.L598:
	movl	-144(%ebp), %eax
	imull	-472(%ebp), %eax
	movl	%eax, -504(%ebp)
.L595:
	movl	-504(%ebp), %eax
	movl	%eax, -136(%ebp)
	.loc 1 1191 0
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword@PLT
	movl	%eax, -132(%ebp)
	.loc 1 1196 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -468(%ebp)
	movl	-136(%ebp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	-240(%ebp), %esi
	adcl	-236(%ebp), %edi
	movl	%esi, -464(%ebp)
	movl	%edi, -460(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L599
	movl	$64, -448(%ebp)
	movl	$0, -444(%ebp)
	jmp	.L601
.L599:
	movl	$32, -448(%ebp)
	movl	$0, -444(%ebp)
.L601:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L602
	movl	$64, -436(%ebp)
	jmp	.L604
.L602:
	movl	$32, -436(%ebp)
.L604:
	movl	-436(%ebp), %eax
	imull	-144(%ebp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	movl	%eax, -680(%ebp)
	movl	%edx, -676(%ebp)
	movl	-680(%ebp), %edx
	movl	-676(%ebp), %ecx
	subl	%esi, %edx
	sbbl	%edi, %ecx
	movl	%edx, -432(%ebp)
	movl	%ecx, -428(%ebp)
	movl	-428(%ebp), %ecx
	cmpl	%ecx, -444(%ebp)
	ja	.L605
	movl	-428(%ebp), %esi
	cmpl	%esi, -444(%ebp)
	jb	.L607
	movl	-432(%ebp), %edi
	cmpl	%edi, -448(%ebp)
	jae	.L605
.L607:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L608
	movl	$64, -424(%ebp)
	movl	$0, -420(%ebp)
	jmp	.L610
.L608:
	movl	$32, -424(%ebp)
	movl	$0, -420(%ebp)
.L610:
	movl	-424(%ebp), %eax
	movl	-420(%ebp), %edx
	movl	%eax, -456(%ebp)
	movl	%edx, -452(%ebp)
	jmp	.L611
.L605:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L612
	movl	$64, -412(%ebp)
	jmp	.L614
.L612:
	movl	$32, -412(%ebp)
.L614:
	movl	-412(%ebp), %eax
	imull	-144(%ebp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	movl	-232(%ebp), %edx
	movl	-228(%ebp), %ecx
	movl	%edx, -680(%ebp)
	movl	%ecx, -676(%ebp)
	movl	-680(%ebp), %eax
	movl	-676(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, -456(%ebp)
	movl	%edx, -452(%ebp)
.L611:
	movl	-248(%ebp), %eax
	movl	-244(%ebp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, 40(%esp)
	movl	-468(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$1, 20(%esp)
	movl	-464(%ebp), %esi
	movl	-460(%ebp), %edi
	movl	%esi, 12(%esp)
	movl	%edi, 16(%esp)
	movl	-456(%ebp), %eax
	movl	-452(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_bit_field@PLT
	movl	%eax, -128(%ebp)
	.loc 1 1198 0
	cmpl	$0, -132(%ebp)
	jne	.L615
	.loc 1 1199 0
	leal	__FUNCTION__.13927@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1199, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L615:
	.loc 1 1201 0
	movl	-128(%ebp), %eax
	cmpl	-132(%ebp), %eax
	je	.L617
	.loc 1 1202 0
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L617:
.LBE19:
	.loc 1 1177 0
	addl	$1, -144(%ebp)
.L576:
	movl	-144(%ebp), %eax
	cmpl	-148(%ebp), %eax
	jb	.L577
	.loc 1 1205 0
	cmpl	$0, 28(%ebp)
	je	.L620
	.loc 1 1209 0
	movl	32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -408(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L622
	movl	$8, -404(%ebp)
	jmp	.L624
.L622:
	movl	$4, -404(%ebp)
.L624:
	movl	-404(%ebp), %eax
	imull	-148(%ebp), %eax
	cmpl	%eax, -408(%ebp)
	jbe	.L625
.LBB20:
	.loc 1 1213 0
	movl	32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -400(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L627
	movl	$8, -396(%ebp)
	jmp	.L629
.L627:
	movl	$4, -396(%ebp)
.L629:
	movl	-400(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-396(%ebp)
	movl	%eax, -120(%ebp)
	.loc 1 1214 0
	movl	-148(%ebp), %eax
	movl	%eax, -124(%ebp)
	jmp	.L630
.L631:
	.loc 1 1215 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -392(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L632
	movl	-124(%ebp), %eax
	movl	-120(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, -388(%ebp)
	jmp	.L634
.L632:
	movl	-124(%ebp), %esi
	movl	%esi, -388(%ebp)
.L634:
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	-388(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword@PLT
	movl	-392(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 1214 0
	addl	$1, -124(%ebp)
.L630:
	movl	-124(%ebp), %eax
	cmpl	-120(%ebp), %eax
	jb	.L631
.L625:
.LBE20:
	.loc 1 1221 0
	movl	32(%ebp), %ecx
	movl	%ecx, -624(%ebp)
	jmp	.L497
.L620:
	.loc 1 1225 0
	movl	36(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	subl	-232(%ebp), %eax
	sbbl	-228(%ebp), %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	expand_shift@PLT
	movl	%eax, 32(%ebp)
	.loc 1 1228 0
	movl	36(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	subl	-232(%ebp), %eax
	sbbl	-228(%ebp), %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -624(%ebp)
	jmp	.L497
.L564:
.LBE18:
	.loc 1 1240 0
	movl	40(%ebp), %eax
	movl	%eax, (%esp)
	call	int_mode_for_mode@PLT
	movl	%eax, -172(%ebp)
	.loc 1 1241 0
	cmpl	$52, -172(%ebp)
	jne	.L635
	.loc 1 1242 0
	movl	36(%ebp), %eax
	movl	%eax, (%esp)
	call	int_mode_for_mode@PLT
	movl	%eax, -172(%ebp)
.L635:
	.loc 1 1243 0
	cmpl	$52, -172(%ebp)
	jne	.L637
	.loc 1 1244 0
	leal	__FUNCTION__.13927@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1244, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L637:
	.loc 1 1250 0
	movl	-184(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L639
	.loc 1 1252 0
	movl	-224(%ebp), %eax
	orl	-220(%ebp), %eax
	testl	%eax, %eax
	jne	.L641
	movl	-184(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -384(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L643
	movl	$8, -380(%ebp)
	jmp	.L645
.L643:
	movl	$4, -380(%ebp)
.L645:
	movl	-380(%ebp), %esi
	cmpl	%esi, -384(%ebp)
	jle	.L646
.L641:
	.loc 1 1255 0
	movl	-184(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L647
	.loc 1 1256 0
	movl	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_reg@PLT
	movl	%eax, -184(%ebp)
.L647:
	.loc 1 1257 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L649
	movl	$8, -376(%ebp)
	movl	$0, -372(%ebp)
	jmp	.L651
.L649:
	movl	$4, -376(%ebp)
	movl	$0, -372(%ebp)
.L651:
	movl	-372(%ebp), %ecx
	imull	-224(%ebp), %ecx
	movl	-220(%ebp), %eax
	imull	-376(%ebp), %eax
	addl	%eax, %ecx
	movl	-224(%ebp), %eax
	mull	-376(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -368(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L652
	movl	$64, -364(%ebp)
	jmp	.L654
.L652:
	movl	$32, -364(%ebp)
.L654:
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	-364(%ebp), %edi
	movl	%edi, (%esp)
	call	mode_for_size@PLT
	movl	-368(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-184(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -184(%ebp)
.L646:
	.loc 1 1260 0
	movl	$0, -224(%ebp)
	movl	$0, -220(%ebp)
	jmp	.L655
.L639:
	.loc 1 1263 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, -184(%ebp)
.L655:
	.loc 1 1267 0
	cmpl	$0, 28(%ebp)
	je	.L656
	.loc 1 1269 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L658
	movl	-164(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -360(%ebp)
	movl	-360(%ebp), %ecx
	movl	%ecx, -360(%ebp)
	movl	$0, -356(%ebp)
	movl	-356(%ebp), %esi
	cmpl	-228(%ebp), %esi
	jb	.L658
	movl	-356(%ebp), %edi
	cmpl	-228(%ebp), %edi
	ja	.L661
	movl	-360(%ebp), %eax
	cmpl	-232(%ebp), %eax
	jb	.L658
.L661:
	movl	-184(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L662
	movl	-184(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L664
.L662:
	movl	-216(%ebp), %eax
	movl	-212(%ebp), %edx
	movl	-232(%ebp), %esi
	movl	-228(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -352(%ebp)
	movl	%edi, -348(%ebp)
	movl	-164(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -344(%ebp)
	movl	-344(%ebp), %edi
	movl	%edi, -344(%ebp)
	movl	$0, -340(%ebp)
	movl	-340(%ebp), %eax
	cmpl	%eax, -348(%ebp)
	ja	.L658
	movl	-340(%ebp), %edx
	cmpl	%edx, -348(%ebp)
	jb	.L664
	movl	-344(%ebp), %ecx
	cmpl	%ecx, -352(%ebp)
	ja	.L658
.L664:
.LBB21:
	.loc 1 1274 0
	movl	-216(%ebp), %eax
	movl	-212(%ebp), %edx
	movl	%eax, -208(%ebp)
	movl	%edx, -204(%ebp)
	movl	-224(%ebp), %eax
	movl	-220(%ebp), %edx
	movl	%eax, -200(%ebp)
	movl	%edx, -196(%ebp)
	.loc 1 1276 0
	call	get_last_insn@PLT
	movl	%eax, -108(%ebp)
	.loc 1 1277 0
	movl	-184(%ebp), %eax
	movl	%eax, -104(%ebp)
	.loc 1 1278 0
	movl	32(%ebp), %eax
	movl	%eax, -100(%ebp)
	.loc 1 1279 0
	movl	-180(%ebp), %eax
	movl	%eax, -96(%ebp)
	.loc 1 1280 0
	movl	-176(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 1282 0
	movl	$0, 4(%esp)
	movl	$2, (%esp)
	call	mode_for_extraction@PLT
	movl	%eax, -84(%ebp)
	.loc 1 1284 0
	movl	-104(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L666
.LBB22:
	.loc 1 1286 0
	movl	volatile_ok@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 1287 0
	movl	volatile_ok@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 1290 0
	movl	insn_data@GOT(%ebx), %eax
	movl	8412(%eax), %eax
	addl	$12, %eax
	movl	(%eax), %edx
	movl	-104(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L668
.LBB23:
	.loc 1 1302 0
	movl	-104(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L670
	movl	-184(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-84(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L672
.L670:
	.loc 1 1305 0
	movl	-104(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -336(%ebp)
	movl	-104(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L673
	movl	-104(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -332(%ebp)
	jmp	.L675
.L673:
	movl	-104(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L676
	movl	-104(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -328(%ebp)
	jmp	.L678
.L676:
	movl	$8, -328(%ebp)
.L678:
	movl	-328(%ebp), %esi
	movl	%esi, -332(%ebp)
.L675:
	movl	-240(%ebp), %edx
	movl	-232(%ebp), %ecx
	movl	-336(%ebp), %edi
	movl	%edi, 16(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-332(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	get_best_mode@PLT
	movl	%eax, -76(%ebp)
	.loc 1 1302 0
	jmp	.L679
.L672:
	.loc 1 1309 0
	movl	-104(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
.L679:
	.loc 1 1311 0
	cmpl	$0, -76(%ebp)
	je	.L658
	movl	-76(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -324(%ebp)
	movl	-104(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L681
	movl	-104(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -320(%ebp)
	jmp	.L683
.L681:
	movl	-104(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L684
	movl	-104(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -316(%ebp)
	jmp	.L686
.L684:
	movl	$8, -316(%ebp)
.L686:
	movl	-316(%ebp), %edx
	movl	%edx, -320(%ebp)
.L683:
	movl	-320(%ebp), %ecx
	cmpl	%ecx, -324(%ebp)
	ja	.L658
	.loc 1 1318 0
	movl	-76(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -188(%ebp)
	.loc 1 1319 0
	movl	-188(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-240(%ebp), %eax
	movl	-236(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -312(%ebp)
	movl	%edx, -308(%ebp)
	movl	-76(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	-308(%ebp), %ecx
	imull	%eax, %ecx
	movl	-312(%ebp), %esi
	imull	%edx, %esi
	addl	%esi, %ecx
	mull	-312(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -200(%ebp)
	movl	%edx, -196(%ebp)
	movl	%eax, -200(%ebp)
	movl	%edx, -196(%ebp)
	.loc 1 1320 0
	movl	-188(%ebp), %eax
	movl	$0, %edx
	movl	-240(%ebp), %esi
	movl	-236(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	movl	%eax, -208(%ebp)
	movl	%edx, -204(%ebp)
	.loc 1 1321 0
	movl	-200(%ebp), %eax
	movl	-196(%ebp), %edx
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -104(%ebp)
	.loc 1 1324 0
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -104(%ebp)
	jmp	.L688
.L668:
.LBE23:
	.loc 1 1330 0
	movl	-200(%ebp), %edx
	movl	-196(%ebp), %ecx
	movl	byte_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -104(%ebp)
.L688:
	.loc 1 1332 0
	movl	volatile_ok@GOT(%ebx), %edx
	movl	-80(%ebp), %eax
	movl	%eax, (%edx)
.L666:
.LBE22:
	.loc 1 1337 0
	movl	-104(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L689
	movl	-104(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-84(%ebp), %eax
	jne	.L658
.L689:
	.loc 1 1339 0
	movl	-104(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L691
	movl	-104(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-84(%ebp), %eax
	je	.L691
	.loc 1 1340 0
	movl	$0, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -104(%ebp)
.L691:
	.loc 1 1344 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L694
	.loc 1 1345 0
	movl	-188(%ebp), %eax
	movl	$0, %edx
	subl	-232(%ebp), %eax
	sbbl	-228(%ebp), %edx
	subl	-208(%ebp), %eax
	sbbl	-204(%ebp), %edx
	movl	%eax, -208(%ebp)
	movl	%edx, -204(%ebp)
.L694:
	.loc 1 1351 0
	movl	-84(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -188(%ebp)
	.loc 1 1353 0
	cmpl	$0, -100(%ebp)
	je	.L696
	movl	flag_force_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L698
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L698
.L696:
	.loc 1 1355 0
	movl	40(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -96(%ebp)
	movl	-96(%ebp), %eax
	movl	%eax, -100(%ebp)
.L698:
	.loc 1 1357 0
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-84(%ebp), %eax
	je	.L700
	.loc 1 1359 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L702
.LBB24:
	.loc 1 1362 0
	movl	-84(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	seta	%al
	movzbl	%al, %eax
	movl	%eax, -72(%ebp)
	.loc 1 1363 0
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -100(%ebp)
	.loc 1 1364 0
	cmpl	$0, -72(%ebp)
	je	.L700
	.loc 1 1365 0
	movl	-100(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L700
.L702:
.LBE24:
	.loc 1 1368 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -100(%ebp)
.L700:
	.loc 1 1373 0
	movl	insn_data@GOT(%ebx), %eax
	movl	8412(%eax), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L706
	.loc 1 1375 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -100(%ebp)
.L706:
	.loc 1 1377 0
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -116(%ebp)
	.loc 1 1378 0
	movl	-208(%ebp), %eax
	movl	-204(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -112(%ebp)
	.loc 1 1380 0
	movl	$1, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, %edx
	movl	-112(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_extzv@PLT
	movl	%eax, -88(%ebp)
	.loc 1 1382 0
	cmpl	$0, -88(%ebp)
	je	.L708
	.loc 1 1384 0
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 1385 0
	movl	-100(%ebp), %eax
	movl	%eax, 32(%ebp)
	.loc 1 1386 0
	movl	-96(%ebp), %eax
	movl	%eax, -180(%ebp)
	.loc 1 1387 0
	movl	-92(%ebp), %eax
	movl	%eax, -176(%ebp)
	jmp	.L712
.L708:
	.loc 1 1391 0
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
	.loc 1 1392 0
	movl	$1, 36(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-216(%ebp), %eax
	movl	-212(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	-224(%ebp), %eax
	movl	-220(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_fixed_bit_field
	movl	%eax, 32(%ebp)
	.loc 1 1269 0
	jmp	.L712
.L658:
.LBE21:
	.loc 1 1398 0
	movl	$1, 36(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-216(%ebp), %eax
	movl	-212(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	-224(%ebp), %eax
	movl	-220(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_fixed_bit_field
	movl	%eax, 32(%ebp)
	jmp	.L712
.L656:
	.loc 1 1403 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L713
	movl	-168(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -304(%ebp)
	movl	-304(%ebp), %esi
	movl	%esi, -304(%ebp)
	movl	$0, -300(%ebp)
	movl	-300(%ebp), %edi
	cmpl	-228(%ebp), %edi
	jb	.L713
	movl	-300(%ebp), %eax
	cmpl	-228(%ebp), %eax
	ja	.L716
	movl	-304(%ebp), %edx
	cmpl	-232(%ebp), %edx
	jb	.L713
.L716:
	movl	-184(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L717
	movl	-184(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L719
.L717:
	movl	-216(%ebp), %eax
	movl	-212(%ebp), %edx
	movl	-232(%ebp), %esi
	movl	-228(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -296(%ebp)
	movl	%edi, -292(%ebp)
	movl	-168(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -288(%ebp)
	movl	-288(%ebp), %edi
	movl	%edi, -288(%ebp)
	movl	$0, -284(%ebp)
	movl	-284(%ebp), %eax
	cmpl	%eax, -292(%ebp)
	ja	.L713
	movl	-284(%ebp), %edx
	cmpl	%edx, -292(%ebp)
	jb	.L719
	movl	-288(%ebp), %ecx
	cmpl	%ecx, -296(%ebp)
	ja	.L713
.L719:
.LBB25:
	.loc 1 1408 0
	movl	-216(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	-224(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 1410 0
	call	get_last_insn@PLT
	movl	%eax, -52(%ebp)
	.loc 1 1411 0
	movl	-184(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1412 0
	movl	-180(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1413 0
	movl	-176(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1415 0
	movl	$0, 4(%esp)
	movl	$1, (%esp)
	call	mode_for_extraction@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1417 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L721
	.loc 1 1420 0
	movl	insn_data@GOT(%ebx), %eax
	movl	8392(%eax), %eax
	addl	$12, %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L723
.LBB26:
	.loc 1 1432 0
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L725
	movl	-184(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-28(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L727
.L725:
	.loc 1 1435 0
	movl	-48(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -280(%ebp)
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L728
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -276(%ebp)
	jmp	.L730
.L728:
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L731
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -272(%ebp)
	jmp	.L733
.L731:
	movl	$8, -272(%ebp)
.L733:
	movl	-272(%ebp), %esi
	movl	%esi, -276(%ebp)
.L730:
	movl	-240(%ebp), %edx
	movl	-232(%ebp), %ecx
	movl	-280(%ebp), %edi
	movl	%edi, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-276(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	get_best_mode@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1432 0
	jmp	.L734
.L727:
	.loc 1 1439 0
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
.L734:
	.loc 1 1441 0
	cmpl	$0, -24(%ebp)
	je	.L713
	movl	-24(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -268(%ebp)
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L736
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -264(%ebp)
	jmp	.L738
.L736:
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L739
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -260(%ebp)
	jmp	.L741
.L739:
	movl	$8, -260(%ebp)
.L741:
	movl	-260(%ebp), %edx
	movl	%edx, -264(%ebp)
.L738:
	movl	-264(%ebp), %ecx
	cmpl	%ecx, -268(%ebp)
	ja	.L713
	.loc 1 1448 0
	movl	-24(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -188(%ebp)
	.loc 1 1449 0
	movl	-188(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-240(%ebp), %eax
	movl	-236(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -256(%ebp)
	movl	%edx, -252(%ebp)
	movl	-24(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	-252(%ebp), %ecx
	imull	%eax, %ecx
	movl	-256(%ebp), %esi
	imull	%edx, %esi
	addl	%esi, %ecx
	mull	-256(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -64(%ebp)
	.loc 1 1450 0
	movl	-188(%ebp), %eax
	movl	$0, %edx
	movl	-240(%ebp), %esi
	movl	-236(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	movl	%eax, -68(%ebp)
	.loc 1 1451 0
	movl	-64(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -48(%ebp)
	.loc 1 1454 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -48(%ebp)
	jmp	.L721
.L723:
.LBE26:
	.loc 1 1460 0
	movl	-64(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	byte_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -48(%ebp)
.L721:
	.loc 1 1465 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L743
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-28(%ebp), %eax
	jne	.L713
.L743:
	.loc 1 1467 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L745
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-28(%ebp), %eax
	je	.L745
	.loc 1 1468 0
	movl	$0, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -48(%ebp)
.L745:
	.loc 1 1472 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L748
	.loc 1 1473 0
	movl	-232(%ebp), %edx
	movl	-188(%ebp), %eax
	movl	%eax, %esi
	subl	%edx, %esi
	movl	%esi, %edx
	movl	-68(%ebp), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%eax, -68(%ebp)
.L748:
	.loc 1 1480 0
	movl	-28(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -188(%ebp)
	.loc 1 1482 0
	cmpl	$0, -44(%ebp)
	je	.L750
	movl	flag_force_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L752
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L752
.L750:
	.loc 1 1484 0
	movl	40(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
.L752:
	.loc 1 1486 0
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-28(%ebp), %eax
	je	.L754
	.loc 1 1488 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L756
.LBB27:
	.loc 1 1491 0
	movl	-28(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	seta	%al
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1492 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1493 0
	cmpl	$0, -20(%ebp)
	je	.L754
	.loc 1 1494 0
	movl	-44(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L754
.L756:
.LBE27:
	.loc 1 1497 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -44(%ebp)
.L754:
	.loc 1 1502 0
	movl	insn_data@GOT(%ebx), %eax
	movl	8392(%eax), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L760
	.loc 1 1504 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -44(%ebp)
.L760:
	.loc 1 1506 0
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -60(%ebp)
	.loc 1 1507 0
	movl	-68(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -56(%ebp)
	.loc 1 1509 0
	movl	$1, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_extv@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1511 0
	cmpl	$0, -32(%ebp)
	je	.L762
	.loc 1 1513 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 1514 0
	movl	-44(%ebp), %eax
	movl	%eax, 32(%ebp)
	.loc 1 1515 0
	movl	-40(%ebp), %eax
	movl	%eax, -180(%ebp)
	.loc 1 1516 0
	movl	-36(%ebp), %eax
	movl	%eax, -176(%ebp)
	jmp	.L712
.L762:
	.loc 1 1520 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
	.loc 1 1521 0
	movl	$0, 36(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-216(%ebp), %eax
	movl	-212(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	-224(%ebp), %eax
	movl	-220(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_fixed_bit_field
	movl	%eax, 32(%ebp)
	.loc 1 1403 0
	jmp	.L712
.L713:
.LBE25:
	.loc 1 1527 0
	movl	$0, 36(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-216(%ebp), %eax
	movl	-212(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	-224(%ebp), %eax
	movl	-220(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_fixed_bit_field
	movl	%eax, 32(%ebp)
.L712:
	.loc 1 1530 0
	movl	32(%ebp), %eax
	cmpl	-180(%ebp), %eax
	jne	.L765
	.loc 1 1531 0
	movl	32(%ebp), %eax
	movl	%eax, -624(%ebp)
	jmp	.L497
.L765:
	.loc 1 1532 0
	movl	32(%ebp), %eax
	cmpl	-176(%ebp), %eax
	jne	.L767
	.loc 1 1533 0
	movl	-180(%ebp), %edx
	movl	%edx, -624(%ebp)
	jmp	.L497
.L767:
	.loc 1 1534 0
	movl	32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	40(%ebp), %eax
	je	.L769
	movl	32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	36(%ebp), %eax
	je	.L769
	.loc 1 1539 0
	movl	40(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L772
	movl	40(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$3, %eax
	je	.L772
	.loc 1 1542 0
	movl	40(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	mode_for_size@PLT
	movl	%eax, %edx
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, 32(%ebp)
	.loc 1 1545 0
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	40(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -624(%ebp)
	jmp	.L497
.L772:
	.loc 1 1548 0
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	40(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, -624(%ebp)
	jmp	.L497
.L769:
	.loc 1 1550 0
	movl	32(%ebp), %ecx
	movl	%ecx, -624(%ebp)
.L497:
	movl	-624(%ebp), %eax
	.loc 1 1551 0
	addl	$716, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	extract_bit_field, .-extract_bit_field
	.type	extract_fixed_bit_field, @function
extract_fixed_bit_field:
.LFB22:
	.loc 1 1576 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%edi
.LCFI40:
	pushl	%esi
.LCFI41:
	pushl	%ebx
.LCFI42:
	subl	$204, %esp
.LCFI43:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 1577 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L777
	movl	$64, -156(%ebp)
	jmp	.L779
.L777:
	movl	$32, -156(%ebp)
.L779:
	movl	-156(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1580 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L780
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L782
.L780:
	.loc 1 1583 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -152(%ebp)
	movl	%edi, -148(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L783
	movl	$64, -144(%ebp)
	movl	$0, -140(%ebp)
	jmp	.L785
.L783:
	movl	$32, -144(%ebp)
	movl	$0, -140(%ebp)
.L785:
	movl	-140(%ebp), %edi
	cmpl	%edi, -148(%ebp)
	jb	.L790
	movl	-140(%ebp), %eax
	cmpl	%eax, -148(%ebp)
	ja	.L788
	movl	-144(%ebp), %edx
	cmpl	%edx, -152(%ebp)
	jbe	.L790
.L788:
	.loc 1 1584 0
	movl	44(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_split_bit_field
	movl	%eax, -132(%ebp)
	jmp	.L789
.L782:
	.loc 1 1592 0
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -128(%ebp)
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -124(%ebp)
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L791
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L793
.L791:
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L794
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -116(%ebp)
	jmp	.L796
.L794:
	movl	$8, -116(%ebp)
.L796:
	movl	-116(%ebp), %ecx
	movl	%ecx, -120(%ebp)
.L793:
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	-64(%ebp), %edx
	movl	-128(%ebp), %esi
	movl	%esi, 16(%esp)
	movl	-124(%ebp), %edi
	movl	%edi, 12(%esp)
	movl	-120(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_best_mode@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1595 0
	cmpl	$0, -36(%ebp)
	jne	.L797
	.loc 1 1598 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	addl	-72(%ebp), %edx
	adcl	-68(%ebp), %ecx
	movl	44(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_split_bit_field
	movl	%eax, -132(%ebp)
	jmp	.L789
.L797:
	.loc 1 1602 0
	movl	-36(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -40(%ebp)
	.loc 1 1607 0
	movl	-40(%ebp), %esi
	movl	$0, %edi
	movl	%esi, -112(%ebp)
	movl	%edi, -108(%ebp)
	movl	-108(%ebp), %edi
	cmpl	-68(%ebp), %edi
	ja	.L799
	movl	-108(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jb	.L801
	movl	-112(%ebp), %edx
	cmpl	-72(%ebp), %edx
	ja	.L799
.L801:
	.loc 1 1609 0
	movl	-40(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-40(%ebp), %eax
	shrl	$3, %eax
	movl	%eax, -176(%ebp)
	movl	$0, -172(%ebp)
	movl	-176(%ebp), %ecx
	imull	%edi, %ecx
	movl	-172(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -160(%ebp)
	addl	-160(%ebp), %ecx
	movl	-176(%ebp), %eax
	mull	%esi
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	addl	-172(%ebp), %ecx
	movl	%ecx, -172(%ebp)
	movl	-176(%ebp), %edx
	movl	-172(%ebp), %ecx
	addl	%edx, -56(%ebp)
	adcl	%ecx, -52(%ebp)
	.loc 1 1610 0
	movl	-40(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-40(%ebp), %eax
	shrl	$3, %eax
	movl	%eax, -176(%ebp)
	movl	$0, -172(%ebp)
	movl	-176(%ebp), %ecx
	imull	%edi, %ecx
	movl	-172(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -164(%ebp)
	addl	-164(%ebp), %ecx
	movl	-176(%ebp), %eax
	mull	%esi
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	addl	-172(%ebp), %ecx
	movl	%ecx, -172(%ebp)
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	shldl	$3, %eax, %edx
	sall	$3, %eax
	subl	%eax, -72(%ebp)
	sbbl	%edx, -68(%ebp)
.L799:
	.loc 1 1618 0
	movl	-40(%ebp), %eax
	shrl	$3, %eax
	movl	$0, %edx
	movl	-56(%ebp), %esi
	movl	-52(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	shldl	$3, %eax, %edx
	sall	$3, %eax
	addl	%eax, -72(%ebp)
	adcl	%edx, -68(%ebp)
	.loc 1 1619 0
	movl	-40(%ebp), %eax
	shrl	$3, %eax
	movl	$0, %edx
	movl	-56(%ebp), %esi
	movl	-52(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	subl	%eax, -56(%ebp)
	sbbl	%edx, -52(%ebp)
	.loc 1 1620 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, 12(%ebp)
.L790:
	.loc 1 1623 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	.loc 1 1625 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L802
	.loc 1 1628 0
	movl	-40(%ebp), %eax
	movl	$0, %edx
	subl	-64(%ebp), %eax
	sbbl	-60(%ebp), %edx
	subl	-72(%ebp), %eax
	sbbl	-68(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
.L802:
	.loc 1 1633 0
	cmpl	$0, 44(%ebp)
	je	.L804
	.loc 1 1635 0
	movl	-72(%ebp), %eax
	orl	-68(%ebp), %eax
	testl	%eax, %eax
	je	.L806
.LBB28:
	.loc 1 1639 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1644 0
	cmpl	$0, 40(%ebp)
	je	.L808
	movl	40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L808
	movl	40(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L808
	movl	40(%ebp), %edx
	movl	%edx, -100(%ebp)
	jmp	.L812
.L808:
	movl	$0, -100(%ebp)
.L812:
	movl	-100(%ebp), %ecx
	movl	%ecx, -28(%ebp)
	.loc 1 1645 0
	movl	8(%ebp), %eax
	cmpl	-36(%ebp), %eax
	je	.L813
	movl	$0, -28(%ebp)
.L813:
	.loc 1 1646 0
	movl	$1, 20(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, 12(%ebp)
.L806:
.LBE28:
	.loc 1 1649 0
	movl	-36(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L815
	.loc 1 1650 0
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, 12(%ebp)
.L815:
	.loc 1 1655 0
	movl	-36(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	addl	-72(%ebp), %esi
	adcl	-68(%ebp), %edi
	movl	%edx, %ecx
	xorl	%edi, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L817
	.loc 1 1656 0
	movl	-64(%ebp), %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	mask_rtx
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	72(%eax), %esi
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	$3, 24(%esp)
	movl	$1, 20(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -132(%ebp)
	jmp	.L789
.L817:
	.loc 1 1659 0
	movl	12(%ebp), %esi
	movl	%esi, -132(%ebp)
	jmp	.L789
.L804:
	.loc 1 1664 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, 12(%ebp)
	.loc 1 1665 0
	movl	-36(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L819
	.loc 1 1666 0
	movl	$0, 40(%ebp)
.L819:
	.loc 1 1670 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L821
.L822:
	.loc 1 1672 0
	movl	-36(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -96(%ebp)
	movl	-96(%ebp), %edi
	movl	%edi, -96(%ebp)
	movl	$0, -92(%ebp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-84(%ebp), %edi
	cmpl	%edi, -92(%ebp)
	jb	.L823
	movl	-84(%ebp), %eax
	cmpl	%eax, -92(%ebp)
	ja	.L825
	movl	-88(%ebp), %edx
	cmpl	%edx, -96(%ebp)
	jb	.L823
.L825:
	.loc 1 1674 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, 12(%ebp)
	.loc 1 1675 0
	jmp	.L826
.L823:
	.loc 1 1671 0
	movl	-36(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
.L821:
	.loc 1 1670 0
	cmpl	$0, -36(%ebp)
	jne	.L822
.L826:
	.loc 1 1678 0
	movl	-36(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	addl	-64(%ebp), %esi
	adcl	-60(%ebp), %edi
	movl	%edx, %ecx
	xorl	%edi, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L827
.LBB29:
	.loc 1 1681 0
	movl	-36(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	addl	-64(%ebp), %esi
	adcl	-60(%ebp), %edi
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1686 0
	cmpl	$0, 40(%ebp)
	je	.L829
	movl	40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L829
	movl	40(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L829
	movl	40(%ebp), %ecx
	movl	%ecx, -76(%ebp)
	jmp	.L833
.L829:
	movl	$0, -76(%ebp)
.L833:
	movl	-76(%ebp), %esi
	movl	%esi, -20(%ebp)
	.loc 1 1687 0
	movl	$1, 20(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	expand_shift@PLT
	movl	%eax, 12(%ebp)
.L827:
.LBE29:
	.loc 1 1690 0
	movl	-36(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	subl	-64(%ebp), %eax
	sbbl	-60(%ebp), %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	$0, 20(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -132(%ebp)
.L789:
	movl	-132(%ebp), %eax
	.loc 1 1693 0
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	extract_fixed_bit_field, .-extract_fixed_bit_field
	.type	mask_rtx, @function
mask_rtx:
.LFB23:
	.loc 1 1705 0
	pushl	%ebp
.LCFI44:
	movl	%esp, %ebp
.LCFI45:
	pushl	%edi
.LCFI46:
	pushl	%esi
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$60, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1708 0
	cmpl	$63, 12(%ebp)
	jg	.L836
	.loc 1 1709 0
	movl	12(%ebp), %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L853
	movl	%eax, %edx
	xorl	%eax, %eax
.L853:
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	jmp	.L838
.L836:
	.loc 1 1711 0
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
.L838:
	.loc 1 1713 0
	movl	16(%ebp), %eax
	addl	12(%ebp), %eax
	cmpl	$63, %eax
	jg	.L839
	.loc 1 1714 0
	movl	12(%ebp), %eax
	negl	%eax
	subl	16(%ebp), %eax
	leal	64(%eax), %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L852
	movl	%edi, %esi
	xorl	%edi, %edi
.L852:
	movl	%esi, -48(%ebp)
	movl	%edi, -44(%ebp)
	movl	-32(%ebp), %esi
	movl	-28(%ebp), %edi
	movl	-48(%ebp), %eax
	andl	%esi, %eax
	movl	-44(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
.L839:
	.loc 1 1717 0
	cmpl	$64, 12(%ebp)
	jg	.L841
	.loc 1 1718 0
	movl	$-1, -24(%ebp)
	movl	$-1, -20(%ebp)
	jmp	.L843
.L841:
	.loc 1 1720 0
	movl	12(%ebp), %ecx
	subl	$64, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L851
	movl	%eax, %edx
	xorl	%eax, %eax
.L851:
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
.L843:
	.loc 1 1722 0
	movl	16(%ebp), %eax
	addl	12(%ebp), %eax
	cmpl	$64, %eax
	jle	.L844
	.loc 1 1723 0
	movl	12(%ebp), %eax
	negl	%eax
	subl	16(%ebp), %eax
	leal	128(%eax), %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L850
	movl	%edi, %esi
	xorl	%edi, %edi
.L850:
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-24(%ebp), %esi
	movl	-20(%ebp), %edi
	movl	-40(%ebp), %eax
	andl	%esi, %eax
	movl	-36(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	jmp	.L846
.L844:
	.loc 1 1726 0
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
.L846:
	.loc 1 1728 0
	cmpl	$0, 20(%ebp)
	je	.L847
	.loc 1 1730 0
	movl	-24(%ebp), %ecx
	movl	-20(%ebp), %esi
	movl	%ecx, %eax
	notl	%eax
	movl	%esi, %edx
	notl	%edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 1731 0
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %esi
	movl	%ecx, %eax
	notl	%eax
	movl	%esi, %edx
	notl	%edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
.L847:
	.loc 1 1734 0
	movl	8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	immed_double_const@PLT
	.loc 1 1735 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE23:
	.size	mask_rtx, .-mask_rtx
	.type	lshift_value, @function
lshift_value:
.LFB24:
	.loc 1 1745 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%edi
.LCFI52:
	pushl	%esi
.LCFI53:
	pushl	%ebx
.LCFI54:
	subl	$76, %esp
.LCFI55:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1746 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 1749 0
	cmpl	$63, 20(%ebp)
	jg	.L855
	.loc 1 1750 0
	movl	20(%ebp), %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L867
	movl	%esi, %edi
	xorl	%esi, %esi
.L867:
	movl	%esi, %eax
	notl	%eax
	movl	%edi, %edx
	notl	%edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-40(%ebp), %eax
	andl	%esi, %eax
	movl	-36(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
.L855:
	.loc 1 1752 0
	cmpl	$63, 16(%ebp)
	jg	.L857
	.loc 1 1754 0
	movl	16(%ebp), %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L866
	movl	%eax, %edx
	xorl	%eax, %eax
.L866:
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 1755 0
	cmpl	$0, 16(%ebp)
	jle	.L859
	movl	$64, %eax
	movl	%eax, %ecx
	subl	16(%ebp), %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L865
	movl	%edx, %eax
	xorl	%edx, %edx
.L865:
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	jmp	.L861
.L859:
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
.L861:
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	jmp	.L862
.L857:
	.loc 1 1759 0
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	.loc 1 1760 0
	movl	16(%ebp), %ecx
	subl	$64, %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L864
	movl	%eax, %edx
	xorl	%eax, %eax
.L864:
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
.L862:
	.loc 1 1763 0
	movl	8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	immed_double_const@PLT
	.loc 1 1764 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE24:
	.size	lshift_value, .-lshift_value
	.type	extract_split_bit_field, @function
extract_split_bit_field:
.LFB25:
	.loc 1 1778 0
	pushl	%ebp
.LCFI56:
	movl	%esp, %ebp
.LCFI57:
	pushl	%edi
.LCFI58:
	pushl	%esi
.LCFI59:
	pushl	%ebx
.LCFI60:
	subl	$252, %esp
.LCFI61:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 1780 0
	movl	$0, -40(%ebp)
	.loc 1 1781 0
	movl	$0, -36(%ebp)
	.loc 1 1782 0
	movl	$1, -32(%ebp)
	.loc 1 1786 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L869
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L871
.L869:
	.loc 1 1787 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L872
	movl	$64, -200(%ebp)
	jmp	.L874
.L872:
	movl	$32, -200(%ebp)
.L874:
	movl	-200(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1786 0
	jmp	.L897
.L871:
	.loc 1 1789 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L876
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -192(%ebp)
	jmp	.L878
.L876:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L879
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -188(%ebp)
	jmp	.L881
.L879:
	movl	$8, -188(%ebp)
.L881:
	movl	-188(%ebp), %edx
	movl	%edx, -192(%ebp)
.L878:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L882
	movl	$64, -184(%ebp)
	jmp	.L884
.L882:
	movl	$32, -184(%ebp)
.L884:
	movl	-184(%ebp), %esi
	cmpl	%esi, -192(%ebp)
	jae	.L885
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L887
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -180(%ebp)
	jmp	.L889
.L887:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L890
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -176(%ebp)
	jmp	.L892
.L890:
	movl	$8, -176(%ebp)
.L892:
	movl	-176(%ebp), %edi
	movl	%edi, -180(%ebp)
.L889:
	movl	-180(%ebp), %eax
	movl	%eax, -196(%ebp)
	jmp	.L893
.L885:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L894
	movl	$64, -172(%ebp)
	jmp	.L896
.L894:
	movl	$32, -172(%ebp)
.L896:
	movl	-172(%ebp), %edx
	movl	%edx, -196(%ebp)
.L893:
	movl	-196(%ebp), %esi
	movl	%esi, -44(%ebp)
	.loc 1 1791 0
	jmp	.L897
.L898:
.LBB30:
	.loc 1 1798 0
	movl	-40(%ebp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	-96(%ebp), %esi
	adcl	-92(%ebp), %edi
	movl	-44(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 1799 0
	movl	-40(%ebp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	-96(%ebp), %esi
	adcl	-92(%ebp), %edi
	movl	-44(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 1804 0
	movl	-40(%ebp), %esi
	movl	$0, %edi
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -224(%ebp)
	movl	%edx, -220(%ebp)
	movl	-224(%ebp), %eax
	movl	-220(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L899
	movl	$64, -152(%ebp)
	movl	$0, -148(%ebp)
	jmp	.L901
.L899:
	movl	$32, -152(%ebp)
	movl	$0, -148(%ebp)
.L901:
	movl	-148(%ebp), %edx
	cmpl	%edx, -156(%ebp)
	ja	.L902
	movl	-148(%ebp), %esi
	cmpl	%esi, -156(%ebp)
	jb	.L904
	movl	-152(%ebp), %edi
	cmpl	%edi, -160(%ebp)
	jae	.L902
.L904:
	movl	-40(%ebp), %esi
	movl	$0, %edi
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -224(%ebp)
	movl	%edx, -220(%ebp)
	movl	-224(%ebp), %eax
	movl	-220(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, -168(%ebp)
	movl	%edx, -164(%ebp)
	jmp	.L905
.L902:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L906
	movl	$64, -144(%ebp)
	movl	$0, -140(%ebp)
	jmp	.L908
.L906:
	movl	$32, -144(%ebp)
	movl	$0, -140(%ebp)
.L908:
	movl	-144(%ebp), %esi
	movl	-140(%ebp), %edi
	movl	%esi, -168(%ebp)
	movl	%edi, -164(%ebp)
.L905:
	movl	-168(%ebp), %eax
	movl	-164(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 1805 0
	movl	-44(%ebp), %eax
	movl	$0, %edx
	subl	-64(%ebp), %eax
	sbbl	-60(%ebp), %edx
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	%esi, -216(%ebp)
	movl	%edi, -212(%ebp)
	movl	%eax, -208(%ebp)
	movl	%edx, -204(%ebp)
	movl	-212(%ebp), %edi
	cmpl	%edi, -204(%ebp)
	jb	.L909
	movl	-212(%ebp), %eax
	cmpl	%eax, -204(%ebp)
	ja	.L910
	movl	-216(%ebp), %edx
	cmpl	%edx, -208(%ebp)
	jbe	.L909
.L910:
	movl	-216(%ebp), %esi
	movl	-212(%ebp), %edi
	movl	%esi, -208(%ebp)
	movl	%edi, -204(%ebp)
.L909:
	movl	-208(%ebp), %eax
	movl	-204(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 1813 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L911
.LBB31:
	.loc 1 1815 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -136(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L913
	movl	$8, -132(%ebp)
	jmp	.L915
.L913:
	movl	$4, -132(%ebp)
.L915:
	movl	-136(%ebp), %eax
	movl	$0, %edx
	divl	-132(%ebp)
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1816 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_subword_force@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1818 0
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	jmp	.L916
.L911:
.LBE31:
	.loc 1 1820 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L917
	.loc 1 1822 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-56(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_subword_force@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1823 0
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	jmp	.L916
.L917:
	.loc 1 1826 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L916:
	.loc 1 1832 0
	movl	-44(%ebp), %eax
	movl	$0, %edx
	movl	%edx, %esi
	imull	-56(%ebp), %esi
	movl	-52(%ebp), %ecx
	imull	%eax, %ecx
	addl	%ecx, %esi
	movl	-56(%ebp), %ecx
	mull	%ecx
	addl	%edx, %esi
	movl	%esi, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	$3, %edi, %esi
	shrl	$3, %edi
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	$1, 36(%esp)
	movl	$0, 32(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	extract_fixed_bit_field
	movl	%eax, -28(%ebp)
	.loc 1 1835 0
	movl	-72(%ebp), %eax
	addl	%eax, -40(%ebp)
	.loc 1 1838 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L919
	.loc 1 1840 0
	movl	-40(%ebp), %eax
	movl	$0, %edx
	movl	%edx, %ecx
	xorl	-84(%ebp), %ecx
	xorl	-88(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L923
	.loc 1 1841 0
	movl	-40(%ebp), %esi
	movl	$0, %edi
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$84, (%esp)
	call	expand_shift@PLT
	movl	%eax, -28(%ebp)
	jmp	.L923
.L919:
	.loc 1 1846 0
	movl	-40(%ebp), %eax
	movl	$0, %edx
	movl	%edx, %ecx
	xorl	-68(%ebp), %ecx
	xorl	-72(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L923
	.loc 1 1847 0
	movl	-40(%ebp), %eax
	movl	$0, %edx
	subl	-72(%ebp), %eax
	sbbl	-68(%ebp), %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$84, (%esp)
	call	expand_shift@PLT
	movl	%eax, -28(%ebp)
.L923:
	.loc 1 1851 0
	cmpl	$0, -32(%ebp)
	je	.L925
	.loc 1 1852 0
	movl	-28(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L927
.L925:
	.loc 1 1856 0
	movl	optab_table@GOT(%ebx), %eax
	movl	76(%eax), %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	$3, 24(%esp)
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -36(%ebp)
.L927:
	.loc 1 1859 0
	movl	$0, -32(%ebp)
.L897:
.LBE30:
	.loc 1 1791 0
	movl	-40(%ebp), %esi
	movl	$0, %edi
	movl	%esi, -128(%ebp)
	movl	%edi, -124(%ebp)
	movl	-124(%ebp), %edi
	cmpl	-84(%ebp), %edi
	jb	.L898
	movl	-124(%ebp), %eax
	cmpl	-84(%ebp), %eax
	ja	.L929
	movl	-128(%ebp), %edx
	cmpl	-88(%ebp), %edx
	jb	.L898
.L929:
	.loc 1 1863 0
	cmpl	$0, 28(%ebp)
	je	.L930
	.loc 1 1864 0
	movl	-36(%ebp), %esi
	movl	%esi, -116(%ebp)
	jmp	.L932
.L930:
	.loc 1 1866 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L933
	movl	$64, -112(%ebp)
	movl	$0, -108(%ebp)
	jmp	.L935
.L933:
	movl	$32, -112(%ebp)
	movl	$0, -108(%ebp)
.L935:
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	subl	-88(%ebp), %eax
	sbbl	-84(%ebp), %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$84, (%esp)
	call	expand_shift@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1869 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L936
	movl	$64, -104(%ebp)
	movl	$0, -100(%ebp)
	jmp	.L938
.L936:
	movl	$32, -104(%ebp)
	movl	$0, -100(%ebp)
.L938:
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	subl	-88(%ebp), %eax
	sbbl	-84(%ebp), %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -116(%ebp)
.L932:
	movl	-116(%ebp), %eax
	.loc 1 1871 0
	addl	$252, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE25:
	.size	extract_split_bit_field, .-extract_split_bit_field
.globl expand_inc
	.type	expand_inc, @function
expand_inc:
.LFB26:
	.loc 1 1878 0
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
	.loc 1 1881 0
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1882 0
	movl	-8(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L943
	.loc 1 1883 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L943:
	.loc 1 1884 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	expand_inc, .-expand_inc
.globl expand_dec
	.type	expand_dec, @function
expand_dec:
.LFB27:
	.loc 1 1891 0
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
	.loc 1 1894 0
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %ecx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1895 0
	movl	-8(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L947
	.loc 1 1896 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L947:
	.loc 1 1897 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	expand_dec, .-expand_dec
	.section	.rodata
	.type	__FUNCTION__.15265, @object
	.size	__FUNCTION__.15265, 13
__FUNCTION__.15265:
	.string	"expand_shift"
	.text
.globl expand_shift
	.type	expand_shift, @function
expand_shift:
.LFB28:
	.loc 1 1914 0
	pushl	%ebp
.LCFI70:
	movl	%esp, %ebp
.LCFI71:
	pushl	%edi
.LCFI72:
	pushl	%esi
.LCFI73:
	pushl	%ebx
.LCFI74:
	subl	$156, %esp
.LCFI75:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1915 0
	movl	$0, -60(%ebp)
	.loc 1 1916 0
	cmpl	$84, 8(%ebp)
	je	.L949
	cmpl	$86, 8(%ebp)
	jne	.L951
.L949:
	movl	$1, -136(%ebp)
	jmp	.L952
.L951:
	movl	$0, -136(%ebp)
.L952:
	movl	-136(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1917 0
	cmpl	$86, 8(%ebp)
	je	.L953
	cmpl	$87, 8(%ebp)
	jne	.L955
.L953:
	movl	$1, -132(%ebp)
	jmp	.L956
.L955:
	movl	$0, -132(%ebp)
.L956:
	movl	-132(%ebp), %edx
	movl	%edx, -52(%ebp)
	.loc 1 1924 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -64(%ebp)
	.loc 1 1929 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L957
	movl	-64(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	12(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -120(%ebp)
	movl	-120(%ebp), %ecx
	movl	%ecx, -120(%ebp)
	movl	$0, -116(%ebp)
	movl	-116(%ebp), %eax
	cmpl	%eax, -124(%ebp)
	jb	.L957
	movl	-116(%ebp), %edx
	cmpl	%edx, -124(%ebp)
	ja	.L960
	movl	-120(%ebp), %ecx
	cmpl	%ecx, -128(%ebp)
	jb	.L957
.L960:
	.loc 1 1932 0
	movl	-64(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	movl	12(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -64(%ebp)
	.loc 1 1929 0
	jmp	.L961
.L957:
	.loc 1 1934 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L961
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_lowpart_p@PLT
	testl	%eax, %eax
	je	.L961
	.loc 1 1936 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
.L961:
	.loc 1 1940 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L964
	.loc 1 1941 0
	movl	16(%ebp), %eax
	movl	%eax, -108(%ebp)
	jmp	.L966
.L964:
	.loc 1 1943 0
	movl	$0, -48(%ebp)
	jmp	.L967
.L968:
.LBB32:
	.loc 1 1947 0
	cmpl	$0, -48(%ebp)
	jne	.L969
	.loc 1 1948 0
	movl	$0, -44(%ebp)
	jmp	.L971
.L969:
	.loc 1 1949 0
	cmpl	$1, -48(%ebp)
	jne	.L972
	.loc 1 1950 0
	movl	$2, -44(%ebp)
	jmp	.L971
.L972:
	.loc 1 1952 0
	movl	$3, -44(%ebp)
.L971:
	.loc 1 1954 0
	cmpl	$0, -52(%ebp)
	je	.L974
	.loc 1 1957 0
	cmpl	$2, -44(%ebp)
	je	.L976
	.loc 1 1959 0
	cmpl	$3, -44(%ebp)
	jne	.L978
.LBB33:
	.loc 1 1973 0
	movl	24(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L980
	movl	24(%ebp), %edx
	movl	%edx, -104(%ebp)
	jmp	.L982
.L980:
	movl	$0, -104(%ebp)
.L982:
	movl	-104(%ebp), %ecx
	movl	%ecx, -40(%ebp)
	.loc 1 1975 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1976 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1982 0
	movl	12(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1984 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, 16(%ebp)
	.loc 1 1986 0
	cmpl	$0, -56(%ebp)
	je	.L983
	movl	$84, -100(%ebp)
	jmp	.L985
.L983:
	movl	$85, -100(%ebp)
.L985:
	movl	$1, 20(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_shift@PLT
	movl	%eax, -60(%ebp)
	.loc 1 1988 0
	cmpl	$0, -56(%ebp)
	je	.L986
	movl	$85, -96(%ebp)
	jmp	.L988
.L986:
	movl	$84, -96(%ebp)
.L988:
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %edx
	movl	%edx, (%esp)
	call	expand_shift@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1990 0
	movl	optab_table@GOT(%ebx), %eax
	movl	76(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -108(%ebp)
	jmp	.L966
.L978:
.LBE33:
	.loc 1 1994 0
	cmpl	$0, -56(%ebp)
	je	.L989
	movl	optab_table@GOT(%ebx), %eax
	movl	96(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L991
.L989:
	movl	optab_table@GOT(%ebx), %eax
	movl	100(%eax), %eax
	movl	%eax, -92(%ebp)
.L991:
	movl	-44(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-92(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -60(%ebp)
	.loc 1 2001 0
	cmpl	$0, -60(%ebp)
	jne	.L1001
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1001
	movl	-64(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	cmpl	$0, -84(%ebp)
	js	.L1001
	cmpl	$0, -84(%ebp)
	jg	.L996
	cmpl	$0, -88(%ebp)
	jbe	.L1001
.L996:
	movl	-64(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	movl	12(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %ecx
	jae	.L1001
	.loc 1 2004 0
	movl	12(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	-64(%ebp), %ecx
	movl	4(%ecx), %esi
	movl	8(%ecx), %edi
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -80(%ebp)
	cmpl	$0, -56(%ebp)
	je	.L998
	movl	optab_table@GOT(%ebx), %eax
	movl	100(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1000
.L998:
	movl	optab_table@GOT(%ebx), %eax
	movl	96(%eax), %eax
	movl	%eax, -76(%ebp)
.L1000:
	movl	-44(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-80(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -60(%ebp)
	jmp	.L1001
.L974:
	.loc 1 2011 0
	cmpl	$0, 28(%ebp)
	je	.L1001
	.loc 1 2012 0
	cmpl	$0, -56(%ebp)
	je	.L1003
	movl	optab_table@GOT(%ebx), %eax
	movl	84(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1005
.L1003:
	movl	optab_table@GOT(%ebx), %eax
	movl	88(%eax), %eax
	movl	%eax, -72(%ebp)
.L1005:
	movl	-44(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-72(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -60(%ebp)
.L1001:
	.loc 1 2019 0
	cmpl	$0, -60(%ebp)
	jne	.L976
	cmpl	$0, -52(%ebp)
	jne	.L976
	cmpl	$0, 28(%ebp)
	je	.L1008
	cmpl	$0, -56(%ebp)
	jne	.L976
	cmpl	$2, -44(%ebp)
	jne	.L976
.L1008:
.LBB34:
	.loc 1 2022 0
	movl	-44(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2026 0
	cmpl	$0, 28(%ebp)
	je	.L1011
	.loc 1 2027 0
	movl	$4, -20(%ebp)
.L1011:
	.loc 1 2031 0
	cmpl	$0, -56(%ebp)
	je	.L1013
	movl	optab_table@GOT(%ebx), %eax
	movl	84(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1015
.L1013:
	movl	optab_table@GOT(%ebx), %eax
	movl	92(%eax), %eax
	movl	%eax, -68(%ebp)
.L1015:
	movl	-20(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-68(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -60(%ebp)
.L976:
.LBE34:
.LBE32:
	.loc 1 1943 0
	addl	$1, -48(%ebp)
.L967:
	cmpl	$0, -60(%ebp)
	jne	.L1016
	cmpl	$2, -48(%ebp)
	jle	.L968
.L1016:
	.loc 1 2042 0
	cmpl	$0, -60(%ebp)
	jne	.L1018
	.loc 1 2043 0
	leal	__FUNCTION__.15265@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2043, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1018:
	.loc 1 2044 0
	movl	-60(%ebp), %eax
	movl	%eax, -108(%ebp)
.L966:
	movl	-108(%ebp), %eax
	.loc 1 2045 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE28:
	.size	expand_shift, .-expand_shift
	.type	synth_mult, @function
synth_mult:
.LFB29:
	.loc 1 2104 0
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
	subl	$188, %esp
.LCFI81:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -108(%ebp)
	.loc 1 2104 0
	movl	%gs:20, %eax
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	.loc 1 2112 0
	movl	20(%ebp), %eax
	movl	%eax, %edx
	movl	-100(%ebp), %eax
	movw	%dx, (%eax)
	.loc 1 2114 0
	cmpl	$0, 20(%ebp)
	jle	.L1091
	.loc 1 2118 0
	movl	-112(%ebp), %eax
	xorl	$1, %eax
	orl	-108(%ebp), %eax
	testl	%eax, %eax
	jne	.L1024
	.loc 1 2120 0
	movl	-100(%ebp), %eax
	movw	$1, 2(%eax)
	.loc 1 2121 0
	movl	-100(%ebp), %eax
	movw	$0, (%eax)
	.loc 1 2122 0
	movl	-100(%ebp), %eax
	movl	$1, 4(%eax)
	.loc 1 2123 0
	jmp	.L1091
.L1024:
	.loc 1 2128 0
	movl	-112(%ebp), %eax
	orl	-108(%ebp), %eax
	testl	%eax, %eax
	jne	.L1026
	.loc 1 2130 0
	movl	zero_cost@GOTOFF(%ebx), %eax
	cmpl	20(%ebp), %eax
	jge	.L1091
	.loc 1 2134 0
	movl	-100(%ebp), %eax
	movw	$1, 2(%eax)
	.loc 1 2135 0
	movl	zero_cost@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-100(%ebp), %eax
	movw	%dx, (%eax)
	.loc 1 2136 0
	movl	-100(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 2137 0
	jmp	.L1091
.L1026:
	.loc 1 2143 0
	subl	$352, %esp
	leal	16(%esp), %edx
	movl	%edx, -148(%ebp)
	movl	-148(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -148(%ebp)
	movl	-148(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2144 0
	subl	$352, %esp
	leal	16(%esp), %edx
	movl	%edx, -144(%ebp)
	movl	-144(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -144(%ebp)
	movl	-144(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2149 0
	movl	-112(%ebp), %eax
	andl	$1, %eax
	movl	-108(%ebp), %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1029
	.loc 1 2151 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	%esi, %eax
	andl	-112(%ebp), %eax
	movl	%edi, %edx
	andl	-108(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, -64(%ebp)
	.loc 1 2152 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1031
	movl	$64, -140(%ebp)
	jmp	.L1033
.L1031:
	movl	$32, -140(%ebp)
.L1033:
	movl	-140(%ebp), %edx
	cmpl	-64(%ebp), %edx
	jle	.L1029
	.loc 1 2154 0
	movl	-64(%ebp), %ecx
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L1097
	movl	%edx, %eax
	xorl	%edx, %edx
.L1097:
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 2155 0
	movl	-64(%ebp), %eax
	movl	shift_cost@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2156 0
	movl	-52(%ebp), %edx
	movl	20(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, 12(%esp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	synth_mult
	.loc 1 2158 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cwtl
	addl	%eax, -52(%ebp)
	.loc 1 2159 0
	movl	-52(%ebp), %eax
	cmpl	20(%ebp), %eax
	jge	.L1029
.LBB35:
	.loc 1 2162 0
	movl	-60(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2163 0
	movl	-56(%ebp), %eax
	movzwl	2(%eax), %eax
	movswl	%ax,%ecx
	movl	-64(%ebp), %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movb	%dl, 260(%ecx,%eax)
	.loc 1 2164 0
	movl	-56(%ebp), %eax
	movzwl	2(%eax), %eax
	movswl	%ax,%edx
	movl	-56(%ebp), %eax
	movl	$2, 4(%eax,%edx,4)
	.loc 1 2165 0
	movl	-52(%ebp), %eax
	movl	%eax, 20(%ebp)
.L1029:
.LBE35:
	.loc 1 2171 0
	movl	-112(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1036
.LBB36:
	.loc 1 2175 0
	movl	$1, -80(%ebp)
	movl	$0, -76(%ebp)
	jmp	.L1038
.L1039:
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	shldl	$1, %eax, %edx
	addl	%eax, %eax
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
.L1038:
	movl	-112(%ebp), %ecx
	movl	-108(%ebp), %esi
	movl	-80(%ebp), %eax
	andl	%ecx, %eax
	movl	-76(%ebp), %edx
	andl	%esi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1039
	.loc 1 2182 0
	movl	-80(%ebp), %eax
	orl	-76(%ebp), %eax
	testl	%eax, %eax
	je	.L1041
	cmpl	$0, -76(%ebp)
	jb	.L1043
	cmpl	$0, -76(%ebp)
	ja	.L1045
	cmpl	$2, -80(%ebp)
	jbe	.L1043
.L1045:
	movl	-112(%ebp), %eax
	xorl	$3, %eax
	orl	-108(%ebp), %eax
	testl	%eax, %eax
	je	.L1043
.L1041:
	.loc 1 2190 0
	movl	add_cost@GOTOFF(%ebx), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2191 0
	movl	-52(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%ecx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	synth_mult
	.loc 1 2193 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cwtl
	addl	%eax, -52(%ebp)
	.loc 1 2194 0
	movl	-52(%ebp), %eax
	cmpl	20(%ebp), %eax
	jge	.L1036
.LBB37:
	.loc 1 2197 0
	movl	-60(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2198 0
	movl	-56(%ebp), %eax
	movzwl	2(%eax), %eax
	movswl	%ax,%edx
	movl	-56(%ebp), %eax
	movb	$0, 260(%edx,%eax)
	.loc 1 2199 0
	movl	-56(%ebp), %eax
	movzwl	2(%eax), %eax
	movswl	%ax,%edx
	movl	-56(%ebp), %eax
	movl	$4, 4(%eax,%edx,4)
	.loc 1 2200 0
	movl	-52(%ebp), %eax
	movl	%eax, 20(%ebp)
	.loc 1 2182 0
	jmp	.L1036
.L1043:
.LBE37:
	.loc 1 2207 0
	movl	add_cost@GOTOFF(%ebx), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2208 0
	movl	-52(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%ecx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	synth_mult
	.loc 1 2210 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cwtl
	addl	%eax, -52(%ebp)
	.loc 1 2211 0
	movl	-52(%ebp), %eax
	cmpl	20(%ebp), %eax
	jge	.L1036
.LBB38:
	.loc 1 2214 0
	movl	-60(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2215 0
	movl	-56(%ebp), %eax
	movzwl	2(%eax), %eax
	movswl	%ax,%edx
	movl	-56(%ebp), %eax
	movb	$0, 260(%edx,%eax)
	.loc 1 2216 0
	movl	-56(%ebp), %eax
	movzwl	2(%eax), %eax
	movswl	%ax,%edx
	movl	-56(%ebp), %eax
	movl	$3, 4(%eax,%edx,4)
	.loc 1 2217 0
	movl	-52(%ebp), %eax
	movl	%eax, 20(%ebp)
.L1036:
.LBE38:
.LBE36:
	.loc 1 2232 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, -64(%ebp)
	jmp	.L1049
.L1050:
.LBB39:
	.loc 1 2236 0
	movl	-64(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1096
	movl	%eax, %edx
	xorl	%eax, %eax
.L1096:
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 2237 0
	movl	-112(%ebp), %esi
	movl	-108(%ebp), %edi
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1051
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
	movl	-156(%ebp), %edx
	cmpl	-68(%ebp), %edx
	jb	.L1051
	movl	-156(%ebp), %eax
	cmpl	-68(%ebp), %eax
	ja	.L1054
	movl	-160(%ebp), %edx
	cmpl	-72(%ebp), %edx
	jbe	.L1051
.L1054:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1055
	movl	$64, -136(%ebp)
	jmp	.L1057
.L1055:
	movl	$32, -136(%ebp)
.L1057:
	movl	-136(%ebp), %eax
	cmpl	-64(%ebp), %eax
	jle	.L1051
	.loc 1 2239 0
	movl	-64(%ebp), %eax
	movl	shift_cost@GOTOFF(%ebx,%eax,4), %edx
	movl	add_cost@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	shiftadd_cost@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -132(%ebp)
	movl	%edx, -164(%ebp)
	movl	-132(%ebp), %edx
	cmpl	%edx, -164(%ebp)
	jle	.L1059
	movl	-132(%ebp), %eax
	movl	%eax, -164(%ebp)
.L1059:
	movl	-164(%ebp), %edx
	movl	%edx, -52(%ebp)
	.loc 1 2240 0
	movl	-52(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, %esi
	subl	%edx, %esi
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	synth_mult
	.loc 1 2242 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cwtl
	addl	%eax, -52(%ebp)
	.loc 1 2243 0
	movl	-52(%ebp), %eax
	cmpl	20(%ebp), %eax
	jge	.L1062
.LBB40:
	.loc 1 2246 0
	movl	-60(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2247 0
	movl	-56(%ebp), %eax
	movzwl	2(%eax), %eax
	movswl	%ax,%ecx
	movl	-64(%ebp), %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movb	%dl, 260(%ecx,%eax)
	.loc 1 2248 0
	movl	-56(%ebp), %eax
	movzwl	2(%eax), %eax
	movswl	%ax,%edx
	movl	-56(%ebp), %eax
	movl	$5, 4(%eax,%edx,4)
	.loc 1 2249 0
	movl	-52(%ebp), %eax
	movl	%eax, 20(%ebp)
	.loc 1 2252 0
	jmp	.L1062
.L1051:
.LBE40:
	.loc 1 2255 0
	movl	-64(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1095
	movl	%eax, %edx
	xorl	%eax, %eax
.L1095:
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 2256 0
	movl	-112(%ebp), %esi
	movl	-108(%ebp), %edi
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1063
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	movl	-172(%ebp), %edx
	cmpl	-68(%ebp), %edx
	jb	.L1063
	movl	-172(%ebp), %eax
	cmpl	-68(%ebp), %eax
	ja	.L1066
	movl	-176(%ebp), %edx
	cmpl	-72(%ebp), %edx
	jbe	.L1063
.L1066:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1067
	movl	$64, -128(%ebp)
	jmp	.L1069
.L1067:
	movl	$32, -128(%ebp)
.L1069:
	movl	-128(%ebp), %eax
	cmpl	-64(%ebp), %eax
	jle	.L1063
	.loc 1 2258 0
	movl	-64(%ebp), %eax
	movl	shift_cost@GOTOFF(%ebx,%eax,4), %edx
	movl	add_cost@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	shiftsub_cost@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -124(%ebp)
	movl	%edx, -180(%ebp)
	movl	-124(%ebp), %edx
	cmpl	%edx, -180(%ebp)
	jle	.L1071
	movl	-124(%ebp), %eax
	movl	%eax, -180(%ebp)
.L1071:
	movl	-180(%ebp), %edx
	movl	%edx, -52(%ebp)
	.loc 1 2259 0
	movl	-52(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, %esi
	subl	%edx, %esi
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	synth_mult
	.loc 1 2261 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cwtl
	addl	%eax, -52(%ebp)
	.loc 1 2262 0
	movl	-52(%ebp), %eax
	cmpl	20(%ebp), %eax
	jge	.L1062
.LBB41:
	.loc 1 2265 0
	movl	-60(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2266 0
	movl	-56(%ebp), %eax
	movzwl	2(%eax), %eax
	movswl	%ax,%ecx
	movl	-64(%ebp), %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movb	%dl, 260(%ecx,%eax)
	.loc 1 2267 0
	movl	-56(%ebp), %eax
	movzwl	2(%eax), %eax
	movswl	%ax,%edx
	movl	-56(%ebp), %eax
	movl	$6, 4(%eax,%edx,4)
	.loc 1 2268 0
	movl	-52(%ebp), %eax
	movl	%eax, 20(%ebp)
	.loc 1 2270 0
	jmp	.L1062
.L1063:
.LBE41:
.LBE39:
	.loc 1 2232 0
	subl	$1, -64(%ebp)
.L1049:
	cmpl	$1, -64(%ebp)
	jg	.L1050
.L1062:
	.loc 1 2276 0
	movl	-112(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1074
	.loc 1 2278 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 2279 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	-88(%ebp), %eax
	andl	%esi, %eax
	movl	-84(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 2280 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	exact_log2_wide@PLT
	movl	%eax, -64(%ebp)
	.loc 1 2281 0
	cmpl	$0, -64(%ebp)
	js	.L1076
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1078
	movl	$64, -120(%ebp)
	jmp	.L1080
.L1078:
	movl	$32, -120(%ebp)
.L1080:
	movl	-120(%ebp), %eax
	cmpl	-64(%ebp), %eax
	jle	.L1076
	.loc 1 2283 0
	movl	-64(%ebp), %eax
	movl	shiftadd_cost@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2284 0
	movl	-52(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, %esi
	subl	%edx, %esi
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	-64(%ebp), %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L1094
	movl	%edx, %eax
	xorl	%edx, %edx
.L1094:
	movl	%esi, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	synth_mult
	.loc 1 2286 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cwtl
	addl	%eax, -52(%ebp)
	.loc 1 2287 0
	movl	-52(%ebp), %eax
	cmpl	20(%ebp), %eax
	jge	.L1076
.LBB42:
	.loc 1 2290 0
	movl	-60(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2291 0
	movl	-56(%ebp), %eax
	movzwl	2(%eax), %eax
	movswl	%ax,%ecx
	movl	-64(%ebp), %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movb	%dl, 260(%ecx,%eax)
	.loc 1 2292 0
	movl	-56(%ebp), %eax
	movzwl	2(%eax), %eax
	movswl	%ax,%edx
	movl	-56(%ebp), %eax
	movl	$7, 4(%eax,%edx,4)
	.loc 1 2293 0
	movl	-52(%ebp), %eax
	movl	%eax, 20(%ebp)
.L1076:
.LBE42:
	.loc 1 2297 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 2298 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	-88(%ebp), %eax
	andl	%esi, %eax
	movl	-84(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 2299 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	exact_log2_wide@PLT
	movl	%eax, -64(%ebp)
	.loc 1 2300 0
	cmpl	$0, -64(%ebp)
	js	.L1074
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1084
	movl	$64, -116(%ebp)
	jmp	.L1086
.L1084:
	movl	$32, -116(%ebp)
.L1086:
	movl	-116(%ebp), %edx
	cmpl	-64(%ebp), %edx
	jle	.L1074
	.loc 1 2302 0
	movl	-64(%ebp), %eax
	movl	shiftsub_cost@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2303 0
	movl	-52(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, %esi
	subl	%edx, %esi
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	-64(%ebp), %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L1093
	movl	%edx, %eax
	xorl	%edx, %edx
.L1093:
	movl	%esi, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	synth_mult
	.loc 1 2305 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cwtl
	addl	%eax, -52(%ebp)
	.loc 1 2306 0
	movl	-52(%ebp), %eax
	cmpl	20(%ebp), %eax
	jge	.L1074
.LBB43:
	.loc 1 2309 0
	movl	-60(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2310 0
	movl	-56(%ebp), %eax
	movzwl	2(%eax), %eax
	movswl	%ax,%ecx
	movl	-64(%ebp), %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movb	%dl, 260(%ecx,%eax)
	.loc 1 2311 0
	movl	-56(%ebp), %eax
	movzwl	2(%eax), %eax
	movswl	%ax,%edx
	movl	-56(%ebp), %eax
	movl	$8, 4(%eax,%edx,4)
	.loc 1 2312 0
	movl	-52(%ebp), %eax
	movl	%eax, 20(%ebp)
.L1074:
.LBE43:
	.loc 1 2319 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cwtl
	cmpl	20(%ebp), %eax
	je	.L1091
	.loc 1 2324 0
	movl	-56(%ebp), %eax
	movzwl	2(%eax), %eax
	cmpw	$64, %ax
	je	.L1091
	.loc 1 2330 0
	movl	-56(%ebp), %eax
	movzwl	2(%eax), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movl	-100(%ebp), %eax
	movw	%dx, 2(%eax)
	.loc 1 2331 0
	movl	20(%ebp), %eax
	movl	%eax, %edx
	movl	-100(%ebp), %eax
	movw	%dx, (%eax)
	.loc 1 2332 0
	movl	-100(%ebp), %eax
	movzwl	2(%eax), %eax
	cwtl
	leal	0(,%eax,4), %ecx
	movl	-56(%ebp), %edx
	addl	$4, %edx
	movl	-100(%ebp), %eax
	addl	$4, %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 2334 0
	movl	-100(%ebp), %eax
	movzwl	2(%eax), %eax
	movswl	%ax,%ecx
	movl	-56(%ebp), %edx
	addl	$260, %edx
	movl	-100(%ebp), %eax
	addl	$260, %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
.L1091:
	.loc 1 2336 0
	movl	-20(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L1092
	call	__stack_chk_fail_local
.L1092:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE29:
	.size	synth_mult, .-synth_mult
	.section	.rodata
	.type	__FUNCTION__.15690, @object
	.size	__FUNCTION__.15690, 12
__FUNCTION__.15690:
	.string	"expand_mult"
	.text
.globl expand_mult
	.type	expand_mult, @function
expand_mult:
.LFB30:
	.loc 1 2351 0
	pushl	%ebp
.LCFI82:
	movl	%esp, %ebp
.LCFI83:
	pushl	%ebx
.LCFI84:
	subl	$852, %esp
.LCFI85:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -732(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -736(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -740(%ebp)
	.loc 1 2351 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 2352 0
	movl	-736(%ebp), %eax
	movl	%eax, -712(%ebp)
	.loc 1 2363 0
	movl	-736(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L1099
	movl	-736(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	jne	.L1099
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L1099
	movl	-736(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1099
	.loc 1 2367 0
	movl	-736(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -712(%ebp)
	.loc 1 2363 0
	jmp	.L1104
.L1099:
	.loc 1 2368 0
	movl	8(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$32, %ax
	jbe	.L1104
	movl	-736(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1104
	movl	-736(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	jns	.L1104
	.loc 1 2371 0
	movl	$0, -712(%ebp)
.L1104:
	.loc 1 2378 0
	cmpl	$0, -712(%ebp)
	je	.L1108
	movl	-712(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1108
	cmpl	$0, 24(%ebp)
	jne	.L1111
	movl	flag_trapv@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1108
.L1111:
.LBB44:
	.loc 1 2383 0
	movl	-736(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -728(%ebp)
	movl	%edx, -724(%ebp)
	.loc 1 2387 0
	movl	$0, -700(%ebp)
	.loc 1 2391 0
	movl	-732(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -732(%ebp)
	.loc 1 2397 0
	movl	-736(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-732(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	$57, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	movl	%eax, -704(%ebp)
	.loc 1 2398 0
	movl	add_cost@GOTOFF(%ebx), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	-704(%ebp), %edx
	movl	%edx, -808(%ebp)
	movl	%eax, -804(%ebp)
	movl	-808(%ebp), %eax
	cmpl	%eax, -804(%ebp)
	jle	.L1113
	movl	-808(%ebp), %edx
	movl	%edx, -804(%ebp)
.L1113:
	movl	-804(%ebp), %eax
	movl	%eax, -704(%ebp)
	.loc 1 2400 0
	movl	-728(%ebp), %edx
	movl	-724(%ebp), %ecx
	movl	-704(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	leal	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	synth_mult
	.loc 1 2404 0
	movl	8(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	cmpw	$32, %ax
	ja	.L1114
	.loc 1 2406 0
	movzwl	-336(%ebp), %eax
	cwtl
	movl	-704(%ebp), %edx
	movl	%edx, -812(%ebp)
	movl	%eax, -800(%ebp)
	movl	-812(%ebp), %eax
	cmpl	%eax, -800(%ebp)
	jle	.L1116
	movl	-812(%ebp), %edx
	movl	%edx, -800(%ebp)
.L1116:
	movl	negate_cost@GOTOFF(%ebx), %eax
	movl	-800(%ebp), %ecx
	subl	%eax, %ecx
	movl	-728(%ebp), %eax
	movl	-724(%ebp), %edx
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	movl	%ecx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	-660(%ebp), %eax
	movl	%eax, (%esp)
	call	synth_mult
	.loc 1 2408 0
	movzwl	-660(%ebp), %eax
	movswl	%ax,%edx
	movl	negate_cost@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movzwl	-336(%ebp), %eax
	cwtl
	cmpl	%eax, %edx
	jge	.L1114
	.loc 1 2409 0
	leal	-336(%ebp), %ecx
	leal	-660(%ebp), %edx
	movl	$324, %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	memcpy@PLT
	movl	$1, -700(%ebp)
.L1114:
	.loc 1 2413 0
	movzwl	-336(%ebp), %eax
	cwtl
	movl	-704(%ebp), %edx
	movl	%edx, -816(%ebp)
	movl	%eax, -796(%ebp)
	movl	-816(%ebp), %eax
	cmpl	%eax, -796(%ebp)
	jle	.L1118
	movl	-816(%ebp), %edx
	movl	%edx, -796(%ebp)
.L1118:
	movl	add_cost@GOTOFF(%ebx), %eax
	movl	-796(%ebp), %ecx
	subl	%eax, %ecx
	movl	-728(%ebp), %eax
	movl	-724(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%ecx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	-660(%ebp), %eax
	movl	%eax, (%esp)
	call	synth_mult
	.loc 1 2415 0
	movzwl	-660(%ebp), %eax
	movswl	%ax,%edx
	movl	add_cost@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movzwl	-336(%ebp), %eax
	cwtl
	cmpl	%eax, %edx
	jge	.L1119
	.loc 1 2416 0
	leal	-336(%ebp), %ecx
	leal	-660(%ebp), %edx
	movl	$324, %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	memcpy@PLT
	movl	$2, -700(%ebp)
.L1119:
	.loc 1 2418 0
	movzwl	-336(%ebp), %eax
	cwtl
	cmpl	-704(%ebp), %eax
	jge	.L1108
.LBB45:
	.loc 1 2425 0
	movl	$0, 4(%esp)
	movl	-732(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, -732(%ebp)
	.loc 1 2429 0
	movl	-732(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1122
	.loc 1 2430 0
	movl	-732(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -732(%ebp)
.L1122:
	.loc 1 2435 0
	movl	-332(%ebp), %eax
	testl	%eax, %eax
	jne	.L1124
	.loc 1 2437 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, -692(%ebp)
	.loc 1 2438 0
	movl	$0, -720(%ebp)
	movl	$0, -716(%ebp)
	jmp	.L1126
.L1124:
	.loc 1 2440 0
	movl	-332(%ebp), %eax
	cmpl	$1, %eax
	jne	.L1127
	.loc 1 2442 0
	movl	-732(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, -692(%ebp)
	.loc 1 2443 0
	movl	$1, -720(%ebp)
	movl	$0, -716(%ebp)
	jmp	.L1126
.L1127:
	.loc 1 2446 0
	leal	__FUNCTION__.15690@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2446, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1126:
	.loc 1 2448 0
	movl	$1, -696(%ebp)
	jmp	.L1129
.L1130:
.LBB46:
	.loc 1 2450 0
	movl	-696(%ebp), %eax
	movzbl	-76(%ebp,%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -680(%ebp)
	.loc 1 2451 0
	call	preserve_subexpressions_p@PLT
	movl	%eax, -676(%ebp)
	.loc 1 2452 0
	cmpl	$0, -676(%ebp)
	jne	.L1131
	movl	-692(%ebp), %eax
	movl	%eax, -792(%ebp)
	jmp	.L1133
.L1131:
	movl	$0, -792(%ebp)
.L1133:
	movl	-792(%ebp), %edx
	movl	%edx, -672(%ebp)
	.loc 1 2456 0
	movzwl	-334(%ebp), %eax
	cwtl
	subl	$1, %eax
	cmpl	-696(%ebp), %eax
	jne	.L1134
	cmpl	$0, -740(%ebp)
	je	.L1134
	cmpl	$2, -700(%ebp)
	je	.L1134
	cmpl	$0, -676(%ebp)
	jne	.L1134
	movl	-740(%ebp), %eax
	movl	%eax, -788(%ebp)
	jmp	.L1139
.L1134:
	movl	$0, -788(%ebp)
.L1139:
	movl	-788(%ebp), %edx
	movl	%edx, -668(%ebp)
	.loc 1 2457 0
	cmpl	$0, -676(%ebp)
	jne	.L1140
	movl	-692(%ebp), %eax
	movl	%eax, -784(%ebp)
	jmp	.L1142
.L1140:
	movl	$0, -784(%ebp)
.L1142:
	movl	-784(%ebp), %edx
	movl	%edx, -664(%ebp)
	.loc 1 2459 0
	movl	-696(%ebp), %eax
	movl	-332(%ebp,%eax,4), %eax
	movl	%eax, -780(%ebp)
	cmpl	$8, -780(%ebp)
	ja	.L1143
	movl	-780(%ebp), %eax
	sall	$2, %eax
	movl	.L1151@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1151:
	.long	.L1143@GOTOFF
	.long	.L1143@GOTOFF
	.long	.L1144@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1146@GOTOFF
	.long	.L1147@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1149@GOTOFF
	.long	.L1150@GOTOFF
	.text
.L1144:
	.loc 1 2462 0
	movl	-680(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-692(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	expand_shift@PLT
	movl	%eax, -692(%ebp)
	.loc 1 2464 0
	movl	-680(%ebp), %ecx
	movl	-720(%ebp), %eax
	movl	-716(%ebp), %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1199
	movl	%eax, %edx
	xorl	%eax, %eax
.L1199:
	movl	%eax, -720(%ebp)
	movl	%edx, -716(%ebp)
	.loc 1 2465 0
	jmp	.L1152
.L1145:
	.loc 1 2468 0
	movl	-680(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-732(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	expand_shift@PLT
	movl	%eax, -688(%ebp)
	.loc 1 2470 0
	cmpl	$0, -668(%ebp)
	je	.L1153
	movl	-668(%ebp), %eax
	movl	%eax, -776(%ebp)
	jmp	.L1155
.L1153:
	movl	-664(%ebp), %edx
	movl	%edx, -776(%ebp)
.L1155:
	movl	-688(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-692(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	-776(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -692(%ebp)
	.loc 1 2473 0
	movl	-680(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1198
	movl	%eax, %edx
	xorl	%eax, %eax
.L1198:
	addl	%eax, -720(%ebp)
	adcl	%edx, -716(%ebp)
	.loc 1 2474 0
	jmp	.L1152
.L1146:
	.loc 1 2477 0
	movl	-680(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-732(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	expand_shift@PLT
	movl	%eax, -688(%ebp)
	.loc 1 2479 0
	cmpl	$0, -668(%ebp)
	je	.L1156
	movl	-668(%ebp), %eax
	movl	%eax, -772(%ebp)
	jmp	.L1158
.L1156:
	movl	-664(%ebp), %edx
	movl	%edx, -772(%ebp)
.L1158:
	movl	-688(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-692(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$86, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	-772(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -692(%ebp)
	.loc 1 2482 0
	movl	-680(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1197
	movl	%eax, %edx
	xorl	%eax, %eax
.L1197:
	subl	%eax, -720(%ebp)
	sbbl	%edx, -716(%ebp)
	.loc 1 2483 0
	jmp	.L1152
.L1149:
	.loc 1 2486 0
	movl	-680(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	$0, 20(%esp)
	movl	-672(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-692(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	expand_shift@PLT
	movl	%eax, -692(%ebp)
	.loc 1 2489 0
	cmpl	$0, -668(%ebp)
	je	.L1159
	movl	-668(%ebp), %eax
	movl	%eax, -768(%ebp)
	jmp	.L1161
.L1159:
	movl	-664(%ebp), %edx
	movl	%edx, -768(%ebp)
.L1161:
	movl	-732(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-692(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	-768(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -692(%ebp)
	.loc 1 2492 0
	movl	-680(%ebp), %ecx
	movl	-720(%ebp), %eax
	movl	-716(%ebp), %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1196
	movl	%eax, %edx
	xorl	%eax, %eax
.L1196:
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, -720(%ebp)
	movl	%edx, -716(%ebp)
	.loc 1 2493 0
	jmp	.L1152
.L1150:
	.loc 1 2496 0
	movl	-680(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	$0, 20(%esp)
	movl	-672(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-692(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	expand_shift@PLT
	movl	%eax, -692(%ebp)
	.loc 1 2499 0
	cmpl	$0, -668(%ebp)
	je	.L1162
	movl	-668(%ebp), %eax
	movl	%eax, -764(%ebp)
	jmp	.L1164
.L1162:
	movl	-664(%ebp), %edx
	movl	%edx, -764(%ebp)
.L1164:
	movl	-732(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-692(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$86, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	-764(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -692(%ebp)
	.loc 1 2502 0
	movl	-680(%ebp), %ecx
	movl	-720(%ebp), %eax
	movl	-716(%ebp), %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1195
	movl	%eax, %edx
	xorl	%eax, %eax
.L1195:
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, -720(%ebp)
	movl	%edx, -716(%ebp)
	.loc 1 2503 0
	jmp	.L1152
.L1147:
	.loc 1 2506 0
	movl	-680(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-692(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	expand_shift@PLT
	movl	%eax, -688(%ebp)
	.loc 1 2508 0
	cmpl	$0, -668(%ebp)
	je	.L1165
	movl	-668(%ebp), %eax
	movl	%eax, -760(%ebp)
	jmp	.L1167
.L1165:
	movl	-664(%ebp), %edx
	movl	%edx, -760(%ebp)
.L1167:
	movl	-688(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-692(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	-760(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -692(%ebp)
	.loc 1 2511 0
	movl	-680(%ebp), %ecx
	movl	-720(%ebp), %eax
	movl	-716(%ebp), %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1194
	movl	%eax, %edx
	xorl	%eax, %eax
.L1194:
	addl	%eax, -720(%ebp)
	adcl	%edx, -716(%ebp)
	.loc 1 2512 0
	jmp	.L1152
.L1148:
	.loc 1 2515 0
	movl	-680(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-692(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	expand_shift@PLT
	movl	%eax, -688(%ebp)
	.loc 1 2517 0
	cmpl	$0, -668(%ebp)
	jne	.L1168
	cmpl	$0, -676(%ebp)
	jne	.L1170
	movl	-688(%ebp), %eax
	movl	%eax, -752(%ebp)
	jmp	.L1172
.L1170:
	movl	$0, -752(%ebp)
.L1172:
	movl	-752(%ebp), %edx
	movl	%edx, -756(%ebp)
	jmp	.L1173
.L1168:
	movl	-668(%ebp), %eax
	movl	%eax, -756(%ebp)
.L1173:
	movl	-692(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-688(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$86, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	-756(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -692(%ebp)
	.loc 1 2520 0
	movl	-680(%ebp), %ecx
	movl	-720(%ebp), %eax
	movl	-716(%ebp), %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1193
	movl	%eax, %edx
	xorl	%eax, %eax
.L1193:
	subl	-720(%ebp), %eax
	sbbl	-716(%ebp), %edx
	movl	%eax, -720(%ebp)
	movl	%edx, -716(%ebp)
	.loc 1 2521 0
	jmp	.L1152
.L1143:
	.loc 1 2524 0
	leal	__FUNCTION__.15690@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2524, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1152:
	.loc 1 2532 0
	movl	-732(%ebp), %eax
	movl	%eax, -688(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -684(%ebp)
	.loc 1 2533 0
	movl	-692(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1174
	.loc 1 2535 0
	movl	-692(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -684(%ebp)
	.loc 1 2536 0
	movl	-732(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-684(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -688(%ebp)
.L1174:
	.loc 1 2539 0
	call	get_last_insn@PLT
	movl	%eax, -708(%ebp)
	.loc 1 2540 0
	movl	-720(%ebp), %eax
	movl	-716(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, 12(%esp)
	movl	-688(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-684(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	-708(%ebp), %eax
	movl	%eax, (%esp)
	call	set_unique_reg_note@PLT
.LBE46:
	.loc 1 2448 0
	addl	$1, -696(%ebp)
.L1129:
	movzwl	-334(%ebp), %eax
	cwtl
	cmpl	-696(%ebp), %eax
	jg	.L1130
	.loc 1 2546 0
	cmpl	$1, -700(%ebp)
	jne	.L1177
	.loc 1 2548 0
	negl	-720(%ebp)
	adcl	$0, -716(%ebp)
	negl	-716(%ebp)
	.loc 1 2549 0
	movl	optab_table@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	$0, 16(%esp)
	movl	-740(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-692(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -692(%ebp)
	jmp	.L1179
.L1177:
	.loc 1 2551 0
	cmpl	$2, -700(%ebp)
	jne	.L1179
	.loc 1 2553 0
	addl	$1, -720(%ebp)
	adcl	$0, -716(%ebp)
	.loc 1 2554 0
	movl	-732(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-692(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-740(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	force_operand@PLT
	movl	%eax, -692(%ebp)
.L1179:
	.loc 1 2557 0
	movl	-728(%ebp), %eax
	movl	-724(%ebp), %edx
	movl	%edx, %ecx
	xorl	-716(%ebp), %ecx
	xorl	-720(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1181
	.loc 1 2558 0
	leal	__FUNCTION__.15690@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2558, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1181:
	.loc 1 2560 0
	movl	-692(%ebp), %eax
	movl	%eax, -748(%ebp)
	jmp	.L1183
.L1108:
.LBE45:
.LBE44:
	.loc 1 2566 0
	cmpl	$0, 24(%ebp)
	jne	.L1184
	movl	flag_trapv@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1184
	movl	8(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L1184
	movl	optab_table@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -744(%ebp)
	jmp	.L1188
.L1184:
	movl	optab_table@GOT(%ebx), %eax
	movl	16(%eax), %eax
	movl	%eax, -744(%ebp)
.L1188:
	movl	$3, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-740(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-736(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-732(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-744(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -732(%ebp)
	.loc 1 2571 0
	cmpl	$0, -732(%ebp)
	jne	.L1189
	.loc 1 2572 0
	leal	__FUNCTION__.15690@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2572, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1189:
	.loc 1 2573 0
	movl	-732(%ebp), %eax
	movl	%eax, -748(%ebp)
.L1183:
	movl	-748(%ebp), %eax
	.loc 1 2574 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L1192
	call	__stack_chk_fail_local
.L1192:
	addl	$852, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	expand_mult, .-expand_mult
.globl ceil_log2
	.type	ceil_log2, @function
ceil_log2:
.LFB31:
	.loc 1 2581 0
	pushl	%ebp
.LCFI86:
	movl	%esp, %ebp
.LCFI87:
	pushl	%ebx
.LCFI88:
	subl	$20, %esp
.LCFI89:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2582 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	addl	$1, %eax
	.loc 1 2583 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	ceil_log2, .-ceil_log2
	.section	.rodata
	.type	__FUNCTION__.15963, @object
	.size	__FUNCTION__.15963, 18
__FUNCTION__.15963:
	.string	"choose_multiplier"
	.text
	.type	choose_multiplier, @function
choose_multiplier:
.LFB32:
	.loc 1 2610 0
	pushl	%ebp
.LCFI90:
	movl	%esp, %ebp
.LCFI91:
	pushl	%edi
.LCFI92:
	pushl	%esi
.LCFI93:
	pushl	%ebx
.LCFI94:
	subl	$268, %esp
.LCFI95:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -136(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -132(%ebp)
	.loc 1 2619 0
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	ceil_log2@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2621 0
	movl	-32(%ebp), %eax
	cmpl	16(%ebp), %eax
	jle	.L1203
	.loc 1 2622 0
	leal	__FUNCTION__.15963@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2622, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1203:
	.loc 1 2624 0
	movl	-32(%ebp), %eax
	addl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2625 0
	movl	-32(%ebp), %eax
	addl	16(%ebp), %eax
	subl	20(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2627 0
	cmpl	$128, -24(%ebp)
	jne	.L1205
	.loc 1 2631 0
	leal	__FUNCTION__.15963@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2631, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1205:
	.loc 1 2635 0
	cmpl	$63, -24(%ebp)
	jle	.L1207
	.loc 1 2637 0
	movl	-24(%ebp), %ecx
	subl	$64, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1243
	movl	%eax, %edx
	xorl	%eax, %eax
.L1243:
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 2638 0
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	jmp	.L1209
.L1207:
	.loc 1 2642 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	.loc 1 2643 0
	movl	-24(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1242
	movl	%eax, %edx
	xorl	%eax, %eax
.L1242:
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
.L1209:
	.loc 1 2645 0
	leal	-120(%ebp), %eax
	movl	%eax, 52(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, 48(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 44(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	$0, 32(%esp)
	movl	$0, 36(%esp)
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$1, 4(%esp)
	movl	$63, (%esp)
	call	div_and_round_double@PLT
	.loc 1 2649 0
	cmpl	$63, -20(%ebp)
	jle	.L1210
	.loc 1 2650 0
	movl	-20(%ebp), %ecx
	subl	$64, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1241
	movl	%esi, %edi
	xorl	%esi, %esi
.L1241:
	movl	-64(%ebp), %eax
	orl	%esi, %eax
	movl	-60(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	jmp	.L1212
.L1210:
	.loc 1 2652 0
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1240
	movl	%esi, %edi
	xorl	%esi, %esi
.L1240:
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
.L1212:
	.loc 1 2653 0
	leal	-120(%ebp), %eax
	movl	%eax, 52(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, 48(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 44(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	$0, 32(%esp)
	movl	$0, 36(%esp)
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$1, 4(%esp)
	movl	$63, (%esp)
	call	div_and_round_double@PLT
	.loc 1 2656 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1213
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	subl	-136(%ebp), %esi
	sbbl	-132(%ebp), %edi
	movl	%esi, -208(%ebp)
	movl	%edi, -204(%ebp)
	movl	-204(%ebp), %edi
	cmpl	-132(%ebp), %edi
	jb	.L1213
	movl	-204(%ebp), %eax
	cmpl	-132(%ebp), %eax
	ja	.L1216
	movl	-208(%ebp), %edx
	cmpl	-136(%ebp), %edx
	jb	.L1213
.L1216:
	.loc 1 2657 0
	leal	__FUNCTION__.15963@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2657, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1213:
	.loc 1 2658 0
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	%esi, -200(%ebp)
	movl	%edi, -196(%ebp)
	cmpl	$0, -196(%ebp)
	jg	.L1217
	cmpl	$0, -196(%ebp)
	js	.L1219
	cmpl	$1, -200(%ebp)
	ja	.L1217
.L1219:
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -192(%ebp)
	movl	%edx, -188(%ebp)
	cmpl	$0, -188(%ebp)
	js	.L1220
	cmpl	$0, -188(%ebp)
	jg	.L1217
	cmpl	$1, -192(%ebp)
	jbe	.L1220
.L1217:
	.loc 1 2659 0
	leal	__FUNCTION__.15963@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2659, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1220:
	.loc 1 2661 0
	movl	-88(%ebp), %esi
	movl	-84(%ebp), %edi
	movl	%esi, -184(%ebp)
	movl	%edi, -180(%ebp)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	movl	-172(%ebp), %edx
	cmpl	%edx, -180(%ebp)
	jl	.L1222
	movl	-172(%ebp), %esi
	cmpl	%esi, -180(%ebp)
	jg	.L1224
	movl	-176(%ebp), %edi
	cmpl	%edi, -184(%ebp)
	jb	.L1222
.L1224:
	movl	-88(%ebp), %esi
	movl	-84(%ebp), %edi
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1225
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -168(%ebp)
	movl	%edx, -164(%ebp)
	movl	-96(%ebp), %esi
	movl	-92(%ebp), %edi
	movl	%esi, -160(%ebp)
	movl	%edi, -156(%ebp)
	movl	-156(%ebp), %edi
	cmpl	%edi, -164(%ebp)
	jb	.L1222
	movl	-156(%ebp), %eax
	cmpl	%eax, -164(%ebp)
	ja	.L1225
	movl	-160(%ebp), %edx
	cmpl	%edx, -168(%ebp)
	jb	.L1222
.L1225:
	.loc 1 2662 0
	leal	__FUNCTION__.15963@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2662, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1222:
	.loc 1 2668 0
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1228
.L1229:
.LBB47:
	.loc 1 2670 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, %edx
	movl	$0, %eax
	sall	$31, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	movl	%esi, %ecx
	orl	%eax, %ecx
	movl	%ecx, -56(%ebp)
	movl	%edi, %eax
	orl	%edx, %eax
	movl	%eax, -52(%ebp)
	.loc 1 2671 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, %edx
	movl	$0, %eax
	sall	$31, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	movl	%esi, %ecx
	orl	%eax, %ecx
	movl	%ecx, -48(%ebp)
	movl	%edi, %eax
	orl	%edx, %eax
	movl	%eax, -44(%ebp)
	.loc 1 2672 0
	movl	-56(%ebp), %esi
	movl	-52(%ebp), %edi
	movl	%esi, -216(%ebp)
	movl	%edi, -212(%ebp)
	movl	-212(%ebp), %edi
	cmpl	-44(%ebp), %edi
	ja	.L1230
	movl	-212(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jb	.L1232
	movl	-216(%ebp), %edx
	cmpl	-48(%ebp), %edx
	jae	.L1230
.L1232:
	.loc 1 2675 0
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
	.loc 1 2676 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	.loc 1 2677 0
	movl	$0, -80(%ebp)
	movl	$0, -76(%ebp)
	.loc 1 2678 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
.LBE47:
	.loc 1 2668 0
	subl	$1, -28(%ebp)
.L1228:
	cmpl	$0, -28(%ebp)
	jg	.L1229
.L1230:
	.loc 1 2681 0
	movl	28(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2682 0
	movl	32(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2683 0
	cmpl	$63, 16(%ebp)
	jg	.L1233
.LBB48:
	.loc 1 2685 0
	movl	16(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1239
	movl	%eax, %edx
	xorl	%eax, %eax
.L1239:
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 2686 0
	movl	-96(%ebp), %esi
	movl	-92(%ebp), %edi
	movl	%esi, %eax
	andl	-40(%ebp), %eax
	movl	%edi, %edx
	andl	-36(%ebp), %edx
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 2687 0
	movl	-96(%ebp), %esi
	movl	-92(%ebp), %edi
	movl	%esi, -144(%ebp)
	movl	%edi, -140(%ebp)
	movl	$1, -152(%ebp)
	movl	$0, -148(%ebp)
	movl	-140(%ebp), %edi
	cmpl	-36(%ebp), %edi
	ja	.L1237
	movl	-140(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jb	.L1236
	movl	-144(%ebp), %edx
	cmpl	-40(%ebp), %edx
	jae	.L1237
.L1236:
	movl	$0, -152(%ebp)
	movl	$0, -148(%ebp)
	jmp	.L1237
.L1233:
.LBE48:
	.loc 1 2691 0
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 2692 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
.L1237:
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	.loc 1 2694 0
	addl	$268, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE32:
	.size	choose_multiplier, .-choose_multiplier
	.type	invert_mod2n, @function
invert_mod2n:
.LFB33:
	.loc 1 2703 0
	pushl	%ebp
.LCFI96:
	movl	%esp, %ebp
.LCFI97:
	pushl	%edi
.LCFI98:
	pushl	%esi
.LCFI99:
	subl	$56, %esp
.LCFI100:
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2711 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 2712 0
	movl	$3, -12(%ebp)
	.loc 1 2714 0
	cmpl	$64, 16(%ebp)
	je	.L1245
	movl	16(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1252
	movl	%eax, %edx
	xorl	%eax, %eax
.L1252:
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	jmp	.L1247
.L1245:
	movl	$-1, -56(%ebp)
	movl	$-1, -52(%ebp)
.L1247:
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 2718 0
	jmp	.L1248
.L1249:
	.loc 1 2720 0
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	imull	-24(%ebp), %ecx
	movl	-20(%ebp), %eax
	imull	-48(%ebp), %eax
	addl	%eax, %ecx
	movl	-24(%ebp), %eax
	mull	-48(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	$2, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%edx, %esi
	imull	-24(%ebp), %esi
	movl	-20(%ebp), %ecx
	imull	%eax, %ecx
	addl	%ecx, %esi
	movl	-24(%ebp), %ecx
	mull	%ecx
	addl	%edx, %esi
	movl	%esi, %edx
	movl	%eax, %ecx
	andl	-32(%ebp), %ecx
	movl	%ecx, -24(%ebp)
	movl	%edx, %eax
	andl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2721 0
	sall	-12(%ebp)
.L1248:
	.loc 1 2718 0
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	.L1249
	.loc 1 2723 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	.loc 1 2724 0
	addl	$56, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	invert_mod2n, .-invert_mod2n
.globl expand_mult_highpart_adjust
	.type	expand_mult_highpart_adjust, @function
expand_mult_highpart_adjust:
.LFB34:
	.loc 1 2741 0
	pushl	%ebp
.LCFI101:
	movl	%esp, %ebp
.LCFI102:
	pushl	%ebx
.LCFI103:
	subl	$52, %esp
.LCFI104:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2743 0
	cmpl	$0, 28(%ebp)
	je	.L1254
	movl	$85, -24(%ebp)
	jmp	.L1256
.L1254:
	movl	$86, -24(%ebp)
.L1256:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2745 0
	movl	8(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2748 0
	movl	$0, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_and@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2749 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	force_operand@PLT
	movl	%eax, 12(%ebp)
	.loc 1 2753 0
	movl	8(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2756 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_and@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2757 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	force_operand@PLT
	movl	%eax, 24(%ebp)
	.loc 1 2760 0
	movl	24(%ebp), %eax
	.loc 1 2761 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	expand_mult_highpart_adjust, .-expand_mult_highpart_adjust
	.section	.rodata
	.type	__FUNCTION__.16101, @object
	.size	__FUNCTION__.16101, 21
__FUNCTION__.16101:
	.string	"expand_mult_highpart"
	.text
.globl expand_mult_highpart
	.type	expand_mult_highpart, @function
expand_mult_highpart:
.LFB35:
	.loc 1 2780 0
	pushl	%ebp
.LCFI105:
	movl	%esp, %ebp
.LCFI106:
	pushl	%edi
.LCFI107:
	pushl	%esi
.LCFI108:
	pushl	%ebx
.LCFI109:
	subl	$140, %esp
.LCFI110:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2781 0
	movl	8(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	.loc 1 2785 0
	movl	8(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -32(%ebp)
	.loc 1 2789 0
	cmpl	$64, -32(%ebp)
	jle	.L1259
	.loc 1 2790 0
	leal	__FUNCTION__.16101@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2790, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1259:
	.loc 1 2792 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	gen_int_mode@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2794 0
	cmpl	$0, 28(%ebp)
	jne	.L1261
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%edi, %edi
	sarl	$31, %edi
	movl	%edi, %esi
	movl	%esi, -112(%ebp)
	movl	%edi, -108(%ebp)
	jmp	.L1263
.L1261:
	movl	$0, -112(%ebp)
	movl	$0, -108(%ebp)
.L1263:
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %ecx
	movl	-48(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-112(%ebp), %esi
	movl	-108(%ebp), %edi
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	immed_double_const@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2803 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1264
	movl	$64, -104(%ebp)
	jmp	.L1266
.L1264:
	movl	$32, -104(%ebp)
.L1266:
	movl	-104(%ebp), %edi
	cmpl	-32(%ebp), %edi
	jle	.L1267
	movl	-48(%ebp), %eax
	movl	mul_cost@GOTOFF(%ebx,%eax,4), %edx
	movl	-32(%ebp), %eax
	subl	$1, %eax
	movl	shift_cost@GOTOFF(%ebx,%eax,4), %eax
	leal	(%edx,%eax), %eax
	cmpl	32(%ebp), %eax
	jge	.L1267
	.loc 1 2808 0
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, 12(%ebp)
	.loc 1 2812 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_mult@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2813 0
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2815 0
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_modes@PLT
	movl	%eax, -100(%ebp)
	jmp	.L1270
.L1267:
	.loc 1 2818 0
	cmpl	$0, 24(%ebp)
	jne	.L1271
	.loc 1 2819 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 24(%ebp)
.L1271:
	.loc 1 2823 0
	movl	8(%ebp), %eax
	movl	mul_highpart_cost@GOTOFF(%ebx,%eax,4), %eax
	cmpl	32(%ebp), %eax
	jge	.L1273
	.loc 1 2825 0
	cmpl	$0, 28(%ebp)
	je	.L1275
	movl	optab_table@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L1277
.L1275:
	movl	optab_table@GOT(%ebx), %eax
	movl	24(%eax), %eax
	movl	%eax, -96(%ebp)
.L1277:
	movl	-96(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2826 0
	movl	$0, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, 24(%ebp)
	.loc 1 2828 0
	cmpl	$0, 24(%ebp)
	je	.L1273
	.loc 1 2829 0
	movl	24(%ebp), %esi
	movl	%esi, -100(%ebp)
	jmp	.L1270
.L1273:
	.loc 1 2834 0
	movl	-32(%ebp), %edi
	subl	$1, %edi
	movl	%edi, -92(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1279
	movl	$64, -88(%ebp)
	jmp	.L1281
.L1279:
	movl	$32, -88(%ebp)
.L1281:
	movl	-88(%ebp), %eax
	cmpl	%eax, -92(%ebp)
	jge	.L1282
	movl	8(%ebp), %eax
	movl	mul_highpart_cost@GOTOFF(%ebx,%eax,4), %ecx
	movl	add_cost@GOTOFF(%ebx), %eax
	leal	(%eax,%eax), %edx
	movl	-32(%ebp), %eax
	subl	$1, %eax
	movl	shift_cost@GOTOFF(%ebx,%eax,4), %eax
	leal	(%edx,%eax), %eax
	addl	%eax, %eax
	leal	(%ecx,%eax), %eax
	cmpl	32(%ebp), %eax
	jge	.L1282
	.loc 1 2838 0
	cmpl	$0, 28(%ebp)
	je	.L1285
	movl	optab_table@GOT(%ebx), %eax
	movl	24(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1287
.L1285:
	movl	optab_table@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%eax, -84(%ebp)
.L1287:
	movl	-84(%ebp), %esi
	movl	%esi, -44(%ebp)
	.loc 1 2839 0
	movl	$0, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, 24(%ebp)
	.loc 1 2841 0
	cmpl	$0, 24(%ebp)
	je	.L1282
	.loc 1 2843 0
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_mult_highpart_adjust@PLT
	movl	%eax, -100(%ebp)
	jmp	.L1270
.L1282:
	.loc 1 2848 0
	cmpl	$0, 28(%ebp)
	je	.L1289
	movl	optab_table@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1291
.L1289:
	movl	optab_table@GOT(%ebx), %eax
	movl	32(%eax), %eax
	movl	%eax, -80(%ebp)
.L1291:
	movl	-80(%ebp), %edi
	movl	%edi, -40(%ebp)
	.loc 1 2849 0
	movl	-48(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L1292
	movl	-48(%ebp), %eax
	movl	mul_widen_cost@GOTOFF(%ebx,%eax,4), %eax
	cmpl	32(%ebp), %eax
	jge	.L1292
	.loc 1 2852 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2853 0
	jmp	.L1295
.L1292:
	.loc 1 2857 0
	movl	optab_table@GOT(%ebx), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2858 0
	movl	optab_table@GOT(%ebx), %eax
	movl	16(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L1296
	movl	-32(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -76(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1298
	movl	$64, -72(%ebp)
	jmp	.L1300
.L1298:
	movl	$32, -72(%ebp)
.L1300:
	movl	-72(%ebp), %esi
	cmpl	%esi, -76(%ebp)
	jge	.L1296
	movl	-48(%ebp), %eax
	movl	mul_cost@GOTOFF(%ebx,%eax,4), %edx
	movl	-32(%ebp), %eax
	subl	$1, %eax
	movl	shift_cost@GOTOFF(%ebx,%eax,4), %eax
	leal	(%edx,%eax), %eax
	cmpl	32(%ebp), %eax
	jge	.L1296
	.loc 1 2862 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2863 0
	jmp	.L1295
.L1296:
	.loc 1 2867 0
	cmpl	$0, 28(%ebp)
	je	.L1303
	movl	optab_table@GOT(%ebx), %eax
	movl	32(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1305
.L1303:
	movl	optab_table@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	%eax, -68(%ebp)
.L1305:
	movl	-68(%ebp), %edi
	movl	%edi, -40(%ebp)
	.loc 1 2868 0
	movl	-48(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L1306
	movl	-32(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -64(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1308
	movl	$64, -60(%ebp)
	jmp	.L1310
.L1308:
	movl	$32, -60(%ebp)
.L1310:
	movl	-60(%ebp), %esi
	cmpl	%esi, -64(%ebp)
	jge	.L1306
	movl	-48(%ebp), %eax
	movl	mul_widen_cost@GOTOFF(%ebx,%eax,4), %ecx
	movl	add_cost@GOTOFF(%ebx), %eax
	leal	(%eax,%eax), %edx
	movl	-32(%ebp), %eax
	subl	$1, %eax
	movl	shift_cost@GOTOFF(%ebx,%eax,4), %eax
	leal	(%edx,%eax), %eax
	addl	%eax, %eax
	leal	(%ecx,%eax), %eax
	cmpl	32(%ebp), %eax
	jge	.L1306
.LBB49:
	.loc 1 2873 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2874 0
	cmpl	$0, 28(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	$2, 24(%esp)
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2876 0
	cmpl	$0, -36(%ebp)
	je	.L1306
	.loc 1 2879 0
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2881 0
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_modes@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2883 0
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_mult_highpart_adjust@PLT
	movl	%eax, -100(%ebp)
	jmp	.L1270
.L1306:
.LBE49:
	.loc 1 2888 0
	movl	$0, -100(%ebp)
	jmp	.L1270
.L1295:
	.loc 1 2892 0
	movl	$2, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2894 0
	cmpl	$0, -36(%ebp)
	jne	.L1314
	.loc 1 2895 0
	movl	$0, -100(%ebp)
	jmp	.L1270
.L1314:
	.loc 1 2898 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jne	.L1316
	.loc 1 2900 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_highpart@PLT
	movl	%eax, -100(%ebp)
	jmp	.L1270
.L1316:
	.loc 1 2904 0
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2906 0
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_modes@PLT
	movl	%eax, -100(%ebp)
.L1270:
	movl	-100(%ebp), %eax
	.loc 1 2908 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE35:
	.size	expand_mult_highpart, .-expand_mult_highpart
	.section	.rodata
	.type	__FUNCTION__.16306, @object
	.size	__FUNCTION__.16306, 14
__FUNCTION__.16306:
	.string	"expand_divmod"
	.local	last_div_const.16290
	.comm	last_div_const.16290,8,8
	.text
.globl expand_divmod
	.type	expand_divmod, @function
expand_divmod:
.LFB36:
	.loc 1 2957 0
	pushl	%ebp
.LCFI111:
	movl	%esp, %ebp
.LCFI112:
	pushl	%edi
.LCFI113:
	pushl	%esi
.LCFI114:
	pushl	%ebx
.LCFI115:
	subl	$796, %esp
.LCFI116:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2960 0
	movl	$0, -352(%ebp)
	movl	$0, -348(%ebp)
	.loc 1 2969 0
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -320(%ebp)
	.loc 1 2970 0
	cmpl	$0, -320(%ebp)
	je	.L1320
	movl	24(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -760(%ebp)
	movl	%ecx, -756(%ebp)
	movl	24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	-760(%ebp), %eax
	andl	%esi, %eax
	movl	-756(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1322
	cmpl	$0, 32(%ebp)
	jne	.L1320
	movl	24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	%esi, -752(%ebp)
	movl	%edi, -748(%ebp)
	movl	24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-752(%ebp), %eax
	andl	%esi, %eax
	movl	-748(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1320
.L1322:
	movl	$1, -764(%ebp)
	jmp	.L1325
.L1320:
	movl	$0, -764(%ebp)
.L1325:
	movl	-764(%ebp), %edi
	movl	%edi, -316(%ebp)
	.loc 1 3006 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	24(%ebp), %eax
	jne	.L1326
	.loc 1 3007 0
	cmpl	$0, 8(%ebp)
	je	.L1328
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -740(%ebp)
	jmp	.L1330
.L1328:
	movl	20(%ebp), %eax
	movl	%eax, -740(%ebp)
.L1330:
	movl	-740(%ebp), %edx
	movl	%edx, -744(%ebp)
	jmp	.L1331
.L1326:
	.loc 1 3011 0
	cmpl	$0, 32(%ebp)
	jne	.L1332
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	cmpl	24(%ebp), %eax
	jne	.L1332
	.loc 1 3013 0
	cmpl	$0, 8(%ebp)
	je	.L1335
	.loc 1 3014 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -744(%ebp)
	jmp	.L1331
.L1335:
	.loc 1 3015 0
	movl	flag_trapv@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1337
	movl	16(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L1337
	movl	optab_table@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, -736(%ebp)
	jmp	.L1340
.L1337:
	movl	optab_table@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, -736(%ebp)
.L1340:
	movl	$0, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-736(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -744(%ebp)
	jmp	.L1331
.L1332:
	.loc 1 3019 0
	cmpl	$0, 28(%ebp)
	je	.L1341
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1343
	movl	28(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L1345
.L1343:
	cmpl	$0, 8(%ebp)
	jne	.L1346
	cmpl	$0, -320(%ebp)
	je	.L1348
.L1346:
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L1345
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1348
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L1345
.L1348:
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L1345
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1341
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1341
.L1345:
	.loc 1 3030 0
	movl	$0, 28(%ebp)
.L1341:
	.loc 1 3052 0
	cmpl	$0, -316(%ebp)
	je	.L1353
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	24(%ebp), %eax
	je	.L1353
	cmpl	$0, 32(%ebp)
	je	.L1356
	movl	optab_table@GOT(%ebx), %eax
	movl	88(%eax), %eax
	movl	%eax, -728(%ebp)
	jmp	.L1358
.L1356:
	movl	optab_table@GOT(%ebx), %eax
	movl	92(%eax), %eax
	movl	%eax, -728(%ebp)
.L1358:
	movl	-728(%ebp), %esi
	movl	%esi, -732(%ebp)
	jmp	.L1359
.L1353:
	cmpl	$0, 32(%ebp)
	je	.L1360
	movl	optab_table@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -724(%ebp)
	jmp	.L1362
.L1360:
	movl	optab_table@GOT(%ebx), %eax
	movl	40(%eax), %eax
	movl	%eax, -724(%ebp)
.L1362:
	movl	-724(%ebp), %edi
	movl	%edi, -732(%ebp)
.L1359:
	movl	-732(%ebp), %eax
	movl	%eax, -328(%ebp)
	.loc 1 3055 0
	cmpl	$0, -316(%ebp)
	je	.L1363
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	24(%ebp), %eax
	jne	.L1365
.L1363:
	cmpl	$0, 32(%ebp)
	je	.L1366
	movl	optab_table@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, -716(%ebp)
	jmp	.L1368
.L1366:
	movl	optab_table@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -716(%ebp)
.L1368:
	movl	-716(%ebp), %edx
	movl	%edx, -720(%ebp)
	jmp	.L1369
.L1365:
	movl	-328(%ebp), %ecx
	movl	%ecx, -720(%ebp)
.L1369:
	movl	-720(%ebp), %esi
	movl	%esi, -324(%ebp)
	.loc 1 3059 0
	movl	16(%ebp), %eax
	movl	%eax, -360(%ebp)
	jmp	.L1370
.L1371:
	.loc 1 3061 0
	movl	-360(%ebp), %eax
	movl	-328(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	jne	.L1372
	movl	-360(%ebp), %eax
	movl	-324(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	jne	.L1372
	.loc 1 3060 0
	movl	-360(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -360(%ebp)
.L1370:
	.loc 1 3059 0
	cmpl	$0, -360(%ebp)
	jne	.L1371
.L1372:
	.loc 1 3065 0
	cmpl	$0, -360(%ebp)
	jne	.L1375
	.loc 1 3066 0
	movl	16(%ebp), %eax
	movl	%eax, -360(%ebp)
	jmp	.L1377
.L1378:
	.loc 1 3068 0
	movl	-360(%ebp), %eax
	movl	-328(%ebp), %edx
	movl	8(%edx,%eax,8), %eax
	testl	%eax, %eax
	jne	.L1375
	movl	-360(%ebp), %eax
	movl	-324(%ebp), %edx
	movl	8(%edx,%eax,8), %eax
	testl	%eax, %eax
	jne	.L1375
	.loc 1 3067 0
	movl	-360(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -360(%ebp)
.L1377:
	.loc 1 3066 0
	cmpl	$0, -360(%ebp)
	jne	.L1378
.L1375:
	.loc 1 3074 0
	cmpl	$0, -360(%ebp)
	jne	.L1381
	.loc 1 3075 0
	movl	16(%ebp), %eax
	movl	%eax, -360(%ebp)
.L1381:
	.loc 1 3077 0
	cmpl	$0, 28(%ebp)
	je	.L1383
	movl	28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-360(%ebp), %eax
	jne	.L1383
	.loc 1 3078 0
	movl	28(%ebp), %eax
	movl	%eax, -356(%ebp)
	.loc 1 3077 0
	jmp	.L1386
.L1383:
	.loc 1 3080 0
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -356(%ebp)
.L1386:
	.loc 1 3082 0
	movl	-360(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -340(%ebp)
	.loc 1 3093 0
	movl	-360(%ebp), %eax
	movl	div_cost@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -712(%ebp)
	cmpl	$0, 8(%ebp)
	je	.L1387
	movl	last_div_const.16290@GOTOFF(%ebx), %eax
	movl	4+last_div_const.16290@GOTOFF(%ebx), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1389
	cmpl	$0, -320(%ebp)
	je	.L1389
	movl	24(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	last_div_const.16290@GOTOFF(%ebx), %eax
	movl	4+last_div_const.16290@GOTOFF(%ebx), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1387
.L1389:
	movl	-360(%ebp), %eax
	movl	mul_cost@GOTOFF(%ebx,%eax,4), %edx
	movl	add_cost@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%edx, -708(%ebp)
	jmp	.L1392
.L1387:
	movl	$0, -708(%ebp)
.L1392:
	movl	-712(%ebp), %eax
	subl	-708(%ebp), %eax
	movl	%eax, -312(%ebp)
	.loc 1 3098 0
	cmpl	$0, 8(%ebp)
	jne	.L1393
	cmpl	$0, -320(%ebp)
	je	.L1393
	movl	24(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -704(%ebp)
	movl	%ecx, -700(%ebp)
	jmp	.L1396
.L1393:
	movl	$0, -704(%ebp)
	movl	$0, -700(%ebp)
.L1396:
	movl	-704(%ebp), %esi
	movl	-700(%ebp), %edi
	movl	%esi, last_div_const.16290@GOTOFF(%ebx)
	movl	%edi, 4+last_div_const.16290@GOTOFF(%ebx)
	.loc 1 3101 0
	movl	-360(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L1397
	.loc 1 3103 0
	movl	32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_modes@PLT
	movl	%eax, 20(%ebp)
	.loc 1 3104 0
	movl	32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_modes@PLT
	movl	%eax, 24(%ebp)
	.loc 1 3108 0
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -320(%ebp)
	.loc 1 3109 0
	cmpl	$0, -320(%ebp)
	je	.L1399
	movl	24(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -688(%ebp)
	movl	%ecx, -684(%ebp)
	movl	24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	-688(%ebp), %eax
	andl	%esi, %eax
	movl	-684(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1401
	cmpl	$0, 32(%ebp)
	jne	.L1399
	movl	24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	%esi, -680(%ebp)
	movl	%edi, -676(%ebp)
	movl	24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-680(%ebp), %eax
	andl	%esi, %eax
	movl	-676(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1399
.L1401:
	movl	$1, -692(%ebp)
	jmp	.L1404
.L1399:
	movl	$0, -692(%ebp)
.L1404:
	movl	-692(%ebp), %edi
	movl	%edi, -316(%ebp)
.L1397:
	.loc 1 3117 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1405
	movl	20(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1405
	.loc 1 3118 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, 20(%ebp)
.L1405:
	.loc 1 3119 0
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1408
	movl	24(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1408
	.loc 1 3120 0
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, 24(%ebp)
.L1408:
	.loc 1 3124 0
	cmpl	$0, 8(%ebp)
	jne	.L1411
	cmpl	$0, -320(%ebp)
	je	.L1413
.L1411:
	.loc 1 3125 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, 20(%ebp)
.L1413:
	.loc 1 3127 0
	call	get_last_insn@PLT
	movl	%eax, -344(%ebp)
	.loc 1 3130 0
	cmpl	$0, 32(%ebp)
	je	.L1414
	.loc 1 3132 0
	cmpl	$65, 12(%ebp)
	jne	.L1416
	.loc 1 3133 0
	movl	$63, 12(%ebp)
.L1416:
	.loc 1 3134 0
	cmpl	$69, 12(%ebp)
	jne	.L1418
	.loc 1 3135 0
	movl	$67, 12(%ebp)
.L1418:
	.loc 1 3136 0
	cmpl	$72, 12(%ebp)
	jne	.L1414
	cmpl	$0, -316(%ebp)
	je	.L1414
	.loc 1 3137 0
	movl	$63, 12(%ebp)
.L1414:
	.loc 1 3140 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	24(%ebp), %eax
	je	.L1422
	.loc 1 3141 0
	movl	12(%ebp), %eax
	subl	$63, %eax
	movl	%eax, -768(%ebp)
	cmpl	$9, -768(%ebp)
	ja	.L1424
	movl	-768(%ebp), %eax
	sall	$2, %eax
	movl	.L1430@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1430:
	.long	.L1425@GOTOFF
	.long	.L1426@GOTOFF
	.long	.L1427@GOTOFF
	.long	.L1428@GOTOFF
	.long	.L1425@GOTOFF
	.long	.L1426@GOTOFF
	.long	.L1427@GOTOFF
	.long	.L1428@GOTOFF
	.long	.L1424@GOTOFF
	.long	.L1429@GOTOFF
	.text
.L1425:
	.loc 1 3145 0
	cmpl	$0, -320(%ebp)
	je	.L1431
	.loc 1 3147 0
	cmpl	$0, 32(%ebp)
	je	.L1433
.LBB50:
	.loc 1 3152 0
	movl	24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -440(%ebp)
	movl	%edx, -436(%ebp)
	.loc 1 3154 0
	movl	-440(%ebp), %esi
	movl	-436(%ebp), %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	%esi, %eax
	andl	-440(%ebp), %eax
	movl	%edi, %edx
	andl	-436(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1435
	.loc 1 3156 0
	movl	-440(%ebp), %eax
	movl	-436(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, -304(%ebp)
	.loc 1 3157 0
	cmpl	$0, 8(%ebp)
	je	.L1437
	.loc 1 3159 0
	movl	-304(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1724
	movl	%eax, %edx
	xorl	%eax, %eax
.L1724:
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	72(%eax), %ecx
	movl	$3, 24(%esp)
	movl	$1, 20(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -348(%ebp)
	.loc 1 3164 0
	cmpl	$0, -348(%ebp)
	je	.L1437
	.loc 1 3165 0
	movl	-348(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -744(%ebp)
	jmp	.L1331
.L1437:
	.loc 1 3167 0
	movl	-304(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	$1, 20(%esp)
	movl	-356(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -352(%ebp)
	jmp	.L1440
.L1435:
	.loc 1 3171 0
	cmpl	$64, -340(%ebp)
	jg	.L1422
	.loc 1 3173 0
	movl	-340(%ebp), %ecx
	subl	$1, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1723
	movl	%esi, %edi
	xorl	%esi, %esi
.L1723:
	movl	%esi, -672(%ebp)
	movl	%edi, -668(%ebp)
	movl	-668(%ebp), %edi
	cmpl	-436(%ebp), %edi
	ja	.L1442
	movl	-668(%ebp), %eax
	cmpl	-436(%ebp), %eax
	jb	.L1444
	movl	-672(%ebp), %edx
	cmpl	-440(%ebp), %edx
	ja	.L1442
.L1444:
	.loc 1 3177 0
	movl	$1, 24(%esp)
	movl	$1, 20(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$118, 4(%esp)
	movl	-356(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_store_flag@PLT
	movl	%eax, -352(%ebp)
	.loc 1 3179 0
	cmpl	$0, -352(%ebp)
	je	.L1431
	.loc 1 3180 0
	jmp	.L1440
.L1442:
	.loc 1 3187 0
	leal	-368(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-364(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-456(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-340(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-340(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-440(%ebp), %eax
	movl	-436(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	choose_multiplier
	movl	%eax, -448(%ebp)
	movl	%edx, -444(%ebp)
	.loc 1 3193 0
	movl	-448(%ebp), %eax
	orl	-444(%ebp), %eax
	testl	%eax, %eax
	je	.L1446
	movl	-440(%ebp), %eax
	andl	$1, %eax
	movl	-436(%ebp), %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1446
	.loc 1 3195 0
	movl	-440(%ebp), %eax
	movl	-436(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	%esi, %eax
	andl	-440(%ebp), %eax
	movl	%edi, %edx
	andl	-436(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, -304(%ebp)
	.loc 1 3196 0
	movl	-304(%ebp), %edx
	movl	-340(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, -772(%ebp)
	movl	-304(%ebp), %ecx
	movl	-440(%ebp), %eax
	movl	-436(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1722
	movl	%edi, %esi
	xorl	%edi, %edi
.L1722:
	movl	%esi, %edx
	movl	%edi, %ecx
	leal	-368(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-364(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-456(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-772(%ebp), %edi
	movl	%edi, 12(%esp)
	movl	-340(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	choose_multiplier
	movl	%eax, -448(%ebp)
	movl	%edx, -444(%ebp)
	.loc 1 3199 0
	movl	-448(%ebp), %eax
	orl	-444(%ebp), %eax
	testl	%eax, %eax
	je	.L1451
	.loc 1 3200 0
	leal	__FUNCTION__.16306@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3200, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1446:
	.loc 1 3203 0
	movl	$0, -304(%ebp)
.L1451:
	.loc 1 3205 0
	movl	-448(%ebp), %eax
	orl	-444(%ebp), %eax
	testl	%eax, %eax
	je	.L1452
.LBB51:
	.loc 1 3209 0
	movl	-364(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -660(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1454
	movl	$64, -656(%ebp)
	jmp	.L1456
.L1454:
	movl	$32, -656(%ebp)
.L1456:
	movl	-656(%ebp), %eax
	cmpl	%eax, -660(%ebp)
	jge	.L1431
	.loc 1 3212 0
	movl	-364(%ebp), %eax
	subl	$1, %eax
	movl	shift_cost@GOTOFF(%ebx,%eax,4), %edx
	movl	4+shift_cost@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	add_cost@GOTOFF(%ebx), %eax
	addl	%eax, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -308(%ebp)
	.loc 1 3214 0
	movl	-308(%ebp), %edx
	movl	-312(%ebp), %eax
	subl	%edx, %eax
	movl	-456(%ebp), %edx
	movl	-452(%ebp), %ecx
	movl	%eax, 24(%esp)
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_mult_highpart@PLT
	movl	%eax, -300(%ebp)
	.loc 1 3217 0
	cmpl	$0, -300(%ebp)
	je	.L1431
	.loc 1 3219 0
	movl	-300(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$86, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -296(%ebp)
	.loc 1 3222 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -292(%ebp)
	.loc 1 3224 0
	movl	-292(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-300(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -288(%ebp)
	.loc 1 3227 0
	movl	-364(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	$1, 20(%esp)
	movl	-356(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -352(%ebp)
	jmp	.L1440
.L1452:
.LBE51:
.LBB52:
	.loc 1 3236 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1459
	movl	$64, -652(%ebp)
	jmp	.L1461
.L1459:
	movl	$32, -652(%ebp)
.L1461:
	movl	-652(%ebp), %edx
	cmpl	-304(%ebp), %edx
	jle	.L1431
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1463
	movl	$64, -648(%ebp)
	jmp	.L1465
.L1463:
	movl	$32, -648(%ebp)
.L1465:
	movl	-364(%ebp), %eax
	cmpl	%eax, -648(%ebp)
	jle	.L1431
	.loc 1 3240 0
	movl	-304(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -284(%ebp)
	.loc 1 3243 0
	movl	-304(%ebp), %eax
	movl	shift_cost@GOTOFF(%ebx,%eax,4), %edx
	movl	-364(%ebp), %eax
	movl	shift_cost@GOTOFF(%ebx,%eax,4), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -308(%ebp)
	.loc 1 3245 0
	movl	-308(%ebp), %edx
	movl	-312(%ebp), %eax
	subl	%edx, %eax
	movl	-456(%ebp), %edx
	movl	-452(%ebp), %ecx
	movl	%eax, 24(%esp)
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	-284(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_mult_highpart@PLT
	movl	%eax, -280(%ebp)
	.loc 1 3248 0
	cmpl	$0, -280(%ebp)
	je	.L1431
	.loc 1 3250 0
	movl	-364(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	$1, 20(%esp)
	movl	-356(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-280(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -352(%ebp)
.L1440:
.LBE52:
	.loc 1 3260 0
	call	get_last_insn@PLT
	movl	%eax, -336(%ebp)
	.loc 1 3261 0
	movl	-336(%ebp), %eax
	cmpl	-344(%ebp), %eax
	je	.L1422
	movl	-336(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1470
	movl	-336(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1472
	movl	-336(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -640(%ebp)
	jmp	.L1474
.L1472:
	movl	-336(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -640(%ebp)
.L1474:
	movl	-640(%ebp), %ecx
	movl	%ecx, -644(%ebp)
	jmp	.L1475
.L1470:
	movl	$0, -644(%ebp)
.L1475:
	movl	-644(%ebp), %esi
	movl	%esi, -332(%ebp)
	cmpl	$0, -332(%ebp)
	je	.L1422
	movl	-332(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-352(%ebp), %eax
	jne	.L1422
	.loc 1 3264 0
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$91, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	set_unique_reg_note@PLT
	jmp	.L1422
.L1433:
.LBE50:
.LBB53:
	.loc 1 3272 0
	movl	24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -432(%ebp)
	movl	%edx, -428(%ebp)
	.loc 1 3273 0
	movl	-432(%ebp), %eax
	movl	-428(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%edi, %edi
	sarl	$31, %edi
	movl	%edi, %esi
	movl	%esi, %eax
	xorl	-432(%ebp), %eax
	movl	%edi, %edx
	xorl	-428(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, -424(%ebp)
	movl	%edx, -420(%ebp)
	.loc 1 3276 0
	cmpl	$0, 8(%ebp)
	je	.L1479
	cmpl	$0, -428(%ebp)
	jns	.L1479
	.loc 1 3278 0
	movl	-424(%ebp), %eax
	movl	-420(%ebp), %edx
	movl	%eax, -432(%ebp)
	movl	%edx, -428(%ebp)
	.loc 1 3279 0
	movl	-424(%ebp), %edx
	movl	-420(%ebp), %ecx
	movl	-360(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	gen_int_mode@PLT
	movl	%eax, 24(%ebp)
.L1479:
	.loc 1 3282 0
	movl	-432(%ebp), %eax
	xorl	$1, %eax
	orl	-428(%ebp), %eax
	testl	%eax, %eax
	jne	.L1482
	.loc 1 3283 0
	movl	20(%ebp), %eax
	movl	%eax, -352(%ebp)
	jmp	.L1484
.L1482:
	.loc 1 3284 0
	movl	-428(%ebp), %eax
	xorl	$-1, %eax
	movl	-432(%ebp), %edx
	xorl	$-1, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1485
	.loc 1 3285 0
	movl	optab_table@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	$0, 16(%esp)
	movl	-356(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -352(%ebp)
	jmp	.L1484
.L1485:
	.loc 1 3287 0
	movl	-340(%ebp), %ecx
	subl	$1, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1721
	movl	%eax, %edx
	xorl	%eax, %eax
.L1721:
	movl	%edx, %ecx
	xorl	-420(%ebp), %ecx
	xorl	-424(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1487
	.loc 1 3290 0
	movl	$1, 24(%esp)
	movl	$1, 20(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$113, 4(%esp)
	movl	-356(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_store_flag@PLT
	movl	%eax, -352(%ebp)
	.loc 1 3292 0
	cmpl	$0, -352(%ebp)
	je	.L1431
	.loc 1 3293 0
	jmp	.L1484
.L1487:
	.loc 1 3295 0
	movl	-432(%ebp), %eax
	movl	-428(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, %esi
	andl	-432(%ebp), %esi
	movl	%edx, %edi
	andl	-428(%ebp), %edi
	movl	%edi, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	jne	.L1490
	cmpl	$0, 8(%ebp)
	je	.L1492
	movl	smod_pow2_cheap@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1490
	jmp	.L1495
.L1492:
	movl	sdiv_pow2_cheap@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1490
.L1495:
	cmpl	$0, 8(%ebp)
	je	.L1496
	movl	optab_table@GOT(%ebx), %eax
	movl	60(%eax), %eax
	movl	%eax, -636(%ebp)
	jmp	.L1498
.L1496:
	movl	optab_table@GOT(%ebx), %eax
	movl	40(%eax), %eax
	movl	%eax, -636(%ebp)
.L1498:
	movl	-360(%ebp), %eax
	movl	-636(%ebp), %edi
	movl	4(%edi,%eax,8), %eax
	cmpl	$529, %eax
	jne	.L1484
	movl	optab_table@GOT(%ebx), %eax
	movl	48(%eax), %edx
	movl	-360(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L1490
	jmp	.L1484
.L1490:
	.loc 1 3307 0
	movl	-424(%ebp), %eax
	movl	-420(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, %esi
	andl	-424(%ebp), %esi
	movl	%edx, %edi
	andl	-420(%ebp), %edi
	movl	%edi, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	jne	.L1501
	.loc 1 3309 0
	movl	-424(%ebp), %eax
	movl	-420(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, -368(%ebp)
	.loc 1 3310 0
	movl	-424(%ebp), %eax
	xorl	$2, %eax
	orl	-420(%ebp), %eax
	testl	%eax, %eax
	je	.L1503
.LBB54:
	.loc 1 3312 0
	call	gen_label_rtx@PLT
	movl	%eax, -276(%ebp)
	.loc 1 3315 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, -272(%ebp)
	.loc 1 3316 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-276(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$114, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	do_cmp_and_jump
	.loc 1 3318 0
	movl	-424(%ebp), %eax
	movl	-420(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	-360(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	gen_int_mode@PLT
	movl	%eax, 4(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_inc@PLT
	.loc 1 3320 0
	movl	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 3321 0
	movl	-368(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	$0, 20(%esp)
	movl	-356(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -352(%ebp)
	jmp	.L1505
.L1503:
.LBE54:
.LBB55:
	.loc 1 3328 0
	movl	-340(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -268(%ebp)
	.loc 1 3331 0
	movl	-368(%ebp), %edx
	movl	-340(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-268(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -264(%ebp)
	.loc 1 3334 0
	movl	-264(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -260(%ebp)
	.loc 1 3337 0
	movl	-368(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	$0, 20(%esp)
	movl	-356(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-260(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -352(%ebp)
.L1505:
.LBE55:
	.loc 1 3344 0
	cmpl	$0, -428(%ebp)
	jns	.L1484
	.loc 1 3346 0
	call	get_last_insn@PLT
	movl	%eax, -336(%ebp)
	.loc 1 3347 0
	movl	-336(%ebp), %eax
	cmpl	-344(%ebp), %eax
	je	.L1508
	movl	-336(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1510
	movl	-336(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1512
	movl	-336(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -628(%ebp)
	jmp	.L1514
.L1512:
	movl	-336(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -628(%ebp)
.L1514:
	movl	-628(%ebp), %eax
	movl	%eax, -632(%ebp)
	jmp	.L1515
.L1510:
	movl	$0, -632(%ebp)
.L1515:
	movl	-632(%ebp), %edx
	movl	%edx, -332(%ebp)
	cmpl	$0, -332(%ebp)
	je	.L1508
	movl	-332(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-352(%ebp), %eax
	jne	.L1508
	movl	-424(%ebp), %eax
	movl	-420(%ebp), %edx
	testl	%edx, %edx
	js	.L1508
	.loc 1 3352 0
	movl	-424(%ebp), %edx
	movl	-420(%ebp), %ecx
	movl	-360(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	trunc_int_for_mode@PLT
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$89, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	set_unique_reg_note@PLT
.L1508:
	.loc 1 3361 0
	movl	optab_table@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	$0, 16(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -352(%ebp)
	jmp	.L1484
.L1501:
	.loc 1 3365 0
	cmpl	$64, -340(%ebp)
	jg	.L1422
	.loc 1 3367 0
	movl	-340(%ebp), %edx
	subl	$1, %edx
	leal	-368(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-364(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-456(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-340(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-424(%ebp), %eax
	movl	-420(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	choose_multiplier
	.loc 1 3369 0
	movl	-340(%ebp), %ecx
	subl	$1, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1720
	movl	%esi, %edi
	xorl	%esi, %esi
.L1720:
	movl	%esi, -624(%ebp)
	movl	%edi, -620(%ebp)
	movl	-456(%ebp), %eax
	movl	-452(%ebp), %edx
	movl	%eax, -616(%ebp)
	movl	%edx, -612(%ebp)
	movl	-612(%ebp), %edx
	cmpl	%edx, -620(%ebp)
	jb	.L1520
	movl	-612(%ebp), %ecx
	cmpl	%ecx, -620(%ebp)
	ja	.L1522
	movl	-616(%ebp), %esi
	cmpl	%esi, -624(%ebp)
	jbe	.L1520
.L1522:
.LBB56:
	.loc 1 3373 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1523
	movl	$64, -608(%ebp)
	jmp	.L1525
.L1523:
	movl	$32, -608(%ebp)
.L1525:
	movl	-364(%ebp), %eax
	cmpl	%eax, -608(%ebp)
	jle	.L1431
	movl	-340(%ebp), %edi
	subl	$1, %edi
	movl	%edi, -604(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1527
	movl	$64, -600(%ebp)
	jmp	.L1529
.L1527:
	movl	$32, -600(%ebp)
.L1529:
	movl	-600(%ebp), %eax
	cmpl	%eax, -604(%ebp)
	jge	.L1431
	.loc 1 3377 0
	movl	-364(%ebp), %eax
	movl	shift_cost@GOTOFF(%ebx,%eax,4), %edx
	movl	-340(%ebp), %eax
	subl	$1, %eax
	movl	shift_cost@GOTOFF(%ebx,%eax,4), %eax
	addl	%eax, %edx
	movl	add_cost@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -308(%ebp)
	.loc 1 3379 0
	movl	-308(%ebp), %edx
	movl	-312(%ebp), %eax
	subl	%edx, %eax
	movl	-456(%ebp), %edx
	movl	-452(%ebp), %ecx
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_mult_highpart@PLT
	movl	%eax, -256(%ebp)
	.loc 1 3382 0
	cmpl	$0, -256(%ebp)
	je	.L1431
	.loc 1 3384 0
	movl	-364(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -252(%ebp)
	.loc 1 3386 0
	movl	-340(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -248(%ebp)
	.loc 1 3388 0
	cmpl	$0, -428(%ebp)
	jns	.L1532
	.loc 1 3389 0
	movl	-252(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-248(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$86, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-356(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	force_operand@PLT
	movl	%eax, -352(%ebp)
	jmp	.L1484
.L1532:
	.loc 1 3394 0
	movl	-248(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-252(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$86, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-356(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	force_operand@PLT
	movl	%eax, -352(%ebp)
	jmp	.L1484
.L1520:
.LBE56:
.LBB57:
	.loc 1 3403 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1535
	movl	$64, -596(%ebp)
	jmp	.L1537
.L1535:
	movl	$32, -596(%ebp)
.L1537:
	movl	-364(%ebp), %eax
	cmpl	%eax, -596(%ebp)
	jle	.L1431
	movl	-340(%ebp), %edx
	subl	$1, %edx
	movl	%edx, -592(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1539
	movl	$64, -588(%ebp)
	jmp	.L1541
.L1539:
	movl	$32, -588(%ebp)
.L1541:
	movl	-588(%ebp), %ecx
	cmpl	%ecx, -592(%ebp)
	jge	.L1431
	.loc 1 3407 0
	movl	-340(%ebp), %ecx
	subl	$1, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1719
	movl	%esi, %edi
	xorl	%esi, %esi
.L1719:
	movl	%esi, -584(%ebp)
	movl	%edi, -580(%ebp)
	movl	-456(%ebp), %esi
	movl	-452(%ebp), %edi
	movl	-584(%ebp), %eax
	orl	%esi, %eax
	movl	-580(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -456(%ebp)
	movl	%edx, -452(%ebp)
	.loc 1 3408 0
	movl	-364(%ebp), %eax
	movl	shift_cost@GOTOFF(%ebx,%eax,4), %edx
	movl	-340(%ebp), %eax
	subl	$1, %eax
	movl	shift_cost@GOTOFF(%ebx,%eax,4), %eax
	addl	%eax, %edx
	movl	add_cost@GOTOFF(%ebx), %eax
	addl	%eax, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -308(%ebp)
	.loc 1 3410 0
	movl	-308(%ebp), %edx
	movl	-312(%ebp), %eax
	subl	%edx, %eax
	movl	-456(%ebp), %edx
	movl	-452(%ebp), %ecx
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_mult_highpart@PLT
	movl	%eax, -244(%ebp)
	.loc 1 3413 0
	cmpl	$0, -244(%ebp)
	je	.L1431
	.loc 1 3415 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-244(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -240(%ebp)
	.loc 1 3418 0
	movl	-364(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-240(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -236(%ebp)
	.loc 1 3421 0
	movl	-340(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -232(%ebp)
	.loc 1 3424 0
	cmpl	$0, -428(%ebp)
	jns	.L1544
	.loc 1 3425 0
	movl	-236(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-232(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$86, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-356(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	force_operand@PLT
	movl	%eax, -352(%ebp)
	jmp	.L1484
.L1544:
	.loc 1 3430 0
	movl	-232(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$86, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-356(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	force_operand@PLT
	movl	%eax, -352(%ebp)
.L1484:
.LBE57:
	.loc 1 3439 0
	call	get_last_insn@PLT
	movl	%eax, -336(%ebp)
	.loc 1 3440 0
	movl	-336(%ebp), %eax
	cmpl	-344(%ebp), %eax
	je	.L1422
	movl	-336(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1547
	movl	-336(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1549
	movl	-336(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -572(%ebp)
	jmp	.L1551
.L1549:
	movl	-336(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -572(%ebp)
.L1551:
	movl	-572(%ebp), %edi
	movl	%edi, -576(%ebp)
	jmp	.L1552
.L1547:
	movl	$0, -576(%ebp)
.L1552:
	movl	-576(%ebp), %eax
	movl	%eax, -332(%ebp)
	cmpl	$0, -332(%ebp)
	je	.L1422
	movl	-332(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-352(%ebp), %eax
	jne	.L1422
	.loc 1 3443 0
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$89, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	set_unique_reg_note@PLT
	.loc 1 3447 0
	jmp	.L1422
.L1431:
.LBE53:
	.loc 1 3450 0
	movl	-344(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
	.loc 1 3451 0
	jmp	.L1422
.L1427:
	.loc 1 3456 0
	cmpl	$0, -320(%ebp)
	je	.L1555
	cmpl	$64, -340(%ebp)
	jg	.L1555
.LBB58:
	.loc 1 3460 0
	movl	24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -408(%ebp)
	movl	%edx, -404(%ebp)
	.loc 1 3462 0
	cmpl	$0, -404(%ebp)
	js	.L1558
	cmpl	$0, -404(%ebp)
	jg	.L1560
	cmpl	$0, -408(%ebp)
	jbe	.L1558
.L1560:
	.loc 1 3466 0
	movl	-408(%ebp), %eax
	movl	-404(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, %esi
	andl	-408(%ebp), %esi
	movl	%edx, %edi
	andl	-404(%ebp), %edi
	movl	%edi, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	jne	.L1561
	.loc 1 3468 0
	movl	-408(%ebp), %eax
	movl	-404(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, -228(%ebp)
	.loc 1 3469 0
	cmpl	$0, 8(%ebp)
	je	.L1563
	.loc 1 3471 0
	movl	-228(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1718
	movl	%eax, %edx
	xorl	%eax, %eax
.L1718:
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	72(%eax), %ecx
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -348(%ebp)
	.loc 1 3474 0
	cmpl	$0, -348(%ebp)
	je	.L1563
	.loc 1 3475 0
	movl	-348(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -744(%ebp)
	jmp	.L1331
.L1563:
	.loc 1 3477 0
	movl	-228(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	$0, 20(%esp)
	movl	-356(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -352(%ebp)
	jmp	.L1555
.L1561:
.LBB59:
	.loc 1 3485 0
	movl	-340(%ebp), %esi
	subl	$1, %esi
	movl	-408(%ebp), %edx
	movl	-404(%ebp), %ecx
	leal	-364(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-368(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-456(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%esi, 12(%esp)
	movl	-340(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	choose_multiplier
	movl	%eax, -416(%ebp)
	movl	%edx, -412(%ebp)
	.loc 1 3487 0
	movl	-416(%ebp), %eax
	orl	-412(%ebp), %eax
	testl	%eax, %eax
	je	.L1567
	.loc 1 3488 0
	leal	__FUNCTION__.16306@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3488, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1567:
	.loc 1 3490 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1569
	movl	$64, -568(%ebp)
	jmp	.L1571
.L1569:
	movl	$32, -568(%ebp)
.L1571:
	movl	-368(%ebp), %eax
	cmpl	%eax, -568(%ebp)
	jle	.L1555
	movl	-340(%ebp), %edx
	subl	$1, %edx
	movl	%edx, -564(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1573
	movl	$64, -560(%ebp)
	jmp	.L1575
.L1573:
	movl	$32, -560(%ebp)
.L1575:
	movl	-560(%ebp), %ecx
	cmpl	%ecx, -564(%ebp)
	jge	.L1555
	.loc 1 3493 0
	movl	-340(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -224(%ebp)
	.loc 1 3496 0
	movl	optab_table@GOT(%ebx), %eax
	movl	80(%eax), %edx
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	-224(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -220(%ebp)
	.loc 1 3498 0
	movl	-368(%ebp), %eax
	movl	shift_cost@GOTOFF(%ebx,%eax,4), %edx
	movl	-340(%ebp), %eax
	subl	$1, %eax
	movl	shift_cost@GOTOFF(%ebx,%eax,4), %eax
	addl	%eax, %edx
	movl	add_cost@GOTOFF(%ebx), %eax
	addl	%eax, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -308(%ebp)
	.loc 1 3500 0
	movl	-308(%ebp), %edx
	movl	-312(%ebp), %eax
	subl	%edx, %eax
	movl	-456(%ebp), %edx
	movl	-452(%ebp), %ecx
	movl	%eax, 24(%esp)
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	-220(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_mult_highpart@PLT
	movl	%eax, -216(%ebp)
	.loc 1 3503 0
	cmpl	$0, -216(%ebp)
	je	.L1555
	.loc 1 3505 0
	movl	-368(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-216(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -212(%ebp)
	.loc 1 3508 0
	movl	optab_table@GOT(%ebx), %eax
	movl	80(%eax), %edx
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	-356(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-224(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-212(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -352(%ebp)
	jmp	.L1555
.L1558:
.LBE59:
.LBB60:
	.loc 1 3518 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -204(%ebp)
	.loc 1 3520 0
	movl	optab_table@GOT(%ebx), %eax
	movl	76(%eax), %edx
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	-204(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -200(%ebp)
	.loc 1 3522 0
	movl	-340(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-200(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -208(%ebp)
	.loc 1 3524 0
	movl	-208(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-204(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$86, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -196(%ebp)
	.loc 1 3526 0
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-196(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$63, 4(%esp)
	movl	$0, (%esp)
	call	expand_divmod@PLT
	movl	%eax, -192(%ebp)
	.loc 1 3528 0
	cmpl	$0, -192(%ebp)
	je	.L1555
.LBB61:
	.loc 1 3531 0
	movl	optab_table@GOT(%ebx), %eax
	movl	144(%eax), %edx
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	-208(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -188(%ebp)
	.loc 1 3533 0
	movl	-188(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-192(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-356(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	force_operand@PLT
	movl	%eax, -352(%ebp)
.L1555:
.LBE61:
.LBE60:
.LBE58:
	.loc 1 3540 0
	cmpl	$0, -352(%ebp)
	jne	.L1422
	.loc 1 3542 0
	movl	-344(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
	.loc 1 3549 0
	cmpl	$0, 28(%ebp)
	je	.L1580
	movl	28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-360(%ebp), %eax
	je	.L1582
.L1580:
	.loc 1 3550 0
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 28(%ebp)
.L1582:
	.loc 1 3552 0
	cmpl	$0, 8(%ebp)
	je	.L1583
	.loc 1 3554 0
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1585
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -556(%ebp)
	jmp	.L1587
.L1585:
	movl	28(%ebp), %esi
	movl	%esi, -556(%ebp)
.L1587:
	movl	-556(%ebp), %edi
	movl	%edi, -348(%ebp)
	.loc 1 3556 0
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -352(%ebp)
	jmp	.L1588
.L1583:
	.loc 1 3560 0
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1589
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -552(%ebp)
	jmp	.L1591
.L1589:
	movl	28(%ebp), %eax
	movl	%eax, -552(%ebp)
.L1591:
	movl	-552(%ebp), %edx
	movl	%edx, -352(%ebp)
	.loc 1 3562 0
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -348(%ebp)
.L1588:
	.loc 1 3565 0
	movl	optab_table@GOT(%ebx), %eax
	movl	48(%eax), %edx
	movl	$0, 20(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_twoval_binop@PLT
	testl	%eax, %eax
	je	.L1592
.LBB62:
	.loc 1 3571 0
	call	gen_label_rtx@PLT
	movl	%eax, -180(%ebp)
	.loc 1 3572 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-180(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$113, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, (%esp)
	call	do_cmp_and_jump
	.loc 1 3573 0
	movl	optab_table@GOT(%ebx), %eax
	movl	80(%eax), %edx
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -184(%ebp)
	.loc 1 3575 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-180(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$114, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	do_cmp_and_jump
	.loc 1 3576 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_dec@PLT
	.loc 1 3577 0
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_inc@PLT
	.loc 1 3578 0
	movl	-180(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 3579 0
	cmpl	$0, 8(%ebp)
	je	.L1594
	movl	-348(%ebp), %ecx
	movl	%ecx, -548(%ebp)
	jmp	.L1596
.L1594:
	movl	-352(%ebp), %esi
	movl	%esi, -548(%ebp)
.L1596:
	movl	-548(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -744(%ebp)
	jmp	.L1331
.L1592:
.LBE62:
.LBB63:
	.loc 1 3589 0
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -352(%ebp)
	.loc 1 3590 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, -156(%ebp)
	.loc 1 3591 0
	call	gen_label_rtx@PLT
	movl	%eax, -176(%ebp)
	.loc 1 3592 0
	call	gen_label_rtx@PLT
	movl	%eax, -172(%ebp)
	.loc 1 3593 0
	call	gen_label_rtx@PLT
	movl	%eax, -168(%ebp)
	.loc 1 3594 0
	call	gen_label_rtx@PLT
	movl	%eax, -164(%ebp)
	.loc 1 3595 0
	call	gen_label_rtx@PLT
	movl	%eax, -160(%ebp)
	.loc 1 3596 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-172(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$117, 8(%esp)
	movl	%edx, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	do_cmp_and_jump
	.loc 1 3597 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-176(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$117, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	do_cmp_and_jump
	.loc 1 3598 0
	movl	optab_table@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -152(%ebp)
	.loc 1 3600 0
	movl	-152(%ebp), %eax
	cmpl	-352(%ebp), %eax
	je	.L1597
	.loc 1 3601 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L1597:
	.loc 1 3602 0
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	.loc 1 3603 0
	call	emit_barrier@PLT
	.loc 1 3604 0
	movl	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 3605 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_inc@PLT
	.loc 1 3606 0
	movl	-164(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	.loc 1 3607 0
	call	emit_barrier@PLT
	.loc 1 3608 0
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 3609 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-168(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$115, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	do_cmp_and_jump
	.loc 1 3610 0
	movl	optab_table@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -152(%ebp)
	.loc 1 3612 0
	movl	-152(%ebp), %eax
	cmpl	-352(%ebp), %eax
	je	.L1599
	.loc 1 3613 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L1599:
	.loc 1 3614 0
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	.loc 1 3615 0
	call	emit_barrier@PLT
	.loc 1 3616 0
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 3617 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_dec@PLT
	.loc 1 3618 0
	movl	-164(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 3619 0
	movl	optab_table@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -152(%ebp)
	.loc 1 3621 0
	movl	-152(%ebp), %eax
	cmpl	-352(%ebp), %eax
	je	.L1601
	.loc 1 3622 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L1601:
	.loc 1 3623 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_dec@PLT
	.loc 1 3624 0
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 3626 0
	jmp	.L1422
.L1426:
.LBE63:
	.loc 1 3630 0
	cmpl	$0, 32(%ebp)
	je	.L1603
	.loc 1 3632 0
	cmpl	$0, -320(%ebp)
	je	.L1605
	movl	24(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -544(%ebp)
	movl	%ecx, -540(%ebp)
	movl	24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	-544(%ebp), %eax
	andl	%esi, %eax
	movl	-540(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1605
.LBB64:
	.loc 1 3635 0
	movl	24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -400(%ebp)
	movl	%edx, -396(%ebp)
	.loc 1 3636 0
	movl	-400(%ebp), %eax
	movl	-396(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	$1, 20(%esp)
	movl	-356(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -148(%ebp)
	.loc 1 3639 0
	movl	-400(%ebp), %eax
	movl	-396(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	72(%eax), %ecx
	movl	$3, 24(%esp)
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -144(%ebp)
	.loc 1 3642 0
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -140(%ebp)
	.loc 1 3643 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	$1, 24(%esp)
	movl	$1, 20(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$112, 4(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_store_flag@PLT
	movl	%eax, -140(%ebp)
	.loc 1 3645 0
	cmpl	$0, -140(%ebp)
	jne	.L1608
.LBB65:
	.loc 1 3648 0
	call	gen_label_rtx@PLT
	movl	%eax, -136(%ebp)
	.loc 1 3649 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-136(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$113, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	do_cmp_and_jump
	.loc 1 3650 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_inc@PLT
	.loc 1 3651 0
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 3652 0
	movl	-148(%ebp), %eax
	movl	%eax, -352(%ebp)
	jmp	.L1422
.L1608:
.LBE65:
	.loc 1 3655 0
	movl	-140(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-356(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	force_operand@PLT
	movl	%eax, -352(%ebp)
	.loc 1 3658 0
	jmp	.L1422
.L1605:
.LBE64:
	.loc 1 3666 0
	cmpl	$0, 28(%ebp)
	je	.L1611
	movl	28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-360(%ebp), %eax
	je	.L1613
.L1611:
	.loc 1 3667 0
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 28(%ebp)
.L1613:
	.loc 1 3669 0
	cmpl	$0, 8(%ebp)
	je	.L1614
	.loc 1 3671 0
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1616
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -532(%ebp)
	jmp	.L1618
.L1616:
	movl	28(%ebp), %ecx
	movl	%ecx, -532(%ebp)
.L1618:
	movl	-532(%ebp), %esi
	movl	%esi, -348(%ebp)
	.loc 1 3673 0
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -352(%ebp)
	jmp	.L1619
.L1614:
	.loc 1 3677 0
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1620
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -528(%ebp)
	jmp	.L1622
.L1620:
	movl	28(%ebp), %edi
	movl	%edi, -528(%ebp)
.L1622:
	movl	-528(%ebp), %eax
	movl	%eax, -352(%ebp)
	.loc 1 3679 0
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -348(%ebp)
.L1619:
	.loc 1 3682 0
	movl	optab_table@GOT(%ebx), %eax
	movl	56(%eax), %edx
	movl	$1, 20(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_twoval_binop@PLT
	testl	%eax, %eax
	je	.L1623
.LBB66:
	.loc 1 3687 0
	call	gen_label_rtx@PLT
	movl	%eax, -132(%ebp)
	.loc 1 3688 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-132(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$113, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, (%esp)
	call	do_cmp_and_jump
	.loc 1 3690 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_inc@PLT
	.loc 1 3691 0
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_dec@PLT
	.loc 1 3692 0
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 3693 0
	cmpl	$0, 8(%ebp)
	je	.L1625
	movl	-348(%ebp), %edx
	movl	%edx, -524(%ebp)
	jmp	.L1627
.L1625:
	movl	-352(%ebp), %ecx
	movl	%ecx, -524(%ebp)
.L1627:
	movl	-524(%ebp), %esi
	movl	%esi, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -744(%ebp)
	jmp	.L1331
.L1623:
.LBE66:
.LBB67:
	.loc 1 3702 0
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -352(%ebp)
	.loc 1 3703 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, -120(%ebp)
	.loc 1 3704 0
	call	gen_label_rtx@PLT
	movl	%eax, -128(%ebp)
	.loc 1 3705 0
	call	gen_label_rtx@PLT
	movl	%eax, -124(%ebp)
	.loc 1 3706 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-128(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$112, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	do_cmp_and_jump
	.loc 1 3708 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 3709 0
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	.loc 1 3710 0
	call	emit_barrier@PLT
	.loc 1 3711 0
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 3712 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_dec@PLT
	.loc 1 3713 0
	movl	optab_table@GOT(%ebx), %eax
	movl	52(%eax), %edx
	movl	$3, 24(%esp)
	movl	$1, 20(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -116(%ebp)
	.loc 1 3715 0
	movl	-116(%ebp), %eax
	cmpl	-352(%ebp), %eax
	je	.L1628
	.loc 1 3716 0
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L1628:
	.loc 1 3717 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_inc@PLT
	.loc 1 3718 0
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	jmp	.L1422
.L1603:
.LBE67:
	.loc 1 3723 0
	cmpl	$0, -320(%ebp)
	je	.L1631
	movl	24(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -520(%ebp)
	movl	%ecx, -516(%ebp)
	movl	24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	-520(%ebp), %eax
	andl	%esi, %eax
	movl	-516(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1631
	movl	24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	js	.L1631
.LBB68:
	.loc 1 3733 0
	movl	24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -392(%ebp)
	movl	%edx, -388(%ebp)
	.loc 1 3734 0
	movl	-392(%ebp), %eax
	movl	-388(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	$0, 20(%esp)
	movl	-356(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -112(%ebp)
	.loc 1 3737 0
	movl	-392(%ebp), %eax
	movl	-388(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	72(%eax), %ecx
	movl	$3, 24(%esp)
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -108(%ebp)
	.loc 1 3740 0
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -104(%ebp)
	.loc 1 3741 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	$1, 24(%esp)
	movl	$1, 20(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$112, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_store_flag@PLT
	movl	%eax, -104(%ebp)
	.loc 1 3743 0
	cmpl	$0, -104(%ebp)
	jne	.L1635
.LBB69:
	.loc 1 3746 0
	call	gen_label_rtx@PLT
	movl	%eax, -100(%ebp)
	.loc 1 3747 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$113, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	do_cmp_and_jump
	.loc 1 3748 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_inc@PLT
	.loc 1 3749 0
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 3750 0
	movl	-112(%ebp), %eax
	movl	%eax, -352(%ebp)
	jmp	.L1422
.L1635:
.LBE69:
	.loc 1 3753 0
	movl	-104(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-356(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	force_operand@PLT
	movl	%eax, -352(%ebp)
	.loc 1 3756 0
	jmp	.L1422
.L1631:
.LBE68:
	.loc 1 3764 0
	cmpl	$0, 28(%ebp)
	je	.L1638
	movl	28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-360(%ebp), %eax
	je	.L1640
.L1638:
	.loc 1 3765 0
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 28(%ebp)
.L1640:
	.loc 1 3766 0
	cmpl	$0, 8(%ebp)
	je	.L1641
	.loc 1 3768 0
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1643
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -508(%ebp)
	jmp	.L1645
.L1643:
	movl	28(%ebp), %ecx
	movl	%ecx, -508(%ebp)
.L1645:
	movl	-508(%ebp), %esi
	movl	%esi, -348(%ebp)
	.loc 1 3770 0
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -352(%ebp)
	jmp	.L1646
.L1641:
	.loc 1 3774 0
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1647
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -504(%ebp)
	jmp	.L1649
.L1647:
	movl	28(%ebp), %edi
	movl	%edi, -504(%ebp)
.L1649:
	movl	-504(%ebp), %eax
	movl	%eax, -352(%ebp)
	.loc 1 3776 0
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -348(%ebp)
.L1646:
	.loc 1 3779 0
	movl	optab_table@GOT(%ebx), %eax
	movl	48(%eax), %edx
	movl	$0, 20(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_twoval_binop@PLT
	testl	%eax, %eax
	je	.L1650
.LBB70:
	.loc 1 3785 0
	call	gen_label_rtx@PLT
	movl	%eax, -92(%ebp)
	.loc 1 3786 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-92(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$113, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, (%esp)
	call	do_cmp_and_jump
	.loc 1 3788 0
	movl	optab_table@GOT(%ebx), %eax
	movl	80(%eax), %edx
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -96(%ebp)
	.loc 1 3790 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-92(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$117, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	do_cmp_and_jump
	.loc 1 3791 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_inc@PLT
	.loc 1 3792 0
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_dec@PLT
	.loc 1 3793 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 3794 0
	cmpl	$0, 8(%ebp)
	je	.L1652
	movl	-348(%ebp), %edx
	movl	%edx, -500(%ebp)
	jmp	.L1654
.L1652:
	movl	-352(%ebp), %ecx
	movl	%ecx, -500(%ebp)
.L1654:
	movl	-500(%ebp), %esi
	movl	%esi, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -744(%ebp)
	jmp	.L1331
.L1650:
.LBE70:
.LBB71:
	.loc 1 3804 0
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -352(%ebp)
	.loc 1 3805 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, -68(%ebp)
	.loc 1 3806 0
	call	gen_label_rtx@PLT
	movl	%eax, -88(%ebp)
	.loc 1 3807 0
	call	gen_label_rtx@PLT
	movl	%eax, -84(%ebp)
	.loc 1 3808 0
	call	gen_label_rtx@PLT
	movl	%eax, -80(%ebp)
	.loc 1 3809 0
	call	gen_label_rtx@PLT
	movl	%eax, -76(%ebp)
	.loc 1 3810 0
	call	gen_label_rtx@PLT
	movl	%eax, -72(%ebp)
	.loc 1 3811 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$117, 8(%esp)
	movl	%edx, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	do_cmp_and_jump
	.loc 1 3812 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-88(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$115, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	do_cmp_and_jump
	.loc 1 3814 0
	movl	optab_table@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -64(%ebp)
	.loc 1 3816 0
	movl	-64(%ebp), %eax
	cmpl	-352(%ebp), %eax
	je	.L1655
	.loc 1 3817 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L1655:
	.loc 1 3818 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	.loc 1 3819 0
	call	emit_barrier@PLT
	.loc 1 3820 0
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 3821 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_dec@PLT
	.loc 1 3822 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	.loc 1 3823 0
	call	emit_barrier@PLT
	.loc 1 3824 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 3825 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$117, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	do_cmp_and_jump
	.loc 1 3827 0
	movl	optab_table@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -64(%ebp)
	.loc 1 3829 0
	movl	-64(%ebp), %eax
	cmpl	-352(%ebp), %eax
	je	.L1657
	.loc 1 3830 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L1657:
	.loc 1 3831 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	.loc 1 3832 0
	call	emit_barrier@PLT
	.loc 1 3833 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 3834 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_inc@PLT
	.loc 1 3835 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 3836 0
	movl	optab_table@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -64(%ebp)
	.loc 1 3838 0
	movl	-64(%ebp), %eax
	cmpl	-352(%ebp), %eax
	je	.L1659
	.loc 1 3839 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L1659:
	.loc 1 3840 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_inc@PLT
	.loc 1 3841 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 3844 0
	jmp	.L1422
.L1429:
.LBE71:
	.loc 1 3847 0
	cmpl	$0, -320(%ebp)
	je	.L1422
	cmpl	$64, -340(%ebp)
	jg	.L1422
.LBB72:
	.loc 1 3849 0
	movl	24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -384(%ebp)
	movl	%edx, -380(%ebp)
	.loc 1 3854 0
	movl	-384(%ebp), %eax
	movl	-380(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	%esi, %eax
	andl	-384(%ebp), %eax
	movl	%edi, %edx
	andl	-380(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, -60(%ebp)
	.loc 1 3855 0
	movl	-60(%ebp), %ecx
	movl	-384(%ebp), %eax
	movl	-380(%ebp), %edx
	shrdl	%edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	.L1717
	movl	%edx, %eax
	sarl	$31, %edx
.L1717:
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	-340(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	invert_mod2n
	movl	%eax, -376(%ebp)
	movl	%edx, -372(%ebp)
	.loc 1 3856 0
	movl	-60(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -56(%ebp)
	.loc 1 3858 0
	movl	-376(%ebp), %edx
	movl	-372(%ebp), %ecx
	movl	-360(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	gen_int_mode@PLT
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_mult@PLT
	movl	%eax, -352(%ebp)
	.loc 1 3862 0
	call	get_last_insn@PLT
	movl	%eax, -336(%ebp)
	.loc 1 3863 0
	cmpl	$0, 32(%ebp)
	je	.L1664
	movl	$91, -496(%ebp)
	jmp	.L1666
.L1664:
	movl	$89, -496(%ebp)
.L1666:
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-496(%ebp), %edi
	movl	%edi, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	set_unique_reg_note@PLT
	.loc 1 3869 0
	jmp	.L1422
.L1428:
.LBE72:
	.loc 1 3873 0
	cmpl	$0, 32(%ebp)
	je	.L1667
.LBB73:
	.loc 1 3877 0
	call	gen_label_rtx@PLT
	movl	%eax, -48(%ebp)
	.loc 1 3878 0
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -352(%ebp)
	.loc 1 3879 0
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -348(%ebp)
	.loc 1 3880 0
	movl	optab_table@GOT(%ebx), %eax
	movl	56(%eax), %edx
	movl	$1, 20(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_twoval_binop@PLT
	testl	%eax, %eax
	jne	.L1669
.LBB74:
	.loc 1 3883 0
	movl	optab_table@GOT(%ebx), %eax
	movl	52(%eax), %edx
	movl	$3, 24(%esp)
	movl	$1, 20(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -352(%ebp)
	.loc 1 3885 0
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_mult@PLT
	movl	%eax, -44(%ebp)
	.loc 1 3886 0
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	$3, 24(%esp)
	movl	$1, 20(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -348(%ebp)
.L1669:
.LBE74:
	.loc 1 3889 0
	movl	$-1, 4(%esp)
	movl	$-1, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -52(%ebp)
	.loc 1 3890 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -52(%ebp)
	.loc 1 3892 0
	movl	-48(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$120, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, (%esp)
	call	do_cmp_and_jump
	.loc 1 3893 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_inc@PLT
	.loc 1 3894 0
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_dec@PLT
	.loc 1 3895 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	jmp	.L1671
.L1667:
.LBE73:
.LBB75:
	.loc 1 3901 0
	call	gen_label_rtx@PLT
	movl	%eax, -24(%ebp)
	.loc 1 3902 0
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -352(%ebp)
	.loc 1 3903 0
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -348(%ebp)
	.loc 1 3904 0
	movl	optab_table@GOT(%ebx), %eax
	movl	48(%eax), %edx
	movl	$0, 20(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_twoval_binop@PLT
	testl	%eax, %eax
	jne	.L1672
.LBB76:
	.loc 1 3907 0
	movl	optab_table@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -352(%ebp)
	.loc 1 3909 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_mult@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3910 0
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -348(%ebp)
.L1672:
.LBE76:
	.loc 1 3913 0
	movl	$0, 16(%esp)
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_abs@PLT
	movl	%eax, -40(%ebp)
	.loc 1 3914 0
	movl	$0, 16(%esp)
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_abs@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3915 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	expand_shift@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3917 0
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$121, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	do_cmp_and_jump
	.loc 1 3918 0
	movl	optab_table@GOT(%ebx), %eax
	movl	80(%eax), %edx
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3920 0
	movl	-340(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -28(%ebp)
	.loc 1 3922 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	80(%eax), %ecx
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3924 0
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3926 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_inc@PLT
	.loc 1 3927 0
	movl	optab_table@GOT(%ebx), %eax
	movl	80(%eax), %edx
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3929 0
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3931 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_dec@PLT
	.loc 1 3932 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
.L1671:
.LBE75:
	.loc 1 3934 0
	cmpl	$0, 8(%ebp)
	je	.L1674
	movl	-348(%ebp), %eax
	movl	%eax, -492(%ebp)
	jmp	.L1676
.L1674:
	movl	-352(%ebp), %edx
	movl	%edx, -492(%ebp)
.L1676:
	movl	-492(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -744(%ebp)
	jmp	.L1331
.L1424:
	.loc 1 3937 0
	leal	__FUNCTION__.16306@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3937, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1422:
	.loc 1 3940 0
	cmpl	$0, -352(%ebp)
	jne	.L1677
	.loc 1 3942 0
	cmpl	$0, 28(%ebp)
	je	.L1679
	movl	28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-360(%ebp), %eax
	je	.L1679
	.loc 1 3943 0
	movl	$0, 28(%ebp)
.L1679:
	.loc 1 3945 0
	cmpl	$0, 8(%ebp)
	je	.L1682
	.loc 1 3956 0
	movl	-360(%ebp), %eax
	movl	-324(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L1684
	movl	$0, -488(%ebp)
	jmp	.L1686
.L1684:
	movl	$2, -488(%ebp)
.L1686:
	movl	optab_table@GOT(%ebx), %eax
	movl	60(%eax), %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	64(%eax), %ecx
	movl	-488(%ebp), %esi
	movl	%esi, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	sign_expand_binop@PLT
	movl	%eax, -348(%ebp)
	.loc 1 3963 0
	cmpl	$0, -348(%ebp)
	jne	.L1687
	.loc 1 3967 0
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -348(%ebp)
	.loc 1 3968 0
	cmpl	$0, 32(%ebp)
	je	.L1689
	movl	optab_table@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, -484(%ebp)
	jmp	.L1691
.L1689:
	movl	optab_table@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -484(%ebp)
.L1691:
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-484(%ebp), %edi
	movl	%edi, (%esp)
	call	expand_twoval_binop@PLT
	testl	%eax, %eax
	jne	.L1687
	.loc 1 3973 0
	movl	$0, -348(%ebp)
.L1687:
	.loc 1 3976 0
	cmpl	$0, -348(%ebp)
	je	.L1682
	.loc 1 3977 0
	movl	-348(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -744(%ebp)
	jmp	.L1331
.L1682:
	.loc 1 3984 0
	movl	-360(%ebp), %eax
	movl	-324(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L1694
	movl	$0, -480(%ebp)
	jmp	.L1696
.L1694:
	movl	$2, -480(%ebp)
.L1696:
	cmpl	$0, 8(%ebp)
	jne	.L1697
	movl	28(%ebp), %eax
	movl	%eax, -476(%ebp)
	jmp	.L1699
.L1697:
	movl	$0, -476(%ebp)
.L1699:
	movl	optab_table@GOT(%ebx), %eax
	movl	40(%eax), %ecx
	movl	optab_table@GOT(%ebx), %eax
	movl	52(%eax), %edx
	movl	-480(%ebp), %esi
	movl	%esi, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-476(%ebp), %edi
	movl	%edi, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	sign_expand_binop@PLT
	movl	%eax, -352(%ebp)
	.loc 1 3992 0
	cmpl	$0, -352(%ebp)
	jne	.L1677
	.loc 1 3996 0
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -352(%ebp)
	.loc 1 3997 0
	cmpl	$0, 32(%ebp)
	je	.L1701
	movl	optab_table@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, -472(%ebp)
	jmp	.L1703
.L1701:
	movl	optab_table@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -472(%ebp)
.L1703:
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_twoval_binop@PLT
	testl	%eax, %eax
	jne	.L1677
	.loc 1 4001 0
	movl	$0, -352(%ebp)
	.loc 1 4002 0
	cmpl	$0, 8(%ebp)
	jne	.L1677
	.loc 1 4005 0
	movl	optab_table@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	52(%eax), %ecx
	movl	$3, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	sign_expand_binop@PLT
	movl	%eax, -352(%ebp)
.L1677:
	.loc 1 4013 0
	cmpl	$0, 8(%ebp)
	je	.L1706
	.loc 1 4015 0
	cmpl	$0, 28(%ebp)
	je	.L1708
	movl	28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-360(%ebp), %eax
	je	.L1708
	.loc 1 4016 0
	movl	$0, 28(%ebp)
.L1708:
	.loc 1 4018 0
	cmpl	$0, -352(%ebp)
	jne	.L1711
	.loc 1 4020 0
	movl	optab_table@GOT(%ebx), %eax
	movl	60(%eax), %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	64(%eax), %ecx
	movl	$3, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	sign_expand_binop@PLT
	movl	%eax, -348(%ebp)
	jmp	.L1706
.L1711:
	.loc 1 4026 0
	movl	32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_mult@PLT
	movl	%eax, -348(%ebp)
	.loc 1 4028 0
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	$3, 24(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -348(%ebp)
.L1706:
	.loc 1 4034 0
	cmpl	$0, 8(%ebp)
	je	.L1713
	movl	-348(%ebp), %edx
	movl	%edx, -468(%ebp)
	jmp	.L1715
.L1713:
	movl	-352(%ebp), %ecx
	movl	%ecx, -468(%ebp)
.L1715:
	movl	-468(%ebp), %esi
	movl	%esi, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -744(%ebp)
.L1331:
	movl	-744(%ebp), %eax
	.loc 1 4035 0
	addl	$796, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE36:
	.size	expand_divmod, .-expand_divmod
.globl make_tree
	.type	make_tree, @function
make_tree:
.LFB37:
	.loc 1 4046 0
	pushl	%ebp
.LCFI117:
	movl	%esp, %ebp
.LCFI118:
	pushl	%edi
.LCFI119:
	pushl	%esi
.LCFI120:
	pushl	%ebx
.LCFI121:
	subl	$108, %esp
.LCFI122:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4049 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$64, %eax
	movl	%eax, -84(%ebp)
	cmpl	$67, -84(%ebp)
	ja	.L1726
	movl	-84(%ebp), %eax
	sall	$2, %eax
	movl	.L1740@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1740:
	.long	.L1727@GOTOFF
	.long	.L1728@GOTOFF
	.long	.L1729@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1730@GOTOFF
	.long	.L1731@GOTOFF
	.long	.L1732@GOTOFF
	.long	.L1733@GOTOFF
	.long	.L1734@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1735@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1736@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1737@GOTOFF
	.long	.L1738@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1726@GOTOFF
	.long	.L1739@GOTOFF
	.long	.L1739@GOTOFF
	.text
.L1727:
	.loc 1 4052 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1741
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	cmpw	$63, %ax
	jbe	.L1743
.L1741:
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	js	.L1744
.L1743:
	movl	$0, -80(%ebp)
	movl	$0, -76(%ebp)
	jmp	.L1745
.L1744:
	movl	$-1, -80(%ebp)
	movl	$-1, -76(%ebp)
.L1745:
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -36(%ebp)
	.loc 1 4056 0
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 4057 0
	movl	-36(%ebp), %edi
	movl	%edi, -68(%ebp)
	jmp	.L1746
.L1728:
	.loc 1 4060 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L1747
	.loc 1 4062 0
	movl	12(%ebp), %eax
	movl	12(%eax), %esi
	movl	16(%eax), %edi
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -36(%ebp)
	.loc 1 4063 0
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L1749
.L1747:
.LBB77:
	.loc 1 4069 0
	movl	12(%ebp), %edx
	addl	$4, %edx
	leal	-60(%ebp), %ecx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12(%ecx)
	movl	16(%edx), %eax
	movl	%eax, 16(%ecx)
	movl	20(%edx), %eax
	movl	%eax, 20(%ecx)
	.loc 1 4070 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_real@PLT
	movl	%eax, -36(%ebp)
.L1749:
.LBE77:
	.loc 1 4073 0
	movl	-36(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1746
.L1729:
.LBB78:
	.loc 1 4079 0
	movl	$0, -20(%ebp)
	.loc 1 4081 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4084 0
	movl	-28(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	jmp	.L1750
.L1751:
	.loc 1 4086 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4087 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4084 0
	subl	$1, -32(%ebp)
.L1750:
	cmpl	$0, -32(%ebp)
	jns	.L1751
	.loc 1 4090 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vector@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1746
.L1730:
.LBE78:
	.loc 1 4094 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1746
.L1731:
	.loc 1 4098 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1746
.L1732:
	.loc 1 4102 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$79, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1746
.L1733:
	.loc 1 4105 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1746
.L1736:
	.loc 1 4109 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1746
.L1738:
	.loc 1 4113 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	268(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -36(%ebp)
	.loc 1 4114 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	build@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1746
.L1737:
	.loc 1 4120 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	272(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -36(%ebp)
	.loc 1 4121 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	build@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1746
.L1734:
	.loc 1 4127 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L1753
	.loc 1 4128 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	272(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -36(%ebp)
	jmp	.L1755
.L1753:
	.loc 1 4130 0
	movl	8(%ebp), %eax
	movl	%eax, -36(%ebp)
.L1755:
	.loc 1 4132 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$63, (%esp)
	call	build@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1746
.L1735:
	.loc 1 4137 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	268(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -36(%ebp)
	.loc 1 4138 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$63, (%esp)
	call	build@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1746
.L1739:
	.loc 1 4145 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	260(%eax), %ecx
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$131, %ax
	sete	%al
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	movl	%eax, -36(%ebp)
	.loc 1 4147 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1746
.L1726:
	.loc 1 4150 0
	movl	$122, (%esp)
	call	make_node@PLT
	movl	%eax, -36(%ebp)
	.loc 1 4151 0
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 4160 0
	movl	-36(%ebp), %eax
	addl	$20, %eax
	leal	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4163 0
	movl	-36(%ebp), %eax
	addl	$20, %eax
	movl	$0, (%eax)
	.loc 1 4164 0
	movl	-36(%ebp), %esi
	movl	%esi, -68(%ebp)
.L1746:
	movl	-68(%ebp), %eax
	.loc 1 4166 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE37:
	.size	make_tree, .-make_tree
.globl const_mult_add_overflow_p
	.type	const_mult_add_overflow_p, @function
const_mult_add_overflow_p:
.LFB38:
	.loc 1 4180 0
	pushl	%ebp
.LCFI123:
	movl	%esp, %ebp
.LCFI124:
	pushl	%edi
.LCFI125:
	pushl	%esi
.LCFI126:
	pushl	%ebx
.LCFI127:
	subl	$44, %esp
.LCFI128:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4183 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -28(%ebp)
	.loc 1 4187 0
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4188 0
	cmpl	$0, 24(%ebp)
	je	.L1758
	.loc 1 4190 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -24(%ebp)
	.loc 1 4191 0
	movl	-24(%ebp), %edx
	movzbl	38(%edx), %eax
	orl	$2, %eax
	movb	%al, 38(%edx)
.L1758:
	.loc 1 4194 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L1760
	movl	lang_hooks@GOT(%ebx), %eax
	movl	260(%eax), %ecx
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	%eax, -32(%ebp)
	jmp	.L1762
.L1760:
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1762:
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4197 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%eax, %edi
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%edi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4203 0
	movl	-16(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %eax
	.loc 1 4204 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE38:
	.size	const_mult_add_overflow_p, .-const_mult_add_overflow_p
.globl expand_mult_add
	.type	expand_mult_add, @function
expand_mult_add:
.LFB39:
	.loc 1 4219 0
	pushl	%ebp
.LCFI129:
	movl	%esp, %ebp
.LCFI130:
	pushl	%edi
.LCFI131:
	pushl	%esi
.LCFI132:
	pushl	%ebx
.LCFI133:
	subl	$44, %esp
.LCFI134:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4220 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -24(%ebp)
	.loc 1 4223 0
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L1765
	movl	lang_hooks@GOT(%ebx), %eax
	movl	260(%eax), %ecx
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	%eax, -32(%ebp)
	jmp	.L1767
.L1765:
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1767:
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4228 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%eax, %edi
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%edi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4230 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 4231 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE39:
	.size	expand_mult_add, .-expand_mult_add
.globl expand_and
	.type	expand_and, @function
expand_and:
.LFB40:
	.loc 1 4242 0
	pushl	%ebp
.LCFI135:
	movl	%esp, %ebp
.LCFI136:
	pushl	%ebx
.LCFI137:
	subl	$52, %esp
.LCFI138:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4243 0
	movl	$0, -8(%ebp)
	.loc 1 4245 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L1770
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L1770
	.loc 1 4246 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$93, (%esp)
	call	simplify_binary_operation@PLT
	movl	%eax, -8(%ebp)
.L1770:
	.loc 1 4247 0
	cmpl	$0, -8(%ebp)
	jne	.L1773
	.loc 1 4248 0
	movl	optab_table@GOT(%ebx), %eax
	movl	72(%eax), %edx
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -8(%ebp)
.L1773:
	.loc 1 4250 0
	cmpl	$0, 20(%ebp)
	jne	.L1775
	.loc 1 4251 0
	movl	-8(%ebp), %eax
	movl	%eax, 20(%ebp)
	jmp	.L1777
.L1775:
	.loc 1 4252 0
	movl	-8(%ebp), %eax
	cmpl	20(%ebp), %eax
	je	.L1777
	.loc 1 4253 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L1777:
	.loc 1 4254 0
	movl	20(%ebp), %eax
	.loc 1 4255 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	expand_and, .-expand_and
	.section	.rodata
	.type	__FUNCTION__.17730, @object
	.size	__FUNCTION__.17730, 16
__FUNCTION__.17730:
	.string	"emit_store_flag"
	.text
.globl emit_store_flag
	.type	emit_store_flag, @function
emit_store_flag:
.LFB41:
	.loc 1 4280 0
	pushl	%ebp
.LCFI139:
	movl	%esp, %ebp
.LCFI140:
	pushl	%edi
.LCFI141:
	pushl	%esi
.LCFI142:
	pushl	%ebx
.LCFI143:
	subl	$140, %esp
.LCFI144:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4284 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	.loc 1 4286 0
	call	get_last_insn@PLT
	movl	%eax, -44(%ebp)
	.loc 1 4290 0
	movl	$0, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 16(%ebp)
	.loc 1 4291 0
	movl	$0, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 20(%ebp)
	.loc 1 4293 0
	cmpl	$0, 28(%ebp)
	je	.L1781
	.loc 1 4294 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	unsigned_condition@PLT
	movl	%eax, 12(%ebp)
.L1781:
	.loc 1 4299 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_commutative_operands_p@PLT
	testl	%eax, %eax
	je	.L1783
	.loc 1 4301 0
	movl	16(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 4302 0
	movl	20(%ebp), %eax
	movl	%eax, 16(%ebp)
	.loc 1 4303 0
	movl	-48(%ebp), %eax
	movl	%eax, 20(%ebp)
	.loc 1 4304 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_condition@PLT
	movl	%eax, 12(%ebp)
.L1783:
	.loc 1 4307 0
	cmpl	$0, 24(%ebp)
	jne	.L1785
	.loc 1 4308 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 24(%ebp)
.L1785:
	.loc 1 4314 0
	movl	12(%ebp), %eax
	subl	$114, %eax
	movl	%eax, -124(%ebp)
	cmpl	$7, -124(%ebp)
	ja	.L1787
	movl	-124(%ebp), %eax
	sall	$2, %eax
	movl	.L1794@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1794:
	.long	.L1788@GOTOFF
	.long	.L1789@GOTOFF
	.long	.L1790@GOTOFF
	.long	.L1791@GOTOFF
	.long	.L1792@GOTOFF
	.long	.L1787@GOTOFF
	.long	.L1787@GOTOFF
	.long	.L1793@GOTOFF
	.text
.L1791:
	.loc 1 4317 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	.L1787
	.loc 1 4318 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 20(%ebp)
	movl	$116, 12(%ebp)
	.loc 1 4319 0
	jmp	.L1787
.L1790:
	.loc 1 4321 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	.L1787
	.loc 1 4322 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 20(%ebp)
	movl	$117, 12(%ebp)
	.loc 1 4323 0
	jmp	.L1787
.L1788:
	.loc 1 4325 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	.L1787
	.loc 1 4326 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 20(%ebp)
	movl	$115, 12(%ebp)
	.loc 1 4327 0
	jmp	.L1787
.L1789:
	.loc 1 4329 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	.L1787
	.loc 1 4330 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 20(%ebp)
	movl	$114, 12(%ebp)
	.loc 1 4331 0
	jmp	.L1787
.L1792:
	.loc 1 4333 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	.L1787
	.loc 1 4334 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 20(%ebp)
	movl	$112, 12(%ebp)
	.loc 1 4335 0
	jmp	.L1787
.L1793:
	.loc 1 4337 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	.L1787
	.loc 1 4338 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 20(%ebp)
	movl	$113, 12(%ebp)
.L1787:
	.loc 1 4346 0
	movl	24(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -120(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1806
	movl	$128, -116(%ebp)
	jmp	.L1808
.L1806:
	movl	$64, -116(%ebp)
.L1808:
	movl	-116(%ebp), %eax
	cmpl	%eax, -120(%ebp)
	jne	.L1809
	movl	24(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L1809
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	.L1809
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1813
	movl	16(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1809
.L1813:
	.loc 1 4351 0
	cmpl	$113, 12(%ebp)
	je	.L1815
	cmpl	$112, 12(%ebp)
	jne	.L1817
.L1815:
.LBB79:
	.loc 1 4356 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$0, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_gen_subreg@PLT
	movl	%eax, -32(%ebp)
	.loc 1 4357 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1818
	movl	$8, -112(%ebp)
	jmp	.L1820
.L1818:
	movl	$4, -112(%ebp)
.L1820:
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-112(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_gen_subreg@PLT
	movl	%eax, -28(%ebp)
	.loc 1 4358 0
	movl	optab_table@GOT(%ebx), %eax
	movl	76(%eax), %ecx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$0, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	expand_binop@PLT
	movl	%eax, -24(%ebp)
	.loc 1 4360 0
	cmpl	$0, -24(%ebp)
	je	.L1809
	.loc 1 4361 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_store_flag@PLT
	movl	%eax, -108(%ebp)
	jmp	.L1823
.L1817:
.LBE79:
	.loc 1 4364 0
	cmpl	$117, 12(%ebp)
	je	.L1824
	cmpl	$114, 12(%ebp)
	jne	.L1809
.L1824:
.LBB80:
	.loc 1 4369 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	subreg_highpart_offset@PLT
	movl	%eax, %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	simplify_gen_subreg@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4371 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_store_flag@PLT
	movl	%eax, -108(%ebp)
	jmp	.L1823
.L1809:
.LBE80:
	.loc 1 4377 0
	movl	12(%ebp), %edx
	movl	setcc_gen_code@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -60(%ebp)
	.loc 1 4381 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	.L1826
	cmpl	$117, 12(%ebp)
	je	.L1828
	cmpl	$114, 12(%ebp)
	jne	.L1826
.L1828:
	movl	24(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L1826
	.loc 1 4388 0
	movl	8(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 4393 0
	movl	-52(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	24(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L1831
	.loc 1 4395 0
	movl	$0, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 16(%ebp)
	.loc 1 4396 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_modes@PLT
	movl	%eax, 16(%ebp)
	.loc 1 4397 0
	movl	-52(%ebp), %eax
	movl	%eax, 24(%ebp)
.L1831:
	.loc 1 4400 0
	movl	-52(%ebp), %eax
	cmpl	24(%ebp), %eax
	je	.L1833
	.loc 1 4401 0
	movl	$0, -64(%ebp)
.L1833:
	.loc 1 4403 0
	cmpl	$114, 12(%ebp)
	jne	.L1835
	.loc 1 4404 0
	movl	optab_table@GOT(%ebx), %eax
	movl	144(%eax), %edx
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, 16(%ebp)
.L1835:
	.loc 1 4412 0
	cmpl	$-1, 32(%ebp)
	setne	%al
	movzbl	%al, %esi
	movl	24(%ebp), %edx
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
	movl	%eax, %edx
	movl	%esi, 20(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, 16(%ebp)
	.loc 1 4416 0
	movl	24(%ebp), %eax
	cmpl	-52(%ebp), %eax
	je	.L1837
	.loc 1 4417 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_modes@PLT
	movl	%eax, 16(%ebp)
.L1837:
	.loc 1 4419 0
	movl	16(%ebp), %eax
	movl	%eax, -108(%ebp)
	jmp	.L1823
.L1826:
	.loc 1 4422 0
	cmpl	$529, -60(%ebp)
	je	.L1839
.LBB81:
	.loc 1 4433 0
	call	emit_queue@PLT
	.loc 1 4434 0
	call	do_pending_stack_adjust@PLT
	.loc 1 4435 0
	call	get_last_insn@PLT
	movl	%eax, -44(%ebp)
	.loc 1 4437 0
	movl	$0, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_from_rtx@PLT
	movl	%eax, -36(%ebp)
	.loc 1 4439 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1841
	.loc 1 4440 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L1843
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -104(%ebp)
	jmp	.L1845
.L1843:
	cmpl	$1, 32(%ebp)
	jne	.L1846
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1848
.L1846:
	cmpl	$-1, 32(%ebp)
	jne	.L1849
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L1851
.L1849:
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
.L1851:
	movl	-96(%ebp), %eax
	movl	%eax, -100(%ebp)
.L1848:
	movl	-100(%ebp), %eax
	movl	%eax, -104(%ebp)
.L1845:
	movl	-104(%ebp), %eax
	movl	%eax, -108(%ebp)
	jmp	.L1823
.L1841:
	.loc 1 4451 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 12(%ebp)
	.loc 1 4454 0
	movl	-60(%ebp), %edx
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
	movl	%eax, -56(%ebp)
	.loc 1 4455 0
	movl	8(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 4456 0
	movl	-60(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4457 0
	call	preserve_subexpressions_p@PLT
	testl	%eax, %eax
	jne	.L1852
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	movl	-16(%ebp), %eax
	call	*%eax
	testl	%eax, %eax
	jne	.L1854
.L1852:
	.loc 1 4459 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -64(%ebp)
.L1854:
	.loc 1 4461 0
	movl	-60(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -40(%ebp)
	.loc 1 4462 0
	cmpl	$0, -40(%ebp)
	je	.L1839
	.loc 1 4464 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 4474 0
	movl	-52(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-56(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L1856
	.loc 1 4476 0
	movl	-56(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$64, %ax
	ja	.L1858
	movl	-56(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	leal	-1(%eax), %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	sarl	%cl, %edi
	testb	$32, %cl
	je	.L1949
	movl	%edi, %esi
	sarl	$31, %edi
.L1949:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1858
	movl	$1, -92(%ebp)
	jmp	.L1861
.L1858:
	movl	$0, -92(%ebp)
.L1861:
	movl	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_move@PLT
	.loc 1 4482 0
	movl	8(%ebp), %eax
	movl	%eax, 16(%ebp)
	.loc 1 4483 0
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1862
.L1856:
	.loc 1 4486 0
	movl	-64(%ebp), %eax
	movl	%eax, 16(%ebp)
.L1862:
	.loc 1 4491 0
	call	preserve_subexpressions_p@PLT
	testl	%eax, %eax
	je	.L1863
	.loc 1 4492 0
	movl	$0, -64(%ebp)
.L1863:
	.loc 1 4496 0
	cmpl	$0, 32(%ebp)
	je	.L1865
	cmpl	$1, 32(%ebp)
	je	.L1865
	.loc 1 4500 0
	cmpl	$-1, 32(%ebp)
	jne	.L1868
	.loc 1 4501 0
	movl	optab_table@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	$0, 16(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, 16(%ebp)
	jmp	.L1865
.L1868:
	.loc 1 4506 0
	movl	-56(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$64, %ax
	ja	.L1870
	movl	-56(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	leal	-1(%eax), %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1948
	movl	%esi, %edi
	xorl	%esi, %esi
.L1948:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L1870
	.loc 1 4510 0
	cmpl	$1, 32(%ebp)
	sete	%al
	movzbl	%al, %esi
	movl	-56(%ebp), %edx
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
	movl	%eax, %edx
	movl	%esi, 20(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, 16(%ebp)
	.loc 1 4506 0
	jmp	.L1865
.L1870:
	.loc 1 4515 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_and@PLT
	movl	%eax, 16(%ebp)
	.loc 1 4516 0
	cmpl	$-1, 32(%ebp)
	jne	.L1865
	.loc 1 4517 0
	movl	optab_table@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	$0, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, 16(%ebp)
.L1865:
	.loc 1 4524 0
	movl	-52(%ebp), %eax
	cmpl	-56(%ebp), %eax
	je	.L1874
	.loc 1 4526 0
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_move@PLT
	.loc 1 4527 0
	movl	8(%ebp), %eax
	movl	%eax, -108(%ebp)
	jmp	.L1823
.L1874:
	.loc 1 4530 0
	movl	16(%ebp), %eax
	movl	%eax, -108(%ebp)
	jmp	.L1823
.L1839:
.LBE81:
	.loc 1 4534 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
	.loc 1 4539 0
	movl	flag_expensive_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1876
	movl	-52(%ebp), %eax
	cmpl	24(%ebp), %eax
	jne	.L1876
	movl	8(%ebp), %eax
	movl	%eax, -88(%ebp)
	jmp	.L1879
.L1876:
	movl	$0, -88(%ebp)
.L1879:
	movl	-88(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 4549 0
	movl	24(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L1880
	cmpl	$113, 12(%ebp)
	je	.L1882
	cmpl	$112, 12(%ebp)
	jne	.L1880
.L1882:
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	20(%ebp), %eax
	je	.L1880
	.loc 1 4553 0
	movl	optab_table@GOT(%ebx), %eax
	movl	80(%eax), %edx
	movl	$2, 24(%esp)
	movl	$1, 20(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -48(%ebp)
	.loc 1 4556 0
	cmpl	$0, -48(%ebp)
	jne	.L1885
	.loc 1 4557 0
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	$2, 24(%esp)
	movl	$1, 20(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -48(%ebp)
.L1885:
	.loc 1 4559 0
	cmpl	$0, -48(%ebp)
	je	.L1887
	.loc 1 4560 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_store_flag@PLT
	movl	%eax, -48(%ebp)
.L1887:
	.loc 1 4562 0
	cmpl	$0, -48(%ebp)
	jne	.L1889
	.loc 1 4563 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
.L1889:
	.loc 1 4564 0
	movl	-48(%ebp), %eax
	movl	%eax, -108(%ebp)
	jmp	.L1823
.L1880:
	.loc 1 4572 0
	movl	24(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L1891
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	.L1891
	cmpl	$113, 12(%ebp)
	je	.L1894
	cmpl	$112, 12(%ebp)
	je	.L1894
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L1891
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1898
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1891
.L1898:
	cmpl	$116, 12(%ebp)
	je	.L1894
	cmpl	$115, 12(%ebp)
	je	.L1894
.L1891:
	.loc 1 4576 0
	movl	$0, -108(%ebp)
	jmp	.L1823
.L1894:
	.loc 1 4581 0
	cmpl	$0, 32(%ebp)
	jne	.L1901
	.loc 1 4584 0
	movl	$1, 32(%ebp)
.L1901:
	.loc 1 4597 0
	movl	$0, -48(%ebp)
	.loc 1 4602 0
	cmpl	$116, 12(%ebp)
	jne	.L1903
	.loc 1 4605 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1905
	.loc 1 4606 0
	movl	$0, -64(%ebp)
.L1905:
	.loc 1 4608 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %ecx
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -48(%ebp)
	.loc 1 4610 0
	cmpl	$0, -48(%ebp)
	je	.L1903
	.loc 1 4611 0
	movl	optab_table@GOT(%ebx), %eax
	movl	76(%eax), %edx
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -48(%ebp)
.L1903:
	.loc 1 4618 0
	cmpl	$115, 12(%ebp)
	jne	.L1908
	.loc 1 4620 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1910
	.loc 1 4621 0
	movl	$0, -64(%ebp)
.L1910:
	.loc 1 4623 0
	movl	24(%ebp), %edx
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
	movl	%eax, %edx
	movl	$0, 20(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -48(%ebp)
	.loc 1 4626 0
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -48(%ebp)
.L1908:
	.loc 1 4630 0
	cmpl	$113, 12(%ebp)
	je	.L1912
	cmpl	$112, 12(%ebp)
	jne	.L1914
.L1912:
	.loc 1 4647 0
	movl	optab_table@GOT(%ebx), %eax
	movl	136(%eax), %edx
	movl	24(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L1915
	.loc 1 4648 0
	movl	optab_table@GOT(%ebx), %eax
	movl	136(%eax), %edx
	movl	$1, 16(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -48(%ebp)
	jmp	.L1917
.L1915:
	.loc 1 4649 0
	movl	optab_table@GOT(%ebx), %eax
	movl	148(%eax), %edx
	movl	24(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	$529, %eax
	je	.L1918
	.loc 1 4650 0
	movl	optab_table@GOT(%ebx), %eax
	movl	148(%eax), %edx
	movl	$1, 16(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -48(%ebp)
	jmp	.L1917
.L1918:
	.loc 1 4651 0
	movl	24(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -84(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1920
	movl	$8, -80(%ebp)
	jmp	.L1922
.L1920:
	movl	$4, -80(%ebp)
.L1922:
	movl	-80(%ebp), %eax
	cmpl	%eax, -84(%ebp)
	jge	.L1917
	.loc 1 4653 0
	movl	$0, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 16(%ebp)
	.loc 1 4654 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$1, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert_modes@PLT
	movl	%eax, -48(%ebp)
	.loc 1 4655 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 24(%ebp)
.L1917:
	.loc 1 4658 0
	cmpl	$0, -48(%ebp)
	je	.L1924
	.loc 1 4660 0
	cmpl	$113, 12(%ebp)
	jne	.L1926
	.loc 1 4661 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	optab_table@GOT(%ebx), %eax
	movl	8(%eax), %ecx
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -48(%ebp)
	jmp	.L1924
.L1926:
	.loc 1 4664 0
	movl	optab_table@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	$0, 16(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -48(%ebp)
.L1924:
	.loc 1 4672 0
	cmpl	$0, -48(%ebp)
	jne	.L1914
	cmpl	$112, 12(%ebp)
	je	.L1929
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L1914
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1929
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1914
.L1929:
	.loc 1 4674 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1933
	.loc 1 4675 0
	movl	$0, -64(%ebp)
.L1933:
	.loc 1 4677 0
	movl	optab_table@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	$0, 16(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -48(%ebp)
	.loc 1 4678 0
	movl	optab_table@GOT(%ebx), %eax
	movl	76(%eax), %edx
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_binop@PLT
	movl	%eax, -48(%ebp)
	.loc 1 4681 0
	cmpl	$0, -48(%ebp)
	je	.L1914
	cmpl	$113, 12(%ebp)
	jne	.L1914
	.loc 1 4682 0
	movl	optab_table@GOT(%ebx), %eax
	movl	144(%eax), %edx
	movl	$0, 16(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_unop@PLT
	movl	%eax, -48(%ebp)
.L1914:
	.loc 1 4686 0
	cmpl	$0, -48(%ebp)
	je	.L1937
	cmpl	$0, 32(%ebp)
	je	.L1937
	.loc 1 4687 0
	cmpl	$1, 32(%ebp)
	sete	%al
	movzbl	%al, %esi
	movl	24(%ebp), %edx
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
	movl	%eax, %edx
	movl	%esi, 20(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	expand_shift@PLT
	movl	%eax, -48(%ebp)
.L1937:
	.loc 1 4691 0
	cmpl	$0, -48(%ebp)
	je	.L1940
	.loc 1 4693 0
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-52(%ebp), %eax
	je	.L1942
	.loc 1 4695 0
	movl	$0, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_move@PLT
	.loc 1 4696 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1946
.L1942:
	.loc 1 4698 0
	cmpl	$0, -64(%ebp)
	jne	.L1946
	.loc 1 4700 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 4701 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1946
.L1940:
	.loc 1 4705 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
.L1946:
	.loc 1 4707 0
	movl	-48(%ebp), %eax
	movl	%eax, -108(%ebp)
.L1823:
	movl	-108(%ebp), %eax
	.loc 1 4708 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE41:
	.size	emit_store_flag, .-emit_store_flag
.globl emit_store_flag_force
	.type	emit_store_flag_force, @function
emit_store_flag_force:
.LFB42:
	.loc 1 4720 0
	pushl	%ebp
.LCFI145:
	movl	%esp, %ebp
.LCFI146:
	pushl	%ebx
.LCFI147:
	subl	$52, %esp
.LCFI148:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4724 0
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
	call	emit_store_flag@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4725 0
	cmpl	$0, -12(%ebp)
	je	.L1951
	.loc 1 4726 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1953
.L1951:
	.loc 1 4728 0
	cmpl	$0, 32(%ebp)
	jne	.L1954
	.loc 1 4729 0
	movl	$1, 32(%ebp)
.L1954:
	.loc 1 4733 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1956
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L1956
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L1959
.L1956:
	.loc 1 4735 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 8(%ebp)
.L1959:
	.loc 1 4737 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 4738 0
	call	gen_label_rtx@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4739 0
	movl	-8(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	do_compare_rtx_and_jump@PLT
	.loc 1 4742 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 4743 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 4745 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1953:
	movl	-24(%ebp), %eax
	.loc 1 4746 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	emit_store_flag_force, .-emit_store_flag_force
	.section	.rodata
	.type	__FUNCTION__.18178, @object
	.size	__FUNCTION__.18178, 16
__FUNCTION__.18178:
	.string	"do_cmp_and_jump"
	.text
	.type	do_cmp_and_jump, @function
do_cmp_and_jump:
.LFB43:
	.loc 1 4762 0
	pushl	%ebp
.LCFI149:
	movl	%esp, %ebp
.LCFI150:
	pushl	%ebx
.LCFI151:
	subl	$52, %esp
.LCFI152:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4766 0
	movl	20(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L1962
	movl	$0, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	can_compare_p@PLT
	testl	%eax, %eax
	jne	.L1962
.LBB82:
	.loc 1 4769 0
	call	gen_label_rtx@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4771 0
	movl	16(%ebp), %eax
	subl	$112, %eax
	movl	%eax, -24(%ebp)
	cmpl	$9, -24(%ebp)
	ja	.L1965
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	.L1973@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1973:
	.long	.L1966@GOTOFF
	.long	.L1967@GOTOFF
	.long	.L1968@GOTOFF
	.long	.L1969@GOTOFF
	.long	.L1965@GOTOFF
	.long	.L1970@GOTOFF
	.long	.L1965@GOTOFF
	.long	.L1965@GOTOFF
	.long	.L1971@GOTOFF
	.long	.L1972@GOTOFF
	.text
.L1972:
	.loc 1 4774 0
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	do_jump_by_parts_greater_rtx@PLT
	.loc 1 4775 0
	jmp	.L1974
.L1971:
	.loc 1 4778 0
	movl	-8(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	do_jump_by_parts_greater_rtx@PLT
	.loc 1 4779 0
	jmp	.L1974
.L1970:
	.loc 1 4782 0
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	do_jump_by_parts_greater_rtx@PLT
	.loc 1 4783 0
	jmp	.L1974
.L1969:
	.loc 1 4786 0
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	do_jump_by_parts_greater_rtx@PLT
	.loc 1 4787 0
	jmp	.L1974
.L1968:
	.loc 1 4790 0
	movl	-8(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	do_jump_by_parts_greater_rtx@PLT
	.loc 1 4791 0
	jmp	.L1974
.L1967:
	.loc 1 4796 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1975
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	20(%ebp), %eax
	je	.L1977
.L1975:
	.loc 1 4797 0
	leal	__FUNCTION__.18178@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4797, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1977:
	.loc 1 4798 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_jump_by_parts_equality_rtx@PLT
	.loc 1 4799 0
	jmp	.L1974
.L1966:
	.loc 1 4802 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1978
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	20(%ebp), %eax
	je	.L1980
.L1978:
	.loc 1 4803 0
	leal	__FUNCTION__.18178@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4803, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1980:
	.loc 1 4804 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_jump_by_parts_equality_rtx@PLT
	.loc 1 4805 0
	jmp	.L1974
.L1965:
	.loc 1 4808 0
	leal	__FUNCTION__.18178@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4808, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1974:
	.loc 1 4811 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 4766 0
	jmp	.L1982
.L1962:
.LBE82:
	.loc 1 4814 0
	movl	24(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_cmp_and_jump_insns@PLT
.L1982:
	.loc 1 4815 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	do_cmp_and_jump, .-do_cmp_and_jump
	.local	sdiv_pow2_cheap
	.comm	sdiv_pow2_cheap,4,4
	.local	smod_pow2_cheap
	.comm	smod_pow2_cheap,4,4
	.local	add_cost
	.comm	add_cost,4,4
	.local	negate_cost
	.comm	negate_cost,4,4
	.local	zero_cost
	.comm	zero_cost,4,4
	.local	shift_cost
	.comm	shift_cost,256,32
	.local	shiftadd_cost
	.comm	shiftadd_cost,256,32
	.local	shiftsub_cost
	.comm	shiftsub_cost,256,32
	.local	mul_cost
	.comm	mul_cost,216,32
	.local	div_cost
	.comm	div_cost,216,32
	.local	mul_widen_cost
	.comm	mul_widen_cost,216,32
	.local	mul_highpart_cost
	.comm	mul_highpart_cost,216,32
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
	.long	.LCFI5-.LCFI1
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
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
	.long	.LCFI6-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI9-.LCFI7
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
	.long	.LCFI10-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI13-.LCFI11
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
	.long	.LCFI14-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI19-.LCFI15
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
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
	.long	.LCFI20-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI25-.LCFI21
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI26-.LFB20
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
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI32-.LFB21
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
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI38-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI43-.LCFI39
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
	.long	.LCFI44-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI49-.LCFI45
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI50-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI55-.LCFI51
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
	.long	.LCFI56-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI57-.LCFI56
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI61-.LCFI57
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
	.long	.LCFI62-.LFB26
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
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI66-.LFB27
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
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI70-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI75-.LCFI71
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI76-.LFB29
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
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI82-.LFB30
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI86-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI87-.LCFI86
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI89-.LCFI87
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
	.long	.LCFI90-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI91-.LCFI90
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI95-.LCFI91
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
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
	.long	.LCFI96-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI97-.LCFI96
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI100-.LCFI97
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
	.long	.LCFI101-.LFB34
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
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI105-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI106-.LCFI105
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI110-.LCFI106
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
	.long	.LCFI111-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI112-.LCFI111
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI116-.LCFI112
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI117-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI118-.LCFI117
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI122-.LCFI118
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
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
	.long	.LCFI123-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI124-.LCFI123
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI128-.LCFI124
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
	.long	.LCFI129-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI130-.LCFI129
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI134-.LCFI130
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
	.long	.LCFI135-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI136-.LCFI135
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI138-.LCFI136
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
	.long	.LCFI139-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI140-.LCFI139
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI144-.LCFI140
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
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
	.long	.LCFI145-.LFB42
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
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI149-.LFB43
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
.LEFDE56:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/rtl.h"
	.file 4 "../../../kg++fe/gnu/machmode.h"
	.file 5 "../../../kg++fe/gnu/tree.h"
	.file 6 "../../../kg++fe/gnu/real.h"
	.file 7 "../../../kg++fe/gnu/hashtable.h"
	.file 8 "../../../kg++fe/gnu/location.h"
	.file 9 "../../../kg++fe/omp_types.h"
	.file 10 "../../../kg++fe/gnu/expr.h"
	.file 11 "../../../kg++fe/gnu/recog.h"
	.file 12 "../../../kg++fe/gnu/optabs.h"
	.file 13 "../../../kg++fe/gnu/MIPS/insn-codes.h"
	.file 14 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 15 "../../../kg++fe/gnu/flags.h"
	.file 16 "../../../kg++fe/gnu/langhooks.h"
	.file 17 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 18 "/usr/include/stdio.h"
	.file 19 "/usr/include/libio.h"
	.file 20 "/usr/include/bits/types.h"
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
	.long	.LCFI10-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI10-.Ltext0
	.long	.LCFI11-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI11-.Ltext0
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
	.long	.LCFI14-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI14-.Ltext0
	.long	.LCFI15-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI15-.Ltext0
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
	.long	.LCFI44-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI44-.Ltext0
	.long	.LCFI45-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI45-.Ltext0
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
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
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
	.long	.LCFI111-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI111-.Ltext0
	.long	.LCFI112-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI112-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xb256
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/expmed.c"
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
	.long	0xb93
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
	.long	0x89b
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
	.long	0x467
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
	.long	0x467
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
	.long	0x467
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
	.long	0x467
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
	.long	0x467
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
	.long	0x467
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
	.long	0x467
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
	.long	0x467
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
	.long	0x15ec
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
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x3
	.byte	0xf3
	.long	0x15fc
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
	.long	0x2cd
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x9
	.long	.LASF2
	.byte	0x5
	.value	0x887
	.long	0x3cc8
	.uleb128 0xa
	.string	"int_cst"
	.byte	0x5
	.value	0x888
	.long	0x3fe5
	.uleb128 0xa
	.string	"real_cst"
	.byte	0x5
	.value	0x889
	.long	0x402d
	.uleb128 0xa
	.string	"vector"
	.byte	0x5
	.value	0x88a
	.long	0x419c
	.uleb128 0xa
	.string	"string"
	.byte	0x5
	.value	0x88b
	.long	0x40da
	.uleb128 0xa
	.string	"complex"
	.byte	0x5
	.value	0x88c
	.long	0x4147
	.uleb128 0xa
	.string	"identifier"
	.byte	0x5
	.value	0x88d
	.long	0x4222
	.uleb128 0xa
	.string	"decl"
	.byte	0x5
	.value	0x88e
	.long	0x48db
	.uleb128 0x9
	.long	.LASF3
	.byte	0x5
	.value	0x88f
	.long	0x4485
	.uleb128 0xa
	.string	"list"
	.byte	0x5
	.value	0x890
	.long	0x4259
	.uleb128 0xa
	.string	"vec"
	.byte	0x5
	.value	0x891
	.long	0x429e
	.uleb128 0xa
	.string	"exp"
	.byte	0x5
	.value	0x892
	.long	0x42ef
	.uleb128 0xa
	.string	"block"
	.byte	0x5
	.value	0x893
	.long	0x433b
	.uleb128 0xa
	.string	"omp"
	.byte	0x5
	.value	0x895
	.long	0x52b1
	.byte	0x0
	.uleb128 0xb
	.long	0x44d
	.string	"processor_type"
	.byte	0x4
	.byte	0xe
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
	.long	0x453
	.uleb128 0xd
	.long	0x458
	.uleb128 0xe
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xe
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xf
	.long	.LASF4
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	.LASF4
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"size_t"
	.byte	0x11
	.byte	0xd6
	.long	0x467
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
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x14
	.byte	0x3b
	.long	0x4db
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x14
	.byte	0x90
	.long	0x525
	.uleb128 0xe
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x14
	.byte	0x91
	.long	0x506
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x458
	.uleb128 0x2
	.string	"FILE"
	.byte	0x12
	.byte	0x2e
	.long	0x556
	.uleb128 0x11
	.long	0x7d1
	.long	.LASF5
	.byte	0x94
	.byte	0x12
	.byte	0x2e
	.uleb128 0x12
	.string	"_flags"
	.byte	0x13
	.value	0x10c
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"_IO_read_ptr"
	.byte	0x13
	.value	0x111
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"_IO_read_end"
	.byte	0x13
	.value	0x112
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"_IO_read_base"
	.byte	0x13
	.value	0x113
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"_IO_write_base"
	.byte	0x13
	.value	0x114
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"_IO_write_ptr"
	.byte	0x13
	.value	0x115
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.string	"_IO_write_end"
	.byte	0x13
	.value	0x116
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.string	"_IO_buf_base"
	.byte	0x13
	.value	0x117
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.string	"_IO_buf_end"
	.byte	0x13
	.value	0x118
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.string	"_IO_save_base"
	.byte	0x13
	.value	0x11a
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.string	"_IO_backup_base"
	.byte	0x13
	.value	0x11b
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.string	"_IO_save_end"
	.byte	0x13
	.value	0x11c
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.string	"_markers"
	.byte	0x13
	.value	0x11e
	.long	0x82d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x12
	.string	"_chain"
	.byte	0x13
	.value	0x120
	.long	0x833
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.string	"_fileno"
	.byte	0x13
	.value	0x122
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.string	"_flags2"
	.byte	0x13
	.value	0x126
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.string	"_old_offset"
	.byte	0x13
	.value	0x128
	.long	0x516
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.string	"_cur_column"
	.byte	0x13
	.value	0x12c
	.long	0x494
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.string	"_vtable_offset"
	.byte	0x13
	.value	0x12d
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x12
	.string	"_shortbuf"
	.byte	0x13
	.value	0x12e
	.long	0x839
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x12
	.string	"_lock"
	.byte	0x13
	.value	0x132
	.long	0x849
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.string	"_offset"
	.byte	0x13
	.value	0x13b
	.long	0x531
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.string	"__pad1"
	.byte	0x13
	.value	0x144
	.long	0x542
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.string	"__pad2"
	.byte	0x13
	.value	0x145
	.long	0x542
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x12
	.string	"__pad3"
	.byte	0x13
	.value	0x146
	.long	0x542
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.string	"__pad4"
	.byte	0x13
	.value	0x147
	.long	0x542
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.string	"__pad5"
	.byte	0x13
	.value	0x148
	.long	0x475
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x12
	.string	"_mode"
	.byte	0x13
	.value	0x14a
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x12
	.string	"_unused2"
	.byte	0x13
	.value	0x14c
	.long	0x84f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7d7
	.uleb128 0xd
	.long	0x483
	.uleb128 0x13
	.string	"_IO_lock_t"
	.byte	0x13
	.byte	0xb0
	.uleb128 0x4
	.long	0x82d
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x13
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0x13
	.byte	0xb7
	.long	0x82d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0x13
	.byte	0xb8
	.long	0x833
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0x13
	.byte	0xbc
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ea
	.uleb128 0x3
	.byte	0x4
	.long	0x556
	.uleb128 0x14
	.long	0x849
	.long	0x458
	.uleb128 0x15
	.long	0x46e
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7dc
	.uleb128 0x14
	.long	0x85f
	.long	0x458
	.uleb128 0x15
	.long	0x46e
	.byte	0x27
	.byte	0x0
	.uleb128 0x14
	.long	0x86f
	.long	0x458
	.uleb128 0x15
	.long	0x46e
	.byte	0x13
	.byte	0x0
	.uleb128 0xd
	.long	0x460
	.uleb128 0x3
	.byte	0x4
	.long	0x460
	.uleb128 0x3
	.byte	0x4
	.long	0x880
	.uleb128 0x16
	.uleb128 0x3
	.byte	0x4
	.long	0x887
	.uleb128 0x17
	.long	0x893
	.byte	0x1
	.uleb128 0x18
	.long	0x460
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x893
	.uleb128 0xb
	.long	0xae4
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
	.uleb128 0x1a
	.long	0xb93
	.long	.LASF6
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
	.long	0x1362
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
	.uleb128 0x1b
	.long	0x143c
	.byte	0x4
	.byte	0x3
	.byte	0x47
	.uleb128 0x6
	.string	"min_align"
	.byte	0x3
	.byte	0x49
	.long	0x467
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
	.long	0x467
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
	.long	0x467
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
	.long	0x467
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
	.long	0x467
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
	.long	0x467
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
	.long	0x467
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
	.long	0x467
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
	.long	0x1362
	.uleb128 0x11
	.long	0x14b0
	.long	.LASF7
	.byte	0x18
	.byte	0x3
	.byte	0x62
	.uleb128 0x7
	.string	"alias"
	.byte	0x3
	.byte	0x63
	.long	0x4db
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
	.long	.LASF8
	.byte	0x3
	.byte	0x65
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
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
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.long	.LASF7
	.byte	0x3
	.byte	0x68
	.long	0x1457
	.uleb128 0x8
	.long	0x158d
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x6d
	.uleb128 0x1e
	.string	"rtwint"
	.byte	0x3
	.byte	0x6e
	.long	0x4db
	.uleb128 0x1e
	.string	"rtint"
	.byte	0x3
	.byte	0x6f
	.long	0x460
	.uleb128 0x1e
	.string	"rtuint"
	.byte	0x3
	.byte	0x70
	.long	0x467
	.uleb128 0x1e
	.string	"rtstr"
	.byte	0x3
	.byte	0x71
	.long	0x44d
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
	.long	0x89b
	.uleb128 0x1e
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x75
	.long	0x143c
	.uleb128 0x1e
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x76
	.long	0x15a1
	.uleb128 0x1e
	.string	"rtbit"
	.byte	0x3
	.byte	0x77
	.long	0x15b9
	.uleb128 0x1e
	.string	"rttree"
	.byte	0x3
	.byte	0x78
	.long	0x1e2
	.uleb128 0x1e
	.string	"bb"
	.byte	0x3
	.byte	0x79
	.long	0x15d1
	.uleb128 0x1e
	.string	"rtmem"
	.byte	0x3
	.byte	0x7a
	.long	0x15d7
	.byte	0x0
	.uleb128 0x1f
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x158d
	.uleb128 0x1f
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x15a7
	.uleb128 0x1f
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x15bf
	.uleb128 0x3
	.byte	0x4
	.long	0x14b0
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x7c
	.long	0x14bb
	.uleb128 0x14
	.long	0x15fc
	.long	0x15dd
	.uleb128 0x15
	.long	0x46e
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x160c
	.long	0x9b
	.uleb128 0x15
	.long	0x46e
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x163e
	.string	"location_s"
	.byte	0x8
	.byte	0x8
	.byte	0x1c
	.uleb128 0x7
	.string	"file"
	.byte	0x8
	.byte	0x1e
	.long	0x44d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"line"
	.byte	0x8
	.byte	0x21
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x8
	.byte	0x23
	.long	0x160c
	.uleb128 0xb
	.long	0x1f72
	.string	"tree_code"
	.byte	0x4
	.byte	0x5
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
	.byte	0x5
	.byte	0x2f
	.long	0x467
	.uleb128 0x4
	.long	0x1fbf
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x5
	.byte	0x30
	.uleb128 0x7
	.string	"block"
	.byte	0x5
	.byte	0x30
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF8
	.byte	0x5
	.byte	0x30
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x5
	.byte	0x34
	.long	0x1fc9
	.uleb128 0x1f
	.string	"st"
	.byte	0x1
	.uleb128 0x1a
	.long	0x201e
	.long	.LASF9
	.byte	0x4
	.byte	0x5
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
	.long	0x3cc8
	.string	"built_in_function"
	.byte	0x4
	.byte	0x5
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
	.long	0x3fa9
	.string	"tree_common"
	.byte	0x10
	.byte	0x5
	.byte	0x8c
	.uleb128 0x7
	.string	"chain"
	.byte	0x5
	.byte	0x8d
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x5
	.byte	0x8e
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.long	.LASF0
	.byte	0x5
	.byte	0x90
	.long	0x1650
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"side_effects_flag"
	.byte	0x5
	.byte	0x92
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"constant_flag"
	.byte	0x5
	.byte	0x93
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"addressable_flag"
	.byte	0x5
	.byte	0x94
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"volatile_flag"
	.byte	0x5
	.byte	0x95
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"readonly_flag"
	.byte	0x5
	.byte	0x96
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"unsigned_flag"
	.byte	0x5
	.byte	0x97
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"asm_written_flag"
	.byte	0x5
	.byte	0x98
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"not_emitted_by_gxx"
	.byte	0x5
	.byte	0x9a
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"used_flag"
	.byte	0x5
	.byte	0x9f
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"nothrow_flag"
	.byte	0x5
	.byte	0xa0
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"static_flag"
	.byte	0x5
	.byte	0xa1
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"public_flag"
	.byte	0x5
	.byte	0xa2
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"private_flag"
	.byte	0x5
	.byte	0xa3
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"protected_flag"
	.byte	0x5
	.byte	0xa4
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bounded_flag"
	.byte	0x5
	.byte	0xa5
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"deprecated_flag"
	.byte	0x5
	.byte	0xa6
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x5
	.byte	0xa8
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF11
	.byte	0x5
	.byte	0xa9
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF12
	.byte	0x5
	.byte	0xaa
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF13
	.byte	0x5
	.byte	0xab
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF14
	.byte	0x5
	.byte	0xac
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF15
	.byte	0x5
	.byte	0xad
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF16
	.byte	0x5
	.byte	0xae
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF17
	.byte	0x5
	.byte	0xb0
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sbuf"
	.byte	0x5
	.byte	0xb5
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"sdram"
	.byte	0x5
	.byte	0xb6
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v1buf"
	.byte	0x5
	.byte	0xb7
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v2buf"
	.byte	0x5
	.byte	0xb8
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v4buf"
	.byte	0x5
	.byte	0xb9
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x20
	.long	0x3fe5
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x5
	.value	0x30a
	.uleb128 0x12
	.string	"low"
	.byte	0x5
	.value	0x30b
	.long	0x4ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"high"
	.byte	0x5
	.value	0x30c
	.long	0x4db
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x20
	.long	0x402d
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x5
	.value	0x303
	.uleb128 0x21
	.long	.LASF2
	.byte	0x5
	.value	0x304
	.long	0x3cc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"rtl"
	.byte	0x5
	.value	0x305
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"int_cst"
	.byte	0x5
	.value	0x30d
	.long	0x3fa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x20
	.long	0x407b
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x5
	.value	0x31f
	.uleb128 0x21
	.long	.LASF2
	.byte	0x5
	.value	0x320
	.long	0x3cc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"rtl"
	.byte	0x5
	.value	0x321
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"real_cst_ptr"
	.byte	0x5
	.value	0x322
	.long	0x40d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x20
	.long	0x40d4
	.string	"real_value"
	.byte	0x18
	.byte	0x5
	.value	0x319
	.uleb128 0x6
	.string	"class"
	.byte	0x6
	.byte	0x35
	.long	0x7697
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sign"
	.byte	0x6
	.byte	0x37
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"exp"
	.byte	0x6
	.byte	0x38
	.long	0x460
	.byte	0x4
	.byte	0x1d
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"sig"
	.byte	0x6
	.byte	0x39
	.long	0x76dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x407b
	.uleb128 0x20
	.long	0x4141
	.string	"tree_string"
	.byte	0x20
	.byte	0x5
	.value	0x333
	.uleb128 0x21
	.long	.LASF2
	.byte	0x5
	.value	0x334
	.long	0x3cc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"rtl"
	.byte	0x5
	.value	0x335
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"length"
	.byte	0x5
	.value	0x336
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.string	"pointer"
	.byte	0x5
	.value	0x337
	.long	0x44d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.string	"st"
	.byte	0x5
	.value	0x339
	.long	0x4141
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1fbf
	.uleb128 0x20
	.long	0x419c
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x5
	.value	0x342
	.uleb128 0x21
	.long	.LASF2
	.byte	0x5
	.value	0x343
	.long	0x3cc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"rtl"
	.byte	0x5
	.value	0x344
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"real"
	.byte	0x5
	.value	0x345
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.string	"imag"
	.byte	0x5
	.value	0x346
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x20
	.long	0x41e4
	.string	"tree_vector"
	.byte	0x18
	.byte	0x5
	.value	0x355
	.uleb128 0x21
	.long	.LASF2
	.byte	0x5
	.value	0x356
	.long	0x3cc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"rtl"
	.byte	0x5
	.value	0x357
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"elements"
	.byte	0x5
	.value	0x358
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x11
	.long	0x4222
	.long	.LASF18
	.byte	0xc
	.byte	0x7
	.byte	0x19
	.uleb128 0x7
	.string	"str"
	.byte	0x7
	.byte	0x1c
	.long	0x7d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"len"
	.byte	0x7
	.byte	0x1d
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"hash_value"
	.byte	0x7
	.byte	0x1e
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x20
	.long	0x4259
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x5
	.value	0x376
	.uleb128 0x21
	.long	.LASF2
	.byte	0x5
	.value	0x377
	.long	0x3cc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"id"
	.byte	0x5
	.value	0x378
	.long	0x41e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x20
	.long	0x429e
	.string	"tree_list"
	.byte	0x18
	.byte	0x5
	.value	0x380
	.uleb128 0x21
	.long	.LASF2
	.byte	0x5
	.value	0x381
	.long	0x3cc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"purpose"
	.byte	0x5
	.value	0x382
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x21
	.long	.LASF19
	.byte	0x5
	.value	0x383
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x20
	.long	0x42df
	.string	"tree_vec"
	.byte	0x18
	.byte	0x5
	.value	0x38e
	.uleb128 0x21
	.long	.LASF2
	.byte	0x5
	.value	0x38f
	.long	0x3cc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"length"
	.byte	0x5
	.value	0x390
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"a"
	.byte	0x5
	.value	0x391
	.long	0x42df
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x14
	.long	0x42ef
	.long	0x1e2
	.uleb128 0x15
	.long	0x46e
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x433b
	.string	"tree_exp"
	.byte	0x18
	.byte	0x5
	.value	0x3d4
	.uleb128 0x21
	.long	.LASF2
	.byte	0x5
	.value	0x3d5
	.long	0x3cc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"complexity"
	.byte	0x5
	.value	0x3d6
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"operands"
	.byte	0x5
	.value	0x3d9
	.long	0x42df
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x20
	.long	0x442b
	.string	"tree_block"
	.byte	0x2c
	.byte	0x5
	.value	0x40a
	.uleb128 0x21
	.long	.LASF2
	.byte	0x5
	.value	0x40b
	.long	0x3cc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x22
	.string	"handler_block_flag"
	.byte	0x5
	.value	0x40d
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.long	.LASF20
	.byte	0x5
	.value	0x40e
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x22
	.string	"block_num"
	.byte	0x5
	.value	0x40f
	.long	0x467
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"vars"
	.byte	0x5
	.value	0x411
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.string	"subblocks"
	.byte	0x5
	.value	0x412
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.string	"supercontext"
	.byte	0x5
	.value	0x413
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x21
	.long	.LASF21
	.byte	0x5
	.value	0x414
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.string	"fragment_origin"
	.byte	0x5
	.value	0x415
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.string	"fragment_chain"
	.byte	0x5
	.value	0x416
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x24
	.long	0x4472
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x5
	.value	0x570
	.uleb128 0xa
	.string	"address"
	.byte	0x5
	.value	0x571
	.long	0x460
	.uleb128 0xa
	.string	"pointer"
	.byte	0x5
	.value	0x572
	.long	0x544
	.uleb128 0xa
	.string	"die"
	.byte	0x5
	.value	0x573
	.long	0x447f
	.byte	0x0
	.uleb128 0x1f
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4472
	.uleb128 0x20
	.long	0x47cc
	.string	"tree_type"
	.byte	0x74
	.byte	0x5
	.value	0x551
	.uleb128 0x21
	.long	.LASF2
	.byte	0x5
	.value	0x552
	.long	0x3cc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"values"
	.byte	0x5
	.value	0x553
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"size"
	.byte	0x5
	.value	0x554
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x21
	.long	.LASF22
	.byte	0x5
	.value	0x555
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x21
	.long	.LASF23
	.byte	0x5
	.value	0x556
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.string	"uid"
	.byte	0x5
	.value	0x557
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.long	.LASF24
	.byte	0x5
	.value	0x559
	.long	0x467
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x55a
	.long	0x89b
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"string_flag"
	.byte	0x5
	.value	0x55c
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"no_force_blk_flag"
	.byte	0x5
	.value	0x55d
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"needs_constructing_flag"
	.byte	0x5
	.value	0x55e
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"transparent_union_flag"
	.byte	0x5
	.value	0x55f
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"packed_flag"
	.byte	0x5
	.value	0x560
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"restrict_flag"
	.byte	0x5
	.value	0x561
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF25
	.byte	0x5
	.value	0x562
	.long	0x467
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF10
	.byte	0x5
	.value	0x564
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF11
	.byte	0x5
	.value	0x565
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF12
	.byte	0x5
	.value	0x566
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF13
	.byte	0x5
	.value	0x567
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF14
	.byte	0x5
	.value	0x568
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF15
	.byte	0x5
	.value	0x569
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF16
	.byte	0x5
	.value	0x56a
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF26
	.byte	0x5
	.value	0x56b
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.string	"align"
	.byte	0x5
	.value	0x56d
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.string	"pointer_to"
	.byte	0x5
	.value	0x56e
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.string	"reference_to"
	.byte	0x5
	.value	0x56f
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x12
	.string	"symtab"
	.byte	0x5
	.value	0x574
	.long	0x442b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.string	"name"
	.byte	0x5
	.value	0x576
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.string	"minval"
	.byte	0x5
	.value	0x577
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.string	"maxval"
	.byte	0x5
	.value	0x578
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.string	"next_variant"
	.byte	0x5
	.value	0x579
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.string	"main_variant"
	.byte	0x5
	.value	0x57a
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.string	"binfo"
	.byte	0x5
	.value	0x57b
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.string	"context"
	.byte	0x5
	.value	0x57c
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.string	"alias_set"
	.byte	0x5
	.value	0x57d
	.long	0x4db
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x21
	.long	.LASF27
	.byte	0x5
	.value	0x57f
	.long	0x47d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.string	"ty_idx"
	.byte	0x5
	.value	0x581
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.string	"field_ids_used"
	.byte	0x5
	.value	0x582
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x12
	.string	"dst_id"
	.byte	0x5
	.value	0x583
	.long	0x1f83
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x12
	.string	"extra_methods"
	.byte	0x5
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
	.long	0x47cc
	.uleb128 0x20
	.long	0x4823
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x5
	.value	0x817
	.uleb128 0x22
	.string	"align"
	.byte	0x5
	.value	0x818
	.long	0x467
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x22
	.string	"off_align"
	.byte	0x5
	.value	0x819
	.long	0x467
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x4858
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x5
	.value	0x80e
	.uleb128 0xa
	.string	"f"
	.byte	0x5
	.value	0x811
	.long	0x201e
	.uleb128 0xa
	.string	"i"
	.byte	0x5
	.value	0x814
	.long	0x4db
	.uleb128 0xa
	.string	"a"
	.byte	0x5
	.value	0x81a
	.long	0x47de
	.byte	0x0
	.uleb128 0x24
	.long	0x4897
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x5
	.value	0x837
	.uleb128 0xa
	.string	"f"
	.byte	0x5
	.value	0x838
	.long	0x489d
	.uleb128 0xa
	.string	"r"
	.byte	0x5
	.value	0x839
	.long	0x9b
	.uleb128 0xa
	.string	"t"
	.byte	0x5
	.value	0x83a
	.long	0x1e2
	.uleb128 0xa
	.string	"i"
	.byte	0x5
	.value	0x83b
	.long	0x460
	.byte	0x0
	.uleb128 0x25
	.long	.LASF28
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4897
	.uleb128 0x26
	.long	0x48db
	.byte	0x4
	.byte	0x5
	.value	0x84e
	.uleb128 0xa
	.string	"st"
	.byte	0x5
	.value	0x84f
	.long	0x4141
	.uleb128 0xa
	.string	"label_idx"
	.byte	0x5
	.value	0x850
	.long	0x1f72
	.uleb128 0xa
	.string	"field_id"
	.byte	0x5
	.value	0x851
	.long	0x467
	.byte	0x0
	.uleb128 0x20
	.long	0x5021
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x5
	.value	0x7c5
	.uleb128 0x21
	.long	.LASF2
	.byte	0x5
	.value	0x7c6
	.long	0x3cc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"locus"
	.byte	0x5
	.value	0x7c7
	.long	0x163e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"uid"
	.byte	0x5
	.value	0x7c8
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.string	"size"
	.byte	0x5
	.value	0x7c9
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x7ca
	.long	0x89b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"external_flag"
	.byte	0x5
	.value	0x7cc
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"nonlocal_flag"
	.byte	0x5
	.value	0x7cd
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"regdecl_flag"
	.byte	0x5
	.value	0x7ce
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"inline_flag"
	.byte	0x5
	.value	0x7cf
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"bit_field_flag"
	.byte	0x5
	.value	0x7d0
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"virtual_flag"
	.byte	0x5
	.value	0x7d1
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"ignored_flag"
	.byte	0x5
	.value	0x7d2
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.long	.LASF20
	.byte	0x5
	.value	0x7d3
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"sbuf_flag"
	.byte	0x5
	.value	0x7d7
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"sdram_flag"
	.byte	0x5
	.value	0x7d8
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"v1buf_flag"
	.byte	0x5
	.value	0x7d9
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"v2buf_flag"
	.byte	0x5
	.value	0x7da
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"v4buf_flag"
	.byte	0x5
	.value	0x7db
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"in_system_header_flag"
	.byte	0x5
	.value	0x7df
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"common_flag"
	.byte	0x5
	.value	0x7e0
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"defer_output"
	.byte	0x5
	.value	0x7e1
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"transparent_union"
	.byte	0x5
	.value	0x7e2
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"static_ctor_flag"
	.byte	0x5
	.value	0x7e3
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"static_dtor_flag"
	.byte	0x5
	.value	0x7e4
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"artificial_flag"
	.byte	0x5
	.value	0x7e5
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"weak_flag"
	.byte	0x5
	.value	0x7e6
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"non_addr_const_p"
	.byte	0x5
	.value	0x7e8
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"no_instrument_function_entry_exit"
	.byte	0x5
	.value	0x7e9
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"comdat_flag"
	.byte	0x5
	.value	0x7ea
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"malloc_flag"
	.byte	0x5
	.value	0x7eb
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"no_limit_stack"
	.byte	0x5
	.value	0x7ec
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF9
	.byte	0x5
	.value	0x7ed
	.long	0x1fce
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"pure_flag"
	.byte	0x5
	.value	0x7ee
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF25
	.byte	0x5
	.value	0x7f0
	.long	0x467
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"non_addressable"
	.byte	0x5
	.value	0x7f1
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF26
	.byte	0x5
	.value	0x7f2
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"uninlinable"
	.byte	0x5
	.value	0x7f3
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"thread_local_flag"
	.byte	0x5
	.value	0x7f4
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"inlined_function_flag"
	.byte	0x5
	.value	0x7f5
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"threadprivate_flag"
	.byte	0x5
	.value	0x7f7
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF10
	.byte	0x5
	.value	0x7fa
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF11
	.byte	0x5
	.value	0x7fb
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF12
	.byte	0x5
	.value	0x7fc
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF13
	.byte	0x5
	.value	0x7fd
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF14
	.byte	0x5
	.value	0x7fe
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF15
	.byte	0x5
	.value	0x7ff
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF16
	.byte	0x5
	.value	0x800
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF17
	.byte	0x5
	.value	0x801
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"syscall_linkage_flag"
	.byte	0x5
	.value	0x804
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"widen_retval_flag"
	.byte	0x5
	.value	0x805
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"emitted_by_gxx"
	.byte	0x5
	.value	0x808
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.string	"u1"
	.byte	0x5
	.value	0x81b
	.long	0x4823
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x21
	.long	.LASF22
	.byte	0x5
	.value	0x81d
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x12
	.string	"name"
	.byte	0x5
	.value	0x81e
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.string	"context"
	.byte	0x5
	.value	0x81f
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.string	"arguments"
	.byte	0x5
	.value	0x820
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x21
	.long	.LASF29
	.byte	0x5
	.value	0x821
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.string	"initial"
	.byte	0x5
	.value	0x822
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.string	"initial_2"
	.byte	0x5
	.value	0x824
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.string	"alias_target"
	.byte	0x5
	.value	0x825
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.string	"thunk_delta"
	.byte	0x5
	.value	0x829
	.long	0x4db
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x21
	.long	.LASF21
	.byte	0x5
	.value	0x82b
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x12
	.string	"assembler_name"
	.byte	0x5
	.value	0x82c
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.string	"section_name"
	.byte	0x5
	.value	0x82d
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x21
	.long	.LASF23
	.byte	0x5
	.value	0x82e
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x12
	.string	"rtl"
	.byte	0x5
	.value	0x82f
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x12
	.string	"live_range_rtl"
	.byte	0x5
	.value	0x830
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.string	"u2"
	.byte	0x5
	.value	0x83c
	.long	0x4858
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.string	"saved_tree"
	.byte	0x5
	.value	0x83f
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.string	"inlined_fns"
	.byte	0x5
	.value	0x843
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x12
	.string	"vindex"
	.byte	0x5
	.value	0x845
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x12
	.string	"pointer_alias_set"
	.byte	0x5
	.value	0x846
	.long	0x4db
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x21
	.long	.LASF27
	.byte	0x5
	.value	0x848
	.long	0x502d
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x22
	.string	"symtab_idx"
	.byte	0x5
	.value	0x84b
	.long	0x467
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x22
	.string	"label_defined"
	.byte	0x5
	.value	0x84c
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x12
	.string	"sgi_u1"
	.byte	0x5
	.value	0x852
	.long	0x48a3
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.string	"decl_dst_id"
	.byte	0x5
	.value	0x858
	.long	0x1f83
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.string	"sl_model_name"
	.byte	0x5
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
	.long	0x5021
	.uleb128 0xb
	.long	0x52b1
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0x9
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
	.uleb128 0x20
	.long	0x5300
	.string	"tree_omp"
	.byte	0x18
	.byte	0x5
	.value	0x864
	.uleb128 0x21
	.long	.LASF2
	.byte	0x5
	.value	0x865
	.long	0x3cc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"choice"
	.byte	0x5
	.value	0x866
	.long	0x5033
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"omp_clause_list"
	.byte	0x5
	.value	0x867
	.long	0x542
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x20
	.long	0x53bc
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x5
	.value	0xa1d
	.uleb128 0x12
	.string	"name"
	.byte	0x5
	.value	0xa20
	.long	0x53bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"min_length"
	.byte	0x5
	.value	0xa22
	.long	0x86f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"max_length"
	.byte	0x5
	.value	0xa25
	.long	0x86f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"decl_required"
	.byte	0x5
	.value	0xa2d
	.long	0x53c1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"type_required"
	.byte	0x5
	.value	0xa30
	.long	0x53c1
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x12
	.string	"function_type_required"
	.byte	0x5
	.value	0xa35
	.long	0x53c1
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x12
	.string	"handler"
	.byte	0x5
	.value	0xa44
	.long	0x53ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	0x44d
	.uleb128 0xd
	.long	0x53c6
	.uleb128 0xe
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x27
	.long	0x53f3
	.byte	0x1
	.long	0x1e2
	.uleb128 0x18
	.long	0x53f3
	.uleb128 0x18
	.long	0x1e2
	.uleb128 0x18
	.long	0x1e2
	.uleb128 0x18
	.long	0x460
	.uleb128 0x18
	.long	0x53f9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e2
	.uleb128 0x3
	.byte	0x4
	.long	0x53c6
	.uleb128 0xd
	.long	0x5404
	.uleb128 0x3
	.byte	0x4
	.long	0x53cf
	.uleb128 0x28
	.long	0x5470
	.string	"optab_methods"
	.byte	0x4
	.byte	0xa
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
	.uleb128 0x28
	.long	0x54ac
	.string	"extraction_pattern"
	.byte	0x4
	.byte	0xa
	.value	0x314
	.uleb128 0xc
	.string	"EP_insv"
	.sleb128 0
	.uleb128 0xc
	.string	"EP_extv"
	.sleb128 1
	.uleb128 0xc
	.string	"EP_extzv"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1a
	.long	0x760b
	.long	.LASF30
	.byte	0x4
	.byte	0xd
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
	.long	0x7643
	.string	"optab_handlers"
	.byte	0x8
	.byte	0xc
	.byte	0x2c
	.uleb128 0x1c
	.long	.LASF30
	.byte	0xc
	.byte	0x2d
	.long	0x54ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"libfunc"
	.byte	0xc
	.byte	0x2e
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x29
	.long	0x7674
	.string	"optab"
	.value	0x1b4
	.byte	0xc
	.byte	0x2a
	.uleb128 0x1c
	.long	.LASF0
	.byte	0xc
	.byte	0x2b
	.long	0xb93
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"handlers"
	.byte	0xc
	.byte	0x2f
	.long	0x7674
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x14
	.long	0x7684
	.long	0x760b
	.uleb128 0x15
	.long	0x46e
	.byte	0x35
	.byte	0x0
	.uleb128 0x2
	.string	"optab"
	.byte	0xc
	.byte	0x31
	.long	0x7691
	.uleb128 0x3
	.byte	0x4
	.long	0x7643
	.uleb128 0xb
	.long	0x76dd
	.string	"real_value_class"
	.byte	0x4
	.byte	0x6
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
	.uleb128 0x14
	.long	0x76ed
	.long	0x4aa
	.uleb128 0x15
	.long	0x46e
	.byte	0x4
	.byte	0x0
	.uleb128 0x2
	.string	"insn_operand_predicate_fn"
	.byte	0xb
	.byte	0xd9
	.long	0x770e
	.uleb128 0x3
	.byte	0x4
	.long	0x7714
	.uleb128 0x27
	.long	0x7729
	.byte	0x1
	.long	0x460
	.uleb128 0x18
	.long	0x9b
	.uleb128 0x18
	.long	0x89b
	.byte	0x0
	.uleb128 0x2
	.string	"insn_gen_fn"
	.byte	0xb
	.byte	0xdb
	.long	0x773c
	.uleb128 0x3
	.byte	0x4
	.long	0x7742
	.uleb128 0x27
	.long	0x7753
	.byte	0x1
	.long	0x9b
	.uleb128 0x18
	.long	0x9b
	.uleb128 0x2a
	.byte	0x0
	.uleb128 0x4
	.long	0x77d2
	.string	"insn_operand_data"
	.byte	0xc
	.byte	0xb
	.byte	0xde
	.uleb128 0x7
	.string	"predicate"
	.byte	0xb
	.byte	0xdf
	.long	0x77d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"constraint"
	.byte	0xb
	.byte	0xe1
	.long	0x53bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.long	.LASF1
	.byte	0xb
	.byte	0xe3
	.long	0x77d7
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"strict_low"
	.byte	0xb
	.byte	0xe5
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.string	"eliminable"
	.byte	0xb
	.byte	0xe7
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0xd
	.long	0x76ed
	.uleb128 0xd
	.long	0x89b
	.uleb128 0x11
	.long	0x7883
	.long	.LASF31
	.byte	0x14
	.byte	0xb
	.byte	0xf2
	.uleb128 0x7
	.string	"name"
	.byte	0xb
	.byte	0xf3
	.long	0x53bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"output"
	.byte	0xb
	.byte	0xf4
	.long	0x87a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"genfun"
	.byte	0xb
	.byte	0xf5
	.long	0x7883
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"operand"
	.byte	0xb
	.byte	0xf6
	.long	0x7888
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"n_operands"
	.byte	0xb
	.byte	0xf8
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"n_dups"
	.byte	0xb
	.byte	0xf9
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x7
	.string	"n_alternatives"
	.byte	0xb
	.byte	0xfa
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x7
	.string	"output_format"
	.byte	0xb
	.byte	0xfb
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.byte	0x0
	.uleb128 0xd
	.long	0x7729
	.uleb128 0xd
	.long	0x788d
	.uleb128 0x3
	.byte	0x4
	.long	0x7893
	.uleb128 0xd
	.long	0x7753
	.uleb128 0x2
	.string	"lang_print_tree_hook"
	.byte	0x10
	.byte	0x1d
	.long	0x78b4
	.uleb128 0x3
	.byte	0x4
	.long	0x78ba
	.uleb128 0x17
	.long	0x78d0
	.byte	0x1
	.uleb128 0x18
	.long	0x78d0
	.uleb128 0x18
	.long	0x1e2
	.uleb128 0x18
	.long	0x460
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x54a
	.uleb128 0x4
	.long	0x7a5c
	.string	"lang_hooks_for_tree_inlining"
	.byte	0x30
	.byte	0x10
	.byte	0x23
	.uleb128 0x7
	.string	"walk_subtrees"
	.byte	0x10
	.byte	0x24
	.long	0x7aa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"cannot_inline_tree_fn"
	.byte	0x10
	.byte	0x29
	.long	0x7abc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"disregard_inline_limits"
	.byte	0x10
	.byte	0x2a
	.long	0x7ad2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"add_pending_fn_decls"
	.byte	0x10
	.byte	0x2b
	.long	0x7aed
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"tree_chain_matters_p"
	.byte	0x10
	.byte	0x2d
	.long	0x7ad2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"auto_var_in_fn_p"
	.byte	0x10
	.byte	0x2e
	.long	0x7b08
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"copy_res_decl_for_inlining"
	.byte	0x10
	.byte	0x2f
	.long	0x7b37
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"anon_aggr_type_p"
	.byte	0x10
	.byte	0x34
	.long	0x7ad2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"var_mod_type_p"
	.byte	0x10
	.byte	0x35
	.long	0x7b4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"start_inlining"
	.byte	0x10
	.byte	0x36
	.long	0x7ad2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"end_inlining"
	.byte	0x10
	.byte	0x37
	.long	0x7b5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"convert_parm_for_inlining"
	.byte	0x10
	.byte	0x38
	.long	0x7b7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x27
	.long	0x7a80
	.byte	0x1
	.long	0x1ee
	.uleb128 0x18
	.long	0x7a80
	.uleb128 0x18
	.long	0x874
	.uleb128 0x18
	.long	0x7a86
	.uleb128 0x18
	.long	0x542
	.uleb128 0x18
	.long	0x542
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1ee
	.uleb128 0x3
	.byte	0x4
	.long	0x7a8c
	.uleb128 0x27
	.long	0x7aa6
	.byte	0x1
	.long	0x1ee
	.uleb128 0x18
	.long	0x7a80
	.uleb128 0x18
	.long	0x874
	.uleb128 0x18
	.long	0x542
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7a5c
	.uleb128 0x27
	.long	0x7abc
	.byte	0x1
	.long	0x460
	.uleb128 0x18
	.long	0x7a80
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7aac
	.uleb128 0x27
	.long	0x7ad2
	.byte	0x1
	.long	0x460
	.uleb128 0x18
	.long	0x1ee
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ac2
	.uleb128 0x27
	.long	0x7aed
	.byte	0x1
	.long	0x1ee
	.uleb128 0x18
	.long	0x542
	.uleb128 0x18
	.long	0x1ee
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ad8
	.uleb128 0x27
	.long	0x7b08
	.byte	0x1
	.long	0x460
	.uleb128 0x18
	.long	0x1ee
	.uleb128 0x18
	.long	0x1ee
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7af3
	.uleb128 0x27
	.long	0x7b37
	.byte	0x1
	.long	0x1ee
	.uleb128 0x18
	.long	0x1ee
	.uleb128 0x18
	.long	0x1ee
	.uleb128 0x18
	.long	0x1ee
	.uleb128 0x18
	.long	0x542
	.uleb128 0x18
	.long	0x874
	.uleb128 0x18
	.long	0x542
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b0e
	.uleb128 0x27
	.long	0x7b4d
	.byte	0x1
	.long	0x53c6
	.uleb128 0x18
	.long	0x1ee
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b3d
	.uleb128 0x17
	.long	0x7b5f
	.byte	0x1
	.uleb128 0x18
	.long	0x1ee
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b53
	.uleb128 0x27
	.long	0x7b7f
	.byte	0x1
	.long	0x1ee
	.uleb128 0x18
	.long	0x1ee
	.uleb128 0x18
	.long	0x1ee
	.uleb128 0x18
	.long	0x1ee
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b65
	.uleb128 0x4
	.long	0x7bf4
	.string	"lang_hooks_for_functions"
	.byte	0x10
	.byte	0x10
	.byte	0x40
	.uleb128 0x7
	.string	"init"
	.byte	0x10
	.byte	0x42
	.long	0x7c00
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"final"
	.byte	0x10
	.byte	0x45
	.long	0x7c00
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"enter_nested"
	.byte	0x10
	.byte	0x48
	.long	0x7c00
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"leave_nested"
	.byte	0x10
	.byte	0x4b
	.long	0x7c00
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x17
	.long	0x7c00
	.byte	0x1
	.uleb128 0x18
	.long	0x489d
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7bf4
	.uleb128 0x4
	.long	0x7c51
	.string	"lang_hooks_for_tree_dump"
	.byte	0x8
	.byte	0x10
	.byte	0x51
	.uleb128 0x7
	.string	"dump_tree"
	.byte	0x10
	.byte	0x54
	.long	0x7c66
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_quals"
	.byte	0x10
	.byte	0x57
	.long	0x7c7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x27
	.long	0x7c66
	.byte	0x1
	.long	0x460
	.uleb128 0x18
	.long	0x542
	.uleb128 0x18
	.long	0x1e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7c51
	.uleb128 0x27
	.long	0x7c7c
	.byte	0x1
	.long	0x460
	.uleb128 0x18
	.long	0x1e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7c6c
	.uleb128 0x4
	.long	0x7d6f
	.string	"lang_hooks_for_types"
	.byte	0x20
	.byte	0x10
	.byte	0x5d
	.uleb128 0x7
	.string	"make_type"
	.byte	0x10
	.byte	0x60
	.long	0x7d7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_for_mode"
	.byte	0x10
	.byte	0x64
	.long	0x7d9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type_for_size"
	.byte	0x10
	.byte	0x68
	.long	0x7db5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"unsigned_type"
	.byte	0x10
	.byte	0x6c
	.long	0x7dcb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"signed_type"
	.byte	0x10
	.byte	0x70
	.long	0x7dcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"signed_or_unsigned_type"
	.byte	0x10
	.byte	0x74
	.long	0x7de6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"type_promotes_to"
	.byte	0x10
	.byte	0x7a
	.long	0x7dcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"incomplete_type_error"
	.byte	0x10
	.byte	0x80
	.long	0x7dfd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x27
	.long	0x7d7f
	.byte	0x1
	.long	0x1e2
	.uleb128 0x18
	.long	0x1650
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7d6f
	.uleb128 0x27
	.long	0x7d9a
	.byte	0x1
	.long	0x1e2
	.uleb128 0x18
	.long	0x89b
	.uleb128 0x18
	.long	0x460
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7d85
	.uleb128 0x27
	.long	0x7db5
	.byte	0x1
	.long	0x1e2
	.uleb128 0x18
	.long	0x467
	.uleb128 0x18
	.long	0x460
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7da0
	.uleb128 0x27
	.long	0x7dcb
	.byte	0x1
	.long	0x1e2
	.uleb128 0x18
	.long	0x1e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7dbb
	.uleb128 0x27
	.long	0x7de6
	.byte	0x1
	.long	0x1e2
	.uleb128 0x18
	.long	0x460
	.uleb128 0x18
	.long	0x1e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7dd1
	.uleb128 0x17
	.long	0x7dfd
	.byte	0x1
	.uleb128 0x18
	.long	0x1e2
	.uleb128 0x18
	.long	0x1e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7dec
	.uleb128 0x4
	.long	0x7f09
	.string	"lang_hooks_for_decls"
	.byte	0x28
	.byte	0x10
	.byte	0x86
	.uleb128 0x7
	.string	"pushlevel"
	.byte	0x10
	.byte	0x89
	.long	0x881
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"poplevel"
	.byte	0x10
	.byte	0x90
	.long	0x7f23
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"global_bindings_p"
	.byte	0x10
	.byte	0x94
	.long	0x7f2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"insert_block"
	.byte	0x10
	.byte	0x99
	.long	0x7f41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"set_block"
	.byte	0x10
	.byte	0x9c
	.long	0x7f41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"pushdecl"
	.byte	0x10
	.byte	0xa2
	.long	0x7dcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"getdecls"
	.byte	0x10
	.byte	0xa5
	.long	0x7f4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"warn_unused_global"
	.byte	0x10
	.byte	0xa9
	.long	0x7f63
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"final_write_globals"
	.byte	0x10
	.byte	0xad
	.long	0x895
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"ok_for_sibcall"
	.byte	0x10
	.byte	0xb0
	.long	0x7f63
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x27
	.long	0x7f23
	.byte	0x1
	.long	0x1e2
	.uleb128 0x18
	.long	0x460
	.uleb128 0x18
	.long	0x460
	.uleb128 0x18
	.long	0x460
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f09
	.uleb128 0x2b
	.byte	0x1
	.long	0x460
	.uleb128 0x3
	.byte	0x4
	.long	0x7f29
	.uleb128 0x17
	.long	0x7f41
	.byte	0x1
	.uleb128 0x18
	.long	0x1e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f35
	.uleb128 0x2b
	.byte	0x1
	.long	0x1e2
	.uleb128 0x3
	.byte	0x4
	.long	0x7f47
	.uleb128 0x27
	.long	0x7f63
	.byte	0x1
	.long	0x53c6
	.uleb128 0x18
	.long	0x1e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f53
	.uleb128 0x2c
	.long	0x839b
	.long	.LASF32
	.value	0x120
	.byte	0x10
	.byte	0xb6
	.uleb128 0x7
	.string	"name"
	.byte	0x10
	.byte	0xb8
	.long	0x44d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"identifier_size"
	.byte	0x10
	.byte	0xbc
	.long	0x475
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"init_options"
	.byte	0x10
	.byte	0xc0
	.long	0x895
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"decode_option"
	.byte	0x10
	.byte	0xca
	.long	0x83b6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"post_options"
	.byte	0x10
	.byte	0xd6
	.long	0x83c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"init"
	.byte	0x10
	.byte	0xde
	.long	0x83d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"finish"
	.byte	0x10
	.byte	0xe1
	.long	0x895
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"parse_file"
	.byte	0x10
	.byte	0xe5
	.long	0x881
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"clear_binding_stack"
	.byte	0x10
	.byte	0xe8
	.long	0x895
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"get_alias_set"
	.byte	0x10
	.byte	0xec
	.long	0x83ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"expand_constant"
	.byte	0x10
	.byte	0xf1
	.long	0x7dcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"expand_expr"
	.byte	0x10
	.byte	0xf5
	.long	0x8413
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.string	"truthvalue_conversion"
	.byte	0x10
	.value	0x102
	.long	0x7dcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x12
	.string	"insert_default_attributes"
	.byte	0x10
	.value	0x106
	.long	0x7f41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.string	"safe_from_p"
	.byte	0x10
	.value	0x10f
	.long	0x842e
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.string	"finish_incomplete_decl"
	.byte	0x10
	.value	0x113
	.long	0x7f41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.string	"unsafe_for_reeval"
	.byte	0x10
	.value	0x118
	.long	0x7c7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.string	"mark_addressable"
	.byte	0x10
	.value	0x11d
	.long	0x7f63
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.string	"staticp"
	.byte	0x10
	.value	0x120
	.long	0x7c7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.string	"dup_lang_specific_decl"
	.byte	0x10
	.value	0x124
	.long	0x7f41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.string	"unsave_expr_now"
	.byte	0x10
	.value	0x129
	.long	0x7dcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.string	"maybe_build_cleanup"
	.byte	0x10
	.value	0x12d
	.long	0x7dcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.string	"set_decl_assembler_name"
	.byte	0x10
	.value	0x134
	.long	0x7f41
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x12
	.string	"can_use_bit_fields_p"
	.byte	0x10
	.value	0x138
	.long	0x83c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.string	"honor_readonly"
	.byte	0x10
	.value	0x13b
	.long	0x53c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.string	"print_statistics"
	.byte	0x10
	.value	0x13f
	.long	0x895
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x12
	.string	"print_xnode"
	.byte	0x10
	.value	0x143
	.long	0x7898
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x12
	.string	"print_decl"
	.byte	0x10
	.value	0x147
	.long	0x7898
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.string	"print_type"
	.byte	0x10
	.value	0x148
	.long	0x7898
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.string	"print_identifier"
	.byte	0x10
	.value	0x149
	.long	0x7898
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.string	"decl_printable_name"
	.byte	0x10
	.value	0x151
	.long	0x8449
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x12
	.string	"print_error_function"
	.byte	0x10
	.value	0x154
	.long	0x847b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x12
	.string	"expr_size"
	.byte	0x10
	.value	0x15b
	.long	0x7dcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.string	"attribute_table"
	.byte	0x10
	.value	0x162
	.long	0x8481
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x12
	.string	"common_attribute_table"
	.byte	0x10
	.value	0x163
	.long	0x8481
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x12
	.string	"format_attribute_table"
	.byte	0x10
	.value	0x164
	.long	0x8481
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x21
	.long	.LASF28
	.byte	0x10
	.value	0x167
	.long	0x7b85
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.string	"tree_inlining"
	.byte	0x10
	.value	0x169
	.long	0x78d6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x12
	.string	"tree_dump"
	.byte	0x10
	.value	0x16b
	.long	0x7c06
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x12
	.string	"decls"
	.byte	0x10
	.value	0x16d
	.long	0x7e03
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x12
	.string	"types"
	.byte	0x10
	.value	0x16f
	.long	0x7c82
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0x0
	.uleb128 0x27
	.long	0x83b0
	.byte	0x1
	.long	0x460
	.uleb128 0x18
	.long	0x460
	.uleb128 0x18
	.long	0x83b0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x544
	.uleb128 0x3
	.byte	0x4
	.long	0x839b
	.uleb128 0x2b
	.byte	0x1
	.long	0x53c6
	.uleb128 0x3
	.byte	0x4
	.long	0x83bc
	.uleb128 0x27
	.long	0x83d8
	.byte	0x1
	.long	0x44d
	.uleb128 0x18
	.long	0x44d
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x83c8
	.uleb128 0x27
	.long	0x83ee
	.byte	0x1
	.long	0x4db
	.uleb128 0x18
	.long	0x1e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x83de
	.uleb128 0x27
	.long	0x8413
	.byte	0x1
	.long	0x9b
	.uleb128 0x18
	.long	0x1e2
	.uleb128 0x18
	.long	0x9b
	.uleb128 0x18
	.long	0x89b
	.uleb128 0x18
	.long	0x460
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x83f4
	.uleb128 0x27
	.long	0x842e
	.byte	0x1
	.long	0x460
	.uleb128 0x18
	.long	0x9b
	.uleb128 0x18
	.long	0x1e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8419
	.uleb128 0x27
	.long	0x8449
	.byte	0x1
	.long	0x44d
	.uleb128 0x18
	.long	0x1e2
	.uleb128 0x18
	.long	0x460
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8434
	.uleb128 0x17
	.long	0x8460
	.byte	0x1
	.uleb128 0x18
	.long	0x8460
	.uleb128 0x18
	.long	0x44d
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8466
	.uleb128 0x1f
	.string	"diagnostic_context"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x844f
	.uleb128 0x3
	.byte	0x4
	.long	0x8487
	.uleb128 0xd
	.long	0x5300
	.uleb128 0x2d
	.long	0x8553
	.byte	0x1
	.string	"init_expmed"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.byte	0x6f
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.string	"shift_insn"
	.byte	0x1
	.byte	0x6f
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"shiftadd_insn"
	.byte	0x1
	.byte	0x6f
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.string	"shiftsub_insn"
	.byte	0x1
	.byte	0x6f
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"dummy"
	.byte	0x1
	.byte	0x70
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"m"
	.byte	0x1
	.byte	0x71
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.byte	0x72
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF33
	.byte	0x1
	.byte	0x72
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2e
	.string	"c_int"
	.byte	0x1
	.byte	0x96
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x85a0
	.byte	0x1
	.string	"negate_rtx"
	.byte	0x1
	.byte	0xd7
	.byte	0x1
	.long	0x9b
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.byte	0xd5
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.byte	0xd6
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF29
	.byte	0x1
	.byte	0xd8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0x860e
	.byte	0x1
	.string	"mode_for_extraction"
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.long	0x89b
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x33
	.string	"pattern"
	.byte	0x1
	.byte	0xe6
	.long	0x5470
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"opno"
	.byte	0x1
	.byte	0xe7
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"data"
	.byte	0x1
	.byte	0xe9
	.long	0x860e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x34
	.long	.LASF34
	.long	0xae3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12714
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8614
	.uleb128 0xd
	.long	0x77dc
	.uleb128 0x35
	.long	0x88e0
	.byte	0x1
	.string	"store_bit_field"
	.byte	0x1
	.value	0x12b
	.byte	0x1
	.long	0x9b
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x36
	.string	"str_rtx"
	.byte	0x1
	.value	0x125
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF35
	.byte	0x1
	.value	0x126
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x36
	.string	"bitnum"
	.byte	0x1
	.value	0x127
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x36
	.string	"fieldmode"
	.byte	0x1
	.value	0x128
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x37
	.long	.LASF19
	.byte	0x1
	.value	0x129
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x37
	.long	.LASF36
	.byte	0x1
	.value	0x12a
	.long	0x4db
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x38
	.string	"unit"
	.byte	0x1
	.value	0x12c
	.long	0x467
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x39
	.long	.LASF8
	.byte	0x1
	.value	0x12e
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x39
	.long	.LASF37
	.byte	0x1
	.value	0x12f
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x38
	.string	"op0"
	.byte	0x1
	.value	0x130
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x39
	.long	.LASF38
	.byte	0x1
	.value	0x131
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x38
	.string	"op_mode"
	.byte	0x1
	.value	0x133
	.long	0x89b
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x3a
	.string	"insv_loses"
	.byte	0x1
	.value	0x2b1
	.long	.L233
	.uleb128 0x3b
	.long	0x8757
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x38
	.string	"old_generating_concat_p"
	.byte	0x1
	.value	0x14c
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x3b
	.long	0x8777
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x38
	.string	"imode"
	.byte	0x1
	.value	0x182
	.long	0x89b
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.uleb128 0x3b
	.long	0x8797
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x38
	.string	"icode"
	.byte	0x1
	.value	0x1a8
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.uleb128 0x3b
	.long	0x880a
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x38
	.string	"backwards"
	.byte	0x1
	.value	0x1d5
	.long	0x467
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x38
	.string	"nwords"
	.byte	0x1
	.value	0x1d6
	.long	0x467
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x1d7
	.long	0x467
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x30
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x38
	.string	"wordnum"
	.byte	0x1
	.value	0x1e4
	.long	0x467
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x39
	.long	.LASF39
	.byte	0x1
	.value	0x1e5
	.long	0x467
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x88cf
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x39
	.long	.LASF40
	.byte	0x1
	.value	0x22c
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.string	"value1"
	.byte	0x1
	.value	0x22d
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.string	"xop0"
	.byte	0x1
	.value	0x22e
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"last"
	.byte	0x1
	.value	0x22f
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.string	"pat"
	.byte	0x1
	.value	0x230
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x39
	.long	.LASF41
	.byte	0x1
	.value	0x231
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x39
	.long	.LASF42
	.byte	0x1
	.value	0x232
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.long	0x88b5
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x38
	.string	"tempreg"
	.byte	0x1
	.value	0x23e
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x39
	.long	.LASF43
	.byte	0x1
	.value	0x23f
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x30
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x38
	.string	"tmp"
	.byte	0x1
	.value	0x28a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LASF34
	.long	0xae36
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12763
	.byte	0x0
	.uleb128 0x3c
	.long	0x8a0b
	.string	"store_fixed_bit_field"
	.byte	0x1
	.value	0x2c7
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x36
	.string	"op0"
	.byte	0x1
	.value	0x2c4
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF8
	.byte	0x1
	.value	0x2c5
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x37
	.long	.LASF35
	.byte	0x1
	.value	0x2c5
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x37
	.long	.LASF37
	.byte	0x1
	.value	0x2c5
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x37
	.long	.LASF19
	.byte	0x1
	.value	0x2c6
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x39
	.long	.LASF1
	.byte	0x1
	.value	0x2c8
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x39
	.long	.LASF44
	.byte	0x1
	.value	0x2c9
	.long	0x467
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x39
	.long	.LASF45
	.byte	0x1
	.value	0x2ca
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"temp"
	.byte	0x1
	.value	0x2ca
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"all_zero"
	.byte	0x1
	.value	0x2cb
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"all_one"
	.byte	0x1
	.value	0x2cc
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.long	0x89d8
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x38
	.string	"v"
	.byte	0x1
	.value	0x322
	.long	0x4db
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x3b
	.long	0x89fa
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x38
	.string	"must_and"
	.byte	0x1
	.value	0x332
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x34
	.long	.LASF34
	.long	0xae31
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13481
	.byte	0x0
	.uleb128 0x3c
	.long	0x8b45
	.string	"store_split_bit_field"
	.byte	0x1
	.value	0x36d
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x36
	.string	"op0"
	.byte	0x1
	.value	0x36a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF35
	.byte	0x1
	.value	0x36b
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x37
	.long	.LASF37
	.byte	0x1
	.value	0x36b
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x37
	.long	.LASF19
	.byte	0x1
	.value	0x36c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x38
	.string	"unit"
	.byte	0x1
	.value	0x36e
	.long	0x467
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x39
	.long	.LASF46
	.byte	0x1
	.value	0x36f
	.long	0x467
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3b
	.long	0x8ab1
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x38
	.string	"word"
	.byte	0x1
	.value	0x382
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x30
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x39
	.long	.LASF47
	.byte	0x1
	.value	0x391
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.string	"part"
	.byte	0x1
	.value	0x392
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"word"
	.byte	0x1
	.value	0x392
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"thispos"
	.byte	0x1
	.value	0x393
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x39
	.long	.LASF8
	.byte	0x1
	.value	0x394
	.long	0x4ec
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3b
	.long	0x8b2a
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x39
	.long	.LASF44
	.byte	0x1
	.value	0x3a1
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x30
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x39
	.long	.LASF48
	.byte	0x1
	.value	0x3cc
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x901a
	.byte	0x1
	.string	"extract_bit_field"
	.byte	0x1
	.value	0x3ff
	.byte	0x1
	.long	0x9b
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x36
	.string	"str_rtx"
	.byte	0x1
	.value	0x3f8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF35
	.byte	0x1
	.value	0x3f9
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x36
	.string	"bitnum"
	.byte	0x1
	.value	0x3fa
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x37
	.long	.LASF49
	.byte	0x1
	.value	0x3fb
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x37
	.long	.LASF50
	.byte	0x1
	.value	0x3fc
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x3fd
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x36
	.string	"tmode"
	.byte	0x1
	.value	0x3fd
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x37
	.long	.LASF36
	.byte	0x1
	.value	0x3fe
	.long	0x4db
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x38
	.string	"unit"
	.byte	0x1
	.value	0x400
	.long	0x467
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x39
	.long	.LASF8
	.byte	0x1
	.value	0x402
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x39
	.long	.LASF37
	.byte	0x1
	.value	0x403
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x38
	.string	"op0"
	.byte	0x1
	.value	0x404
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x38
	.string	"spec_target"
	.byte	0x1
	.value	0x405
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x38
	.string	"spec_target_subreg"
	.byte	0x1
	.value	0x406
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x38
	.string	"int_mode"
	.byte	0x1
	.value	0x407
	.long	0x89b
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x38
	.string	"extv_mode"
	.byte	0x1
	.value	0x408
	.long	0x89b
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x38
	.string	"extzv_mode"
	.byte	0x1
	.value	0x409
	.long	0x89b
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x38
	.string	"mode1"
	.byte	0x1
	.value	0x40a
	.long	0x89b
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x39
	.long	.LASF38
	.byte	0x1
	.value	0x40b
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x3a
	.string	"no_subreg_mode_swap"
	.byte	0x1
	.value	0x485
	.long	.L524
	.uleb128 0x3a
	.string	"extzv_loses"
	.byte	0x1
	.value	0x575
	.long	.L658
	.uleb128 0x3a
	.string	"extv_loses"
	.byte	0x1
	.value	0x5f6
	.long	.L713
	.uleb128 0x3b
	.long	0x8d34
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x38
	.string	"imode"
	.byte	0x1
	.value	0x42d
	.long	0x89b
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.byte	0x0
	.uleb128 0x3b
	.long	0x8df5
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x38
	.string	"nwords"
	.byte	0x1
	.value	0x490
	.long	0x467
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x491
	.long	0x467
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x3b
	.long	0x8dc4
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x38
	.string	"wordnum"
	.byte	0x1
	.value	0x49e
	.long	0x467
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x39
	.long	.LASF39
	.byte	0x1
	.value	0x4a3
	.long	0x467
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x38
	.string	"target_part"
	.byte	0x1
	.value	0x4a7
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x38
	.string	"result_part"
	.byte	0x1
	.value	0x4a8
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.byte	0x0
	.uleb128 0x30
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x4bb
	.long	0x467
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x38
	.string	"total_words"
	.byte	0x1
	.value	0x4bb
	.long	0x467
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x8f11
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x39
	.long	.LASF40
	.byte	0x1
	.value	0x4fa
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x38
	.string	"xoffset"
	.byte	0x1
	.value	0x4fa
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x39
	.long	.LASF51
	.byte	0x1
	.value	0x4fb
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x39
	.long	.LASF52
	.byte	0x1
	.value	0x4fb
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x38
	.string	"last"
	.byte	0x1
	.value	0x4fc
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x38
	.string	"xop0"
	.byte	0x1
	.value	0x4fd
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x38
	.string	"xtarget"
	.byte	0x1
	.value	0x4fe
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x39
	.long	.LASF53
	.byte	0x1
	.value	0x4ff
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x39
	.long	.LASF54
	.byte	0x1
	.value	0x500
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x38
	.string	"pat"
	.byte	0x1
	.value	0x501
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x39
	.long	.LASF41
	.byte	0x1
	.value	0x502
	.long	0x89b
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x3b
	.long	0x8ef4
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x39
	.long	.LASF42
	.byte	0x1
	.value	0x506
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x39
	.long	.LASF43
	.byte	0x1
	.value	0x50e
	.long	0x89b
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x38
	.string	"wider"
	.byte	0x1
	.value	0x551
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x9009
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x39
	.long	.LASF40
	.byte	0x1
	.value	0x580
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x38
	.string	"xoffset"
	.byte	0x1
	.value	0x580
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x39
	.long	.LASF51
	.byte	0x1
	.value	0x581
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x39
	.long	.LASF52
	.byte	0x1
	.value	0x581
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.string	"last"
	.byte	0x1
	.value	0x582
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.string	"xop0"
	.byte	0x1
	.value	0x583
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"xtarget"
	.byte	0x1
	.value	0x583
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x39
	.long	.LASF53
	.byte	0x1
	.value	0x584
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x39
	.long	.LASF54
	.byte	0x1
	.value	0x585
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"pat"
	.byte	0x1
	.value	0x586
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x39
	.long	.LASF41
	.byte	0x1
	.value	0x587
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3b
	.long	0x8fed
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x39
	.long	.LASF43
	.byte	0x1
	.value	0x590
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x30
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x38
	.string	"wider"
	.byte	0x1
	.value	0x5d2
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LASF34
	.long	0xae1c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13927
	.byte	0x0
	.uleb128 0x3d
	.long	0x912b
	.string	"extract_fixed_bit_field"
	.byte	0x1
	.value	0x628
	.byte	0x1
	.long	0x9b
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x36
	.string	"tmode"
	.byte	0x1
	.value	0x624
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"op0"
	.byte	0x1
	.value	0x625
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF8
	.byte	0x1
	.value	0x626
	.long	0x4ec
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.long	.LASF35
	.byte	0x1
	.value	0x626
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x37
	.long	.LASF37
	.byte	0x1
	.value	0x626
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x37
	.long	.LASF50
	.byte	0x1
	.value	0x625
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x37
	.long	.LASF49
	.byte	0x1
	.value	0x627
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x39
	.long	.LASF44
	.byte	0x1
	.value	0x629
	.long	0x467
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x39
	.long	.LASF1
	.byte	0x1
	.value	0x62a
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3b
	.long	0x9102
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x39
	.long	.LASF55
	.byte	0x1
	.value	0x667
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x39
	.long	.LASF45
	.byte	0x1
	.value	0x66a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x30
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x39
	.long	.LASF55
	.byte	0x1
	.value	0x690
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.long	.LASF45
	.byte	0x1
	.value	0x694
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.long	0x91b8
	.string	"mask_rtx"
	.byte	0x1
	.value	0x6a9
	.byte	0x1
	.long	0x9b
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x6a7
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF37
	.byte	0x1
	.value	0x6a8
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF35
	.byte	0x1
	.value	0x6a8
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.string	"complement"
	.byte	0x1
	.value	0x6a8
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.string	"masklow"
	.byte	0x1
	.value	0x6aa
	.long	0x4db
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"maskhigh"
	.byte	0x1
	.value	0x6aa
	.long	0x4db
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x3d
	.long	0x9247
	.string	"lshift_value"
	.byte	0x1
	.value	0x6d1
	.byte	0x1
	.long	0x9b
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x6ce
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF19
	.byte	0x1
	.value	0x6cf
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF37
	.byte	0x1
	.value	0x6d0
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF35
	.byte	0x1
	.value	0x6d0
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.string	"v"
	.byte	0x1
	.value	0x6d2
	.long	0x4ec
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.string	"low"
	.byte	0x1
	.value	0x6d3
	.long	0x4db
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"high"
	.byte	0x1
	.value	0x6d3
	.long	0x4db
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x3d
	.long	0x936c
	.string	"extract_split_bit_field"
	.byte	0x1
	.value	0x6f2
	.byte	0x1
	.long	0x9b
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x36
	.string	"op0"
	.byte	0x1
	.value	0x6ef
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF35
	.byte	0x1
	.value	0x6f0
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x37
	.long	.LASF37
	.byte	0x1
	.value	0x6f0
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x37
	.long	.LASF49
	.byte	0x1
	.value	0x6f1
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x38
	.string	"unit"
	.byte	0x1
	.value	0x6f3
	.long	0x467
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x39
	.long	.LASF46
	.byte	0x1
	.value	0x6f4
	.long	0x467
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x39
	.long	.LASF29
	.byte	0x1
	.value	0x6f5
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"first"
	.byte	0x1
	.value	0x6f6
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x39
	.long	.LASF47
	.byte	0x1
	.value	0x701
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.string	"part"
	.byte	0x1
	.value	0x702
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"word"
	.byte	0x1
	.value	0x702
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"thispos"
	.byte	0x1
	.value	0x703
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x39
	.long	.LASF8
	.byte	0x1
	.value	0x704
	.long	0x4ec
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x39
	.long	.LASF48
	.byte	0x1
	.value	0x717
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0x93bb
	.byte	0x1
	.string	"expand_inc"
	.byte	0x1
	.value	0x756
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x37
	.long	.LASF50
	.byte	0x1
	.value	0x755
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"inc"
	.byte	0x1
	.value	0x755
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.long	.LASF19
	.byte	0x1
	.value	0x757
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3e
	.long	0x940a
	.byte	0x1
	.string	"expand_dec"
	.byte	0x1
	.value	0x763
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x37
	.long	.LASF50
	.byte	0x1
	.value	0x762
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"dec"
	.byte	0x1
	.value	0x762
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.long	.LASF19
	.byte	0x1
	.value	0x764
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	0x959c
	.byte	0x1
	.string	"expand_shift"
	.byte	0x1
	.value	0x77a
	.byte	0x1
	.long	0x9b
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x774
	.long	0x1650
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x775
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"shifted"
	.byte	0x1
	.value	0x776
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF55
	.byte	0x1
	.value	0x777
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x37
	.long	.LASF50
	.byte	0x1
	.value	0x778
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x37
	.long	.LASF49
	.byte	0x1
	.value	0x779
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x38
	.string	"op1"
	.byte	0x1
	.value	0x77b
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.string	"temp"
	.byte	0x1
	.value	0x77b
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x38
	.string	"left"
	.byte	0x1
	.value	0x77c
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.string	"rotate"
	.byte	0x1
	.value	0x77d
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.string	"try"
	.byte	0x1
	.value	0x77e
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3b
	.long	0x958b
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x38
	.string	"methods"
	.byte	0x1
	.value	0x799
	.long	0x540a
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3b
	.long	0x956c
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x39
	.long	.LASF45
	.byte	0x1
	.value	0x7b5
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.string	"temp1"
	.byte	0x1
	.value	0x7b6
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x39
	.long	.LASF3
	.byte	0x1
	.value	0x7b7
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"new_amount"
	.byte	0x1
	.value	0x7b8
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"other_amount"
	.byte	0x1
	.value	0x7b9
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x30
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x38
	.string	"methods1"
	.byte	0x1
	.value	0x7e6
	.long	0x540a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LASF34
	.long	0xae17
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15265
	.byte	0x0
	.uleb128 0x28
	.long	0x9660
	.string	"alg_code"
	.byte	0x4
	.byte	0x1
	.value	0x7ff
	.uleb128 0xc
	.string	"alg_zero"
	.sleb128 0
	.uleb128 0xc
	.string	"alg_m"
	.sleb128 1
	.uleb128 0xc
	.string	"alg_shift"
	.sleb128 2
	.uleb128 0xc
	.string	"alg_add_t_m2"
	.sleb128 3
	.uleb128 0xc
	.string	"alg_sub_t_m2"
	.sleb128 4
	.uleb128 0xc
	.string	"alg_add_factor"
	.sleb128 5
	.uleb128 0xc
	.string	"alg_sub_factor"
	.sleb128 6
	.uleb128 0xc
	.string	"alg_add_t2_m"
	.sleb128 7
	.uleb128 0xc
	.string	"alg_sub_t2_m"
	.sleb128 8
	.uleb128 0xc
	.string	"alg_add"
	.sleb128 9
	.uleb128 0xc
	.string	"alg_subtract"
	.sleb128 10
	.uleb128 0xc
	.string	"alg_factor"
	.sleb128 11
	.uleb128 0xc
	.string	"alg_shiftop"
	.sleb128 12
	.byte	0x0
	.uleb128 0x3f
	.long	0x96b2
	.string	"algorithm"
	.value	0x144
	.byte	0x1
	.value	0x819
	.uleb128 0x12
	.string	"cost"
	.byte	0x1
	.value	0x81a
	.long	0x4ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"ops"
	.byte	0x1
	.value	0x81b
	.long	0x4ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.string	"op"
	.byte	0x1
	.value	0x821
	.long	0x96b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"log"
	.byte	0x1
	.value	0x822
	.long	0x96c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.byte	0x0
	.uleb128 0x14
	.long	0x96c2
	.long	0x959c
	.uleb128 0x15
	.long	0x46e
	.byte	0x3f
	.byte	0x0
	.uleb128 0x14
	.long	0x96d2
	.long	0x458
	.uleb128 0x15
	.long	0x46e
	.byte	0x3f
	.byte	0x0
	.uleb128 0x3c
	.long	0x9867
	.string	"synth_mult"
	.byte	0x1
	.value	0x838
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x36
	.string	"alg_out"
	.byte	0x1
	.value	0x835
	.long	0x9867
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x36
	.string	"t"
	.byte	0x1
	.value	0x836
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x36
	.string	"cost_limit"
	.byte	0x1
	.value	0x837
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.string	"m"
	.byte	0x1
	.value	0x839
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.string	"alg_in"
	.byte	0x1
	.value	0x83a
	.long	0x9867
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x38
	.string	"best_alg"
	.byte	0x1
	.value	0x83a
	.long	0x9867
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.string	"cost"
	.byte	0x1
	.value	0x83b
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.string	"q"
	.byte	0x1
	.value	0x83c
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3b
	.long	0x9798
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x38
	.string	"x"
	.byte	0x1
	.value	0x871
	.long	0x9867
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x3b
	.long	0x97e6
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x38
	.string	"w"
	.byte	0x1
	.value	0x87d
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3b
	.long	0x97ce
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x38
	.string	"x"
	.byte	0x1
	.value	0x894
	.long	0x9867
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x30
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x38
	.string	"x"
	.byte	0x1
	.value	0x8a5
	.long	0x9867
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x9834
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x38
	.string	"d"
	.byte	0x1
	.value	0x8ba
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3b
	.long	0x981c
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x38
	.string	"x"
	.byte	0x1
	.value	0x8c5
	.long	0x9867
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x30
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x38
	.string	"x"
	.byte	0x1
	.value	0x8d8
	.long	0x9867
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x984f
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x38
	.string	"x"
	.byte	0x1
	.value	0x8f1
	.long	0x9867
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x30
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x38
	.string	"x"
	.byte	0x1
	.value	0x904
	.long	0x9867
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9660
	.uleb128 0x35
	.long	0x9a9c
	.byte	0x1
	.string	"expand_mult"
	.byte	0x1
	.value	0x92f
	.byte	0x1
	.long	0x9b
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x92c
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"op0"
	.byte	0x1
	.value	0x92d
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -740
	.uleb128 0x36
	.string	"op1"
	.byte	0x1
	.value	0x92d
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -744
	.uleb128 0x37
	.long	.LASF50
	.byte	0x1
	.value	0x92d
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -748
	.uleb128 0x37
	.long	.LASF49
	.byte	0x1
	.value	0x92e
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x38
	.string	"const_op1"
	.byte	0x1
	.value	0x930
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x3b
	.long	0x9a8b
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x38
	.string	"alg"
	.byte	0x1
	.value	0x94d
	.long	0x9660
	.byte	0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x38
	.string	"alg2"
	.byte	0x1
	.value	0x94e
	.long	0x9660
	.byte	0x3
	.byte	0x91
	.sleb128 -668
	.uleb128 0x38
	.string	"val"
	.byte	0x1
	.value	0x94f
	.long	0x4db
	.byte	0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0x38
	.string	"val_so_far"
	.byte	0x1
	.value	0x950
	.long	0x4db
	.byte	0x3
	.byte	0x91
	.sleb128 -728
	.uleb128 0x38
	.string	"insn"
	.byte	0x1
	.value	0x951
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -716
	.uleb128 0x38
	.string	"mult_cost"
	.byte	0x1
	.value	0x952
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x40
	.long	0x99ac
	.byte	0x4
	.byte	0x1
	.value	0x953
	.uleb128 0xc
	.string	"basic_variant"
	.sleb128 0
	.uleb128 0xc
	.string	"negate_variant"
	.sleb128 1
	.uleb128 0xc
	.string	"add_variant"
	.sleb128 2
	.byte	0x0
	.uleb128 0x38
	.string	"variant"
	.byte	0x1
	.value	0x953
	.long	0x9973
	.byte	0x3
	.byte	0x91
	.sleb128 -708
	.uleb128 0x30
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x38
	.string	"opno"
	.byte	0x1
	.value	0x975
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x38
	.string	"accum"
	.byte	0x1
	.value	0x976
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -700
	.uleb128 0x38
	.string	"tem"
	.byte	0x1
	.value	0x976
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -696
	.uleb128 0x38
	.string	"nmode"
	.byte	0x1
	.value	0x977
	.long	0x89b
	.byte	0x3
	.byte	0x91
	.sleb128 -692
	.uleb128 0x30
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x38
	.string	"log"
	.byte	0x1
	.value	0x992
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -688
	.uleb128 0x38
	.string	"preserve"
	.byte	0x1
	.value	0x993
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -684
	.uleb128 0x38
	.string	"shift_subtarget"
	.byte	0x1
	.value	0x994
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -680
	.uleb128 0x38
	.string	"add_target"
	.byte	0x1
	.value	0x995
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -676
	.uleb128 0x38
	.string	"accum_target"
	.byte	0x1
	.value	0x999
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -672
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LASF34
	.long	0xae02
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15690
	.byte	0x0
	.uleb128 0x35
	.long	0x9ace
	.byte	0x1
	.string	"ceil_log2"
	.byte	0x1
	.value	0xa15
	.byte	0x1
	.long	0x460
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x36
	.string	"x"
	.byte	0x1
	.value	0xa14
	.long	0x4ec
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x3d
	.long	0x9c9e
	.string	"choose_multiplier"
	.byte	0x1
	.value	0xa32
	.byte	0x1
	.long	0x4ec
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x36
	.string	"d"
	.byte	0x1
	.value	0xa2c
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x36
	.string	"n"
	.byte	0x1
	.value	0xa2d
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF24
	.byte	0x1
	.value	0xa2e
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x36
	.string	"multiplier_ptr"
	.byte	0x1
	.value	0xa2f
	.long	0x9c9e
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x36
	.string	"post_shift_ptr"
	.byte	0x1
	.value	0xa30
	.long	0x874
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x36
	.string	"lgup_ptr"
	.byte	0x1
	.value	0xa31
	.long	0x874
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x38
	.string	"mhigh_hi"
	.byte	0x1
	.value	0xa33
	.long	0x4db
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x38
	.string	"mlow_hi"
	.byte	0x1
	.value	0xa33
	.long	0x4db
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x38
	.string	"mhigh_lo"
	.byte	0x1
	.value	0xa34
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x38
	.string	"mlow_lo"
	.byte	0x1
	.value	0xa34
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x38
	.string	"lgup"
	.byte	0x1
	.value	0xa35
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x39
	.long	.LASF56
	.byte	0x1
	.value	0xa35
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"pow"
	.byte	0x1
	.value	0xa36
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"pow2"
	.byte	0x1
	.value	0xa36
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"nl"
	.byte	0x1
	.value	0xa37
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.string	"dummy1"
	.byte	0x1
	.value	0xa37
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x38
	.string	"nh"
	.byte	0x1
	.value	0xa38
	.long	0x4db
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.string	"dummy2"
	.byte	0x1
	.value	0xa38
	.long	0x4db
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x3b
	.long	0x9c6f
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x38
	.string	"ml_lo"
	.byte	0x1
	.value	0xa6e
	.long	0x4ec
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.string	"mh_lo"
	.byte	0x1
	.value	0xa6f
	.long	0x4ec
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x3b
	.long	0x9c8d
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x38
	.string	"mask"
	.byte	0x1
	.value	0xa7d
	.long	0x4ec
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x34
	.long	.LASF34
	.long	0xaded
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15963
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4ec
	.uleb128 0x3d
	.long	0x9d12
	.string	"invert_mod2n"
	.byte	0x1
	.value	0xa8f
	.byte	0x1
	.long	0x4ec
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x36
	.string	"x"
	.byte	0x1
	.value	0xa8d
	.long	0x4ec
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.string	"n"
	.byte	0x1
	.value	0xa8e
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"mask"
	.byte	0x1
	.value	0xa96
	.long	0x4ec
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"y"
	.byte	0x1
	.value	0xa97
	.long	0x4ec
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"nbit"
	.byte	0x1
	.value	0xa98
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x35
	.long	0x9dce
	.byte	0x1
	.string	"expand_mult_highpart_adjust"
	.byte	0x1
	.value	0xab5
	.byte	0x1
	.long	0x9b
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0xab2
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"adj_operand"
	.byte	0x1
	.value	0xab3
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"op0"
	.byte	0x1
	.value	0xab3
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.string	"op1"
	.byte	0x1
	.value	0xab3
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x37
	.long	.LASF50
	.byte	0x1
	.value	0xab3
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x37
	.long	.LASF49
	.byte	0x1
	.value	0xab4
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x38
	.string	"tem"
	.byte	0x1
	.value	0xab6
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"adj_code"
	.byte	0x1
	.value	0xab7
	.long	0xb93
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	0x9f17
	.byte	0x1
	.string	"expand_mult_highpart"
	.byte	0x1
	.value	0xadc
	.byte	0x1
	.long	0x9b
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0xad7
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"op0"
	.byte	0x1
	.value	0xad8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"cnst1"
	.byte	0x1
	.value	0xad9
	.long	0x4ec
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.long	.LASF50
	.byte	0x1
	.value	0xad8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x37
	.long	.LASF49
	.byte	0x1
	.value	0xada
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x37
	.long	.LASF57
	.byte	0x1
	.value	0xadb
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x39
	.long	.LASF33
	.byte	0x1
	.value	0xadd
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"mul_highpart_optab"
	.byte	0x1
	.value	0xade
	.long	0x7684
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.string	"moptab"
	.byte	0x1
	.value	0xadf
	.long	0x7684
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.string	"tem"
	.byte	0x1
	.value	0xae0
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"size"
	.byte	0x1
	.value	0xae1
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"op1"
	.byte	0x1
	.value	0xae2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"wide_op1"
	.byte	0x1
	.value	0xae2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3a
	.string	"try"
	.byte	0x1
	.value	0xb4a
	.long	.L1295
	.uleb128 0x3b
	.long	0x9f06
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x38
	.string	"regop1"
	.byte	0x1
	.value	0xb39
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x34
	.long	.LASF34
	.long	0xadd8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16101
	.byte	0x0
	.uleb128 0x35
	.long	0xa7f7
	.byte	0x1
	.string	"expand_divmod"
	.byte	0x1
	.value	0xb8d
	.byte	0x1
	.long	0x9b
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x36
	.string	"rem_flag"
	.byte	0x1
	.value	0xb88
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0xb89
	.long	0x1650
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0xb8a
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.string	"op0"
	.byte	0x1
	.value	0xb8b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x36
	.string	"op1"
	.byte	0x1
	.value	0xb8b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x37
	.long	.LASF50
	.byte	0x1
	.value	0xb8b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x37
	.long	.LASF49
	.byte	0x1
	.value	0xb8c
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x38
	.string	"compute_mode"
	.byte	0x1
	.value	0xb8e
	.long	0x89b
	.byte	0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x38
	.string	"tquotient"
	.byte	0x1
	.value	0xb8f
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x38
	.string	"quotient"
	.byte	0x1
	.value	0xb90
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x38
	.string	"remainder"
	.byte	0x1
	.value	0xb90
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x38
	.string	"last"
	.byte	0x1
	.value	0xb91
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x38
	.string	"size"
	.byte	0x1
	.value	0xb92
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x38
	.string	"insn"
	.byte	0x1
	.value	0xb93
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x38
	.string	"set"
	.byte	0x1
	.value	0xb93
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x38
	.string	"optab1"
	.byte	0x1
	.value	0xb94
	.long	0x7684
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x38
	.string	"optab2"
	.byte	0x1
	.value	0xb94
	.long	0x7684
	.byte	0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x38
	.string	"op1_is_constant"
	.byte	0x1
	.value	0xb95
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x38
	.string	"op1_is_pow2"
	.byte	0x1
	.value	0xb95
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x39
	.long	.LASF57
	.byte	0x1
	.value	0xb96
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x38
	.string	"extra_cost"
	.byte	0x1
	.value	0xb96
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x3a
	.string	"fail1"
	.byte	0x1
	.value	0xd79
	.long	.L1431
	.uleb128 0x3b
	.long	0xa1b7
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x38
	.string	"mh"
	.byte	0x1
	.value	0xc4d
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x38
	.string	"ml"
	.byte	0x1
	.value	0xc4d
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x39
	.long	.LASF58
	.byte	0x1
	.value	0xc4e
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x39
	.long	.LASF56
	.byte	0x1
	.value	0xc4e
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x38
	.string	"dummy"
	.byte	0x1
	.value	0xc4f
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x38
	.string	"d"
	.byte	0x1
	.value	0xc50
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x3b
	.long	0xa18e
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x38
	.string	"t1"
	.byte	0x1
	.value	0xc87
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x38
	.string	"t2"
	.byte	0x1
	.value	0xc87
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x38
	.string	"t3"
	.byte	0x1
	.value	0xc87
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x38
	.string	"t4"
	.byte	0x1
	.value	0xc87
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.byte	0x0
	.uleb128 0x30
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x38
	.string	"t1"
	.byte	0x1
	.value	0xca2
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x38
	.string	"t2"
	.byte	0x1
	.value	0xca2
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0xa2fe
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x38
	.string	"ml"
	.byte	0x1
	.value	0xcc6
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x38
	.string	"lgup"
	.byte	0x1
	.value	0xcc7
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x39
	.long	.LASF56
	.byte	0x1
	.value	0xcc7
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x38
	.string	"d"
	.byte	0x1
	.value	0xcc8
	.long	0x4db
	.byte	0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x38
	.string	"abs_d"
	.byte	0x1
	.value	0xcc9
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x3b
	.long	0xa241
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x39
	.long	.LASF59
	.byte	0x1
	.value	0xcf0
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x38
	.string	"t1"
	.byte	0x1
	.value	0xcf1
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.byte	0x0
	.uleb128 0x3b
	.long	0xa27c
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x38
	.string	"t1"
	.byte	0x1
	.value	0xcff
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x38
	.string	"t2"
	.byte	0x1
	.value	0xcff
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x38
	.string	"t3"
	.byte	0x1
	.value	0xcff
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -268
	.byte	0x0
	.uleb128 0x3b
	.long	0xa2b7
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x38
	.string	"t1"
	.byte	0x1
	.value	0xd2b
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x38
	.string	"t2"
	.byte	0x1
	.value	0xd2b
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x38
	.string	"t3"
	.byte	0x1
	.value	0xd2b
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.byte	0x0
	.uleb128 0x30
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x38
	.string	"t1"
	.byte	0x1
	.value	0xd49
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x38
	.string	"t2"
	.byte	0x1
	.value	0xd49
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x38
	.string	"t3"
	.byte	0x1
	.value	0xd49
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x38
	.string	"t4"
	.byte	0x1
	.value	0xd49
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0xa424
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x38
	.string	"mh"
	.byte	0x1
	.value	0xd82
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x38
	.string	"ml"
	.byte	0x1
	.value	0xd82
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x39
	.long	.LASF58
	.byte	0x1
	.value	0xd83
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x38
	.string	"lgup"
	.byte	0x1
	.value	0xd83
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x39
	.long	.LASF56
	.byte	0x1
	.value	0xd83
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x38
	.string	"d"
	.byte	0x1
	.value	0xd84
	.long	0x4db
	.byte	0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x3b
	.long	0xa3b2
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x38
	.string	"t1"
	.byte	0x1
	.value	0xd9b
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x38
	.string	"t2"
	.byte	0x1
	.value	0xd9b
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x38
	.string	"t3"
	.byte	0x1
	.value	0xd9b
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x38
	.string	"t4"
	.byte	0x1
	.value	0xd9b
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -220
	.byte	0x0
	.uleb128 0x30
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x38
	.string	"nsign"
	.byte	0x1
	.value	0xdbd
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x38
	.string	"t1"
	.byte	0x1
	.value	0xdbd
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x38
	.string	"t2"
	.byte	0x1
	.value	0xdbd
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x38
	.string	"t3"
	.byte	0x1
	.value	0xdbd
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x38
	.string	"t4"
	.byte	0x1
	.value	0xdbd
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x30
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x38
	.string	"t5"
	.byte	0x1
	.value	0xdca
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0xa452
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x38
	.string	"tem"
	.byte	0x1
	.value	0xdf2
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x39
	.long	.LASF59
	.byte	0x1
	.value	0xdf3
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.byte	0x0
	.uleb128 0x3b
	.long	0xa4d9
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x39
	.long	.LASF60
	.byte	0x1
	.value	0xe01
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x39
	.long	.LASF61
	.byte	0x1
	.value	0xe01
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x38
	.string	"label3"
	.byte	0x1
	.value	0xe01
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x38
	.string	"label4"
	.byte	0x1
	.value	0xe01
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x38
	.string	"label5"
	.byte	0x1
	.value	0xe01
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x39
	.long	.LASF62
	.byte	0x1
	.value	0xe02
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x38
	.string	"tem"
	.byte	0x1
	.value	0xe03
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.byte	0x0
	.uleb128 0x3b
	.long	0xa53c
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x38
	.string	"t1"
	.byte	0x1
	.value	0xe32
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x38
	.string	"t2"
	.byte	0x1
	.value	0xe32
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x38
	.string	"t3"
	.byte	0x1
	.value	0xe32
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x38
	.string	"d"
	.byte	0x1
	.value	0xe33
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x30
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x38
	.string	"lab"
	.byte	0x1
	.value	0xe3f
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0xa55a
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x39
	.long	.LASF59
	.byte	0x1
	.value	0xe67
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.byte	0x0
	.uleb128 0x3b
	.long	0xa5a8
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x39
	.long	.LASF60
	.byte	0x1
	.value	0xe73
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x39
	.long	.LASF61
	.byte	0x1
	.value	0xe73
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x39
	.long	.LASF62
	.byte	0x1
	.value	0xe74
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x38
	.string	"tem"
	.byte	0x1
	.value	0xe74
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x0
	.uleb128 0x3b
	.long	0xa60b
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x38
	.string	"t1"
	.byte	0x1
	.value	0xe94
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x38
	.string	"t2"
	.byte	0x1
	.value	0xe94
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x38
	.string	"t3"
	.byte	0x1
	.value	0xe94
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x38
	.string	"d"
	.byte	0x1
	.value	0xe95
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x30
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x38
	.string	"lab"
	.byte	0x1
	.value	0xea1
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0xa639
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x38
	.string	"tem"
	.byte	0x1
	.value	0xec8
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x39
	.long	.LASF59
	.byte	0x1
	.value	0xec9
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x0
	.uleb128 0x3b
	.long	0xa6c0
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x39
	.long	.LASF60
	.byte	0x1
	.value	0xed8
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x39
	.long	.LASF61
	.byte	0x1
	.value	0xed8
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x38
	.string	"label3"
	.byte	0x1
	.value	0xed8
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x38
	.string	"label4"
	.byte	0x1
	.value	0xed8
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x38
	.string	"label5"
	.byte	0x1
	.value	0xed8
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x39
	.long	.LASF62
	.byte	0x1
	.value	0xed9
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x38
	.string	"tem"
	.byte	0x1
	.value	0xeda
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x3b
	.long	0xa709
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x38
	.string	"d"
	.byte	0x1
	.value	0xf09
	.long	0x4db
	.byte	0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x38
	.string	"ml"
	.byte	0x1
	.value	0xf0a
	.long	0x4ec
	.byte	0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x39
	.long	.LASF58
	.byte	0x1
	.value	0xf0b
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x38
	.string	"t1"
	.byte	0x1
	.value	0xf0c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x3b
	.long	0xa74e
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x38
	.string	"tem"
	.byte	0x1
	.value	0xf23
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x39
	.long	.LASF59
	.byte	0x1
	.value	0xf24
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x38
	.string	"tem"
	.byte	0x1
	.value	0xf2a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0xa7c9
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x38
	.string	"abs_rem"
	.byte	0x1
	.value	0xf3b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.string	"abs_op1"
	.byte	0x1
	.value	0xf3b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"tem"
	.byte	0x1
	.value	0xf3b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"mask"
	.byte	0x1
	.value	0xf3b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x39
	.long	.LASF59
	.byte	0x1
	.value	0xf3c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x38
	.string	"tem"
	.byte	0x1
	.value	0xf42
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.string	"last_div_const"
	.byte	0x1
	.value	0xb97
	.long	0x4db
	.byte	0x5
	.byte	0x3
	.long	last_div_const.16290
	.uleb128 0x34
	.long	.LASF34
	.long	0xadc3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16306
	.byte	0x0
	.uleb128 0x35
	.long	0xa8a5
	.byte	0x1
	.string	"make_tree"
	.byte	0x1
	.value	0xfce
	.byte	0x1
	.long	0x1e2
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x37
	.long	.LASF3
	.byte	0x1
	.value	0xfcc
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"x"
	.byte	0x1
	.value	0xfcd
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0xfcf
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3b
	.long	0xa860
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x38
	.string	"d"
	.byte	0x1
	.value	0xfe3
	.long	0x407b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x30
	.long	.LBB78
	.long	.LBE78
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0xfed
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"units"
	.byte	0x1
	.value	0xfed
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"elt"
	.byte	0x1
	.value	0xfee
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0xfef
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0xa966
	.byte	0x1
	.string	"const_mult_add_overflow_p"
	.byte	0x1
	.value	0x1054
	.byte	0x1
	.long	0x53c6
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x36
	.string	"x"
	.byte	0x1
	.value	0x1051
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"mult"
	.byte	0x1
	.value	0x1051
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"add"
	.byte	0x1
	.value	0x1051
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x1052
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x37
	.long	.LASF49
	.byte	0x1
	.value	0x1053
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x39
	.long	.LASF3
	.byte	0x1
	.value	0x1055
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"mult_type"
	.byte	0x1
	.value	0x1055
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.long	.LASF63
	.byte	0x1
	.value	0x1055
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	.LASF29
	.byte	0x1
	.value	0x1055
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x35
	.long	0xaa17
	.byte	0x1
	.string	"expand_mult_add"
	.byte	0x1
	.value	0x107b
	.byte	0x1
	.long	0x9b
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x36
	.string	"x"
	.byte	0x1
	.value	0x1078
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF50
	.byte	0x1
	.value	0x1078
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"mult"
	.byte	0x1
	.value	0x1078
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.string	"add"
	.byte	0x1
	.value	0x1078
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x1079
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x37
	.long	.LASF49
	.byte	0x1
	.value	0x107a
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x39
	.long	.LASF3
	.byte	0x1
	.value	0x107c
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.long	.LASF63
	.byte	0x1
	.value	0x107d
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	.LASF29
	.byte	0x1
	.value	0x1080
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x35
	.long	0xaa88
	.byte	0x1
	.string	"expand_and"
	.byte	0x1
	.value	0x1092
	.byte	0x1
	.long	0x9b
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x1090
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"op0"
	.byte	0x1
	.value	0x1091
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"op1"
	.byte	0x1
	.value	0x1091
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF50
	.byte	0x1
	.value	0x1091
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.string	"tem"
	.byte	0x1
	.value	0x1093
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	0xac42
	.byte	0x1
	.string	"emit_store_flag"
	.byte	0x1
	.value	0x10b8
	.byte	0x1
	.long	0x9b
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x37
	.long	.LASF50
	.byte	0x1
	.value	0x10b2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x10b3
	.long	0xb93
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"op0"
	.byte	0x1
	.value	0x10b4
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.string	"op1"
	.byte	0x1
	.value	0x10b4
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x10b5
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x37
	.long	.LASF49
	.byte	0x1
	.value	0x10b6
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x37
	.long	.LASF64
	.byte	0x1
	.value	0x10b7
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x39
	.long	.LASF45
	.byte	0x1
	.value	0x10b9
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.string	"icode"
	.byte	0x1
	.value	0x10ba
	.long	0x54ac
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x38
	.string	"compare_mode"
	.byte	0x1
	.value	0x10bb
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.string	"target_mode"
	.byte	0x1
	.value	0x10bc
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.string	"tem"
	.byte	0x1
	.value	0x10bd
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"last"
	.byte	0x1
	.value	0x10be
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.string	"pattern"
	.byte	0x1
	.value	0x10bf
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.string	"comparison"
	.byte	0x1
	.value	0x10bf
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3b
	.long	0xabf5
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x38
	.string	"op00"
	.byte	0x1
	.value	0x1101
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"op01"
	.byte	0x1
	.value	0x1101
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"op0both"
	.byte	0x1
	.value	0x1101
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x3b
	.long	0xac13
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x38
	.string	"op0h"
	.byte	0x1
	.value	0x110e
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x3b
	.long	0xac31
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x38
	.string	"pred"
	.byte	0x1
	.value	0x1148
	.long	0x76ed
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x34
	.long	.LASF34
	.long	0xadae
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17730
	.byte	0x0
	.uleb128 0x35
	.long	0xacfa
	.byte	0x1
	.string	"emit_store_flag_force"
	.byte	0x1
	.value	0x1270
	.byte	0x1
	.long	0x9b
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x37
	.long	.LASF50
	.byte	0x1
	.value	0x126a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF0
	.byte	0x1
	.value	0x126b
	.long	0xb93
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"op0"
	.byte	0x1
	.value	0x126c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.string	"op1"
	.byte	0x1
	.value	0x126c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x126d
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x37
	.long	.LASF49
	.byte	0x1
	.value	0x126e
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x37
	.long	.LASF64
	.byte	0x1
	.value	0x126f
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x38
	.string	"tem"
	.byte	0x1
	.value	0x1271
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.long	.LASF59
	.byte	0x1
	.value	0x1271
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3c
	.long	0xad99
	.string	"do_cmp_and_jump"
	.byte	0x1
	.value	0x129a
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x36
	.string	"arg1"
	.byte	0x1
	.value	0x1297
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"arg2"
	.byte	0x1
	.value	0x1297
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x1298
	.long	0xb93
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x1299
	.long	0x89b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x37
	.long	.LASF59
	.byte	0x1
	.value	0x1297
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3b
	.long	0xad88
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x39
	.long	.LASF61
	.byte	0x1
	.value	0x12a1
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	.LASF34
	.long	0xada9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18178
	.byte	0x0
	.uleb128 0x14
	.long	0xada9
	.long	0x458
	.uleb128 0x15
	.long	0x46e
	.byte	0xf
	.byte	0x0
	.uleb128 0xd
	.long	0xad99
	.uleb128 0xd
	.long	0xad99
	.uleb128 0x14
	.long	0xadc3
	.long	0x458
	.uleb128 0x15
	.long	0x46e
	.byte	0xd
	.byte	0x0
	.uleb128 0xd
	.long	0xadb3
	.uleb128 0x14
	.long	0xadd8
	.long	0x458
	.uleb128 0x15
	.long	0x46e
	.byte	0x14
	.byte	0x0
	.uleb128 0xd
	.long	0xadc8
	.uleb128 0x14
	.long	0xaded
	.long	0x458
	.uleb128 0x15
	.long	0x46e
	.byte	0x11
	.byte	0x0
	.uleb128 0xd
	.long	0xaddd
	.uleb128 0x14
	.long	0xae02
	.long	0x458
	.uleb128 0x15
	.long	0x46e
	.byte	0xb
	.byte	0x0
	.uleb128 0xd
	.long	0xadf2
	.uleb128 0x14
	.long	0xae17
	.long	0x458
	.uleb128 0x15
	.long	0x46e
	.byte	0xc
	.byte	0x0
	.uleb128 0xd
	.long	0xae07
	.uleb128 0xd
	.long	0xaddd
	.uleb128 0x14
	.long	0xae31
	.long	0x458
	.uleb128 0x15
	.long	0x46e
	.byte	0x15
	.byte	0x0
	.uleb128 0xd
	.long	0xae21
	.uleb128 0xd
	.long	0xad99
	.uleb128 0xd
	.long	0x85f
	.uleb128 0x2e
	.string	"sdiv_pow2_cheap"
	.byte	0x1
	.byte	0x42
	.long	0x460
	.byte	0x5
	.byte	0x3
	.long	sdiv_pow2_cheap
	.uleb128 0x2e
	.string	"smod_pow2_cheap"
	.byte	0x1
	.byte	0x42
	.long	0x460
	.byte	0x5
	.byte	0x3
	.long	smod_pow2_cheap
	.uleb128 0x2e
	.string	"add_cost"
	.byte	0x1
	.byte	0x63
	.long	0x460
	.byte	0x5
	.byte	0x3
	.long	add_cost
	.uleb128 0x2e
	.string	"negate_cost"
	.byte	0x1
	.byte	0x63
	.long	0x460
	.byte	0x5
	.byte	0x3
	.long	negate_cost
	.uleb128 0x2e
	.string	"zero_cost"
	.byte	0x1
	.byte	0x63
	.long	0x460
	.byte	0x5
	.byte	0x3
	.long	zero_cost
	.uleb128 0x14
	.long	0xaed0
	.long	0x460
	.uleb128 0x15
	.long	0x46e
	.byte	0x3f
	.byte	0x0
	.uleb128 0x2e
	.string	"shift_cost"
	.byte	0x1
	.byte	0x64
	.long	0xaec0
	.byte	0x5
	.byte	0x3
	.long	shift_cost
	.uleb128 0x2e
	.string	"shiftadd_cost"
	.byte	0x1
	.byte	0x65
	.long	0xaec0
	.byte	0x5
	.byte	0x3
	.long	shiftadd_cost
	.uleb128 0x2e
	.string	"shiftsub_cost"
	.byte	0x1
	.byte	0x66
	.long	0xaec0
	.byte	0x5
	.byte	0x3
	.long	shiftsub_cost
	.uleb128 0x14
	.long	0xaf2e
	.long	0x460
	.uleb128 0x15
	.long	0x46e
	.byte	0x35
	.byte	0x0
	.uleb128 0x2e
	.string	"mul_cost"
	.byte	0x1
	.byte	0x67
	.long	0xaf1e
	.byte	0x5
	.byte	0x3
	.long	mul_cost
	.uleb128 0x2e
	.string	"div_cost"
	.byte	0x1
	.byte	0x68
	.long	0xaf1e
	.byte	0x5
	.byte	0x3
	.long	div_cost
	.uleb128 0x2e
	.string	"mul_widen_cost"
	.byte	0x1
	.byte	0x69
	.long	0xaf1e
	.byte	0x5
	.byte	0x3
	.long	mul_widen_cost
	.uleb128 0x2e
	.string	"mul_highpart_cost"
	.byte	0x1
	.byte	0x6a
	.long	0xaf1e
	.byte	0x5
	.byte	0x3
	.long	mul_highpart_cost
	.uleb128 0x41
	.string	"target_flags"
	.byte	0xe
	.byte	0x21
	.long	0x460
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"mips_tune"
	.byte	0xe
	.byte	0xa4
	.long	0x2cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"mips_abi"
	.byte	0xe
	.value	0x3ca
	.long	0x460
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.long	0xafe1
	.long	0xae4
	.uleb128 0x15
	.long	0x46e
	.byte	0x35
	.byte	0x0
	.uleb128 0x43
	.long	.LASF6
	.byte	0x4
	.byte	0x34
	.long	0xafee
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xafd1
	.uleb128 0x14
	.long	0xb003
	.long	0x483
	.uleb128 0x15
	.long	0x46e
	.byte	0x35
	.byte	0x0
	.uleb128 0x41
	.string	"mode_size"
	.byte	0x4
	.byte	0x59
	.long	0xb016
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xaff3
	.uleb128 0x14
	.long	0xb02b
	.long	0x494
	.uleb128 0x15
	.long	0x46e
	.byte	0x35
	.byte	0x0
	.uleb128 0x41
	.string	"mode_bitsize"
	.byte	0x4
	.byte	0x69
	.long	0xb041
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xb01b
	.uleb128 0x14
	.long	0xb056
	.long	0x4ec
	.uleb128 0x15
	.long	0x46e
	.byte	0x35
	.byte	0x0
	.uleb128 0x41
	.string	"mode_mask_array"
	.byte	0x4
	.byte	0x73
	.long	0xb06f
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xb046
	.uleb128 0x41
	.string	"mode_wider_mode"
	.byte	0x4
	.byte	0x84
	.long	0xb08d
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xaff3
	.uleb128 0x14
	.long	0xb0a2
	.long	0x89b
	.uleb128 0x15
	.long	0x46e
	.byte	0x8
	.byte	0x0
	.uleb128 0x41
	.string	"class_narrowest_mode"
	.byte	0x4
	.byte	0xa6
	.long	0xb0c0
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xb092
	.uleb128 0x41
	.string	"byte_mode"
	.byte	0x4
	.byte	0xac
	.long	0x89b
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"word_mode"
	.byte	0x4
	.byte	0xad
	.long	0x89b
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.long	0xb0fb
	.long	0x458
	.uleb128 0x15
	.long	0x46e
	.byte	0xa2
	.byte	0x0
	.uleb128 0x41
	.string	"rtx_class"
	.byte	0x3
	.byte	0x3f
	.long	0xb10e
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xb0eb
	.uleb128 0x42
	.string	"generating_concat_p"
	.byte	0x3
	.value	0x53e
	.long	0x460
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.long	0xb141
	.long	0x9b
	.uleb128 0x15
	.long	0x46e
	.byte	0x80
	.byte	0x0
	.uleb128 0x42
	.string	"const_int_rtx"
	.byte	0x3
	.value	0x69e
	.long	0xb131
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"const_true_rtx"
	.byte	0x3
	.value	0x6a4
	.long	0x9b
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_force_mem"
	.byte	0xf
	.value	0x106
	.long	0x460
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_expensive_optimizations"
	.byte	0xf
	.value	0x141
	.long	0x460
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_trapv"
	.byte	0xf
	.value	0x26e
	.long	0x460
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.long	0xb1d7
	.long	0x7684
	.uleb128 0x15
	.long	0x46e
	.byte	0x32
	.byte	0x0
	.uleb128 0x41
	.string	"optab_table"
	.byte	0xc
	.byte	0xa0
	.long	0xb1c7
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.long	0xb1fc
	.long	0x54ac
	.uleb128 0x15
	.long	0x46e
	.byte	0xa2
	.byte	0x0
	.uleb128 0x41
	.string	"setcc_gen_code"
	.byte	0xc
	.byte	0xf8
	.long	0xb1ec
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"volatile_ok"
	.byte	0xb
	.byte	0x92
	.long	0x460
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.long	0xb234
	.long	0x77dc
	.uleb128 0x44
	.byte	0x0
	.uleb128 0x43
	.long	.LASF31
	.byte	0xb
	.byte	0xfe
	.long	0xb241
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xb229
	.uleb128 0x45
	.long	.LASF32
	.byte	0x10
	.value	0x176
	.long	0xb254
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x7f69
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x4
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x45
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
	.long	0x184
	.value	0x2
	.long	.Ldebug_info0
	.long	0xb25a
	.long	0x848c
	.string	"init_expmed"
	.long	0x8553
	.string	"negate_rtx"
	.long	0x85a0
	.string	"mode_for_extraction"
	.long	0x8619
	.string	"store_bit_field"
	.long	0x8b45
	.string	"extract_bit_field"
	.long	0x936c
	.string	"expand_inc"
	.long	0x93bb
	.string	"expand_dec"
	.long	0x940a
	.string	"expand_shift"
	.long	0x986d
	.string	"expand_mult"
	.long	0x9a9c
	.string	"ceil_log2"
	.long	0x9d12
	.string	"expand_mult_highpart_adjust"
	.long	0x9dce
	.string	"expand_mult_highpart"
	.long	0x9f17
	.string	"expand_divmod"
	.long	0xa7f7
	.string	"make_tree"
	.long	0xa8a5
	.string	"const_mult_add_overflow_p"
	.long	0xa966
	.string	"expand_mult_add"
	.long	0xaa17
	.string	"expand_and"
	.long	0xaa88
	.string	"emit_store_flag"
	.long	0xac42
	.string	"emit_store_flag_force"
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
	.string	"total_size"
.LASF37:
	.string	"bitpos"
.LASF52:
	.string	"bitpos_rtx"
.LASF29:
	.string	"result"
.LASF10:
	.string	"lang_flag_0"
.LASF11:
	.string	"lang_flag_1"
.LASF12:
	.string	"lang_flag_2"
.LASF16:
	.string	"lang_flag_6"
.LASF17:
	.string	"lang_flag_7"
.LASF55:
	.string	"amount"
.LASF7:
	.string	"mem_attrs"
.LASF60:
	.string	"label1"
.LASF61:
	.string	"label2"
.LASF2:
	.string	"common"
.LASF51:
	.string	"bitsize_rtx"
.LASF27:
	.string	"lang_specific"
.LASF62:
	.string	"adjusted_op0"
.LASF13:
	.string	"lang_flag_3"
.LASF28:
	.string	"function"
.LASF4:
	.string	"unsigned int"
.LASF46:
	.string	"bitsdone"
.LASF57:
	.string	"max_cost"
.LASF41:
	.string	"maxmode"
.LASF48:
	.string	"word_offset"
.LASF21:
	.string	"abstract_origin"
.LASF35:
	.string	"bitsize"
.LASF25:
	.string	"pointer_depth"
.LASF33:
	.string	"wider_mode"
.LASF64:
	.string	"normalizep"
.LASF63:
	.string	"add_type"
.LASF59:
	.string	"label"
.LASF26:
	.string	"user_align"
.LASF32:
	.string	"lang_hooks"
.LASF22:
	.string	"size_unit"
.LASF47:
	.string	"thissize"
.LASF19:
	.string	"value"
.LASF39:
	.string	"bit_offset"
.LASF53:
	.string	"xspec_target"
.LASF50:
	.string	"target"
.LASF24:
	.string	"precision"
.LASF58:
	.string	"pre_shift"
.LASF3:
	.string	"type"
.LASF14:
	.string	"lang_flag_4"
.LASF15:
	.string	"lang_flag_5"
.LASF20:
	.string	"abstract_flag"
.LASF0:
	.string	"code"
.LASF6:
	.string	"mode_class"
.LASF49:
	.string	"unsignedp"
.LASF18:
	.string	"ht_identifier"
.LASF42:
	.string	"save_volatile_ok"
.LASF44:
	.string	"total_bits"
.LASF8:
	.string	"offset"
.LASF30:
	.string	"insn_code"
.LASF45:
	.string	"subtarget"
.LASF34:
	.string	"__FUNCTION__"
.LASF9:
	.string	"built_in_class"
.LASF43:
	.string	"bestmode"
.LASF1:
	.string	"mode"
.LASF38:
	.string	"byte_offset"
.LASF56:
	.string	"post_shift"
.LASF31:
	.string	"insn_data"
.LASF5:
	.string	"_IO_FILE"
.LASF23:
	.string	"attributes"
.LASF40:
	.string	"xbitpos"
.LASF54:
	.string	"xspec_target_subreg"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
