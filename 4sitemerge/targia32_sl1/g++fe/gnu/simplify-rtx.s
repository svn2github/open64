	.file	"simplify-rtx.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	neg_const_int, @function
neg_const_int:
.LFB15:
	.file 1 "../../../kg++fe/gnu/simplify-rtx.c"
	.loc 1 97 0
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
	.loc 1 98 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	negl	%edx
	adcl	$0, %ecx
	negl	%ecx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	gen_int_mode@PLT
	.loc 1 99 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	neg_const_int, .-neg_const_int
.globl simplify_gen_binary
	.type	simplify_gen_binary, @function
simplify_gen_binary:
.LFB16:
	.loc 1 110 0
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
	.loc 1 114 0
	movl	8(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$99, %al
	jne	.L4
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_commutative_operands_p@PLT
	testl	%eax, %eax
	je	.L4
	.loc 1 116 0
	movl	16(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, 20(%ebp)
.L4:
	.loc 1 119 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_binary_operation@PLT
	movl	%eax, -8(%ebp)
	.loc 1 120 0
	cmpl	$0, -8(%ebp)
	je	.L7
	.loc 1 121 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L9
.L7:
	.loc 1 126 0
	cmpl	$85, 8(%ebp)
	je	.L10
	cmpl	$86, 8(%ebp)
	jne	.L12
.L10:
	.loc 1 128 0
	movl	$1, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_plus_minus
	movl	%eax, -8(%ebp)
	.loc 1 129 0
	cmpl	$0, -8(%ebp)
	je	.L12
	.loc 1 130 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L9
.L12:
	.loc 1 133 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -24(%ebp)
.L9:
	movl	-24(%ebp), %eax
	.loc 1 134 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	simplify_gen_binary, .-simplify_gen_binary
.globl avoid_constant_pool_reference
	.type	avoid_constant_pool_reference, @function
avoid_constant_pool_reference:
.LFB17:
	.loc 1 141 0
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
	.loc 1 145 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L16
	.loc 1 146 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L18
.L16:
	.loc 1 147 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 149 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$145, %ax
	jne	.L19
	.loc 1 150 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L19:
	.loc 1 152 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L21
	movl	-12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L23
.L21:
	.loc 1 154 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L18
.L23:
	.loc 1 156 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pool_constant@PLT
	movl	%eax, -16(%ebp)
	.loc 1 157 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pool_mode@PLT
	movl	%eax, -8(%ebp)
	.loc 1 162 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-8(%ebp), %eax
	je	.L24
	.loc 1 164 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	$0, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_subreg@PLT
	movl	%eax, -16(%ebp)
	.loc 1 165 0
	cmpl	$0, -16(%ebp)
	je	.L26
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L28
.L26:
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L28:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L18
.L24:
	.loc 1 168 0
	movl	-16(%ebp), %eax
	movl	%eax, -28(%ebp)
.L18:
	movl	-28(%ebp), %eax
	.loc 1 169 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	avoid_constant_pool_reference, .-avoid_constant_pool_reference
.globl simplify_gen_unary
	.type	simplify_gen_unary, @function
simplify_gen_unary:
.LFB18:
	.loc 1 180 0
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
	.loc 1 184 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_unary_operation@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L31
	.loc 1 185 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L33
.L31:
	.loc 1 187 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -24(%ebp)
.L33:
	movl	-24(%ebp), %eax
	.loc 1 188 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	simplify_gen_unary, .-simplify_gen_unary
.globl simplify_gen_ternary
	.type	simplify_gen_ternary, @function
simplify_gen_ternary:
.LFB19:
	.loc 1 197 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%ebx
.LCFI18:
	subl	$52, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 201 0
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
	call	simplify_ternary_operation@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L36
	.loc 1 203 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L38
.L36:
	.loc 1 205 0
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
	call	gen_rtx_fmt_eee@PLT
	movl	%eax, -24(%ebp)
.L38:
	movl	-24(%ebp), %eax
	.loc 1 206 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	simplify_gen_ternary, .-simplify_gen_ternary
.globl simplify_gen_relational
	.type	simplify_gen_relational, @function
simplify_gen_relational:
.LFB20:
	.loc 1 218 0
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
	.loc 1 221 0
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_relational_operation@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L41
	.loc 1 222 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L43
.L41:
	.loc 1 225 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	.L44
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_commutative_operands_p@PLT
	testl	%eax, %eax
	je	.L44
	.loc 1 226 0
	movl	20(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 24(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_condition@PLT
	movl	%eax, 8(%ebp)
.L44:
	.loc 1 229 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$84, %ax
	jne	.L47
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	24(%ebp), %eax
	jne	.L47
	.loc 1 230 0
	movl	20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 24(%ebp)
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 20(%ebp)
.L47:
	.loc 1 233 0
	cmpl	$112, 8(%ebp)
	jne	.L50
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	24(%ebp), %eax
	jne	.L50
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L50
	.loc 1 235 0
	movl	20(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L43
.L50:
	.loc 1 236 0
	cmpl	$113, 8(%ebp)
	jne	.L54
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	24(%ebp), %eax
	jne	.L54
.LBB2:
	.loc 1 239 0
	movl	$0, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	reversed_comparison_code@PLT
	movl	%eax, -8(%ebp)
	.loc 1 240 0
	cmpl	$0, -8(%ebp)
	je	.L54
	.loc 1 242 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 243 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 244 0
	movl	20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 24(%ebp)
	.loc 1 245 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 20(%ebp)
.L54:
.LBE2:
	.loc 1 250 0
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_commutative_operands_p@PLT
	testl	%eax, %eax
	je	.L58
	.loc 1 251 0
	movl	20(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 24(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_condition@PLT
	movl	%eax, 8(%ebp)
.L58:
	.loc 1 253 0
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -24(%ebp)
.L43:
	movl	-24(%ebp), %eax
	.loc 1 254 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	simplify_gen_relational, .-simplify_gen_relational
.globl simplify_replace_rtx
	.type	simplify_replace_rtx, @function
simplify_replace_rtx:
.LFB21:
	.loc 1 264 0
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
	subl	$108, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 265 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -60(%ebp)
	.loc 1 266 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	.loc 1 272 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L62
	.loc 1 273 0
	movl	16(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L64
.L62:
	.loc 1 275 0
	movl	-60(%ebp), %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$49, %eax
	movl	%eax, -96(%ebp)
	cmpl	$71, -96(%ebp)
	ja	.L65
	movl	-96(%ebp), %eax
	sall	$2, %eax
	movl	.L72@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L72:
	.long	.L66@GOTOFF
	.long	.L67@GOTOFF
	.long	.L68@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L69@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L68@GOTOFF
	.long	.L67@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L70@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L65@GOTOFF
	.long	.L71@GOTOFF
	.text
.L66:
.LBB3:
	.loc 1 279 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	.loc 1 281 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L73
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%eax, -88(%ebp)
	jmp	.L75
.L73:
	movl	16(%ebp), %eax
	movl	%eax, -88(%ebp)
.L75:
	movl	-88(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 283 0
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_gen_unary@PLT
	movl	%eax, -92(%ebp)
	jmp	.L64
.L67:
.LBE3:
	.loc 1 288 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_gen_binary@PLT
	movl	%eax, -92(%ebp)
	jmp	.L64
.L69:
.LBB4:
	.loc 1 296 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L76
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -84(%ebp)
	jmp	.L78
.L76:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -84(%ebp)
.L78:
	movl	-84(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 297 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%eax, -40(%ebp)
	.loc 1 298 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%eax, -36(%ebp)
	.loc 1 300 0
	cmpl	$0, -44(%ebp)
	jne	.L79
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L81
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
	jmp	.L83
.L81:
	movl	-36(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
.L83:
	movl	-76(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L84
.L79:
	movl	-44(%ebp), %eax
	movl	%eax, -80(%ebp)
.L84:
	movl	-36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_gen_relational@PLT
	movl	%eax, -92(%ebp)
	jmp	.L64
.L68:
.LBE4:
.LBB5:
	.loc 1 313 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 314 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%eax, -28(%ebp)
	.loc 1 316 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%eax, -72(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%eax, -68(%ebp)
	cmpl	$0, -32(%ebp)
	jne	.L85
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -64(%ebp)
	jmp	.L87
.L85:
	movl	-32(%ebp), %eax
	movl	%eax, -64(%ebp)
.L87:
	movl	-72(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_gen_ternary@PLT
	movl	%eax, -92(%ebp)
	jmp	.L64
.L71:
.LBE5:
	.loc 1 328 0
	cmpl	$73, -60(%ebp)
	jne	.L88
.LBB6:
	.loc 1 331 0
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edi
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	simplify_gen_subreg@PLT
	movl	%eax, -24(%ebp)
	.loc 1 336 0
	cmpl	$0, -24(%ebp)
	je	.L88
	.loc 1 337 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%ebp)
.L88:
.LBE6:
	.loc 1 339 0
	movl	8(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L64
.L70:
	.loc 1 342 0
	cmpl	$76, -60(%ebp)
	jne	.L91
	.loc 1 343 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_equiv_address_nv@PLT
	movl	%eax, -92(%ebp)
	jmp	.L64
.L91:
	.loc 1 346 0
	cmpl	$145, -60(%ebp)
	jne	.L93
.LBB7:
	.loc 1 348 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%eax, -20(%ebp)
	.loc 1 349 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%eax, -16(%ebp)
	.loc 1 352 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	jne	.L95
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L95
	.loc 1 353 0
	movl	-16(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L64
.L95:
	.loc 1 355 0
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$145, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -92(%ebp)
	jmp	.L64
.L93:
.LBE7:
	.loc 1 357 0
	cmpl	$71, -60(%ebp)
	jne	.L98
	.loc 1 359 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L98
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L98
	.loc 1 360 0
	movl	16(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L64
.L98:
	.loc 1 363 0
	movl	8(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L64
.L65:
	.loc 1 366 0
	movl	8(%ebp), %eax
	movl	%eax, -92(%ebp)
.L64:
	movl	-92(%ebp), %eax
	.loc 1 369 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	simplify_replace_rtx, .-simplify_replace_rtx
	.section	.rodata
	.type	__FUNCTION__.13786, @object
	.size	__FUNCTION__.13786, 25
__FUNCTION__.13786:
	.string	"simplify_unary_operation"
	.align 4
.LC0:
	.string	"../../../kg++fe/gnu/simplify-rtx.c"
	.text
.globl simplify_unary_operation
	.type	simplify_unary_operation, @function
simplify_unary_operation:
.LFB22:
	.loc 1 380 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	pushl	%edi
.LCFI32:
	pushl	%esi
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$460, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 381 0
	movl	12(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -64(%ebp)
	.loc 1 382 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	avoid_constant_pool_reference@PLT
	movl	%eax, -60(%ebp)
	.loc 1 384 0
	cmpl	$155, 8(%ebp)
	jne	.L104
	.loc 1 386 0
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$7, %eax
	je	.L106
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	je	.L106
	.loc 1 387 0
	leal	__FUNCTION__.13786@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$387, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L106:
	.loc 1 388 0
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L109
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$7, %eax
	je	.L109
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	je	.L109
	movl	12(%ebp), %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	je	.L109
	.loc 1 391 0
	leal	__FUNCTION__.13786@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$391, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L109:
	.loc 1 392 0
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L114
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$7, %eax
	je	.L116
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L114
.L116:
	movl	12(%ebp), %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	%eax, %ecx
	je	.L114
	.loc 1 395 0
	leal	__FUNCTION__.13786@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$395, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L114:
	.loc 1 396 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L119
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L119
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	jne	.L104
.L119:
.LBB8:
	.loc 1 399 0
	movl	12(%ebp), %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	.loc 1 400 0
	movl	12(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-56(%ebp)
	movl	%eax, -52(%ebp)
	.loc 1 401 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	rtvec_alloc@PLT
	movl	%eax, -48(%ebp)
	.loc 1 404 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L122
	.loc 1 405 0
	movl	$0, -44(%ebp)
	jmp	.L124
.L125:
	.loc 1 406 0
	movl	-44(%ebp), %ecx
	movl	-48(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 4(%edx,%ecx,4)
	.loc 1 405 0
	addl	$1, -44(%ebp)
.L124:
	movl	-44(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jb	.L125
	jmp	.L127
.L122:
.LBB9:
	.loc 1 409 0
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	.loc 1 410 0
	movl	-40(%ebp), %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	.loc 1 411 0
	movl	-40(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-36(%ebp)
	movl	%eax, -32(%ebp)
	.loc 1 413 0
	movl	-32(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jae	.L128
	movl	-52(%ebp), %eax
	movl	$0, %edx
	divl	-32(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L130
.L128:
	.loc 1 414 0
	leal	__FUNCTION__.13786@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$414, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L130:
	.loc 1 415 0
	movl	$0, -44(%ebp)
	jmp	.L131
.L132:
	.loc 1 416 0
	movl	-44(%ebp), %esi
	movl	-60(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-44(%ebp), %eax
	movl	$0, %edx
	divl	-32(%ebp)
	movl	%edx, %eax
	movl	4(%ecx,%eax,4), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 4(%eax,%esi,4)
	.loc 1 415 0
	addl	$1, -44(%ebp)
.L131:
	movl	-44(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jb	.L132
.L127:
.LBE9:
	.loc 1 418 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_CONST_VECTOR@PLT
	movl	%eax, -404(%ebp)
	jmp	.L133
.L104:
.LBE8:
	.loc 1 426 0
	cmpl	$135, 8(%ebp)
	jne	.L134
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L134
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L137
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L134
.L137:
.LBB10:
	.loc 1 432 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L139
	.loc 1 433 0
	movl	-60(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	cmpl	$0, -124(%ebp)
	jns	.L141
	movl	$-1, -400(%ebp)
	movl	$-1, -396(%ebp)
	jmp	.L143
.L141:
	movl	$0, -400(%ebp)
	movl	$0, -396(%ebp)
.L143:
	movl	-400(%ebp), %eax
	movl	-396(%ebp), %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	jmp	.L144
.L139:
	.loc 1 435 0
	movl	-60(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	-60(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
.L144:
	.loc 1 437 0
	movl	-128(%ebp), %esi
	movl	-124(%ebp), %edi
	movl	$0, 24(%esp)
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	real_from_integer@PLT
	.loc 1 438 0
	leal	-216(%ebp), %edx
	movl	-176(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	real_value_truncate@PLT
	subl	$4, %esp
	movl	-216(%ebp), %eax
	movl	%eax, -176(%ebp)
	movl	-212(%ebp), %eax
	movl	%eax, -172(%ebp)
	movl	-208(%ebp), %eax
	movl	%eax, -168(%ebp)
	movl	-204(%ebp), %eax
	movl	%eax, -164(%ebp)
	movl	-200(%ebp), %eax
	movl	%eax, -160(%ebp)
	movl	-196(%ebp), %eax
	movl	%eax, -156(%ebp)
	.loc 1 439 0
	movl	12(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-176(%ebp), %eax
	movl	%eax, (%esp)
	movl	-172(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, 20(%esp)
	call	const_double_from_real_value@PLT
	movl	%eax, -404(%ebp)
	jmp	.L133
.L134:
.LBE10:
	.loc 1 441 0
	cmpl	$137, 8(%ebp)
	jne	.L145
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L145
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L148
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L145
.L148:
.LBB11:
	.loc 1 448 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L150
	.loc 1 449 0
	movl	-60(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	cmpl	$0, -108(%ebp)
	jns	.L152
	movl	$-1, -392(%ebp)
	movl	$-1, -388(%ebp)
	jmp	.L154
.L152:
	movl	$0, -392(%ebp)
	movl	$0, -388(%ebp)
.L154:
	movl	-392(%ebp), %esi
	movl	-388(%ebp), %edi
	movl	%esi, -120(%ebp)
	movl	%edi, -116(%ebp)
	jmp	.L155
.L150:
	.loc 1 451 0
	movl	-60(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	movl	-60(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
.L155:
	.loc 1 453 0
	cmpl	$0, 20(%ebp)
	jne	.L156
	.loc 1 457 0
	cmpl	$0, -116(%ebp)
	jns	.L160
	.loc 1 458 0
	movl	$0, -404(%ebp)
	jmp	.L133
.L156:
	.loc 1 460 0
	movl	20(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$127, %ax
	ja	.L160
	.loc 1 463 0
	movl	$0, -120(%ebp)
	movl	$0, -116(%ebp)
	movl	20(%ebp), %edx
	movl	mode_mask_array@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	%esi, -384(%ebp)
	movl	%edi, -380(%ebp)
	movl	-112(%ebp), %esi
	movl	-108(%ebp), %edi
	movl	-384(%ebp), %eax
	andl	%esi, %eax
	movl	-380(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
.L160:
	.loc 1 465 0
	movl	-112(%ebp), %esi
	movl	-108(%ebp), %edi
	movl	$1, 24(%esp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	real_from_integer@PLT
	.loc 1 466 0
	leal	-248(%ebp), %edx
	movl	-176(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	real_value_truncate@PLT
	subl	$4, %esp
	movl	-248(%ebp), %eax
	movl	%eax, -176(%ebp)
	movl	-244(%ebp), %eax
	movl	%eax, -172(%ebp)
	movl	-240(%ebp), %eax
	movl	%eax, -168(%ebp)
	movl	-236(%ebp), %eax
	movl	%eax, -164(%ebp)
	movl	-232(%ebp), %eax
	movl	%eax, -160(%ebp)
	movl	-228(%ebp), %eax
	movl	%eax, -156(%ebp)
	.loc 1 467 0
	movl	12(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-176(%ebp), %eax
	movl	%eax, (%esp)
	movl	-172(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, 20(%esp)
	call	const_double_from_real_value@PLT
	movl	%eax, -404(%ebp)
	jmp	.L133
.L145:
.LBE11:
	.loc 1 470 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L162
	cmpl	$64, -64(%ebp)
	ja	.L162
	cmpl	$0, -64(%ebp)
	je	.L162
.LBB12:
	.loc 1 473 0
	movl	-60(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	.loc 1 476 0
	movl	8(%ebp), %edi
	subl	$87, %edi
	movl	%edi, -408(%ebp)
	cmpl	$74, -408(%ebp)
	ja	.L166
	movl	-408(%ebp), %eax
	sall	$2, %eax
	movl	.L175@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L175:
	.long	.L167@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L168@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L169@GOTOFF
	.long	.L170@GOTOFF
	.long	.L171@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L173@GOTOFF
	.long	.L172@GOTOFF
	.long	.L174@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L166@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.text
.L168:
	.loc 1 479 0
	movl	-104(%ebp), %eax
	notl	%eax
	movl	%eax, -96(%ebp)
	movl	-100(%ebp), %eax
	notl	%eax
	movl	%eax, -92(%ebp)
	.loc 1 480 0
	jmp	.L176
.L167:
	.loc 1 483 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	.loc 1 484 0
	jmp	.L176
.L173:
	.loc 1 487 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%edx, %edx
	sarl	$31, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	xorl	-104(%ebp), %ecx
	movl	%ecx, -96(%ebp)
	movl	%edx, %ecx
	xorl	-100(%ebp), %ecx
	movl	%ecx, -92(%ebp)
	subl	%eax, -96(%ebp)
	sbbl	%edx, -92(%ebp)
	.loc 1 488 0
	jmp	.L176
.L174:
	.loc 1 493 0
	movl	12(%ebp), %edx
	movl	mode_mask_array@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	%esi, -376(%ebp)
	movl	%edi, -372(%ebp)
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %edi
	movl	-376(%ebp), %eax
	andl	%esi, %eax
	movl	-372(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	.loc 1 494 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	%esi, %eax
	andl	-104(%ebp), %eax
	movl	%edi, %edx
	andl	-100(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	exact_log2_wide@PLT
	addl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	.loc 1 495 0
	jmp	.L176
.L171:
	.loc 1 498 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	.loc 1 499 0
	jmp	.L176
.L170:
	.loc 1 504 0
	cmpl	$0, 20(%ebp)
	jne	.L177
	.loc 1 505 0
	leal	__FUNCTION__.13786@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$505, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L177:
	.loc 1 506 0
	movl	20(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$64, %ax
	jne	.L179
	.loc 1 511 0
	movl	20(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	cmpl	-64(%ebp), %eax
	je	.L181
	.loc 1 512 0
	leal	__FUNCTION__.13786@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$512, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L181:
	.loc 1 513 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	jmp	.L176
.L179:
	.loc 1 515 0
	movl	20(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$63, %ax
	ja	.L184
	.loc 1 516 0
	movl	20(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L283
	movl	%esi, %edi
	xorl	%esi, %esi
.L283:
	movl	%esi, %eax
	notl	%eax
	movl	%edi, %edx
	notl	%edx
	movl	%eax, %ecx
	andl	-104(%ebp), %ecx
	movl	%ecx, -96(%ebp)
	movl	%edx, %eax
	andl	-100(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L176
.L184:
	.loc 1 518 0
	movl	$0, -404(%ebp)
	jmp	.L133
.L169:
	.loc 1 522 0
	cmpl	$0, 20(%ebp)
	jne	.L186
	.loc 1 523 0
	movl	12(%ebp), %eax
	movl	%eax, 20(%ebp)
.L186:
	.loc 1 524 0
	movl	20(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$64, %ax
	jne	.L188
	.loc 1 529 0
	movl	20(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	cmpl	-64(%ebp), %eax
	je	.L190
	.loc 1 530 0
	leal	__FUNCTION__.13786@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$530, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L190:
	.loc 1 531 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	jmp	.L176
.L188:
	.loc 1 533 0
	movl	20(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$63, %ax
	ja	.L193
	.loc 1 535 0
	movl	20(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L281
	movl	%esi, %edi
	xorl	%esi, %esi
.L281:
	movl	%esi, %eax
	notl	%eax
	movl	%edi, %edx
	notl	%edx
	movl	%eax, %ecx
	andl	-104(%ebp), %ecx
	movl	%ecx, -96(%ebp)
	movl	%edx, %eax
	andl	-100(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 537 0
	movl	20(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	leal	-1(%eax), %ecx
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	shrdl	%edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	.L282
	movl	%edx, %eax
	sarl	$31, %edx
.L282:
	andl	$1, %eax
	testb	%al, %al
	je	.L176
	.loc 1 539 0
	movl	20(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L280
	movl	%eax, %edx
	xorl	%eax, %eax
.L280:
	subl	%eax, -96(%ebp)
	sbbl	%edx, -92(%ebp)
	jmp	.L176
.L193:
	.loc 1 542 0
	movl	$0, -404(%ebp)
	jmp	.L133
.L172:
	.loc 1 550 0
	movl	$0, -404(%ebp)
	jmp	.L133
.L166:
	.loc 1 553 0
	leal	__FUNCTION__.13786@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$553, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L176:
	.loc 1 556 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	trunc_int_for_mode@PLT
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	.loc 1 558 0
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -404(%ebp)
	jmp	.L133
.L162:
.LBE12:
	.loc 1 563 0
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L197
	cmpl	$128, -64(%ebp)
	ja	.L197
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L200
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L197
.L200:
.LBB13:
	.loc 1 571 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L202
	.loc 1 572 0
	movl	-60(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-60(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	jmp	.L204
.L202:
	.loc 1 574 0
	movl	-60(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	testl	%edx, %edx
	jns	.L205
	movl	$-1, -368(%ebp)
	movl	$-1, -364(%ebp)
	jmp	.L207
.L205:
	movl	$0, -368(%ebp)
	movl	$0, -364(%ebp)
.L207:
	movl	-368(%ebp), %eax
	movl	-364(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
.L204:
	.loc 1 576 0
	movl	8(%ebp), %edx
	subl	$87, %edx
	movl	%edx, -412(%ebp)
	cmpl	$54, -412(%ebp)
	ja	.L208
	movl	-412(%ebp), %eax
	sall	$2, %eax
	movl	.L217@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L217:
	.long	.L209@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L210@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L211@GOTOFF
	.long	.L212@GOTOFF
	.long	.L213@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L208@GOTOFF
	.long	.L214@GOTOFF
	.long	.L215@GOTOFF
	.long	.L216@GOTOFF
	.text
.L210:
	.loc 1 579 0
	movl	-88(%ebp), %ecx
	movl	-84(%ebp), %esi
	movl	%ecx, %eax
	notl	%eax
	movl	%esi, %edx
	notl	%edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	.loc 1 580 0
	movl	-80(%ebp), %ecx
	movl	-76(%ebp), %esi
	movl	%ecx, %eax
	notl	%eax
	movl	%esi, %edx
	notl	%edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 581 0
	jmp	.L218
.L209:
	.loc 1 584 0
	leal	-152(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-144(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	neg_double@PLT
	.loc 1 585 0
	jmp	.L218
.L214:
	.loc 1 588 0
	cmpl	$0, -76(%ebp)
	jns	.L219
	.loc 1 589 0
	leal	-152(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-144(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	neg_double@PLT
	jmp	.L218
.L219:
	.loc 1 591 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 592 0
	jmp	.L218
.L216:
	.loc 1 595 0
	movl	$0, -152(%ebp)
	movl	$0, -148(%ebp)
	.loc 1 596 0
	movl	-88(%ebp), %eax
	orl	-84(%ebp), %eax
	testl	%eax, %eax
	jne	.L222
	.loc 1 597 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	%esi, %eax
	andl	-80(%ebp), %eax
	movl	%edi, %edx
	andl	-76(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	exact_log2_wide@PLT
	addl	$65, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	jmp	.L218
.L222:
	.loc 1 599 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	%esi, %eax
	andl	-88(%ebp), %eax
	movl	%edi, %edx
	andl	-84(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	exact_log2_wide@PLT
	addl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	.loc 1 600 0
	jmp	.L218
.L213:
	.loc 1 604 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 605 0
	jmp	.L218
.L212:
	.loc 1 608 0
	cmpl	$0, 20(%ebp)
	jne	.L225
	.loc 1 609 0
	leal	__FUNCTION__.13786@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$609, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L225:
	.loc 1 611 0
	movl	20(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$64, %ax
	jbe	.L227
	.loc 1 612 0
	movl	$0, -404(%ebp)
	jmp	.L133
.L227:
	.loc 1 614 0
	movl	$0, -152(%ebp)
	movl	$0, -148(%ebp)
	.loc 1 615 0
	movl	20(%ebp), %edx
	movl	mode_mask_array@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	%esi, %eax
	andl	-88(%ebp), %eax
	movl	%edi, %edx
	andl	-84(%ebp), %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	.loc 1 616 0
	jmp	.L218
.L211:
	.loc 1 619 0
	cmpl	$0, 20(%ebp)
	je	.L229
	movl	20(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$64, %ax
	jbe	.L231
.L229:
	.loc 1 621 0
	movl	$0, -404(%ebp)
	jmp	.L133
.L231:
	.loc 1 624 0
	movl	20(%ebp), %edx
	movl	mode_mask_array@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	%esi, %eax
	andl	-88(%ebp), %eax
	movl	%edi, %edx
	andl	-84(%ebp), %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	.loc 1 625 0
	movl	20(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	cmpw	$63, %ax
	ja	.L232
	movl	20(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	leal	-1(%eax), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L279
	movl	%eax, %edx
	xorl	%eax, %eax
.L279:
	movl	%eax, -360(%ebp)
	movl	%edx, -356(%ebp)
	movl	-144(%ebp), %esi
	movl	-140(%ebp), %edi
	movl	-360(%ebp), %eax
	andl	%esi, %eax
	movl	-356(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L232
	.loc 1 628 0
	movl	-144(%ebp), %esi
	movl	-140(%ebp), %edi
	movl	%esi, -432(%ebp)
	movl	%edi, -428(%ebp)
	movl	20(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L278
	movl	%eax, %edx
	xorl	%eax, %eax
.L278:
	movl	-432(%ebp), %esi
	movl	-428(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
.L232:
	.loc 1 630 0
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	testl	%edx, %edx
	jns	.L235
	movl	$-1, -352(%ebp)
	movl	$-1, -348(%ebp)
	jmp	.L237
.L235:
	movl	$0, -352(%ebp)
	movl	$0, -348(%ebp)
.L237:
	movl	-352(%ebp), %eax
	movl	-348(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 632 0
	jmp	.L218
.L215:
	.loc 1 635 0
	movl	$0, -404(%ebp)
	jmp	.L133
.L208:
	.loc 1 638 0
	movl	$0, -404(%ebp)
	jmp	.L133
.L218:
	.loc 1 641 0
	movl	-152(%ebp), %esi
	movl	-148(%ebp), %edi
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	immed_double_const@PLT
	movl	%eax, -404(%ebp)
	jmp	.L133
.L197:
.LBE13:
	.loc 1 644 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L238
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	jne	.L238
.LBB14:
	.loc 1 648 0
	movl	-60(%ebp), %edx
	addl	$4, %edx
	leal	-176(%ebp), %ecx
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
	.loc 1 650 0
	movl	8(%ebp), %edx
	subl	$87, %edx
	movl	%edx, -416(%ebp)
	cmpl	$53, -416(%ebp)
	ja	.L241
	movl	-416(%ebp), %eax
	sall	$2, %eax
	movl	.L248@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L248:
	.long	.L242@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L249@GOTOFF
	.long	.L244@GOTOFF
	.long	.L241@GOTOFF
	.long	.L245@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L246@GOTOFF
	.long	.L247@GOTOFF
	.text
.L247:
	.loc 1 654 0
	movl	$0, -404(%ebp)
	jmp	.L133
.L246:
	.loc 1 657 0
	leal	-280(%ebp), %edx
	movl	$0, 12(%esp)
	leal	-176(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$82, 4(%esp)
	movl	%edx, (%esp)
	call	real_arithmetic2@PLT
	subl	$4, %esp
	movl	-280(%ebp), %eax
	movl	%eax, -176(%ebp)
	movl	-276(%ebp), %eax
	movl	%eax, -172(%ebp)
	movl	-272(%ebp), %eax
	movl	%eax, -168(%ebp)
	movl	-268(%ebp), %eax
	movl	%eax, -164(%ebp)
	movl	-264(%ebp), %eax
	movl	%eax, -160(%ebp)
	movl	-260(%ebp), %eax
	movl	%eax, -156(%ebp)
	.loc 1 658 0
	jmp	.L249
.L242:
	.loc 1 660 0
	leal	-312(%ebp), %edx
	movl	$0, 12(%esp)
	leal	-176(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$79, 4(%esp)
	movl	%edx, (%esp)
	call	real_arithmetic2@PLT
	subl	$4, %esp
	movl	-312(%ebp), %eax
	movl	%eax, -176(%ebp)
	movl	-308(%ebp), %eax
	movl	%eax, -172(%ebp)
	movl	-304(%ebp), %eax
	movl	%eax, -168(%ebp)
	movl	-300(%ebp), %eax
	movl	%eax, -164(%ebp)
	movl	-296(%ebp), %eax
	movl	%eax, -160(%ebp)
	movl	-292(%ebp), %eax
	movl	%eax, -156(%ebp)
	.loc 1 661 0
	jmp	.L249
.L244:
	.loc 1 663 0
	leal	-344(%ebp), %edx
	movl	-176(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	real_value_truncate@PLT
	subl	$4, %esp
	movl	-344(%ebp), %eax
	movl	%eax, -176(%ebp)
	movl	-340(%ebp), %eax
	movl	%eax, -172(%ebp)
	movl	-336(%ebp), %eax
	movl	%eax, -168(%ebp)
	movl	-332(%ebp), %eax
	movl	%eax, -164(%ebp)
	movl	-328(%ebp), %eax
	movl	%eax, -160(%ebp)
	movl	-324(%ebp), %eax
	movl	%eax, -156(%ebp)
	.loc 1 664 0
	jmp	.L249
.L245:
	.loc 1 669 0
	movl	$0, 12(%esp)
	leal	-176(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$73, 4(%esp)
	leal	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	real_arithmetic@PLT
	.loc 1 670 0
	jmp	.L249
.L241:
	.loc 1 673 0
	leal	__FUNCTION__.13786@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$673, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L249:
	.loc 1 675 0
	movl	12(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-176(%ebp), %eax
	movl	%eax, (%esp)
	movl	-172(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, 20(%esp)
	call	const_double_from_real_value@PLT
	movl	%eax, -404(%ebp)
	jmp	.L133
.L238:
.LBE14:
	.loc 1 678 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L250
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	jne	.L250
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L250
	cmpl	$64, -64(%ebp)
	ja	.L250
	cmpl	$0, -64(%ebp)
	je	.L250
.LBB15:
	.loc 1 685 0
	movl	-60(%ebp), %edx
	addl	$4, %edx
	leal	-176(%ebp), %ecx
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
	.loc 1 686 0
	movl	8(%ebp), %esi
	movl	%esi, -420(%ebp)
	cmpl	$136, -420(%ebp)
	je	.L257
	cmpl	$138, -420(%ebp)
	je	.L258
	jmp	.L256
.L257:
	.loc 1 688 0
	leal	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	real_to_integer@PLT
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	jmp	.L259
.L258:
	.loc 1 689 0
	leal	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	real_to_integer@PLT
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	jmp	.L259
.L256:
	.loc 1 691 0
	leal	__FUNCTION__.13786@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$691, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L259:
	.loc 1 693 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	gen_int_mode@PLT
	movl	%eax, -404(%ebp)
	jmp	.L133
.L250:
.LBE15:
.LBB16:
	.loc 1 703 0
	movl	8(%ebp), %edi
	movl	%edi, -424(%ebp)
	cmpl	$96, -424(%ebp)
	je	.L262
	cmpl	$130, -424(%ebp)
	je	.L263
	cmpl	$87, -424(%ebp)
	je	.L261
	jmp	.L260
.L262:
	.loc 1 707 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$96, %ax
	jne	.L264
	.loc 1 708 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -404(%ebp)
	jmp	.L133
.L264:
	.loc 1 711 0
	cmpl	$1, 12(%ebp)
	jne	.L260
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L260
	movl	$0, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reversed_comparison_code@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L260
	.loc 1 714 0
	movl	16(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -404(%ebp)
	jmp	.L133
.L261:
	.loc 1 720 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$87, %ax
	jne	.L260
	.loc 1 721 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -404(%ebp)
	jmp	.L133
.L263:
	.loc 1 729 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$132, %ax
	jne	.L260
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	jne	.L260
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	jne	.L260
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L260
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L260
	.loc 1 734 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -404(%ebp)
	jmp	.L133
.L260:
	.loc 1 765 0
	movl	$0, -404(%ebp)
.L133:
	movl	-404(%ebp), %eax
.LBE16:
	.loc 1 767 0
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	simplify_unary_operation, .-simplify_unary_operation
	.section	.rodata
	.type	__FUNCTION__.14247, @object
	.size	__FUNCTION__.14247, 26
__FUNCTION__.14247:
	.string	"simplify_binary_operation"
.globl __divdi3
.globl __moddi3
.globl __udivdi3
.globl __umoddi3
	.text
.globl simplify_binary_operation
	.type	simplify_binary_operation, @function
simplify_binary_operation:
.LFB23:
	.loc 1 779 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	pushl	%edi
.LCFI38:
	pushl	%esi
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$700, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 782 0
	movl	12(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -76(%ebp)
	.loc 1 784 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	avoid_constant_pool_reference@PLT
	movl	%eax, -68(%ebp)
	.loc 1 785 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	avoid_constant_pool_reference@PLT
	movl	%eax, -64(%ebp)
	.loc 1 792 0
	movl	8(%ebp), %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L285
	.loc 1 793 0
	leal	__FUNCTION__.14247@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$793, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L285:
	.loc 1 796 0
	movl	8(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$99, %al
	jne	.L287
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_commutative_operands_p@PLT
	testl	%eax, %eax
	je	.L287
	.loc 1 799 0
	movl	16(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, 20(%ebp)
	.loc 1 800 0
	movl	-68(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	-64(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, -64(%ebp)
.L287:
	.loc 1 803 0
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	jne	.L290
	movl	-68(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L290
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L290
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	jne	.L290
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	jne	.L290
.LBB17:
	.loc 1 810 0
	movl	-68(%ebp), %edx
	addl	$4, %edx
	leal	-224(%ebp), %ecx
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
	.loc 1 811 0
	movl	-64(%ebp), %edx
	addl	$4, %edx
	leal	-248(%ebp), %ecx
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
	.loc 1 812 0
	leal	-312(%ebp), %edx
	movl	-224(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-220(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-216(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-212(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-208(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-204(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	real_value_truncate@PLT
	subl	$4, %esp
	movl	-312(%ebp), %eax
	movl	%eax, -224(%ebp)
	movl	-308(%ebp), %eax
	movl	%eax, -220(%ebp)
	movl	-304(%ebp), %eax
	movl	%eax, -216(%ebp)
	movl	-300(%ebp), %eax
	movl	%eax, -212(%ebp)
	movl	-296(%ebp), %eax
	movl	%eax, -208(%ebp)
	movl	-292(%ebp), %eax
	movl	%eax, -204(%ebp)
	.loc 1 813 0
	leal	-344(%ebp), %edx
	movl	-248(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-244(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-240(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-232(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-228(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	real_value_truncate@PLT
	subl	$4, %esp
	movl	-344(%ebp), %eax
	movl	%eax, -248(%ebp)
	movl	-340(%ebp), %eax
	movl	%eax, -244(%ebp)
	movl	-336(%ebp), %eax
	movl	%eax, -240(%ebp)
	movl	-332(%ebp), %eax
	movl	%eax, -236(%ebp)
	movl	-328(%ebp), %eax
	movl	%eax, -232(%ebp)
	movl	-324(%ebp), %eax
	movl	%eax, -228(%ebp)
	.loc 1 815 0
	cmpl	$89, 8(%ebp)
	jne	.L296
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L296
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L296
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	je	.L296
	movl	dconst0@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-248(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$103, (%esp)
	call	real_compare@PLT
	testb	%al, %al
	je	.L296
	.loc 1 818 0
	movl	$0, -556(%ebp)
	jmp	.L302
.L296:
	.loc 1 820 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_to_tree_code@PLT
	movl	%eax, %edx
	leal	-248(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-224(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	real_arithmetic@PLT
	.loc 1 822 0
	leal	-376(%ebp), %edx
	movl	-272(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-268(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-264(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-260(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-252(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	real_value_truncate@PLT
	subl	$4, %esp
	movl	-376(%ebp), %eax
	movl	%eax, -272(%ebp)
	movl	-372(%ebp), %eax
	movl	%eax, -268(%ebp)
	movl	-368(%ebp), %eax
	movl	%eax, -264(%ebp)
	movl	-364(%ebp), %eax
	movl	%eax, -260(%ebp)
	movl	-360(%ebp), %eax
	movl	%eax, -256(%ebp)
	movl	-356(%ebp), %eax
	movl	%eax, -252(%ebp)
	.loc 1 823 0
	movl	12(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, (%esp)
	movl	-268(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-264(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-260(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-252(%ebp), %eax
	movl	%eax, 20(%esp)
	call	const_double_from_real_value@PLT
	movl	%eax, -556(%ebp)
	jmp	.L302
.L290:
.LBE17:
	.loc 1 827 0
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L303
	cmpl	$128, -76(%ebp)
	jne	.L303
	movl	-68(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L306
	movl	-68(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L303
.L306:
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L308
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L303
.L308:
.LBB18:
	.loc 1 837 0
	movl	-68(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L310
	.loc 1 838 0
	movl	-68(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	movl	-68(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	jmp	.L312
.L310:
	.loc 1 840 0
	movl	-68(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	testl	%edx, %edx
	jns	.L313
	movl	$-1, -552(%ebp)
	movl	$-1, -548(%ebp)
	jmp	.L315
.L313:
	movl	$0, -552(%ebp)
	movl	$0, -548(%ebp)
.L315:
	movl	-552(%ebp), %eax
	movl	-548(%ebp), %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
.L312:
	.loc 1 842 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L316
	.loc 1 843 0
	movl	-64(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	movl	-64(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	jmp	.L318
.L316:
	.loc 1 845 0
	movl	-64(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	testl	%edx, %edx
	jns	.L319
	movl	$-1, -544(%ebp)
	movl	$-1, -540(%ebp)
	jmp	.L321
.L319:
	movl	$0, -544(%ebp)
	movl	$0, -540(%ebp)
.L321:
	movl	-544(%ebp), %edx
	movl	-540(%ebp), %ecx
	movl	%edx, -120(%ebp)
	movl	%ecx, -116(%ebp)
.L318:
	.loc 1 847 0
	movl	8(%ebp), %ecx
	subl	$85, %ecx
	movl	%ecx, -560(%ebp)
	cmpl	$20, -560(%ebp)
	ja	.L322
	movl	-560(%ebp), %eax
	sall	$2, %eax
	movl	.L335@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L335:
	.long	.L323@GOTOFF
	.long	.L324@GOTOFF
	.long	.L322@GOTOFF
	.long	.L325@GOTOFF
	.long	.L326@GOTOFF
	.long	.L326@GOTOFF
	.long	.L326@GOTOFF
	.long	.L326@GOTOFF
	.long	.L327@GOTOFF
	.long	.L328@GOTOFF
	.long	.L329@GOTOFF
	.long	.L322@GOTOFF
	.long	.L330@GOTOFF
	.long	.L330@GOTOFF
	.long	.L330@GOTOFF
	.long	.L330@GOTOFF
	.long	.L330@GOTOFF
	.long	.L331@GOTOFF
	.long	.L332@GOTOFF
	.long	.L333@GOTOFF
	.long	.L334@GOTOFF
	.text
.L324:
	.loc 1 851 0
	leal	-200(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-192(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	neg_double@PLT
	.loc 1 852 0
	movl	-192(%ebp), %eax
	movl	-188(%ebp), %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	movl	-200(%ebp), %eax
	movl	-196(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
.L323:
	.loc 1 857 0
	leal	-200(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-192(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	add_double@PLT
	.loc 1 858 0
	jmp	.L336
.L325:
	.loc 1 861 0
	leal	-200(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-192(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	mul_double@PLT
	.loc 1 862 0
	jmp	.L336
.L326:
	.loc 1 867 0
	movl	$0, -556(%ebp)
	jmp	.L302
.L327:
	.loc 1 870 0
	movl	-136(%ebp), %ecx
	movl	-132(%ebp), %esi
	movl	-144(%ebp), %eax
	andl	%ecx, %eax
	movl	-140(%ebp), %edx
	andl	%esi, %edx
	movl	%eax, -192(%ebp)
	movl	%edx, -188(%ebp)
	movl	-120(%ebp), %ecx
	movl	-116(%ebp), %esi
	movl	-128(%ebp), %eax
	andl	%ecx, %eax
	movl	-124(%ebp), %edx
	andl	%esi, %edx
	movl	%eax, -200(%ebp)
	movl	%edx, -196(%ebp)
	.loc 1 871 0
	jmp	.L336
.L328:
	.loc 1 874 0
	movl	-136(%ebp), %ecx
	movl	-132(%ebp), %esi
	movl	-144(%ebp), %eax
	orl	%ecx, %eax
	movl	-140(%ebp), %edx
	orl	%esi, %edx
	movl	%eax, -192(%ebp)
	movl	%edx, -188(%ebp)
	movl	-120(%ebp), %ecx
	movl	-116(%ebp), %esi
	movl	-128(%ebp), %eax
	orl	%ecx, %eax
	movl	-124(%ebp), %edx
	orl	%esi, %edx
	movl	%eax, -200(%ebp)
	movl	%edx, -196(%ebp)
	.loc 1 875 0
	jmp	.L336
.L329:
	.loc 1 878 0
	movl	-136(%ebp), %ecx
	movl	-132(%ebp), %esi
	movl	-144(%ebp), %eax
	xorl	%ecx, %eax
	movl	-140(%ebp), %edx
	xorl	%esi, %edx
	movl	%eax, -192(%ebp)
	movl	%edx, -188(%ebp)
	movl	-120(%ebp), %ecx
	movl	-116(%ebp), %esi
	movl	-128(%ebp), %eax
	xorl	%ecx, %eax
	movl	-124(%ebp), %edx
	xorl	%esi, %edx
	movl	%eax, -200(%ebp)
	movl	%edx, -196(%ebp)
	.loc 1 879 0
	jmp	.L336
.L331:
	.loc 1 882 0
	movl	-128(%ebp), %esi
	movl	-124(%ebp), %edi
	movl	%esi, -568(%ebp)
	movl	%edi, -564(%ebp)
	movl	-564(%ebp), %edi
	cmpl	-116(%ebp), %edi
	jl	.L337
	movl	-564(%ebp), %eax
	cmpl	-116(%ebp), %eax
	jg	.L339
	movl	-568(%ebp), %edx
	cmpl	-120(%ebp), %edx
	jb	.L337
.L339:
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%edx, %ecx
	xorl	-116(%ebp), %ecx
	xorl	-120(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L340
	movl	-144(%ebp), %esi
	movl	-140(%ebp), %edi
	movl	%esi, -576(%ebp)
	movl	%edi, -572(%ebp)
	movl	-572(%ebp), %edi
	cmpl	-132(%ebp), %edi
	ja	.L340
	movl	-572(%ebp), %eax
	cmpl	-132(%ebp), %eax
	jb	.L337
	movl	-576(%ebp), %edx
	cmpl	-136(%ebp), %edx
	jae	.L340
.L337:
	.loc 1 886 0
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, -192(%ebp)
	movl	%edx, -188(%ebp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -200(%ebp)
	movl	%edx, -196(%ebp)
	.loc 1 882 0
	jmp	.L336
.L340:
	.loc 1 888 0
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, -192(%ebp)
	movl	%edx, -188(%ebp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, -200(%ebp)
	movl	%edx, -196(%ebp)
	.loc 1 889 0
	jmp	.L336
.L332:
	.loc 1 892 0
	movl	-128(%ebp), %esi
	movl	-124(%ebp), %edi
	movl	%esi, -584(%ebp)
	movl	%edi, -580(%ebp)
	movl	-580(%ebp), %edi
	cmpl	-116(%ebp), %edi
	jg	.L344
	movl	-580(%ebp), %eax
	cmpl	-116(%ebp), %eax
	jl	.L346
	movl	-584(%ebp), %edx
	cmpl	-120(%ebp), %edx
	ja	.L344
.L346:
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%edx, %ecx
	xorl	-116(%ebp), %ecx
	xorl	-120(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L347
	movl	-144(%ebp), %esi
	movl	-140(%ebp), %edi
	movl	%esi, -592(%ebp)
	movl	%edi, -588(%ebp)
	movl	-588(%ebp), %edi
	cmpl	-132(%ebp), %edi
	jb	.L347
	movl	-588(%ebp), %eax
	cmpl	-132(%ebp), %eax
	ja	.L344
	movl	-592(%ebp), %edx
	cmpl	-136(%ebp), %edx
	jbe	.L347
.L344:
	.loc 1 896 0
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, -192(%ebp)
	movl	%edx, -188(%ebp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -200(%ebp)
	movl	%edx, -196(%ebp)
	.loc 1 892 0
	jmp	.L336
.L347:
	.loc 1 898 0
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, -192(%ebp)
	movl	%edx, -188(%ebp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, -200(%ebp)
	movl	%edx, -196(%ebp)
	.loc 1 899 0
	jmp	.L336
.L333:
	.loc 1 902 0
	movl	-128(%ebp), %esi
	movl	-124(%ebp), %edi
	movl	%esi, -536(%ebp)
	movl	%edi, -532(%ebp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, -528(%ebp)
	movl	%edx, -524(%ebp)
	movl	-524(%ebp), %edx
	cmpl	%edx, -532(%ebp)
	jb	.L351
	movl	-524(%ebp), %ecx
	cmpl	%ecx, -532(%ebp)
	ja	.L353
	movl	-528(%ebp), %esi
	cmpl	%esi, -536(%ebp)
	jb	.L351
.L353:
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%edx, %ecx
	xorl	-116(%ebp), %ecx
	xorl	-120(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L354
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, -600(%ebp)
	movl	%edx, -596(%ebp)
	movl	-596(%ebp), %edx
	cmpl	-132(%ebp), %edx
	ja	.L354
	movl	-596(%ebp), %ecx
	cmpl	-132(%ebp), %ecx
	jb	.L351
	movl	-600(%ebp), %esi
	cmpl	-136(%ebp), %esi
	jae	.L354
.L351:
	.loc 1 906 0
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, -192(%ebp)
	movl	%edx, -188(%ebp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -200(%ebp)
	movl	%edx, -196(%ebp)
	.loc 1 902 0
	jmp	.L336
.L354:
	.loc 1 908 0
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, -192(%ebp)
	movl	%edx, -188(%ebp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, -200(%ebp)
	movl	%edx, -196(%ebp)
	.loc 1 909 0
	jmp	.L336
.L334:
	.loc 1 912 0
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -520(%ebp)
	movl	%edx, -516(%ebp)
	movl	-120(%ebp), %edx
	movl	-116(%ebp), %ecx
	movl	%edx, -512(%ebp)
	movl	%ecx, -508(%ebp)
	movl	-508(%ebp), %ecx
	cmpl	%ecx, -516(%ebp)
	ja	.L358
	movl	-508(%ebp), %esi
	cmpl	%esi, -516(%ebp)
	jb	.L360
	movl	-512(%ebp), %edi
	cmpl	%edi, -520(%ebp)
	ja	.L358
.L360:
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%edx, %ecx
	xorl	-116(%ebp), %ecx
	xorl	-120(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L361
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, -608(%ebp)
	movl	%edx, -604(%ebp)
	movl	-604(%ebp), %edx
	cmpl	-132(%ebp), %edx
	jb	.L361
	movl	-604(%ebp), %ecx
	cmpl	-132(%ebp), %ecx
	ja	.L358
	movl	-608(%ebp), %esi
	cmpl	-136(%ebp), %esi
	jbe	.L361
.L358:
	.loc 1 916 0
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, -192(%ebp)
	movl	%edx, -188(%ebp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -200(%ebp)
	movl	%edx, -196(%ebp)
	.loc 1 912 0
	jmp	.L336
.L361:
	.loc 1 918 0
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, -192(%ebp)
	movl	%edx, -188(%ebp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, -200(%ebp)
	movl	%edx, -196(%ebp)
	.loc 1 919 0
	jmp	.L336
.L330:
	.loc 1 926 0
	movl	12(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	subl	$1, %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	-136(%ebp), %eax
	andl	%esi, %eax
	movl	-132(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	movl	$0, -120(%ebp)
	movl	$0, -116(%ebp)
	.loc 1 929 0
	movl	-120(%ebp), %eax
	orl	-116(%ebp), %eax
	testl	%eax, %eax
	jne	.L365
	movl	12(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -504(%ebp)
	movl	-504(%ebp), %edi
	movl	%edi, -504(%ebp)
	movl	$0, -500(%ebp)
	movl	-500(%ebp), %eax
	cmpl	-132(%ebp), %eax
	ja	.L367
	movl	-500(%ebp), %edx
	cmpl	-132(%ebp), %edx
	jb	.L365
	movl	-504(%ebp), %ecx
	cmpl	-136(%ebp), %ecx
	ja	.L367
.L365:
	.loc 1 930 0
	movl	$0, -556(%ebp)
	jmp	.L302
.L367:
	.loc 1 932 0
	cmpl	$100, 8(%ebp)
	je	.L369
	cmpl	$99, 8(%ebp)
	jne	.L371
.L369:
	.loc 1 933 0
	cmpl	$99, 8(%ebp)
	sete	%al
	movzbl	%al, %esi
	movl	12(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %edi
	movl	-136(%ebp), %edx
	movl	-132(%ebp), %ecx
	movl	%esi, 36(%esp)
	leal	-200(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-192(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 20(%esp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	rshift_double@PLT
	.loc 1 932 0
	jmp	.L336
.L371:
	.loc 1 935 0
	cmpl	$97, 8(%ebp)
	jne	.L373
	.loc 1 936 0
	movl	12(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %esi
	movl	-136(%ebp), %edx
	movl	-132(%ebp), %ecx
	movl	$1, 36(%esp)
	leal	-200(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-192(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	%esi, 24(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 20(%esp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	lshift_double@PLT
	jmp	.L336
.L373:
	.loc 1 937 0
	cmpl	$98, 8(%ebp)
	jne	.L375
	.loc 1 938 0
	movl	12(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %esi
	movl	-136(%ebp), %edx
	movl	-132(%ebp), %ecx
	leal	-200(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-192(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	%esi, 24(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 20(%esp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	lrotate_double@PLT
	jmp	.L336
.L375:
	.loc 1 940 0
	movl	12(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %esi
	movl	-136(%ebp), %edx
	movl	-132(%ebp), %ecx
	leal	-200(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-192(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	%esi, 24(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 20(%esp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	rrotate_double@PLT
	.loc 1 941 0
	jmp	.L336
.L322:
	.loc 1 944 0
	movl	$0, -556(%ebp)
	jmp	.L302
.L336:
	.loc 1 947 0
	movl	-200(%ebp), %esi
	movl	-196(%ebp), %edi
	movl	-192(%ebp), %eax
	movl	-188(%ebp), %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	immed_double_const@PLT
	movl	%eax, -556(%ebp)
	jmp	.L302
.L303:
.LBE18:
	.loc 1 950 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L377
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L377
	cmpl	$64, -76(%ebp)
	ja	.L377
	cmpl	$0, -76(%ebp)
	jne	.L381
.L377:
	.loc 1 956 0
	movl	8(%ebp), %esi
	subl	$84, %esi
	movl	%esi, -612(%ebp)
	cmpl	$75, -612(%ebp)
	ja	.L382
	movl	-612(%ebp), %eax
	sall	$2, %eax
	movl	.L402@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L402:
	.long	.L383@GOTOFF
	.long	.L384@GOTOFF
	.long	.L385@GOTOFF
	.long	.L382@GOTOFF
	.long	.L386@GOTOFF
	.long	.L387@GOTOFF
	.long	.L388@GOTOFF
	.long	.L389@GOTOFF
	.long	.L390@GOTOFF
	.long	.L391@GOTOFF
	.long	.L392@GOTOFF
	.long	.L393@GOTOFF
	.long	.L382@GOTOFF
	.long	.L394@GOTOFF
	.long	.L395@GOTOFF
	.long	.L394@GOTOFF
	.long	.L394@GOTOFF
	.long	.L395@GOTOFF
	.long	.L396@GOTOFF
	.long	.L397@GOTOFF
	.long	.L398@GOTOFF
	.long	.L399@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L382@GOTOFF
	.long	.L400@GOTOFF
	.long	.L400@GOTOFF
	.long	.L382@GOTOFF
	.long	.L401@GOTOFF
	.long	.L401@GOTOFF
	.long	.L401@GOTOFF
	.long	.L401@GOTOFF
	.text
.L384:
	.loc 1 963 0
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L403
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L403
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	jne	.L406
.L403:
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L407
.L406:
	movl	12(%ebp), %eax
	movl	const_tiny_rtx@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	-64(%ebp), %eax
	jne	.L407
	.loc 1 964 0
	movl	16(%ebp), %edi
	movl	%edi, -556(%ebp)
	jmp	.L302
.L407:
	.loc 1 968 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$87, %ax
	jne	.L409
	.loc 1 969 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$86, (%esp)
	call	simplify_gen_binary@PLT
	movl	%eax, -556(%ebp)
	jmp	.L302
.L409:
	.loc 1 970 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$87, %ax
	jne	.L411
	.loc 1 971 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$86, (%esp)
	call	simplify_gen_binary@PLT
	movl	%eax, -556(%ebp)
	jmp	.L302
.L411:
	.loc 1 974 0
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L413
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$3, %eax
	je	.L413
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$5, %eax
	je	.L413
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$7, %eax
	jne	.L417
.L413:
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$96, %ax
	jne	.L417
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L417
	.loc 1 977 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$87, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -556(%ebp)
	jmp	.L302
.L417:
	.loc 1 985 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L420
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L420
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L420
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L420
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L420
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L420
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L420
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L428
.L420:
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L428
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L428
	.loc 1 987 0
	movl	20(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -556(%ebp)
	jmp	.L302
.L428:
	.loc 1 988 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L431
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L431
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L431
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L431
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L431
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L431
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L431
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L439
.L431:
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L439
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L439
	.loc 1 990 0
	movl	16(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -556(%ebp)
	jmp	.L302
.L439:
	.loc 1 998 0
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L442
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L442
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	je	.L442
.LBB19:
	.loc 1 1000 0
	movl	$1, -112(%ebp)
	movl	$0, -108(%ebp)
	movl	$1, -104(%ebp)
	movl	$0, -100(%ebp)
	.loc 1 1001 0
	movl	16(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1002 0
	movl	$0, -52(%ebp)
	.loc 1 1004 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$87, %ax
	jne	.L446
	.loc 1 1005 0
	movl	$-1, -112(%ebp)
	movl	$-1, -108(%ebp)
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L448
.L446:
	.loc 1 1006 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	jne	.L449
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L449
	.loc 1 1009 0
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1010 0
	movl	$1, -52(%ebp)
	.loc 1 1006 0
	jmp	.L448
.L449:
	.loc 1 1012 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$97, %ax
	jne	.L448
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L448
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	js	.L448
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -496(%ebp)
	movl	%ecx, -492(%ebp)
	cmpl	$0, -492(%ebp)
	jg	.L448
	cmpl	$0, -492(%ebp)
	js	.L456
	cmpl	$63, -496(%ebp)
	ja	.L448
.L456:
	.loc 1 1017 0
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L816
	movl	%eax, %edx
	xorl	%eax, %eax
.L816:
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	.loc 1 1018 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
.L448:
	.loc 1 1021 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$87, %ax
	jne	.L457
	.loc 1 1022 0
	movl	$-1, -104(%ebp)
	movl	$-1, -100(%ebp)
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L459
.L457:
	.loc 1 1023 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	jne	.L460
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L460
	.loc 1 1026 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1027 0
	movl	$1, -52(%ebp)
	.loc 1 1023 0
	jmp	.L459
.L460:
	.loc 1 1029 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$97, %ax
	jne	.L459
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L459
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	js	.L459
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, -488(%ebp)
	movl	%edi, -484(%ebp)
	cmpl	$0, -484(%ebp)
	jg	.L459
	cmpl	$0, -484(%ebp)
	js	.L467
	cmpl	$63, -488(%ebp)
	ja	.L459
.L467:
	.loc 1 1034 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L815
	movl	%eax, %edx
	xorl	%eax, %eax
.L815:
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	.loc 1 1035 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
.L459:
	.loc 1 1038 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L442
	.loc 1 1040 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	addl	-112(%ebp), %eax
	adcl	-108(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	simplify_gen_binary@PLT
	movl	%eax, -72(%ebp)
	.loc 1 1042 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	jne	.L469
	cmpl	$0, -52(%ebp)
	je	.L471
.L469:
	movl	-72(%ebp), %edi
	movl	%edi, -476(%ebp)
	jmp	.L472
.L471:
	movl	$0, -476(%ebp)
.L472:
	movl	-476(%ebp), %eax
	movl	%eax, -556(%ebp)
	jmp	.L302
.L442:
.LBE19:
	.loc 1 1052 0
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
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$5, %eax
	je	.L473
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$7, %eax
	jne	.L487
.L473:
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L478
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	je	.L478
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L478
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	je	.L478
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L483
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L478
.L483:
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L487
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L487
.L478:
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_plus_minus
	movl	%eax, -72(%ebp)
	cmpl	$0, -72(%ebp)
	je	.L487
	.loc 1 1060 0
	movl	-72(%ebp), %edx
	movl	%edx, -556(%ebp)
	jmp	.L302
.L383:
	.loc 1 1078 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$115, %ax
	jne	.L488
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$117, %ax
	je	.L490
.L488:
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$119, %ax
	jne	.L487
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$121, %ax
	jne	.L487
.L490:
	movl	16(%ebp), %eax
	movl	12(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	jne	.L487
	movl	20(%ebp), %eax
	movl	12(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	jne	.L487
.LBB20:
	.loc 1 1082 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1083 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1088 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L487
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L487
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L487
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L487
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$4, %eax
	jne	.L487
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$4, %eax
	jne	.L487
	.loc 1 1094 0
	movl	-48(%ebp), %ecx
	movl	%ecx, -556(%ebp)
	jmp	.L302
.L385:
.LBE20:
	.loc 1 1102 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L501
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L501
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L504
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L504
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	jne	.L507
.L504:
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L501
.L507:
	.loc 1 1105 0
	movl	12(%ebp), %edx
	movl	const_tiny_rtx@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -556(%ebp)
	jmp	.L302
.L501:
	.loc 1 1111 0
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L508
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L508
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	jne	.L511
.L508:
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L512
.L511:
	movl	12(%ebp), %eax
	movl	const_tiny_rtx@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	-68(%ebp), %eax
	jne	.L512
	.loc 1 1112 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$87, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -556(%ebp)
	jmp	.L302
.L512:
	.loc 1 1115 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	cmpl	-68(%ebp), %eax
	jne	.L514
	.loc 1 1116 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$96, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -556(%ebp)
	jmp	.L302
.L514:
	.loc 1 1121 0
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L516
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L516
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	jne	.L519
.L516:
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L519
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L521
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L521
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	jne	.L519
.L521:
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L524
.L519:
	movl	12(%ebp), %eax
	movl	const_tiny_rtx@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	-64(%ebp), %eax
	jne	.L524
	.loc 1 1124 0
	movl	16(%ebp), %esi
	movl	%esi, -556(%ebp)
	jmp	.L302
.L524:
	.loc 1 1132 0
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L526
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L526
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	je	.L526
.LBB21:
	.loc 1 1134 0
	movl	$1, -96(%ebp)
	movl	$0, -92(%ebp)
	movl	$1, -88(%ebp)
	movl	$0, -84(%ebp)
	.loc 1 1135 0
	movl	16(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1136 0
	movl	$0, -32(%ebp)
	.loc 1 1138 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$87, %ax
	jne	.L530
	.loc 1 1139 0
	movl	$-1, -96(%ebp)
	movl	$-1, -92(%ebp)
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L532
.L530:
	.loc 1 1140 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	jne	.L533
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L533
	.loc 1 1143 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1144 0
	movl	$1, -32(%ebp)
	.loc 1 1140 0
	jmp	.L532
.L533:
	.loc 1 1146 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$97, %ax
	jne	.L532
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L532
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	js	.L532
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -472(%ebp)
	movl	%ecx, -468(%ebp)
	cmpl	$0, -468(%ebp)
	jg	.L532
	cmpl	$0, -468(%ebp)
	js	.L540
	cmpl	$63, -472(%ebp)
	ja	.L532
.L540:
	.loc 1 1151 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L814
	movl	%eax, %edx
	xorl	%eax, %eax
.L814:
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	.loc 1 1152 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
.L532:
	.loc 1 1155 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$87, %ax
	jne	.L541
	.loc 1 1156 0
	movl	$-1, -88(%ebp)
	movl	$-1, -84(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L543
.L541:
	.loc 1 1157 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	jne	.L544
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L544
	.loc 1 1160 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1161 0
	movl	$1, -32(%ebp)
	.loc 1 1157 0
	jmp	.L543
.L544:
	.loc 1 1163 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$97, %ax
	jne	.L543
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L543
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	js	.L543
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, -464(%ebp)
	movl	%edi, -460(%ebp)
	cmpl	$0, -460(%ebp)
	jg	.L543
	cmpl	$0, -460(%ebp)
	js	.L551
	cmpl	$63, -464(%ebp)
	ja	.L543
.L551:
	.loc 1 1168 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L813
	movl	%eax, %edx
	xorl	%eax, %eax
.L813:
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 1169 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L543:
	.loc 1 1172 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L526
	.loc 1 1174 0
	movl	-88(%ebp), %esi
	movl	-84(%ebp), %edi
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	simplify_gen_binary@PLT
	movl	%eax, -72(%ebp)
	.loc 1 1176 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	jne	.L553
	cmpl	$0, -32(%ebp)
	je	.L555
.L553:
	movl	-72(%ebp), %edi
	movl	%edi, -456(%ebp)
	jmp	.L556
.L555:
	movl	$0, -456(%ebp)
.L556:
	movl	-456(%ebp), %eax
	movl	%eax, -556(%ebp)
	jmp	.L302
.L526:
.LBE21:
	.loc 1 1181 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$87, %ax
	jne	.L557
	.loc 1 1182 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	simplify_gen_binary@PLT
	movl	%eax, -556(%ebp)
	jmp	.L302
.L557:
	.loc 1 1190 0
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L559
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$3, %eax
	je	.L559
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$5, %eax
	je	.L559
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$7, %eax
	jne	.L563
.L559:
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L564
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	je	.L564
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L564
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	je	.L564
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L569
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L564
.L569:
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L563
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L563
.L564:
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_plus_minus
	movl	%eax, -72(%ebp)
	cmpl	$0, -72(%ebp)
	je	.L563
	.loc 1 1198 0
	movl	-72(%ebp), %edx
	movl	%edx, -556(%ebp)
	jmp	.L302
.L563:
	.loc 1 1201 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L573
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L573
	.loc 1 1202 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	neg_const_int
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	simplify_gen_binary@PLT
	movl	%eax, -556(%ebp)
	jmp	.L302
.L573:
	.loc 1 1207 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$93, %ax
	jne	.L487
	.loc 1 1209 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L578
	.loc 1 1210 0
	movl	20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$96, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$93, (%esp)
	call	simplify_gen_binary@PLT
	movl	%eax, -556(%ebp)
	jmp	.L302
.L578:
	.loc 1 1212 0
	movl	20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L487
	.loc 1 1213 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$96, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$93, (%esp)
	call	simplify_gen_binary@PLT
	movl	%eax, -556(%ebp)
	jmp	.L302
.L386:
	.loc 1 1219 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L581
	.loc 1 1221 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$87, (%esp)
	call	simplify_unary_operation@PLT
	movl	%eax, -72(%ebp)
	.loc 1 1223 0
	cmpl	$0, -72(%ebp)
	jne	.L583
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$87, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -452(%ebp)
	jmp	.L585
.L583:
	movl	-72(%ebp), %ecx
	movl	%ecx, -452(%ebp)
.L585:
	movl	-452(%ebp), %esi
	movl	%esi, -556(%ebp)
	jmp	.L302
.L581:
	.loc 1 1230 0
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L586
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L586
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	jne	.L589
.L586:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L590
.L589:
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L591
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L591
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	jne	.L594
.L591:
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L590
.L594:
	movl	12(%ebp), %eax
	movl	const_tiny_rtx@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	-64(%ebp), %eax
	jne	.L590
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L590
	.loc 1 1234 0
	movl	20(%ebp), %edi
	movl	%edi, -556(%ebp)
	jmp	.L302
.L590:
	.loc 1 1238 0
	movl	flag_signaling_nans@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L597
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L599
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L599
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	jne	.L597
.L599:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L602
.L597:
	movl	12(%ebp), %eax
	movl	const_tiny_rtx@GOT(%ebx), %edx
	movl	216(%edx,%eax,4), %eax
	cmpl	-64(%ebp), %eax
	jne	.L602
	.loc 1 1240 0
	movl	16(%ebp), %eax
	movl	%eax, -556(%ebp)
	jmp	.L302
.L602:
	.loc 1 1244 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L604
	movl	-64(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	exact_log2_wide@PLT
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	cmpl	$0, -148(%ebp)
	js	.L604
	cmpl	$64, -76(%ebp)
	jbe	.L607
	movl	-152(%ebp), %eax
	xorl	$63, %eax
	orl	-148(%ebp), %eax
	testl	%eax, %eax
	je	.L604
.L607:
	movl	rtx_equal_function_value_matters@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L604
	.loc 1 1252 0
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$97, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -556(%ebp)
	jmp	.L302
.L604:
	.loc 1 1255 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L487
	movl	-64(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	jne	.L487
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	jne	.L487
.LBB22:
	.loc 1 1260 0
	movl	-64(%ebp), %edx
	addl	$4, %edx
	leal	-272(%ebp), %ecx
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
	.loc 1 1262 0
	movl	dconst2@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$103, (%esp)
	call	real_compare@PLT
	testb	%al, %al
	je	.L614
	.loc 1 1263 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -556(%ebp)
	jmp	.L302
.L614:
	.loc 1 1265 0
	movl	dconstm1@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$103, (%esp)
	call	real_compare@PLT
	testb	%al, %al
	je	.L487
	.loc 1 1266 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$87, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -556(%ebp)
	jmp	.L302
.L392:
.LBE22:
	.loc 1 1271 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L617
	.loc 1 1272 0
	movl	16(%ebp), %edx
	movl	%edx, -556(%ebp)
	jmp	.L302
.L617:
	.loc 1 1273 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L619
	movl	-64(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -448(%ebp)
	movl	%edx, -444(%ebp)
	movl	12(%ebp), %edx
	movl	mode_mask_array@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	-448(%ebp), %eax
	andl	%esi, %eax
	movl	-444(%ebp), %edx
	andl	%edi, %edx
	movl	12(%ebp), %esi
	movl	mode_mask_array@GOT(%ebx), %ecx
	movl	4(%ecx,%esi,8), %edi
	movl	(%ecx,%esi,8), %esi
	movl	%edx, %ecx
	xorl	%edi, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L619
	.loc 1 1276 0
	movl	20(%ebp), %ecx
	movl	%ecx, -556(%ebp)
	jmp	.L302
.L619:
	.loc 1 1277 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L622
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L622
	.loc 1 1278 0
	movl	16(%ebp), %esi
	movl	%esi, -556(%ebp)
	jmp	.L302
.L622:
	.loc 1 1280 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$96, %ax
	jne	.L625
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L627
.L625:
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$96, %ax
	jne	.L487
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L487
.L627:
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L487
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$4, %eax
	je	.L487
	.loc 1 1284 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	movl	%eax, -556(%ebp)
	jmp	.L302
.L393:
	.loc 1 1288 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L632
	.loc 1 1289 0
	movl	16(%ebp), %edi
	movl	%edi, -556(%ebp)
	jmp	.L302
.L632:
	.loc 1 1290 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L634
	movl	-64(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -440(%ebp)
	movl	%edx, -436(%ebp)
	movl	12(%ebp), %edx
	movl	mode_mask_array@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	-440(%ebp), %eax
	andl	%esi, %eax
	movl	-436(%ebp), %edx
	andl	%edi, %edx
	movl	12(%ebp), %esi
	movl	mode_mask_array@GOT(%ebx), %ecx
	movl	4(%ecx,%esi,8), %edi
	movl	(%ecx,%esi,8), %esi
	movl	%edx, %ecx
	xorl	%edi, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L634
	.loc 1 1293 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$96, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -556(%ebp)
	jmp	.L302
.L634:
	.loc 1 1294 0
	movl	-68(%ebp), %eax
	cmpl	-64(%ebp), %eax
	jne	.L487
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L487
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$4, %eax
	je	.L487
	.loc 1 1296 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -556(%ebp)
	jmp	.L302
.L391:
	.loc 1 1300 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L641
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L641
	.loc 1 1301 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -556(%ebp)
	jmp	.L302
.L641:
	.loc 1 1302 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L644
	movl	-64(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -432(%ebp)
	movl	%edx, -428(%ebp)
	movl	12(%ebp), %edx
	movl	mode_mask_array@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	-432(%ebp), %eax
	andl	%esi, %eax
	movl	-428(%ebp), %edx
	andl	%edi, %edx
	movl	12(%ebp), %esi
	movl	mode_mask_array@GOT(%ebx), %ecx
	movl	4(%ecx,%esi,8), %edi
	movl	(%ecx,%esi,8), %esi
	movl	%edx, %ecx
	xorl	%edi, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L644
	.loc 1 1305 0
	movl	16(%ebp), %eax
	movl	%eax, -556(%ebp)
	jmp	.L302
.L644:
	.loc 1 1306 0
	movl	-68(%ebp), %eax
	cmpl	-64(%ebp), %eax
	jne	.L647
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L647
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$4, %eax
	je	.L647
	.loc 1 1308 0
	movl	16(%ebp), %edx
	movl	%edx, -556(%ebp)
	jmp	.L302
.L647:
	.loc 1 1310 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$96, %ax
	jne	.L651
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L653
.L651:
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$96, %ax
	jne	.L487
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L487
.L653:
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L487
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$4, %eax
	je	.L487
	.loc 1 1314 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -556(%ebp)
	jmp	.L302
.L389:
	.loc 1 1320 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L387
	movl	-64(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	exact_log2_wide@PLT
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	cmpl	$0, -172(%ebp)
	js	.L387
	cmpl	$0, -172(%ebp)
	jg	.L660
	cmpl	$0, -176(%ebp)
	jbe	.L387
.L660:
	.loc 1 1322 0
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$100, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -556(%ebp)
	jmp	.L302
.L387:
	.loc 1 1327 0
	movl	12(%ebp), %eax
	movl	const_tiny_rtx@GOT(%ebx), %edx
	movl	216(%edx,%eax,4), %eax
	cmpl	-64(%ebp), %eax
	jne	.L661
.LBB23:
	.loc 1 1331 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart_common@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1332 0
	cmpl	$0, -28(%ebp)
	je	.L663
	.loc 1 1333 0
	movl	-28(%ebp), %ecx
	movl	%ecx, -556(%ebp)
	jmp	.L302
.L663:
	.loc 1 1334 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	je	.L665
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L665
	.loc 1 1335 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart_SUBREG@PLT
	movl	%eax, -556(%ebp)
	jmp	.L302
.L665:
	.loc 1 1337 0
	movl	16(%ebp), %esi
	movl	%esi, -556(%ebp)
	jmp	.L302
.L661:
.LBE23:
	.loc 1 1344 0
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L668
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L668
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	jne	.L671
.L668:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L672
.L671:
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L673
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L673
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	jne	.L676
.L673:
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L672
.L676:
	movl	12(%ebp), %eax
	movl	const_tiny_rtx@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	-68(%ebp), %eax
	jne	.L672
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L672
	.loc 1 1348 0
	movl	16(%ebp), %edi
	movl	%edi, -556(%ebp)
	jmp	.L302
.L672:
	.loc 1 1352 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L487
	movl	-64(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	jne	.L487
	movl	12(%ebp), %eax
	movl	const_tiny_rtx@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	-64(%ebp), %eax
	je	.L487
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L487
.LBB24:
	.loc 1 1358 0
	movl	-64(%ebp), %edx
	addl	$4, %edx
	leal	-272(%ebp), %ecx
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
	.loc 1 1360 0
	movl	dconst0@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$103, (%esp)
	call	real_compare@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L487
	.loc 1 1362 0
	movl	$89, (%esp)
	call	rtx_to_tree_code@PLT
	movl	%eax, %edx
	leal	-272(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	dconst1@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	real_arithmetic@PLT
	.loc 1 1363 0
	movl	12(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, (%esp)
	movl	-268(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-264(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-260(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-252(%ebp), %eax
	movl	%eax, 20(%esp)
	call	const_double_from_real_value@PLT
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -556(%ebp)
	jmp	.L302
.L390:
.LBE24:
	.loc 1 1371 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L388
	movl	-64(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	exact_log2_wide@PLT
	testl	%eax, %eax
	jle	.L388
	.loc 1 1373 0
	movl	20(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$93, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -556(%ebp)
	jmp	.L302
.L388:
	.loc 1 1378 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-68(%ebp), %eax
	je	.L687
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L487
.L687:
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L487
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L487
	.loc 1 1380 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -556(%ebp)
	jmp	.L302
.L395:
	.loc 1 1386 0
	movl	-68(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L394
	cmpl	$64, -76(%ebp)
	ja	.L394
	movl	-68(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	movl	12(%ebp), %edx
	movl	mode_mask_array@GOT(%ebx), %eax
	leal	(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L394
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L394
	.loc 1 1389 0
	movl	16(%ebp), %eax
	movl	%eax, -556(%ebp)
	jmp	.L302
.L394:
	.loc 1 1396 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L696
	.loc 1 1397 0
	movl	16(%ebp), %edx
	movl	%edx, -556(%ebp)
	jmp	.L302
.L696:
	.loc 1 1398 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-68(%ebp), %eax
	jne	.L487
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L487
	.loc 1 1399 0
	movl	16(%ebp), %ecx
	movl	%ecx, -556(%ebp)
	jmp	.L302
.L396:
	.loc 1 1403 0
	cmpl	$64, -76(%ebp)
	ja	.L701
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L701
	movl	-64(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-76(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L812
	movl	%eax, %edx
	xorl	%eax, %eax
.L812:
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L701
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L701
	.loc 1 1406 0
	movl	20(%ebp), %esi
	movl	%esi, -556(%ebp)
	jmp	.L302
.L701:
	.loc 1 1407 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L487
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L487
	.loc 1 1408 0
	movl	16(%ebp), %edi
	movl	%edi, -556(%ebp)
	jmp	.L302
.L397:
	.loc 1 1412 0
	cmpl	$64, -76(%ebp)
	ja	.L709
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L709
	movl	-64(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	movl	12(%ebp), %edx
	movl	mode_mask_array@GOT(%ebx), %eax
	leal	(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L709
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L709
	.loc 1 1416 0
	movl	20(%ebp), %eax
	movl	%eax, -556(%ebp)
	jmp	.L302
.L709:
	.loc 1 1417 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L487
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L487
	.loc 1 1418 0
	movl	16(%ebp), %edx
	movl	%edx, -556(%ebp)
	jmp	.L302
.L398:
	.loc 1 1422 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L717
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L717
	.loc 1 1423 0
	movl	20(%ebp), %ecx
	movl	%ecx, -556(%ebp)
	jmp	.L302
.L717:
	.loc 1 1424 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L487
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L487
	.loc 1 1425 0
	movl	16(%ebp), %esi
	movl	%esi, -556(%ebp)
	jmp	.L302
.L399:
	.loc 1 1429 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L723
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L723
	.loc 1 1430 0
	movl	20(%ebp), %edi
	movl	%edi, -556(%ebp)
	jmp	.L302
.L723:
	.loc 1 1431 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L487
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L487
	.loc 1 1432 0
	movl	16(%ebp), %eax
	movl	%eax, -556(%ebp)
	jmp	.L302
.L401:
	.loc 1 1440 0
	movl	$0, -556(%ebp)
	jmp	.L302
.L400:
	.loc 1 1444 0
	movl	$0, -556(%ebp)
	jmp	.L302
.L382:
	.loc 1 1447 0
	leal	__FUNCTION__.14247@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1447, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L487:
	.loc 1 1450 0
	movl	$0, -556(%ebp)
	jmp	.L302
.L381:
	.loc 1 1456 0
	movl	-68(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -184(%ebp)
	movl	%edx, -180(%ebp)
	.loc 1 1457 0
	movl	-64(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	.loc 1 1459 0
	cmpl	$63, -76(%ebp)
	ja	.L729
	.loc 1 1461 0
	movl	-76(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L809
	movl	%eax, %edx
	xorl	%eax, %eax
.L809:
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	-184(%ebp), %eax
	andl	%esi, %eax
	movl	-180(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -184(%ebp)
	movl	%edx, -180(%ebp)
	.loc 1 1462 0
	movl	-76(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L810
	movl	%eax, %edx
	xorl	%eax, %eax
.L810:
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	-176(%ebp), %eax
	andl	%esi, %eax
	movl	-172(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	.loc 1 1464 0
	movl	-184(%ebp), %eax
	movl	-180(%ebp), %edx
	movl	%eax, -168(%ebp)
	movl	%edx, -164(%ebp)
	.loc 1 1465 0
	movl	-76(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	movl	-168(%ebp), %eax
	movl	-164(%ebp), %edx
	shrdl	%edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	.L811
	movl	%edx, %eax
	sarl	$31, %edx
.L811:
	andl	$1, %eax
	testb	%al, %al
	je	.L731
	.loc 1 1466 0
	movl	-76(%ebp), %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L808
	movl	%esi, %edi
	xorl	%esi, %esi
.L808:
	movl	-168(%ebp), %eax
	orl	%esi, %eax
	movl	-164(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -168(%ebp)
	movl	%edx, -164(%ebp)
.L731:
	.loc 1 1468 0
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
	.loc 1 1469 0
	movl	-76(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	shrdl	%edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	.L807
	movl	%edx, %eax
	sarl	$31, %edx
.L807:
	andl	$1, %eax
	testb	%al, %al
	je	.L735
	.loc 1 1470 0
	movl	-76(%ebp), %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L806
	movl	%esi, %edi
	xorl	%esi, %esi
.L806:
	movl	-160(%ebp), %eax
	orl	%esi, %eax
	movl	-156(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
	jmp	.L735
.L729:
	.loc 1 1474 0
	movl	-184(%ebp), %eax
	movl	-180(%ebp), %edx
	movl	%eax, -168(%ebp)
	movl	%edx, -164(%ebp)
	.loc 1 1475 0
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
.L735:
	.loc 1 1480 0
	movl	8(%ebp), %edx
	subl	$84, %edx
	movl	%edx, -616(%ebp)
	cmpl	$21, -616(%ebp)
	ja	.L736
	movl	-616(%ebp), %eax
	sall	$2, %eax
	movl	.L757@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L757:
	.long	.L737@GOTOFF
	.long	.L738@GOTOFF
	.long	.L739@GOTOFF
	.long	.L736@GOTOFF
	.long	.L740@GOTOFF
	.long	.L741@GOTOFF
	.long	.L742@GOTOFF
	.long	.L743@GOTOFF
	.long	.L744@GOTOFF
	.long	.L745@GOTOFF
	.long	.L746@GOTOFF
	.long	.L747@GOTOFF
	.long	.L736@GOTOFF
	.long	.L748@GOTOFF
	.long	.L749@GOTOFF
	.long	.L750@GOTOFF
	.long	.L751@GOTOFF
	.long	.L752@GOTOFF
	.long	.L753@GOTOFF
	.long	.L754@GOTOFF
	.long	.L755@GOTOFF
	.long	.L756@GOTOFF
	.text
.L738:
	.loc 1 1483 0
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	addl	-168(%ebp), %eax
	adcl	-164(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 1484 0
	jmp	.L758
.L739:
	.loc 1 1487 0
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	movl	-168(%ebp), %esi
	movl	-164(%ebp), %edi
	movl	%esi, -656(%ebp)
	movl	%edi, -652(%ebp)
	movl	-656(%ebp), %esi
	movl	-652(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 1488 0
	jmp	.L758
.L740:
	.loc 1 1491 0
	movl	-164(%ebp), %eax
	movl	%eax, %ecx
	imull	-160(%ebp), %ecx
	movl	-156(%ebp), %eax
	imull	-168(%ebp), %eax
	addl	%eax, %ecx
	movl	-160(%ebp), %eax
	mull	-168(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 1492 0
	jmp	.L758
.L741:
	.loc 1 1495 0
	movl	-160(%ebp), %eax
	orl	-156(%ebp), %eax
	testl	%eax, %eax
	je	.L759
	movl	-164(%ebp), %eax
	xorl	$-2147483648, %eax
	orl	-168(%ebp), %eax
	testl	%eax, %eax
	jne	.L761
	movl	-156(%ebp), %eax
	xorl	$-1, %eax
	movl	-160(%ebp), %edx
	xorl	$-1, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L761
.L759:
	.loc 1 1498 0
	movl	$0, -556(%ebp)
	jmp	.L302
.L761:
	.loc 1 1499 0
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-168(%ebp), %eax
	movl	-164(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 1500 0
	jmp	.L758
.L742:
	.loc 1 1503 0
	movl	-160(%ebp), %eax
	orl	-156(%ebp), %eax
	testl	%eax, %eax
	je	.L763
	movl	-164(%ebp), %eax
	xorl	$-2147483648, %eax
	orl	-168(%ebp), %eax
	testl	%eax, %eax
	jne	.L765
	movl	-156(%ebp), %eax
	xorl	$-1, %eax
	movl	-160(%ebp), %edx
	xorl	$-1, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L765
.L763:
	.loc 1 1506 0
	movl	$0, -556(%ebp)
	jmp	.L302
.L765:
	.loc 1 1507 0
	movl	-168(%ebp), %eax
	movl	-164(%ebp), %edx
	movl	-160(%ebp), %esi
	movl	-156(%ebp), %edi
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__moddi3@PLT
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 1508 0
	jmp	.L758
.L743:
	.loc 1 1511 0
	movl	-176(%ebp), %eax
	orl	-172(%ebp), %eax
	testl	%eax, %eax
	je	.L767
	movl	-164(%ebp), %eax
	xorl	$-2147483648, %eax
	orl	-168(%ebp), %eax
	testl	%eax, %eax
	jne	.L769
	movl	-156(%ebp), %eax
	xorl	$-1, %eax
	movl	-160(%ebp), %edx
	xorl	$-1, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L769
.L767:
	.loc 1 1514 0
	movl	$0, -556(%ebp)
	jmp	.L302
.L769:
	.loc 1 1515 0
	movl	-184(%ebp), %esi
	movl	-180(%ebp), %edi
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 1516 0
	jmp	.L758
.L744:
	.loc 1 1519 0
	movl	-176(%ebp), %eax
	orl	-172(%ebp), %eax
	testl	%eax, %eax
	je	.L771
	movl	-164(%ebp), %eax
	xorl	$-2147483648, %eax
	orl	-168(%ebp), %eax
	testl	%eax, %eax
	jne	.L773
	movl	-156(%ebp), %eax
	xorl	$-1, %eax
	movl	-160(%ebp), %edx
	xorl	$-1, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L773
.L771:
	.loc 1 1522 0
	movl	$0, -556(%ebp)
	jmp	.L302
.L773:
	.loc 1 1523 0
	movl	-184(%ebp), %esi
	movl	-180(%ebp), %edi
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 1524 0
	jmp	.L758
.L745:
	.loc 1 1527 0
	movl	-176(%ebp), %eax
	andl	-184(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	-172(%ebp), %eax
	andl	-180(%ebp), %eax
	movl	%eax, -148(%ebp)
	.loc 1 1528 0
	jmp	.L758
.L746:
	.loc 1 1531 0
	movl	-176(%ebp), %eax
	orl	-184(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	-172(%ebp), %eax
	orl	-180(%ebp), %eax
	movl	%eax, -148(%ebp)
	.loc 1 1532 0
	jmp	.L758
.L747:
	.loc 1 1535 0
	movl	-176(%ebp), %eax
	xorl	-184(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	-172(%ebp), %eax
	xorl	-180(%ebp), %eax
	movl	%eax, -148(%ebp)
	.loc 1 1536 0
	jmp	.L758
.L751:
	.loc 1 1541 0
	cmpl	$0, -172(%ebp)
	jns	.L775
	.loc 1 1542 0
	movl	$0, -556(%ebp)
	jmp	.L302
.L775:
	.loc 1 1546 0
	movl	-76(%ebp), %eax
	movl	$0, %edx
	movl	-176(%ebp), %esi
	movl	-172(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__moddi3@PLT
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	.loc 1 1549 0
	movl	-184(%ebp), %eax
	movl	-180(%ebp), %edx
	movl	-176(%ebp), %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L805
	movl	%edx, %eax
	xorl	%edx, %edx
.L805:
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 1550 0
	jmp	.L758
.L748:
	.loc 1 1553 0
	cmpl	$0, -172(%ebp)
	jns	.L777
	.loc 1 1554 0
	movl	$0, -556(%ebp)
	jmp	.L302
.L777:
	.loc 1 1558 0
	movl	-76(%ebp), %eax
	movl	$0, %edx
	movl	-176(%ebp), %esi
	movl	-172(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__moddi3@PLT
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	.loc 1 1561 0
	movl	-184(%ebp), %eax
	movl	-180(%ebp), %edx
	movl	-176(%ebp), %ecx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L804
	movl	%eax, %edx
	xorl	%eax, %eax
.L804:
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 1562 0
	jmp	.L758
.L750:
	.loc 1 1565 0
	cmpl	$0, -172(%ebp)
	jns	.L779
	.loc 1 1566 0
	movl	$0, -556(%ebp)
	jmp	.L302
.L779:
	.loc 1 1570 0
	movl	-76(%ebp), %eax
	movl	$0, %edx
	movl	-176(%ebp), %esi
	movl	-172(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__moddi3@PLT
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	.loc 1 1573 0
	movl	-176(%ebp), %ecx
	movl	-168(%ebp), %eax
	movl	-164(%ebp), %edx
	shrdl	%edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	.L803
	movl	%edx, %eax
	sarl	$31, %edx
.L803:
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 1577 0
	cmpl	$0, -164(%ebp)
	jns	.L758
	cmpl	$0, -172(%ebp)
	js	.L758
	cmpl	$0, -172(%ebp)
	jg	.L784
	cmpl	$0, -176(%ebp)
	jbe	.L758
.L784:
	.loc 1 1578 0
	movl	-176(%ebp), %edx
	movl	$64, %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L802
	movl	%esi, %edi
	xorl	%esi, %esi
.L802:
	movl	-152(%ebp), %eax
	orl	%esi, %eax
	movl	-148(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 1580 0
	jmp	.L758
.L752:
	.loc 1 1583 0
	cmpl	$0, -172(%ebp)
	jns	.L785
	.loc 1 1584 0
	movl	$0, -556(%ebp)
	jmp	.L302
.L785:
	.loc 1 1586 0
	movl	-76(%ebp), %eax
	movl	$0, %edx
	movl	-176(%ebp), %esi
	movl	-172(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__moddi3@PLT
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	.loc 1 1587 0
	movl	-184(%ebp), %esi
	movl	-180(%ebp), %edi
	movl	-176(%ebp), %edx
	movl	-76(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L800
	movl	%eax, %edx
	xorl	%eax, %eax
.L800:
	movl	%eax, -424(%ebp)
	movl	%edx, -420(%ebp)
	movl	-184(%ebp), %eax
	movl	-180(%ebp), %edx
	movl	-176(%ebp), %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L801
	movl	%edi, %esi
	xorl	%edi, %edi
.L801:
	movl	-424(%ebp), %eax
	orl	%esi, %eax
	movl	-420(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 1589 0
	jmp	.L758
.L749:
	.loc 1 1592 0
	cmpl	$0, -172(%ebp)
	jns	.L787
	.loc 1 1593 0
	movl	$0, -556(%ebp)
	jmp	.L302
.L787:
	.loc 1 1595 0
	movl	-76(%ebp), %eax
	movl	$0, %edx
	movl	-176(%ebp), %esi
	movl	-172(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__moddi3@PLT
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	.loc 1 1596 0
	movl	-184(%ebp), %eax
	movl	-180(%ebp), %edx
	movl	-176(%ebp), %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L798
	movl	%esi, %edi
	xorl	%esi, %esi
.L798:
	movl	%esi, -416(%ebp)
	movl	%edi, -412(%ebp)
	movl	-184(%ebp), %esi
	movl	-180(%ebp), %edi
	movl	-176(%ebp), %edx
	movl	-76(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L799
	movl	%edi, %esi
	xorl	%edi, %edi
.L799:
	movl	-416(%ebp), %eax
	orl	%esi, %eax
	movl	-412(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 1598 0
	jmp	.L758
.L737:
	.loc 1 1602 0
	movl	$0, -556(%ebp)
	jmp	.L302
.L753:
	.loc 1 1605 0
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	movl	%eax, -632(%ebp)
	movl	%edx, -628(%ebp)
	movl	-168(%ebp), %edx
	movl	-164(%ebp), %ecx
	movl	%edx, -624(%ebp)
	movl	%ecx, -620(%ebp)
	movl	-628(%ebp), %ecx
	cmpl	%ecx, -620(%ebp)
	jl	.L789
	movl	-628(%ebp), %esi
	cmpl	%esi, -620(%ebp)
	jg	.L790
	movl	-632(%ebp), %edi
	cmpl	%edi, -624(%ebp)
	jbe	.L789
.L790:
	movl	-632(%ebp), %eax
	movl	-628(%ebp), %edx
	movl	%eax, -624(%ebp)
	movl	%edx, -620(%ebp)
.L789:
	movl	-624(%ebp), %edx
	movl	-620(%ebp), %ecx
	movl	%edx, -152(%ebp)
	movl	%ecx, -148(%ebp)
	.loc 1 1606 0
	jmp	.L758
.L755:
	.loc 1 1609 0
	movl	-184(%ebp), %eax
	movl	-180(%ebp), %edx
	movl	-176(%ebp), %esi
	movl	-172(%ebp), %edi
	movl	%esi, -408(%ebp)
	movl	%edi, -404(%ebp)
	movl	%eax, -400(%ebp)
	movl	%edx, -396(%ebp)
	movl	-404(%ebp), %edi
	cmpl	%edi, -396(%ebp)
	jb	.L791
	movl	-404(%ebp), %eax
	cmpl	%eax, -396(%ebp)
	ja	.L792
	movl	-408(%ebp), %edx
	cmpl	%edx, -400(%ebp)
	jbe	.L791
.L792:
	movl	-408(%ebp), %esi
	movl	-404(%ebp), %edi
	movl	%esi, -400(%ebp)
	movl	%edi, -396(%ebp)
.L791:
	movl	-400(%ebp), %eax
	movl	-396(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 1611 0
	jmp	.L758
.L754:
	.loc 1 1614 0
	movl	-168(%ebp), %edx
	movl	-164(%ebp), %ecx
	movl	%edx, -648(%ebp)
	movl	%ecx, -644(%ebp)
	movl	-160(%ebp), %esi
	movl	-156(%ebp), %edi
	movl	%esi, -640(%ebp)
	movl	%edi, -636(%ebp)
	movl	-644(%ebp), %edi
	cmpl	%edi, -636(%ebp)
	jg	.L793
	movl	-644(%ebp), %eax
	cmpl	%eax, -636(%ebp)
	jl	.L794
	movl	-648(%ebp), %edx
	cmpl	%edx, -640(%ebp)
	jae	.L793
.L794:
	movl	-648(%ebp), %esi
	movl	-644(%ebp), %edi
	movl	%esi, -640(%ebp)
	movl	%edi, -636(%ebp)
.L793:
	movl	-640(%ebp), %eax
	movl	-636(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 1615 0
	jmp	.L758
.L756:
	.loc 1 1618 0
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	-184(%ebp), %esi
	movl	-180(%ebp), %edi
	movl	%esi, -392(%ebp)
	movl	%edi, -388(%ebp)
	movl	%eax, -384(%ebp)
	movl	%edx, -380(%ebp)
	movl	-388(%ebp), %edi
	cmpl	%edi, -380(%ebp)
	ja	.L795
	movl	-388(%ebp), %eax
	cmpl	%eax, -380(%ebp)
	jb	.L796
	movl	-392(%ebp), %edx
	cmpl	%edx, -384(%ebp)
	jae	.L795
.L796:
	movl	-392(%ebp), %esi
	movl	-388(%ebp), %edi
	movl	%esi, -384(%ebp)
	movl	%edi, -380(%ebp)
.L795:
	movl	-384(%ebp), %eax
	movl	-380(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 1620 0
	jmp	.L758
.L736:
	.loc 1 1623 0
	leal	__FUNCTION__.14247@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1623, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L758:
	.loc 1 1626 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	trunc_int_for_mode@PLT
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 1628 0
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -556(%ebp)
.L302:
	movl	-556(%ebp), %eax
	.loc 1 1629 0
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE23:
	.size	simplify_binary_operation, .-simplify_binary_operation
	.type	simplify_plus_minus_op_data_cmp, @function
simplify_plus_minus_op_data_cmp:
.LFB24:
	.loc 1 1653 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	pushl	%esi
.LCFI44:
	pushl	%ebx
.LCFI45:
	subl	$32, %esp
.LCFI46:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1654 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1655 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1657 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	commutative_operand_precedence@PLT
	movl	%eax, %esi
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	commutative_operand_precedence@PLT
	movl	%esi, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 1 1659 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE24:
	.size	simplify_plus_minus_op_data_cmp, .-simplify_plus_minus_op_data_cmp
	.type	simplify_plus_minus, @function
simplify_plus_minus:
.LFB25:
	.loc 1 1667 0
	pushl	%ebp
.LCFI47:
	movl	%esp, %ebp
.LCFI48:
	pushl	%esi
.LCFI49:
	pushl	%ebx
.LCFI50:
	subl	$192, %esp
.LCFI51:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1670 0
	movl	$2, -80(%ebp)
	movl	$2, -76(%ebp)
	movl	$0, -72(%ebp)
	.loc 1 1674 0
	leal	-152(%ebp), %eax
	movl	%eax, %edx
	movl	$64, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 1680 0
	movl	16(%ebp), %eax
	movl	%eax, -152(%ebp)
	.loc 1 1681 0
	movl	$0, -148(%ebp)
	.loc 1 1682 0
	movl	20(%ebp), %eax
	movl	%eax, -144(%ebp)
	.loc 1 1683 0
	cmpl	$86, 8(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -140(%ebp)
.L820:
	.loc 1 1687 0
	movl	$0, -56(%ebp)
	.loc 1 1689 0
	movl	$0, -52(%ebp)
	jmp	.L821
.L822:
.LBB25:
	.loc 1 1691 0
	movl	-52(%ebp), %eax
	movl	-152(%ebp,%eax,8), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1692 0
	movl	-52(%ebp), %eax
	movl	-148(%ebp,%eax,8), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1693 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -36(%ebp)
	.loc 1 1695 0
	movl	-36(%ebp), %eax
	subl	$64, %eax
	movl	%eax, -172(%ebp)
	cmpl	$32, -172(%ebp)
	ja	.L823
	movl	-172(%ebp), %eax
	sall	$2, %eax
	movl	.L829@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L829:
	.long	.L824@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L825@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L826@GOTOFF
	.long	.L826@GOTOFF
	.long	.L827@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L823@GOTOFF
	.long	.L828@GOTOFF
	.text
.L826:
	.loc 1 1699 0
	cmpl	$7, -80(%ebp)
	jne	.L830
	.loc 1 1700 0
	movl	$0, -168(%ebp)
	jmp	.L832
.L830:
	.loc 1 1702 0
	movl	-80(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -152(%ebp,%edx,8)
	.loc 1 1703 0
	movl	-80(%ebp), %edx
	cmpl	$86, -36(%ebp)
	sete	%al
	movzbl	%al, %eax
	xorl	-40(%ebp), %eax
	movl	%eax, -148(%ebp,%edx,8)
	.loc 1 1704 0
	addl	$1, -80(%ebp)
	.loc 1 1706 0
	movl	-52(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -152(%ebp,%edx,8)
	.loc 1 1707 0
	addl	$1, -76(%ebp)
	.loc 1 1708 0
	movl	$1, -56(%ebp)
	.loc 1 1709 0
	jmp	.L823
.L827:
	.loc 1 1712 0
	movl	-52(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -152(%ebp,%edx,8)
	.loc 1 1713 0
	movl	-52(%ebp), %edx
	cmpl	$0, -40(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -148(%ebp,%edx,8)
	.loc 1 1714 0
	movl	$1, -56(%ebp)
	.loc 1 1715 0
	jmp	.L823
.L825:
	.loc 1 1718 0
	cmpl	$6, -80(%ebp)
	jg	.L823
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L823
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L836
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L836
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L836
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L836
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L836
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L836
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L836
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L823
.L836:
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L844
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L844
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L844
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L844
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L844
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L844
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L844
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L823
.L844:
	.loc 1 1723 0
	movl	-52(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -152(%ebp,%edx,8)
	.loc 1 1724 0
	movl	-80(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -152(%ebp,%edx,8)
	.loc 1 1725 0
	movl	-80(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, -148(%ebp,%edx,8)
	.loc 1 1726 0
	addl	$1, -80(%ebp)
	.loc 1 1727 0
	addl	$1, -72(%ebp)
	.loc 1 1728 0
	movl	$1, -56(%ebp)
	.loc 1 1730 0
	jmp	.L823
.L828:
	.loc 1 1734 0
	cmpl	$7, -80(%ebp)
	je	.L823
	.loc 1 1736 0
	movl	-80(%ebp), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	movl	%eax, -152(%ebp,%edx,8)
	.loc 1 1737 0
	movl	-80(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, -148(%ebp,%edx,8)
	addl	$1, -80(%ebp)
	.loc 1 1738 0
	movl	-52(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -152(%ebp,%edx,8)
	.loc 1 1739 0
	movl	-52(%ebp), %edx
	cmpl	$0, -40(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -148(%ebp,%edx,8)
	.loc 1 1740 0
	movl	$1, -56(%ebp)
	.loc 1 1742 0
	jmp	.L823
.L824:
	.loc 1 1745 0
	cmpl	$0, -40(%ebp)
	je	.L823
	.loc 1 1747 0
	movl	-52(%ebp), %esi
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	neg_const_int
	movl	%eax, -152(%ebp,%esi,8)
	.loc 1 1748 0
	movl	-52(%ebp), %eax
	movl	$0, -148(%ebp,%eax,8)
	.loc 1 1749 0
	movl	$1, -56(%ebp)
.L823:
.LBE25:
	.loc 1 1689 0
	addl	$1, -52(%ebp)
.L821:
	movl	-52(%ebp), %eax
	cmpl	-80(%ebp), %eax
	jl	.L822
	.loc 1 1758 0
	cmpl	$0, -56(%ebp)
	jne	.L820
	.loc 1 1761 0
	cmpl	$2, -80(%ebp)
	jg	.L857
	cmpl	$0, 24(%ebp)
	jne	.L857
	.loc 1 1762 0
	movl	$0, -168(%ebp)
	jmp	.L832
.L857:
	.loc 1 1765 0
	movl	$0, -52(%ebp)
	jmp	.L860
.L861:
	.loc 1 1766 0
	movl	-52(%ebp), %eax
	movl	-152(%ebp,%eax,8), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L862
	.loc 1 1767 0
	addl	$1, -72(%ebp)
.L862:
	.loc 1 1765 0
	addl	$1, -52(%ebp)
.L860:
	movl	-52(%ebp), %eax
	cmpl	-80(%ebp), %eax
	jl	.L861
	.loc 1 1772 0
	movl	$1, -64(%ebp)
.L865:
	.loc 1 1775 0
	movl	-64(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1777 0
	movl	$0, -52(%ebp)
	jmp	.L866
.L867:
	.loc 1 1778 0
	movl	-52(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -48(%ebp)
	jmp	.L868
.L869:
.LBB26:
	.loc 1 1780 0
	movl	-52(%ebp), %eax
	movl	-152(%ebp,%eax,8), %eax
	movl	%eax, -32(%ebp)
	movl	-48(%ebp), %eax
	movl	-152(%ebp,%eax,8), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1781 0
	movl	-52(%ebp), %eax
	movl	-148(%ebp,%eax,8), %eax
	movl	%eax, -24(%ebp)
	movl	-48(%ebp), %eax
	movl	-148(%ebp,%eax,8), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1783 0
	cmpl	$0, -32(%ebp)
	je	.L870
	cmpl	$0, -28(%ebp)
	je	.L870
	cmpl	$0, -64(%ebp)
	je	.L873
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L875
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L875
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L875
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L875
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L875
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L875
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L875
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L870
.L875:
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L873
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L873
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L873
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L873
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L873
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L873
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L873
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L870
.L873:
.LBB27:
	.loc 1 1786 0
	movl	$85, -16(%ebp)
	.loc 1 1788 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	je	.L890
	.loc 1 1790 0
	movl	$86, -16(%ebp)
	.loc 1 1791 0
	cmpl	$0, -24(%ebp)
	je	.L894
	.loc 1 1792 0
	movl	-32(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-84(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L894
.L890:
	.loc 1 1794 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_commutative_operands_p@PLT
	testl	%eax, %eax
	je	.L894
	.loc 1 1795 0
	movl	-32(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-84(%ebp), %eax
	movl	%eax, -28(%ebp)
.L894:
	.loc 1 1797 0
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_binary_operation@PLT
	movl	%eax, -84(%ebp)
	.loc 1 1803 0
	cmpl	$0, -84(%ebp)
	je	.L870
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L897
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-16(%ebp), %eax
	jne	.L897
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L897
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L870
.L897:
	cmpl	$0, -64(%ebp)
	je	.L901
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$96, %ax
	jne	.L901
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L870
.L901:
	.loc 1 1815 0
	movl	-20(%ebp), %eax
	andl	%eax, -24(%ebp)
	.loc 1 1816 0
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$87, %ax
	jne	.L904
	.loc 1 1817 0
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
	cmpl	$0, -24(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
.L904:
	.loc 1 1818 0
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L906
	cmpl	$0, -24(%ebp)
	je	.L906
	.loc 1 1819 0
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	neg_const_int
	movl	%eax, -84(%ebp)
	movl	$0, -24(%ebp)
.L906:
	.loc 1 1821 0
	movl	-52(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	%eax, -152(%ebp,%edx,8)
	.loc 1 1822 0
	movl	-52(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, -148(%ebp,%edx,8)
	.loc 1 1823 0
	movl	-48(%ebp), %eax
	movl	$0, -152(%ebp,%eax,8)
	.loc 1 1824 0
	movl	$1, -56(%ebp)
.L870:
.LBE27:
.LBE26:
	.loc 1 1778 0
	addl	$1, -48(%ebp)
.L868:
	movl	-48(%ebp), %eax
	cmpl	-80(%ebp), %eax
	jl	.L869
	.loc 1 1777 0
	addl	$1, -52(%ebp)
.L866:
	movl	-80(%ebp), %eax
	subl	$1, %eax
	cmpl	-52(%ebp), %eax
	jg	.L867
	.loc 1 1829 0
	movl	$0, -64(%ebp)
	.loc 1 1831 0
	cmpl	$0, -56(%ebp)
	jne	.L865
	.loc 1 1834 0
	movl	$0, -52(%ebp)
	movl	$0, -48(%ebp)
	jmp	.L912
.L913:
	.loc 1 1835 0
	movl	-48(%ebp), %eax
	movl	-152(%ebp,%eax,8), %eax
	testl	%eax, %eax
	je	.L914
	.loc 1 1836 0
	movl	-52(%ebp), %ecx
	movl	-48(%ebp), %eax
	movl	-148(%ebp,%eax,8), %edx
	movl	-152(%ebp,%eax,8), %eax
	movl	%eax, -152(%ebp,%ecx,8)
	movl	%edx, -148(%ebp,%ecx,8)
	addl	$1, -52(%ebp)
.L914:
	.loc 1 1834 0
	addl	$1, -48(%ebp)
.L912:
	movl	-48(%ebp), %eax
	cmpl	-80(%ebp), %eax
	jl	.L913
	.loc 1 1837 0
	movl	-52(%ebp), %eax
	movl	%eax, -80(%ebp)
	.loc 1 1840 0
	movl	-80(%ebp), %edx
	leal	simplify_plus_minus_op_data_cmp@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$8, 8(%esp)
	movl	%edx, 4(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	qsort@PLT
	.loc 1 1848 0
	cmpl	$1, -80(%ebp)
	jle	.L917
	movl	-80(%ebp), %eax
	subl	$1, %eax
	movl	-152(%ebp,%eax,8), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L917
	movl	-80(%ebp), %eax
	subl	$2, %eax
	movl	-152(%ebp,%eax,8), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L920
	movl	-80(%ebp), %eax
	subl	$2, %eax
	movl	-152(%ebp,%eax,8), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L920
	movl	-80(%ebp), %eax
	subl	$2, %eax
	movl	-152(%ebp,%eax,8), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L920
	movl	-80(%ebp), %eax
	subl	$2, %eax
	movl	-152(%ebp,%eax,8), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L920
	movl	-80(%ebp), %eax
	subl	$2, %eax
	movl	-152(%ebp,%eax,8), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L920
	movl	-80(%ebp), %eax
	subl	$2, %eax
	movl	-152(%ebp,%eax,8), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L920
	movl	-80(%ebp), %eax
	subl	$2, %eax
	movl	-152(%ebp,%eax,8), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L920
	movl	-80(%ebp), %eax
	subl	$2, %eax
	movl	-152(%ebp,%eax,8), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L917
.L920:
.LBB28:
	.loc 1 1852 0
	movl	-80(%ebp), %eax
	subl	$1, %eax
	movl	-152(%ebp,%eax,8), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1853 0
	movl	-80(%ebp), %eax
	subl	$1, %eax
	movl	-148(%ebp,%eax,8), %edx
	movl	-80(%ebp), %eax
	subl	$2, %eax
	movl	-148(%ebp,%eax,8), %eax
	cmpl	%eax, %edx
	je	.L928
	.loc 1 1854 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	neg_const_int
	movl	%eax, -12(%ebp)
.L928:
	.loc 1 1855 0
	movl	-80(%ebp), %esi
	subl	$2, %esi
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	-80(%ebp), %eax
	subl	$2, %eax
	movl	-152(%ebp,%eax,8), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -152(%ebp,%esi,8)
	.loc 1 1856 0
	subl	$1, -80(%ebp)
.L917:
.LBE28:
	.loc 1 1860 0
	movl	$0, -68(%ebp)
	.loc 1 1861 0
	movl	$0, -52(%ebp)
	jmp	.L930
.L931:
	.loc 1 1862 0
	movl	-52(%ebp), %eax
	movl	-152(%ebp,%eax,8), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L932
	.loc 1 1863 0
	addl	$1, -68(%ebp)
.L932:
	.loc 1 1861 0
	addl	$1, -52(%ebp)
.L930:
	movl	-52(%ebp), %eax
	cmpl	-80(%ebp), %eax
	jl	.L931
	.loc 1 1869 0
	cmpl	$0, 24(%ebp)
	jne	.L935
	movl	-68(%ebp), %eax
	addl	-80(%ebp), %eax
	cmpl	-76(%ebp), %eax
	jg	.L937
	movl	-68(%ebp), %eax
	addl	-80(%ebp), %eax
	cmpl	-76(%ebp), %eax
	jne	.L935
	movl	-68(%ebp), %eax
	cmpl	-72(%ebp), %eax
	jg	.L935
.L937:
	.loc 1 1872 0
	movl	$0, -168(%ebp)
	jmp	.L832
.L935:
	.loc 1 1877 0
	movl	$0, -60(%ebp)
	.loc 1 1878 0
	movl	$0, -52(%ebp)
	jmp	.L940
.L941:
	addl	$1, -52(%ebp)
.L940:
	movl	-52(%ebp), %eax
	cmpl	-80(%ebp), %eax
	jge	.L942
	movl	-52(%ebp), %eax
	movl	-148(%ebp,%eax,8), %eax
	testl	%eax, %eax
	jne	.L941
.L942:
	.loc 1 1880 0
	movl	-52(%ebp), %eax
	cmpl	-80(%ebp), %eax
	jne	.L944
	.loc 1 1882 0
	movl	$0, -52(%ebp)
	jmp	.L946
.L947:
	.loc 1 1883 0
	movl	-52(%ebp), %eax
	movl	$0, -148(%ebp,%eax,8)
	.loc 1 1882 0
	addl	$1, -52(%ebp)
.L946:
	movl	-52(%ebp), %eax
	cmpl	-80(%ebp), %eax
	jl	.L947
	.loc 1 1884 0
	movl	$1, -60(%ebp)
	jmp	.L949
.L944:
	.loc 1 1886 0
	cmpl	$0, -52(%ebp)
	je	.L949
	.loc 1 1888 0
	movl	-152(%ebp), %eax
	movl	%eax, -84(%ebp)
	.loc 1 1889 0
	movl	-52(%ebp), %eax
	movl	-148(%ebp,%eax,8), %edx
	movl	-152(%ebp,%eax,8), %eax
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 1890 0
	movl	-52(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	%eax, -152(%ebp,%edx,8)
	.loc 1 1891 0
	movl	-52(%ebp), %eax
	movl	$1, -148(%ebp,%eax,8)
.L949:
	.loc 1 1895 0
	movl	-152(%ebp), %eax
	movl	%eax, -88(%ebp)
	.loc 1 1896 0
	movl	$1, -52(%ebp)
	jmp	.L951
.L952:
	.loc 1 1897 0
	movl	-52(%ebp), %eax
	movl	-152(%ebp,%eax,8), %eax
	movl	%eax, -164(%ebp)
	movl	-52(%ebp), %eax
	movl	-148(%ebp,%eax,8), %eax
	testl	%eax, %eax
	je	.L953
	movl	$86, -160(%ebp)
	jmp	.L955
.L953:
	movl	$85, -160(%ebp)
.L955:
	movl	-164(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -88(%ebp)
	.loc 1 1896 0
	addl	$1, -52(%ebp)
.L951:
	movl	-52(%ebp), %eax
	cmpl	-80(%ebp), %eax
	jl	.L952
	.loc 1 1900 0
	cmpl	$0, -60(%ebp)
	je	.L957
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$87, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -156(%ebp)
	jmp	.L959
.L957:
	movl	-88(%ebp), %eax
	movl	%eax, -156(%ebp)
.L959:
	movl	-156(%ebp), %eax
	movl	%eax, -168(%ebp)
.L832:
	movl	-168(%ebp), %eax
	.loc 1 1901 0
	addl	$192, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE25:
	.size	simplify_plus_minus, .-simplify_plus_minus
	.section	.rodata
	.type	__FUNCTION__.15882, @object
	.size	__FUNCTION__.15882, 30
__FUNCTION__.15882:
	.string	"simplify_relational_operation"
	.text
.globl simplify_relational_operation
	.type	simplify_relational_operation, @function
simplify_relational_operation:
.LFB26:
	.loc 1 1916 0
	pushl	%ebp
.LCFI52:
	movl	%esp, %ebp
.LCFI53:
	pushl	%edi
.LCFI54:
	pushl	%esi
.LCFI55:
	pushl	%ebx
.LCFI56:
	subl	$380, %esp
.LCFI57:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1922 0
	cmpl	$0, 12(%ebp)
	jne	.L962
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L964
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L962
.L964:
	.loc 1 1925 0
	leal	__FUNCTION__.15882@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1925, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L962:
	.loc 1 1928 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$84, %ax
	jne	.L966
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	.L966
	.loc 1 1929 0
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 20(%ebp)
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 16(%ebp)
.L966:
	.loc 1 1931 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	avoid_constant_pool_reference@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1932 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	avoid_constant_pool_reference@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1936 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$4, %eax
	jne	.L969
	.loc 1 1941 0
	movl	$0, -284(%ebp)
	jmp	.L971
.L969:
	.loc 1 1944 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_commutative_operands_p@PLT
	testl	%eax, %eax
	je	.L972
	.loc 1 1946 0
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, 20(%ebp)
	.loc 1 1947 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1948 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_condition@PLT
	movl	%eax, 8(%ebp)
.L972:
	.loc 1 1961 0
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L974
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$3, %eax
	je	.L974
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$5, %eax
	je	.L974
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$7, %eax
	jne	.L978
.L974:
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L978
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L980
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L982
.L980:
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L978
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L978
.L982:
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$86, (%esp)
	call	simplify_binary_operation@PLT
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L978
	cmpl	$119, 8(%ebp)
	je	.L978
	cmpl	$118, 8(%ebp)
	je	.L978
	cmpl	$121, 8(%ebp)
	je	.L978
	cmpl	$120, 8(%ebp)
	je	.L978
	.loc 1 1966 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	signed_condition@PLT
	movl	%eax, %edx
	movl	%esi, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_relational_operation@PLT
	movl	%eax, -284(%ebp)
	jmp	.L971
.L978:
	.loc 1 1969 0
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L989
	cmpl	$123, 8(%ebp)
	jne	.L989
	.loc 1 1970 0
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -284(%ebp)
	jmp	.L971
.L989:
	.loc 1 1972 0
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L992
	cmpl	$122, 8(%ebp)
	jne	.L992
	.loc 1 1973 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -284(%ebp)
	jmp	.L971
.L992:
	.loc 1 1977 0
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L995
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L995
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L998
.L995:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L999
.L998:
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L999
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L999
	.loc 1 1980 0
	movl	$1, -52(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	.loc 1 1977 0
	jmp	.L1002
.L999:
	.loc 1 1984 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L1003
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L1003
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	jne	.L1003
.LBB29:
	.loc 1 1990 0
	movl	-28(%ebp), %edx
	addl	$4, %edx
	leal	-144(%ebp), %ecx
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
	.loc 1 1991 0
	movl	-24(%ebp), %edx
	addl	$4, %edx
	leal	-168(%ebp), %ecx
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
	.loc 1 1994 0
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	real_isnan@PLT
	testb	%al, %al
	jne	.L1007
	leal	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	real_isnan@PLT
	testb	%al, %al
	je	.L1009
.L1007:
	.loc 1 1995 0
	movl	8(%ebp), %eax
	subl	$112, %eax
	movl	%eax, -288(%ebp)
	cmpl	$17, -288(%ebp)
	ja	.L1010
	movl	$1, %eax
	movl	%eax, %edx
	movzbl	-288(%ebp), %ecx
	sall	%cl, %edx
	movl	%edx, -292(%ebp)
	movl	-292(%ebp), %eax
	andl	$128001, %eax
	testl	%eax, %eax
	jne	.L1011
	movl	-292(%ebp), %eax
	andl	$133182, %eax
	testl	%eax, %eax
	jne	.L1012
	jmp	.L1010
.L1011:
	.loc 1 2004 0
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -284(%ebp)
	jmp	.L971
.L1012:
	.loc 1 2012 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -284(%ebp)
	jmp	.L971
.L1010:
	.loc 1 2014 0
	movl	$0, -284(%ebp)
	jmp	.L971
.L1009:
	.loc 1 2017 0
	leal	-168(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$103, (%esp)
	call	real_compare@PLT
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	.loc 1 2018 0
	leal	-168(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$99, (%esp)
	call	real_compare@PLT
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2019 0
	leal	-144(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-168(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$99, (%esp)
	call	real_compare@PLT
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1984 0
	jmp	.L1002
.L1003:
.LBE29:
	.loc 1 2023 0
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L1013
	cmpl	$0, 12(%ebp)
	jne	.L1015
.L1013:
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1016
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1015
.L1016:
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1018
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1015
.L1018:
.LBB30:
	.loc 1 2029 0
	movl	12(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 2034 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L1020
	.loc 1 2036 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 2037 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	jmp	.L1022
.L1020:
	.loc 1 2041 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 2042 0
	cmpl	$0, -116(%ebp)
	jns	.L1023
	movl	$-1, -280(%ebp)
	movl	$-1, -276(%ebp)
	jmp	.L1025
.L1023:
	movl	$0, -280(%ebp)
	movl	$0, -276(%ebp)
.L1025:
	movl	-280(%ebp), %eax
	movl	-276(%ebp), %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
.L1022:
	.loc 1 2045 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L1026
	.loc 1 2047 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 2048 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	jmp	.L1028
.L1026:
	.loc 1 2052 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 2053 0
	cmpl	$0, -100(%ebp)
	jns	.L1029
	movl	$-1, -272(%ebp)
	movl	$-1, -268(%ebp)
	jmp	.L1031
.L1029:
	movl	$0, -272(%ebp)
	movl	$0, -268(%ebp)
.L1031:
	movl	-272(%ebp), %edx
	movl	-268(%ebp), %ecx
	movl	%edx, -96(%ebp)
	movl	%ecx, -92(%ebp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
.L1028:
	.loc 1 2058 0
	cmpl	$0, -20(%ebp)
	je	.L1032
	cmpl	$63, -20(%ebp)
	jg	.L1032
	.loc 1 2060 0
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1229
	movl	%eax, %edx
	xorl	%eax, %eax
.L1229:
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-88(%ebp), %eax
	andl	%esi, %eax
	movl	-84(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 2061 0
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1230
	movl	%eax, %edx
	xorl	%eax, %eax
.L1230:
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-72(%ebp), %eax
	andl	%esi, %eax
	movl	-68(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 2063 0
	movl	-20(%ebp), %ecx
	subl	$1, %ecx
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	shrdl	%edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	.L1231
	movl	%edx, %eax
	sarl	$31, %edx
.L1231:
	andl	$1, %eax
	testb	%al, %al
	je	.L1035
	.loc 1 2064 0
	movl	-20(%ebp), %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1228
	movl	%esi, %edi
	xorl	%esi, %esi
.L1228:
	movl	-120(%ebp), %eax
	orl	%esi, %eax
	movl	-116(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
.L1035:
	.loc 1 2066 0
	movl	-20(%ebp), %ecx
	subl	$1, %ecx
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	shrdl	%edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	.L1227
	movl	%edx, %eax
	sarl	$31, %edx
.L1227:
	andl	$1, %eax
	testb	%al, %al
	je	.L1032
	.loc 1 2067 0
	movl	-20(%ebp), %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1226
	movl	%esi, %edi
	xorl	%esi, %esi
.L1226:
	movl	-104(%ebp), %eax
	orl	%esi, %eax
	movl	-100(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
.L1032:
	.loc 1 2069 0
	cmpl	$0, -20(%ebp)
	je	.L1038
	cmpl	$64, -20(%ebp)
	jg	.L1038
	.loc 1 2070 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	cmpl	$0, -116(%ebp)
	jns	.L1041
	movl	$-1, -264(%ebp)
	movl	$-1, -260(%ebp)
	jmp	.L1043
.L1041:
	movl	$0, -264(%ebp)
	movl	$0, -260(%ebp)
.L1043:
	movl	-264(%ebp), %eax
	movl	-260(%ebp), %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	cmpl	$0, -100(%ebp)
	jns	.L1044
	movl	$-1, -256(%ebp)
	movl	$-1, -252(%ebp)
	jmp	.L1046
.L1044:
	movl	$0, -256(%ebp)
	movl	$0, -252(%ebp)
.L1046:
	movl	-256(%ebp), %edx
	movl	-252(%ebp), %ecx
	movl	%edx, -96(%ebp)
	movl	%ecx, -92(%ebp)
.L1038:
	.loc 1 2072 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%edx, %ecx
	xorl	-60(%ebp), %ecx
	xorl	-64(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1047
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%edx, %ecx
	xorl	-68(%ebp), %ecx
	xorl	-72(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1047
	movl	$1, -244(%ebp)
	jmp	.L1050
.L1047:
	movl	$0, -244(%ebp)
.L1050:
	movl	-244(%ebp), %ecx
	movl	%ecx, -52(%ebp)
	.loc 1 2073 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -304(%ebp)
	movl	%edx, -300(%ebp)
	movl	-300(%ebp), %edx
	cmpl	-92(%ebp), %edx
	jl	.L1051
	movl	-300(%ebp), %ecx
	cmpl	-92(%ebp), %ecx
	jg	.L1053
	movl	-304(%ebp), %eax
	cmpl	-96(%ebp), %eax
	jb	.L1051
.L1053:
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%edx, %ecx
	xorl	-92(%ebp), %ecx
	xorl	-96(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1054
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	%edx, -312(%ebp)
	movl	%ecx, -308(%ebp)
	movl	-308(%ebp), %ecx
	cmpl	-68(%ebp), %ecx
	ja	.L1054
	movl	-308(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jb	.L1051
	movl	-312(%ebp), %edx
	cmpl	-72(%ebp), %edx
	jae	.L1054
.L1051:
	movl	$1, -240(%ebp)
	jmp	.L1057
.L1054:
	movl	$0, -240(%ebp)
.L1057:
	movl	-240(%ebp), %ecx
	movl	%ecx, -48(%ebp)
	.loc 1 2074 0
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, -320(%ebp)
	movl	%edx, -316(%ebp)
	movl	-316(%ebp), %edx
	cmpl	-108(%ebp), %edx
	jl	.L1058
	movl	-316(%ebp), %ecx
	cmpl	-108(%ebp), %ecx
	jg	.L1060
	movl	-320(%ebp), %eax
	cmpl	-112(%ebp), %eax
	jb	.L1058
.L1060:
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%edx, %ecx
	xorl	-108(%ebp), %ecx
	xorl	-112(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1061
	movl	-72(%ebp), %edx
	movl	-68(%ebp), %ecx
	movl	%edx, -328(%ebp)
	movl	%ecx, -324(%ebp)
	movl	-324(%ebp), %ecx
	cmpl	-84(%ebp), %ecx
	ja	.L1061
	movl	-324(%ebp), %eax
	cmpl	-84(%ebp), %eax
	jb	.L1058
	movl	-328(%ebp), %edx
	cmpl	-88(%ebp), %edx
	jae	.L1061
.L1058:
	movl	$1, -236(%ebp)
	jmp	.L1064
.L1061:
	movl	$0, -236(%ebp)
.L1064:
	movl	-236(%ebp), %ecx
	movl	%ecx, -40(%ebp)
	.loc 1 2075 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -336(%ebp)
	movl	%edx, -332(%ebp)
	movl	-332(%ebp), %edx
	cmpl	-60(%ebp), %edx
	jb	.L1065
	movl	-332(%ebp), %ecx
	cmpl	-60(%ebp), %ecx
	ja	.L1067
	movl	-336(%ebp), %eax
	cmpl	-64(%ebp), %eax
	jb	.L1065
.L1067:
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%edx, %ecx
	xorl	-60(%ebp), %ecx
	xorl	-64(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1068
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	%edx, -344(%ebp)
	movl	%ecx, -340(%ebp)
	movl	-340(%ebp), %ecx
	cmpl	-68(%ebp), %ecx
	ja	.L1068
	movl	-340(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jb	.L1065
	movl	-344(%ebp), %edx
	cmpl	-72(%ebp), %edx
	jae	.L1068
.L1065:
	movl	$1, -232(%ebp)
	jmp	.L1071
.L1068:
	movl	$0, -232(%ebp)
.L1071:
	movl	-232(%ebp), %ecx
	movl	%ecx, -44(%ebp)
	.loc 1 2076 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, -352(%ebp)
	movl	%edx, -348(%ebp)
	movl	-348(%ebp), %edx
	cmpl	-76(%ebp), %edx
	jb	.L1072
	movl	-348(%ebp), %ecx
	cmpl	-76(%ebp), %ecx
	ja	.L1074
	movl	-352(%ebp), %eax
	cmpl	-80(%ebp), %eax
	jb	.L1072
.L1074:
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%edx, %ecx
	xorl	-76(%ebp), %ecx
	xorl	-80(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1075
	movl	-72(%ebp), %edx
	movl	-68(%ebp), %ecx
	movl	%edx, -360(%ebp)
	movl	%ecx, -356(%ebp)
	movl	-356(%ebp), %ecx
	cmpl	-84(%ebp), %ecx
	ja	.L1075
	movl	-356(%ebp), %eax
	cmpl	-84(%ebp), %eax
	jb	.L1072
	movl	-360(%ebp), %edx
	cmpl	-88(%ebp), %edx
	jae	.L1075
.L1072:
	movl	$1, -228(%ebp)
	jmp	.L1078
.L1075:
	movl	$0, -228(%ebp)
.L1078:
	movl	-228(%ebp), %ecx
	movl	%ecx, -36(%ebp)
	.loc 1 2023 0
	jmp	.L1002
.L1015:
.LBE30:
	.loc 1 2082 0
	movl	8(%ebp), %eax
	subl	$112, %eax
	movl	%eax, -364(%ebp)
	cmpl	$9, -364(%ebp)
	ja	.L1079
	movl	-364(%ebp), %eax
	sall	$2, %eax
	movl	.L1088@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1088:
	.long	.L1080@GOTOFF
	.long	.L1081@GOTOFF
	.long	.L1082@GOTOFF
	.long	.L1079@GOTOFF
	.long	.L1079@GOTOFF
	.long	.L1083@GOTOFF
	.long	.L1084@GOTOFF
	.long	.L1085@GOTOFF
	.long	.L1086@GOTOFF
	.long	.L1087@GOTOFF
	.text
.L1081:
	.loc 1 2087 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L1089
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L1089
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L1089
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L1089
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1094
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1094
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L1089
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L1089
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L1099
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1089
.L1099:
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	je	.L1089
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	je	.L1089
.L1094:
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L1089
	movl	global_rtl@GOT(%ebx), %eax
	movl	32(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L1089
	movl	global_rtl@GOT(%ebx), %eax
	movl	36(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L1089
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1105
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1105
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	.L1089
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	32(%eax), %eax
	cmpl	%eax, %edx
	je	.L1089
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	36(%eax), %eax
	cmpl	%eax, %edx
	je	.L1089
.L1105:
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L1110
.L1089:
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L1111
.L1110:
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L1079
.L1111:
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L1079
	.loc 1 2094 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -284(%ebp)
	jmp	.L971
.L1080:
	.loc 1 2098 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L1114
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L1114
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L1114
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L1114
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1119
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1119
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L1114
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L1114
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L1124
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1114
.L1124:
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	je	.L1114
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	je	.L1114
.L1119:
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L1114
	movl	global_rtl@GOT(%ebx), %eax
	movl	32(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L1114
	movl	global_rtl@GOT(%ebx), %eax
	movl	36(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L1114
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1130
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1130
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	.L1114
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	32(%eax), %eax
	cmpl	%eax, %edx
	je	.L1114
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	36(%eax), %eax
	cmpl	%eax, %edx
	je	.L1114
.L1130:
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L1135
.L1114:
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L1136
.L1135:
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L1079
.L1136:
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L1079
	.loc 1 2104 0
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -284(%ebp)
	jmp	.L971
.L1084:
	.loc 1 2109 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L1079
	.loc 1 2110 0
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -284(%ebp)
	jmp	.L971
.L1087:
	.loc 1 2114 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L1079
	.loc 1 2115 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -284(%ebp)
	jmp	.L971
.L1086:
	.loc 1 2121 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1079
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	movl	12(%ebp), %edx
	movl	mode_mask_array@GOT(%ebx), %eax
	leal	(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1079
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L1146
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$3, %eax
	je	.L1146
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$5, %eax
	je	.L1146
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$7, %eax
	jne	.L1079
.L1146:
	.loc 1 2124 0
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -284(%ebp)
	jmp	.L971
.L1085:
	.loc 1 2128 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1079
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	movl	12(%ebp), %edx
	movl	mode_mask_array@GOT(%ebx), %eax
	leal	(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1079
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L1153
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$3, %eax
	je	.L1153
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$5, %eax
	je	.L1153
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$7, %eax
	jne	.L1079
.L1153:
	.loc 1 2131 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -284(%ebp)
	jmp	.L971
.L1083:
	.loc 1 2136 0
	movl	12(%ebp), %eax
	movl	const_tiny_rtx@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	-24(%ebp), %eax
	jne	.L1079
	movl	flag_signaling_nans@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1159
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L1161
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L1161
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	jne	.L1159
.L1161:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1079
.L1159:
	.loc 1 2138 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$133, %ax
	jne	.L1164
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -224(%ebp)
	jmp	.L1166
.L1164:
	movl	-28(%ebp), %edx
	movl	%edx, -224(%ebp)
.L1166:
	movl	-224(%ebp), %ecx
	movl	%ecx, -32(%ebp)
	.loc 1 2140 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$139, %ax
	jne	.L1079
	.loc 1 2141 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -284(%ebp)
	jmp	.L971
.L1082:
	.loc 1 2147 0
	movl	12(%ebp), %eax
	movl	const_tiny_rtx@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	-24(%ebp), %eax
	jne	.L1079
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L1169
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L1169
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	jne	.L1172
.L1169:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1079
.L1172:
	.loc 1 2149 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$133, %ax
	jne	.L1173
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -220(%ebp)
	jmp	.L1175
.L1173:
	movl	-28(%ebp), %eax
	movl	%eax, -220(%ebp)
.L1175:
	movl	-220(%ebp), %edx
	movl	%edx, -32(%ebp)
	.loc 1 2151 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$139, %ax
	jne	.L1079
	.loc 1 2152 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, -284(%ebp)
	jmp	.L971
.L1079:
	.loc 1 2160 0
	movl	$0, -284(%ebp)
	jmp	.L971
.L1002:
	.loc 1 2165 0
	movl	8(%ebp), %ecx
	subl	$112, %ecx
	movl	%ecx, -368(%ebp)
	cmpl	$17, -368(%ebp)
	ja	.L1177
	movl	-368(%ebp), %eax
	sall	$2, %eax
	movl	.L1190@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1190:
	.long	.L1178@GOTOFF
	.long	.L1179@GOTOFF
	.long	.L1180@GOTOFF
	.long	.L1181@GOTOFF
	.long	.L1182@GOTOFF
	.long	.L1183@GOTOFF
	.long	.L1184@GOTOFF
	.long	.L1185@GOTOFF
	.long	.L1186@GOTOFF
	.long	.L1187@GOTOFF
	.long	.L1188@GOTOFF
	.long	.L1189@GOTOFF
	.long	.L1179@GOTOFF
	.long	.L1180@GOTOFF
	.long	.L1181@GOTOFF
	.long	.L1182@GOTOFF
	.long	.L1183@GOTOFF
	.long	.L1178@GOTOFF
	.text
.L1179:
	.loc 1 2169 0
	cmpl	$0, -52(%ebp)
	jne	.L1191
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -216(%ebp)
	jmp	.L1193
.L1191:
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -216(%ebp)
.L1193:
	movl	-216(%ebp), %eax
	movl	%eax, -284(%ebp)
	jmp	.L971
.L1178:
	.loc 1 2172 0
	cmpl	$0, -52(%ebp)
	je	.L1194
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -212(%ebp)
	jmp	.L1196
.L1194:
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -212(%ebp)
.L1196:
	movl	-212(%ebp), %edx
	movl	%edx, -284(%ebp)
	jmp	.L971
.L1183:
	.loc 1 2175 0
	cmpl	$0, -48(%ebp)
	jne	.L1197
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -208(%ebp)
	jmp	.L1199
.L1197:
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -208(%ebp)
.L1199:
	movl	-208(%ebp), %ecx
	movl	%ecx, -284(%ebp)
	jmp	.L971
.L1181:
	.loc 1 2178 0
	cmpl	$0, -40(%ebp)
	jne	.L1200
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -204(%ebp)
	jmp	.L1202
.L1200:
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -204(%ebp)
.L1202:
	movl	-204(%ebp), %eax
	movl	%eax, -284(%ebp)
	jmp	.L971
.L1187:
	.loc 1 2180 0
	cmpl	$0, -44(%ebp)
	jne	.L1203
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -200(%ebp)
	jmp	.L1205
.L1203:
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -200(%ebp)
.L1205:
	movl	-200(%ebp), %edx
	movl	%edx, -284(%ebp)
	jmp	.L971
.L1185:
	.loc 1 2182 0
	cmpl	$0, -36(%ebp)
	jne	.L1206
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -196(%ebp)
	jmp	.L1208
.L1206:
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -196(%ebp)
.L1208:
	movl	-196(%ebp), %ecx
	movl	%ecx, -284(%ebp)
	jmp	.L971
.L1182:
	.loc 1 2185 0
	cmpl	$0, -52(%ebp)
	jne	.L1209
	cmpl	$0, -48(%ebp)
	jne	.L1209
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -192(%ebp)
	jmp	.L1212
.L1209:
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -192(%ebp)
.L1212:
	movl	-192(%ebp), %eax
	movl	%eax, -284(%ebp)
	jmp	.L971
.L1180:
	.loc 1 2188 0
	cmpl	$0, -52(%ebp)
	jne	.L1213
	cmpl	$0, -40(%ebp)
	jne	.L1213
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -188(%ebp)
	jmp	.L1216
.L1213:
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -188(%ebp)
.L1216:
	movl	-188(%ebp), %edx
	movl	%edx, -284(%ebp)
	jmp	.L971
.L1186:
	.loc 1 2190 0
	cmpl	$0, -52(%ebp)
	jne	.L1217
	cmpl	$0, -44(%ebp)
	jne	.L1217
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -184(%ebp)
	jmp	.L1220
.L1217:
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -184(%ebp)
.L1220:
	movl	-184(%ebp), %ecx
	movl	%ecx, -284(%ebp)
	jmp	.L971
.L1184:
	.loc 1 2192 0
	cmpl	$0, -52(%ebp)
	jne	.L1221
	cmpl	$0, -36(%ebp)
	jne	.L1221
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -180(%ebp)
	jmp	.L1224
.L1221:
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -180(%ebp)
.L1224:
	movl	-180(%ebp), %eax
	movl	%eax, -284(%ebp)
	jmp	.L971
.L1189:
	.loc 1 2194 0
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -284(%ebp)
	jmp	.L971
.L1188:
	.loc 1 2196 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -284(%ebp)
	jmp	.L971
.L1177:
	.loc 1 2198 0
	leal	__FUNCTION__.15882@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2198, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L971:
	movl	-284(%ebp), %eax
	.loc 1 2200 0
	addl	$380, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE26:
	.size	simplify_relational_operation, .-simplify_relational_operation
	.section	.rodata
	.type	__FUNCTION__.16434, @object
	.size	__FUNCTION__.16434, 27
__FUNCTION__.16434:
	.string	"simplify_ternary_operation"
	.text
.globl simplify_ternary_operation
	.type	simplify_ternary_operation, @function
simplify_ternary_operation:
.LFB27:
	.loc 1 2211 0
	pushl	%ebp
.LCFI58:
	movl	%esp, %ebp
.LCFI59:
	pushl	%edi
.LCFI60:
	pushl	%esi
.LCFI61:
	pushl	%ebx
.LCFI62:
	subl	$124, %esp
.LCFI63:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2212 0
	movl	12(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -48(%ebp)
	.loc 1 2215 0
	cmpl	$0, -48(%ebp)
	jne	.L1233
	.loc 1 2216 0
	movl	$64, -48(%ebp)
.L1233:
	.loc 1 2218 0
	movl	8(%ebp), %eax
	movl	%eax, -112(%ebp)
	cmpl	$143, -112(%ebp)
	ja	.L1239
	cmpl	$142, -112(%ebp)
	jae	.L1237
	cmpl	$82, -112(%ebp)
	je	.L1236
	jmp	.L1235
.L1239:
	cmpl	$152, -112(%ebp)
	je	.L1238
	jmp	.L1235
.L1237:
	.loc 1 2222 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1254
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1254
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1254
	movl	24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	movl	28(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	leal	(%ecx,%eax), %eax
	cmpl	-48(%ebp), %eax
	ja	.L1254
	cmpl	$64, -48(%ebp)
	ja	.L1254
.LBB31:
	.loc 1 2229 0
	movl	20(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 2235 0
	movl	28(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	shrdl	%edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	.L1323
	movl	%edx, %eax
	sarl	$31, %edx
.L1323:
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 2237 0
	movl	24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	xorl	$64, %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1246
	.loc 1 2240 0
	movl	24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1322
	movl	%eax, %edx
	xorl	%eax, %eax
.L1322:
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	-72(%ebp), %eax
	andl	%esi, %eax
	movl	-68(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 2242 0
	cmpl	$142, 8(%ebp)
	jne	.L1246
	movl	24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	shrdl	%edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	.L1321
	movl	%edx, %eax
	sarl	$31, %edx
.L1321:
	andl	$1, %eax
	testb	%al, %al
	je	.L1246
	.loc 1 2244 0
	movl	24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1320
	movl	%eax, %edx
	xorl	%eax, %eax
.L1320:
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
.L1246:
	.loc 1 2251 0
	cmpl	$63, -48(%ebp)
	ja	.L1250
	movl	-48(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1318
	movl	%esi, %edi
	xorl	%esi, %esi
.L1318:
	movl	%esi, %eax
	andl	-72(%ebp), %eax
	movl	%edi, %edx
	andl	-68(%ebp), %edx
	movl	-48(%ebp), %ecx
	subl	$1, %ecx
	movl	$-1, %esi
	movl	$-1, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1319
	movl	%esi, %edi
	xorl	%esi, %esi
.L1319:
	movl	%edx, %ecx
	xorl	%edi, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1250
	.loc 1 2254 0
	movl	-48(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1317
	movl	%eax, %edx
	xorl	%eax, %eax
.L1317:
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	-72(%ebp), %eax
	andl	%esi, %eax
	movl	-68(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
.L1250:
	.loc 1 2256 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -108(%ebp)
	jmp	.L1253
.L1236:
.LBE31:
	.loc 1 2261 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1255
	.loc 1 2262 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	20(%ebp), %eax
	je	.L1257
	movl	24(%ebp), %edx
	movl	%edx, -104(%ebp)
	jmp	.L1259
.L1257:
	movl	28(%ebp), %ecx
	movl	%ecx, -104(%ebp)
.L1259:
	movl	-104(%ebp), %eax
	movl	%eax, -108(%ebp)
	jmp	.L1253
.L1255:
	.loc 1 2265 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$112, %ax
	jne	.L1260
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L1260
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L1263
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L1263
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	jne	.L1266
.L1263:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1260
.L1266:
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1260
	movl	20(%ebp), %eax
	movl	12(%eax), %edx
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1260
	.loc 1 2269 0
	movl	24(%ebp), %edx
	movl	%edx, -108(%ebp)
	jmp	.L1253
.L1260:
	.loc 1 2270 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$113, %ax
	jne	.L1269
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L1269
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L1272
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L1272
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	jne	.L1275
.L1272:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1269
.L1275:
	movl	20(%ebp), %eax
	movl	12(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1269
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1269
	.loc 1 2274 0
	movl	28(%ebp), %ecx
	movl	%ecx, -108(%ebp)
	jmp	.L1253
.L1269:
	.loc 1 2275 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L1254
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L1254
.LBB32:
	.loc 1 2279 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L1281
	movl	20(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -100(%ebp)
	jmp	.L1283
.L1281:
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -100(%ebp)
.L1283:
	movl	-100(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2281 0
	cmpl	$0, -44(%ebp)
	jne	.L1284
	.loc 1 2282 0
	movl	16(%ebp), %eax
	movl	%eax, -44(%ebp)
.L1284:
	.loc 1 2283 0
	movl	20(%ebp), %eax
	movl	12(%eax), %esi
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	simplify_relational_operation@PLT
	movl	%eax, -40(%ebp)
	.loc 1 2287 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L1286
	.loc 1 2288 0
	movl	28(%ebp), %edx
	movl	%edx, -108(%ebp)
	jmp	.L1253
.L1286:
	.loc 1 2289 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L1288
	.loc 1 2290 0
	movl	24(%ebp), %ecx
	movl	%ecx, -108(%ebp)
	jmp	.L1253
.L1288:
	.loc 1 2291 0
	cmpl	$0, -40(%ebp)
	je	.L1290
	.loc 1 2292 0
	movl	-40(%ebp), %eax
	movl	%eax, 20(%ebp)
.L1290:
	.loc 1 2295 0
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1254
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1254
.LBB33:
	.loc 1 2297 0
	movl	24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 2298 0
	movl	28(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 2300 0
	movl	-64(%ebp), %eax
	xorl	$1, %eax
	orl	-60(%ebp), %eax
	testl	%eax, %eax
	jne	.L1294
	movl	-56(%ebp), %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	jne	.L1294
	.loc 1 2301 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 8(%ebp)
	.loc 1 2300 0
	jmp	.L1297
.L1294:
	.loc 1 2302 0
	movl	-64(%ebp), %eax
	orl	-60(%ebp), %eax
	testl	%eax, %eax
	jne	.L1254
	movl	-56(%ebp), %eax
	xorl	$1, %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	jne	.L1254
.LBB34:
	.loc 1 2305 0
	movl	$0, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	reversed_comparison_code@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2306 0
	cmpl	$0, -36(%ebp)
	je	.L1254
	.loc 1 2308 0
	movl	-36(%ebp), %eax
	movl	%eax, 8(%ebp)
.L1297:
.LBE34:
	.loc 1 2313 0
	movl	20(%ebp), %eax
	movl	12(%eax), %edx
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -108(%ebp)
	jmp	.L1253
.L1238:
.LBE33:
.LBE32:
	.loc 1 2318 0
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	jne	.L1301
	movl	24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	jne	.L1301
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$7, %eax
	je	.L1304
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	je	.L1304
.L1301:
	.loc 1 2321 0
	leal	__FUNCTION__.16434@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2321, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1304:
	.loc 1 2322 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	avoid_constant_pool_reference@PLT
	movl	%eax, 20(%ebp)
	.loc 1 2323 0
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	avoid_constant_pool_reference@PLT
	movl	%eax, 24(%ebp)
	.loc 1 2324 0
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	avoid_constant_pool_reference@PLT
	movl	%eax, 28(%ebp)
	.loc 1 2325 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	jne	.L1254
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	jne	.L1254
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1254
.LBB35:
	.loc 1 2329 0
	movl	12(%ebp), %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 2330 0
	movl	12(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-32(%ebp)
	movl	%eax, -28(%ebp)
	.loc 1 2331 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	rtvec_alloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2334 0
	movl	$0, -20(%ebp)
	jmp	.L1310
.L1311:
	.loc 1 2335 0
	movl	-20(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	28(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	-88(%ebp), %eax
	andl	%esi, %eax
	movl	-84(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1312
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -92(%ebp)
	jmp	.L1314
.L1312:
	movl	24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -92(%ebp)
.L1314:
	movl	-24(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	-96(%ebp), %ecx
	movl	%edx, 4(%eax,%ecx,4)
	.loc 1 2334 0
	addl	$1, -20(%ebp)
.L1310:
	movl	-20(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jb	.L1311
	.loc 1 2338 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_CONST_VECTOR@PLT
	movl	%eax, -108(%ebp)
	jmp	.L1253
.L1235:
.LBE35:
	.loc 1 2343 0
	leal	__FUNCTION__.16434@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2343, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1254:
	.loc 1 2346 0
	movl	$0, -108(%ebp)
.L1253:
	movl	-108(%ebp), %eax
	.loc 1 2347 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE27:
	.size	simplify_ternary_operation, .-simplify_ternary_operation
	.section	.rodata
	.type	__FUNCTION__.16677, @object
	.size	__FUNCTION__.16677, 16
__FUNCTION__.16677:
	.string	"simplify_subreg"
	.text
.globl simplify_subreg
	.type	simplify_subreg, @function
simplify_subreg:
.LFB28:
	.loc 1 2356 0
	pushl	%ebp
.LCFI64:
	movl	%esp, %ebp
.LCFI65:
	pushl	%edi
.LCFI66:
	pushl	%esi
.LCFI67:
	pushl	%ebx
.LCFI68:
	subl	$316, %esp
.LCFI69:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2358 0
	cmpl	$0, 16(%ebp)
	je	.L1325
	cmpl	$0, 8(%ebp)
	je	.L1325
	cmpl	$52, 16(%ebp)
	je	.L1325
	cmpl	$52, 8(%ebp)
	jne	.L1329
.L1325:
	.loc 1 2360 0
	leal	__FUNCTION__.16677@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2360, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1329:
	.loc 1 2362 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	16(%ebp), %eax
	je	.L1330
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L1330
	.loc 1 2364 0
	leal	__FUNCTION__.16677@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2364, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1330:
	.loc 1 2366 0
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %edx
	movl	20(%ebp), %eax
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L1333
	movl	16(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	20(%ebp), %eax
	ja	.L1335
.L1333:
	.loc 1 2368 0
	leal	__FUNCTION__.16677@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2368, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1335:
	.loc 1 2370 0
	movl	8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L1336
	cmpl	$0, 20(%ebp)
	jne	.L1336
	.loc 1 2371 0
	movl	12(%ebp), %eax
	movl	%eax, -296(%ebp)
	jmp	.L1339
.L1336:
	.loc 1 2374 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	jne	.L1340
.LBB36:
	.loc 1 2376 0
	movl	16(%ebp), %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -148(%ebp)
	.loc 1 2377 0
	movl	-148(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%eax, -144(%ebp)
	.loc 1 2380 0
	movl	16(%ebp), %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	8(%ebp), %eax
	jne	.L1342
	.loc 1 2382 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-144(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -140(%ebp)
	.loc 1 2387 0
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -296(%ebp)
	jmp	.L1339
.L1342:
	.loc 1 2389 0
	movl	16(%ebp), %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	8(%ebp), %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	%eax, %ecx
	jne	.L1344
	movl	16(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L1344
	.loc 1 2392 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	leal	4(%eax), %edx
	movl	-144(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	%edx, -292(%ebp)
	movl	8(%ebp), %edx
	movl	mode_unit_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	je	.L1347
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	8(%ebp), %edx
	movl	mode_unit_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %edx
	movzbw	%cl, %ax
	divb	%dl
	movzbl	%al, %eax
	movl	%eax, -288(%ebp)
	jmp	.L1349
.L1347:
	movl	$0, -288(%ebp)
.L1349:
	movl	-292(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %edx
	movl	%edx, (%esp)
	call	gen_rtvec_v@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_CONST_VECTOR@PLT
	movl	%eax, -296(%ebp)
	jmp	.L1339
.L1344:
	.loc 1 2397 0
	movl	8(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L1350
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-148(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L1350
.LBB37:
	.loc 1 2403 0
	movl	$0, -176(%ebp)
	movl	$0, -172(%ebp)
	movl	$0, -168(%ebp)
	movl	$0, -164(%ebp)
	.loc 1 2404 0
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-148(%ebp)
	movl	%eax, -136(%ebp)
	.loc 1 2405 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	jne	.L1353
	movl	-136(%ebp), %eax
	addl	-144(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -284(%ebp)
	jmp	.L1355
.L1353:
	movl	-144(%ebp), %ecx
	movl	%ecx, -284(%ebp)
.L1355:
	movl	-284(%ebp), %eax
	movl	%eax, -132(%ebp)
	.loc 1 2406 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1356
	movl	$1, -280(%ebp)
	jmp	.L1358
.L1356:
	movl	$-1, -280(%ebp)
.L1358:
	movl	-280(%ebp), %edx
	movl	%edx, -128(%ebp)
	.loc 1 2407 0
	movl	-148(%ebp), %eax
	sall	$3, %eax
	movl	%eax, -124(%ebp)
	.loc 1 2409 0
	jmp	.L1359
.L1360:
	.loc 1 2411 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-132(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -140(%ebp)
	.loc 1 2412 0
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L1361
	movl	-140(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	jne	.L1361
	.loc 1 2415 0
	movl	-140(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	int_mode_for_mode@PLT
	movl	%eax, %edx
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_lowpart_common@PLT
	movl	%eax, -140(%ebp)
	.loc 1 2417 0
	cmpl	$0, -140(%ebp)
	jne	.L1361
	.loc 1 2418 0
	movl	$0, -296(%ebp)
	jmp	.L1339
.L1361:
	.loc 1 2420 0
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1365
	.loc 1 2421 0
	movl	$0, -296(%ebp)
	jmp	.L1339
.L1365:
	.loc 1 2423 0
	movl	$64, %eax
	movl	%eax, %ecx
	subl	-124(%ebp), %ecx
	movl	-168(%ebp), %eax
	movl	-164(%ebp), %edx
	shrdl	%edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	.L1553
	movl	%edx, %eax
	sarl	$31, %edx
.L1553:
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1367
	.loc 1 2424 0
	movl	$0, -296(%ebp)
	jmp	.L1339
.L1367:
	.loc 1 2425 0
	movl	-124(%ebp), %ecx
	movl	-168(%ebp), %eax
	movl	-164(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1550
	movl	%esi, %edi
	xorl	%esi, %esi
.L1550:
	movl	$64, %eax
	movl	%eax, %ecx
	subl	-124(%ebp), %ecx
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	shrdl	%edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	.L1551
	movl	%edx, %eax
	sarl	$31, %edx
.L1551:
	movl	%esi, %ecx
	orl	%eax, %ecx
	movl	%ecx, -168(%ebp)
	movl	%edi, %eax
	orl	%edx, %eax
	movl	%eax, -164(%ebp)
	.loc 1 2426 0
	movl	-124(%ebp), %ecx
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1552
	movl	%esi, %edi
	xorl	%esi, %esi
.L1552:
	movl	-140(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	.loc 1 2409 0
	movl	-128(%ebp), %eax
	addl	%eax, -132(%ebp)
.L1359:
	subl	$1, -136(%ebp)
	cmpl	$-1, -136(%ebp)
	jne	.L1360
	.loc 1 2428 0
	movl	8(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$64, %ax
	ja	.L1370
	.loc 1 2429 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	trunc_int_for_mode@PLT
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -296(%ebp)
	jmp	.L1339
.L1370:
	.loc 1 2430 0
	movl	8(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$128, %ax
	jne	.L1372
	.loc 1 2431 0
	movl	8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-168(%ebp), %eax
	movl	-164(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	immed_double_const@PLT
	movl	%eax, -296(%ebp)
	jmp	.L1339
.L1372:
	.loc 1 2433 0
	movl	$0, -296(%ebp)
	jmp	.L1339
.L1350:
.LBE37:
	.loc 1 2435 0
	movl	8(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L1374
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	-148(%ebp), %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L1374
.LBB38:
	.loc 1 2439 0
	movl	16(%ebp), %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	int_mode_for_mode@PLT
	movl	%eax, -120(%ebp)
	.loc 1 2440 0
	movl	-148(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %eax
	movl	%eax, -116(%ebp)
	.loc 1 2442 0
	movl	-116(%ebp), %edx
	movl	20(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_subreg@PLT
	movl	%eax, 12(%ebp)
	.loc 1 2443 0
	cmpl	$0, 12(%ebp)
	jne	.L1377
	.loc 1 2444 0
	movl	$0, -296(%ebp)
	jmp	.L1339
.L1377:
	.loc 1 2445 0
	movl	-116(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_subreg@PLT
	movl	%eax, -296(%ebp)
	jmp	.L1339
.L1374:
.LBE38:
	.loc 1 2447 0
	movl	8(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L1340
	.loc 1 2449 0
	movl	$0, -296(%ebp)
	jmp	.L1339
.L1340:
.LBE36:
	.loc 1 2453 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1380
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1380
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1380
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1380
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1380
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1380
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1380
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1388
.L1380:
.LBB39:
	.loc 1 2456 0
	movl	$0, -160(%ebp)
	movl	$0, -156(%ebp)
	.loc 1 2458 0
	movl	8(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$7, %eax
	je	.L1389
	movl	8(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	jne	.L1391
.L1389:
.LBB40:
	.loc 1 2462 0
	movl	8(%ebp), %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -104(%ebp)
	.loc 1 2463 0
	movl	8(%ebp), %edx
	movl	mode_unit_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -100(%ebp)
	.loc 1 2464 0
	movl	8(%ebp), %edx
	movl	mode_unit_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	je	.L1392
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	8(%ebp), %edx
	movl	mode_unit_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %edx
	movzbw	%cl, %ax
	divb	%dl
	movzbl	%al, %eax
	movl	%eax, -276(%ebp)
	jmp	.L1394
.L1392:
	movl	$0, -276(%ebp)
.L1394:
	movl	-276(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 2465 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	rtvec_alloc@PLT
	movl	%eax, -88(%ebp)
	.loc 1 2468 0
	movl	$0, -96(%ebp)
	jmp	.L1395
.L1396:
	.loc 1 2473 0
	movl	16(%ebp), %edx
	movl	mode_unit_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	20(%ebp), %eax
	ja	.L1397
	.loc 1 2474 0
	movl	-104(%ebp), %eax
	movl	const_tiny_rtx@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1399
.L1397:
	.loc 1 2476 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_subreg@PLT
	movl	%eax, -84(%ebp)
.L1399:
	.loc 1 2477 0
	cmpl	$0, -84(%ebp)
	jne	.L1400
	.loc 1 2478 0
	movl	$0, -296(%ebp)
	jmp	.L1339
.L1400:
	.loc 1 2479 0
	movl	-96(%ebp), %ecx
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 4(%edx,%ecx,4)
	.loc 1 2468 0
	addl	$1, -96(%ebp)
	movl	-100(%ebp), %eax
	addl	%eax, 20(%ebp)
.L1395:
	movl	-96(%ebp), %eax
	cmpl	-92(%ebp), %eax
	jl	.L1396
	.loc 1 2481 0
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_CONST_VECTOR@PLT
	movl	%eax, -296(%ebp)
	jmp	.L1339
.L1391:
.LBE40:
	.loc 1 2489 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_lowpart_offset@PLT
	cmpl	20(%ebp), %eax
	jne	.L1403
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1403
.LBB41:
	.loc 1 2492 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart_if_possible@PLT
	movl	%eax, -80(%ebp)
	.loc 1 2493 0
	cmpl	$0, -80(%ebp)
	je	.L1403
	.loc 1 2494 0
	movl	-80(%ebp), %edx
	movl	%edx, -296(%ebp)
	jmp	.L1339
.L1403:
.LBE41:
	.loc 1 2498 0
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -272(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1407
	movl	$8, -268(%ebp)
	jmp	.L1409
.L1407:
	movl	$4, -268(%ebp)
.L1409:
	movl	-268(%ebp), %ecx
	cmpl	%ecx, -272(%ebp)
	jne	.L1410
	movl	16(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -264(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1412
	movl	$8, -260(%ebp)
	jmp	.L1414
.L1412:
	movl	$4, -260(%ebp)
.L1414:
	movl	-260(%ebp), %eax
	cmpl	%eax, -264(%ebp)
	jle	.L1410
	movl	8(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L1410
.LBB42:
	.loc 1 2504 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1417
	movl	$8, -256(%ebp)
	jmp	.L1419
.L1417:
	movl	$4, -256(%ebp)
.L1419:
	movl	20(%ebp), %eax
	movl	$0, %edx
	divl	-256(%ebp)
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	constant_subword@PLT
	movl	%eax, -76(%ebp)
	.loc 1 2505 0
	cmpl	$0, -76(%ebp)
	je	.L1410
	.loc 1 2506 0
	movl	-76(%ebp), %edx
	movl	%edx, -296(%ebp)
	jmp	.L1339
.L1410:
.LBE42:
	.loc 1 2509 0
	movl	8(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L1421
	movl	8(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$4, %eax
	je	.L1421
.LBB43:
	.loc 1 2512 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	int_mode_for_mode@PLT
	movl	%eax, -72(%ebp)
	.loc 1 2514 0
	movl	-72(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L1424
	cmpl	$0, 20(%ebp)
	je	.L1421
.L1424:
	.loc 1 2516 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_subreg@PLT
	movl	%eax, 12(%ebp)
	.loc 1 2517 0
	cmpl	$0, 12(%ebp)
	jne	.L1426
	.loc 1 2518 0
	movl	$0, -296(%ebp)
	jmp	.L1339
.L1426:
	.loc 1 2519 0
	movl	$0, 12(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_subreg@PLT
	movl	%eax, -296(%ebp)
	jmp	.L1339
.L1421:
.LBE43:
	.loc 1 2523 0
	movl	20(%ebp), %eax
	sall	$3, %eax
	movl	%eax, -112(%ebp)
	.loc 1 2524 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -252(%ebp)
	cmpl	$64, -252(%ebp)
	je	.L1428
	cmpl	$65, -252(%ebp)
	je	.L1429
	jmp	.L1388
.L1429:
	.loc 1 2527 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L1388
	.loc 1 2531 0
	movl	8(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$63, %ax
	jbe	.L1431
	.loc 1 2532 0
	movl	$0, -296(%ebp)
	jmp	.L1339
.L1431:
	.loc 1 2534 0
	cmpl	$63, -112(%ebp)
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -108(%ebp)
	.loc 1 2535 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1433
	.loc 1 2539 0
	cmpl	$0, -108(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -108(%ebp)
.L1433:
	.loc 1 2540 0
	cmpl	$0, -108(%ebp)
	je	.L1435
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%eax), %ecx
	movl	%edx, -248(%ebp)
	movl	%ecx, -244(%ebp)
	jmp	.L1437
.L1435:
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -248(%ebp)
	movl	%ecx, -244(%ebp)
.L1437:
	movl	-248(%ebp), %eax
	movl	-244(%ebp), %edx
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
	.loc 1 2541 0
	movl	-112(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	movl	%eax, %ecx
	shrl	$26, %ecx
	leal	(%edx,%ecx), %eax
	andl	$63, %eax
	subl	%ecx, %eax
	movl	%eax, -112(%ebp)
	.loc 1 2545 0
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	$64, (%esp)
	call	mode_for_size@PLT
	movl	%eax, 16(%ebp)
.L1428:
	.loc 1 2549 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1438
	.loc 1 2550 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
.L1438:
	.loc 1 2553 0
	movl	8(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L1440
	.loc 1 2554 0
	movl	$0, -296(%ebp)
	jmp	.L1339
.L1440:
	.loc 1 2556 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	jne	.L1442
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1444
.L1442:
	.loc 1 2558 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1444
	.loc 1 2559 0
	movl	16(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %ecx
	movl	8(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	subl	-112(%ebp), %eax
	movl	%eax, -112(%ebp)
.L1444:
	.loc 1 2567 0
	cmpl	$63, -112(%ebp)
	jle	.L1446
	.loc 1 2568 0
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	testl	%edx, %edx
	jns	.L1448
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	movl	%eax, -240(%ebp)
	jmp	.L1450
.L1448:
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -240(%ebp)
.L1450:
	movl	-240(%ebp), %ecx
	movl	%ecx, -296(%ebp)
	jmp	.L1339
.L1446:
	.loc 1 2571 0
	movl	-112(%ebp), %ecx
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L1549
	movl	%edx, %eax
	xorl	%edx, %edx
.L1549:
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
	.loc 1 2572 0
	movl	8(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	cmpw	$63, %ax
	ja	.L1451
	.loc 1 2573 0
	movl	-160(%ebp), %edx
	movl	-156(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	trunc_int_for_mode@PLT
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
.L1451:
	.loc 1 2574 0
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -296(%ebp)
	jmp	.L1339
.L1388:
.LBE39:
	.loc 1 2583 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1453
.LBB44:
	.loc 1 2585 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -68(%ebp)
	.loc 1 2586 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	addl	20(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 2589 0
	movl	8(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jne	.L1455
	cmpl	$0, 20(%ebp)
	jne	.L1455
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L1455
	.loc 1 2591 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L1339
.L1455:
	.loc 1 2597 0
	cmpl	$0, 20(%ebp)
	jne	.L1459
	movl	16(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jae	.L1459
.LBB45:
	.loc 1 2599 0
	movl	16(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %ecx
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -56(%ebp)
	.loc 1 2600 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1462
	.loc 1 2601 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1464
	movl	$8, -236(%ebp)
	jmp	.L1466
.L1464:
	movl	$4, -236(%ebp)
.L1466:
	movl	-56(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-236(%ebp)
	movl	%eax, -232(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1467
	movl	$8, -228(%ebp)
	jmp	.L1469
.L1467:
	movl	$4, -228(%ebp)
.L1469:
	movl	-232(%ebp), %eax
	imull	-228(%ebp), %eax
	addl	%eax, -64(%ebp)
.L1462:
	.loc 1 2602 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1459
	.loc 1 2603 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1471
	movl	$8, -224(%ebp)
	jmp	.L1473
.L1471:
	movl	$4, -224(%ebp)
.L1473:
	movl	-56(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-224(%ebp)
	movl	%edx, %eax
	addl	%eax, -64(%ebp)
.L1459:
.LBE45:
	.loc 1 2605 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L1474
	movl	-68(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	16(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jae	.L1474
.LBB46:
	.loc 1 2608 0
	movl	-68(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %ecx
	movl	16(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -52(%ebp)
	.loc 1 2609 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1477
	.loc 1 2610 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1479
	movl	$8, -220(%ebp)
	jmp	.L1481
.L1479:
	movl	$4, -220(%ebp)
.L1481:
	movl	-52(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-220(%ebp)
	movl	%eax, -216(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1482
	movl	$8, -212(%ebp)
	jmp	.L1484
.L1482:
	movl	$4, -212(%ebp)
.L1484:
	movl	-216(%ebp), %eax
	imull	-212(%ebp), %eax
	addl	%eax, -64(%ebp)
.L1477:
	.loc 1 2611 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1474
	.loc 1 2612 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1486
	movl	$8, -208(%ebp)
	jmp	.L1488
.L1486:
	movl	$4, -208(%ebp)
.L1488:
	movl	-52(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-208(%ebp)
	movl	%edx, %eax
	addl	%eax, -64(%ebp)
.L1474:
.LBE46:
	.loc 1 2616 0
	movl	-68(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L1489
	.loc 1 2619 0
	cmpl	$0, -64(%ebp)
	jns	.L1491
	.loc 1 2620 0
	movl	$0, -296(%ebp)
	jmp	.L1339
.L1491:
	.loc 1 2622 0
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	-64(%ebp), %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L1493
	movl	-64(%ebp), %ecx
	movl	-68(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	%eax, %ecx
	jb	.L1496
.L1493:
	.loc 1 2624 0
	movl	$0, -296(%ebp)
	jmp	.L1339
.L1489:
.LBB47:
	.loc 1 2628 0
	movl	$0, -48(%ebp)
	.loc 1 2629 0
	movl	-68(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %ecx
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -44(%ebp)
	.loc 1 2633 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1497
	.loc 1 2634 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1499
	movl	$8, -204(%ebp)
	jmp	.L1501
.L1499:
	movl	$4, -204(%ebp)
.L1501:
	movl	-44(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-204(%ebp)
	movl	%eax, -200(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1502
	movl	$8, -196(%ebp)
	jmp	.L1504
.L1502:
	movl	$4, -196(%ebp)
.L1504:
	movl	-200(%ebp), %eax
	imull	-196(%ebp), %eax
	addl	%eax, -48(%ebp)
.L1497:
	.loc 1 2635 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1505
	.loc 1 2636 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1507
	movl	$8, -192(%ebp)
	jmp	.L1509
.L1507:
	movl	$4, -192(%ebp)
.L1509:
	movl	-44(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-192(%ebp)
	movl	%edx, %eax
	addl	%eax, -48(%ebp)
.L1505:
	.loc 1 2637 0
	movl	-48(%ebp), %eax
	cmpl	-64(%ebp), %eax
	jne	.L1510
	.loc 1 2638 0
	movl	$0, -64(%ebp)
	jmp	.L1496
.L1510:
	.loc 1 2640 0
	movl	$0, -296(%ebp)
	jmp	.L1339
.L1496:
.LBE47:
	.loc 1 2644 0
	movl	-64(%ebp), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_subreg@PLT
	movl	%eax, -60(%ebp)
	.loc 1 2647 0
	cmpl	$0, -60(%ebp)
	je	.L1512
	.loc 1 2648 0
	movl	-60(%ebp), %ecx
	movl	%ecx, -296(%ebp)
	jmp	.L1339
.L1512:
	.loc 1 2649 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -296(%ebp)
	jmp	.L1339
.L1453:
.LBE44:
	.loc 1 2657 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1514
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L1516
	movl	rtx_equal_function_value_matters@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1514
.L1516:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1514
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_cannot_change_mode_class@PLT
	movzbl	%al, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1519
	movl	16(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$5, %eax
	je	.L1519
	movl	16(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	jne	.L1514
.L1519:
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1522
	movl	frame_pointer_needed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1524
.L1522:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$1, %eax
	je	.L1514
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -188(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L1526
	movl	$17, -184(%ebp)
	jmp	.L1528
.L1526:
	movl	$30, -184(%ebp)
.L1528:
	movl	-184(%ebp), %eax
	cmpl	%eax, -188(%ebp)
	je	.L1514
.L1524:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1514
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$29, %eax
	je	.L1514
.LBB48:
	.loc 1 2678 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_hard_regno@PLT
	movl	%eax, -40(%ebp)
	.loc 1 2683 0
	movl	8(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	jne	.L1531
	movl	16(%ebp), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %esi
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %ecx, %eax
	addl	%edx, %eax
	movzbl	(%eax,%esi), %eax
	testb	%al, %al
	jne	.L1514
.L1531:
.LBB49:
	.loc 1 2686 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2693 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_lowpart_offset@PLT
	cmpl	20(%ebp), %eax
	jne	.L1533
	.loc 1 2694 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 12(%eax)
.L1533:
	.loc 1 2695 0
	movl	-36(%ebp), %edx
	movl	%edx, -296(%ebp)
	jmp	.L1339
.L1514:
.LBE49:
.LBE48:
	.loc 1 2704 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1535
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	mode_dependent_address_p@PLT
	testl	%eax, %eax
	jne	.L1535
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1538
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$57, (%esp)
	call	have_insn_for@PLT
	testl	%eax, %eax
	jne	.L1535
.L1538:
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	ja	.L1535
	.loc 1 2711 0
	movl	20(%ebp), %eax
	movl	$0, %edx
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -296(%ebp)
	jmp	.L1339
.L1535:
	.loc 1 2715 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$75, %ax
	jne	.L1541
.LBB50:
	.loc 1 2717 0
	movl	16(%ebp), %edx
	movl	mode_unit_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	20(%ebp), %eax
	seta	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 2718 0
	cmpl	$0, -32(%ebp)
	je	.L1543
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -180(%ebp)
	jmp	.L1545
.L1543:
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -180(%ebp)
.L1545:
	movl	-180(%ebp), %ecx
	movl	%ecx, -28(%ebp)
	.loc 1 2722 0
	movl	16(%ebp), %edx
	movl	mode_unit_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %edx
	movl	20(%ebp), %eax
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, -24(%ebp)
	.loc 1 2723 0
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_subreg@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2724 0
	cmpl	$0, -20(%ebp)
	je	.L1546
	.loc 1 2725 0
	movl	-20(%ebp), %eax
	movl	%eax, -296(%ebp)
	jmp	.L1339
.L1546:
	.loc 1 2727 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -296(%ebp)
	jmp	.L1339
.L1541:
.LBE50:
	.loc 1 2730 0
	movl	$0, -296(%ebp)
.L1339:
	movl	-296(%ebp), %eax
	.loc 1 2731 0
	addl	$316, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE28:
	.size	simplify_subreg, .-simplify_subreg
	.section	.rodata
	.type	__FUNCTION__.17353, @object
	.size	__FUNCTION__.17353, 20
__FUNCTION__.17353:
	.string	"simplify_gen_subreg"
	.text
.globl simplify_gen_subreg
	.type	simplify_gen_subreg, @function
simplify_gen_subreg:
.LFB29:
	.loc 1 2739 0
	pushl	%ebp
.LCFI70:
	movl	%esp, %ebp
.LCFI71:
	pushl	%ebx
.LCFI72:
	subl	$36, %esp
.LCFI73:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2742 0
	cmpl	$0, 16(%ebp)
	je	.L1555
	cmpl	$0, 8(%ebp)
	je	.L1555
	cmpl	$52, 16(%ebp)
	je	.L1555
	cmpl	$52, 8(%ebp)
	jne	.L1559
.L1555:
	.loc 1 2744 0
	leal	__FUNCTION__.17353@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2744, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1559:
	.loc 1 2746 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	16(%ebp), %eax
	je	.L1560
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L1560
	.loc 1 2748 0
	leal	__FUNCTION__.17353@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2748, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1560:
	.loc 1 2750 0
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %edx
	movl	20(%ebp), %eax
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L1563
	movl	16(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	20(%ebp), %eax
	ja	.L1565
.L1563:
	.loc 1 2752 0
	leal	__FUNCTION__.17353@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2752, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1565:
	.loc 1 2754 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$81, %ax
	jne	.L1566
	.loc 1 2755 0
	movl	$0, -24(%ebp)
	jmp	.L1568
.L1566:
	.loc 1 2757 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_subreg@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2758 0
	cmpl	$0, -8(%ebp)
	je	.L1569
	.loc 1 2759 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1568
.L1569:
	.loc 1 2761 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L1571
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L1573
.L1571:
	.loc 1 2762 0
	movl	$0, -24(%ebp)
	jmp	.L1568
.L1573:
	.loc 1 2764 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -24(%ebp)
.L1568:
	movl	-24(%ebp), %eax
	.loc 1 2765 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	simplify_gen_subreg, .-simplify_gen_subreg
.globl simplify_rtx
	.type	simplify_rtx, @function
simplify_rtx:
.LFB30:
	.loc 1 2809 0
	pushl	%ebp
.LCFI74:
	movl	%esp, %ebp
.LCFI75:
	pushl	%esi
.LCFI76:
	pushl	%ebx
.LCFI77:
	subl	$64, %esp
.LCFI78:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2810 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 2811 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2813 0
	movl	-20(%ebp), %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	cmpl	$60, -44(%ebp)
	je	.L1580
	cmpl	$60, -44(%ebp)
	jg	.L1583
	cmpl	$50, -44(%ebp)
	je	.L1578
	cmpl	$51, -44(%ebp)
	je	.L1579
	cmpl	$49, -44(%ebp)
	je	.L1577
	jmp	.L1576
.L1583:
	cmpl	$99, -44(%ebp)
	je	.L1581
	cmpl	$120, -44(%ebp)
	je	.L1582
	cmpl	$98, -44(%ebp)
	je	.L1579
	jmp	.L1576
.L1577:
	.loc 1 2816 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_unary_operation@PLT
	movl	%eax, -40(%ebp)
	jmp	.L1584
.L1581:
	.loc 1 2819 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	swap_commutative_operands_p@PLT
	testl	%eax, %eax
	je	.L1578
.LBB51:
	.loc 1 2823 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2824 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2825 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 2826 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_binary_operation@PLT
	movl	%eax, -40(%ebp)
	jmp	.L1584
.L1578:
.LBE51:
	.loc 1 2831 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_binary_operation@PLT
	movl	%eax, -40(%ebp)
	jmp	.L1584
.L1579:
	.loc 1 2835 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_ternary_operation@PLT
	movl	%eax, -40(%ebp)
	jmp	.L1584
.L1580:
	.loc 1 2840 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L1586
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	jmp	.L1588
.L1586:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
.L1588:
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_relational_operation@PLT
	movl	%eax, -40(%ebp)
	jmp	.L1584
.L1582:
	.loc 1 2848 0
	cmpl	$73, -20(%ebp)
	jne	.L1589
	.loc 1 2849 0
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_gen_subreg@PLT
	movl	%eax, -40(%ebp)
	jmp	.L1584
.L1589:
	.loc 1 2852 0
	movl	$0, -40(%ebp)
	jmp	.L1584
.L1576:
	.loc 1 2854 0
	movl	$0, -40(%ebp)
.L1584:
	movl	-40(%ebp), %eax
	.loc 1 2856 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE30:
	.size	simplify_rtx, .-simplify_rtx
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
	.long	.LCFI35-.LCFI31
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
	.long	.LCFI41-.LCFI37
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
	.long	.LCFI46-.LCFI43
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI47-.LFB25
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI52-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI57-.LCFI53
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
	.long	.LCFI58-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI59-.LCFI58
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI63-.LCFI59
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
	.long	.LCFI64-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI65-.LCFI64
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI69-.LCFI65
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
	.long	.LCFI70-.LFB29
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
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI74-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI78-.LCFI75
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE30:
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
	.file 15 "../../../kg++fe/gnu/hard-reg-set.h"
	.file 16 "../../../kg++fe/gnu/flags.h"
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x7d55
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/simplify-rtx.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xac
	.uleb128 0x3
	.byte	0x4
	.long	0xb2
	.uleb128 0x4
	.long	0x1a0
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.long	.LASF0
	.byte	0x3
	.byte	0x84
	.long	0x923
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
	.long	0x62b
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x153d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1ad
	.uleb128 0x3
	.byte	0x4
	.long	0x1b3
	.uleb128 0x4
	.long	0x1e8
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x3
	.byte	0xf2
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x3
	.byte	0xf3
	.long	0x154d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1f4
	.uleb128 0x3
	.byte	0x4
	.long	0x1fa
	.uleb128 0x8
	.long	0x2d4
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x9
	.long	.LASF2
	.byte	0x6
	.value	0x887
	.long	0x3c1f
	.uleb128 0xa
	.string	"int_cst"
	.byte	0x6
	.value	0x888
	.long	0x3f3d
	.uleb128 0xa
	.string	"real_cst"
	.byte	0x6
	.value	0x889
	.long	0x3f85
	.uleb128 0xa
	.string	"vector"
	.byte	0x6
	.value	0x88a
	.long	0x40f4
	.uleb128 0xa
	.string	"string"
	.byte	0x6
	.value	0x88b
	.long	0x4032
	.uleb128 0xa
	.string	"complex"
	.byte	0x6
	.value	0x88c
	.long	0x409f
	.uleb128 0xa
	.string	"identifier"
	.byte	0x6
	.value	0x88d
	.long	0x417a
	.uleb128 0xa
	.string	"decl"
	.byte	0x6
	.value	0x88e
	.long	0x51ee
	.uleb128 0xa
	.string	"type"
	.byte	0x6
	.value	0x88f
	.long	0x43df
	.uleb128 0xa
	.string	"list"
	.byte	0x6
	.value	0x890
	.long	0x41b1
	.uleb128 0xa
	.string	"vec"
	.byte	0x6
	.value	0x891
	.long	0x41f8
	.uleb128 0xa
	.string	"exp"
	.byte	0x6
	.value	0x892
	.long	0x4249
	.uleb128 0xa
	.string	"block"
	.byte	0x6
	.value	0x893
	.long	0x4295
	.uleb128 0xa
	.string	"omp"
	.byte	0x6
	.value	0x895
	.long	0x5bc7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2da
	.uleb128 0xb
	.long	0x2df
	.uleb128 0xc
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xc
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	0x464
	.string	"reg_class"
	.byte	0x4
	.byte	0xb
	.value	0x7ec
	.uleb128 0xe
	.string	"NO_REGS"
	.sleb128 0
	.uleb128 0xe
	.string	"M16_NA_REGS"
	.sleb128 1
	.uleb128 0xe
	.string	"M16_REGS"
	.sleb128 2
	.uleb128 0xe
	.string	"T_REG"
	.sleb128 3
	.uleb128 0xe
	.string	"M16_T_REGS"
	.sleb128 4
	.uleb128 0xe
	.string	"GR_REGS"
	.sleb128 5
	.uleb128 0xe
	.string	"FP_REGS"
	.sleb128 6
	.uleb128 0xe
	.string	"HI_REG"
	.sleb128 7
	.uleb128 0xe
	.string	"LO_REG"
	.sleb128 8
	.uleb128 0xe
	.string	"HILO_REG"
	.sleb128 9
	.uleb128 0xe
	.string	"MD_REGS"
	.sleb128 10
	.uleb128 0xe
	.string	"COP0_REGS"
	.sleb128 11
	.uleb128 0xe
	.string	"COP2_REGS"
	.sleb128 12
	.uleb128 0xe
	.string	"COP3_REGS"
	.sleb128 13
	.uleb128 0xe
	.string	"HI_AND_GR_REGS"
	.sleb128 14
	.uleb128 0xe
	.string	"LO_AND_GR_REGS"
	.sleb128 15
	.uleb128 0xe
	.string	"HILO_AND_GR_REGS"
	.sleb128 16
	.uleb128 0xe
	.string	"HI_AND_FP_REGS"
	.sleb128 17
	.uleb128 0xe
	.string	"COP0_AND_GR_REGS"
	.sleb128 18
	.uleb128 0xe
	.string	"COP2_AND_GR_REGS"
	.sleb128 19
	.uleb128 0xe
	.string	"COP3_AND_GR_REGS"
	.sleb128 20
	.uleb128 0xe
	.string	"ALL_COP_REGS"
	.sleb128 21
	.uleb128 0xe
	.string	"ALL_COP_AND_GR_REGS"
	.sleb128 22
	.uleb128 0xe
	.string	"ST_REGS"
	.sleb128 23
	.uleb128 0xe
	.string	"ALL_REGS"
	.sleb128 24
	.uleb128 0xe
	.string	"LIM_REG_CLASSES"
	.sleb128 25
	.byte	0x0
	.uleb128 0xf
	.long	0x536
	.string	"mips_args"
	.byte	0x40
	.byte	0xb
	.value	0xaaa
	.uleb128 0x10
	.string	"gp_reg_found"
	.byte	0xb
	.value	0xaad
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"arg_number"
	.byte	0xb
	.value	0xab0
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"num_gprs"
	.byte	0xb
	.value	0xab5
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"num_fprs"
	.byte	0xb
	.value	0xab8
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"stack_words"
	.byte	0xb
	.value	0xabb
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"fp_code"
	.byte	0xb
	.value	0xac8
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"prototype"
	.byte	0xb
	.value	0xacb
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"num_adjusts"
	.byte	0xb
	.value	0xad3
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.string	"adjust"
	.byte	0xb
	.value	0xad4
	.long	0x53d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x11
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0x12
	.long	0x54d
	.long	0xa1
	.uleb128 0x13
	.long	0x54d
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
	.long	0x464
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
	.uleb128 0xc
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x15
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2df
	.uleb128 0x3
	.byte	0x4
	.long	0x609
	.uleb128 0xb
	.long	0x56c
	.uleb128 0x3
	.byte	0x4
	.long	0x56c
	.uleb128 0x12
	.long	0x624
	.long	0x2df
	.uleb128 0x13
	.long	0x54d
	.byte	0x13
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x62a
	.uleb128 0x16
	.uleb128 0x17
	.long	0x874
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.uleb128 0xe
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0xe
	.string	"BImode"
	.sleb128 1
	.uleb128 0xe
	.string	"QImode"
	.sleb128 2
	.uleb128 0xe
	.string	"HImode"
	.sleb128 3
	.uleb128 0xe
	.string	"SImode"
	.sleb128 4
	.uleb128 0xe
	.string	"DImode"
	.sleb128 5
	.uleb128 0xe
	.string	"TImode"
	.sleb128 6
	.uleb128 0xe
	.string	"OImode"
	.sleb128 7
	.uleb128 0xe
	.string	"PQImode"
	.sleb128 8
	.uleb128 0xe
	.string	"PHImode"
	.sleb128 9
	.uleb128 0xe
	.string	"PSImode"
	.sleb128 10
	.uleb128 0xe
	.string	"PDImode"
	.sleb128 11
	.uleb128 0xe
	.string	"QFmode"
	.sleb128 12
	.uleb128 0xe
	.string	"HFmode"
	.sleb128 13
	.uleb128 0xe
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0xe
	.string	"SFmode"
	.sleb128 15
	.uleb128 0xe
	.string	"DFmode"
	.sleb128 16
	.uleb128 0xe
	.string	"XFmode"
	.sleb128 17
	.uleb128 0xe
	.string	"TFmode"
	.sleb128 18
	.uleb128 0xe
	.string	"QCmode"
	.sleb128 19
	.uleb128 0xe
	.string	"HCmode"
	.sleb128 20
	.uleb128 0xe
	.string	"SCmode"
	.sleb128 21
	.uleb128 0xe
	.string	"DCmode"
	.sleb128 22
	.uleb128 0xe
	.string	"XCmode"
	.sleb128 23
	.uleb128 0xe
	.string	"TCmode"
	.sleb128 24
	.uleb128 0xe
	.string	"CQImode"
	.sleb128 25
	.uleb128 0xe
	.string	"CHImode"
	.sleb128 26
	.uleb128 0xe
	.string	"CSImode"
	.sleb128 27
	.uleb128 0xe
	.string	"CDImode"
	.sleb128 28
	.uleb128 0xe
	.string	"CTImode"
	.sleb128 29
	.uleb128 0xe
	.string	"COImode"
	.sleb128 30
	.uleb128 0xe
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0xe
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0xe
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0xe
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0xe
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0xe
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0xe
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0xe
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0xe
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0xe
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0xe
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0xe
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0xe
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0xe
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0xe
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0xe
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0xe
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0xe
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0xe
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0xe
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0xe
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0xe
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0xe
	.string	"CCmode"
	.sleb128 53
	.uleb128 0xe
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x18
	.long	0x923
	.long	.LASF4
	.byte	0x4
	.byte	0x4
	.byte	0x2c
	.uleb128 0xe
	.string	"MODE_RANDOM"
	.sleb128 0
	.uleb128 0xe
	.string	"MODE_INT"
	.sleb128 1
	.uleb128 0xe
	.string	"MODE_FLOAT"
	.sleb128 2
	.uleb128 0xe
	.string	"MODE_PARTIAL_INT"
	.sleb128 3
	.uleb128 0xe
	.string	"MODE_CC"
	.sleb128 4
	.uleb128 0xe
	.string	"MODE_COMPLEX_INT"
	.sleb128 5
	.uleb128 0xe
	.string	"MODE_COMPLEX_FLOAT"
	.sleb128 6
	.uleb128 0xe
	.string	"MODE_VECTOR_INT"
	.sleb128 7
	.uleb128 0xe
	.string	"MODE_VECTOR_FLOAT"
	.sleb128 8
	.uleb128 0xe
	.string	"MAX_MODE_CLASS"
	.sleb128 9
	.byte	0x0
	.uleb128 0x17
	.long	0x10f2
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x29
	.uleb128 0xe
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0xe
	.string	"NIL"
	.sleb128 1
	.uleb128 0xe
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0xe
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0xe
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0xe
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0xe
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0xe
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0xe
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0xe
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0xe
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0xe
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0xe
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0xe
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0xe
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0xe
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0xe
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0xe
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0xe
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0xe
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0xe
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0xe
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0xe
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0xe
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0xe
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0xe
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0xe
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0xe
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0xe
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0xe
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0xe
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0xe
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0xe
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0xe
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0xe
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0xe
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0xe
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0xe
	.string	"ATTR"
	.sleb128 37
	.uleb128 0xe
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0xe
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0xe
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0xe
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0xe
	.string	"INSN"
	.sleb128 42
	.uleb128 0xe
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0xe
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0xe
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0xe
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0xe
	.string	"NOTE"
	.sleb128 47
	.uleb128 0xe
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0xe
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0xe
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0xe
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0xe
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0xe
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0xe
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0xe
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0xe
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0xe
	.string	"SET"
	.sleb128 57
	.uleb128 0xe
	.string	"USE"
	.sleb128 58
	.uleb128 0xe
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0xe
	.string	"CALL"
	.sleb128 60
	.uleb128 0xe
	.string	"RETURN"
	.sleb128 61
	.uleb128 0xe
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0xe
	.string	"RESX"
	.sleb128 63
	.uleb128 0xe
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0xe
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0xe
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0xe
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0xe
	.string	"CONST"
	.sleb128 68
	.uleb128 0xe
	.string	"PC"
	.sleb128 69
	.uleb128 0xe
	.string	"VALUE"
	.sleb128 70
	.uleb128 0xe
	.string	"REG"
	.sleb128 71
	.uleb128 0xe
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0xe
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0xe
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0xe
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0xe
	.string	"MEM"
	.sleb128 76
	.uleb128 0xe
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0xe
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0xe
	.string	"CC0"
	.sleb128 79
	.uleb128 0xe
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0xe
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0xe
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0xe
	.string	"COND"
	.sleb128 83
	.uleb128 0xe
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0xe
	.string	"PLUS"
	.sleb128 85
	.uleb128 0xe
	.string	"MINUS"
	.sleb128 86
	.uleb128 0xe
	.string	"NEG"
	.sleb128 87
	.uleb128 0xe
	.string	"MULT"
	.sleb128 88
	.uleb128 0xe
	.string	"DIV"
	.sleb128 89
	.uleb128 0xe
	.string	"MOD"
	.sleb128 90
	.uleb128 0xe
	.string	"UDIV"
	.sleb128 91
	.uleb128 0xe
	.string	"UMOD"
	.sleb128 92
	.uleb128 0xe
	.string	"AND"
	.sleb128 93
	.uleb128 0xe
	.string	"IOR"
	.sleb128 94
	.uleb128 0xe
	.string	"XOR"
	.sleb128 95
	.uleb128 0xe
	.string	"NOT"
	.sleb128 96
	.uleb128 0xe
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0xe
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0xe
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0xe
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0xe
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0xe
	.string	"SMIN"
	.sleb128 102
	.uleb128 0xe
	.string	"SMAX"
	.sleb128 103
	.uleb128 0xe
	.string	"UMIN"
	.sleb128 104
	.uleb128 0xe
	.string	"UMAX"
	.sleb128 105
	.uleb128 0xe
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0xe
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0xe
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0xe
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0xe
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0xe
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0xe
	.string	"NE"
	.sleb128 112
	.uleb128 0xe
	.string	"EQ"
	.sleb128 113
	.uleb128 0xe
	.string	"GE"
	.sleb128 114
	.uleb128 0xe
	.string	"GT"
	.sleb128 115
	.uleb128 0xe
	.string	"LE"
	.sleb128 116
	.uleb128 0xe
	.string	"LT"
	.sleb128 117
	.uleb128 0xe
	.string	"GEU"
	.sleb128 118
	.uleb128 0xe
	.string	"GTU"
	.sleb128 119
	.uleb128 0xe
	.string	"LEU"
	.sleb128 120
	.uleb128 0xe
	.string	"LTU"
	.sleb128 121
	.uleb128 0xe
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0xe
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0xe
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0xe
	.string	"UNGE"
	.sleb128 125
	.uleb128 0xe
	.string	"UNGT"
	.sleb128 126
	.uleb128 0xe
	.string	"UNLE"
	.sleb128 127
	.uleb128 0xe
	.string	"UNLT"
	.sleb128 128
	.uleb128 0xe
	.string	"LTGT"
	.sleb128 129
	.uleb128 0xe
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0xe
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0xe
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0xe
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0xe
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0xe
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0xe
	.string	"FIX"
	.sleb128 136
	.uleb128 0xe
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0xe
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0xe
	.string	"ABS"
	.sleb128 139
	.uleb128 0xe
	.string	"SQRT"
	.sleb128 140
	.uleb128 0xe
	.string	"FFS"
	.sleb128 141
	.uleb128 0xe
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0xe
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0xe
	.string	"HIGH"
	.sleb128 144
	.uleb128 0xe
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0xe
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0xe
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0xe
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0xe
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0xe
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0xe
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0xe
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0xe
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0xe
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0xe
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0xe
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0xe
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0xe
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0xe
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0xe
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0xe
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0xe
	.string	"PHI"
	.sleb128 162
	.uleb128 0xe
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x19
	.long	0x11cc
	.byte	0x4
	.byte	0x3
	.byte	0x47
	.uleb128 0x6
	.string	"min_align"
	.byte	0x3
	.byte	0x49
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x10f2
	.uleb128 0x1a
	.long	0x1240
	.long	.LASF5
	.byte	0x18
	.byte	0x3
	.byte	0x62
	.uleb128 0x7
	.string	"alias"
	.byte	0x3
	.byte	0x63
	.long	0x5c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x3
	.byte	0x64
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF6
	.byte	0x3
	.byte	0x65
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
	.byte	0x3
	.byte	0x66
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x3
	.byte	0x67
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x3
	.byte	0x68
	.long	0x11e7
	.uleb128 0x8
	.long	0x131d
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x6d
	.uleb128 0x1d
	.string	"rtwint"
	.byte	0x3
	.byte	0x6e
	.long	0x5c4
	.uleb128 0x1d
	.string	"rtint"
	.byte	0x3
	.byte	0x6f
	.long	0x2e7
	.uleb128 0x1d
	.string	"rtuint"
	.byte	0x3
	.byte	0x70
	.long	0x536
	.uleb128 0x1d
	.string	"rtstr"
	.byte	0x3
	.byte	0x71
	.long	0x2d4
	.uleb128 0x1d
	.string	"rtx"
	.byte	0x3
	.byte	0x72
	.long	0xa1
	.uleb128 0x1d
	.string	"rtvec"
	.byte	0x3
	.byte	0x73
	.long	0x1a0
	.uleb128 0x1d
	.string	"rttype"
	.byte	0x3
	.byte	0x74
	.long	0x62b
	.uleb128 0x1d
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x75
	.long	0x11cc
	.uleb128 0x1d
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x76
	.long	0x1331
	.uleb128 0x1d
	.string	"rtbit"
	.byte	0x3
	.byte	0x77
	.long	0x1397
	.uleb128 0x1d
	.string	"rttree"
	.byte	0x3
	.byte	0x78
	.long	0x1e8
	.uleb128 0x1d
	.string	"bb"
	.byte	0x3
	.byte	0x79
	.long	0x1522
	.uleb128 0x1d
	.string	"rtmem"
	.byte	0x3
	.byte	0x7a
	.long	0x1528
	.byte	0x0
	.uleb128 0x1e
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x131d
	.uleb128 0x4
	.long	0x1397
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x77
	.uleb128 0x1b
	.long	.LASF7
	.byte	0x5
	.byte	0x3d
	.long	0x5ccc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x5ccc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1337
	.uleb128 0x4
	.long	0x1522
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x79
	.uleb128 0x7
	.string	"head"
	.byte	0xd
	.byte	0xb5
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0xd
	.byte	0xb5
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0xd
	.byte	0xb8
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0xd
	.byte	0xb9
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0xd
	.byte	0xbc
	.long	0x5e1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0xd
	.byte	0xbc
	.long	0x5e1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0xd
	.byte	0xc1
	.long	0x5d4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0xd
	.byte	0xc5
	.long	0x5d4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0xd
	.byte	0xcb
	.long	0x5d4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0xd
	.byte	0xcd
	.long	0x5d4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0xd
	.byte	0xd0
	.long	0x5fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"index"
	.byte	0xd
	.byte	0xd3
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0xd
	.byte	0xd6
	.long	0x1522
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0xd
	.byte	0xd6
	.long	0x1522
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0xd
	.byte	0xd9
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0xd
	.byte	0xdc
	.long	0x6099
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0xd
	.byte	0xdf
	.long	0x5d5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0xd
	.byte	0xe2
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"flags"
	.byte	0xd
	.byte	0xe5
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x139d
	.uleb128 0x3
	.byte	0x4
	.long	0x1240
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x7c
	.long	0x124b
	.uleb128 0x12
	.long	0x154d
	.long	0x152e
	.uleb128 0x13
	.long	0x54d
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x155d
	.long	0xa1
	.uleb128 0x13
	.long	0x54d
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xa1
	.uleb128 0x4
	.long	0x1595
	.string	"location_s"
	.byte	0x8
	.byte	0x9
	.byte	0x1c
	.uleb128 0x7
	.string	"file"
	.byte	0x9
	.byte	0x1e
	.long	0x2d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"line"
	.byte	0x9
	.byte	0x21
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x9
	.byte	0x23
	.long	0x1563
	.uleb128 0x17
	.long	0x1ec9
	.string	"tree_code"
	.byte	0x4
	.byte	0x6
	.byte	0x25
	.uleb128 0xe
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0xe
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0xe
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0xe
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0xe
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0xe
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0xe
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0xe
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0xe
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0xe
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0xe
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0xe
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0xe
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0xe
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0xe
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0xe
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0xe
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0xe
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0xe
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0xe
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0xe
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0xe
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0xe
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0xe
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0xe
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0xe
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0xe
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0xe
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0xe
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0xe
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0xe
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0xe
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0xe
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0xe
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0xe
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0xe
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0xe
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0xe
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0xe
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0xe
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0xe
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0xe
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0xe
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0xe
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0xe
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0xe
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0xe
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0xe
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0xe
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0xe
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0xe
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0xe
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0xe
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0xe
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0xe
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0xe
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0xe
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0xe
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0xe
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0xe
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0xe
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0xe
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0xe
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0xe
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0xe
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0xe
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0xe
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0xe
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0xe
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0xe
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0xe
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0xe
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0xe
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0xe
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0xe
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0xe
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0xe
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0xe
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0xe
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0xe
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0xe
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0xe
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0xe
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0xe
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0xe
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0xe
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0xe
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0xe
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0xe
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0xe
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0xe
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0xe
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0xe
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0xe
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0xe
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0xe
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0xe
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0xe
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0xe
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0xe
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0xe
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0xe
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0xe
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0xe
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0xe
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0xe
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0xe
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0xe
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0xe
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0xe
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0xe
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0xe
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0xe
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0xe
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0xe
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0xe
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0xe
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0xe
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0xe
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0xe
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0xe
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0xe
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0xe
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0xe
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0xe
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0xe
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0xe
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0xe
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0xe
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0xe
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0xe
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0xe
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0xe
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0xe
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0xe
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0xe
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0xe
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0xe
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0xe
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0xe
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0xe
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0xe
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0xe
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0xe
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0xe
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0xe
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0xe
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0xe
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0xe
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0xe
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0xe
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0xe
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x6
	.byte	0x2f
	.long	0x536
	.uleb128 0x4
	.long	0x1f16
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x6
	.byte	0x30
	.uleb128 0x7
	.string	"block"
	.byte	0x6
	.byte	0x30
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.long	.LASF6
	.byte	0x6
	.byte	0x30
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x6
	.byte	0x34
	.long	0x1f20
	.uleb128 0x1e
	.string	"st"
	.byte	0x1
	.uleb128 0x18
	.long	0x1f75
	.long	.LASF8
	.byte	0x4
	.byte	0x6
	.byte	0x58
	.uleb128 0xe
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0xe
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0xe
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0xe
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x17
	.long	0x3c1f
	.string	"built_in_function"
	.byte	0x4
	.byte	0x6
	.byte	0x67
	.uleb128 0xe
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0xe
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0xe
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0xe
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0xe
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0xe
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0xe
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0xe
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0xe
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0xe
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0xe
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0xe
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0xe
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0xe
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0xe
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0xe
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0xe
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0xe
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0xe
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0xe
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0xe
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0xe
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0xe
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0xe
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0xe
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0xe
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0xe
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0xe
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0xe
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0xe
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0xe
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0xe
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0xe
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0xe
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0xe
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0xe
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0xe
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0xe
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0xe
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0xe
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0xe
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0xe
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0xe
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0xe
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0xe
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0xe
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0xe
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0xe
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0xe
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0xe
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0xe
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0xe
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0xe
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0xe
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0xe
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0xe
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0xe
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0xe
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0xe
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0xe
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0xe
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0xe
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0xe
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0xe
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0xe
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0xe
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0xe
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0xe
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0xe
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0xe
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0xe
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0xe
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0xe
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0xe
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0xe
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0xe
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0xe
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0xe
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0xe
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0xe
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0xe
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0xe
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0xe
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0xe
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0xe
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0xe
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0xe
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0xe
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0xe
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0xe
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0xe
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0xe
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0xe
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0xe
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0xe
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0xe
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0xe
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0xe
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0xe
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0xe
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0xe
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0xe
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0xe
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0xe
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0xe
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0xe
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0xe
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0xe
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0xe
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0xe
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0xe
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0xe
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0xe
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0xe
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0xe
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0xe
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0xe
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0xe
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0xe
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0xe
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0xe
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0xe
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0xe
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0xe
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0xe
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0xe
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0xe
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0xe
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0xe
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0xe
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0xe
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0xe
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0xe
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0xe
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0xe
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0xe
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0xe
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0xe
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0xe
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0xe
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0xe
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0xe
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0xe
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0xe
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0xe
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0xe
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0xe
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0xe
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0xe
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0xe
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0xe
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0xe
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0xe
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0xe
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0xe
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0xe
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0xe
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0xe
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0xe
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0xe
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0xe
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0xe
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0xe
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0xe
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0xe
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0xe
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0xe
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0xe
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0xe
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0xe
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0xe
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0xe
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0xe
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0xe
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0xe
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0xe
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0xe
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0xe
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0xe
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0xe
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0xe
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0xe
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0xe
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0xe
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0xe
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0xe
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0xe
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0xe
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0xe
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0xe
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0xe
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0xe
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0xe
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0xe
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0xe
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0xe
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0xe
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0xe
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0xe
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0xe
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0xe
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0xe
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0xe
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0xe
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0xe
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0xe
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0xe
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0xe
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0xe
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0xe
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0xe
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0xe
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0xe
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0xe
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0xe
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0xe
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0xe
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0xe
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0xe
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0xe
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0xe
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0xe
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0xe
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0xe
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0xe
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0xe
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0xe
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0xe
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0xe
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0xe
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0xe
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0xe
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0xe
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0xe
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0xe
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0xe
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0xe
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0xe
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0xe
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0xe
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0xe
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0xe
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0xe
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0xe
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0xe
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0xe
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0xe
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0xe
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0xe
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0xe
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0xe
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0xe
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0xe
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0xe
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0xe
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0xe
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0xe
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0xe
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0xe
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0xe
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0xe
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0xe
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0xe
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0xe
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0xe
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0xe
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0xe
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0xe
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0xe
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0xe
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0xe
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0xe
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0xe
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0xe
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0xe
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0xe
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0xe
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0xe
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0xe
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0xe
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0xe
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0xe
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0xe
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0xe
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0xe
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0xe
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0xe
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0xe
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0xe
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0xe
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0xe
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0xe
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0xe
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0xe
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0xe
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0xe
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0xe
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0xe
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0xe
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0xe
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0xe
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0xe
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0xe
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0xe
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0xe
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0xe
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0xe
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0xe
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0xe
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0xe
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0xe
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0xe
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0xe
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0xe
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0xe
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0xe
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0xe
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0xe
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0xe
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0xe
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0xe
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0xe
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0xe
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0xe
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0xe
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0xe
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0xe
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0xe
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0xe
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0xe
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0xe
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0xe
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0xe
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0xe
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0xe
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0xe
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0xe
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0xe
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0xe
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0xe
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0xe
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0xe
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0xe
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0xe
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0xe
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0xe
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0xe
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0xe
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0xe
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0xe
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0xe
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0xe
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0xe
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0xe
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0xe
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0xe
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0xe
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0xe
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x3f01
	.string	"tree_common"
	.byte	0x10
	.byte	0x6
	.byte	0x8c
	.uleb128 0x7
	.string	"chain"
	.byte	0x6
	.byte	0x8d
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type"
	.byte	0x6
	.byte	0x8e
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.long	.LASF0
	.byte	0x6
	.byte	0x90
	.long	0x15a7
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF9
	.byte	0x6
	.byte	0xa8
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x6
	.byte	0xa9
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF11
	.byte	0x6
	.byte	0xaa
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF12
	.byte	0x6
	.byte	0xab
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF13
	.byte	0x6
	.byte	0xac
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF14
	.byte	0x6
	.byte	0xad
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF15
	.byte	0x6
	.byte	0xae
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF16
	.byte	0x6
	.byte	0xb0
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
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
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	0x3f3d
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x6
	.value	0x30a
	.uleb128 0x10
	.string	"low"
	.byte	0x6
	.value	0x30b
	.long	0x5d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"high"
	.byte	0x6
	.value	0x30c
	.long	0x5c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xf
	.long	0x3f85
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x6
	.value	0x303
	.uleb128 0x1f
	.long	.LASF2
	.byte	0x6
	.value	0x304
	.long	0x3c1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"rtl"
	.byte	0x6
	.value	0x305
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"int_cst"
	.byte	0x6
	.value	0x30d
	.long	0x3f01
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x3fd3
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x6
	.value	0x31f
	.uleb128 0x1f
	.long	.LASF2
	.byte	0x6
	.value	0x320
	.long	0x3c1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"rtl"
	.byte	0x6
	.value	0x321
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"real_cst_ptr"
	.byte	0x6
	.value	0x322
	.long	0x402c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x402c
	.string	"real_value"
	.byte	0x18
	.byte	0x6
	.value	0x319
	.uleb128 0x6
	.string	"class"
	.byte	0x7
	.byte	0x35
	.long	0x60be
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
	.long	0x536
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
	.long	0x2e7
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
	.long	0x6104
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3fd3
	.uleb128 0xf
	.long	0x4099
	.string	"tree_string"
	.byte	0x20
	.byte	0x6
	.value	0x333
	.uleb128 0x1f
	.long	.LASF2
	.byte	0x6
	.value	0x334
	.long	0x3c1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"rtl"
	.byte	0x6
	.value	0x335
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"length"
	.byte	0x6
	.value	0x336
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"pointer"
	.byte	0x6
	.value	0x337
	.long	0x2d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"st"
	.byte	0x6
	.value	0x339
	.long	0x4099
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f16
	.uleb128 0xf
	.long	0x40f4
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x6
	.value	0x342
	.uleb128 0x1f
	.long	.LASF2
	.byte	0x6
	.value	0x343
	.long	0x3c1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"rtl"
	.byte	0x6
	.value	0x344
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"real"
	.byte	0x6
	.value	0x345
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"imag"
	.byte	0x6
	.value	0x346
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xf
	.long	0x413c
	.string	"tree_vector"
	.byte	0x18
	.byte	0x6
	.value	0x355
	.uleb128 0x1f
	.long	.LASF2
	.byte	0x6
	.value	0x356
	.long	0x3c1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"rtl"
	.byte	0x6
	.value	0x357
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"elements"
	.byte	0x6
	.value	0x358
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1a
	.long	0x417a
	.long	.LASF17
	.byte	0xc
	.byte	0x8
	.byte	0x19
	.uleb128 0x7
	.string	"str"
	.byte	0x8
	.byte	0x1c
	.long	0x603
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"len"
	.byte	0x8
	.byte	0x1d
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"hash_value"
	.byte	0x8
	.byte	0x1e
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xf
	.long	0x41b1
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x6
	.value	0x376
	.uleb128 0x1f
	.long	.LASF2
	.byte	0x6
	.value	0x377
	.long	0x3c1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"id"
	.byte	0x6
	.value	0x378
	.long	0x413c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xf
	.long	0x41f8
	.string	"tree_list"
	.byte	0x18
	.byte	0x6
	.value	0x380
	.uleb128 0x1f
	.long	.LASF2
	.byte	0x6
	.value	0x381
	.long	0x3c1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"purpose"
	.byte	0x6
	.value	0x382
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"value"
	.byte	0x6
	.value	0x383
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x4239
	.string	"tree_vec"
	.byte	0x18
	.byte	0x6
	.value	0x38e
	.uleb128 0x1f
	.long	.LASF2
	.byte	0x6
	.value	0x38f
	.long	0x3c1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"length"
	.byte	0x6
	.value	0x390
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"a"
	.byte	0x6
	.value	0x391
	.long	0x4239
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x12
	.long	0x4249
	.long	0x1e8
	.uleb128 0x13
	.long	0x54d
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x4295
	.string	"tree_exp"
	.byte	0x18
	.byte	0x6
	.value	0x3d4
	.uleb128 0x1f
	.long	.LASF2
	.byte	0x6
	.value	0x3d5
	.long	0x3c1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"complexity"
	.byte	0x6
	.value	0x3d6
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"operands"
	.byte	0x6
	.value	0x3d9
	.long	0x4239
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x4385
	.string	"tree_block"
	.byte	0x2c
	.byte	0x6
	.value	0x40a
	.uleb128 0x1f
	.long	.LASF2
	.byte	0x6
	.value	0x40b
	.long	0x3c1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"handler_block_flag"
	.byte	0x6
	.value	0x40d
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x21
	.long	.LASF18
	.byte	0x6
	.value	0x40e
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.string	"block_num"
	.byte	0x6
	.value	0x40f
	.long	0x536
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
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"subblocks"
	.byte	0x6
	.value	0x412
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"supercontext"
	.byte	0x6
	.value	0x413
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1f
	.long	.LASF19
	.byte	0x6
	.value	0x414
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.string	"fragment_origin"
	.byte	0x6
	.value	0x415
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.string	"fragment_chain"
	.byte	0x6
	.value	0x416
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x22
	.long	0x43cc
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x6
	.value	0x570
	.uleb128 0xa
	.string	"address"
	.byte	0x6
	.value	0x571
	.long	0x2e7
	.uleb128 0xa
	.string	"pointer"
	.byte	0x6
	.value	0x572
	.long	0x5fd
	.uleb128 0xa
	.string	"die"
	.byte	0x6
	.value	0x573
	.long	0x43d9
	.byte	0x0
	.uleb128 0x1e
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x43cc
	.uleb128 0xf
	.long	0x472c
	.string	"tree_type"
	.byte	0x74
	.byte	0x6
	.value	0x551
	.uleb128 0x1f
	.long	.LASF2
	.byte	0x6
	.value	0x552
	.long	0x3c1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"values"
	.byte	0x6
	.value	0x553
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"size"
	.byte	0x6
	.value	0x554
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1f
	.long	.LASF20
	.byte	0x6
	.value	0x555
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1f
	.long	.LASF21
	.byte	0x6
	.value	0x556
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.string	"uid"
	.byte	0x6
	.value	0x557
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"precision"
	.byte	0x6
	.value	0x559
	.long	0x536
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF1
	.byte	0x6
	.value	0x55a
	.long	0x62b
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"string_flag"
	.byte	0x6
	.value	0x55c
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"no_force_blk_flag"
	.byte	0x6
	.value	0x55d
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"needs_constructing_flag"
	.byte	0x6
	.value	0x55e
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"transparent_union_flag"
	.byte	0x6
	.value	0x55f
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"packed_flag"
	.byte	0x6
	.value	0x560
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"restrict_flag"
	.byte	0x6
	.value	0x561
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF22
	.byte	0x6
	.value	0x562
	.long	0x536
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF9
	.byte	0x6
	.value	0x564
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF10
	.byte	0x6
	.value	0x565
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF11
	.byte	0x6
	.value	0x566
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF12
	.byte	0x6
	.value	0x567
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF13
	.byte	0x6
	.value	0x568
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF14
	.byte	0x6
	.value	0x569
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF15
	.byte	0x6
	.value	0x56a
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF23
	.byte	0x6
	.value	0x56b
	.long	0x536
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
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.string	"pointer_to"
	.byte	0x6
	.value	0x56e
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.string	"reference_to"
	.byte	0x6
	.value	0x56f
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.string	"symtab"
	.byte	0x6
	.value	0x574
	.long	0x4385
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.string	"name"
	.byte	0x6
	.value	0x576
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.string	"minval"
	.byte	0x6
	.value	0x577
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.string	"maxval"
	.byte	0x6
	.value	0x578
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.string	"next_variant"
	.byte	0x6
	.value	0x579
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.string	"main_variant"
	.byte	0x6
	.value	0x57a
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.string	"binfo"
	.byte	0x6
	.value	0x57b
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.string	"context"
	.byte	0x6
	.value	0x57c
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.string	"alias_set"
	.byte	0x6
	.value	0x57d
	.long	0x5c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1f
	.long	.LASF24
	.byte	0x6
	.value	0x57f
	.long	0x4738
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.string	"ty_idx"
	.byte	0x6
	.value	0x581
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.string	"field_ids_used"
	.byte	0x6
	.value	0x582
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x10
	.string	"dst_id"
	.byte	0x6
	.value	0x583
	.long	0x1eda
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.string	"extra_methods"
	.byte	0x6
	.value	0x58a
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x1e
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x472c
	.uleb128 0xf
	.long	0x4783
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x6
	.value	0x817
	.uleb128 0x20
	.string	"align"
	.byte	0x6
	.value	0x818
	.long	0x536
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"off_align"
	.byte	0x6
	.value	0x819
	.long	0x536
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x22
	.long	0x47b8
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x6
	.value	0x80e
	.uleb128 0xa
	.string	"f"
	.byte	0x6
	.value	0x811
	.long	0x1f75
	.uleb128 0xa
	.string	"i"
	.byte	0x6
	.value	0x814
	.long	0x5c4
	.uleb128 0xa
	.string	"a"
	.byte	0x6
	.value	0x81a
	.long	0x473e
	.byte	0x0
	.uleb128 0x22
	.long	0x47f7
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x6
	.value	0x837
	.uleb128 0xa
	.string	"f"
	.byte	0x6
	.value	0x838
	.long	0x51b0
	.uleb128 0xa
	.string	"r"
	.byte	0x6
	.value	0x839
	.long	0xa1
	.uleb128 0xa
	.string	"t"
	.byte	0x6
	.value	0x83a
	.long	0x1e8
	.uleb128 0xa
	.string	"i"
	.byte	0x6
	.value	0x83b
	.long	0x2e7
	.byte	0x0
	.uleb128 0x23
	.long	0x51b0
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x19
	.uleb128 0x7
	.string	"eh"
	.byte	0xa
	.byte	0xb5
	.long	0x6472
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0xa
	.byte	0xb6
	.long	0x6486
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0xa
	.byte	0xb7
	.long	0x648c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0xa
	.byte	0xb8
	.long	0x6492
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0xa
	.byte	0xb9
	.long	0x64a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"name"
	.byte	0xa
	.byte	0xbe
	.long	0x2d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"decl"
	.byte	0xa
	.byte	0xc1
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"outer"
	.byte	0xa
	.byte	0xc4
	.long	0x51b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0xa
	.byte	0xc9
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.long	.LASF25
	.byte	0xa
	.byte	0xce
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0xa
	.byte	0xd3
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0xa
	.byte	0xd7
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"arg_offset_rtx"
	.byte	0xa
	.byte	0xdb
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"args_info"
	.byte	0xa
	.byte	0xdf
	.long	0x554
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"return_rtx"
	.byte	0xa
	.byte	0xe5
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"internal_arg_pointer"
	.byte	0xa
	.byte	0xe8
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"cannot_inline"
	.byte	0xa
	.byte	0xec
	.long	0x2d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0xa
	.byte	0xf0
	.long	0x64c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0xa
	.byte	0xf3
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"x_nonlocal_labels"
	.byte	0xa
	.byte	0xf8
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xa
	.byte	0xfe
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x10
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xa
	.value	0x102
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x10
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xa
	.value	0x107
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x10
	.string	"x_cleanup_label"
	.byte	0xa
	.value	0x10d
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x10
	.string	"x_return_label"
	.byte	0xa
	.value	0x112
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x10
	.string	"computed_goto_common_label"
	.byte	0xa
	.value	0x115
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x10
	.string	"computed_goto_common_reg"
	.byte	0xa
	.value	0x116
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x10
	.string	"x_save_expr_regs"
	.byte	0xa
	.value	0x11a
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x10
	.string	"x_stack_slot_list"
	.byte	0xa
	.value	0x11e
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x10
	.string	"x_rtl_expr_chain"
	.byte	0xa
	.value	0x121
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x10
	.string	"x_tail_recursion_label"
	.byte	0xa
	.value	0x125
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x10
	.string	"x_tail_recursion_reentry"
	.byte	0xa
	.value	0x128
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x10
	.string	"x_arg_pointer_save_area"
	.byte	0xa
	.value	0x12e
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x10
	.string	"x_clobber_return_insn"
	.byte	0xa
	.value	0x133
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x10
	.string	"x_frame_offset"
	.byte	0xa
	.value	0x138
	.long	0x5c4
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x10
	.string	"x_context_display"
	.byte	0xa
	.value	0x13d
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x10
	.string	"x_trampoline_list"
	.byte	0xa
	.value	0x146
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x10
	.string	"x_parm_birth_insn"
	.byte	0xa
	.value	0x149
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x10
	.string	"x_last_parm_insn"
	.byte	0xa
	.value	0x14d
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x10
	.string	"x_max_parm_reg"
	.byte	0xa
	.value	0x151
	.long	0x536
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x10
	.string	"x_parm_reg_stack_loc"
	.byte	0xa
	.value	0x157
	.long	0x155d
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x10
	.string	"x_temp_slots"
	.byte	0xa
	.value	0x15a
	.long	0x64d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x10
	.string	"x_temp_slot_level"
	.byte	0xa
	.value	0x15d
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x10
	.string	"x_var_temp_slot_level"
	.byte	0xa
	.value	0x160
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x10
	.string	"x_target_temp_slot_level"
	.byte	0xa
	.value	0x166
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x10
	.string	"fixup_var_refs_queue"
	.byte	0xa
	.value	0x16a
	.long	0x617a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x10
	.string	"inlinable"
	.byte	0xa
	.value	0x16d
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x10
	.string	"no_debugging_symbols"
	.byte	0xa
	.value	0x16e
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x10
	.string	"original_arg_vector"
	.byte	0xa
	.value	0x16f
	.long	0x1a0
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x10
	.string	"original_decl_initial"
	.byte	0xa
	.value	0x170
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x10
	.string	"inl_last_parm_insn"
	.byte	0xa
	.value	0x173
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x10
	.string	"inl_max_label_num"
	.byte	0xa
	.value	0x175
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x10
	.string	"funcdef_no"
	.byte	0xa
	.value	0x178
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x10
	.string	"machine"
	.byte	0xa
	.value	0x17d
	.long	0x64f0
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0x10
	.string	"stack_alignment_needed"
	.byte	0xa
	.value	0x17f
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0x10
	.string	"preferred_stack_boundary"
	.byte	0xa
	.value	0x181
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0x10
	.string	"language"
	.byte	0xa
	.value	0x184
	.long	0x650a
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0x10
	.string	"epilogue_delay_list"
	.byte	0xa
	.value	0x18a
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x20
	.string	"returns_struct"
	.byte	0xa
	.value	0x190
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"returns_pcc_struct"
	.byte	0xa
	.value	0x194
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"returns_pointer"
	.byte	0xa
	.value	0x197
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"needs_context"
	.byte	0xa
	.value	0x19a
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_setjmp"
	.byte	0xa
	.value	0x19d
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_longjmp"
	.byte	0xa
	.value	0x1a0
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_alloca"
	.byte	0xa
	.value	0x1a4
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_eh_return"
	.byte	0xa
	.value	0x1a7
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"has_nonlocal_label"
	.byte	0xa
	.value	0x1ab
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"has_nonlocal_goto"
	.byte	0xa
	.value	0x1af
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"contains_functions"
	.byte	0xa
	.value	0x1b2
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"has_computed_jump"
	.byte	0xa
	.value	0x1b5
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"is_thunk"
	.byte	0xa
	.value	0x1ba
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"all_throwers_are_sibcalls"
	.byte	0xa
	.value	0x1c1
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"instrument_entry_exit"
	.byte	0xa
	.value	0x1c5
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"arc_profile"
	.byte	0xa
	.value	0x1c8
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"profile"
	.byte	0xa
	.value	0x1cb
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"limit_stack"
	.byte	0xa
	.value	0x1cf
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"stdarg"
	.byte	0xa
	.value	0x1d2
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"x_whole_function_mode_p"
	.byte	0xa
	.value	0x1d8
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xa
	.value	0x1e1
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"uses_const_pool"
	.byte	0xa
	.value	0x1e4
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"uses_pic_offset_table"
	.byte	0xa
	.value	0x1e7
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"uses_eh_lsda"
	.byte	0xa
	.value	0x1ea
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"arg_pointer_save_area_init"
	.byte	0xa
	.value	0x1ed
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.long	.LASF26
	.byte	0xa
	.value	0x1fa
	.long	0x63fc
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0x10
	.string	"max_jumptable_ents"
	.byte	0xa
	.value	0x1fe
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x47f7
	.uleb128 0x24
	.long	0x51ee
	.byte	0x4
	.byte	0x6
	.value	0x84e
	.uleb128 0xa
	.string	"st"
	.byte	0x6
	.value	0x84f
	.long	0x4099
	.uleb128 0xa
	.string	"label_idx"
	.byte	0x6
	.value	0x850
	.long	0x1ec9
	.uleb128 0xa
	.string	"field_id"
	.byte	0x6
	.value	0x851
	.long	0x536
	.byte	0x0
	.uleb128 0xf
	.long	0x5937
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x6
	.value	0x7c5
	.uleb128 0x1f
	.long	.LASF2
	.byte	0x6
	.value	0x7c6
	.long	0x3c1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"locus"
	.byte	0x6
	.value	0x7c7
	.long	0x1595
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"uid"
	.byte	0x6
	.value	0x7c8
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"size"
	.byte	0x6
	.value	0x7c9
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x21
	.long	.LASF1
	.byte	0x6
	.value	0x7ca
	.long	0x62b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"external_flag"
	.byte	0x6
	.value	0x7cc
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"nonlocal_flag"
	.byte	0x6
	.value	0x7cd
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"regdecl_flag"
	.byte	0x6
	.value	0x7ce
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"inline_flag"
	.byte	0x6
	.value	0x7cf
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"bit_field_flag"
	.byte	0x6
	.value	0x7d0
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"virtual_flag"
	.byte	0x6
	.value	0x7d1
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"ignored_flag"
	.byte	0x6
	.value	0x7d2
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.long	.LASF18
	.byte	0x6
	.value	0x7d3
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"sbuf_flag"
	.byte	0x6
	.value	0x7d7
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"sdram_flag"
	.byte	0x6
	.value	0x7d8
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"v1buf_flag"
	.byte	0x6
	.value	0x7d9
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"v2buf_flag"
	.byte	0x6
	.value	0x7da
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"v4buf_flag"
	.byte	0x6
	.value	0x7db
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"in_system_header_flag"
	.byte	0x6
	.value	0x7df
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"common_flag"
	.byte	0x6
	.value	0x7e0
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"defer_output"
	.byte	0x6
	.value	0x7e1
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"transparent_union"
	.byte	0x6
	.value	0x7e2
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"static_ctor_flag"
	.byte	0x6
	.value	0x7e3
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"static_dtor_flag"
	.byte	0x6
	.value	0x7e4
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"artificial_flag"
	.byte	0x6
	.value	0x7e5
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"weak_flag"
	.byte	0x6
	.value	0x7e6
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"non_addr_const_p"
	.byte	0x6
	.value	0x7e8
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"no_instrument_function_entry_exit"
	.byte	0x6
	.value	0x7e9
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"comdat_flag"
	.byte	0x6
	.value	0x7ea
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"malloc_flag"
	.byte	0x6
	.value	0x7eb
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"no_limit_stack"
	.byte	0x6
	.value	0x7ec
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF8
	.byte	0x6
	.value	0x7ed
	.long	0x1f25
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"pure_flag"
	.byte	0x6
	.value	0x7ee
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF22
	.byte	0x6
	.value	0x7f0
	.long	0x536
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"non_addressable"
	.byte	0x6
	.value	0x7f1
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF23
	.byte	0x6
	.value	0x7f2
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"uninlinable"
	.byte	0x6
	.value	0x7f3
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"thread_local_flag"
	.byte	0x6
	.value	0x7f4
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"inlined_function_flag"
	.byte	0x6
	.value	0x7f5
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"threadprivate_flag"
	.byte	0x6
	.value	0x7f7
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF9
	.byte	0x6
	.value	0x7fa
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF10
	.byte	0x6
	.value	0x7fb
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF11
	.byte	0x6
	.value	0x7fc
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF12
	.byte	0x6
	.value	0x7fd
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF13
	.byte	0x6
	.value	0x7fe
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF14
	.byte	0x6
	.value	0x7ff
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF15
	.byte	0x6
	.value	0x800
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF16
	.byte	0x6
	.value	0x801
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"syscall_linkage_flag"
	.byte	0x6
	.value	0x804
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"widen_retval_flag"
	.byte	0x6
	.value	0x805
	.long	0x536
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"emitted_by_gxx"
	.byte	0x6
	.value	0x808
	.long	0x536
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
	.long	0x4783
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1f
	.long	.LASF20
	.byte	0x6
	.value	0x81d
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.string	"name"
	.byte	0x6
	.value	0x81e
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.string	"context"
	.byte	0x6
	.value	0x81f
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.string	"arguments"
	.byte	0x6
	.value	0x820
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.string	"result"
	.byte	0x6
	.value	0x821
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.string	"initial"
	.byte	0x6
	.value	0x822
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.string	"initial_2"
	.byte	0x6
	.value	0x824
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.string	"alias_target"
	.byte	0x6
	.value	0x825
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.string	"thunk_delta"
	.byte	0x6
	.value	0x829
	.long	0x5c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1f
	.long	.LASF19
	.byte	0x6
	.value	0x82b
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x10
	.string	"assembler_name"
	.byte	0x6
	.value	0x82c
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.string	"section_name"
	.byte	0x6
	.value	0x82d
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1f
	.long	.LASF21
	.byte	0x6
	.value	0x82e
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x10
	.string	"rtl"
	.byte	0x6
	.value	0x82f
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.string	"live_range_rtl"
	.byte	0x6
	.value	0x830
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x10
	.string	"u2"
	.byte	0x6
	.value	0x83c
	.long	0x47b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x10
	.string	"saved_tree"
	.byte	0x6
	.value	0x83f
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x10
	.string	"inlined_fns"
	.byte	0x6
	.value	0x843
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.string	"vindex"
	.byte	0x6
	.value	0x845
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x10
	.string	"pointer_alias_set"
	.byte	0x6
	.value	0x846
	.long	0x5c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x1f
	.long	.LASF24
	.byte	0x6
	.value	0x848
	.long	0x5943
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x20
	.string	"symtab_idx"
	.byte	0x6
	.value	0x84b
	.long	0x536
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x20
	.string	"label_defined"
	.byte	0x6
	.value	0x84c
	.long	0x536
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
	.long	0x51b6
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x10
	.string	"decl_dst_id"
	.byte	0x6
	.value	0x858
	.long	0x1eda
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x10
	.string	"sl_model_name"
	.byte	0x6
	.value	0x85c
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0x1e
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5937
	.uleb128 0x17
	.long	0x5bc7
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xc
	.byte	0x1d
	.uleb128 0xe
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0xe
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0xe
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0xe
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0xe
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0xe
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0xe
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0xe
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0xe
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0xe
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0xe
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0xe
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0xe
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0xe
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0xe
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0xe
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0xe
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0xe
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0xe
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0xe
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0xe
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0xe
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0xe
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0xe
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0xe
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0xe
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0xe
	.string	"options_dir"
	.sleb128 26
	.uleb128 0xe
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0xe
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0xe
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0xe
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0xe
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0xe
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0xe
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0xe
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0xf
	.long	0x5c16
	.string	"tree_omp"
	.byte	0x18
	.byte	0x6
	.value	0x864
	.uleb128 0x1f
	.long	.LASF2
	.byte	0x6
	.value	0x865
	.long	0x3c1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"choice"
	.byte	0x6
	.value	0x866
	.long	0x5949
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"omp_clause_list"
	.byte	0x6
	.value	0x867
	.long	0x5fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x3
	.byte	0x4
	.long	0x1e8
	.uleb128 0x12
	.long	0x5c35
	.long	0x5d5
	.uleb128 0x13
	.long	0x54d
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x593
	.uleb128 0x4
	.long	0x5ca0
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x7
	.string	"next"
	.byte	0x5
	.byte	0x35
	.long	0x5ca0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x5
	.byte	0x36
	.long	0x5ca0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x5ca6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5c48
	.uleb128 0x12
	.long	0x5cb6
	.long	0x5c35
	.uleb128 0x13
	.long	0x54d
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x5c48
	.uleb128 0x3
	.byte	0x4
	.long	0x5cb6
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x1397
	.uleb128 0x4
	.long	0x5d3a
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0xe
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0xe
	.byte	0x21
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"size"
	.byte	0xe
	.byte	0x22
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0xe
	.byte	0x23
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0xe
	.byte	0x24
	.long	0x5c25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xe
	.byte	0x25
	.long	0x5d49
	.uleb128 0x3
	.byte	0x4
	.long	0x5ce0
	.uleb128 0x2
	.string	"regset"
	.byte	0xd
	.byte	0x22
	.long	0x5cd2
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0xd
	.byte	0x75
	.long	0x5c4
	.uleb128 0x4
	.long	0x5e19
	.string	"edge_def"
	.byte	0x28
	.byte	0xd
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0xd
	.byte	0x7a
	.long	0x5e19
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0xd
	.byte	0x7a
	.long	0x5e19
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0xd
	.byte	0x7d
	.long	0x1522
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"dest"
	.byte	0xd
	.byte	0x7d
	.long	0x1522
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"insns"
	.byte	0xd
	.byte	0x80
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0xd
	.byte	0x83
	.long	0x5fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"flags"
	.byte	0xd
	.byte	0x85
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0xd
	.byte	0x86
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"count"
	.byte	0xd
	.byte	0x87
	.long	0x5d5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5d6e
	.uleb128 0x2
	.string	"edge"
	.byte	0xd
	.byte	0x89
	.long	0x5e19
	.uleb128 0x4
	.long	0x6099
	.string	"loop"
	.byte	0x80
	.byte	0xd
	.byte	0xdc
	.uleb128 0x10
	.string	"num"
	.byte	0xd
	.value	0x176
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"header"
	.byte	0xd
	.value	0x179
	.long	0x609f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"latch"
	.byte	0xd
	.value	0x17c
	.long	0x609f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"pre_header"
	.byte	0xd
	.value	0x17f
	.long	0x609f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"pre_header_edges"
	.byte	0xd
	.value	0x184
	.long	0x60b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"num_pre_header_edges"
	.byte	0xd
	.value	0x187
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1f
	.long	.LASF7
	.byte	0xd
	.value	0x18b
	.long	0x609f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"last"
	.byte	0xd
	.value	0x18f
	.long	0x609f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.string	"nodes"
	.byte	0xd
	.value	0x192
	.long	0x5d3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.string	"num_nodes"
	.byte	0xd
	.value	0x195
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.string	"entry_edges"
	.byte	0xd
	.value	0x198
	.long	0x60b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.string	"num_entries"
	.byte	0xd
	.value	0x19b
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.string	"exit_edges"
	.byte	0xd
	.value	0x19e
	.long	0x60b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.string	"num_exits"
	.byte	0xd
	.value	0x1a1
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.string	"exits_doms"
	.byte	0xd
	.value	0x1a4
	.long	0x5d3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.string	"depth"
	.byte	0xd
	.value	0x1a7
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.string	"pred"
	.byte	0xd
	.value	0x1aa
	.long	0x60b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.string	"level"
	.byte	0xd
	.value	0x1ae
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.string	"outer"
	.byte	0xd
	.value	0x1b1
	.long	0x6099
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.string	"inner"
	.byte	0xd
	.value	0x1b4
	.long	0x6099
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.string	"next"
	.byte	0xd
	.value	0x1b7
	.long	0x6099
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.string	"invalid"
	.byte	0xd
	.value	0x1ba
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x10
	.string	"aux"
	.byte	0xd
	.value	0x1bd
	.long	0x5fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x10
	.string	"vtop"
	.byte	0xd
	.value	0x1c3
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.string	"cont"
	.byte	0xd
	.value	0x1c7
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.string	"start"
	.byte	0xd
	.value	0x1ca
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x10
	.string	"end"
	.byte	0xd
	.value	0x1cd
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.string	"top"
	.byte	0xd
	.value	0x1d1
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x10
	.string	"scan_start"
	.byte	0xd
	.value	0x1d4
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x10
	.string	"sink"
	.byte	0xd
	.value	0x1d7
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x10
	.string	"exit_labels"
	.byte	0xd
	.value	0x1e2
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.string	"exit_count"
	.byte	0xd
	.value	0x1e6
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5e2b
	.uleb128 0x2
	.string	"basic_block"
	.byte	0xd
	.byte	0xe6
	.long	0x1522
	.uleb128 0x3
	.byte	0x4
	.long	0x5e1f
	.uleb128 0x3
	.byte	0x4
	.long	0x6099
	.uleb128 0x17
	.long	0x6104
	.string	"real_value_class"
	.byte	0x4
	.byte	0x7
	.byte	0x22
	.uleb128 0xe
	.string	"rvc_zero"
	.sleb128 0
	.uleb128 0xe
	.string	"rvc_normal"
	.sleb128 1
	.uleb128 0xe
	.string	"rvc_inf"
	.sleb128 2
	.uleb128 0xe
	.string	"rvc_nan"
	.sleb128 3
	.byte	0x0
	.uleb128 0x12
	.long	0x6114
	.long	0x593
	.uleb128 0x13
	.long	0x54d
	.byte	0x4
	.byte	0x0
	.uleb128 0x4
	.long	0x617a
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xa
	.byte	0x17
	.uleb128 0x7
	.string	"modified"
	.byte	0xa
	.byte	0x18
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"promoted_mode"
	.byte	0xa
	.byte	0x19
	.long	0x62b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"unsignedp"
	.byte	0xa
	.byte	0x1a
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next"
	.byte	0xa
	.byte	0x1b
	.long	0x617a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6114
	.uleb128 0x1a
	.long	0x61c7
	.long	.LASF27
	.byte	0x10
	.byte	0xa
	.byte	0x24
	.uleb128 0x1b
	.long	.LASF7
	.byte	0xa
	.byte	0x26
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last"
	.byte	0xa
	.byte	0x27
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.long	.LASF28
	.byte	0xa
	.byte	0x28
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next"
	.byte	0xa
	.byte	0x29
	.long	0x61c7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6180
	.uleb128 0x4
	.long	0x631c
	.string	"emit_status"
	.byte	0x34
	.byte	0xa
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0xa
	.byte	0x3a
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0xa
	.byte	0x3d
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_insn"
	.byte	0xa
	.byte	0x44
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_insn"
	.byte	0xa
	.byte	0x45
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1b
	.long	.LASF28
	.byte	0xa
	.byte	0x4a
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.long	.LASF27
	.byte	0xa
	.byte	0x50
	.long	0x61c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0xa
	.byte	0x54
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0xa
	.byte	0x58
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0xa
	.byte	0x59
	.long	0x2d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0xa
	.byte	0x5f
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"regno_pointer_align"
	.byte	0xa
	.byte	0x65
	.long	0x60e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0xa
	.byte	0x69
	.long	0x5c1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"x_regno_reg_rtx"
	.byte	0xa
	.byte	0x70
	.long	0x155d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x63fc
	.string	"expr_status"
	.byte	0x1c
	.byte	0xa
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0xa
	.byte	0x80
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0xa
	.byte	0x91
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0xa
	.byte	0x97
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_saveregs_value"
	.byte	0xa
	.byte	0x9c
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_apply_args_value"
	.byte	0xa
	.byte	0x9f
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x_forced_labels"
	.byte	0xa
	.byte	0xa2
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_pending_chain"
	.byte	0xa
	.byte	0xa5
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x25
	.long	0x6466
	.long	.LASF26
	.byte	0x4
	.byte	0xa
	.value	0x1f1
	.uleb128 0xe
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0xe
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0xe
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1e
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6466
	.uleb128 0x1e
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6478
	.uleb128 0x3
	.byte	0x4
	.long	0x631c
	.uleb128 0x3
	.byte	0x4
	.long	0x61cd
	.uleb128 0x1e
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6498
	.uleb128 0x1e
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x64ae
	.uleb128 0x1e
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x64cb
	.uleb128 0x1e
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x64dd
	.uleb128 0x1e
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x64f6
	.uleb128 0x26
	.long	0x6551
	.string	"neg_const_int"
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.long	0xa1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.byte	0x5f
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0x60
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x29
	.long	0x65c5
	.byte	0x1
	.string	"simplify_gen_binary"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.long	0xa1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.byte	0x6b
	.long	0x923
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.byte	0x6c
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"op0"
	.byte	0x1
	.byte	0x6d
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"op1"
	.byte	0x1
	.byte	0x6d
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2a
	.string	"tem"
	.byte	0x1
	.byte	0x6f
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x6634
	.byte	0x1
	.string	"avoid_constant_pool_reference"
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.long	0xa1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.byte	0x8c
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"c"
	.byte	0x1
	.byte	0x8e
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"addr"
	.byte	0x1
	.byte	0x8e
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.string	"cmode"
	.byte	0x1
	.byte	0x8f
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x66a6
	.byte	0x1
	.string	"simplify_gen_unary"
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.long	0xa1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.byte	0xb0
	.long	0x923
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.byte	0xb1
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"op"
	.byte	0x1
	.byte	0xb2
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF29
	.byte	0x1
	.byte	0xb3
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2a
	.string	"tem"
	.byte	0x1
	.byte	0xb5
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x6737
	.byte	0x1
	.string	"simplify_gen_ternary"
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.long	0xa1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.byte	0xc2
	.long	0x923
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.byte	0xc3
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF30
	.byte	0x1
	.byte	0xc3
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"op0"
	.byte	0x1
	.byte	0xc4
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.string	"op1"
	.byte	0x1
	.byte	0xc4
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x28
	.string	"op2"
	.byte	0x1
	.byte	0xc4
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2a
	.string	"tem"
	.byte	0x1
	.byte	0xc6
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x67d5
	.byte	0x1
	.string	"simplify_gen_relational"
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.long	0xa1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.byte	0xd6
	.long	0x923
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.byte	0xd7
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF31
	.byte	0x1
	.byte	0xd8
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"op0"
	.byte	0x1
	.byte	0xd9
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.string	"op1"
	.byte	0x1
	.byte	0xd9
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2a
	.string	"tem"
	.byte	0x1
	.byte	0xdb
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2a
	.string	"new"
	.byte	0x1
	.byte	0xef
	.long	0x923
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x6926
	.byte	0x1
	.string	"simplify_replace_rtx"
	.byte	0x1
	.value	0x108
	.byte	0x1
	.long	0xa1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0x105
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"old"
	.byte	0x1
	.value	0x106
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"new"
	.byte	0x1
	.value	0x107
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.long	.LASF0
	.byte	0x1
	.value	0x109
	.long	0x923
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2e
	.long	.LASF1
	.byte	0x1
	.value	0x10a
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	0x6879
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2e
	.long	.LASF29
	.byte	0x1
	.value	0x117
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.string	"op"
	.byte	0x1
	.value	0x118
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x2f
	.long	0x68b4
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2e
	.long	.LASF29
	.byte	0x1
	.value	0x126
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.string	"op0"
	.byte	0x1
	.value	0x129
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"op1"
	.byte	0x1
	.value	0x12a
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x2f
	.long	0x68e0
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2e
	.long	.LASF29
	.byte	0x1
	.value	0x139
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"op0"
	.byte	0x1
	.value	0x13a
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2f
	.long	0x68fd
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x30
	.string	"exp"
	.byte	0x1
	.value	0x14a
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x30
	.string	"op0"
	.byte	0x1
	.value	0x15c
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.string	"op1"
	.byte	0x1
	.value	0x15d
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x6bab
	.byte	0x1
	.string	"simplify_unary_operation"
	.byte	0x1
	.value	0x17c
	.byte	0x1
	.long	0xa1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0x178
	.long	0x923
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x179
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"op"
	.byte	0x1
	.value	0x17a
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF29
	.byte	0x1
	.value	0x17b
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2e
	.long	.LASF32
	.byte	0x1
	.value	0x17d
	.long	0x536
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.string	"trueop"
	.byte	0x1
	.value	0x17e
	.long	0xa1
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	0x6a45
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2e
	.long	.LASF33
	.byte	0x1
	.value	0x18f
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	.LASF34
	.byte	0x1
	.value	0x190
	.long	0x536
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.string	"v"
	.byte	0x1
	.value	0x191
	.long	0x1a0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x192
	.long	0x536
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x30
	.string	"inmode"
	.byte	0x1
	.value	0x199
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"in_elt_size"
	.byte	0x1
	.value	0x19a
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.string	"in_n_elts"
	.byte	0x1
	.value	0x19b
	.long	0x536
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x6a7f
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x30
	.string	"hv"
	.byte	0x1
	.value	0x1ad
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x30
	.string	"lv"
	.byte	0x1
	.value	0x1ad
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x30
	.string	"d"
	.byte	0x1
	.value	0x1ae
	.long	0x3fd3
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.byte	0x0
	.uleb128 0x2f
	.long	0x6ab9
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x30
	.string	"hv"
	.byte	0x1
	.value	0x1bd
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x30
	.string	"lv"
	.byte	0x1
	.value	0x1bd
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.string	"d"
	.byte	0x1
	.value	0x1be
	.long	0x3fd3
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.byte	0x0
	.uleb128 0x2f
	.long	0x6ae8
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x30
	.string	"arg0"
	.byte	0x1
	.value	0x1d9
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.string	"val"
	.byte	0x1
	.value	0x1da
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x0
	.uleb128 0x2f
	.long	0x6b32
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x30
	.string	"l1"
	.byte	0x1
	.value	0x238
	.long	0x5d5
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.string	"lv"
	.byte	0x1
	.value	0x238
	.long	0x5d5
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x30
	.string	"h1"
	.byte	0x1
	.value	0x239
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.string	"hv"
	.byte	0x1
	.value	0x239
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.byte	0x0
	.uleb128 0x2f
	.long	0x6b4e
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x30
	.string	"d"
	.byte	0x1
	.value	0x287
	.long	0x3fd3
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.byte	0x0
	.uleb128 0x2f
	.long	0x6b78
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x2ab
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.string	"d"
	.byte	0x1
	.value	0x2ac
	.long	0x3fd3
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.byte	0x0
	.uleb128 0x2f
	.long	0x6b9a
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x30
	.string	"reversed"
	.byte	0x1
	.value	0x2bc
	.long	0x923
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x32
	.long	.LASF35
	.long	0x79f6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13786
	.byte	0x0
	.uleb128 0x2c
	.long	0x6eb6
	.byte	0x1
	.string	"simplify_binary_operation"
	.byte	0x1
	.value	0x30b
	.byte	0x1
	.long	0xa1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0x308
	.long	0x923
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x309
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"op0"
	.byte	0x1
	.value	0x30a
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"op1"
	.byte	0x1
	.value	0x30a
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.string	"arg0"
	.byte	0x1
	.value	0x30c
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x30
	.string	"arg1"
	.byte	0x1
	.value	0x30c
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x30
	.string	"arg0s"
	.byte	0x1
	.value	0x30c
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x30
	.string	"arg1s"
	.byte	0x1
	.value	0x30c
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x30
	.string	"val"
	.byte	0x1
	.value	0x30d
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2e
	.long	.LASF32
	.byte	0x1
	.value	0x30e
	.long	0x536
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x30
	.string	"tem"
	.byte	0x1
	.value	0x30f
	.long	0xa1
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.string	"trueop0"
	.byte	0x1
	.value	0x310
	.long	0xa1
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x30
	.string	"trueop1"
	.byte	0x1
	.value	0x311
	.long	0xa1
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	0x6cf7
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x30
	.string	"f0"
	.byte	0x1
	.value	0x328
	.long	0x3fd3
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x30
	.string	"f1"
	.byte	0x1
	.value	0x328
	.long	0x3fd3
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x30
	.string	"value"
	.byte	0x1
	.value	0x328
	.long	0x3fd3
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.byte	0x0
	.uleb128 0x2f
	.long	0x6d5f
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x30
	.string	"l1"
	.byte	0x1
	.value	0x342
	.long	0x5d5
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x30
	.string	"l2"
	.byte	0x1
	.value	0x342
	.long	0x5d5
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x30
	.string	"lv"
	.byte	0x1
	.value	0x342
	.long	0x5d5
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x30
	.string	"h1"
	.byte	0x1
	.value	0x343
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x30
	.string	"h2"
	.byte	0x1
	.value	0x343
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x30
	.string	"hv"
	.byte	0x1
	.value	0x343
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.byte	0x0
	.uleb128 0x2f
	.long	0x6dc1
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x30
	.string	"coeff0"
	.byte	0x1
	.value	0x3e8
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.string	"coeff1"
	.byte	0x1
	.value	0x3e8
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.string	"lhs"
	.byte	0x1
	.value	0x3e9
	.long	0xa1
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.string	"rhs"
	.byte	0x1
	.value	0x3e9
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.value	0x3ea
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x2f
	.long	0x6df1
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x30
	.string	"xop00"
	.byte	0x1
	.value	0x43a
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"xop10"
	.byte	0x1
	.value	0x43b
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x2f
	.long	0x6e52
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x30
	.string	"coeff0"
	.byte	0x1
	.value	0x46e
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.string	"coeff1"
	.byte	0x1
	.value	0x46e
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.string	"lhs"
	.byte	0x1
	.value	0x46f
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"rhs"
	.byte	0x1
	.value	0x46f
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.value	0x470
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x2f
	.long	0x6e6e
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x30
	.string	"d"
	.byte	0x1
	.value	0x4eb
	.long	0x3fd3
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.byte	0x0
	.uleb128 0x2f
	.long	0x6e89
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x533
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2f
	.long	0x6ea5
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x30
	.string	"d"
	.byte	0x1
	.value	0x54d
	.long	0x3fd3
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.byte	0x0
	.uleb128 0x32
	.long	.LASF35
	.long	0x79e1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14247
	.byte	0x0
	.uleb128 0xf
	.long	0x6ef9
	.string	"simplify_plus_minus_op_data"
	.byte	0x8
	.byte	0x1
	.value	0x66c
	.uleb128 0x10
	.string	"op"
	.byte	0x1
	.value	0x66d
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"neg"
	.byte	0x1
	.value	0x66e
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x33
	.long	0x6f6b
	.string	"simplify_plus_minus_op_data_cmp"
	.byte	0x1
	.value	0x675
	.byte	0x1
	.long	0x2e7
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2d
	.string	"p1"
	.byte	0x1
	.value	0x673
	.long	0x624
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"p2"
	.byte	0x1
	.value	0x674
	.long	0x624
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"d1"
	.byte	0x1
	.value	0x676
	.long	0x6f6b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"d2"
	.byte	0x1
	.value	0x677
	.long	0x6f6b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f71
	.uleb128 0xb
	.long	0x6eb6
	.uleb128 0x33
	.long	0x7196
	.string	"simplify_plus_minus"
	.byte	0x1
	.value	0x683
	.byte	0x1
	.long	0xa1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0x67f
	.long	0x923
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x680
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"op0"
	.byte	0x1
	.value	0x681
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"op1"
	.byte	0x1
	.value	0x681
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.string	"force"
	.byte	0x1
	.value	0x682
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x30
	.string	"ops"
	.byte	0x1
	.value	0x684
	.long	0x7196
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x30
	.string	"result"
	.byte	0x1
	.value	0x685
	.long	0xa1
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.string	"tem"
	.byte	0x1
	.value	0x685
	.long	0xa1
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x30
	.string	"n_ops"
	.byte	0x1
	.value	0x686
	.long	0x2e7
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.string	"input_ops"
	.byte	0x1
	.value	0x686
	.long	0x2e7
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x30
	.string	"input_consts"
	.byte	0x1
	.value	0x686
	.long	0x2e7
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.string	"n_consts"
	.byte	0x1
	.value	0x686
	.long	0x2e7
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2e
	.long	.LASF7
	.byte	0x1
	.value	0x687
	.long	0x2e7
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.string	"negate"
	.byte	0x1
	.value	0x687
	.long	0x2e7
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.string	"changed"
	.byte	0x1
	.value	0x687
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x688
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.value	0x688
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	0x7113
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x30
	.string	"this_op"
	.byte	0x1
	.value	0x69b
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.string	"this_neg"
	.byte	0x1
	.value	0x69c
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"this_code"
	.byte	0x1
	.value	0x69d
	.long	0x923
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x2f
	.long	0x717a
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x30
	.string	"lhs"
	.byte	0x1
	.value	0x6f4
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"rhs"
	.byte	0x1
	.value	0x6f4
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.string	"lneg"
	.byte	0x1
	.value	0x6f5
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"rneg"
	.byte	0x1
	.value	0x6f5
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x30
	.string	"ncode"
	.byte	0x1
	.value	0x6fa
	.long	0x923
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x30
	.string	"value"
	.byte	0x1
	.value	0x73c
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x71a6
	.long	0x6eb6
	.uleb128 0x13
	.long	0x54d
	.byte	0x7
	.byte	0x0
	.uleb128 0x2c
	.long	0x7380
	.byte	0x1
	.string	"simplify_relational_operation"
	.byte	0x1
	.value	0x77c
	.byte	0x1
	.long	0xa1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0x779
	.long	0x923
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x77a
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"op0"
	.byte	0x1
	.value	0x77b
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"op1"
	.byte	0x1
	.value	0x77b
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.string	"equal"
	.byte	0x1
	.value	0x77d
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.string	"op0lt"
	.byte	0x1
	.value	0x77d
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"op0ltu"
	.byte	0x1
	.value	0x77d
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.string	"op1lt"
	.byte	0x1
	.value	0x77d
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"op1ltu"
	.byte	0x1
	.value	0x77d
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.string	"tem"
	.byte	0x1
	.value	0x77e
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"trueop0"
	.byte	0x1
	.value	0x77f
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.string	"trueop1"
	.byte	0x1
	.value	0x780
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	0x72d2
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x30
	.string	"d0"
	.byte	0x1
	.value	0x7c4
	.long	0x3fd3
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x30
	.string	"d1"
	.byte	0x1
	.value	0x7c4
	.long	0x3fd3
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.byte	0x0
	.uleb128 0x2f
	.long	0x736f
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x2e
	.long	.LASF32
	.byte	0x1
	.value	0x7ed
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.string	"l0s"
	.byte	0x1
	.value	0x7ee
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x30
	.string	"h0s"
	.byte	0x1
	.value	0x7ee
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.string	"l1s"
	.byte	0x1
	.value	0x7ee
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.string	"h1s"
	.byte	0x1
	.value	0x7ee
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.string	"l0u"
	.byte	0x1
	.value	0x7ef
	.long	0x5d5
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.string	"h0u"
	.byte	0x1
	.value	0x7ef
	.long	0x5d5
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.string	"l1u"
	.byte	0x1
	.value	0x7ef
	.long	0x5d5
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.string	"h1u"
	.byte	0x1
	.value	0x7ef
	.long	0x5d5
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x32
	.long	.LASF35
	.long	0x79cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15882
	.byte	0x0
	.uleb128 0x2c
	.long	0x74fe
	.byte	0x1
	.string	"simplify_ternary_operation"
	.byte	0x1
	.value	0x8a3
	.byte	0x1
	.long	0xa1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0x8a0
	.long	0x923
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x8a1
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF30
	.byte	0x1
	.value	0x8a1
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"op0"
	.byte	0x1
	.value	0x8a2
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.string	"op1"
	.byte	0x1
	.value	0x8a2
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"op2"
	.byte	0x1
	.value	0x8a2
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2e
	.long	.LASF32
	.byte	0x1
	.value	0x8a4
	.long	0x536
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	0x743c
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x30
	.string	"val"
	.byte	0x1
	.value	0x8b5
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x2f
	.long	0x74a7
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x2e
	.long	.LASF31
	.byte	0x1
	.value	0x8e5
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.string	"temp"
	.byte	0x1
	.value	0x8e8
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x30
	.string	"t"
	.byte	0x1
	.value	0x8f9
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.string	"f"
	.byte	0x1
	.value	0x8fa
	.long	0x5c4
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x30
	.string	"tmp"
	.byte	0x1
	.value	0x900
	.long	0x923
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x74ed
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x2e
	.long	.LASF33
	.byte	0x1
	.value	0x919
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF34
	.byte	0x1
	.value	0x91a
	.long	0x536
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.string	"v"
	.byte	0x1
	.value	0x91b
	.long	0x1a0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x91c
	.long	0x536
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x32
	.long	.LASF35
	.long	0x79b7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16434
	.byte	0x0
	.uleb128 0x2c
	.long	0x7892
	.byte	0x1
	.string	"simplify_subreg"
	.byte	0x1
	.value	0x934
	.byte	0x1
	.long	0xa1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x31
	.long	.LASF37
	.byte	0x1
	.value	0x933
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"op"
	.byte	0x1
	.value	0x931
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF38
	.byte	0x1
	.value	0x933
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"byte"
	.byte	0x1
	.value	0x932
	.long	0x536
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2f
	.long	0x7640
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x2e
	.long	.LASF33
	.byte	0x1
	.value	0x948
	.long	0x2e7
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2e
	.long	.LASF6
	.byte	0x1
	.value	0x949
	.long	0x7892
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x30
	.string	"elt"
	.byte	0x1
	.value	0x94a
	.long	0xa1
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2f
	.long	0x7611
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x30
	.string	"sum"
	.byte	0x1
	.value	0x963
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x30
	.string	"high"
	.byte	0x1
	.value	0x963
	.long	0x5c4
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2e
	.long	.LASF34
	.byte	0x1
	.value	0x964
	.long	0x536
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x965
	.long	0x536
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x30
	.string	"step"
	.byte	0x1
	.value	0x966
	.long	0x536
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x30
	.string	"shift"
	.byte	0x1
	.value	0x967
	.long	0x2e7
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x2e
	.long	.LASF39
	.byte	0x1
	.value	0x986
	.long	0x62b
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x30
	.string	"subbyte"
	.byte	0x1
	.value	0x988
	.long	0x2e7
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x7748
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x2e
	.long	.LASF6
	.byte	0x1
	.value	0x997
	.long	0x2e7
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.string	"part"
	.byte	0x1
	.value	0x997
	.long	0x2e7
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x30
	.string	"val"
	.byte	0x1
	.value	0x998
	.long	0x5d5
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2f
	.long	0x76f1
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x30
	.string	"submode"
	.byte	0x1
	.value	0x99e
	.long	0x62b
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.string	"subsize"
	.byte	0x1
	.value	0x99f
	.long	0x2e7
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x9a0
	.long	0x2e7
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.string	"elts"
	.byte	0x1
	.value	0x9a0
	.long	0x2e7
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x30
	.string	"v"
	.byte	0x1
	.value	0x9a1
	.long	0x1a0
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.string	"elt"
	.byte	0x1
	.value	0x9a2
	.long	0xa1
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.uleb128 0x2f
	.long	0x770f
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x30
	.string	"new"
	.byte	0x1
	.value	0x9bc
	.long	0xa1
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.uleb128 0x2f
	.long	0x772d
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x30
	.string	"new"
	.byte	0x1
	.value	0x9c6
	.long	0xa1
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x2e
	.long	.LASF39
	.byte	0x1
	.value	0x9d0
	.long	0x62b
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x77f2
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x30
	.string	"innermostmode"
	.byte	0x1
	.value	0xa19
	.long	0x62b
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2e
	.long	.LASF40
	.byte	0x1
	.value	0xa1a
	.long	0x2e7
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.string	"new"
	.byte	0x1
	.value	0xa1b
	.long	0xa1
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	0x77ac
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x2e
	.long	.LASF41
	.byte	0x1
	.value	0xa27
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x2f
	.long	0x77c9
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x2e
	.long	.LASF41
	.byte	0x1
	.value	0xa30
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x2e
	.long	.LASF6
	.byte	0x1
	.value	0xa44
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF41
	.byte	0x1
	.value	0xa45
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x782e
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x30
	.string	"final_regno"
	.byte	0x1
	.value	0xa75
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0xa7e
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x7881
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x30
	.string	"is_realpart"
	.byte	0x1
	.value	0xa9d
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"part"
	.byte	0x1
	.value	0xa9e
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF40
	.byte	0x1
	.value	0xa9f
	.long	0x536
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"res"
	.byte	0x1
	.value	0xaa0
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x32
	.long	.LASF35
	.long	0x79a2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16677
	.byte	0x0
	.uleb128 0xb
	.long	0x536
	.uleb128 0x2c
	.long	0x7921
	.byte	0x1
	.string	"simplify_gen_subreg"
	.byte	0x1
	.value	0xab3
	.byte	0x1
	.long	0xa1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x31
	.long	.LASF37
	.byte	0x1
	.value	0xab2
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"op"
	.byte	0x1
	.value	0xab0
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF38
	.byte	0x1
	.value	0xab2
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"byte"
	.byte	0x1
	.value	0xab1
	.long	0x536
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.string	"new"
	.byte	0x1
	.value	0xab4
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x32
	.long	.LASF35
	.long	0x798d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17353
	.byte	0x0
	.uleb128 0x2c
	.long	0x798d
	.byte	0x1
	.string	"simplify_rtx"
	.byte	0x1
	.value	0xaf9
	.byte	0x1
	.long	0xa1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0xaf8
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF0
	.byte	0x1
	.value	0xafa
	.long	0x923
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF1
	.byte	0x1
	.value	0xafb
	.long	0x62b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x30
	.string	"tem"
	.byte	0x1
	.value	0xb05
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x614
	.uleb128 0x12
	.long	0x79a2
	.long	0x2df
	.uleb128 0x13
	.long	0x54d
	.byte	0xf
	.byte	0x0
	.uleb128 0xb
	.long	0x7992
	.uleb128 0x12
	.long	0x79b7
	.long	0x2df
	.uleb128 0x13
	.long	0x54d
	.byte	0x1a
	.byte	0x0
	.uleb128 0xb
	.long	0x79a7
	.uleb128 0x12
	.long	0x79cc
	.long	0x2df
	.uleb128 0x13
	.long	0x54d
	.byte	0x1d
	.byte	0x0
	.uleb128 0xb
	.long	0x79bc
	.uleb128 0x12
	.long	0x79e1
	.long	0x2df
	.uleb128 0x13
	.long	0x54d
	.byte	0x19
	.byte	0x0
	.uleb128 0xb
	.long	0x79d1
	.uleb128 0x12
	.long	0x79f6
	.long	0x2df
	.uleb128 0x13
	.long	0x54d
	.byte	0x18
	.byte	0x0
	.uleb128 0xb
	.long	0x79e6
	.uleb128 0x34
	.string	"target_flags"
	.byte	0xb
	.byte	0x21
	.long	0x2e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0x7a22
	.long	0x2df
	.uleb128 0x35
	.uleb128 0x13
	.long	0x54d
	.byte	0xaf
	.byte	0x0
	.uleb128 0x36
	.string	"mips_hard_regno_mode_ok"
	.byte	0xb
	.value	0x778
	.long	0x7a11
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0x7a4f
	.long	0x2ee
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x36
	.string	"mips_regno_to_class"
	.byte	0xb
	.value	0x85d
	.long	0x7a6d
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x7a44
	.uleb128 0x12
	.long	0x7a82
	.long	0x874
	.uleb128 0x13
	.long	0x54d
	.byte	0x35
	.byte	0x0
	.uleb128 0x37
	.long	.LASF4
	.byte	0x4
	.byte	0x34
	.long	0x7a8f
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x7a72
	.uleb128 0x12
	.long	0x7aa4
	.long	0x56c
	.uleb128 0x13
	.long	0x54d
	.byte	0x35
	.byte	0x0
	.uleb128 0x34
	.string	"mode_size"
	.byte	0x4
	.byte	0x59
	.long	0x7ab7
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x7a94
	.uleb128 0x34
	.string	"mode_unit_size"
	.byte	0x4
	.byte	0x5e
	.long	0x7ad4
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x7a94
	.uleb128 0x12
	.long	0x7ae9
	.long	0x57d
	.uleb128 0x13
	.long	0x54d
	.byte	0x35
	.byte	0x0
	.uleb128 0x34
	.string	"mode_bitsize"
	.byte	0x4
	.byte	0x69
	.long	0x7aff
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x7ad9
	.uleb128 0x12
	.long	0x7b14
	.long	0x5d5
	.uleb128 0x13
	.long	0x54d
	.byte	0x35
	.byte	0x0
	.uleb128 0x34
	.string	"mode_mask_array"
	.byte	0x4
	.byte	0x73
	.long	0x7b2d
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x7b04
	.uleb128 0x12
	.long	0x7b42
	.long	0x62b
	.uleb128 0x13
	.long	0x54d
	.byte	0x35
	.byte	0x0
	.uleb128 0x34
	.string	"inner_mode_array"
	.byte	0x4
	.byte	0x77
	.long	0x7b5c
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x7b32
	.uleb128 0x12
	.long	0x7b71
	.long	0x2df
	.uleb128 0x13
	.long	0x54d
	.byte	0xa2
	.byte	0x0
	.uleb128 0x34
	.string	"rtx_class"
	.byte	0x3
	.byte	0x3f
	.long	0x7b84
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x7b61
	.uleb128 0x36
	.string	"rtx_equal_function_value_matters"
	.byte	0x3
	.value	0x53b
	.long	0x2e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0x7bc4
	.long	0xa1
	.uleb128 0x13
	.long	0x54d
	.byte	0x80
	.byte	0x0
	.uleb128 0x36
	.string	"const_int_rtx"
	.byte	0x3
	.value	0x69e
	.long	0x7bb4
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"const_true_rtx"
	.byte	0x3
	.value	0x6a4
	.long	0xa1
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0x7c0b
	.long	0xa1
	.uleb128 0x13
	.long	0x54d
	.byte	0x2
	.uleb128 0x13
	.long	0x54d
	.byte	0x35
	.byte	0x0
	.uleb128 0x36
	.string	"const_tiny_rtx"
	.byte	0x3
	.value	0x6a6
	.long	0x7bf5
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0x7c34
	.long	0xa1
	.uleb128 0x13
	.long	0x54d
	.byte	0xa
	.byte	0x0
	.uleb128 0x36
	.string	"global_rtl"
	.byte	0x3
	.value	0x6df
	.long	0x7c24
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"reload_completed"
	.byte	0x3
	.value	0x75d
	.long	0x2e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0x7c74
	.long	0x2df
	.uleb128 0x13
	.long	0x54d
	.byte	0xaf
	.byte	0x0
	.uleb128 0x36
	.string	"fixed_regs"
	.byte	0xf
	.value	0x18b
	.long	0x7c64
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"flag_unsafe_math_optimizations"
	.byte	0x10
	.value	0x171
	.long	0x2e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"flag_finite_math_only"
	.byte	0x10
	.value	0x175
	.long	0x2e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"frame_pointer_needed"
	.byte	0x10
	.value	0x26a
	.long	0x2e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"flag_signaling_nans"
	.byte	0x10
	.value	0x2b8
	.long	0x2e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"dconst0"
	.byte	0x7
	.value	0x14d
	.long	0x3fd3
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"dconst1"
	.byte	0x7
	.value	0x14e
	.long	0x3fd3
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"dconst2"
	.byte	0x7
	.value	0x14f
	.long	0x3fd3
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"dconstm1"
	.byte	0x7
	.value	0x150
	.long	0x3fd3
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2a
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x21
	.byte	0x0
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
	.long	0x166
	.value	0x2
	.long	.Ldebug_info0
	.long	0x7d59
	.long	0x6551
	.string	"simplify_gen_binary"
	.long	0x65c5
	.string	"avoid_constant_pool_reference"
	.long	0x6634
	.string	"simplify_gen_unary"
	.long	0x66a6
	.string	"simplify_gen_ternary"
	.long	0x6737
	.string	"simplify_gen_relational"
	.long	0x67d5
	.string	"simplify_replace_rtx"
	.long	0x6926
	.string	"simplify_unary_operation"
	.long	0x6bab
	.string	"simplify_binary_operation"
	.long	0x71a6
	.string	"simplify_relational_operation"
	.long	0x7380
	.string	"simplify_ternary_operation"
	.long	0x74fe
	.string	"simplify_subreg"
	.long	0x7897
	.string	"simplify_gen_subreg"
	.long	0x7921
	.string	"simplify_rtx"
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
.LASF29:
	.string	"op_mode"
.LASF32:
	.string	"width"
.LASF9:
	.string	"lang_flag_0"
.LASF10:
	.string	"lang_flag_1"
.LASF11:
	.string	"lang_flag_2"
.LASF15:
	.string	"lang_flag_6"
.LASF16:
	.string	"lang_flag_7"
.LASF31:
	.string	"cmp_mode"
.LASF7:
	.string	"first"
.LASF5:
	.string	"mem_attrs"
.LASF39:
	.string	"new_mode"
.LASF2:
	.string	"common"
.LASF24:
	.string	"lang_specific"
.LASF28:
	.string	"sequence_rtl_expr"
.LASF26:
	.string	"function_frequency"
.LASF12:
	.string	"lang_flag_3"
.LASF3:
	.string	"unsigned int"
.LASF40:
	.string	"final_offset"
.LASF36:
	.string	"had_mult"
.LASF37:
	.string	"outermode"
.LASF19:
	.string	"abstract_origin"
.LASF4:
	.string	"mode_class"
.LASF22:
	.string	"pointer_depth"
.LASF30:
	.string	"op0_mode"
.LASF23:
	.string	"user_align"
.LASF20:
	.string	"size_unit"
.LASF38:
	.string	"innermode"
.LASF27:
	.string	"sequence_stack"
.LASF25:
	.string	"args_size"
.LASF33:
	.string	"elt_size"
.LASF13:
	.string	"lang_flag_4"
.LASF14:
	.string	"lang_flag_5"
.LASF18:
	.string	"abstract_flag"
.LASF0:
	.string	"code"
.LASF17:
	.string	"ht_identifier"
.LASF6:
	.string	"offset"
.LASF35:
	.string	"__FUNCTION__"
.LASF8:
	.string	"built_in_class"
.LASF1:
	.string	"mode"
.LASF41:
	.string	"difference"
.LASF34:
	.string	"n_elts"
.LASF21:
	.string	"attributes"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
