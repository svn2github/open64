	.file	"sibcall.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	identify_call_return_value, @function
identify_call_return_value:
.LFB15:
	.file 1 "../../../kg++fe/gnu/sibcall.c"
	.loc 1 63 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$52, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 66 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 68 0
	jmp	.L2
.L3:
	.loc 1 69 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L2:
	.loc 1 68 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L3
	.loc 1 70 0
	jmp	.L5
.L6:
	.loc 1 71 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L5:
	.loc 1 70 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L6
	.loc 1 76 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L8
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$60, %ax
	jne	.L8
	.loc 1 78 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 76 0
	jmp	.L11
.L8:
	.loc 1 79 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L12
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L12
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$60, %ax
	jne	.L12
	.loc 1 82 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 79 0
	jmp	.L11
.L12:
	.loc 1 84 0
	movl	$0, -40(%ebp)
	jmp	.L16
.L11:
	.loc 1 87 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L17
	.loc 1 88 0
	movl	$0, -40(%ebp)
	jmp	.L16
.L17:
	.loc 1 91 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_stack_adjustment
	movl	%eax, -20(%ebp)
	.loc 1 92 0
	cmpl	$0, -20(%ebp)
	jne	.L19
	.loc 1 93 0
	movl	$0, -40(%ebp)
	jmp	.L16
.L19:
	.loc 1 96 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_pic_restore
	movl	%eax, -20(%ebp)
	.loc 1 97 0
	cmpl	$0, -20(%ebp)
	jne	.L21
	.loc 1 98 0
	movl	$0, -40(%ebp)
	jmp	.L16
.L21:
	.loc 1 101 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 102 0
	cmpl	$0, -20(%ebp)
	jne	.L23
	.loc 1 103 0
	movl	$0, -40(%ebp)
	jmp	.L16
.L23:
	.loc 1 106 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L25
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L27
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L29
.L27:
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -32(%ebp)
.L29:
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L30
.L25:
	movl	$0, -36(%ebp)
.L30:
	movl	-36(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 107 0
	cmpl	$0, -16(%ebp)
	je	.L31
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L33
.L31:
	.loc 1 108 0
	movl	$0, -40(%ebp)
	jmp	.L16
.L33:
	.loc 1 110 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 111 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 116 0
	cmpl	$0, -20(%ebp)
	je	.L34
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L36
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L38
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L40
.L38:
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -24(%ebp)
.L40:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L41
.L36:
	movl	$0, -28(%ebp)
.L41:
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L34
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L34
	.loc 1 120 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 121 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L34:
	.loc 1 125 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L44
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L46
.L44:
	.loc 1 126 0
	movl	$0, -40(%ebp)
	jmp	.L16
.L46:
	.loc 1 129 0
	movl	$0, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_between_p@PLT
	testl	%eax, %eax
	je	.L47
	.loc 1 130 0
	movl	$0, -40(%ebp)
	jmp	.L16
.L47:
	.loc 1 132 0
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 133 0
	movl	16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 135 0
	movl	$1, -40(%ebp)
.L16:
	movl	-40(%ebp), %eax
	.loc 1 136 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	identify_call_return_value, .-identify_call_return_value
	.type	skip_copy_to_return_value, @function
skip_copy_to_return_value:
.LFB16:
	.loc 1 145 0
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
	.loc 1 146 0
	movl	$0, -12(%ebp)
	.loc 1 150 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	identify_call_return_value
	testl	%eax, %eax
	jne	.L51
	.loc 1 151 0
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L53
.L51:
	.loc 1 153 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -16(%ebp)
	.loc 1 154 0
	cmpl	$0, -16(%ebp)
	jne	.L54
	.loc 1 155 0
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L53
.L54:
	.loc 1 157 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L56
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L58
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L60
.L58:
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -48(%ebp)
.L60:
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L61
.L56:
	movl	$0, -52(%ebp)
.L61:
	movl	-52(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 158 0
	cmpl	$0, -12(%ebp)
	jne	.L62
	.loc 1 159 0
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L53
.L62:
	.loc 1 161 0
	movl	return_value_pseudo@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L64
	.loc 1 163 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	return_value_pseudo@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L66
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L66
	.loc 1 165 0
	movl	-16(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L53
.L66:
	.loc 1 166 0
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L53
.L64:
	.loc 1 181 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	116(%eax), %eax
	cmpl	%eax, %edx
	jne	.L69
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L69
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L69
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L69
	.loc 1 185 0
	movl	-16(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L53
.L69:
	.loc 1 191 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L74
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L74
.LBB2:
	.loc 1 194 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 196 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -16(%ebp)
	.loc 1 197 0
	cmpl	$0, -16(%ebp)
	jne	.L77
	.loc 1 198 0
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L53
.L77:
	.loc 1 200 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L79
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L81
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L83
.L81:
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -40(%ebp)
.L83:
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L84
.L79:
	movl	$0, -44(%ebp)
.L84:
	movl	-44(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 201 0
	cmpl	$0, -12(%ebp)
	jne	.L85
	.loc 1 202 0
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L53
.L85:
	.loc 1 204 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	116(%eax), %eax
	cmpl	%eax, %edx
	jne	.L74
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L74
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L74
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L74
	.loc 1 208 0
	movl	-16(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L53
.L74:
.LBE2:
	.loc 1 213 0
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
.L53:
	movl	-56(%ebp), %eax
	.loc 1 214 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	skip_copy_to_return_value, .-skip_copy_to_return_value
	.type	skip_use_of_return_value, @function
skip_use_of_return_value:
.LFB17:
	.loc 1 223 0
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
	.loc 1 226 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 228 0
	cmpl	$0, -8(%ebp)
	je	.L93
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L93
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	12(%ebp), %eax
	jne	.L93
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	116(%eax), %eax
	cmpl	%eax, %edx
	je	.L97
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	jne	.L93
.L97:
	.loc 1 233 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L99
.L93:
	.loc 1 235 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L99:
	movl	-24(%ebp), %eax
	.loc 1 236 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	skip_use_of_return_value, .-skip_use_of_return_value
	.type	skip_unreturned_value, @function
skip_unreturned_value:
.LFB18:
	.loc 1 243 0
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
	.loc 1 244 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -16(%ebp)
	.loc 1 247 0
	cmpl	$0, -16(%ebp)
	je	.L102
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L102
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L102
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L102
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L102
.LBB3:
	.loc 1 253 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 255 0
	cmpl	$0, -12(%ebp)
	jne	.L108
	.loc 1 256 0
	movl	-16(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L110
.L108:
	.loc 1 257 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L111
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L113
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L115
.L113:
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -24(%ebp)
.L115:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L116
.L111:
	movl	$0, -28(%ebp)
.L116:
	movl	-28(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 258 0
	cmpl	$0, -8(%ebp)
	je	.L117
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L117
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	116(%eax), %eax
	cmpl	%eax, %edx
	je	.L120
.L117:
	.loc 1 261 0
	movl	-16(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L110
.L120:
	.loc 1 262 0
	movl	-12(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L110
.L102:
.LBE3:
	.loc 1 264 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
.L110:
	movl	-32(%ebp), %eax
	.loc 1 265 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	skip_unreturned_value, .-skip_unreturned_value
	.type	skip_stack_adjustment, @function
skip_stack_adjustment:
.LFB19:
	.loc 1 274 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%ebx
.LCFI18:
	subl	$36, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 275 0
	movl	$0, -8(%ebp)
	.loc 1 277 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 279 0
	cmpl	$0, -12(%ebp)
	je	.L123
	.loc 1 280 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L125
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L127
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L129
.L127:
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -28(%ebp)
.L129:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L130
.L125:
	movl	$0, -32(%ebp)
.L130:
	movl	-32(%ebp), %eax
	movl	%eax, -8(%ebp)
.L123:
	.loc 1 282 0
	cmpl	$0, -12(%ebp)
	je	.L131
	cmpl	$0, -8(%ebp)
	je	.L131
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L131
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L131
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L131
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L131
	.loc 1 288 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L138
.L131:
	.loc 1 290 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L138:
	movl	-24(%ebp), %eax
	.loc 1 291 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	skip_stack_adjustment, .-skip_stack_adjustment
	.type	skip_pic_restore, @function
skip_pic_restore:
.LFB20:
	.loc 1 299 0
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
	.loc 1 300 0
	movl	$0, -8(%ebp)
	.loc 1 302 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 304 0
	cmpl	$0, -12(%ebp)
	je	.L141
	.loc 1 305 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L143
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L145
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L147
.L145:
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -28(%ebp)
.L147:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L148
.L143:
	movl	$0, -32(%ebp)
.L148:
	movl	-32(%ebp), %eax
	movl	%eax, -8(%ebp)
.L141:
	.loc 1 307 0
	cmpl	$0, -12(%ebp)
	je	.L149
	cmpl	$0, -8(%ebp)
	je	.L149
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	pic_offset_table_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L149
	.loc 1 308 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L153
.L149:
	.loc 1 310 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L153:
	movl	-24(%ebp), %eax
	.loc 1 311 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	skip_pic_restore, .-skip_pic_restore
	.type	skip_jump_insn, @function
skip_jump_insn:
.LFB21:
	.loc 1 319 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$36, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 322 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 324 0
	cmpl	$0, -8(%ebp)
	je	.L156
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L156
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	any_uncondjump_p@PLT
	testl	%eax, %eax
	je	.L156
	.loc 1 327 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L160
.L156:
	.loc 1 329 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L160:
	movl	-24(%ebp), %eax
	.loc 1 330 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	skip_jump_insn, .-skip_jump_insn
	.type	call_ends_block_p, @function
call_ends_block_p:
.LFB22:
	.loc 1 339 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$36, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 342 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, 12(%ebp)
	.loc 1 345 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L163
	.loc 1 346 0
	movl	$1, -24(%ebp)
	jmp	.L165
.L163:
	.loc 1 351 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_copy_to_return_value
	movl	%eax, -8(%ebp)
	.loc 1 356 0
	movl	return_value_pseudo@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L166
	movl	8(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jne	.L166
	.loc 1 357 0
	movl	$0, -24(%ebp)
	jmp	.L165
.L166:
	.loc 1 358 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 360 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L169
	.loc 1 361 0
	movl	$1, -24(%ebp)
	jmp	.L165
.L169:
	.loc 1 364 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_stack_adjustment
	movl	%eax, 8(%ebp)
	.loc 1 365 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L171
	.loc 1 366 0
	movl	$1, -24(%ebp)
	jmp	.L165
.L171:
	.loc 1 369 0
	movl	$59, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_use_of_return_value
	movl	%eax, 8(%ebp)
	.loc 1 370 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L173
	.loc 1 371 0
	movl	$1, -24(%ebp)
	jmp	.L165
.L173:
	.loc 1 374 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_unreturned_value
	movl	%eax, 8(%ebp)
	.loc 1 375 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L175
	.loc 1 376 0
	movl	$1, -24(%ebp)
	jmp	.L165
.L175:
	.loc 1 379 0
	movl	$58, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_use_of_return_value
	movl	%eax, 8(%ebp)
	.loc 1 380 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L177
	.loc 1 381 0
	movl	$1, -24(%ebp)
	jmp	.L165
.L177:
	.loc 1 385 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_jump_insn
	movl	%eax, 8(%ebp)
	.loc 1 386 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
.L165:
	movl	-24(%ebp), %eax
	.loc 1 387 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	call_ends_block_p, .-call_ends_block_p
	.type	uses_addressof, @function
uses_addressof:
.LFB23:
	.loc 1 397 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$24, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 402 0
	cmpl	$0, 8(%ebp)
	jne	.L181
	.loc 1 403 0
	movl	$0, -24(%ebp)
	jmp	.L183
.L181:
	.loc 1 405 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 407 0
	cmpl	$80, -20(%ebp)
	je	.L184
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	120(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L186
.L184:
	.loc 1 408 0
	movl	$1, -24(%ebp)
	jmp	.L183
.L186:
	.loc 1 410 0
	cmpl	$76, -20(%ebp)
	jne	.L187
	.loc 1 411 0
	movl	$0, -24(%ebp)
	jmp	.L183
.L187:
	.loc 1 414 0
	movl	-20(%ebp), %eax
	movl	rtx_format@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 415 0
	movl	$0, -16(%ebp)
	jmp	.L189
.L190:
	.loc 1 417 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L191
	.loc 1 419 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	uses_addressof
	testl	%eax, %eax
	je	.L195
	.loc 1 420 0
	movl	$1, -24(%ebp)
	jmp	.L183
.L191:
	.loc 1 422 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L195
	.loc 1 424 0
	movl	$0, -12(%ebp)
	jmp	.L197
.L198:
	.loc 1 425 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	uses_addressof
	testl	%eax, %eax
	je	.L199
	.loc 1 426 0
	movl	$1, -24(%ebp)
	jmp	.L183
.L199:
	.loc 1 424 0
	addl	$1, -12(%ebp)
.L197:
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L198
.L195:
	.loc 1 415 0
	addl	$1, -16(%ebp)
	addl	$1, -8(%ebp)
.L189:
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-16(%ebp), %eax
	jg	.L190
	.loc 1 429 0
	movl	$0, -24(%ebp)
.L183:
	movl	-24(%ebp), %eax
	.loc 1 430 0
	addl	$24, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	uses_addressof, .-uses_addressof
	.type	sequence_uses_addressof, @function
sequence_uses_addressof:
.LFB24:
	.loc 1 444 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	pushl	%ebx
.LCFI38:
	subl	$24, %esp
.LCFI39:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 447 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L204
.L205:
	.loc 1 448 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L206
	.loc 1 452 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L208
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$151, %ax
	jne	.L208
	.loc 1 455 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L211
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	sequence_uses_addressof
	testl	%eax, %eax
	je	.L211
	.loc 1 457 0
	movl	$1, -24(%ebp)
	jmp	.L214
.L211:
	.loc 1 458 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L215
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	sequence_uses_addressof
	testl	%eax, %eax
	je	.L215
	.loc 1 460 0
	movl	$1, -24(%ebp)
	jmp	.L214
.L215:
	.loc 1 461 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L206
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	sequence_uses_addressof
	testl	%eax, %eax
	je	.L206
	.loc 1 463 0
	movl	$1, -24(%ebp)
	jmp	.L214
.L208:
	.loc 1 465 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	uses_addressof
	testl	%eax, %eax
	jne	.L221
	movl	-8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L206
	movl	-8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	call	uses_addressof
	testl	%eax, %eax
	je	.L206
.L221:
	.loc 1 467 0
	movl	$1, -24(%ebp)
	jmp	.L214
.L206:
	.loc 1 447 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L204:
	cmpl	$0, -8(%ebp)
	jne	.L205
	.loc 1 469 0
	movl	$0, -24(%ebp)
.L214:
	movl	-24(%ebp), %eax
	.loc 1 470 0
	addl	$24, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	sequence_uses_addressof, .-sequence_uses_addressof
	.type	purge_reg_equiv_notes, @function
purge_reg_equiv_notes:
.LFB25:
	.loc 1 476 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	pushl	%ebx
.LCFI42:
	subl	$36, %esp
.LCFI43:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 479 0
	call	get_insns@PLT
	movl	%eax, -12(%ebp)
	jmp	.L227
.L228:
.LBB4:
	.loc 1 483 0
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -8(%ebp)
	.loc 1 484 0
	cmpl	$0, -8(%ebp)
	je	.L229
	.loc 1 488 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	.loc 1 492 0
	jmp	.L228
.L229:
.LBE4:
	.loc 1 479 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L227:
	cmpl	$0, -12(%ebp)
	jne	.L228
	.loc 1 494 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	purge_reg_equiv_notes, .-purge_reg_equiv_notes
	.type	purge_mem_unchanging_flag, @function
purge_mem_unchanging_flag:
.LFB26:
	.loc 1 501 0
	pushl	%ebp
.LCFI44:
	movl	%esp, %ebp
.LCFI45:
	pushl	%ebx
.LCFI46:
	subl	$20, %esp
.LCFI47:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 506 0
	cmpl	$0, 8(%ebp)
	je	.L252
	.loc 1 509 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 511 0
	cmpl	$76, -20(%ebp)
	jne	.L236
	.loc 1 513 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L252
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	120(%eax), %eax
	cmpl	%eax, %edx
	je	.L240
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L252
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	120(%eax), %eax
	cmpl	%eax, %edx
	jne	.L252
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L252
.L240:
	.loc 1 519 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %edx
	andl	$-5, %edx
	movb	%dl, 3(%eax)
	.loc 1 520 0
	jmp	.L252
.L236:
	.loc 1 524 0
	movl	-20(%ebp), %eax
	movl	rtx_format@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 525 0
	movl	$0, -16(%ebp)
	jmp	.L244
.L245:
	.loc 1 527 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L246
	.loc 1 528 0
	movl	-16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	movl	%eax, (%esp)
	call	purge_mem_unchanging_flag
	jmp	.L248
.L246:
	.loc 1 529 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L248
	.loc 1 530 0
	movl	$0, -12(%ebp)
	jmp	.L250
.L251:
	.loc 1 531 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	purge_mem_unchanging_flag
	.loc 1 530 0
	addl	$1, -12(%ebp)
.L250:
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L251
.L248:
	.loc 1 525 0
	addl	$1, -16(%ebp)
	addl	$1, -8(%ebp)
.L244:
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-16(%ebp), %eax
	jg	.L245
.L252:
	.loc 1 533 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	purge_mem_unchanging_flag, .-purge_mem_unchanging_flag
	.section	.rodata
	.type	__FUNCTION__.12650, @object
	.size	__FUNCTION__.12650, 25
__FUNCTION__.12650:
	.string	"replace_call_placeholder"
.LC0:
	.string	"../../../kg++fe/gnu/sibcall.c"
	.text
.globl replace_call_placeholder
	.type	replace_call_placeholder, @function
replace_call_placeholder:
.LFB27:
	.loc 1 542 0
	pushl	%ebp
.LCFI48:
	movl	%esp, %ebp
.LCFI49:
	pushl	%ebx
.LCFI50:
	subl	$20, %esp
.LCFI51:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 543 0
	cmpl	$2, 12(%ebp)
	jne	.L254
	.loc 1 544 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_before@PLT
	jmp	.L256
.L254:
	.loc 1 545 0
	cmpl	$3, 12(%ebp)
	jne	.L257
	.loc 1 546 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_before@PLT
	jmp	.L256
.L257:
	.loc 1 547 0
	cmpl	$1, 12(%ebp)
	jne	.L259
	.loc 1 548 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_before@PLT
	jmp	.L256
.L259:
	.loc 1 550 0
	leal	__FUNCTION__.12650@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$550, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L256:
	.loc 1 555 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L261
	.loc 1 556 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	28(%eax), %edx
	movzbl	3(%edx), %eax
	andl	$-17, %eax
	movb	%al, 3(%edx)
.L261:
	.loc 1 559 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_insn@PLT
	.loc 1 560 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	replace_call_placeholder, .-replace_call_placeholder
.globl optimize_sibling_and_tail_recursive_calls
	.type	optimize_sibling_and_tail_recursive_calls, @function
optimize_sibling_and_tail_recursive_calls:
.LFB28:
	.loc 1 573 0
	pushl	%ebp
.LCFI52:
	movl	%esp, %ebp
.LCFI53:
	pushl	%esi
.LCFI54:
	pushl	%ebx
.LCFI55:
	subl	$80, %esp
.LCFI56:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 575 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 576 0
	movb	$0, -11(%ebp)
	.loc 1 577 0
	movb	$0, -10(%ebp)
	.loc 1 578 0
	movb	$0, -9(%ebp)
	.loc 1 581 0
	call	get_insns@PLT
	movl	%eax, -52(%ebp)
	.loc 1 583 0
	movl	$24, (%esp)
	call	cleanup_cfg@PLT
	.loc 1 586 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L342
	.loc 1 595 0
	movl	$0, return_value_pseudo@GOTOFF(%ebx)
	.loc 1 602 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 603 0
	jmp	.L267
.L268:
.LBB5:
	.loc 1 608 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L269
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L269
	.loc 1 613 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 614 0
	jmp	.L272
.L273:
.LBB6:
	.loc 1 619 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L274
	.loc 1 622 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L274
	.loc 1 625 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L277
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L274
.L277:
	.loc 1 631 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L291
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L281
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L283
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L285
.L283:
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -76(%ebp)
.L285:
	movl	-76(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L286
.L281:
	movl	$0, -80(%ebp)
.L286:
	movl	-80(%ebp), %edx
	movl	%edx, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L291
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	116(%eax), %eax
	cmpl	%eax, %edx
	jne	.L291
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L291
	movl	return_value_pseudo@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L291
	.loc 1 637 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, return_value_pseudo@GOTOFF(%ebx)
.L274:
.LBE6:
	.loc 1 615 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
.L272:
	.loc 1 614 0
	cmpl	$0, -40(%ebp)
	jne	.L273
.L291:
	.loc 1 647 0
	cmpl	$0, -40(%ebp)
	jne	.L292
	.loc 1 648 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L269
.L292:
	.loc 1 650 0
	movl	$0, return_value_pseudo@GOTOFF(%ebx)
.L269:
.LBE5:
	.loc 1 604 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L267:
	.loc 1 603 0
	cmpl	$0, -44(%ebp)
	je	.L294
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -48(%ebp)
	je	.L268
.L294:
	.loc 1 655 0
	movzbl	-11(%ebp), %esi
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	sequence_uses_addressof
	orl	%esi, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -11(%ebp)
	.loc 1 666 0
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L296
.L297:
	.loc 1 668 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L298
	movl	-56(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$151, %ax
	jne	.L298
.LBB7:
	.loc 1 671 0
	movl	-56(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 672 0
	movl	-56(%ebp), %eax
	movl	44(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 673 0
	movl	-56(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 679 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L301
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	298(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L303
.L301:
	.loc 1 680 0
	movl	$0, -32(%ebp)
.L303:
	.loc 1 685 0
	cmpb	$0, -11(%ebp)
	jne	.L304
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	200(%eax), %edx
	movl	196(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L304
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L304
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L304
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L304
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L310
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	cmpl	-48(%ebp), %eax
	jne	.L304
.L310:
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	call_ends_block_p
	testl	%eax, %eax
	jne	.L312
.L304:
	.loc 1 702 0
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
.L312:
	.loc 1 708 0
	cmpl	$0, -32(%ebp)
	jne	.L313
	cmpl	$0, -28(%ebp)
	je	.L315
.L313:
	.loc 1 709 0
	movb	$1, -10(%ebp)
.L315:
	.loc 1 710 0
	movb	$1, -9(%ebp)
	.loc 1 712 0
	cmpl	$0, -28(%ebp)
	jne	.L316
	cmpl	$0, -32(%ebp)
	je	.L318
	movl	$3, -68(%ebp)
	jmp	.L320
.L318:
	movl	$1, -68(%ebp)
.L320:
	movl	-68(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L321
.L316:
	movl	$2, -72(%ebp)
.L321:
	movl	-72(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_call_placeholder@PLT
.L298:
.LBE7:
	.loc 1 666 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
.L296:
	cmpl	$0, -56(%ebp)
	jne	.L297
	.loc 1 721 0
	cmpb	$0, -10(%ebp)
	je	.L323
.LBB8:
	.loc 1 736 0
	call	purge_reg_equiv_notes
	.loc 1 744 0
	call	get_insns@PLT
	movl	%eax, -20(%ebp)
	jmp	.L325
.L326:
	.loc 1 746 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L327
	.loc 1 747 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	purge_mem_unchanging_flag
.L327:
	.loc 1 744 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L325:
	cmpl	$0, -20(%ebp)
	jne	.L326
	.loc 1 752 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	60(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 753 0
	jmp	.L330
.L331:
	.loc 1 756 0
	movl	-16(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L332
	movl	-16(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L334
.L332:
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-16(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -64(%ebp)
.L334:
	movl	-64(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$71, %ax
	jne	.L335
	.loc 1 757 0
	movl	-16(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L337
	movl	-16(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L339
.L337:
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-16(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -60(%ebp)
.L339:
	movl	-60(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$-5, %eax
	movl	-60(%ebp), %edx
	movb	%al, 3(%edx)
.L335:
	.loc 1 754 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L330:
	.loc 1 753 0
	cmpl	$0, -16(%ebp)
	jne	.L331
.L323:
.LBE8:
	.loc 1 764 0
	cmpb	$0, -9(%ebp)
	je	.L340
	.loc 1 765 0
	call	reorder_blocks@PLT
.L340:
	.loc 1 768 0
	movl	$0, (%esp)
	call	free_basic_block_vars@PLT
	.loc 1 769 0
	movl	tail_recursion_label_list@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	free_EXPR_LIST_list@PLT
.L342:
	.loc 1 770 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE28:
	.size	optimize_sibling_and_tail_recursive_calls, .-optimize_sibling_and_tail_recursive_calls
	.local	return_value_pseudo
	.comm	return_value_pseudo,4,4
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
	.long	.LCFI27-.LCFI25
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
	.long	.LCFI28-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI31-.LCFI29
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
	.long	.LCFI32-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI35-.LCFI33
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
	.long	.LCFI36-.LFB24
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI40-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI43-.LCFI41
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
	.long	.LCFI44-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI47-.LCFI45
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
	.long	.LCFI48-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI49-.LCFI48
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI51-.LCFI49
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
	.long	.LCFI56-.LCFI53
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE26:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/rtl.h"
	.file 4 "../../../kg++fe/gnu/machmode.h"
	.file 5 "../../../kg++fe/gnu/bitmap.h"
	.file 6 "../../../kg++fe/gnu/tree.h"
	.file 7 "../../../kg++fe/gnu/hashtable.h"
	.file 8 "../../../kg++fe/gnu/location.h"
	.file 9 "../../../kg++fe/gnu/function.h"
	.file 10 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 11 "../../../kg++fe/omp_types.h"
	.file 12 "../../../kg++fe/gnu/basic-block.h"
	.file 13 "../../../kg++fe/gnu/sbitmap.h"
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.section	.debug_info
	.long	0x6b5e
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/sibcall.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
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
	.byte	0x84
	.long	0x6e4
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x3
	.byte	0x87
	.long	0x49b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x3
	.byte	0x8e
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x3
	.byte	0x91
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x3
	.byte	0x99
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x3
	.byte	0xa2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x3
	.byte	0xb4
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x3
	.byte	0xbb
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x3
	.byte	0xc0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x3
	.byte	0xc9
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x3
	.byte	0xce
	.long	0x1303
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
	.byte	0xf2
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf3
	.long	0x1313
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
	.long	0x2d1
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x6
	.value	0x887
	.long	0x4cb4
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x6
	.value	0x888
	.long	0x4fd3
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x6
	.value	0x889
	.long	0x501b
	.uleb128 0x9
	.string	"vector"
	.byte	0x6
	.value	0x88a
	.long	0x513e
	.uleb128 0x9
	.string	"string"
	.byte	0x6
	.value	0x88b
	.long	0x507c
	.uleb128 0x9
	.string	"complex"
	.byte	0x6
	.value	0x88c
	.long	0x50e9
	.uleb128 0x9
	.string	"identifier"
	.byte	0x6
	.value	0x88d
	.long	0x51c4
	.uleb128 0x9
	.string	"decl"
	.byte	0x6
	.value	0x88e
	.long	0x587a
	.uleb128 0x9
	.string	"type"
	.byte	0x6
	.value	0x88f
	.long	0x5429
	.uleb128 0x9
	.string	"list"
	.byte	0x6
	.value	0x890
	.long	0x51fb
	.uleb128 0x9
	.string	"vec"
	.byte	0x6
	.value	0x891
	.long	0x5242
	.uleb128 0x9
	.string	"exp"
	.byte	0x6
	.value	0x892
	.long	0x5293
	.uleb128 0x9
	.string	"block"
	.byte	0x6
	.value	0x893
	.long	0x52df
	.uleb128 0x9
	.string	"omp"
	.byte	0x6
	.value	0x895
	.long	0x6254
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d7
	.uleb128 0xa
	.long	0x2dc
	.uleb128 0xb
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.long	0x3bd
	.string	"mips_args"
	.byte	0x40
	.byte	0xa
	.value	0xaaa
	.uleb128 0xd
	.string	"gp_reg_found"
	.byte	0xa
	.value	0xaad
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"arg_number"
	.byte	0xa
	.value	0xab0
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"num_gprs"
	.byte	0xa
	.value	0xab5
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"num_fprs"
	.byte	0xa
	.value	0xab8
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stack_words"
	.byte	0xa
	.value	0xabb
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"fp_code"
	.byte	0xa
	.value	0xac8
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"prototype"
	.byte	0xa
	.value	0xacb
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"num_adjusts"
	.byte	0xa
	.value	0xad3
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"adjust"
	.byte	0xa
	.value	0xad4
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xe
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	0x3d4
	.long	0x9c
	.uleb128 0x10
	.long	0x3d4
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
	.long	0x2eb
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
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2dc
	.uleb128 0x3
	.byte	0x4
	.long	0x490
	.uleb128 0xa
	.long	0x3f3
	.uleb128 0x3
	.byte	0x4
	.long	0x3f3
	.uleb128 0x13
	.long	0x6e4
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.uleb128 0x14
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x14
	.string	"BImode"
	.sleb128 1
	.uleb128 0x14
	.string	"QImode"
	.sleb128 2
	.uleb128 0x14
	.string	"HImode"
	.sleb128 3
	.uleb128 0x14
	.string	"SImode"
	.sleb128 4
	.uleb128 0x14
	.string	"DImode"
	.sleb128 5
	.uleb128 0x14
	.string	"TImode"
	.sleb128 6
	.uleb128 0x14
	.string	"OImode"
	.sleb128 7
	.uleb128 0x14
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x14
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x14
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x14
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x14
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x14
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x14
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x14
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x14
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x14
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x14
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x14
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x14
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x14
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x14
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x14
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x14
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x14
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x14
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x14
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x14
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x14
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x14
	.string	"COImode"
	.sleb128 30
	.uleb128 0x14
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x14
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x14
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x14
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x14
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x14
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x14
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x14
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x14
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x14
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x14
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x14
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x14
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x14
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x14
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x14
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x14
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x14
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x14
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x14
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x14
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x14
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x14
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x14
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x13
	.long	0xeb3
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x29
	.uleb128 0x14
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x14
	.string	"NIL"
	.sleb128 1
	.uleb128 0x14
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x14
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x14
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x14
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x14
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x14
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x14
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x14
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x14
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x14
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x14
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x14
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x14
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x14
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x14
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x14
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x14
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x14
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x14
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x14
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x14
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x14
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x14
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x14
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x14
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x14
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x14
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x14
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x14
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x14
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x14
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x14
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x14
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x14
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x14
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x14
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x14
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x14
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x14
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x14
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x14
	.string	"INSN"
	.sleb128 42
	.uleb128 0x14
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x14
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x14
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x14
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x14
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x14
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x14
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x14
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x14
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x14
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x14
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x14
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x14
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x14
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x14
	.string	"SET"
	.sleb128 57
	.uleb128 0x14
	.string	"USE"
	.sleb128 58
	.uleb128 0x14
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x14
	.string	"CALL"
	.sleb128 60
	.uleb128 0x14
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x14
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x14
	.string	"RESX"
	.sleb128 63
	.uleb128 0x14
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x14
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x14
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x14
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x14
	.string	"CONST"
	.sleb128 68
	.uleb128 0x14
	.string	"PC"
	.sleb128 69
	.uleb128 0x14
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x14
	.string	"REG"
	.sleb128 71
	.uleb128 0x14
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x14
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x14
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x14
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x14
	.string	"MEM"
	.sleb128 76
	.uleb128 0x14
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x14
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x14
	.string	"CC0"
	.sleb128 79
	.uleb128 0x14
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x14
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x14
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x14
	.string	"COND"
	.sleb128 83
	.uleb128 0x14
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x14
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x14
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x14
	.string	"NEG"
	.sleb128 87
	.uleb128 0x14
	.string	"MULT"
	.sleb128 88
	.uleb128 0x14
	.string	"DIV"
	.sleb128 89
	.uleb128 0x14
	.string	"MOD"
	.sleb128 90
	.uleb128 0x14
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x14
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x14
	.string	"AND"
	.sleb128 93
	.uleb128 0x14
	.string	"IOR"
	.sleb128 94
	.uleb128 0x14
	.string	"XOR"
	.sleb128 95
	.uleb128 0x14
	.string	"NOT"
	.sleb128 96
	.uleb128 0x14
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x14
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x14
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x14
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x14
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x14
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x14
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x14
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x14
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x14
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x14
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x14
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x14
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x14
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x14
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x14
	.string	"NE"
	.sleb128 112
	.uleb128 0x14
	.string	"EQ"
	.sleb128 113
	.uleb128 0x14
	.string	"GE"
	.sleb128 114
	.uleb128 0x14
	.string	"GT"
	.sleb128 115
	.uleb128 0x14
	.string	"LE"
	.sleb128 116
	.uleb128 0x14
	.string	"LT"
	.sleb128 117
	.uleb128 0x14
	.string	"GEU"
	.sleb128 118
	.uleb128 0x14
	.string	"GTU"
	.sleb128 119
	.uleb128 0x14
	.string	"LEU"
	.sleb128 120
	.uleb128 0x14
	.string	"LTU"
	.sleb128 121
	.uleb128 0x14
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x14
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x14
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x14
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x14
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x14
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x14
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x14
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x14
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x14
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x14
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x14
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x14
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x14
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x14
	.string	"FIX"
	.sleb128 136
	.uleb128 0x14
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x14
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x14
	.string	"ABS"
	.sleb128 139
	.uleb128 0x14
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x14
	.string	"FFS"
	.sleb128 141
	.uleb128 0x14
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x14
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x14
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x14
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x14
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x14
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x14
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x14
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x14
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x14
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x14
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x14
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x14
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x14
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x14
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x14
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x14
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x14
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x14
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x14
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x14
	.string	"PHI"
	.sleb128 162
	.uleb128 0x14
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x15
	.long	0xf8d
	.byte	0x4
	.byte	0x3
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x49
	.long	0x3bd
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x3
	.byte	0x4b
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x3
	.byte	0x4c
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x3
	.byte	0x4e
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x3
	.byte	0x50
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x3
	.byte	0x52
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x3
	.byte	0x55
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x3
	.byte	0x57
	.long	0x3bd
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
	.long	0xeb3
	.uleb128 0x16
	.long	0x1004
	.long	.LASF2
	.byte	0x18
	.byte	0x3
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x63
	.long	0x44b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x64
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x65
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x66
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x67
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x17
	.long	.LASF2
	.byte	0x3
	.byte	0x68
	.long	0xfa8
	.uleb128 0x7
	.long	0x10e1
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x6d
	.uleb128 0x18
	.string	"rtwint"
	.byte	0x3
	.byte	0x6e
	.long	0x44b
	.uleb128 0x18
	.string	"rtint"
	.byte	0x3
	.byte	0x6f
	.long	0x2e4
	.uleb128 0x18
	.string	"rtuint"
	.byte	0x3
	.byte	0x70
	.long	0x3bd
	.uleb128 0x18
	.string	"rtstr"
	.byte	0x3
	.byte	0x71
	.long	0x2d1
	.uleb128 0x18
	.string	"rtx"
	.byte	0x3
	.byte	0x72
	.long	0x9c
	.uleb128 0x18
	.string	"rtvec"
	.byte	0x3
	.byte	0x73
	.long	0x19d
	.uleb128 0x18
	.string	"rttype"
	.byte	0x3
	.byte	0x74
	.long	0x49b
	.uleb128 0x18
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x75
	.long	0xf8d
	.uleb128 0x18
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x76
	.long	0x10f5
	.uleb128 0x18
	.string	"rtbit"
	.byte	0x3
	.byte	0x77
	.long	0x115d
	.uleb128 0x18
	.string	"rttree"
	.byte	0x3
	.byte	0x78
	.long	0x1e5
	.uleb128 0x18
	.string	"bb"
	.byte	0x3
	.byte	0x79
	.long	0x12e8
	.uleb128 0x18
	.string	"rtmem"
	.byte	0x3
	.byte	0x7a
	.long	0x12ee
	.byte	0x0
	.uleb128 0x19
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x10e1
	.uleb128 0x4
	.long	0x115d
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x77
	.uleb128 0x6
	.string	"first"
	.byte	0x5
	.byte	0x3d
	.long	0x1438
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x1438
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x10fb
	.uleb128 0x4
	.long	0x12e8
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x79
	.uleb128 0x6
	.string	"head"
	.byte	0xc
	.byte	0xb5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0xc
	.byte	0xb5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0xc
	.byte	0xb8
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0xc
	.byte	0xb9
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0xc
	.byte	0xbc
	.long	0x158b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0xc
	.byte	0xbc
	.long	0x158b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0xc
	.byte	0xc1
	.long	0x14bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0xc
	.byte	0xc5
	.long	0x14bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0xc
	.byte	0xcb
	.long	0x14bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0xc
	.byte	0xcd
	.long	0x14bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0xc
	.byte	0xd0
	.long	0x482
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0xc
	.byte	0xd3
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0xc
	.byte	0xd6
	.long	0x12e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0xc
	.byte	0xd6
	.long	0x12e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0xc
	.byte	0xd9
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0xc
	.byte	0xdc
	.long	0x1807
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0xc
	.byte	0xdf
	.long	0x14c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0xc
	.byte	0xe2
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0xc
	.byte	0xe5
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1163
	.uleb128 0x3
	.byte	0x4
	.long	0x1004
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x7c
	.long	0x100f
	.uleb128 0xf
	.long	0x1313
	.long	0x12f4
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1323
	.long	0x9c
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9c
	.uleb128 0x1a
	.long	0x137b
	.byte	0x4
	.byte	0x3
	.value	0x8d4
	.uleb128 0x14
	.string	"sibcall_use_normal"
	.sleb128 1
	.uleb128 0x14
	.string	"sibcall_use_tail_recursion"
	.sleb128 2
	.uleb128 0x14
	.string	"sibcall_use_sibcall"
	.sleb128 3
	.byte	0x0
	.uleb128 0x11
	.string	"sibcall_use_t"
	.byte	0x3
	.value	0x8d8
	.long	0x1329
	.uleb128 0xf
	.long	0x13a1
	.long	0x45c
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x41a
	.uleb128 0x4
	.long	0x140c
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x6
	.string	"next"
	.byte	0x5
	.byte	0x35
	.long	0x140c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x5
	.byte	0x36
	.long	0x140c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x1412
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x13b4
	.uleb128 0xf
	.long	0x1422
	.long	0x13a1
	.uleb128 0x10
	.long	0x3d4
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x13b4
	.uleb128 0x3
	.byte	0x4
	.long	0x1422
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x115d
	.uleb128 0x4
	.long	0x14a6
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0xd
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0xd
	.byte	0x21
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0xd
	.byte	0x22
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0xd
	.byte	0x23
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0xd
	.byte	0x24
	.long	0x1391
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xd
	.byte	0x25
	.long	0x14b5
	.uleb128 0x3
	.byte	0x4
	.long	0x144c
	.uleb128 0x2
	.string	"regset"
	.byte	0xc
	.byte	0x22
	.long	0x143e
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0xc
	.byte	0x75
	.long	0x44b
	.uleb128 0x4
	.long	0x1585
	.string	"edge_def"
	.byte	0x28
	.byte	0xc
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0xc
	.byte	0x7a
	.long	0x1585
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0xc
	.byte	0x7a
	.long	0x1585
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0xc
	.byte	0x7d
	.long	0x12e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0xc
	.byte	0x7d
	.long	0x12e8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0xc
	.byte	0x80
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0xc
	.byte	0x83
	.long	0x482
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0xc
	.byte	0x85
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0xc
	.byte	0x86
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0xc
	.byte	0x87
	.long	0x14c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x14da
	.uleb128 0x2
	.string	"edge"
	.byte	0xc
	.byte	0x89
	.long	0x1585
	.uleb128 0x4
	.long	0x1807
	.string	"loop"
	.byte	0x80
	.byte	0xc
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0xc
	.value	0x176
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"header"
	.byte	0xc
	.value	0x179
	.long	0x180d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0xc
	.value	0x17c
	.long	0x180d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0xc
	.value	0x17f
	.long	0x180d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0xc
	.value	0x184
	.long	0x1820
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0xc
	.value	0x187
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"first"
	.byte	0xc
	.value	0x18b
	.long	0x180d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0xc
	.value	0x18f
	.long	0x180d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0xc
	.value	0x192
	.long	0x14a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"num_nodes"
	.byte	0xc
	.value	0x195
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0xc
	.value	0x198
	.long	0x1820
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"num_entries"
	.byte	0xc
	.value	0x19b
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0xc
	.value	0x19e
	.long	0x1820
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"num_exits"
	.byte	0xc
	.value	0x1a1
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0xc
	.value	0x1a4
	.long	0x14a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0xc
	.value	0x1a7
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0xc
	.value	0x1aa
	.long	0x1826
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0xc
	.value	0x1ae
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0xc
	.value	0x1b1
	.long	0x1807
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0xc
	.value	0x1b4
	.long	0x1807
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"next"
	.byte	0xc
	.value	0x1b7
	.long	0x1807
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0xc
	.value	0x1ba
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0xc
	.value	0x1bd
	.long	0x482
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"vtop"
	.byte	0xc
	.value	0x1c3
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0xc
	.value	0x1c7
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0xc
	.value	0x1ca
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0xc
	.value	0x1cd
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0xc
	.value	0x1d1
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0xc
	.value	0x1d4
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0xc
	.value	0x1d7
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0xc
	.value	0x1e2
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"exit_count"
	.byte	0xc
	.value	0x1e6
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1597
	.uleb128 0x2
	.string	"basic_block"
	.byte	0xc
	.byte	0xe6
	.long	0x12e8
	.uleb128 0x3
	.byte	0x4
	.long	0x158b
	.uleb128 0x3
	.byte	0x4
	.long	0x1807
	.uleb128 0x4
	.long	0x1892
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x9
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0x9
	.byte	0x18
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0x9
	.byte	0x19
	.long	0x49b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0x9
	.byte	0x1a
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0x9
	.byte	0x1b
	.long	0x1892
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x182c
	.uleb128 0x16
	.long	0x18e1
	.long	.LASF3
	.byte	0x10
	.byte	0x9
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0x9
	.byte	0x26
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0x9
	.byte	0x27
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x9
	.byte	0x28
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0x9
	.byte	0x29
	.long	0x18e1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1898
	.uleb128 0x4
	.long	0x1a36
	.string	"emit_status"
	.byte	0x34
	.byte	0x9
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0x9
	.byte	0x3a
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0x9
	.byte	0x3d
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0x9
	.byte	0x44
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0x9
	.byte	0x45
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x9
	.byte	0x4a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.long	.LASF3
	.byte	0x9
	.byte	0x50
	.long	0x18e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0x9
	.byte	0x54
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0x9
	.byte	0x58
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0x9
	.byte	0x59
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0x9
	.byte	0x5f
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0x9
	.byte	0x65
	.long	0x495
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0x9
	.byte	0x69
	.long	0x1a36
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0x9
	.byte	0x70
	.long	0x1323
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e5
	.uleb128 0x4
	.long	0x1b1c
	.string	"expr_status"
	.byte	0x1c
	.byte	0x9
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0x9
	.byte	0x80
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0x9
	.byte	0x91
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0x9
	.byte	0x97
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0x9
	.byte	0x9c
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0x9
	.byte	0x9f
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0x9
	.byte	0xa2
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0x9
	.byte	0xa5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1c
	.long	0x1b86
	.long	.LASF5
	.byte	0x4
	.byte	0x9
	.value	0x1f1
	.uleb128 0x14
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x14
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x14
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1d
	.long	0x2545
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x19
	.uleb128 0x6
	.string	"eh"
	.byte	0x9
	.byte	0xb5
	.long	0x2551
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0x9
	.byte	0xb6
	.long	0x2565
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0x9
	.byte	0xb7
	.long	0x256b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0x9
	.byte	0xb8
	.long	0x2571
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0x9
	.byte	0xb9
	.long	0x2587
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"name"
	.byte	0x9
	.byte	0xbe
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"decl"
	.byte	0x9
	.byte	0xc1
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0x9
	.byte	0xc4
	.long	0x258d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0x9
	.byte	0xc9
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"args_size"
	.byte	0x9
	.byte	0xce
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0x9
	.byte	0xd3
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0x9
	.byte	0xd7
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0x9
	.byte	0xdb
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0x9
	.byte	0xdf
	.long	0x3db
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0x9
	.byte	0xe5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0x9
	.byte	0xe8
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0x9
	.byte	0xec
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0x9
	.byte	0xf0
	.long	0x25aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0x9
	.byte	0xf3
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0x9
	.byte	0xf8
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x9
	.byte	0xfe
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x9
	.value	0x102
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x9
	.value	0x107
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"x_cleanup_label"
	.byte	0x9
	.value	0x10d
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.string	"x_return_label"
	.byte	0x9
	.value	0x112
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.string	"computed_goto_common_label"
	.byte	0x9
	.value	0x115
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"computed_goto_common_reg"
	.byte	0x9
	.value	0x116
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"x_save_expr_regs"
	.byte	0x9
	.value	0x11a
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"x_stack_slot_list"
	.byte	0x9
	.value	0x11e
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.string	"x_rtl_expr_chain"
	.byte	0x9
	.value	0x121
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"x_tail_recursion_label"
	.byte	0x9
	.value	0x125
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.string	"x_tail_recursion_reentry"
	.byte	0x9
	.value	0x128
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.string	"x_arg_pointer_save_area"
	.byte	0x9
	.value	0x12e
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"x_clobber_return_insn"
	.byte	0x9
	.value	0x133
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"x_frame_offset"
	.byte	0x9
	.value	0x138
	.long	0x44b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"x_context_display"
	.byte	0x9
	.value	0x13d
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"x_trampoline_list"
	.byte	0x9
	.value	0x146
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"x_parm_birth_insn"
	.byte	0x9
	.value	0x149
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"x_last_parm_insn"
	.byte	0x9
	.value	0x14d
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"x_max_parm_reg"
	.byte	0x9
	.value	0x151
	.long	0x3bd
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"x_parm_reg_stack_loc"
	.byte	0x9
	.value	0x157
	.long	0x1323
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0x9
	.value	0x15a
	.long	0x25bc
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"x_temp_slot_level"
	.byte	0x9
	.value	0x15d
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"x_var_temp_slot_level"
	.byte	0x9
	.value	0x160
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"x_target_temp_slot_level"
	.byte	0x9
	.value	0x166
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"fixup_var_refs_queue"
	.byte	0x9
	.value	0x16a
	.long	0x1892
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"inlinable"
	.byte	0x9
	.value	0x16d
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"no_debugging_symbols"
	.byte	0x9
	.value	0x16e
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xd
	.string	"original_arg_vector"
	.byte	0x9
	.value	0x16f
	.long	0x19d
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"original_decl_initial"
	.byte	0x9
	.value	0x170
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.string	"inl_last_parm_insn"
	.byte	0x9
	.value	0x173
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.string	"inl_max_label_num"
	.byte	0x9
	.value	0x175
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"funcdef_no"
	.byte	0x9
	.value	0x178
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.string	"machine"
	.byte	0x9
	.value	0x17d
	.long	0x25d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.string	"stack_alignment_needed"
	.byte	0x9
	.value	0x17f
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.string	"preferred_stack_boundary"
	.byte	0x9
	.value	0x181
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xd
	.string	"language"
	.byte	0x9
	.value	0x184
	.long	0x25ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.string	"epilogue_delay_list"
	.byte	0x9
	.value	0x18a
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1e
	.string	"returns_struct"
	.byte	0x9
	.value	0x190
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"returns_pcc_struct"
	.byte	0x9
	.value	0x194
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"returns_pointer"
	.byte	0x9
	.value	0x197
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"needs_context"
	.byte	0x9
	.value	0x19a
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_setjmp"
	.byte	0x9
	.value	0x19d
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_longjmp"
	.byte	0x9
	.value	0x1a0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_alloca"
	.byte	0x9
	.value	0x1a4
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_eh_return"
	.byte	0x9
	.value	0x1a7
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_nonlocal_label"
	.byte	0x9
	.value	0x1ab
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_nonlocal_goto"
	.byte	0x9
	.value	0x1af
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"contains_functions"
	.byte	0x9
	.value	0x1b2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_computed_jump"
	.byte	0x9
	.value	0x1b5
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"is_thunk"
	.byte	0x9
	.value	0x1ba
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"all_throwers_are_sibcalls"
	.byte	0x9
	.value	0x1c1
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"instrument_entry_exit"
	.byte	0x9
	.value	0x1c5
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"arc_profile"
	.byte	0x9
	.value	0x1c8
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"profile"
	.byte	0x9
	.value	0x1cb
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"limit_stack"
	.byte	0x9
	.value	0x1cf
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"stdarg"
	.byte	0x9
	.value	0x1d2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"x_whole_function_mode_p"
	.byte	0x9
	.value	0x1d8
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x9
	.value	0x1e1
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_const_pool"
	.byte	0x9
	.value	0x1e4
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_pic_offset_table"
	.byte	0x9
	.value	0x1e7
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_eh_lsda"
	.byte	0x9
	.value	0x1ea
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"arg_pointer_save_area_init"
	.byte	0x9
	.value	0x1ed
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.long	.LASF5
	.byte	0x9
	.value	0x1fa
	.long	0x1b1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"max_jumptable_ents"
	.byte	0x9
	.value	0x1fe
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x19
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2545
	.uleb128 0x19
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2557
	.uleb128 0x3
	.byte	0x4
	.long	0x1a3c
	.uleb128 0x3
	.byte	0x4
	.long	0x18e7
	.uleb128 0x19
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2577
	.uleb128 0x3
	.byte	0x4
	.long	0x1b86
	.uleb128 0x19
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2593
	.uleb128 0x19
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x25b0
	.uleb128 0x19
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x25c2
	.uleb128 0x19
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x25db
	.uleb128 0x4
	.long	0x2627
	.string	"location_s"
	.byte	0x8
	.byte	0x8
	.byte	0x1c
	.uleb128 0x6
	.string	"file"
	.byte	0x8
	.byte	0x1e
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line"
	.byte	0x8
	.byte	0x21
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x8
	.byte	0x23
	.long	0x25f5
	.uleb128 0x13
	.long	0x2f5b
	.string	"tree_code"
	.byte	0x4
	.byte	0x6
	.byte	0x25
	.uleb128 0x14
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x14
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x14
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x14
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x14
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x14
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x14
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x14
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x14
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x14
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x14
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x14
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x14
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x14
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x14
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x14
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x14
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x14
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x14
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x14
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x14
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x14
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x14
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x14
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x14
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x14
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x14
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x14
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x14
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x14
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x14
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x14
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x14
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x14
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x14
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x14
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x14
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x14
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x14
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x14
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x14
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x14
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x14
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x14
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x14
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x14
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x14
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x14
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x14
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x14
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x14
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x14
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x14
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x14
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x14
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x14
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x14
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x14
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x14
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x14
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x14
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x14
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x14
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x14
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x14
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x14
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x14
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x14
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x14
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x14
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x14
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x14
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x14
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x14
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x14
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x14
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x14
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x14
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x14
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x14
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x14
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x14
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x14
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x14
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x14
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x14
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x14
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x14
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x14
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x14
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x14
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x14
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x14
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x14
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x14
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x14
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x14
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x14
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x14
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x14
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x14
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x14
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x14
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x14
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x14
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x14
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x14
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x14
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x14
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x14
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x14
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x14
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x14
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x14
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x14
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x14
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x14
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x14
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x14
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x14
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x14
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x14
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x14
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x14
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x14
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x14
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x14
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x14
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x14
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x14
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x14
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x14
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x14
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x14
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x14
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x14
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x14
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x14
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x14
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x14
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x14
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x14
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x14
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x14
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x14
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x14
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x14
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x14
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x14
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x14
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x14
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x14
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x6
	.byte	0x2f
	.long	0x3bd
	.uleb128 0x4
	.long	0x2fab
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x6
	.byte	0x30
	.uleb128 0x6
	.string	"block"
	.byte	0x6
	.byte	0x30
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset"
	.byte	0x6
	.byte	0x30
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x6
	.byte	0x34
	.long	0x2fb5
	.uleb128 0x19
	.string	"st"
	.byte	0x1
	.uleb128 0x20
	.long	0x300a
	.long	.LASF6
	.byte	0x4
	.byte	0x6
	.byte	0x58
	.uleb128 0x14
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x14
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x14
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x14
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x13
	.long	0x4cb4
	.string	"built_in_function"
	.byte	0x4
	.byte	0x6
	.byte	0x67
	.uleb128 0x14
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x14
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x14
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x14
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x14
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x14
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x14
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x14
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x14
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x14
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x14
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x14
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x14
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x14
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x14
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x14
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x14
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x14
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x14
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x14
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x14
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x14
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x14
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x14
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x14
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x14
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x14
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x14
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x14
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x14
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x14
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x14
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x14
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x14
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x14
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x14
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x14
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x14
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x14
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x14
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x14
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x14
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x14
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x14
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x14
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x14
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x14
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x14
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x14
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x14
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x14
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x14
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x14
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x14
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x14
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x14
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x14
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x14
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x14
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x14
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x14
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x14
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x14
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x14
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x14
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x14
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x14
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x14
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x14
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x14
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x14
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x14
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x14
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x14
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x14
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x14
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x14
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x14
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x14
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x14
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x14
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x14
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x14
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x14
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x14
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x14
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x14
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x14
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x14
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x14
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x14
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x14
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x14
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x14
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x14
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x14
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x14
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x14
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x14
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x14
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x14
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x14
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x14
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x14
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x14
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x14
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x14
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x14
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x14
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x14
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x14
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x14
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x14
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x14
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x14
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x14
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x14
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x14
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x14
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x14
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x14
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x14
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x14
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x14
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x14
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x14
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x14
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x14
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x14
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x14
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x14
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x14
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x14
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x14
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x14
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x14
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x14
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x14
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x14
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x14
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x14
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x14
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x14
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x14
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x14
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x14
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x14
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x14
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x14
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x14
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x14
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x14
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x14
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x14
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x14
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x14
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x14
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x14
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x14
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x14
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x14
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x14
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x14
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x14
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x14
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x14
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x14
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x14
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x14
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x14
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x14
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x14
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x14
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x14
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x14
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x14
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x14
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x14
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x14
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x14
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x14
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x14
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x14
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x14
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x14
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x14
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x14
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x14
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x14
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x14
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x14
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x14
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x14
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x14
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x14
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x14
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x14
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x14
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x14
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x14
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x14
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x14
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x14
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x14
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x14
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x14
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x14
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x14
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x14
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x14
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x14
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x14
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x14
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x14
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x14
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x14
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x14
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x14
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x14
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x14
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x14
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x14
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x14
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x14
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x14
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x14
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x14
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x14
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x14
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x14
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x14
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x14
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x14
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x14
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x14
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x14
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x14
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x14
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x14
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x14
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x14
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x14
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x14
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x14
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x14
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x14
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x14
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x14
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x14
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x14
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x14
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x14
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x14
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x14
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x14
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x14
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x14
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x14
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x14
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x14
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x14
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x14
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x14
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x14
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x14
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x14
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x14
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x14
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x14
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x14
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x14
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x14
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x14
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x14
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x14
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x14
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x14
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x14
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x14
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x14
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x14
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x14
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x14
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x14
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x14
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x14
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x14
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x14
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x14
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x14
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x14
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x14
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x14
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x14
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x14
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x14
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x14
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x14
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x14
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x14
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x14
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x14
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x14
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x14
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x14
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x14
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x14
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x14
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x14
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x14
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x14
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x14
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x14
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x14
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x14
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x14
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x14
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x4f97
	.string	"tree_common"
	.byte	0x10
	.byte	0x6
	.byte	0x8c
	.uleb128 0x6
	.string	"chain"
	.byte	0x6
	.byte	0x8d
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type"
	.byte	0x6
	.byte	0x8e
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x6
	.byte	0x90
	.long	0x2639
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"side_effects_flag"
	.byte	0x6
	.byte	0x92
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"constant_flag"
	.byte	0x6
	.byte	0x93
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"addressable_flag"
	.byte	0x6
	.byte	0x94
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"volatile_flag"
	.byte	0x6
	.byte	0x95
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"readonly_flag"
	.byte	0x6
	.byte	0x96
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unsigned_flag"
	.byte	0x6
	.byte	0x97
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"asm_written_flag"
	.byte	0x6
	.byte	0x98
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"not_emitted_by_gxx"
	.byte	0x6
	.byte	0x9a
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"used_flag"
	.byte	0x6
	.byte	0x9f
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"nothrow_flag"
	.byte	0x6
	.byte	0xa0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"static_flag"
	.byte	0x6
	.byte	0xa1
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"public_flag"
	.byte	0x6
	.byte	0xa2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"private_flag"
	.byte	0x6
	.byte	0xa3
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"protected_flag"
	.byte	0x6
	.byte	0xa4
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"bounded_flag"
	.byte	0x6
	.byte	0xa5
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"deprecated_flag"
	.byte	0x6
	.byte	0xa6
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x21
	.long	.LASF7
	.byte	0x6
	.byte	0xa8
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x21
	.long	.LASF8
	.byte	0x6
	.byte	0xa9
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x21
	.long	.LASF9
	.byte	0x6
	.byte	0xaa
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x21
	.long	.LASF10
	.byte	0x6
	.byte	0xab
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x21
	.long	.LASF11
	.byte	0x6
	.byte	0xac
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x21
	.long	.LASF12
	.byte	0x6
	.byte	0xad
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x21
	.long	.LASF13
	.byte	0x6
	.byte	0xae
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x21
	.long	.LASF14
	.byte	0x6
	.byte	0xb0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"sbuf"
	.byte	0x6
	.byte	0xb5
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"sdram"
	.byte	0x6
	.byte	0xb6
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v1buf"
	.byte	0x6
	.byte	0xb7
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v2buf"
	.byte	0x6
	.byte	0xb8
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v4buf"
	.byte	0x6
	.byte	0xb9
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x4fd3
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x6
	.value	0x30a
	.uleb128 0xd
	.string	"low"
	.byte	0x6
	.value	0x30b
	.long	0x45c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"high"
	.byte	0x6
	.value	0x30c
	.long	0x44b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x501b
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x6
	.value	0x303
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x6
	.value	0x304
	.long	0x4cb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x305
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"int_cst"
	.byte	0x6
	.value	0x30d
	.long	0x4f97
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x5069
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x6
	.value	0x31f
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x6
	.value	0x320
	.long	0x4cb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x321
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real_cst_ptr"
	.byte	0x6
	.value	0x322
	.long	0x5076
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x19
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5069
	.uleb128 0xc
	.long	0x50e3
	.string	"tree_string"
	.byte	0x20
	.byte	0x6
	.value	0x333
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x6
	.value	0x334
	.long	0x4cb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x335
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"length"
	.byte	0x6
	.value	0x336
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"pointer"
	.byte	0x6
	.value	0x337
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"st"
	.byte	0x6
	.value	0x339
	.long	0x50e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2fab
	.uleb128 0xc
	.long	0x513e
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x6
	.value	0x342
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x6
	.value	0x343
	.long	0x4cb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x344
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real"
	.byte	0x6
	.value	0x345
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"imag"
	.byte	0x6
	.value	0x346
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xc
	.long	0x5186
	.string	"tree_vector"
	.byte	0x18
	.byte	0x6
	.value	0x355
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x6
	.value	0x356
	.long	0x4cb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x357
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"elements"
	.byte	0x6
	.value	0x358
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x16
	.long	0x51c4
	.long	.LASF15
	.byte	0xc
	.byte	0x7
	.byte	0x19
	.uleb128 0x6
	.string	"str"
	.byte	0x7
	.byte	0x1c
	.long	0x48a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0x7
	.byte	0x1d
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"hash_value"
	.byte	0x7
	.byte	0x1e
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x51fb
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x6
	.value	0x376
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x6
	.value	0x377
	.long	0x4cb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"id"
	.byte	0x6
	.value	0x378
	.long	0x5186
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x5242
	.string	"tree_list"
	.byte	0x18
	.byte	0x6
	.value	0x380
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x6
	.value	0x381
	.long	0x4cb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"purpose"
	.byte	0x6
	.value	0x382
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"value"
	.byte	0x6
	.value	0x383
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x5283
	.string	"tree_vec"
	.byte	0x18
	.byte	0x6
	.value	0x38e
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x6
	.value	0x38f
	.long	0x4cb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"length"
	.byte	0x6
	.value	0x390
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"a"
	.byte	0x6
	.value	0x391
	.long	0x5283
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x5293
	.long	0x1e5
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x52df
	.string	"tree_exp"
	.byte	0x18
	.byte	0x6
	.value	0x3d4
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x6
	.value	0x3d5
	.long	0x4cb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"complexity"
	.byte	0x6
	.value	0x3d6
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"operands"
	.byte	0x6
	.value	0x3d9
	.long	0x5283
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x53cf
	.string	"tree_block"
	.byte	0x2c
	.byte	0x6
	.value	0x40a
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x6
	.value	0x40b
	.long	0x4cb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.string	"handler_block_flag"
	.byte	0x6
	.value	0x40d
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x22
	.long	.LASF16
	.byte	0x6
	.value	0x40e
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.string	"block_num"
	.byte	0x6
	.value	0x40f
	.long	0x3bd
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"vars"
	.byte	0x6
	.value	0x411
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"subblocks"
	.byte	0x6
	.value	0x412
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"supercontext"
	.byte	0x6
	.value	0x413
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1f
	.long	.LASF17
	.byte	0x6
	.value	0x414
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"fragment_origin"
	.byte	0x6
	.value	0x415
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"fragment_chain"
	.byte	0x6
	.value	0x416
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x23
	.long	0x5416
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x6
	.value	0x570
	.uleb128 0x9
	.string	"address"
	.byte	0x6
	.value	0x571
	.long	0x2e4
	.uleb128 0x9
	.string	"pointer"
	.byte	0x6
	.value	0x572
	.long	0x484
	.uleb128 0x9
	.string	"die"
	.byte	0x6
	.value	0x573
	.long	0x5423
	.byte	0x0
	.uleb128 0x19
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5416
	.uleb128 0xc
	.long	0x5777
	.string	"tree_type"
	.byte	0x74
	.byte	0x6
	.value	0x551
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x6
	.value	0x552
	.long	0x4cb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"values"
	.byte	0x6
	.value	0x553
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"size"
	.byte	0x6
	.value	0x554
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1f
	.long	.LASF18
	.byte	0x6
	.value	0x555
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1f
	.long	.LASF19
	.byte	0x6
	.value	0x556
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"uid"
	.byte	0x6
	.value	0x557
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"precision"
	.byte	0x6
	.value	0x559
	.long	0x3bd
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"mode"
	.byte	0x6
	.value	0x55a
	.long	0x49b
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"string_flag"
	.byte	0x6
	.value	0x55c
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"no_force_blk_flag"
	.byte	0x6
	.value	0x55d
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"needs_constructing_flag"
	.byte	0x6
	.value	0x55e
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"transparent_union_flag"
	.byte	0x6
	.value	0x55f
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"packed_flag"
	.byte	0x6
	.value	0x560
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"restrict_flag"
	.byte	0x6
	.value	0x561
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF20
	.byte	0x6
	.value	0x562
	.long	0x3bd
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF7
	.byte	0x6
	.value	0x564
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF8
	.byte	0x6
	.value	0x565
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF9
	.byte	0x6
	.value	0x566
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF10
	.byte	0x6
	.value	0x567
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF11
	.byte	0x6
	.value	0x568
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF12
	.byte	0x6
	.value	0x569
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF13
	.byte	0x6
	.value	0x56a
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF21
	.byte	0x6
	.value	0x56b
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"align"
	.byte	0x6
	.value	0x56d
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"pointer_to"
	.byte	0x6
	.value	0x56e
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"reference_to"
	.byte	0x6
	.value	0x56f
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"symtab"
	.byte	0x6
	.value	0x574
	.long	0x53cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"name"
	.byte	0x6
	.value	0x576
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"minval"
	.byte	0x6
	.value	0x577
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"maxval"
	.byte	0x6
	.value	0x578
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"next_variant"
	.byte	0x6
	.value	0x579
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"main_variant"
	.byte	0x6
	.value	0x57a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"binfo"
	.byte	0x6
	.value	0x57b
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"context"
	.byte	0x6
	.value	0x57c
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"alias_set"
	.byte	0x6
	.value	0x57d
	.long	0x44b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1f
	.long	.LASF22
	.byte	0x6
	.value	0x57f
	.long	0x5783
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"ty_idx"
	.byte	0x6
	.value	0x581
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"field_ids_used"
	.byte	0x6
	.value	0x582
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"dst_id"
	.byte	0x6
	.value	0x583
	.long	0x2f6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"extra_methods"
	.byte	0x6
	.value	0x58a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x19
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5777
	.uleb128 0xc
	.long	0x57ce
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x6
	.value	0x817
	.uleb128 0x1e
	.string	"align"
	.byte	0x6
	.value	0x818
	.long	0x3bd
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.string	"off_align"
	.byte	0x6
	.value	0x819
	.long	0x3bd
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x5803
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x6
	.value	0x80e
	.uleb128 0x9
	.string	"f"
	.byte	0x6
	.value	0x811
	.long	0x300a
	.uleb128 0x9
	.string	"i"
	.byte	0x6
	.value	0x814
	.long	0x44b
	.uleb128 0x9
	.string	"a"
	.byte	0x6
	.value	0x81a
	.long	0x5789
	.byte	0x0
	.uleb128 0x23
	.long	0x5842
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x6
	.value	0x837
	.uleb128 0x9
	.string	"f"
	.byte	0x6
	.value	0x838
	.long	0x258d
	.uleb128 0x9
	.string	"r"
	.byte	0x6
	.value	0x839
	.long	0x9c
	.uleb128 0x9
	.string	"t"
	.byte	0x6
	.value	0x83a
	.long	0x1e5
	.uleb128 0x9
	.string	"i"
	.byte	0x6
	.value	0x83b
	.long	0x2e4
	.byte	0x0
	.uleb128 0x24
	.long	0x587a
	.byte	0x4
	.byte	0x6
	.value	0x84e
	.uleb128 0x9
	.string	"st"
	.byte	0x6
	.value	0x84f
	.long	0x50e3
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x6
	.value	0x850
	.long	0x2f5b
	.uleb128 0x9
	.string	"field_id"
	.byte	0x6
	.value	0x851
	.long	0x3bd
	.byte	0x0
	.uleb128 0xc
	.long	0x5fc4
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x6
	.value	0x7c5
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x6
	.value	0x7c6
	.long	0x4cb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"locus"
	.byte	0x6
	.value	0x7c7
	.long	0x2627
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"uid"
	.byte	0x6
	.value	0x7c8
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"size"
	.byte	0x6
	.value	0x7c9
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1e
	.string	"mode"
	.byte	0x6
	.value	0x7ca
	.long	0x49b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"external_flag"
	.byte	0x6
	.value	0x7cc
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"nonlocal_flag"
	.byte	0x6
	.value	0x7cd
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"regdecl_flag"
	.byte	0x6
	.value	0x7ce
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"inline_flag"
	.byte	0x6
	.value	0x7cf
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"bit_field_flag"
	.byte	0x6
	.value	0x7d0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"virtual_flag"
	.byte	0x6
	.value	0x7d1
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"ignored_flag"
	.byte	0x6
	.value	0x7d2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.long	.LASF16
	.byte	0x6
	.value	0x7d3
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"sbuf_flag"
	.byte	0x6
	.value	0x7d7
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"sdram_flag"
	.byte	0x6
	.value	0x7d8
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"v1buf_flag"
	.byte	0x6
	.value	0x7d9
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"v2buf_flag"
	.byte	0x6
	.value	0x7da
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"v4buf_flag"
	.byte	0x6
	.value	0x7db
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"in_system_header_flag"
	.byte	0x6
	.value	0x7df
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"common_flag"
	.byte	0x6
	.value	0x7e0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"defer_output"
	.byte	0x6
	.value	0x7e1
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"transparent_union"
	.byte	0x6
	.value	0x7e2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"static_ctor_flag"
	.byte	0x6
	.value	0x7e3
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"static_dtor_flag"
	.byte	0x6
	.value	0x7e4
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"artificial_flag"
	.byte	0x6
	.value	0x7e5
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"weak_flag"
	.byte	0x6
	.value	0x7e6
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"non_addr_const_p"
	.byte	0x6
	.value	0x7e8
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"no_instrument_function_entry_exit"
	.byte	0x6
	.value	0x7e9
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"comdat_flag"
	.byte	0x6
	.value	0x7ea
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"malloc_flag"
	.byte	0x6
	.value	0x7eb
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"no_limit_stack"
	.byte	0x6
	.value	0x7ec
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF6
	.byte	0x6
	.value	0x7ed
	.long	0x2fba
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"pure_flag"
	.byte	0x6
	.value	0x7ee
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF20
	.byte	0x6
	.value	0x7f0
	.long	0x3bd
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"non_addressable"
	.byte	0x6
	.value	0x7f1
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF21
	.byte	0x6
	.value	0x7f2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"uninlinable"
	.byte	0x6
	.value	0x7f3
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"thread_local_flag"
	.byte	0x6
	.value	0x7f4
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"inlined_function_flag"
	.byte	0x6
	.value	0x7f5
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"threadprivate_flag"
	.byte	0x6
	.value	0x7f7
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF7
	.byte	0x6
	.value	0x7fa
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF8
	.byte	0x6
	.value	0x7fb
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF9
	.byte	0x6
	.value	0x7fc
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF10
	.byte	0x6
	.value	0x7fd
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF11
	.byte	0x6
	.value	0x7fe
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF12
	.byte	0x6
	.value	0x7ff
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF13
	.byte	0x6
	.value	0x800
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF14
	.byte	0x6
	.value	0x801
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"syscall_linkage_flag"
	.byte	0x6
	.value	0x804
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"widen_retval_flag"
	.byte	0x6
	.value	0x805
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"emitted_by_gxx"
	.byte	0x6
	.value	0x808
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"u1"
	.byte	0x6
	.value	0x81b
	.long	0x57ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1f
	.long	.LASF18
	.byte	0x6
	.value	0x81d
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"name"
	.byte	0x6
	.value	0x81e
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"context"
	.byte	0x6
	.value	0x81f
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"arguments"
	.byte	0x6
	.value	0x820
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"result"
	.byte	0x6
	.value	0x821
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"initial"
	.byte	0x6
	.value	0x822
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"initial_2"
	.byte	0x6
	.value	0x824
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"alias_target"
	.byte	0x6
	.value	0x825
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"thunk_delta"
	.byte	0x6
	.value	0x829
	.long	0x44b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1f
	.long	.LASF17
	.byte	0x6
	.value	0x82b
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"assembler_name"
	.byte	0x6
	.value	0x82c
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"section_name"
	.byte	0x6
	.value	0x82d
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1f
	.long	.LASF19
	.byte	0x6
	.value	0x82e
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x82f
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"live_range_rtl"
	.byte	0x6
	.value	0x830
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"u2"
	.byte	0x6
	.value	0x83c
	.long	0x5803
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"saved_tree"
	.byte	0x6
	.value	0x83f
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"inlined_fns"
	.byte	0x6
	.value	0x843
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"vindex"
	.byte	0x6
	.value	0x845
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"pointer_alias_set"
	.byte	0x6
	.value	0x846
	.long	0x44b
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x1f
	.long	.LASF22
	.byte	0x6
	.value	0x848
	.long	0x5fd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x1e
	.string	"symtab_idx"
	.byte	0x6
	.value	0x84b
	.long	0x3bd
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x1e
	.string	"label_defined"
	.byte	0x6
	.value	0x84c
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"sgi_u1"
	.byte	0x6
	.value	0x852
	.long	0x5842
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"decl_dst_id"
	.byte	0x6
	.value	0x858
	.long	0x2f6c
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"sl_model_name"
	.byte	0x6
	.value	0x85c
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0x19
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5fc4
	.uleb128 0x13
	.long	0x6254
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xb
	.byte	0x1d
	.uleb128 0x14
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x14
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x14
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x14
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x14
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x14
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x14
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x14
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x14
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x14
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x14
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x14
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x14
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x14
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x14
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x14
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x14
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x14
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x14
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x14
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x14
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x14
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x14
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x14
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x14
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x14
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x14
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x14
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x14
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x14
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x14
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x14
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x14
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x14
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x14
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0xc
	.long	0x62a3
	.string	"tree_omp"
	.byte	0x18
	.byte	0x6
	.value	0x864
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x6
	.value	0x865
	.long	0x4cb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"choice"
	.byte	0x6
	.value	0x866
	.long	0x5fd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"omp_clause_list"
	.byte	0x6
	.value	0x867
	.long	0x482
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xb
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x25
	.long	0x6357
	.string	"identify_call_return_value"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.long	0x2e4
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x26
	.string	"cp"
	.byte	0x1
	.byte	0x3d
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"p_hard_return"
	.byte	0x1
	.byte	0x3e
	.long	0x1323
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"p_soft_return"
	.byte	0x1
	.byte	0x3e
	.long	0x1323
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF23
	.byte	0x1
	.byte	0x40
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.byte	0x40
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"hard"
	.byte	0x1
	.byte	0x40
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"soft"
	.byte	0x1
	.byte	0x40
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x25
	.long	0x63ee
	.string	"skip_copy_to_return_value"
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.long	0x9c
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x29
	.long	.LASF24
	.byte	0x1
	.byte	0x90
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF23
	.byte	0x1
	.byte	0x92
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.byte	0x92
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"hardret"
	.byte	0x1
	.byte	0x93
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"softret"
	.byte	0x1
	.byte	0x93
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.byte	0xc2
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x644b
	.string	"skip_use_of_return_value"
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.long	0x9c
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x29
	.long	.LASF24
	.byte	0x1
	.byte	0xdd
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"code"
	.byte	0x1
	.byte	0xde
	.long	0x6e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF23
	.byte	0x1
	.byte	0xe0
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x25
	.long	0x64c1
	.string	"skip_unreturned_value"
	.byte	0x1
	.byte	0xf3
	.byte	0x1
	.long	0x9c
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x29
	.long	.LASF24
	.byte	0x1
	.byte	0xf2
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF23
	.byte	0x1
	.byte	0xf4
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x28
	.string	"set_insn"
	.byte	0x1
	.byte	0xfd
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.byte	0xfe
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x651e
	.string	"skip_stack_adjustment"
	.byte	0x1
	.value	0x112
	.byte	0x1
	.long	0x9c
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2c
	.long	.LASF24
	.byte	0x1
	.value	0x111
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF23
	.byte	0x1
	.value	0x113
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.string	"set"
	.byte	0x1
	.value	0x113
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x6576
	.string	"skip_pic_restore"
	.byte	0x1
	.value	0x12b
	.byte	0x1
	.long	0x9c
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x2c
	.long	.LASF24
	.byte	0x1
	.value	0x12a
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF23
	.byte	0x1
	.value	0x12c
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.string	"set"
	.byte	0x1
	.value	0x12c
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x65bd
	.string	"skip_jump_insn"
	.byte	0x1
	.value	0x13f
	.byte	0x1
	.long	0x9c
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2c
	.long	.LASF24
	.byte	0x1
	.value	0x13e
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF23
	.byte	0x1
	.value	0x140
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x661b
	.string	"call_ends_block_p"
	.byte	0x1
	.value	0x153
	.byte	0x1
	.long	0x2e4
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2c
	.long	.LASF23
	.byte	0x1
	.value	0x151
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"end"
	.byte	0x1
	.value	0x152
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"new_insn"
	.byte	0x1
	.value	0x154
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x668a
	.string	"uses_addressof"
	.byte	0x1
	.value	0x18d
	.byte	0x1
	.long	0x2e4
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x18c
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"code"
	.byte	0x1
	.value	0x18e
	.long	0x6e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x18f
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x18f
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.string	"fmt"
	.byte	0x1
	.value	0x190
	.long	0x2d1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x66da
	.string	"sequence_uses_addressof"
	.byte	0x1
	.value	0x1bc
	.byte	0x1
	.long	0x2e4
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2f
	.string	"seq"
	.byte	0x1
	.value	0x1bb
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF23
	.byte	0x1
	.value	0x1bd
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x672f
	.string	"purge_reg_equiv_notes"
	.byte	0x1
	.value	0x1dc
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2d
	.long	.LASF23
	.byte	0x1
	.value	0x1dd
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2e
	.string	"note"
	.byte	0x1
	.value	0x1e3
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x67a5
	.string	"purge_mem_unchanging_flag"
	.byte	0x1
	.value	0x1f5
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x1f4
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"code"
	.byte	0x1
	.value	0x1f6
	.long	0x6e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x1f7
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x1f7
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.string	"fmt"
	.byte	0x1
	.value	0x1f8
	.long	0x2d1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0x680c
	.byte	0x1
	.string	"replace_call_placeholder"
	.byte	0x1
	.value	0x21e
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x2c
	.long	.LASF23
	.byte	0x1
	.value	0x21c
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"use"
	.byte	0x1
	.value	0x21d
	.long	0x137b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"__FUNCTION__"
	.long	0x69be
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12650
	.byte	0x0
	.uleb128 0x31
	.long	0x69ae
	.byte	0x1
	.string	"optimize_sibling_and_tail_recursive_calls"
	.byte	0x1
	.value	0x23d
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x2d
	.long	.LASF23
	.byte	0x1
	.value	0x23e
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"insns"
	.byte	0x1
	.value	0x23e
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.string	"alternate_exit"
	.byte	0x1
	.value	0x23f
	.long	0x180d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"no_sibcalls_this_function"
	.byte	0x1
	.value	0x240
	.long	0x62a3
	.byte	0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x2e
	.string	"successful_replacement"
	.byte	0x1
	.value	0x241
	.long	0x62a3
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2e
	.string	"replaced_call_placeholder"
	.byte	0x1
	.value	0x242
	.long	0x62a3
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2e
	.string	"e"
	.byte	0x1
	.value	0x243
	.long	0x158b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	0x6935
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2d
	.long	.LASF23
	.byte	0x1
	.value	0x25e
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2e
	.string	"set"
	.byte	0x1
	.value	0x269
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x6985
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2e
	.string	"sibcall"
	.byte	0x1
	.value	0x29f
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"tailrecursion"
	.byte	0x1
	.value	0x2a0
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.string	"call_block"
	.byte	0x1
	.value	0x2a1
	.long	0x180d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2d
	.long	.LASF23
	.byte	0x1
	.value	0x2d3
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.string	"arg"
	.byte	0x1
	.value	0x2d4
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x69be
	.long	0x2dc
	.uleb128 0x10
	.long	0x3d4
	.byte	0x18
	.byte	0x0
	.uleb128 0xa
	.long	0x69ae
	.uleb128 0x28
	.string	"return_value_pseudo"
	.byte	0x1
	.byte	0x27
	.long	0x9c
	.byte	0x5
	.byte	0x3
	.long	return_value_pseudo
	.uleb128 0xf
	.long	0x69f4
	.long	0x3f3
	.uleb128 0x10
	.long	0x3d4
	.byte	0xa2
	.byte	0x0
	.uleb128 0x34
	.string	"rtx_length"
	.byte	0x3
	.byte	0x36
	.long	0x6a08
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x69e4
	.uleb128 0xf
	.long	0x6a1d
	.long	0x2d1
	.uleb128 0x10
	.long	0x3d4
	.byte	0xa2
	.byte	0x0
	.uleb128 0x34
	.string	"rtx_format"
	.byte	0x3
	.byte	0x3c
	.long	0x6a31
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x6a0d
	.uleb128 0xf
	.long	0x6a46
	.long	0x2dc
	.uleb128 0x10
	.long	0x3d4
	.byte	0xa2
	.byte	0x0
	.uleb128 0x34
	.string	"rtx_class"
	.byte	0x3
	.byte	0x3f
	.long	0x6a59
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x6a36
	.uleb128 0xf
	.long	0x6a6e
	.long	0x9c
	.uleb128 0x10
	.long	0x3d4
	.byte	0x80
	.byte	0x0
	.uleb128 0x35
	.string	"const_int_rtx"
	.byte	0x3
	.value	0x69e
	.long	0x6a5e
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x6a96
	.long	0x9c
	.uleb128 0x10
	.long	0x3d4
	.byte	0xa
	.byte	0x0
	.uleb128 0x35
	.string	"global_rtl"
	.byte	0x3
	.value	0x6df
	.long	0x6a86
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"pic_offset_table_rtx"
	.byte	0x3
	.value	0x6ed
	.long	0x9c
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"n_basic_blocks"
	.byte	0xc
	.byte	0xf2
	.long	0x2e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"tail_recursion_label_list"
	.byte	0xc
	.value	0x119
	.long	0x9c
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x6b16
	.long	0x1163
	.uleb128 0x10
	.long	0x3d4
	.byte	0x1
	.byte	0x0
	.uleb128 0x35
	.string	"entry_exit_blocks"
	.byte	0xc
	.value	0x139
	.long	0x6b06
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"cfun"
	.byte	0x9
	.value	0x202
	.long	0x258d
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"current_function_decl"
	.byte	0x6
	.value	0xc07
	.long	0x1e5
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x21
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x32
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
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
	.long	0x59
	.value	0x2
	.long	.Ldebug_info0
	.long	0x6b62
	.long	0x67a5
	.string	"replace_call_placeholder"
	.long	0x680c
	.string	"optimize_sibling_and_tail_recursive_calls"
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
.LASF0:
	.string	"common"
.LASF6:
	.string	"built_in_class"
.LASF23:
	.string	"insn"
.LASF17:
	.string	"abstract_origin"
.LASF20:
	.string	"pointer_depth"
.LASF16:
	.string	"abstract_flag"
.LASF15:
	.string	"ht_identifier"
.LASF2:
	.string	"mem_attrs"
.LASF18:
	.string	"size_unit"
.LASF22:
	.string	"lang_specific"
.LASF3:
	.string	"sequence_stack"
.LASF11:
	.string	"lang_flag_4"
.LASF13:
	.string	"lang_flag_6"
.LASF9:
	.string	"lang_flag_2"
.LASF12:
	.string	"lang_flag_5"
.LASF14:
	.string	"lang_flag_7"
.LASF21:
	.string	"user_align"
.LASF19:
	.string	"attributes"
.LASF7:
	.string	"lang_flag_0"
.LASF8:
	.string	"lang_flag_1"
.LASF10:
	.string	"lang_flag_3"
.LASF5:
	.string	"function_frequency"
.LASF4:
	.string	"sequence_rtl_expr"
.LASF24:
	.string	"orig_insn"
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
