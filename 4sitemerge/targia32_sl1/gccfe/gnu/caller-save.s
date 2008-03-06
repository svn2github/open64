	.file	"caller-save.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.type	__FUNCTION__.10603, @object
	.size	__FUNCTION__.10603, 17
__FUNCTION__.10603:
	.string	"init_caller_save"
	.align 4
.LC0:
	.string	"../../../kgccfe/gnu/caller-save.c"
	.text
.globl init_caller_save
	.type	init_caller_save, @function
init_caller_save:
.LFB15:
	.file 1 "../../../kgccfe/gnu/caller-save.c"
	.loc 1 122 0
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
	subl	$220, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 136 0
	movl	$0, -56(%ebp)
	jmp	.L2
.L3:
	.loc 1 138 0
	movl	-56(%ebp), %eax
	movl	call_used_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L4
	movl	-56(%ebp), %eax
	movl	call_fixed_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L4
	.loc 1 140 0
	movl	$1, -52(%ebp)
	jmp	.L7
.L8:
	.loc 1 142 0
	movl	-56(%ebp), %esi
	movl	-52(%ebp), %edi
	movl	-52(%ebp), %eax
	movl	-56(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	choose_hard_reg_mode@PLT
	movl	%eax, %edx
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	addl	%edi, %eax
	movl	%edx, regno_save_mode@GOTOFF(%ebx,%eax,4)
	.loc 1 144 0
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	regno_save_mode@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L9
	cmpl	$1, -52(%ebp)
	jne	.L9
	.loc 1 146 0
	movl	-56(%ebp), %edx
	movl	call_fixed_regs@GOT(%ebx), %eax
	movb	$1, (%eax,%edx)
	.loc 1 147 0
	movl	-56(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -172(%ebp)
	movl	%eax, %edx
	movl	call_fixed_reg_set@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	%esi, -168(%ebp)
	movl	%edi, -164(%ebp)
	movl	-56(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L90
	movl	%esi, %edi
	xorl	%esi, %esi
.L90:
	movl	-168(%ebp), %eax
	orl	%esi, %eax
	movl	-164(%ebp), %edx
	orl	%edi, %edx
	movl	call_fixed_reg_set@GOT(%ebx), %ecx
	movl	-172(%ebp), %edi
	movl	%eax, (%ecx,%edi,8)
	movl	%edx, 4(%ecx,%edi,8)
.L9:
	.loc 1 140 0
	addl	$1, -52(%ebp)
.L7:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L12
	movl	$8, -156(%ebp)
	jmp	.L14
.L12:
	movl	$4, -156(%ebp)
.L14:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L15
	movl	$8, -152(%ebp)
	jmp	.L17
.L15:
	movl	$4, -152(%ebp)
.L17:
	movl	-156(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-152(%ebp)
	cmpl	-52(%ebp), %eax
	jge	.L8
	.loc 1 138 0
	jmp	.L19
.L4:
	.loc 1 152 0
	movl	-56(%ebp), %edx
	leal	regno_save_mode@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	$0, (%eax)
.L19:
	.loc 1 136 0
	addl	$1, -56(%ebp)
.L2:
	cmpl	$175, -56(%ebp)
	jle	.L3
	.loc 1 166 0
	movl	$0, -56(%ebp)
	jmp	.L21
.L22:
	.loc 1 167 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L23
	movl	$2, -148(%ebp)
	jmp	.L25
.L23:
	movl	$5, -148(%ebp)
.L25:
	movl	-148(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	reg_class_contents@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	4(%esi,%eax,8), %edx
	movl	(%esi,%eax,8), %eax
	movl	-56(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L89
	movl	%edx, %eax
	xorl	%edx, %edx
.L89:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L26
	.loc 1 166 0
	addl	$1, -56(%ebp)
.L21:
	cmpl	$175, -56(%ebp)
	jle	.L22
.L26:
	.loc 1 172 0
	cmpl	$176, -56(%ebp)
	jne	.L28
	.loc 1 173 0
	leal	__FUNCTION__.10603@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$173, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L28:
	.loc 1 175 0
	movl	-56(%ebp), %eax
	movl	%eax, -144(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L30
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L30
	movl	$5, -140(%ebp)
	jmp	.L33
.L30:
	movl	$4, -140(%ebp)
.L33:
	movl	-144(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-140(%ebp), %esi
	movl	%esi, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -68(%ebp)
	.loc 1 177 0
	movl	$65536, -64(%ebp)
	jmp	.L34
.L35:
	.loc 1 179 0
	movl	-64(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -136(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L36
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L36
	movl	$5, -132(%ebp)
	jmp	.L39
.L36:
	movl	$4, -132(%ebp)
.L39:
	movl	-136(%ebp), %edi
	movl	%edi, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -60(%ebp)
	.loc 1 181 0
	movl	$0, -56(%ebp)
	jmp	.L40
.L41:
	.loc 1 182 0
	movl	-56(%ebp), %edx
	leal	regno_save_mode@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L42
	movl	-56(%ebp), %edx
	leal	regno_save_mode@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strict_memory_address_p@PLT
	testl	%eax, %eax
	je	.L44
.L42:
	.loc 1 181 0
	addl	$1, -56(%ebp)
.L40:
	cmpl	$175, -56(%ebp)
	jle	.L41
.L44:
	.loc 1 186 0
	cmpl	$176, -56(%ebp)
	je	.L45
	.loc 1 177 0
	sarl	-64(%ebp)
.L34:
	cmpl	$0, -64(%ebp)
	jne	.L35
.L45:
	.loc 1 191 0
	cmpl	$0, -64(%ebp)
	jne	.L47
	.loc 1 192 0
	movl	-68(%ebp), %eax
	movl	%eax, -60(%ebp)
.L47:
	.loc 1 200 0
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -36(%ebp)
	.loc 1 201 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -32(%ebp)
	.loc 1 202 0
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -44(%ebp)
	.loc 1 203 0
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -40(%ebp)
	.loc 1 205 0
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$-1, 32(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$42, (%esp)
	call	gen_rtx_fmt_iuuBteiee@PLT
	movl	%eax, -28(%ebp)
	.loc 1 206 0
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$-1, 32(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$42, (%esp)
	call	gen_rtx_fmt_iuuBteiee@PLT
	movl	%eax, -24(%ebp)
	.loc 1 208 0
	movl	$0, -56(%ebp)
	jmp	.L49
.L50:
	.loc 1 209 0
	movl	$0, -48(%ebp)
	jmp	.L51
.L52:
	.loc 1 210 0
	movl	-48(%ebp), %eax
	movl	-56(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L53
.LBB2:
	.loc 1 216 0
	movl	-56(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 217 0
	movl	-48(%ebp), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 218 0
	movl	-48(%ebp), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 221 0
	movl	-28(%ebp), %eax
	movl	$-1, 52(%eax)
	.loc 1 222 0
	movl	-24(%ebp), %eax
	movl	$-1, 52(%eax)
	.loc 1 224 0
	movl	-56(%ebp), %edx
	movl	%edx, -128(%ebp)
	movl	-48(%ebp), %esi
	movl	%esi, -124(%ebp)
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L55
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L57
.L55:
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	movl	%eax, -120(%ebp)
.L57:
	imull	$54, -128(%ebp), %eax
	addl	-124(%ebp), %eax
	movl	-120(%ebp), %edi
	movl	%edi, reg_save_code@GOTOFF(%ebx,%eax,4)
	.loc 1 225 0
	movl	-56(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	-48(%ebp), %edx
	movl	%edx, -112(%ebp)
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L58
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -108(%ebp)
	jmp	.L60
.L58:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	movl	%eax, -108(%ebp)
.L60:
	imull	$54, -116(%ebp), %eax
	addl	-112(%ebp), %eax
	movl	-108(%ebp), %esi
	movl	%esi, reg_restore_code@GOTOFF(%ebx,%eax,4)
	.loc 1 229 0
	movl	-56(%ebp), %eax
	movl	-48(%ebp), %edx
	imull	$54, %eax, %eax
	addl	%edx, %eax
	movl	reg_save_code@GOTOFF(%ebx,%eax,4), %eax
	cmpl	$-1, %eax
	je	.L61
	movl	-56(%ebp), %eax
	movl	-48(%ebp), %edx
	imull	$54, %eax, %eax
	addl	%edx, %eax
	movl	reg_restore_code@GOTOFF(%ebx,%eax,4), %eax
	cmpl	$-1, %eax
	je	.L61
	movl	$1, -104(%ebp)
	jmp	.L64
.L61:
	movl	$0, -104(%ebp)
.L64:
	movl	-104(%ebp), %edi
	movl	%edi, -20(%ebp)
	.loc 1 231 0
	cmpl	$0, -20(%ebp)
	je	.L65
	.loc 1 233 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_insn@PLT
	.loc 1 234 0
	movl	$1, (%esp)
	call	constrain_operands@PLT
	movl	%eax, -20(%ebp)
	.loc 1 235 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_insn@PLT
	.loc 1 236 0
	movl	$1, (%esp)
	call	constrain_operands@PLT
	andl	%eax, -20(%ebp)
.L65:
	.loc 1 239 0
	cmpl	$0, -20(%ebp)
	jne	.L69
	.loc 1 241 0
	movl	-56(%ebp), %eax
	movl	-48(%ebp), %edx
	imull	$54, %eax, %eax
	addl	%edx, %eax
	movl	$-1, reg_save_code@GOTOFF(%ebx,%eax,4)
	.loc 1 242 0
	movl	-56(%ebp), %eax
	movl	-48(%ebp), %edx
	imull	$54, %eax, %eax
	addl	%edx, %eax
	movl	$-1, reg_restore_code@GOTOFF(%ebx,%eax,4)
	jmp	.L69
.L53:
.LBE2:
	.loc 1 247 0
	movl	-56(%ebp), %eax
	movl	-48(%ebp), %edx
	imull	$54, %eax, %eax
	addl	%edx, %eax
	movl	$-1, reg_save_code@GOTOFF(%ebx,%eax,4)
	.loc 1 248 0
	movl	-56(%ebp), %eax
	movl	-48(%ebp), %edx
	imull	$54, %eax, %eax
	addl	%edx, %eax
	movl	$-1, reg_restore_code@GOTOFF(%ebx,%eax,4)
.L69:
	.loc 1 209 0
	addl	$1, -48(%ebp)
.L51:
	cmpl	$53, -48(%ebp)
	jbe	.L52
	.loc 1 208 0
	addl	$1, -56(%ebp)
.L49:
	cmpl	$175, -56(%ebp)
	jle	.L50
	.loc 1 251 0
	movl	$0, -56(%ebp)
	jmp	.L72
.L73:
	.loc 1 252 0
	movl	$1, -52(%ebp)
	jmp	.L74
.L75:
	.loc 1 253 0
	movl	-56(%ebp), %esi
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	regno_save_mode@GOTOFF(%ebx,%eax,4), %edx
	imull	$54, %esi, %eax
	addl	%edx, %eax
	movl	reg_save_code@GOTOFF(%ebx,%eax,4), %eax
	cmpl	$-1, %eax
	jne	.L76
	.loc 1 255 0
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	$0, regno_save_mode@GOTOFF(%ebx,%eax,4)
	.loc 1 256 0
	cmpl	$1, -52(%ebp)
	jne	.L76
	.loc 1 258 0
	movl	-56(%ebp), %edx
	movl	call_fixed_regs@GOT(%ebx), %eax
	movb	$1, (%eax,%edx)
	.loc 1 259 0
	movl	-56(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -100(%ebp)
	movl	%eax, %edx
	movl	call_fixed_reg_set@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	%esi, -96(%ebp)
	movl	%edi, -92(%ebp)
	movl	-56(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L88
	movl	%esi, %edi
	xorl	%esi, %esi
.L88:
	movl	-96(%ebp), %eax
	orl	%esi, %eax
	movl	-92(%ebp), %edx
	orl	%edi, %edx
	movl	call_fixed_reg_set@GOT(%ebx), %ecx
	movl	-100(%ebp), %edi
	movl	%eax, (%ecx,%edi,8)
	movl	%edx, 4(%ecx,%edi,8)
.L76:
	.loc 1 252 0
	addl	$1, -52(%ebp)
.L74:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L79
	movl	$8, -88(%ebp)
	jmp	.L81
.L79:
	movl	$4, -88(%ebp)
.L81:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L82
	movl	$8, -84(%ebp)
	jmp	.L84
.L82:
	movl	$4, -84(%ebp)
.L84:
	movl	-88(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-84(%ebp)
	cmpl	-52(%ebp), %eax
	jge	.L75
	.loc 1 251 0
	addl	$1, -56(%ebp)
.L72:
	cmpl	$175, -56(%ebp)
	jle	.L73
	.loc 1 262 0
	addl	$220, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	init_caller_save, .-init_caller_save
.globl init_save_areas
	.type	init_save_areas, @function
init_save_areas:
.LFB16:
	.loc 1 268 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%ebx
.LCFI8:
	subl	$24, %esp
.LCFI9:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 271 0
	movl	$0, -12(%ebp)
	jmp	.L92
.L93:
	.loc 1 272 0
	movl	$1, -8(%ebp)
	jmp	.L94
.L95:
	.loc 1 273 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	$0, regno_save_mem@GOTOFF(%ebx,%eax,4)
	.loc 1 272 0
	addl	$1, -8(%ebp)
.L94:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L96
	movl	$8, -28(%ebp)
	jmp	.L98
.L96:
	movl	$4, -28(%ebp)
.L98:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L99
	movl	$8, -24(%ebp)
	jmp	.L101
.L99:
	movl	$4, -24(%ebp)
.L101:
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-24(%ebp)
	cmpl	-8(%ebp), %eax
	jge	.L95
	.loc 1 271 0
	addl	$1, -12(%ebp)
.L92:
	cmpl	$175, -12(%ebp)
	jle	.L93
	.loc 1 274 0
	addl	$24, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	init_save_areas, .-init_save_areas
.globl setup_save_areas
	.type	setup_save_areas, @function
setup_save_areas:
.LFB17:
	.loc 1 296 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%edi
.LCFI12:
	pushl	%esi
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$156, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB3:
	.loc 1 306 0
	leal	-72(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-32(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE3:
	.loc 1 307 0
	movl	$176, -48(%ebp)
	jmp	.L106
.L107:
	.loc 1 308 0
	movl	-48(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L108
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jle	.L108
.LBB4:
	.loc 1 310 0
	movl	-48(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -28(%ebp)
	.loc 1 312 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-48(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 314 0
	movl	-28(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L111
.L112:
	.loc 1 315 0
	movl	-36(%ebp), %eax
	movl	call_used_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L113
	.loc 1 316 0
	movl	-36(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -132(%ebp)
	movl	-72(%ebp,%eax,8), %edx
	movl	-68(%ebp,%eax,8), %ecx
	movl	%edx, -128(%ebp)
	movl	%ecx, -124(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L164
	movl	%esi, %edi
	xorl	%esi, %esi
.L164:
	movl	-128(%ebp), %eax
	orl	%esi, %eax
	movl	-124(%ebp), %edx
	orl	%edi, %edx
	movl	-132(%ebp), %ecx
	movl	%eax, -72(%ebp,%ecx,8)
	movl	%edx, -68(%ebp,%ecx,8)
.L113:
	.loc 1 314 0
	addl	$1, -36(%ebp)
.L111:
	movl	-36(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L112
.L108:
.LBE4:
	.loc 1 307 0
	addl	$1, -48(%ebp)
.L106:
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -48(%ebp)
	jl	.L107
	.loc 1 323 0
	movl	$0, -48(%ebp)
	jmp	.L116
.L117:
	.loc 1 324 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L118
	movl	$8, -116(%ebp)
	jmp	.L120
.L118:
	movl	$4, -116(%ebp)
.L120:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L121
	movl	$8, -112(%ebp)
	jmp	.L123
.L121:
	movl	$4, -112(%ebp)
.L123:
	movl	-116(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-112(%ebp)
	movl	%eax, -44(%ebp)
	jmp	.L124
.L125:
.LBB5:
	.loc 1 326 0
	movl	$1, -20(%ebp)
	.loc 1 330 0
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	regno_save_mode@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	je	.L126
	movl	-48(%ebp), %edx
	leal	regno_save_mem@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L126
	.loc 1 334 0
	movl	$0, -40(%ebp)
	jmp	.L129
.L130:
	.loc 1 335 0
	movl	-40(%ebp), %eax
	movl	-48(%ebp), %edx
	addl	%eax, %edx
	leal	regno_save_mem@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L131
	.loc 1 337 0
	movl	$0, -20(%ebp)
	.loc 1 338 0
	jmp	.L133
.L131:
	.loc 1 334 0
	addl	$1, -40(%ebp)
.L129:
	movl	-40(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jl	.L130
.L133:
	.loc 1 340 0
	cmpl	$0, -20(%ebp)
	je	.L126
	.loc 1 343 0
	movl	$0, -40(%ebp)
	jmp	.L135
.L136:
	.loc 1 344 0
	movl	-40(%ebp), %eax
	addl	-48(%ebp), %eax
	shrl	$6, %eax
	movl	-72(%ebp,%eax,8), %esi
	movl	-68(%ebp,%eax,8), %edi
	movl	-40(%ebp), %eax
	addl	-48(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L163
	movl	%edx, %eax
	xorl	%edx, %edx
.L163:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L137
	.loc 1 346 0
	movl	$0, -20(%ebp)
	.loc 1 347 0
	jmp	.L139
.L137:
	.loc 1 343 0
	addl	$1, -40(%ebp)
.L135:
	movl	-40(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jl	.L136
.L139:
	.loc 1 349 0
	cmpl	$0, -20(%ebp)
	je	.L126
	.loc 1 353 0
	movl	-48(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	-44(%ebp), %edx
	movl	%edx, -104(%ebp)
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	regno_save_mode@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %edx
	movl	$0, %ecx
	movl	-48(%ebp), %esi
	movl	-44(%ebp), %edi
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	addl	%edi, %eax
	movl	regno_save_mode@GOTOFF(%ebx,%eax,4), %eax
	movl	$0, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	assign_stack_local@PLT
	movl	%eax, %edx
	movl	-108(%ebp), %eax
	addl	%eax, %eax
	addl	-108(%ebp), %eax
	addl	-104(%ebp), %eax
	movl	%edx, regno_save_mem@GOTOFF(%ebx,%eax,4)
	.loc 1 358 0
	movl	$0, -40(%ebp)
	jmp	.L141
.L142:
	.loc 1 361 0
	movl	-40(%ebp), %eax
	movl	-48(%ebp), %ecx
	addl	%eax, %ecx
	movl	%ecx, -100(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L143
	movl	$8, -96(%ebp)
	jmp	.L145
.L143:
	movl	$4, -96(%ebp)
.L145:
	movl	-96(%ebp), %eax
	imull	-40(%ebp), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	-40(%ebp), %eax
	movl	-48(%ebp), %edx
	addl	%eax, %edx
	leal	regno_save_mode@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	regno_save_mem@GOTOFF(%ebx,%eax,4), %eax
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	-92(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, %ecx
	leal	regno_save_mem@GOTOFF(%ebx), %edx
	movl	-100(%ebp), %eax
	addl	%eax, %eax
	addl	-100(%ebp), %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	%ecx, (%eax)
	.loc 1 358 0
	addl	$1, -40(%ebp)
.L141:
	movl	-40(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jl	.L142
.L126:
.LBE5:
	.loc 1 324 0
	subl	$1, -44(%ebp)
.L124:
	cmpl	$0, -44(%ebp)
	jg	.L125
	.loc 1 323 0
	addl	$1, -48(%ebp)
.L116:
	cmpl	$175, -48(%ebp)
	jle	.L117
	.loc 1 369 0
	movl	$0, -48(%ebp)
	jmp	.L148
.L149:
	.loc 1 370 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L150
	movl	$8, -88(%ebp)
	jmp	.L152
.L150:
	movl	$4, -88(%ebp)
.L152:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L153
	movl	$8, -84(%ebp)
	jmp	.L155
.L153:
	movl	$4, -84(%ebp)
.L155:
	movl	-88(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-84(%ebp)
	movl	%eax, -44(%ebp)
	jmp	.L156
.L157:
	.loc 1 371 0
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	regno_save_mem@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	je	.L158
	.loc 1 372 0
	call	get_frame_alias_set@PLT
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	regno_save_mem@GOTOFF(%ebx,%eax,4), %eax
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
.L158:
	.loc 1 370 0
	subl	$1, -44(%ebp)
.L156:
	cmpl	$0, -44(%ebp)
	jg	.L157
	.loc 1 369 0
	addl	$1, -48(%ebp)
.L148:
	cmpl	$175, -48(%ebp)
	jle	.L149
	.loc 1 373 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE17:
	.size	setup_save_areas, .-setup_save_areas
	.section	.rodata
	.type	__FUNCTION__.11009, @object
	.size	__FUNCTION__.11009, 25
__FUNCTION__.11009:
	.string	"save_call_clobbered_regs"
	.text
.globl save_call_clobbered_regs
	.type	save_call_clobbered_regs, @function
save_call_clobbered_regs:
.LFB18:
	.loc 1 379 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%edi
.LCFI18:
	pushl	%esi
.LCFI19:
	pushl	%ebx
.LCFI20:
	subl	$1052, %esp
.LCFI21:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB6:
	.loc 1 383 0
	leal	hard_regs_saved@GOTOFF(%ebx), %eax
	movl	%eax, -136(%ebp)
	movl	-136(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-136(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-136(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE6:
	.loc 1 384 0
	movl	$0, n_regs_saved@GOTOFF(%ebx)
	.loc 1 386 0
	movl	reload_insn_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -144(%ebp)
	jmp	.L166
.L167:
.LBB7:
	.loc 1 388 0
	movl	-144(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -132(%ebp)
	.loc 1 389 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -128(%ebp)
	.loc 1 391 0
	movl	-144(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -140(%ebp)
	.loc 1 393 0
	movl	-144(%ebp), %eax
	movzbl	234(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L168
	.loc 1 394 0
	leal	__FUNCTION__.11009@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$394, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L168:
	.loc 1 396 0
	movl	-128(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$105, %al
	jne	.L170
	.loc 1 401 0
	movl	n_regs_saved@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L172
.LBB8:
	.loc 1 405 0
	cmpl	$43, -128(%ebp)
	jne	.L174
.LBB9:
	.loc 1 407 0
	leal	referenced_regs@GOTOFF(%ebx), %eax
	movl	%eax, -120(%ebp)
	leal	hard_regs_saved@GOTOFF(%ebx), %eax
	movl	%eax, -116(%ebp)
	movl	-116(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-120(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-120(%ebp), %ecx
	addl	$8, %ecx
	movl	-116(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-120(%ebp), %ecx
	addl	$16, %ecx
	movl	-116(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L176
.L174:
.LBE9:
.LBB10:
	.loc 1 410 0
	leal	referenced_regs@GOTOFF(%ebx), %eax
	movl	%eax, -112(%ebp)
	movl	-112(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-112(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-112(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE10:
	.loc 1 411 0
	movl	-132(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	mark_referenced_regs
.LBB11:
	.loc 1 412 0
	leal	referenced_regs@GOTOFF(%ebx), %eax
	movl	%eax, -108(%ebp)
	leal	hard_regs_saved@GOTOFF(%ebx), %eax
	movl	%eax, -104(%ebp)
	movl	-108(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -1032(%ebp)
	movl	%ecx, -1028(%ebp)
	movl	-104(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-1032(%ebp), %eax
	andl	%esi, %eax
	movl	-1028(%ebp), %edx
	andl	%edi, %edx
	movl	-108(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-108(%ebp), %ecx
	addl	$8, %ecx
	movl	-108(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -1024(%ebp)
	movl	%edi, -1020(%ebp)
	movl	-104(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-1024(%ebp), %eax
	andl	%esi, %eax
	movl	-1020(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-108(%ebp), %ecx
	addl	$16, %ecx
	movl	-108(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -1016(%ebp)
	movl	%edi, -1012(%ebp)
	movl	-104(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-1016(%ebp), %eax
	andl	%esi, %eax
	movl	-1012(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L176:
.LBE11:
	.loc 1 415 0
	movl	$0, -124(%ebp)
	jmp	.L177
.L178:
	.loc 1 416 0
	movl	-124(%ebp), %eax
	shrl	$6, %eax
	movl	4+referenced_regs@GOTOFF(%ebx,%eax,8), %edx
	movl	referenced_regs@GOTOFF(%ebx,%eax,8), %eax
	movl	-124(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L250
	movl	%edx, %eax
	xorl	%edx, %edx
.L250:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L179
	.loc 1 417 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L181
	movl	$8, -1004(%ebp)
	jmp	.L183
.L181:
	movl	$4, -1004(%ebp)
.L183:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L184
	movl	$8, -1000(%ebp)
	jmp	.L186
.L184:
	movl	$4, -1000(%ebp)
.L186:
	movl	-1004(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-1000(%ebp)
	movl	%eax, %edx
	leal	-872(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_restore
	addl	%eax, -124(%ebp)
.L179:
	.loc 1 415 0
	addl	$1, -124(%ebp)
.L177:
	cmpl	$175, -124(%ebp)
	jle	.L178
.L172:
.LBE8:
	.loc 1 420 0
	cmpl	$44, -128(%ebp)
	jne	.L170
.LBB12:
.LBB13:
	.loc 1 427 0
	leal	-168(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	-96(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-96(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-96(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE13:
	movl	-144(%ebp), %eax
	addl	$20, %eax
	movl	%eax, 4(%esp)
	leal	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_to_hard_reg_set@PLT
	.loc 1 430 0
	movl	$0, -100(%ebp)
	jmp	.L188
.L189:
	.loc 1 431 0
	movl	-100(%ebp), %eax
	shrl	$6, %eax
	movl	-164(%ebp,%eax,8), %edx
	movl	-168(%ebp,%eax,8), %eax
	movl	-100(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L249
	movl	%edx, %eax
	xorl	%edx, %edx
.L249:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L190
	.loc 1 432 0
	movl	-100(%ebp), %esi
	movl	-100(%ebp), %edx
	leal	regno_save_mode@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -872(%ebp,%esi,4)
	jmp	.L192
.L190:
	.loc 1 434 0
	movl	-100(%ebp), %eax
	movl	$0, -872(%ebp,%eax,4)
.L192:
	.loc 1 430 0
	addl	$1, -100(%ebp)
.L188:
	cmpl	$175, -100(%ebp)
	jle	.L189
.LBB14:
	.loc 1 438 0
	movl	-144(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -92(%ebp)
	movl	$1, -88(%ebp)
	movl	$16, -84(%ebp)
	movl	$1, -80(%ebp)
	jmp	.L194
.L195:
	movl	-92(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
.L194:
	cmpl	$0, -92(%ebp)
	je	.L196
	movl	-92(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-88(%ebp), %eax
	jb	.L195
.L196:
	cmpl	$0, -92(%ebp)
	je	.L201
	movl	-92(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-88(%ebp), %eax
	je	.L201
	movl	$0, -84(%ebp)
	movl	$0, -80(%ebp)
	jmp	.L201
.L204:
.LBB15:
	movl	-80(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -76(%ebp)
	cmpl	$0, -76(%ebp)
	je	.L205
	jmp	.L207
.L208:
.LBB16:
	movl	-84(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	andl	-76(%ebp), %eax
	testl	%eax, %eax
	je	.L209
	movl	-72(%ebp), %eax
	notl	%eax
	andl	%eax, -76(%ebp)
	movl	-92(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	sall	$5, %eax
	addl	-84(%ebp), %eax
	movl	%eax, -100(%ebp)
.LBB17:
	movl	-100(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -68(%ebp)
	cmpl	$0, -68(%ebp)
	js	.L211
.LBB18:
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-100(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	choose_hard_reg_mode@PLT
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movl	-68(%ebp), %eax
	movl	-872(%ebp,%eax,4), %eax
	movl	%eax, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	cmpw	%ax, %cx
	jbe	.L215
	movl	-68(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, -872(%ebp,%edx,4)
	jmp	.L215
.L216:
	movl	-64(%ebp), %eax
	addl	-68(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -996(%ebp)
	movl	-168(%ebp,%eax,8), %edx
	movl	-164(%ebp,%eax,8), %ecx
	movl	%edx, -992(%ebp)
	movl	%ecx, -988(%ebp)
	movl	-64(%ebp), %eax
	addl	-68(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L248
	movl	%esi, %edi
	xorl	%esi, %esi
.L248:
	movl	-992(%ebp), %eax
	orl	%esi, %eax
	movl	-988(%ebp), %edx
	orl	%edi, %edx
	movl	-996(%ebp), %ecx
	movl	%eax, -168(%ebp,%ecx,8)
	movl	%edx, -164(%ebp,%ecx,8)
.L215:
	cmpl	$0, -64(%ebp)
	setg	%al
	subl	$1, -64(%ebp)
	testb	%al, %al
	jne	.L216
.LBE18:
.LBE17:
	cmpl	$0, -76(%ebp)
	je	.L205
	jmp	.L209
.L211:
.LBB19:
	leal	__FUNCTION__.11009@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$459, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L209:
.LBE19:
.LBE16:
	addl	$1, -84(%ebp)
.L207:
	cmpl	$31, -84(%ebp)
	jbe	.L208
.L205:
	movl	$0, -84(%ebp)
.LBE15:
	addl	$1, -80(%ebp)
.L203:
	cmpl	$3, -80(%ebp)
	jbe	.L204
	movl	$0, -80(%ebp)
	movl	-92(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
.L201:
	cmpl	$0, -92(%ebp)
	jne	.L203
.LBE14:
.LBB20:
	.loc 1 465 0
	leal	this_insn_sets@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-56(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-56(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE20:
	.loc 1 466 0
	movl	-132(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	leal	mark_set_regs@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
.LBB21:
	.loc 1 469 0
	leal	-168(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	call_fixed_reg_set@GOT(%ebx), %eax
	movl	%eax, -48(%ebp)
	movl	-52(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -984(%ebp)
	movl	%edi, -980(%ebp)
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-984(%ebp), %eax
	andl	%esi, %eax
	movl	-980(%ebp), %edx
	andl	%edi, %edx
	movl	-52(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-52(%ebp), %ecx
	addl	$8, %ecx
	movl	-52(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -976(%ebp)
	movl	%edi, -972(%ebp)
	movl	-48(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-976(%ebp), %eax
	andl	%esi, %eax
	movl	-972(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-52(%ebp), %ecx
	addl	$16, %ecx
	movl	-52(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -968(%ebp)
	movl	%edi, -964(%ebp)
	movl	-48(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-968(%ebp), %eax
	andl	%esi, %eax
	movl	-964(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE21:
.LBB22:
	.loc 1 470 0
	leal	-168(%ebp), %eax
	movl	%eax, -44(%ebp)
	leal	this_insn_sets@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -960(%ebp)
	movl	%ecx, -956(%ebp)
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-960(%ebp), %eax
	andl	%esi, %eax
	movl	-956(%ebp), %edx
	andl	%edi, %edx
	movl	-44(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-44(%ebp), %ecx
	addl	$8, %ecx
	movl	-44(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -952(%ebp)
	movl	%edi, -948(%ebp)
	movl	-40(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-952(%ebp), %eax
	andl	%esi, %eax
	movl	-948(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-44(%ebp), %ecx
	addl	$16, %ecx
	movl	-44(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -944(%ebp)
	movl	%edi, -940(%ebp)
	movl	-40(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-944(%ebp), %eax
	andl	%esi, %eax
	movl	-940(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE22:
.LBB23:
	.loc 1 471 0
	leal	-168(%ebp), %eax
	movl	%eax, -36(%ebp)
	leal	hard_regs_saved@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	movl	-36(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -936(%ebp)
	movl	%ecx, -932(%ebp)
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-936(%ebp), %eax
	andl	%esi, %eax
	movl	-932(%ebp), %edx
	andl	%edi, %edx
	movl	-36(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-36(%ebp), %ecx
	addl	$8, %ecx
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -928(%ebp)
	movl	%edi, -924(%ebp)
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-928(%ebp), %eax
	andl	%esi, %eax
	movl	-924(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-36(%ebp), %ecx
	addl	$16, %ecx
	movl	-36(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -920(%ebp)
	movl	%edi, -916(%ebp)
	movl	-32(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-920(%ebp), %eax
	andl	%esi, %eax
	movl	-916(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE23:
.LBB24:
	.loc 1 472 0
	leal	-168(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	call_used_reg_set@GOT(%ebx), %eax
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -912(%ebp)
	movl	%ecx, -908(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-912(%ebp), %eax
	andl	%esi, %eax
	movl	-908(%ebp), %edx
	andl	%edi, %edx
	movl	-28(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-28(%ebp), %ecx
	addl	$8, %ecx
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -904(%ebp)
	movl	%edi, -900(%ebp)
	movl	-24(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-904(%ebp), %eax
	andl	%esi, %eax
	movl	-900(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-28(%ebp), %ecx
	addl	$16, %ecx
	movl	-28(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -896(%ebp)
	movl	%edi, -892(%ebp)
	movl	-24(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-896(%ebp), %eax
	andl	%esi, %eax
	movl	-892(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE24:
	.loc 1 474 0
	movl	$0, -100(%ebp)
	jmp	.L220
.L221:
	.loc 1 475 0
	movl	-100(%ebp), %eax
	shrl	$6, %eax
	movl	-164(%ebp,%eax,8), %edx
	movl	-168(%ebp,%eax,8), %eax
	movl	-100(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L247
	movl	%edx, %eax
	xorl	%edx, %edx
.L247:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L222
	.loc 1 476 0
	leal	-872(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-168(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_save
	addl	%eax, -100(%ebp)
.L222:
	.loc 1 474 0
	addl	$1, -100(%ebp)
.L220:
	cmpl	$175, -100(%ebp)
	jle	.L221
	.loc 1 479 0
	movl	$0, n_regs_saved@GOTOFF(%ebx)
	.loc 1 480 0
	movl	$0, -100(%ebp)
	jmp	.L225
.L226:
	.loc 1 481 0
	movl	-100(%ebp), %eax
	shrl	$6, %eax
	movl	4+hard_regs_saved@GOTOFF(%ebx,%eax,8), %edx
	movl	hard_regs_saved@GOTOFF(%ebx,%eax,8), %eax
	movl	-100(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L246
	movl	%edx, %eax
	xorl	%edx, %edx
.L246:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L227
	.loc 1 482 0
	movl	n_regs_saved@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, n_regs_saved@GOTOFF(%ebx)
.L227:
	.loc 1 480 0
	addl	$1, -100(%ebp)
.L225:
	cmpl	$175, -100(%ebp)
	jle	.L226
.L170:
.LBE12:
	.loc 1 486 0
	movl	-144(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L229
	movl	-144(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	-144(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jle	.L231
.L229:
.LBB25:
	.loc 1 493 0
	movl	n_regs_saved@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L231
	.loc 1 494 0
	movl	$0, -20(%ebp)
	jmp	.L233
.L234:
	.loc 1 495 0
	movl	-20(%ebp), %eax
	shrl	$6, %eax
	movl	4+hard_regs_saved@GOTOFF(%ebx,%eax,8), %edx
	movl	hard_regs_saved@GOTOFF(%ebx,%eax,8), %eax
	movl	-20(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L245
	movl	%edx, %eax
	xorl	%edx, %edx
.L245:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L235
	.loc 1 496 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L237
	movl	$8, -888(%ebp)
	jmp	.L239
.L237:
	movl	$4, -888(%ebp)
.L239:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L240
	movl	$8, -884(%ebp)
	jmp	.L242
.L240:
	movl	$4, -884(%ebp)
.L242:
	movl	-888(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-884(%ebp)
	movl	%eax, %edx
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	sete	%al
	movzbl	%al, %ecx
	leal	-872(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_restore
	addl	%eax, -20(%ebp)
.L235:
	.loc 1 494 0
	addl	$1, -20(%ebp)
.L233:
	cmpl	$175, -20(%ebp)
	jle	.L234
.L231:
.LBE25:
.LBE7:
	.loc 1 386 0
	movl	-140(%ebp), %eax
	movl	%eax, -144(%ebp)
.L166:
	cmpl	$0, -144(%ebp)
	jne	.L167
	.loc 1 500 0
	addl	$1052, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE18:
	.size	save_call_clobbered_regs, .-save_call_clobbered_regs
	.type	mark_set_regs, @function
mark_set_regs:
.LFB19:
	.loc 1 511 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%edi
.LCFI24:
	pushl	%esi
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$60, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 513 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 515 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L252
.LBB26:
	.loc 1 517 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 518 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L264
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L256
	.loc 1 519 0
	jmp	.L264
.L256:
	.loc 1 521 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_hard_regno@PLT
	movl	%eax, -36(%ebp)
	jmp	.L258
.L252:
.LBE26:
	.loc 1 523 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L264
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L264
	.loc 1 525 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L258:
	.loc 1 529 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 531 0
	movl	-36(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L262
.L263:
	.loc 1 532 0
	movl	-28(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	this_insn_sets@GOTOFF(%ebx,%eax,8), %edx
	movl	4+this_insn_sets@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-28(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L265
	movl	%esi, %edi
	xorl	%esi, %esi
.L265:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-60(%ebp), %ecx
	movl	%eax, this_insn_sets@GOTOFF(%ebx,%ecx,8)
	movl	%edx, 4+this_insn_sets@GOTOFF(%ebx,%ecx,8)
	.loc 1 531 0
	addl	$1, -28(%ebp)
.L262:
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jl	.L263
.L264:
	.loc 1 533 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	mark_set_regs, .-mark_set_regs
	.type	add_stored_regs, @function
add_stored_regs:
.LFB20:
	.loc 1 544 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%esi
.LCFI30:
	pushl	%ebx
.LCFI31:
	subl	$48, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 546 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 547 0
	movl	$0, -12(%ebp)
	.loc 1 549 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L277
	.loc 1 552 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L269
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L269
	.loc 1 554 0
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
	movl	%eax, -12(%ebp)
	.loc 1 558 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L269:
	.loc 1 561 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L277
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L274
	.loc 1 562 0
	jmp	.L277
.L274:
	.loc 1 564 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 565 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 567 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L275
.L276:
	.loc 1 568 0
	movl	16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 567 0
	addl	$1, -20(%ebp)
.L275:
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jl	.L276
.L277:
	.loc 1 569 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE20:
	.size	add_stored_regs, .-add_stored_regs
	.type	mark_referenced_regs, @function
mark_referenced_regs:
.LFB21:
	.loc 1 575 0
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
	subl	$76, %esp
.LCFI38:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 576 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -44(%ebp)
	.loc 1 580 0
	cmpl	$57, -44(%ebp)
	jne	.L279
	.loc 1 581 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	mark_referenced_regs
.L279:
	.loc 1 582 0
	cmpl	$57, -44(%ebp)
	je	.L281
	cmpl	$59, -44(%ebp)
	jne	.L283
.L281:
	.loc 1 584 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 585 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -44(%ebp)
	.loc 1 586 0
	cmpl	$71, -44(%ebp)
	je	.L320
	cmpl	$69, -44(%ebp)
	je	.L320
	cmpl	$79, -44(%ebp)
	je	.L320
	cmpl	$73, -44(%ebp)
	jne	.L283
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L283
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jae	.L320
	movl	8(%ebp), %eax
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
	je	.L291
	movl	$8, -68(%ebp)
	jmp	.L293
.L291:
	movl	$4, -68(%ebp)
.L293:
	movl	-68(%ebp), %eax
	cmpl	%eax, -72(%ebp)
	jg	.L283
	.loc 1 595 0
	jmp	.L320
.L283:
	.loc 1 597 0
	cmpl	$76, -44(%ebp)
	je	.L295
	cmpl	$73, -44(%ebp)
	jne	.L297
.L295:
	.loc 1 599 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 600 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -44(%ebp)
.L297:
	.loc 1 603 0
	cmpl	$71, -44(%ebp)
	jne	.L298
.LBB27:
	.loc 1 605 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 607 0
	cmpl	$175, -28(%ebp)
	jle	.L300
	movl	-28(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -64(%ebp)
	jmp	.L302
.L300:
	movl	-28(%ebp), %edx
	movl	%edx, -64(%ebp)
.L302:
	movl	-64(%ebp), %ecx
	movl	%ecx, -24(%ebp)
	.loc 1 609 0
	cmpl	$0, -24(%ebp)
	js	.L303
.LBB28:
	.loc 1 611 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -20(%ebp)
	.loc 1 612 0
	jmp	.L305
.L306:
	.loc 1 613 0
	movl	-20(%ebp), %eax
	addl	-24(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	referenced_regs@GOTOFF(%ebx,%eax,8), %edx
	movl	4+referenced_regs@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-20(%ebp), %eax
	addl	-24(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L321
	movl	%esi, %edi
	xorl	%esi, %esi
.L321:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-60(%ebp), %ecx
	movl	%eax, referenced_regs@GOTOFF(%ebx,%ecx,8)
	movl	%edx, 4+referenced_regs@GOTOFF(%ebx,%ecx,8)
.L305:
	.loc 1 612 0
	cmpl	$0, -20(%ebp)
	setg	%al
	subl	$1, -20(%ebp)
	testb	%al, %al
	jne	.L306
	jmp	.L320
.L303:
.LBE28:
	.loc 1 618 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L309
	.loc 1 619 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	mark_referenced_regs
	jmp	.L320
.L309:
	.loc 1 620 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L320
	.loc 1 621 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	mark_referenced_regs
	.loc 1 622 0
	jmp	.L320
.L298:
.LBE27:
	.loc 1 625 0
	movl	-44(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -40(%ebp)
	.loc 1 626 0
	movl	-44(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	jmp	.L312
.L313:
	.loc 1 628 0
	movl	-36(%ebp), %eax
	addl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L314
	.loc 1 629 0
	movl	-36(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	movl	%eax, (%esp)
	call	mark_referenced_regs
	jmp	.L316
.L314:
	.loc 1 630 0
	movl	-36(%ebp), %eax
	addl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L316
	.loc 1 631 0
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	jmp	.L318
.L319:
	.loc 1 632 0
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-32(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	mark_referenced_regs
	.loc 1 631 0
	subl	$1, -32(%ebp)
.L318:
	cmpl	$0, -32(%ebp)
	jns	.L319
.L316:
	.loc 1 626 0
	subl	$1, -36(%ebp)
.L312:
	cmpl	$0, -36(%ebp)
	jns	.L313
.L320:
	.loc 1 634 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	mark_referenced_regs, .-mark_referenced_regs
	.section	.rodata
	.type	__FUNCTION__.11595, @object
	.size	__FUNCTION__.11595, 15
__FUNCTION__.11595:
	.string	"insert_restore"
	.text
	.type	insert_restore, @function
insert_restore:
.LFB22:
	.loc 1 656 0
	pushl	%ebp
.LCFI39:
	movl	%esp, %ebp
.LCFI40:
	pushl	%edi
.LCFI41:
	pushl	%esi
.LCFI42:
	pushl	%ebx
.LCFI43:
	subl	$92, %esp
.LCFI44:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 658 0
	movl	$0, -44(%ebp)
	.loc 1 660 0
	movl	$0, -36(%ebp)
	.loc 1 671 0
	movl	16(%ebp), %edx
	leal	regno_save_mem@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L323
	.loc 1 672 0
	leal	__FUNCTION__.11595@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$672, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L323:
	.loc 1 678 0
	movl	20(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L325
.L326:
.LBB29:
	.loc 1 681 0
	movl	$1, -20(%ebp)
	.loc 1 683 0
	movl	16(%ebp), %edx
	movl	-52(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	regno_save_mem@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	je	.L327
	.loc 1 686 0
	movl	$0, -24(%ebp)
	jmp	.L329
.L330:
	.loc 1 687 0
	movl	-24(%ebp), %eax
	addl	16(%ebp), %eax
	shrl	$6, %eax
	movl	hard_regs_saved@GOTOFF(%ebx,%eax,8), %esi
	movl	4+hard_regs_saved@GOTOFF(%ebx,%eax,8), %edi
	movl	-24(%ebp), %eax
	addl	16(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L345
	movl	%edx, %eax
	xorl	%edx, %edx
.L345:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L331
	.loc 1 689 0
	movl	$0, -20(%ebp)
	.loc 1 690 0
	jmp	.L333
.L331:
	.loc 1 686 0
	addl	$1, -24(%ebp)
.L329:
	movl	-24(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jl	.L330
.L333:
	.loc 1 693 0
	cmpl	$0, -20(%ebp)
	je	.L327
	.loc 1 696 0
	movl	-52(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 697 0
	jmp	.L335
.L327:
.LBE29:
	.loc 1 678 0
	subl	$1, -52(%ebp)
.L325:
	cmpl	$0, -52(%ebp)
	jg	.L326
.L335:
	.loc 1 700 0
	movl	16(%ebp), %edx
	movl	-36(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	regno_save_mem@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 701 0
	movl	16(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L336
	movl	16(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	je	.L336
	movl	16(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	cmpl	-36(%ebp), %eax
	jne	.L336
	.loc 1 704 0
	movl	16(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -28(%ebp)
.L336:
	.loc 1 705 0
	movl	16(%ebp), %edx
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -44(%ebp)
	.loc 1 708 0
	movl	16(%ebp), %ecx
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	imull	$54, %ecx, %eax
	addl	%edx, %eax
	movl	reg_restore_code@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -40(%ebp)
	.loc 1 709 0
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_one_insn
	movl	%eax, -32(%ebp)
	.loc 1 712 0
	movl	$0, -48(%ebp)
	jmp	.L340
.L341:
	.loc 1 714 0
	movl	-48(%ebp), %eax
	addl	16(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -76(%ebp)
	movl	hard_regs_saved@GOTOFF(%ebx,%eax,8), %edx
	movl	4+hard_regs_saved@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -72(%ebp)
	movl	%ecx, -68(%ebp)
	movl	-48(%ebp), %eax
	addl	16(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L344
	movl	%eax, %edx
	xorl	%eax, %eax
.L344:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-72(%ebp), %eax
	andl	%esi, %eax
	movl	-68(%ebp), %edx
	andl	%edi, %edx
	movl	-76(%ebp), %ecx
	movl	%eax, hard_regs_saved@GOTOFF(%ebx,%ecx,8)
	movl	%edx, 4+hard_regs_saved@GOTOFF(%ebx,%ecx,8)
	.loc 1 715 0
	movl	-48(%ebp), %eax
	addl	16(%ebp), %eax
	movl	-32(%ebp), %edx
	addl	$36, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 716 0
	movl	n_regs_saved@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, n_regs_saved@GOTOFF(%ebx)
	.loc 1 712 0
	addl	$1, -48(%ebp)
.L340:
	movl	-48(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jl	.L341
	.loc 1 720 0
	movl	-36(%ebp), %eax
	subl	$1, %eax
	.loc 1 721 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	insert_restore, .-insert_restore
	.section	.rodata
	.type	__FUNCTION__.11701, @object
	.size	__FUNCTION__.11701, 12
__FUNCTION__.11701:
	.string	"insert_save"
	.text
	.type	insert_save, @function
insert_save:
.LFB23:
	.loc 1 732 0
	pushl	%ebp
.LCFI45:
	movl	%esp, %ebp
.LCFI46:
	pushl	%edi
.LCFI47:
	pushl	%esi
.LCFI48:
	pushl	%ebx
.LCFI49:
	subl	$108, %esp
.LCFI50:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 735 0
	movl	$0, -44(%ebp)
	.loc 1 737 0
	movl	$0, -36(%ebp)
	.loc 1 748 0
	movl	16(%ebp), %edx
	leal	regno_save_mem@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L347
	.loc 1 749 0
	leal	__FUNCTION__.11701@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$749, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L347:
	.loc 1 755 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L349
	movl	$8, -84(%ebp)
	jmp	.L351
.L349:
	movl	$4, -84(%ebp)
.L351:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L352
	movl	$8, -80(%ebp)
	jmp	.L354
.L352:
	movl	$4, -80(%ebp)
.L354:
	movl	-84(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-80(%ebp)
	movl	%eax, -52(%ebp)
	jmp	.L355
.L356:
.LBB30:
	.loc 1 758 0
	movl	$1, -20(%ebp)
	.loc 1 759 0
	movl	16(%ebp), %edx
	movl	-52(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	regno_save_mem@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	je	.L357
	.loc 1 762 0
	movl	$0, -24(%ebp)
	jmp	.L359
.L360:
	.loc 1 763 0
	movl	-24(%ebp), %eax
	addl	16(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	20(%ebp), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	-24(%ebp), %eax
	addl	16(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L375
	movl	%edx, %eax
	xorl	%edx, %edx
.L375:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L361
	.loc 1 765 0
	movl	$0, -20(%ebp)
	.loc 1 766 0
	jmp	.L363
.L361:
	.loc 1 762 0
	addl	$1, -24(%ebp)
.L359:
	movl	-24(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jl	.L360
.L363:
	.loc 1 769 0
	cmpl	$0, -20(%ebp)
	je	.L357
	.loc 1 772 0
	movl	-52(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 773 0
	jmp	.L365
.L357:
.LBE30:
	.loc 1 755 0
	subl	$1, -52(%ebp)
.L355:
	cmpl	$0, -52(%ebp)
	jg	.L356
.L365:
	.loc 1 776 0
	movl	16(%ebp), %edx
	movl	-36(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	regno_save_mem@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 777 0
	movl	16(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L366
	movl	16(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	je	.L366
	movl	16(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	cmpl	-36(%ebp), %eax
	jne	.L366
	.loc 1 780 0
	movl	16(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -28(%ebp)
.L366:
	.loc 1 781 0
	movl	16(%ebp), %edx
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -44(%ebp)
	.loc 1 784 0
	movl	16(%ebp), %ecx
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	imull	$54, %ecx, %eax
	addl	%edx, %eax
	movl	reg_save_code@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -40(%ebp)
	.loc 1 785 0
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_one_insn
	movl	%eax, -32(%ebp)
	.loc 1 788 0
	movl	$0, -48(%ebp)
	jmp	.L370
.L371:
	.loc 1 790 0
	movl	16(%ebp), %eax
	addl	-48(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -76(%ebp)
	movl	hard_regs_saved@GOTOFF(%ebx,%eax,8), %edx
	movl	4+hard_regs_saved@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -72(%ebp)
	movl	%ecx, -68(%ebp)
	movl	16(%ebp), %eax
	addl	-48(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L374
	movl	%esi, %edi
	xorl	%esi, %esi
.L374:
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	-76(%ebp), %ecx
	movl	%eax, hard_regs_saved@GOTOFF(%ebx,%ecx,8)
	movl	%edx, 4+hard_regs_saved@GOTOFF(%ebx,%ecx,8)
	.loc 1 791 0
	movl	16(%ebp), %eax
	addl	-48(%ebp), %eax
	movl	-32(%ebp), %edx
	addl	$36, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 792 0
	movl	n_regs_saved@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, n_regs_saved@GOTOFF(%ebx)
	.loc 1 788 0
	addl	$1, -48(%ebp)
.L370:
	movl	-48(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jb	.L371
	.loc 1 796 0
	movl	-36(%ebp), %eax
	subl	$1, %eax
	.loc 1 797 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE23:
	.size	insert_save, .-insert_save
	.section	.rodata
	.type	__FUNCTION__.11820, @object
	.size	__FUNCTION__.11820, 16
__FUNCTION__.11820:
	.string	"insert_one_insn"
	.text
	.type	insert_one_insn, @function
insert_one_insn:
.LFB24:
	.loc 1 806 0
	pushl	%ebp
.LCFI51:
	movl	%esp, %ebp
.LCFI52:
	pushl	%ebx
.LCFI53:
	subl	$52, %esp
.LCFI54:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 807 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 823 0
	call	new_insn_chain@PLT
	movl	%eax, -24(%ebp)
	.loc 1 824 0
	cmpl	$0, 12(%ebp)
	je	.L377
.LBB31:
	.loc 1 828 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 829 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L379
	.loc 1 830 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L381
.L379:
	.loc 1 832 0
	movl	reload_insn_chain@GOT(%ebx), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
.L381:
	.loc 1 834 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 835 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 836 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 839 0
	movl	8(%ebp), %eax
	addl	$20, %eax
	movl	-24(%ebp), %edx
	addl	$20, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_copy@PLT
	.loc 1 841 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	68(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L382
.L383:
	.loc 1 843 0
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$1, %al
	jne	.L384
.LBB32:
	.loc 1 845 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 848 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L386
	.loc 1 849 0
	leal	__FUNCTION__.11820@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$849, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L386:
	.loc 1 851 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 852 0
	cmpl	$175, -12(%ebp)
	jle	.L388
	.loc 1 853 0
	movl	-12(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -12(%ebp)
.L388:
	.loc 1 854 0
	cmpl	$0, -12(%ebp)
	js	.L384
	.loc 1 856 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	.loc 1 857 0
	jmp	.L391
.L392:
	.loc 1 858 0
	movl	-8(%ebp), %eax
	addl	-12(%ebp), %eax
	movl	-24(%ebp), %edx
	addl	$20, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 857 0
	subl	$1, -8(%ebp)
.L391:
	cmpl	$0, -8(%ebp)
	jns	.L392
.L384:
.LBE32:
	.loc 1 841 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L382:
	cmpl	$0, -20(%ebp)
	jne	.L383
	.loc 1 861 0
	movl	-24(%ebp), %eax
	addl	$36, %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 862 0
	movl	8(%ebp), %eax
	movl	16(%eax), %ecx
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jne	.L396
	.loc 1 863 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%edx,%eax,4), %edx
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%edx)
	jmp	.L396
.L377:
.LBE31:
	.loc 1 867 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 868 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L397
	.loc 1 869 0
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%edx)
.L397:
	.loc 1 870 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 871 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 872 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 875 0
	movl	8(%ebp), %eax
	addl	$20, %eax
	movl	-24(%ebp), %edx
	addl	$20, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_copy@PLT
	.loc 1 879 0
	movl	-24(%ebp), %edx
	addl	$20, %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	44(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	add_stored_regs@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	note_stores@PLT
	.loc 1 881 0
	movl	-24(%ebp), %eax
	addl	$36, %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 882 0
	movl	8(%ebp), %eax
	movl	16(%eax), %ecx
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %ecx
	jne	.L396
	.loc 1 883 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%edx,%eax,4), %edx
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%edx)
.L396:
	.loc 1 885 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 886 0
	movl	-24(%ebp), %edx
	movzbl	234(%edx), %eax
	orl	$8, %eax
	movb	%al, 234(%edx)
	.loc 1 888 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 52(%edx)
	.loc 1 889 0
	movl	-24(%ebp), %eax
	.loc 1 890 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	insert_one_insn, .-insert_one_insn
	.local	regno_save_mode
	.comm	regno_save_mode,2112,32
	.local	regno_save_mem
	.comm	regno_save_mem,2112,32
	.local	reg_save_code
	.comm	reg_save_code,38016,32
	.local	reg_restore_code
	.comm	reg_restore_code,38016,32
	.local	hard_regs_saved
	.comm	hard_regs_saved,24,8
	.local	n_regs_saved
	.comm	n_regs_saved,4,4
	.local	referenced_regs
	.comm	referenced_regs,24,8
	.local	this_insn_sets
	.comm	this_insn_sets,24,8
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
	.long	.LCFI15-.LCFI11
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI16-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI21-.LCFI17
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
	.long	.LCFI22-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI27-.LCFI23
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
	.long	.LCFI28-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI32-.LCFI29
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
	.long	.LCFI33-.LFB21
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
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI39-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI44-.LCFI40
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
	.long	.LCFI45-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI50-.LCFI46
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
	.long	.LCFI51-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI52-.LCFI51
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI54-.LCFI52
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE18:
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/machmode.h"
	.file 5 "../../../kgccfe/gnu/bitmap.h"
	.file 6 "../../../kgccfe/gnu/basic-block.h"
	.file 7 "../../../kgccfe/gnu/sbitmap.h"
	.file 8 "../../../kgccfe/gnu/hard-reg-set.h"
	.file 9 "../../../kgccfe/gnu/reload.h"
	.file 10 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 11 "../../../kgccfe/gnu/varray.h"
	.file 12 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 13 "../../../kgccfe/gnu/regs.h"
	.file 14 "../../../kgccfe/gnu/function.h"
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
	.long	.LCFI28-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI28-.Ltext0
	.long	.LCFI29-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI29-.Ltext0
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
	.long	.LCFI51-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI51-.Ltext0
	.long	.LCFI52-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI52-.Ltext0
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x3b64
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/caller-save.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xab
	.uleb128 0x3
	.byte	0x4
	.long	0xb1
	.uleb128 0x4
	.long	0x1a0
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.long	.LASF0
	.byte	0x3
	.byte	0x8a
	.long	0x62c
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
	.long	0x3e3
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
	.long	0x2f2
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
	.long	0x2f2
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
	.long	0x2f2
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
	.long	0x2f2
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
	.long	0x2f2
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
	.long	0x2f2
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
	.long	0x2f2
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
	.long	0x2f2
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
	.long	0x1248
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
	.byte	0xf8
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x1258
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
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x20c
	.uleb128 0x9
	.long	0x211
	.uleb128 0xa
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	0x2f2
	.string	"mips_args"
	.byte	0x40
	.byte	0xa
	.value	0xaaa
	.uleb128 0xc
	.string	"gp_reg_found"
	.byte	0xa
	.value	0xaad
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"arg_number"
	.byte	0xa
	.value	0xab0
	.long	0x2f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"num_gprs"
	.byte	0xa
	.value	0xab5
	.long	0x2f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"num_fprs"
	.byte	0xa
	.value	0xab8
	.long	0x2f2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"stack_words"
	.byte	0xa
	.value	0xabb
	.long	0x2f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"fp_code"
	.byte	0xa
	.value	0xac8
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"prototype"
	.byte	0xa
	.value	0xacb
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"num_adjusts"
	.byte	0xa
	.value	0xad3
	.long	0x2f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"adjust"
	.byte	0xa
	.value	0xad4
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xd
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xe
	.long	0x309
	.long	0xa0
	.uleb128 0xf
	.long	0x309
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x10
	.string	"CUMULATIVE_ARGS"
	.byte	0xa
	.value	0xad5
	.long	0x220
	.uleb128 0x2
	.string	"size_t"
	.byte	0xc
	.byte	0xd6
	.long	0x2f2
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
	.long	0x211
	.uleb128 0x3
	.byte	0x4
	.long	0x336
	.uleb128 0xe
	.long	0x3e3
	.long	0x211
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x62c
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
	.uleb128 0x12
	.long	0xdfb
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
	.long	0xed5
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x6
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x2f2
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
	.long	0x2f2
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
	.long	0x2f2
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
	.long	0x2f2
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
	.long	0x2f2
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
	.long	0x2f2
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
	.long	0x2f2
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
	.long	0x2f2
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
	.long	0xdfb
	.uleb128 0x15
	.long	0xf49
	.long	.LASF2
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x7
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x38e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.long	.LASF3
	.byte	0x3
	.byte	0x6b
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
	.byte	0x3
	.byte	0x6c
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x3
	.byte	0x6d
	.long	0x2f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x17
	.long	.LASF2
	.byte	0x3
	.byte	0x6e
	.long	0xef0
	.uleb128 0x18
	.long	0x1026
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x19
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x38e
	.uleb128 0x19
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x219
	.uleb128 0x19
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x2f2
	.uleb128 0x19
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x206
	.uleb128 0x19
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0xa0
	.uleb128 0x19
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x1a0
	.uleb128 0x19
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x3e3
	.uleb128 0x19
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0xed5
	.uleb128 0x19
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x103a
	.uleb128 0x19
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x10a2
	.uleb128 0x19
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e8
	.uleb128 0x19
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x122d
	.uleb128 0x19
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x1233
	.byte	0x0
	.uleb128 0x1a
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1026
	.uleb128 0x4
	.long	0x10a2
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x7
	.string	"first"
	.byte	0x5
	.byte	0x3d
	.long	0x18dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x18dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x2f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1040
	.uleb128 0x4
	.long	0x122d
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x7
	.string	"head"
	.byte	0x6
	.byte	0xb5
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0x6
	.byte	0xb5
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0x6
	.byte	0xb8
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0x6
	.byte	0xb9
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0x6
	.byte	0xbc
	.long	0x1a55
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0x6
	.byte	0xbc
	.long	0x1a55
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0x6
	.byte	0xc1
	.long	0x1985
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0x6
	.byte	0xc5
	.long	0x1985
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0x6
	.byte	0xcb
	.long	0x1985
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0x6
	.byte	0xcd
	.long	0x1985
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0x6
	.byte	0xd0
	.long	0x3c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"index"
	.byte	0x6
	.byte	0xd3
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x122d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x122d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0x6
	.byte	0xd9
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0x6
	.byte	0xdc
	.long	0x1cd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0x6
	.byte	0xdf
	.long	0x1993
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0x6
	.byte	0xe2
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"flags"
	.byte	0x6
	.byte	0xe5
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x10a8
	.uleb128 0x3
	.byte	0x4
	.long	0xf49
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0xf54
	.uleb128 0xe
	.long	0x1258
	.long	0x1239
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1268
	.long	0xa0
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xa0
	.uleb128 0x4
	.long	0x12a4
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xb
	.byte	0x24
	.uleb128 0x7
	.string	"rtx"
	.byte	0xb
	.byte	0x32
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"age"
	.byte	0xb
	.byte	0x36
	.long	0x2f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x12
	.long	0x143f
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xb
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
	.long	0x153b
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xb
	.byte	0x55
	.uleb128 0x19
	.string	"c"
	.byte	0xb
	.byte	0x56
	.long	0x3d3
	.uleb128 0x19
	.string	"uc"
	.byte	0xb
	.byte	0x58
	.long	0x153b
	.uleb128 0x19
	.string	"s"
	.byte	0xb
	.byte	0x5a
	.long	0x154b
	.uleb128 0x19
	.string	"us"
	.byte	0xb
	.byte	0x5c
	.long	0x155b
	.uleb128 0x19
	.string	"i"
	.byte	0xb
	.byte	0x5e
	.long	0x156b
	.uleb128 0x19
	.string	"u"
	.byte	0xb
	.byte	0x60
	.long	0x157b
	.uleb128 0x19
	.string	"l"
	.byte	0xb
	.byte	0x62
	.long	0x158b
	.uleb128 0x19
	.string	"ul"
	.byte	0xb
	.byte	0x64
	.long	0x159b
	.uleb128 0x19
	.string	"hint"
	.byte	0xb
	.byte	0x66
	.long	0x15ab
	.uleb128 0x19
	.string	"uhint"
	.byte	0xb
	.byte	0x68
	.long	0x15bb
	.uleb128 0x19
	.string	"generic"
	.byte	0xb
	.byte	0x6a
	.long	0x15cb
	.uleb128 0x19
	.string	"cptr"
	.byte	0xb
	.byte	0x6c
	.long	0x15db
	.uleb128 0x19
	.string	"rtx"
	.byte	0xb
	.byte	0x6e
	.long	0x15eb
	.uleb128 0x19
	.string	"rtvec"
	.byte	0xb
	.byte	0x70
	.long	0x15fb
	.uleb128 0x19
	.string	"tree"
	.byte	0xb
	.byte	0x72
	.long	0x160b
	.uleb128 0x19
	.string	"bitmap"
	.byte	0xb
	.byte	0x74
	.long	0x161b
	.uleb128 0x19
	.string	"reg"
	.byte	0xb
	.byte	0x76
	.long	0x162b
	.uleb128 0x19
	.string	"const_equiv"
	.byte	0xb
	.byte	0x78
	.long	0x1727
	.uleb128 0x19
	.string	"bb"
	.byte	0xb
	.byte	0x7a
	.long	0x1737
	.uleb128 0x19
	.string	"te"
	.byte	0xb
	.byte	0x7c
	.long	0x1747
	.byte	0x0
	.uleb128 0xe
	.long	0x154b
	.long	0x336
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x155b
	.long	0x381
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x156b
	.long	0x347
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x157b
	.long	0x219
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x158b
	.long	0x2f2
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x159b
	.long	0x3b9
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x15ab
	.long	0x35d
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x15bb
	.long	0x38e
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x15cb
	.long	0x39f
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x15db
	.long	0x3c5
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x15eb
	.long	0x3c7
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x15fb
	.long	0xab
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x160b
	.long	0x1ad
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x161b
	.long	0x1f4
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x162b
	.long	0x10a2
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x163b
	.long	0x1721
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x1721
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0xb
	.byte	0x76
	.uleb128 0x7
	.string	"first_uid"
	.byte	0xd
	.byte	0x31
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last_uid"
	.byte	0xd
	.byte	0x32
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"last_note_uid"
	.byte	0xd
	.byte	0x33
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"sets"
	.byte	0xd
	.byte	0x36
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"refs"
	.byte	0xd
	.byte	0x39
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"freq"
	.byte	0xd
	.byte	0x3a
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"deaths"
	.byte	0xd
	.byte	0x3b
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"live_length"
	.byte	0xd
	.byte	0x3c
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"calls_crossed"
	.byte	0xd
	.byte	0x3d
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.long	.LASF4
	.byte	0xd
	.byte	0x3e
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"changes_mode"
	.byte	0xd
	.byte	0x3f
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x163b
	.uleb128 0xe
	.long	0x1737
	.long	0x126e
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1747
	.long	0x122d
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1757
	.long	0x1762
	.uleb128 0xf
	.long	0x309
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1757
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xb
	.byte	0x7e
	.long	0x143f
	.uleb128 0x4
	.long	0x17f0
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xb
	.byte	0x81
	.uleb128 0x7
	.string	"num_elements"
	.byte	0xb
	.byte	0x82
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elements_used"
	.byte	0xb
	.byte	0x83
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type"
	.byte	0xb
	.byte	0x85
	.long	0x12a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"name"
	.byte	0xb
	.byte	0x86
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"data"
	.byte	0xb
	.byte	0x87
	.long	0x1768
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xb
	.byte	0x8a
	.long	0x1803
	.uleb128 0x3
	.byte	0x4
	.long	0x177b
	.uleb128 0x2
	.string	"HARD_REG_ELT_TYPE"
	.byte	0x8
	.byte	0x29
	.long	0x39f
	.uleb128 0x2
	.string	"HARD_REG_SET"
	.byte	0x8
	.byte	0x34
	.long	0x1836
	.uleb128 0xe
	.long	0x1846
	.long	0x1809
	.uleb128 0xf
	.long	0x309
	.byte	0x2
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x35d
	.uleb128 0x4
	.long	0x18b0
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x16
	.long	.LASF5
	.byte	0x5
	.byte	0x35
	.long	0x18b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x5
	.byte	0x36
	.long	0x18b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x2f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x18b6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1859
	.uleb128 0xe
	.long	0x18c6
	.long	0x1846
	.uleb128 0xf
	.long	0x309
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x1859
	.uleb128 0x3
	.byte	0x4
	.long	0x18c6
	.uleb128 0x2
	.string	"bitmap_head"
	.byte	0x5
	.byte	0x42
	.long	0x1040
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x10a2
	.uleb128 0x4
	.long	0x195d
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x7
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0x7
	.byte	0x21
	.long	0x2f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x2f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x2f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0x7
	.byte	0x24
	.long	0x15bb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x7
	.byte	0x25
	.long	0x196c
	.uleb128 0x3
	.byte	0x4
	.long	0x1903
	.uleb128 0x2
	.string	"regset_head"
	.byte	0x6
	.byte	0x20
	.long	0x18e2
	.uleb128 0x2
	.string	"regset"
	.byte	0x6
	.byte	0x22
	.long	0x18f5
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x6
	.byte	0x75
	.long	0x38e
	.uleb128 0x4
	.long	0x1a4f
	.string	"edge_def"
	.byte	0x28
	.byte	0x6
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0x6
	.byte	0x7a
	.long	0x1a4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0x6
	.byte	0x7a
	.long	0x1a4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0x6
	.byte	0x7d
	.long	0x122d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"dest"
	.byte	0x6
	.byte	0x7d
	.long	0x122d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"insns"
	.byte	0x6
	.byte	0x80
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0x6
	.byte	0x83
	.long	0x3c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"flags"
	.byte	0x6
	.byte	0x85
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0x6
	.byte	0x86
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"count"
	.byte	0x6
	.byte	0x87
	.long	0x1993
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x19a4
	.uleb128 0x2
	.string	"edge"
	.byte	0x6
	.byte	0x89
	.long	0x1a4f
	.uleb128 0x4
	.long	0x1cd0
	.string	"loop"
	.byte	0x80
	.byte	0x6
	.byte	0xdc
	.uleb128 0xc
	.string	"num"
	.byte	0x6
	.value	0x176
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"header"
	.byte	0x6
	.value	0x179
	.long	0x1cd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"latch"
	.byte	0x6
	.value	0x17c
	.long	0x1cd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"pre_header"
	.byte	0x6
	.value	0x17f
	.long	0x1cd6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"pre_header_edges"
	.byte	0x6
	.value	0x184
	.long	0x1ce1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"num_pre_header_edges"
	.byte	0x6
	.value	0x187
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"first"
	.byte	0x6
	.value	0x18b
	.long	0x1cd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"last"
	.byte	0x6
	.value	0x18f
	.long	0x1cd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"nodes"
	.byte	0x6
	.value	0x192
	.long	0x195d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"num_nodes"
	.byte	0x6
	.value	0x195
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.string	"entry_edges"
	.byte	0x6
	.value	0x198
	.long	0x1ce1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"num_entries"
	.byte	0x6
	.value	0x19b
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"exit_edges"
	.byte	0x6
	.value	0x19e
	.long	0x1ce1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"num_exits"
	.byte	0x6
	.value	0x1a1
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.string	"exits_doms"
	.byte	0x6
	.value	0x1a4
	.long	0x195d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.string	"depth"
	.byte	0x6
	.value	0x1a7
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.string	"pred"
	.byte	0x6
	.value	0x1aa
	.long	0x1ce7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.string	"level"
	.byte	0x6
	.value	0x1ae
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.string	"outer"
	.byte	0x6
	.value	0x1b1
	.long	0x1cd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.string	"inner"
	.byte	0x6
	.value	0x1b4
	.long	0x1cd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1b
	.long	.LASF5
	.byte	0x6
	.value	0x1b7
	.long	0x1cd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.string	"invalid"
	.byte	0x6
	.value	0x1ba
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.string	"aux"
	.byte	0x6
	.value	0x1bd
	.long	0x3c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.string	"vtop"
	.byte	0x6
	.value	0x1c3
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.string	"cont"
	.byte	0x6
	.value	0x1c7
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.string	"start"
	.byte	0x6
	.value	0x1ca
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xc
	.string	"end"
	.byte	0x6
	.value	0x1cd
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.string	"top"
	.byte	0x6
	.value	0x1d1
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xc
	.string	"scan_start"
	.byte	0x6
	.value	0x1d4
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xc
	.string	"sink"
	.byte	0x6
	.value	0x1d7
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xc
	.string	"exit_labels"
	.byte	0x6
	.value	0x1e2
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xc
	.string	"exit_count"
	.byte	0x6
	.value	0x1e6
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1a61
	.uleb128 0x17
	.long	.LASF4
	.byte	0x6
	.byte	0xe6
	.long	0x122d
	.uleb128 0x3
	.byte	0x4
	.long	0x1a55
	.uleb128 0x3
	.byte	0x4
	.long	0x1cd0
	.uleb128 0x4
	.long	0x1d1c
	.string	"needs"
	.byte	0x96
	.byte	0x9
	.byte	0xc4
	.uleb128 0x7
	.string	"regs"
	.byte	0x9
	.byte	0xc6
	.long	0x1d1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"groups"
	.byte	0x9
	.byte	0xc7
	.long	0x1d32
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.byte	0x0
	.uleb128 0xe
	.long	0x1d32
	.long	0x381
	.uleb128 0xf
	.long	0x309
	.byte	0x1
	.uleb128 0xf
	.long	0x309
	.byte	0x18
	.byte	0x0
	.uleb128 0xe
	.long	0x1d42
	.long	0x381
	.uleb128 0xf
	.long	0x309
	.byte	0x18
	.byte	0x0
	.uleb128 0x4
	.long	0x1e9e
	.string	"insn_chain"
	.byte	0xec
	.byte	0x9
	.byte	0xcf
	.uleb128 0x16
	.long	.LASF5
	.byte	0x9
	.byte	0xd1
	.long	0x1e9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x9
	.byte	0xd1
	.long	0x1e9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"next_need_reload"
	.byte	0x9
	.byte	0xd5
	.long	0x1e9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"block"
	.byte	0x9
	.byte	0xd8
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"insn"
	.byte	0x9
	.byte	0xda
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"live_throughout"
	.byte	0x9
	.byte	0xdd
	.long	0x1972
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"dead_or_set"
	.byte	0x9
	.byte	0xde
	.long	0x1972
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"rld"
	.byte	0x9
	.byte	0xe1
	.long	0x1ead
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"n_reloads"
	.byte	0x9
	.byte	0xe2
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"used_spill_regs"
	.byte	0x9
	.byte	0xe5
	.long	0x1822
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"need"
	.byte	0x9
	.byte	0xe8
	.long	0x1ced
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"need_reload"
	.byte	0x9
	.byte	0xeb
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x6
	.string	"need_operand_change"
	.byte	0x9
	.byte	0xee
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x6
	.string	"need_elim"
	.byte	0x9
	.byte	0xf0
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x6
	.string	"is_caller_save_insn"
	.byte	0x9
	.byte	0xf2
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1d42
	.uleb128 0x1a
	.string	"reload"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1ea4
	.uleb128 0x4
	.long	0x1f18
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xe
	.byte	0x17
	.uleb128 0x7
	.string	"modified"
	.byte	0xe
	.byte	0x18
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"promoted_mode"
	.byte	0xe
	.byte	0x19
	.long	0x3e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"unsignedp"
	.byte	0xe
	.byte	0x1a
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.long	.LASF5
	.byte	0xe
	.byte	0x1b
	.long	0x1f18
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1eb3
	.uleb128 0x15
	.long	0x1f66
	.long	.LASF6
	.byte	0x10
	.byte	0xe
	.byte	0x24
	.uleb128 0x7
	.string	"first"
	.byte	0xe
	.byte	0x26
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last"
	.byte	0xe
	.byte	0x27
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.long	.LASF7
	.byte	0xe
	.byte	0x28
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.long	.LASF5
	.byte	0xe
	.byte	0x29
	.long	0x1f66
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f1e
	.uleb128 0x4
	.long	0x20bb
	.string	"emit_status"
	.byte	0x34
	.byte	0xe
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0xe
	.byte	0x3a
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0xe
	.byte	0x3d
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_insn"
	.byte	0xe
	.byte	0x44
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_insn"
	.byte	0xe
	.byte	0x45
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.long	.LASF7
	.byte	0xe
	.byte	0x4a
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.long	.LASF6
	.byte	0xe
	.byte	0x50
	.long	0x1f66
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0xe
	.byte	0x54
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0xe
	.byte	0x58
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0xe
	.byte	0x59
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0xe
	.byte	0x5f
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"regno_pointer_align"
	.byte	0xe
	.byte	0x65
	.long	0x3cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0xe
	.byte	0x69
	.long	0x20bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"x_regno_reg_rtx"
	.byte	0xe
	.byte	0x70
	.long	0x1268
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e8
	.uleb128 0x4
	.long	0x21a1
	.string	"expr_status"
	.byte	0x1c
	.byte	0xe
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0xe
	.byte	0x80
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0xe
	.byte	0x91
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0xe
	.byte	0x97
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_saveregs_value"
	.byte	0xe
	.byte	0x9c
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_apply_args_value"
	.byte	0xe
	.byte	0x9f
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x_forced_labels"
	.byte	0xe
	.byte	0xa2
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_pending_chain"
	.byte	0xe
	.byte	0xa5
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1c
	.long	0x220b
	.long	.LASF8
	.byte	0x4
	.byte	0xe
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
	.uleb128 0x1d
	.long	0x2bca
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x1f
	.uleb128 0x7
	.string	"eh"
	.byte	0xe
	.byte	0xb5
	.long	0x2bd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0xe
	.byte	0xb6
	.long	0x2bea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0xe
	.byte	0xb7
	.long	0x2bf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0xe
	.byte	0xb8
	.long	0x2bf6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0xe
	.byte	0xb9
	.long	0x2c0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"name"
	.byte	0xe
	.byte	0xbe
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"decl"
	.byte	0xe
	.byte	0xc1
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"outer"
	.byte	0xe
	.byte	0xc4
	.long	0x2c12
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0xe
	.byte	0xc9
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"args_size"
	.byte	0xe
	.byte	0xce
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0xe
	.byte	0xd3
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0xe
	.byte	0xd7
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"arg_offset_rtx"
	.byte	0xe
	.byte	0xdb
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"args_info"
	.byte	0xe
	.byte	0xdf
	.long	0x310
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"return_rtx"
	.byte	0xe
	.byte	0xe5
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"internal_arg_pointer"
	.byte	0xe
	.byte	0xe8
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"cannot_inline"
	.byte	0xe
	.byte	0xec
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0xe
	.byte	0xf0
	.long	0x2c2f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0xe
	.byte	0xf3
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"x_nonlocal_labels"
	.byte	0xe
	.byte	0xf8
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xe
	.byte	0xfe
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xc
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xe
	.value	0x102
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xc
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xe
	.value	0x107
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xc
	.string	"x_cleanup_label"
	.byte	0xe
	.value	0x10d
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xc
	.string	"x_return_label"
	.byte	0xe
	.value	0x112
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xc
	.string	"computed_goto_common_label"
	.byte	0xe
	.value	0x115
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xc
	.string	"computed_goto_common_reg"
	.byte	0xe
	.value	0x116
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xc
	.string	"x_save_expr_regs"
	.byte	0xe
	.value	0x11a
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xc
	.string	"x_stack_slot_list"
	.byte	0xe
	.value	0x11e
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xc
	.string	"x_rtl_expr_chain"
	.byte	0xe
	.value	0x121
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xc
	.string	"x_tail_recursion_label"
	.byte	0xe
	.value	0x125
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xc
	.string	"x_tail_recursion_reentry"
	.byte	0xe
	.value	0x128
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xc
	.string	"x_arg_pointer_save_area"
	.byte	0xe
	.value	0x12e
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xc
	.string	"x_clobber_return_insn"
	.byte	0xe
	.value	0x133
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xc
	.string	"x_frame_offset"
	.byte	0xe
	.value	0x138
	.long	0x38e
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xc
	.string	"x_context_display"
	.byte	0xe
	.value	0x13d
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xc
	.string	"x_trampoline_list"
	.byte	0xe
	.value	0x146
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xc
	.string	"x_parm_birth_insn"
	.byte	0xe
	.value	0x149
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xc
	.string	"x_last_parm_insn"
	.byte	0xe
	.value	0x14d
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xc
	.string	"x_max_parm_reg"
	.byte	0xe
	.value	0x151
	.long	0x2f2
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xc
	.string	"x_parm_reg_stack_loc"
	.byte	0xe
	.value	0x157
	.long	0x1268
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xc
	.string	"x_temp_slots"
	.byte	0xe
	.value	0x15a
	.long	0x2c41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xc
	.string	"x_temp_slot_level"
	.byte	0xe
	.value	0x15d
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xc
	.string	"x_var_temp_slot_level"
	.byte	0xe
	.value	0x160
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xc
	.string	"x_target_temp_slot_level"
	.byte	0xe
	.value	0x166
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xc
	.string	"fixup_var_refs_queue"
	.byte	0xe
	.value	0x16a
	.long	0x1f18
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xc
	.string	"inlinable"
	.byte	0xe
	.value	0x16d
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xc
	.string	"no_debugging_symbols"
	.byte	0xe
	.value	0x16e
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xc
	.string	"original_arg_vector"
	.byte	0xe
	.value	0x16f
	.long	0x1a0
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xc
	.string	"original_decl_initial"
	.byte	0xe
	.value	0x170
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xc
	.string	"inl_last_parm_insn"
	.byte	0xe
	.value	0x173
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xc
	.string	"inl_max_label_num"
	.byte	0xe
	.value	0x175
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xc
	.string	"funcdef_no"
	.byte	0xe
	.value	0x178
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xc
	.string	"machine"
	.byte	0xe
	.value	0x17d
	.long	0x2c5a
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xc
	.string	"stack_alignment_needed"
	.byte	0xe
	.value	0x17f
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xc
	.string	"preferred_stack_boundary"
	.byte	0xe
	.value	0x181
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xc
	.string	"language"
	.byte	0xe
	.value	0x184
	.long	0x2c74
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xc
	.string	"epilogue_delay_list"
	.byte	0xe
	.value	0x18a
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1e
	.string	"returns_struct"
	.byte	0xe
	.value	0x190
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"returns_pcc_struct"
	.byte	0xe
	.value	0x194
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"returns_pointer"
	.byte	0xe
	.value	0x197
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"needs_context"
	.byte	0xe
	.value	0x19a
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_setjmp"
	.byte	0xe
	.value	0x19d
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_longjmp"
	.byte	0xe
	.value	0x1a0
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_alloca"
	.byte	0xe
	.value	0x1a4
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_eh_return"
	.byte	0xe
	.value	0x1a7
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_nonlocal_label"
	.byte	0xe
	.value	0x1ab
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_nonlocal_goto"
	.byte	0xe
	.value	0x1af
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"contains_functions"
	.byte	0xe
	.value	0x1b2
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_computed_jump"
	.byte	0xe
	.value	0x1b5
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"is_thunk"
	.byte	0xe
	.value	0x1ba
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"all_throwers_are_sibcalls"
	.byte	0xe
	.value	0x1c1
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"instrument_entry_exit"
	.byte	0xe
	.value	0x1c5
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"arc_profile"
	.byte	0xe
	.value	0x1c8
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"profile"
	.byte	0xe
	.value	0x1cb
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"limit_stack"
	.byte	0xe
	.value	0x1cf
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"stdarg"
	.byte	0xe
	.value	0x1d2
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"x_whole_function_mode_p"
	.byte	0xe
	.value	0x1d8
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xe
	.value	0x1e1
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_const_pool"
	.byte	0xe
	.value	0x1e4
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_pic_offset_table"
	.byte	0xe
	.value	0x1e7
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_eh_lsda"
	.byte	0xe
	.value	0x1ea
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"arg_pointer_save_area_init"
	.byte	0xe
	.value	0x1ed
	.long	0x2f2
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.long	.LASF8
	.byte	0xe
	.value	0x1fa
	.long	0x21a1
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xc
	.string	"max_jumptable_ents"
	.byte	0xe
	.value	0x1fe
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x1a
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2bca
	.uleb128 0x1a
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2bdc
	.uleb128 0x3
	.byte	0x4
	.long	0x20c1
	.uleb128 0x3
	.byte	0x4
	.long	0x1f6c
	.uleb128 0x1a
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2bfc
	.uleb128 0x3
	.byte	0x4
	.long	0x220b
	.uleb128 0x1a
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2c18
	.uleb128 0x1a
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2c35
	.uleb128 0x1a
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2c47
	.uleb128 0x1a
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2c60
	.uleb128 0x1f
	.long	0x2d99
	.byte	0x1
	.string	"init_caller_save"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x20
	.string	"addr_reg"
	.byte	0x1
	.byte	0x7b
	.long	0xa0
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x21
	.long	.LASF3
	.byte	0x1
	.byte	0x7c
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.string	"address"
	.byte	0x1
	.byte	0x7d
	.long	0xa0
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0x7e
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.byte	0x7e
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x20
	.string	"mode"
	.byte	0x1
	.byte	0x7f
	.long	0x3e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.string	"savepat"
	.byte	0x1
	.byte	0x80
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x20
	.string	"restpat"
	.byte	0x1
	.byte	0x80
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.string	"test_reg"
	.byte	0x1
	.byte	0x81
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.string	"test_mem"
	.byte	0x1
	.byte	0x81
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.string	"saveinsn"
	.byte	0x1
	.byte	0x82
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.string	"restinsn"
	.byte	0x1
	.byte	0x82
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.long	0x2d88
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x20
	.string	"ok"
	.byte	0x1
	.byte	0xd4
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x23
	.long	.LASF9
	.long	0x37c0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10603
	.byte	0x0
	.uleb128 0x24
	.long	0x2dda
	.byte	0x1
	.string	"init_save_areas"
	.byte	0x1
	.value	0x10c
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x10d
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x10d
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x2eb7
	.byte	0x1
	.string	"setup_save_areas"
	.byte	0x1
	.value	0x128
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x129
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x129
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.string	"k"
	.byte	0x1
	.value	0x129
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"r"
	.byte	0x1
	.value	0x12a
	.long	0x2f2
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.string	"hard_regs_used"
	.byte	0x1
	.value	0x12b
	.long	0x1822
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.long	0x2e6d
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x26
	.long	.LASF10
	.byte	0x1
	.value	0x132
	.long	0x2eb7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x22
	.long	0x2e99
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x136
	.long	0x2f2
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LASF12
	.byte	0x1
	.value	0x137
	.long	0x2f2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x27
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x25
	.string	"do_save"
	.byte	0x1
	.value	0x146
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1809
	.uleb128 0x24
	.long	0x321f
	.byte	0x1
	.string	"save_call_clobbered_regs"
	.byte	0x1
	.value	0x17b
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x26
	.long	.LASF13
	.byte	0x1
	.value	0x17c
	.long	0x1e9e
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x26
	.long	.LASF5
	.byte	0x1
	.value	0x17c
	.long	0x1e9e
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x26
	.long	.LASF14
	.byte	0x1
	.value	0x17d
	.long	0x321f
	.byte	0x3
	.byte	0x91
	.sleb128 -880
	.uleb128 0x22
	.long	0x2f3a
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x26
	.long	.LASF10
	.byte	0x1
	.value	0x17f
	.long	0x2eb7
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.byte	0x0
	.uleb128 0x22
	.long	0x320e
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x25
	.string	"insn"
	.byte	0x1
	.value	0x184
	.long	0xa0
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x185
	.long	0x62c
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x22
	.long	0x2ffc
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x193
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x22
	.long	0x2fb3
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x26
	.long	.LASF10
	.byte	0x1
	.value	0x197
	.long	0x2eb7
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x26
	.long	.LASF15
	.byte	0x1
	.value	0x197
	.long	0x2eb7
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x0
	.uleb128 0x22
	.long	0x2fd1
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x26
	.long	.LASF10
	.byte	0x1
	.value	0x19a
	.long	0x2eb7
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x0
	.uleb128 0x27
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x26
	.long	.LASF10
	.byte	0x1
	.value	0x19c
	.long	0x2eb7
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x26
	.long	.LASF15
	.byte	0x1
	.value	0x19c
	.long	0x2eb7
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0x31f4
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x1a6
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x25
	.string	"hard_regs_to_save"
	.byte	0x1
	.value	0x1a7
	.long	0x1822
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x22
	.long	0x3055
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x26
	.long	.LASF10
	.byte	0x1
	.value	0x1ab
	.long	0x2eb7
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x0
	.uleb128 0x22
	.long	0x312a
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x25
	.string	"ptr_"
	.byte	0x1
	.value	0x1b6
	.long	0x18dc
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x25
	.string	"indx_"
	.byte	0x1
	.value	0x1b6
	.long	0x2f2
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.string	"bit_num_"
	.byte	0x1
	.value	0x1b6
	.long	0x2f2
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x25
	.string	"word_num_"
	.byte	0x1
	.value	0x1b6
	.long	0x2f2
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x25
	.string	"word_"
	.byte	0x1
	.value	0x1b6
	.long	0x1846
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x27
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x25
	.string	"mask_"
	.byte	0x1
	.value	0x1b6
	.long	0x1846
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x25
	.string	"r"
	.byte	0x1
	.value	0x1b6
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x25
	.string	"nregs"
	.byte	0x1
	.value	0x1b6
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x25
	.string	"mode"
	.byte	0x1
	.value	0x1b6
	.long	0x3e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0x3147
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x26
	.long	.LASF10
	.byte	0x1
	.value	0x1d1
	.long	0x2eb7
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x22
	.long	0x3173
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x26
	.long	.LASF10
	.byte	0x1
	.value	0x1d5
	.long	0x2eb7
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.long	.LASF15
	.byte	0x1
	.value	0x1d5
	.long	0x2eb7
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x22
	.long	0x319f
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x26
	.long	.LASF10
	.byte	0x1
	.value	0x1d6
	.long	0x2eb7
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.long	.LASF15
	.byte	0x1
	.value	0x1d6
	.long	0x2eb7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x22
	.long	0x31cb
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x26
	.long	.LASF10
	.byte	0x1
	.value	0x1d7
	.long	0x2eb7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF15
	.byte	0x1
	.value	0x1d7
	.long	0x2eb7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x27
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x26
	.long	.LASF10
	.byte	0x1
	.value	0x1d8
	.long	0x2eb7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LASF15
	.byte	0x1
	.value	0x1d8
	.long	0x2eb7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x1e8
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	.LASF9
	.long	0x37ab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11009
	.byte	0x0
	.uleb128 0xe
	.long	0x322f
	.long	0x3e3
	.uleb128 0xf
	.long	0x309
	.byte	0xaf
	.byte	0x0
	.uleb128 0x29
	.long	0x32da
	.string	"mark_set_regs"
	.byte	0x1
	.value	0x1ff
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2a
	.string	"reg"
	.byte	0x1
	.value	0x1fc
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"setter"
	.byte	0x1
	.value	0x1fd
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"data"
	.byte	0x1
	.value	0x1fe
	.long	0x3c5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x200
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF12
	.byte	0x1
	.value	0x200
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x200
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"mode"
	.byte	0x1
	.value	0x201
	.long	0x3e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x25
	.string	"inner"
	.byte	0x1
	.value	0x205
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x337b
	.string	"add_stored_regs"
	.byte	0x1
	.value	0x220
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x2a
	.string	"reg"
	.byte	0x1
	.value	0x21d
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"setter"
	.byte	0x1
	.value	0x21e
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"data"
	.byte	0x1
	.value	0x21f
	.long	0x3c5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x221
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LASF12
	.byte	0x1
	.value	0x221
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x221
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.string	"mode"
	.byte	0x1
	.value	0x222
	.long	0x3e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF3
	.byte	0x1
	.value	0x223
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x29
	.long	0x3434
	.string	"mark_referenced_regs"
	.byte	0x1
	.value	0x23f
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x23e
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x240
	.long	0x62c
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.string	"fmt"
	.byte	0x1
	.value	0x241
	.long	0x206
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x242
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x242
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x25d
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"hardregno"
	.byte	0x1
	.value	0x25e
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x25
	.string	"nregs"
	.byte	0x1
	.value	0x263
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x3551
	.string	"insert_restore"
	.byte	0x1
	.value	0x290
	.byte	0x1
	.long	0x219
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2c
	.long	.LASF13
	.byte	0x1
	.value	0x28b
	.long	0x1e9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF16
	.byte	0x1
	.value	0x28c
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF11
	.byte	0x1
	.value	0x28d
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.string	"maxrestore"
	.byte	0x1
	.value	0x28e
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF14
	.byte	0x1
	.value	0x28f
	.long	0x3551
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x291
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.string	"k"
	.byte	0x1
	.value	0x291
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"pat"
	.byte	0x1
	.value	0x292
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x293
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"numregs"
	.byte	0x1
	.value	0x294
	.long	0x2f2
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.string	"new"
	.byte	0x1
	.value	0x295
	.long	0x1e9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"mem"
	.byte	0x1
	.value	0x296
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.long	0x3540
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x2a8
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"ok"
	.byte	0x1
	.value	0x2a9
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x23
	.long	.LASF9
	.long	0x3796
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11595
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3e3
	.uleb128 0x2b
	.long	0x366e
	.string	"insert_save"
	.byte	0x1
	.value	0x2dc
	.byte	0x1
	.long	0x219
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2c
	.long	.LASF13
	.byte	0x1
	.value	0x2d7
	.long	0x1e9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF16
	.byte	0x1
	.value	0x2d8
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF11
	.byte	0x1
	.value	0x2d9
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.string	"to_save"
	.byte	0x1
	.value	0x2da
	.long	0x366e
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF14
	.byte	0x1
	.value	0x2db
	.long	0x3551
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x2dd
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.string	"k"
	.byte	0x1
	.value	0x2de
	.long	0x2f2
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"pat"
	.byte	0x1
	.value	0x2df
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x2e0
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"numregs"
	.byte	0x1
	.value	0x2e1
	.long	0x2f2
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.string	"new"
	.byte	0x1
	.value	0x2e2
	.long	0x1e9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"mem"
	.byte	0x1
	.value	0x2e3
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.long	0x365d
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x2f5
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"ok"
	.byte	0x1
	.value	0x2f6
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x23
	.long	.LASF9
	.long	0x3781
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11701
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1822
	.uleb128 0x2b
	.long	0x375c
	.string	"insert_one_insn"
	.byte	0x1
	.value	0x326
	.byte	0x1
	.long	0x1e9e
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2c
	.long	.LASF13
	.byte	0x1
	.value	0x322
	.long	0x1e9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF16
	.byte	0x1
	.value	0x323
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x324
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.string	"pat"
	.byte	0x1
	.value	0x325
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.string	"insn"
	.byte	0x1
	.value	0x327
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"new"
	.byte	0x1
	.value	0x328
	.long	0x1e9e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.long	0x374b
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x25
	.string	"link"
	.byte	0x1
	.value	0x33a
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x25
	.string	"reg"
	.byte	0x1
	.value	0x34d
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF11
	.byte	0x1
	.value	0x34e
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x34e
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	.LASF9
	.long	0x376c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11820
	.byte	0x0
	.uleb128 0xe
	.long	0x376c
	.long	0x211
	.uleb128 0xf
	.long	0x309
	.byte	0xf
	.byte	0x0
	.uleb128 0x9
	.long	0x375c
	.uleb128 0xe
	.long	0x3781
	.long	0x211
	.uleb128 0xf
	.long	0x309
	.byte	0xb
	.byte	0x0
	.uleb128 0x9
	.long	0x3771
	.uleb128 0xe
	.long	0x3796
	.long	0x211
	.uleb128 0xf
	.long	0x309
	.byte	0xe
	.byte	0x0
	.uleb128 0x9
	.long	0x3786
	.uleb128 0xe
	.long	0x37ab
	.long	0x211
	.uleb128 0xf
	.long	0x309
	.byte	0x18
	.byte	0x0
	.uleb128 0x9
	.long	0x379b
	.uleb128 0xe
	.long	0x37c0
	.long	0x211
	.uleb128 0xf
	.long	0x309
	.byte	0x10
	.byte	0x0
	.uleb128 0x9
	.long	0x37b0
	.uleb128 0xe
	.long	0x37db
	.long	0x3e3
	.uleb128 0xf
	.long	0x309
	.byte	0xaf
	.uleb128 0xf
	.long	0x309
	.byte	0x2
	.byte	0x0
	.uleb128 0x20
	.string	"regno_save_mode"
	.byte	0x1
	.byte	0x3f
	.long	0x37c5
	.byte	0x5
	.byte	0x3
	.long	regno_save_mode
	.uleb128 0xe
	.long	0x380e
	.long	0xa0
	.uleb128 0xf
	.long	0x309
	.byte	0xaf
	.uleb128 0xf
	.long	0x309
	.byte	0x2
	.byte	0x0
	.uleb128 0x20
	.string	"regno_save_mem"
	.byte	0x1
	.byte	0x45
	.long	0x37f8
	.byte	0x5
	.byte	0x3
	.long	regno_save_mem
	.uleb128 0xe
	.long	0x3840
	.long	0x219
	.uleb128 0xf
	.long	0x309
	.byte	0xaf
	.uleb128 0xf
	.long	0x309
	.byte	0x35
	.byte	0x0
	.uleb128 0x20
	.string	"reg_save_code"
	.byte	0x1
	.byte	0x4e
	.long	0x382a
	.byte	0x5
	.byte	0x3
	.long	reg_save_code
	.uleb128 0x20
	.string	"reg_restore_code"
	.byte	0x1
	.byte	0x50
	.long	0x382a
	.byte	0x5
	.byte	0x3
	.long	reg_restore_code
	.uleb128 0x20
	.string	"hard_regs_saved"
	.byte	0x1
	.byte	0x54
	.long	0x1822
	.byte	0x5
	.byte	0x3
	.long	hard_regs_saved
	.uleb128 0x20
	.string	"n_regs_saved"
	.byte	0x1
	.byte	0x58
	.long	0x219
	.byte	0x5
	.byte	0x3
	.long	n_regs_saved
	.uleb128 0x20
	.string	"referenced_regs"
	.byte	0x1
	.byte	0x5c
	.long	0x1822
	.byte	0x5
	.byte	0x3
	.long	referenced_regs
	.uleb128 0x20
	.string	"this_insn_sets"
	.byte	0x1
	.byte	0x60
	.long	0x1822
	.byte	0x5
	.byte	0x3
	.long	this_insn_sets
	.uleb128 0xe
	.long	0x38f9
	.long	0x211
	.uleb128 0xf
	.long	0x309
	.byte	0xaf
	.byte	0x0
	.uleb128 0x2d
	.string	"call_used_regs"
	.byte	0x8
	.value	0x196
	.long	0x38e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"target_flags"
	.byte	0xa
	.byte	0x21
	.long	0x219
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x3939
	.long	0x211
	.uleb128 0x2f
	.uleb128 0xf
	.long	0x309
	.byte	0xaf
	.byte	0x0
	.uleb128 0x2d
	.string	"mips_hard_regno_mode_ok"
	.byte	0xa
	.value	0x778
	.long	0x3928
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x396b
	.long	0x336
	.uleb128 0xf
	.long	0x309
	.byte	0x35
	.byte	0x0
	.uleb128 0x2e
	.string	"mode_size"
	.byte	0x4
	.byte	0x59
	.long	0x397e
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x395b
	.uleb128 0xe
	.long	0x3993
	.long	0x347
	.uleb128 0xf
	.long	0x309
	.byte	0x35
	.byte	0x0
	.uleb128 0x2e
	.string	"mode_bitsize"
	.byte	0x4
	.byte	0x69
	.long	0x39a9
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x3983
	.uleb128 0xe
	.long	0x39be
	.long	0x336
	.uleb128 0xf
	.long	0x309
	.byte	0xa2
	.byte	0x0
	.uleb128 0x2e
	.string	"rtx_length"
	.byte	0x3
	.byte	0x3c
	.long	0x39d2
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x39ae
	.uleb128 0xe
	.long	0x39e7
	.long	0x206
	.uleb128 0xf
	.long	0x309
	.byte	0xa2
	.byte	0x0
	.uleb128 0x2e
	.string	"rtx_format"
	.byte	0x3
	.byte	0x42
	.long	0x39fb
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x39d7
	.uleb128 0xe
	.long	0x3a10
	.long	0x211
	.uleb128 0xf
	.long	0x309
	.byte	0xa2
	.byte	0x0
	.uleb128 0x2e
	.string	"rtx_class"
	.byte	0x3
	.byte	0x45
	.long	0x3a23
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x3a00
	.uleb128 0x2d
	.string	"call_used_reg_set"
	.byte	0x8
	.value	0x19e
	.long	0x1822
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"call_fixed_regs"
	.byte	0x8
	.value	0x1a9
	.long	0x38e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"call_fixed_reg_set"
	.byte	0x8
	.value	0x1ad
	.long	0x1822
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x3a91
	.long	0x1809
	.uleb128 0xf
	.long	0x309
	.byte	0x18
	.uleb128 0xf
	.long	0x309
	.byte	0x2
	.byte	0x0
	.uleb128 0x2d
	.string	"reg_class_contents"
	.byte	0x8
	.value	0x1cb
	.long	0x3a7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"basic_block_info"
	.byte	0x6
	.byte	0xfe
	.long	0x17f0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"max_regno"
	.byte	0xd
	.byte	0x2c
	.long	0x219
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"reg_n_info"
	.byte	0xd
	.byte	0x43
	.long	0x17f0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"reg_renumber"
	.byte	0xd
	.byte	0x9a
	.long	0x3b05
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x381
	.uleb128 0x2e
	.string	"reg_equiv_address"
	.byte	0x9
	.byte	0xa9
	.long	0x1268
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"reg_equiv_mem"
	.byte	0x9
	.byte	0xaa
	.long	0x1268
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"reload_insn_chain"
	.byte	0x9
	.byte	0xf7
	.long	0x1e9e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"cfun"
	.byte	0xe
	.value	0x202
	.long	0x2c12
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
	.uleb128 0x16
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2d
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x69
	.value	0x2
	.long	.Ldebug_info0
	.long	0x3b68
	.long	0x2c7a
	.string	"init_caller_save"
	.long	0x2d99
	.string	"init_save_areas"
	.long	0x2dda
	.string	"setup_save_areas"
	.long	0x2ebd
	.string	"save_call_clobbered_regs"
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB17-.Ltext0
	.long	.LBE17-.Ltext0
	.long	.LBB19-.Ltext0
	.long	.LBE19-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_str,"",@progbits
.LASF5:
	.string	"next"
.LASF13:
	.string	"chain"
.LASF12:
	.string	"endregno"
.LASF4:
	.string	"basic_block"
.LASF16:
	.string	"before_p"
.LASF3:
	.string	"offset"
.LASF10:
	.string	"scan_tp_"
.LASF2:
	.string	"mem_attrs"
.LASF0:
	.string	"code"
.LASF14:
	.string	"save_mode"
.LASF6:
	.string	"sequence_stack"
.LASF9:
	.string	"__FUNCTION__"
.LASF8:
	.string	"function_frequency"
.LASF7:
	.string	"sequence_rtl_expr"
.LASF15:
	.string	"scan_fp_"
.LASF1:
	.string	"unsigned int"
.LASF11:
	.string	"regno"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
