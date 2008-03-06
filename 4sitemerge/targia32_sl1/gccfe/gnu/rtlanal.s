	.file	"rtlanal.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl rtx_unstable_p
	.type	rtx_unstable_p, @function
rtx_unstable_p:
.LFB15:
	.file 1 "../../../kgccfe/gnu/rtlanal.c"
	.loc 1 58 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$32, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 59 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 63 0
	movl	-20(%ebp), %eax
	subl	$51, %eax
	movl	%eax, -32(%ebp)
	cmpl	$30, -32(%ebp)
	ja	.L2
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	.L8@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L8:
	.long	.L3@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L2@GOTOFF
	.long	.L4@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L5@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L2@GOTOFF
	.long	.L6@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L2@GOTOFF
	.long	.L4@GOTOFF
	.long	.L7@GOTOFF
	.text
.L6:
	.loc 1 66 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L9
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	rtx_unstable_p@PLT
	testl	%eax, %eax
	je	.L11
.L9:
	movl	$1, -24(%ebp)
	jmp	.L12
.L11:
	movl	$0, -24(%ebp)
.L12:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L13
.L7:
	.loc 1 69 0
	movl	$1, -28(%ebp)
	jmp	.L13
.L4:
	.loc 1 78 0
	movl	$0, -28(%ebp)
	jmp	.L13
.L5:
	.loc 1 82 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L14
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L14
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L17
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L14
.L17:
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L19
.L14:
	.loc 1 86 0
	movl	$0, -28(%ebp)
	jmp	.L13
.L19:
	.loc 1 91 0
	movl	pic_offset_table_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jne	.L20
	.loc 1 92 0
	movl	$0, -28(%ebp)
	jmp	.L13
.L20:
	.loc 1 94 0
	movl	$1, -28(%ebp)
	jmp	.L13
.L3:
	.loc 1 97 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2
	.loc 1 98 0
	movl	$1, -28(%ebp)
	jmp	.L13
.L2:
	.loc 1 106 0
	movl	-20(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 107 0
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L23
.L24:
	.loc 1 108 0
	movl	-16(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L25
	.loc 1 110 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	rtx_unstable_p@PLT
	testl	%eax, %eax
	je	.L29
	.loc 1 111 0
	movl	$1, -28(%ebp)
	jmp	.L13
.L25:
	.loc 1 113 0
	movl	-16(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L29
.LBB2:
	.loc 1 116 0
	movl	$0, -8(%ebp)
	jmp	.L31
.L32:
	.loc 1 117 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	rtx_unstable_p@PLT
	testl	%eax, %eax
	je	.L33
	.loc 1 118 0
	movl	$1, -28(%ebp)
	jmp	.L13
.L33:
	.loc 1 116 0
	addl	$1, -8(%ebp)
.L31:
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L32
.L29:
.LBE2:
	.loc 1 107 0
	subl	$1, -16(%ebp)
.L23:
	cmpl	$0, -16(%ebp)
	jns	.L24
	.loc 1 121 0
	movl	$0, -28(%ebp)
.L13:
	movl	-28(%ebp), %eax
	.loc 1 122 0
	addl	$32, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	rtx_unstable_p, .-rtx_unstable_p
.globl rtx_varies_p
	.type	rtx_varies_p, @function
rtx_varies_p:
.LFB16:
	.loc 1 135 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$40, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 136 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 140 0
	movl	-20(%ebp), %eax
	subl	$51, %eax
	movl	%eax, -36(%ebp)
	cmpl	$94, -36(%ebp)
	ja	.L38
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	.L45@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L45:
	.long	.L39@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L40@GOTOFF
	.long	.L40@GOTOFF
	.long	.L40@GOTOFF
	.long	.L38@GOTOFF
	.long	.L40@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L41@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L42@GOTOFF
	.long	.L40@GOTOFF
	.long	.L40@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L43@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L44@GOTOFF
	.text
.L42:
	.loc 1 143 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L46
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_varies_p@PLT
	testl	%eax, %eax
	je	.L48
.L46:
	movl	$1, -28(%ebp)
	jmp	.L49
.L48:
	movl	$0, -28(%ebp)
.L49:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L50
.L43:
	.loc 1 146 0
	movl	$1, -32(%ebp)
	jmp	.L50
.L40:
	.loc 1 154 0
	movl	$0, -32(%ebp)
	jmp	.L50
.L41:
	.loc 1 161 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L51
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L51
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L54
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L54
.L51:
	.loc 1 164 0
	movl	$0, -32(%ebp)
	jmp	.L50
.L54:
	.loc 1 165 0
	movl	pic_offset_table_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jne	.L56
	.loc 1 174 0
	movl	$0, -32(%ebp)
	jmp	.L50
.L56:
	.loc 1 175 0
	movl	$1, -32(%ebp)
	jmp	.L50
.L44:
	.loc 1 181 0
	cmpl	$0, 12(%ebp)
	jne	.L58
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_varies_p@PLT
	testl	%eax, %eax
	jne	.L60
.L58:
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_varies_p@PLT
	testl	%eax, %eax
	je	.L61
.L60:
	movl	$1, -24(%ebp)
	jmp	.L62
.L61:
	movl	$0, -24(%ebp)
.L62:
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L50
.L39:
	.loc 1 185 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L38
	.loc 1 186 0
	movl	$1, -32(%ebp)
	jmp	.L50
.L38:
	.loc 1 194 0
	movl	-20(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 195 0
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L64
.L65:
	.loc 1 196 0
	movl	-16(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L66
	.loc 1 198 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_varies_p@PLT
	testl	%eax, %eax
	je	.L70
	.loc 1 199 0
	movl	$1, -32(%ebp)
	jmp	.L50
.L66:
	.loc 1 201 0
	movl	-16(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L70
.LBB3:
	.loc 1 204 0
	movl	$0, -8(%ebp)
	jmp	.L72
.L73:
	.loc 1 205 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_varies_p@PLT
	testl	%eax, %eax
	je	.L74
	.loc 1 206 0
	movl	$1, -32(%ebp)
	jmp	.L50
.L74:
	.loc 1 204 0
	addl	$1, -8(%ebp)
.L72:
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L73
.L70:
.LBE3:
	.loc 1 195 0
	subl	$1, -16(%ebp)
.L64:
	cmpl	$0, -16(%ebp)
	jns	.L65
	.loc 1 209 0
	movl	$0, -32(%ebp)
.L50:
	movl	-32(%ebp), %eax
	.loc 1 210 0
	addl	$40, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	rtx_varies_p, .-rtx_varies_p
.globl rtx_addr_can_trap_p
	.type	rtx_addr_can_trap_p, @function
rtx_addr_can_trap_p:
.LFB17:
	.loc 1 217 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$32, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 218 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -8(%ebp)
	.loc 1 220 0
	movl	-8(%ebp), %eax
	subl	$68, %eax
	movl	%eax, -32(%ebp)
	cmpl	$77, -32(%ebp)
	ja	.L79
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	.L87@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L87:
	.long	.L80@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L81@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L82@GOTOFF
	.long	.L83@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L84@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L85@GOTOFF
	.long	.L85@GOTOFF
	.long	.L85@GOTOFF
	.long	.L85@GOTOFF
	.long	.L86@GOTOFF
	.long	.L85@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L79@GOTOFF
	.long	.L86@GOTOFF
	.text
.L83:
	.loc 1 223 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$6, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	jmp	.L88
.L82:
	.loc 1 226 0
	movl	$0, -28(%ebp)
	jmp	.L88
.L81:
	.loc 1 230 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L89
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L89
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L89
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L93
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L93
.L89:
	.loc 1 234 0
	movl	$0, -28(%ebp)
	jmp	.L88
.L93:
	.loc 1 236 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L95
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$180, %eax
	ja	.L95
	.loc 1 238 0
	movl	$0, -28(%ebp)
	jmp	.L88
.L95:
	.loc 1 239 0
	movl	$1, -28(%ebp)
	jmp	.L88
.L80:
	.loc 1 242 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	rtx_addr_can_trap_p@PLT
	movl	%eax, -28(%ebp)
	jmp	.L88
.L84:
	.loc 1 248 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	rtx_addr_can_trap_p@PLT
	testl	%eax, %eax
	jne	.L98
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L100
.L98:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	pic_offset_table_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L101
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L100
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L100
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L100
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L100
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L100
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L100
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L100
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L100
.L101:
	movl	$1, -24(%ebp)
	jmp	.L110
.L100:
	movl	$0, -24(%ebp)
.L110:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L88
.L86:
	.loc 1 255 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	rtx_addr_can_trap_p@PLT
	movl	%eax, -28(%ebp)
	jmp	.L88
.L85:
	.loc 1 262 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	rtx_addr_can_trap_p@PLT
	movl	%eax, -28(%ebp)
	jmp	.L88
.L79:
	.loc 1 269 0
	movl	$1, -28(%ebp)
.L88:
	movl	-28(%ebp), %eax
	.loc 1 270 0
	addl	$32, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	rtx_addr_can_trap_p, .-rtx_addr_can_trap_p
.globl rtx_addr_varies_p
	.type	rtx_addr_varies_p, @function
rtx_addr_varies_p:
.LFB18:
	.loc 1 282 0
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
	.loc 1 287 0
	cmpl	$0, 8(%ebp)
	jne	.L113
	.loc 1 288 0
	movl	$0, -28(%ebp)
	jmp	.L115
.L113:
	.loc 1 290 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 291 0
	cmpl	$76, -20(%ebp)
	jne	.L116
	.loc 1 292 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L118
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_varies_p@PLT
	testl	%eax, %eax
	je	.L120
.L118:
	movl	$1, -24(%ebp)
	jmp	.L121
.L120:
	movl	$0, -24(%ebp)
.L121:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L115
.L116:
	.loc 1 294 0
	movl	-20(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 295 0
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L122
.L123:
	.loc 1 296 0
	movl	-16(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L124
	.loc 1 298 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_addr_varies_p@PLT
	testl	%eax, %eax
	je	.L128
	.loc 1 299 0
	movl	$1, -28(%ebp)
	jmp	.L115
.L124:
	.loc 1 301 0
	movl	-16(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L128
.LBB4:
	.loc 1 304 0
	movl	$0, -8(%ebp)
	jmp	.L130
.L131:
	.loc 1 305 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_addr_varies_p@PLT
	testl	%eax, %eax
	je	.L132
	.loc 1 306 0
	movl	$1, -28(%ebp)
	jmp	.L115
.L132:
	.loc 1 304 0
	addl	$1, -8(%ebp)
.L130:
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L131
.L128:
.LBE4:
	.loc 1 295 0
	subl	$1, -16(%ebp)
.L122:
	cmpl	$0, -16(%ebp)
	jns	.L123
	.loc 1 308 0
	movl	$0, -28(%ebp)
.L115:
	movl	-28(%ebp), %eax
	.loc 1 309 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	rtx_addr_varies_p, .-rtx_addr_varies_p
.globl get_integer_term
	.type	get_integer_term, @function
get_integer_term:
.LFB19:
	.loc 1 319 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%edi
.LCFI18:
	pushl	%esi
.LCFI19:
	subl	$8, %esp
.LCFI20:
	.loc 1 320 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L137
	.loc 1 321 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L137:
	.loc 1 323 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	jne	.L139
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L139
	.loc 1 325 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	%esi, -16(%ebp)
	movl	%edi, -12(%ebp)
	jmp	.L142
.L139:
	.loc 1 326 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L143
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L143
	.loc 1 328 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -16(%ebp)
	movl	%ecx, -12(%ebp)
	jmp	.L142
.L143:
	.loc 1 329 0
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
.L142:
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	.loc 1 330 0
	addl	$8, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	get_integer_term, .-get_integer_term
.globl get_related_value
	.type	get_related_value, @function
get_related_value:
.LFB20:
	.loc 1 339 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	subl	$4, %esp
.LCFI23:
	.loc 1 340 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L148
	.loc 1 341 0
	movl	$0, -4(%ebp)
	jmp	.L150
.L148:
	.loc 1 342 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 343 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L151
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L151
	.loc 1 345 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L150
.L151:
	.loc 1 346 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	jne	.L154
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L154
	.loc 1 348 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L150
.L154:
	.loc 1 349 0
	movl	$0, -4(%ebp)
.L150:
	movl	-4(%ebp), %eax
	.loc 1 350 0
	leave
	ret
.LFE20:
	.size	get_related_value, .-get_related_value
.globl get_jump_table_offset
	.type	get_jump_table_offset, @function
get_jump_table_offset:
.LFB21:
	.loc 1 363 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$84, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 374 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L159
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L159
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L159
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L159
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L164
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L159
.L164:
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L166
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L168
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L170
.L168:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	single_set_2@PLT
	movl	%eax, -60(%ebp)
.L170:
	movl	-60(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L171
.L166:
	movl	$0, -64(%ebp)
.L171:
	movl	-64(%ebp), %eax
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	.L172
.L159:
	.loc 1 381 0
	movl	$0, -56(%ebp)
	jmp	.L173
.L172:
	.loc 1 383 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 387 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	jne	.L174
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L174
	.loc 1 389 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
.L174:
	.loc 1 392 0
	movl	$0, -20(%ebp)
	jmp	.L177
.L178:
	.loc 1 393 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	leal	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_last_value@PLT
	movl	%eax, -24(%ebp)
.L177:
	.loc 1 392 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L179
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L178
.L179:
	.loc 1 399 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L181
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L183
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	jne	.L181
.L183:
	.loc 1 402 0
	movl	$0, -8(%ebp)
	jmp	.L185
.L186:
	.loc 1 404 0
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 405 0
	movl	-8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, -16(%ebp)
	.loc 1 407 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L187
	movl	pic_offset_table_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -16(%ebp)
	je	.L187
	.loc 1 410 0
	movl	$0, -12(%ebp)
	jmp	.L190
.L191:
	.loc 1 411 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	find_last_value@PLT
	movl	%eax, -16(%ebp)
.L190:
	.loc 1 410 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L192
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	.L191
.L192:
	.loc 1 414 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L194
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L187
.L194:
	.loc 1 402 0
	addl	$1, -8(%ebp)
.L185:
	cmpl	$1, -8(%ebp)
	jle	.L186
.L187:
	.loc 1 418 0
	cmpl	$1, -8(%ebp)
	jle	.L196
	.loc 1 419 0
	movl	$0, -56(%ebp)
	jmp	.L173
.L196:
	.loc 1 421 0
	movl	$1, %eax
	movl	%eax, %edx
	subl	-8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, -24(%ebp)
	.loc 1 423 0
	movl	$0, -20(%ebp)
	jmp	.L198
.L199:
	.loc 1 424 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	leal	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_last_value@PLT
	movl	%eax, -24(%ebp)
.L198:
	.loc 1 423 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L181
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L199
.L181:
	.loc 1 429 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$130, %ax
	je	.L201
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$131, %ax
	jne	.L203
.L201:
	.loc 1 431 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 433 0
	movl	$0, -20(%ebp)
	jmp	.L204
.L205:
	.loc 1 434 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	leal	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_last_value@PLT
	movl	%eax, -24(%ebp)
.L204:
	.loc 1 433 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L203
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L205
.L203:
	.loc 1 439 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L207
	.loc 1 440 0
	movl	$0, -56(%ebp)
	jmp	.L173
.L207:
	.loc 1 443 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 445 0
	movl	$0, -20(%ebp)
	jmp	.L209
.L210:
	.loc 1 446 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	leal	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_last_value@PLT
	movl	%eax, -24(%ebp)
.L209:
	.loc 1 445 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L211
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L210
.L211:
	.loc 1 450 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L213
	.loc 1 451 0
	movl	$0, -56(%ebp)
	jmp	.L173
.L213:
	.loc 1 457 0
	movl	$0, -8(%ebp)
	jmp	.L215
.L216:
	.loc 1 459 0
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 460 0
	movl	-8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, -16(%ebp)
	.loc 1 462 0
	movl	$0, -12(%ebp)
	jmp	.L217
.L218:
	.loc 1 463 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	find_last_value@PLT
	movl	%eax, -16(%ebp)
.L217:
	.loc 1 462 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L219
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	.L218
.L219:
	.loc 1 466 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L221
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L223
.L221:
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L224
.L223:
	.loc 1 457 0
	addl	$1, -8(%ebp)
.L215:
	cmpl	$1, -8(%ebp)
	jle	.L216
.L224:
	.loc 1 471 0
	cmpl	$1, -8(%ebp)
	jle	.L225
	.loc 1 472 0
	movl	$0, -56(%ebp)
	jmp	.L173
.L225:
	.loc 1 474 0
	movl	$1, %eax
	movl	%eax, %edx
	subl	-8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, -24(%ebp)
	.loc 1 477 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L227
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	jne	.L229
.L227:
	.loc 1 478 0
	movl	$0, -8(%ebp)
	jmp	.L230
.L231:
	.loc 1 479 0
	movl	-8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	pic_offset_table_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L232
	.loc 1 481 0
	movl	$1, %eax
	movl	%eax, %edx
	subl	-8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, -24(%ebp)
	.loc 1 482 0
	jmp	.L229
.L232:
	.loc 1 478 0
	addl	$1, -8(%ebp)
.L230:
	cmpl	$1, -8(%ebp)
	jle	.L231
.L229:
	.loc 1 485 0
	cmpl	$0, 12(%ebp)
	je	.L234
	.loc 1 486 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L234:
	.loc 1 489 0
	movl	-24(%ebp), %eax
	movl	%eax, -56(%ebp)
.L173:
	movl	-56(%ebp), %eax
	.loc 1 490 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	get_jump_table_offset, .-get_jump_table_offset
	.type	global_reg_mentioned_p_1, @function
global_reg_mentioned_p_1:
.LFB22:
	.loc 1 499 0
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
	.loc 1 501 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 503 0
	cmpl	$0, -8(%ebp)
	jne	.L238
	.loc 1 504 0
	movl	$0, -24(%ebp)
	jmp	.L240
.L238:
	.loc 1 506 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$60, %eax
	movl	%eax, -28(%ebp)
	cmpl	$19, -28(%ebp)
	ja	.L241
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	.L246@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L246:
	.long	.L242@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L241@GOTOFF
	.long	.L244@GOTOFF
	.long	.L243@GOTOFF
	.long	.L245@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L241@GOTOFF
	.long	.L243@GOTOFF
	.long	.L241@GOTOFF
	.long	.L243@GOTOFF
	.text
.L245:
	.loc 1 509 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L241
	.loc 1 511 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L249
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_regno@PLT
	movl	%eax, %edx
	movl	global_regs@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	je	.L249
	.loc 1 513 0
	movl	$1, -24(%ebp)
	jmp	.L240
.L249:
	.loc 1 514 0
	movl	$0, -24(%ebp)
	jmp	.L240
.L244:
	.loc 1 519 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 520 0
	cmpl	$175, -12(%ebp)
	jg	.L252
	movl	-12(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L252
	.loc 1 521 0
	movl	$1, -24(%ebp)
	jmp	.L240
.L252:
	.loc 1 522 0
	movl	$0, -24(%ebp)
	jmp	.L240
.L243:
	.loc 1 531 0
	movl	$0, -24(%ebp)
	jmp	.L240
.L242:
	.loc 1 535 0
	movl	$1, -24(%ebp)
	jmp	.L240
.L241:
	.loc 1 541 0
	movl	$0, -24(%ebp)
.L240:
	movl	-24(%ebp), %eax
	.loc 1 542 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	global_reg_mentioned_p_1, .-global_reg_mentioned_p_1
.globl global_reg_mentioned_p
	.type	global_reg_mentioned_p, @function
global_reg_mentioned_p:
.LFB23:
	.loc 1 549 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$20, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 551 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L257
	.loc 1 553 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L259
	.loc 1 555 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L261
	.loc 1 556 0
	movl	$1, -8(%ebp)
	jmp	.L263
.L261:
	.loc 1 557 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 558 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	jne	.L257
	.loc 1 559 0
	movl	$0, -8(%ebp)
	jmp	.L263
.L259:
	.loc 1 562 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%ebp)
.L257:
	.loc 1 565 0
	movl	$0, 8(%esp)
	leal	global_reg_mentioned_p_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
	movl	%eax, -8(%ebp)
.L263:
	movl	-8(%ebp), %eax
	.loc 1 566 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	global_reg_mentioned_p, .-global_reg_mentioned_p
.globl count_occurrences
	.type	count_occurrences, @function
count_occurrences:
.LFB24:
	.loc 1 575 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	pushl	%ebx
.LCFI38:
	subl	$68, %esp
.LCFI39:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 581 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L268
	.loc 1 582 0
	movl	$1, -44(%ebp)
	jmp	.L270
.L268:
	.loc 1 584 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -16(%ebp)
	.loc 1 586 0
	movl	-16(%ebp), %eax
	subl	$46, %eax
	movl	%eax, -48(%ebp)
	cmpl	$33, -48(%ebp)
	ja	.L271
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	.L275@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L275:
	.long	.L272@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L273@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L272@GOTOFF
	.long	.L272@GOTOFF
	.long	.L272@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L272@GOTOFF
	.long	.L271@GOTOFF
	.long	.L272@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L274@GOTOFF
	.long	.L271@GOTOFF
	.long	.L272@GOTOFF
	.long	.L272@GOTOFF
	.text
.L272:
	.loc 1 596 0
	movl	$0, -44(%ebp)
	jmp	.L270
.L274:
	.loc 1 599 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L271
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L271
	.loc 1 600 0
	movl	$1, -44(%ebp)
	jmp	.L270
.L273:
	.loc 1 604 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L271
	cmpl	$0, 16(%ebp)
	jne	.L271
	.loc 1 605 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	count_occurrences@PLT
	movl	%eax, -44(%ebp)
	jmp	.L270
.L271:
	.loc 1 612 0
	movl	-16(%ebp), %eax
	movl	rtx_format@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 613 0
	movl	$0, -8(%ebp)
	.loc 1 615 0
	movl	$0, -24(%ebp)
	jmp	.L281
.L282:
	.loc 1 617 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	addl	$1, -12(%ebp)
	cmpl	$69, -40(%ebp)
	je	.L284
	cmpl	$101, -40(%ebp)
	je	.L285
	jmp	.L283
.L285:
	.loc 1 620 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	count_occurrences@PLT
	addl	%eax, -8(%ebp)
	.loc 1 621 0
	jmp	.L283
.L284:
	.loc 1 624 0
	movl	$0, -20(%ebp)
	jmp	.L286
.L287:
	.loc 1 625 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	count_occurrences@PLT
	addl	%eax, -8(%ebp)
	.loc 1 624 0
	addl	$1, -20(%ebp)
.L286:
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	.L287
.L283:
	.loc 1 615 0
	addl	$1, -24(%ebp)
.L281:
	movl	-16(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-24(%ebp), %eax
	jg	.L282
	.loc 1 629 0
	movl	-8(%ebp), %eax
	movl	%eax, -44(%ebp)
.L270:
	movl	-44(%ebp), %eax
	.loc 1 630 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	count_occurrences, .-count_occurrences
.globl reg_mentioned_p
	.type	reg_mentioned_p, @function
reg_mentioned_p:
.LFB25:
	.loc 1 639 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	pushl	%edi
.LCFI42:
	pushl	%esi
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$44, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 644 0
	cmpl	$0, 12(%ebp)
	jne	.L291
	.loc 1 645 0
	movl	$0, -40(%ebp)
	jmp	.L293
.L291:
	.loc 1 647 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L294
	.loc 1 648 0
	movl	$1, -40(%ebp)
	jmp	.L293
.L294:
	.loc 1 650 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L296
	.loc 1 651 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	jmp	.L293
.L296:
	.loc 1 653 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 655 0
	movl	-20(%ebp), %eax
	subl	$64, %eax
	movl	%eax, -44(%ebp)
	cmpl	$15, -44(%ebp)
	ja	.L298
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	.L303@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L303:
	.long	.L299@GOTOFF
	.long	.L300@GOTOFF
	.long	.L300@GOTOFF
	.long	.L298@GOTOFF
	.long	.L298@GOTOFF
	.long	.L301@GOTOFF
	.long	.L298@GOTOFF
	.long	.L302@GOTOFF
	.long	.L301@GOTOFF
	.long	.L298@GOTOFF
	.long	.L298@GOTOFF
	.long	.L298@GOTOFF
	.long	.L298@GOTOFF
	.long	.L298@GOTOFF
	.long	.L298@GOTOFF
	.long	.L301@GOTOFF
	.text
.L302:
	.loc 1 659 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L304
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L304
	movl	$1, -36(%ebp)
	jmp	.L307
.L304:
	movl	$0, -36(%ebp)
.L307:
	movl	-36(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L293
.L301:
	.loc 1 666 0
	movl	$0, -40(%ebp)
	jmp	.L293
.L299:
	.loc 1 669 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L308
	movl	12(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L308
	movl	$1, -32(%ebp)
	jmp	.L311
.L308:
	movl	$0, -32(%ebp)
.L311:
	movl	-32(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L293
.L300:
	.loc 1 674 0
	movl	$0, -40(%ebp)
	jmp	.L293
.L298:
	.loc 1 680 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-20(%ebp), %eax
	jne	.L312
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L312
	.loc 1 681 0
	movl	$1, -40(%ebp)
	jmp	.L293
.L312:
	.loc 1 683 0
	movl	-20(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 685 0
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	jmp	.L315
.L316:
	.loc 1 687 0
	movl	-24(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L317
.LBB5:
	.loc 1 690 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L319
.L320:
	.loc 1 691 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L321
	.loc 1 692 0
	movl	$1, -40(%ebp)
	jmp	.L293
.L321:
	.loc 1 690 0
	subl	$1, -16(%ebp)
.L319:
	cmpl	$0, -16(%ebp)
	jns	.L320
	jmp	.L324
.L317:
.LBE5:
	.loc 1 694 0
	movl	-24(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L324
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L324
	.loc 1 696 0
	movl	$1, -40(%ebp)
	jmp	.L293
.L324:
	.loc 1 685 0
	subl	$1, -24(%ebp)
.L315:
	cmpl	$0, -24(%ebp)
	jns	.L316
	.loc 1 698 0
	movl	$0, -40(%ebp)
.L293:
	movl	-40(%ebp), %eax
	.loc 1 699 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE25:
	.size	reg_mentioned_p, .-reg_mentioned_p
.globl no_labels_between_p
	.type	no_labels_between_p, @function
no_labels_between_p:
.LFB26:
	.loc 1 707 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	subl	$20, %esp
.LCFI48:
	.loc 1 709 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L330
	.loc 1 710 0
	movl	$0, -20(%ebp)
	jmp	.L332
.L330:
	.loc 1 711 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L333
.L334:
	.loc 1 712 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L335
	.loc 1 713 0
	movl	$0, -20(%ebp)
	jmp	.L332
.L335:
	.loc 1 711 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
.L333:
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L334
	.loc 1 714 0
	movl	$1, -20(%ebp)
.L332:
	movl	-20(%ebp), %eax
	.loc 1 715 0
	leave
	ret
.LFE26:
	.size	no_labels_between_p, .-no_labels_between_p
.globl no_jumps_between_p
	.type	no_jumps_between_p, @function
no_jumps_between_p:
.LFB27:
	.loc 1 723 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	subl	$20, %esp
.LCFI51:
	.loc 1 725 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L340
.L341:
	.loc 1 726 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L342
	.loc 1 727 0
	movl	$0, -20(%ebp)
	jmp	.L344
.L342:
	.loc 1 725 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
.L340:
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L341
	.loc 1 728 0
	movl	$1, -20(%ebp)
.L344:
	movl	-20(%ebp), %eax
	.loc 1 729 0
	leave
	ret
.LFE27:
	.size	no_jumps_between_p, .-no_jumps_between_p
.globl reg_used_between_p
	.type	reg_used_between_p, @function
reg_used_between_p:
.LFB28:
	.loc 1 737 0
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
	.loc 1 740 0
	movl	12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L348
	.loc 1 741 0
	movl	$0, -24(%ebp)
	jmp	.L350
.L348:
	.loc 1 743 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L351
.L352:
	.loc 1 744 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L353
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L355
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L353
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$58, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_fusage@PLT
	testl	%eax, %eax
	jne	.L355
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$59, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_fusage@PLT
	testl	%eax, %eax
	je	.L353
.L355:
	.loc 1 749 0
	movl	$1, -24(%ebp)
	jmp	.L350
.L353:
	.loc 1 743 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L351:
	movl	-8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L352
	.loc 1 750 0
	movl	$0, -24(%ebp)
.L350:
	movl	-24(%ebp), %eax
	.loc 1 751 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	reg_used_between_p, .-reg_used_between_p
.globl reg_referenced_p
	.type	reg_referenced_p, @function
reg_referenced_p:
.LFB29:
	.loc 1 761 0
	pushl	%ebp
.LCFI56:
	movl	%esp, %ebp
.LCFI57:
	pushl	%ebx
.LCFI58:
	subl	$68, %esp
.LCFI59:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 764 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$48, %eax
	movl	%eax, -64(%ebp)
	cmpl	$34, -64(%ebp)
	ja	.L362
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	.L372@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L372:
	.long	.L363@GOTOFF
	.long	.L364@GOTOFF
	.long	.L362@GOTOFF
	.long	.L365@GOTOFF
	.long	.L366@GOTOFF
	.long	.L366@GOTOFF
	.long	.L362@GOTOFF
	.long	.L362@GOTOFF
	.long	.L367@GOTOFF
	.long	.L368@GOTOFF
	.long	.L369@GOTOFF
	.long	.L370@GOTOFF
	.long	.L369@GOTOFF
	.long	.L362@GOTOFF
	.long	.L371@GOTOFF
	.long	.L362@GOTOFF
	.long	.L362@GOTOFF
	.long	.L362@GOTOFF
	.long	.L362@GOTOFF
	.long	.L362@GOTOFF
	.long	.L362@GOTOFF
	.long	.L362@GOTOFF
	.long	.L362@GOTOFF
	.long	.L362@GOTOFF
	.long	.L362@GOTOFF
	.long	.L362@GOTOFF
	.long	.L362@GOTOFF
	.long	.L362@GOTOFF
	.long	.L362@GOTOFF
	.long	.L362@GOTOFF
	.long	.L362@GOTOFF
	.long	.L362@GOTOFF
	.long	.L362@GOTOFF
	.long	.L362@GOTOFF
	.long	.L369@GOTOFF
	.text
.L368:
	.loc 1 767 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L373
	.loc 1 768 0
	movl	$1, -60(%ebp)
	jmp	.L375
.L373:
	.loc 1 773 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$79, %ax
	je	.L376
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	je	.L376
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L376
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L380
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L380
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L383
	movl	$7, -52(%ebp)
	jmp	.L385
.L383:
	movl	$3, -52(%ebp)
.L385:
	movl	-56(%ebp), %eax
	addl	-52(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L386
	movl	$8, -44(%ebp)
	jmp	.L388
.L386:
	movl	$4, -44(%ebp)
.L388:
	movl	-48(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-44(%ebp)
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L389
	movl	$7, -32(%ebp)
	jmp	.L391
.L389:
	movl	$3, -32(%ebp)
.L391:
	movl	-36(%ebp), %eax
	addl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L392
	movl	$8, -24(%ebp)
	jmp	.L394
.L392:
	movl	$4, -24(%ebp)
.L394:
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-24(%ebp)
	cmpl	%eax, -40(%ebp)
	je	.L376
.L380:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L376
	.loc 1 783 0
	movl	$1, -60(%ebp)
	jmp	.L375
.L376:
	.loc 1 784 0
	movl	$0, -60(%ebp)
	jmp	.L375
.L365:
	.loc 1 787 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L396
.L397:
	.loc 1 788 0
	movl	12(%ebp), %eax
	movl	28(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L398
	.loc 1 789 0
	movl	$1, -60(%ebp)
	jmp	.L375
.L398:
	.loc 1 787 0
	subl	$1, -8(%ebp)
.L396:
	cmpl	$0, -8(%ebp)
	jns	.L397
	.loc 1 790 0
	movl	$0, -60(%ebp)
	jmp	.L375
.L369:
	.loc 1 795 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	movl	%eax, -60(%ebp)
	jmp	.L375
.L371:
	.loc 1 798 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	movl	%eax, -60(%ebp)
	jmp	.L375
.L367:
	.loc 1 801 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	movl	%eax, -60(%ebp)
	jmp	.L375
.L366:
	.loc 1 805 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L401
.L402:
	.loc 1 806 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L403
	.loc 1 807 0
	movl	$1, -60(%ebp)
	jmp	.L375
.L403:
	.loc 1 805 0
	subl	$1, -8(%ebp)
.L401:
	cmpl	$0, -8(%ebp)
	jns	.L402
	.loc 1 808 0
	movl	$0, -60(%ebp)
	jmp	.L375
.L364:
	.loc 1 811 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L406
.L407:
	.loc 1 812 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_referenced_p@PLT
	testl	%eax, %eax
	je	.L408
	.loc 1 813 0
	movl	$1, -60(%ebp)
	jmp	.L375
.L408:
	.loc 1 811 0
	subl	$1, -8(%ebp)
.L406:
	cmpl	$0, -8(%ebp)
	jns	.L407
	.loc 1 814 0
	movl	$0, -60(%ebp)
	jmp	.L375
.L370:
	.loc 1 817 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L411
	.loc 1 818 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L411
	.loc 1 819 0
	movl	$1, -60(%ebp)
	jmp	.L375
.L411:
	.loc 1 820 0
	movl	$0, -60(%ebp)
	jmp	.L375
.L363:
	.loc 1 823 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L414
	.loc 1 824 0
	movl	$1, -60(%ebp)
	jmp	.L375
.L414:
	.loc 1 825 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_referenced_p@PLT
	movl	%eax, -60(%ebp)
	jmp	.L375
.L362:
	.loc 1 828 0
	movl	$0, -60(%ebp)
.L375:
	movl	-60(%ebp), %eax
	.loc 1 830 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	reg_referenced_p, .-reg_referenced_p
.globl reg_referenced_between_p
	.type	reg_referenced_between_p, @function
reg_referenced_between_p:
.LFB30:
	.loc 1 839 0
	pushl	%ebp
.LCFI60:
	movl	%esp, %ebp
.LCFI61:
	pushl	%ebx
.LCFI62:
	subl	$36, %esp
.LCFI63:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 842 0
	movl	12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L418
	.loc 1 843 0
	movl	$0, -24(%ebp)
	jmp	.L420
.L418:
	.loc 1 845 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L421
.L422:
	.loc 1 846 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L423
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_referenced_p@PLT
	testl	%eax, %eax
	jne	.L425
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L423
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$58, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_fusage@PLT
	testl	%eax, %eax
	je	.L423
.L425:
	.loc 1 850 0
	movl	$1, -24(%ebp)
	jmp	.L420
.L423:
	.loc 1 845 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L421:
	movl	-8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L422
	.loc 1 851 0
	movl	$0, -24(%ebp)
.L420:
	movl	-24(%ebp), %eax
	.loc 1 852 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	reg_referenced_between_p, .-reg_referenced_between_p
.globl reg_set_between_p
	.type	reg_set_between_p, @function
reg_set_between_p:
.LFB31:
	.loc 1 860 0
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
	.loc 1 863 0
	movl	12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L431
	.loc 1 864 0
	movl	$0, -24(%ebp)
	jmp	.L433
.L431:
	.loc 1 866 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L434
.L435:
	.loc 1 867 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L436
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	je	.L436
	.loc 1 868 0
	movl	$1, -24(%ebp)
	jmp	.L433
.L436:
	.loc 1 866 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L434:
	movl	-8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L435
	.loc 1 869 0
	movl	$0, -24(%ebp)
.L433:
	movl	-24(%ebp), %eax
	.loc 1 870 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	reg_set_between_p, .-reg_set_between_p
.globl reg_set_p
	.type	reg_set_p, @function
reg_set_p:
.LFB32:
	.loc 1 876 0
	pushl	%ebp
.LCFI68:
	movl	%esp, %ebp
.LCFI69:
	pushl	%ebx
.LCFI70:
	subl	$36, %esp
.LCFI71:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 877 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 881 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L442
	.loc 1 883 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L444
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L446
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L448
.L446:
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L448
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$59, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_fusage@PLT
	testl	%eax, %eax
	je	.L444
.L448:
	.loc 1 895 0
	movl	$1, -24(%ebp)
	jmp	.L450
.L444:
	.loc 1 897 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
.L442:
	.loc 1 900 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_of@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
.L450:
	movl	-24(%ebp), %eax
	.loc 1 901 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	reg_set_p, .-reg_set_p
.globl regs_set_between_p
	.type	regs_set_between_p, @function
regs_set_between_p:
.LFB33:
	.loc 1 911 0
	pushl	%ebp
.LCFI72:
	movl	%esp, %ebp
.LCFI73:
	pushl	%ebx
.LCFI74:
	subl	$52, %esp
.LCFI75:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 912 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 916 0
	movl	-20(%ebp), %eax
	subl	$64, %eax
	movl	%eax, -28(%ebp)
	cmpl	$15, -28(%ebp)
	ja	.L453
	movl	$1, %eax
	movl	%eax, %edx
	movzbl	-28(%ebp), %ecx
	sall	%cl, %edx
	movl	%edx, -32(%ebp)
	movl	-32(%ebp), %eax
	andl	$57399, %eax
	testl	%eax, %eax
	jne	.L454
	movl	-32(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L455
	jmp	.L453
.L454:
	.loc 1 926 0
	movl	$0, -24(%ebp)
	jmp	.L456
.L455:
	.loc 1 929 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_between_p@PLT
	movl	%eax, -24(%ebp)
	jmp	.L456
.L453:
	.loc 1 935 0
	movl	-20(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 936 0
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L457
.L458:
	.loc 1 938 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L459
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	regs_set_between_p@PLT
	testl	%eax, %eax
	je	.L459
	.loc 1 939 0
	movl	$1, -24(%ebp)
	jmp	.L456
.L459:
	.loc 1 941 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L462
	.loc 1 942 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L464
.L465:
	.loc 1 943 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	regs_set_between_p@PLT
	testl	%eax, %eax
	je	.L466
	.loc 1 944 0
	movl	$1, -24(%ebp)
	jmp	.L456
.L466:
	.loc 1 942 0
	subl	$1, -8(%ebp)
.L464:
	cmpl	$0, -8(%ebp)
	jns	.L465
.L462:
	.loc 1 936 0
	subl	$1, -12(%ebp)
.L457:
	cmpl	$0, -12(%ebp)
	jns	.L458
	.loc 1 947 0
	movl	$0, -24(%ebp)
.L456:
	movl	-24(%ebp), %eax
	.loc 1 948 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	regs_set_between_p, .-regs_set_between_p
.globl modified_between_p
	.type	modified_between_p, @function
modified_between_p:
.LFB34:
	.loc 1 958 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	pushl	%ebx
.LCFI78:
	subl	$36, %esp
.LCFI79:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 959 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 963 0
	movl	-20(%ebp), %eax
	subl	$64, %eax
	movl	%eax, -28(%ebp)
	cmpl	$15, -28(%ebp)
	ja	.L471
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	.L476@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L476:
	.long	.L472@GOTOFF
	.long	.L472@GOTOFF
	.long	.L472@GOTOFF
	.long	.L471@GOTOFF
	.long	.L472@GOTOFF
	.long	.L473@GOTOFF
	.long	.L471@GOTOFF
	.long	.L474@GOTOFF
	.long	.L471@GOTOFF
	.long	.L471@GOTOFF
	.long	.L471@GOTOFF
	.long	.L471@GOTOFF
	.long	.L475@GOTOFF
	.long	.L472@GOTOFF
	.long	.L472@GOTOFF
	.long	.L473@GOTOFF
	.text
.L472:
	.loc 1 971 0
	movl	$0, -24(%ebp)
	jmp	.L477
.L473:
	.loc 1 975 0
	movl	$1, -24(%ebp)
	jmp	.L477
.L475:
	.loc 1 980 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L471
	.loc 1 981 0
	movl	$1, -24(%ebp)
	jmp	.L477
.L474:
	.loc 1 985 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_between_p@PLT
	movl	%eax, -24(%ebp)
	jmp	.L477
.L471:
	.loc 1 991 0
	movl	-20(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 992 0
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L480
.L481:
	.loc 1 994 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L482
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	modified_between_p@PLT
	testl	%eax, %eax
	je	.L482
	.loc 1 995 0
	movl	$1, -24(%ebp)
	jmp	.L477
.L482:
	.loc 1 997 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L485
	.loc 1 998 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L487
.L488:
	.loc 1 999 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	modified_between_p@PLT
	testl	%eax, %eax
	je	.L489
	.loc 1 1000 0
	movl	$1, -24(%ebp)
	jmp	.L477
.L489:
	.loc 1 998 0
	subl	$1, -8(%ebp)
.L487:
	cmpl	$0, -8(%ebp)
	jns	.L488
.L485:
	.loc 1 992 0
	subl	$1, -12(%ebp)
.L480:
	cmpl	$0, -12(%ebp)
	jns	.L481
	.loc 1 1003 0
	movl	$0, -24(%ebp)
.L477:
	movl	-24(%ebp), %eax
	.loc 1 1004 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	modified_between_p, .-modified_between_p
.globl modified_in_p
	.type	modified_in_p, @function
modified_in_p:
.LFB35:
	.loc 1 1014 0
	pushl	%ebp
.LCFI80:
	movl	%esp, %ebp
.LCFI81:
	pushl	%ebx
.LCFI82:
	subl	$36, %esp
.LCFI83:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1015 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1019 0
	movl	-20(%ebp), %eax
	subl	$64, %eax
	movl	%eax, -28(%ebp)
	cmpl	$15, -28(%ebp)
	ja	.L494
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	.L499@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L499:
	.long	.L495@GOTOFF
	.long	.L495@GOTOFF
	.long	.L495@GOTOFF
	.long	.L494@GOTOFF
	.long	.L495@GOTOFF
	.long	.L496@GOTOFF
	.long	.L494@GOTOFF
	.long	.L497@GOTOFF
	.long	.L494@GOTOFF
	.long	.L494@GOTOFF
	.long	.L494@GOTOFF
	.long	.L494@GOTOFF
	.long	.L498@GOTOFF
	.long	.L495@GOTOFF
	.long	.L495@GOTOFF
	.long	.L496@GOTOFF
	.text
.L495:
	.loc 1 1027 0
	movl	$0, -24(%ebp)
	jmp	.L500
.L496:
	.loc 1 1031 0
	movl	$1, -24(%ebp)
	jmp	.L500
.L498:
	.loc 1 1036 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L494
	.loc 1 1037 0
	movl	$1, -24(%ebp)
	jmp	.L500
.L497:
	.loc 1 1041 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	movl	%eax, -24(%ebp)
	jmp	.L500
.L494:
	.loc 1 1047 0
	movl	-20(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1048 0
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L503
.L504:
	.loc 1 1050 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L505
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	modified_in_p@PLT
	testl	%eax, %eax
	je	.L505
	.loc 1 1051 0
	movl	$1, -24(%ebp)
	jmp	.L500
.L505:
	.loc 1 1053 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L508
	.loc 1 1054 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L510
.L511:
	.loc 1 1055 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	modified_in_p@PLT
	testl	%eax, %eax
	je	.L512
	.loc 1 1056 0
	movl	$1, -24(%ebp)
	jmp	.L500
.L512:
	.loc 1 1054 0
	subl	$1, -8(%ebp)
.L510:
	cmpl	$0, -8(%ebp)
	jns	.L511
.L508:
	.loc 1 1048 0
	subl	$1, -12(%ebp)
.L503:
	cmpl	$0, -12(%ebp)
	jns	.L504
	.loc 1 1059 0
	movl	$0, -24(%ebp)
.L500:
	movl	-24(%ebp), %eax
	.loc 1 1060 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	modified_in_p, .-modified_in_p
	.section	.rodata
	.type	__FUNCTION__.11082, @object
	.size	__FUNCTION__.11082, 17
__FUNCTION__.11082:
	.string	"insn_dependent_p"
.LC0:
	.string	"../../../kgccfe/gnu/rtlanal.c"
	.text
.globl insn_dependent_p
	.type	insn_dependent_p, @function
insn_dependent_p:
.LFB36:
	.loc 1 1068 0
	pushl	%ebp
.LCFI84:
	movl	%esp, %ebp
.LCFI85:
	pushl	%ebx
.LCFI86:
	subl	$36, %esp
.LCFI87:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1071 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L517
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L519
.L517:
	.loc 1 1072 0
	leal	__FUNCTION__.11082@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1072, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L519:
	.loc 1 1074 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1075 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	leal	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	insn_dependent_p_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 1076 0
	movl	-8(%ebp), %eax
	testl	%eax, %eax
	jne	.L520
	.loc 1 1077 0
	movl	$1, -24(%ebp)
	jmp	.L522
.L520:
	.loc 1 1079 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1080 0
	movl	12(%ebp), %eax
	movl	44(%eax), %edx
	leal	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	insn_dependent_p_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 1081 0
	movl	-8(%ebp), %eax
	testl	%eax, %eax
	jne	.L523
	.loc 1 1082 0
	movl	$1, -24(%ebp)
	jmp	.L522
.L523:
	.loc 1 1084 0
	movl	$0, -24(%ebp)
.L522:
	movl	-24(%ebp), %eax
	.loc 1 1085 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	insn_dependent_p, .-insn_dependent_p
	.type	insn_dependent_p_1, @function
insn_dependent_p_1:
.LFB37:
	.loc 1 1094 0
	pushl	%ebp
.LCFI88:
	movl	%esp, %ebp
.LCFI89:
	pushl	%ebx
.LCFI90:
	subl	$36, %esp
.LCFI91:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1095 0
	movl	16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1097 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L530
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L530
	.loc 1 1098 0
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
.L530:
	.loc 1 1099 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	insn_dependent_p_1, .-insn_dependent_p_1
	.type	set_of_1, @function
set_of_1:
.LFB38:
	.loc 1 1113 0
	pushl	%ebp
.LCFI92:
	movl	%esp, %ebp
.LCFI93:
	pushl	%ebx
.LCFI94:
	subl	$36, %esp
.LCFI95:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1114 0
	movl	16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1115 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L532
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L536
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L536
.L532:
	.loc 1 1117 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
.L536:
	.loc 1 1118 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	set_of_1, .-set_of_1
.globl set_of
	.type	set_of, @function
set_of:
.LFB39:
	.loc 1 1125 0
	pushl	%ebp
.LCFI96:
	movl	%esp, %ebp
.LCFI97:
	pushl	%ebx
.LCFI98:
	subl	$36, %esp
.LCFI99:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1127 0
	movl	$0, -12(%ebp)
	.loc 1 1128 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1129 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L538
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L540
.L538:
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L540:
	leal	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	set_of_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	note_stores@PLT
	.loc 1 1130 0
	movl	-12(%ebp), %eax
	.loc 1 1131 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	set_of, .-set_of
.globl single_set_2
	.type	single_set_2, @function
single_set_2:
.LFB40:
	.loc 1 1140 0
	pushl	%ebp
.LCFI100:
	movl	%esp, %ebp
.LCFI101:
	pushl	%ebx
.LCFI102:
	subl	$36, %esp
.LCFI103:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1141 0
	movl	$0, -20(%ebp)
	.loc 1 1142 0
	movl	$1, -16(%ebp)
	.loc 1 1145 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L543
	.loc 1 1147 0
	movl	$0, -12(%ebp)
	jmp	.L545
.L546:
.LBB6:
	.loc 1 1149 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1150 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	cmpl	$57, -28(%ebp)
	je	.L548
	cmpl	$57, -28(%ebp)
	jb	.L547
	cmpl	$59, -28(%ebp)
	ja	.L547
	.loc 1 1154 0
	jmp	.L550
.L548:
	.loc 1 1165 0
	cmpl	$0, -16(%ebp)
	jne	.L551
	.loc 1 1167 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$10, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L553
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L553
	.loc 1 1169 0
	movl	$0, -20(%ebp)
	.loc 1 1167 0
	jmp	.L551
.L553:
	.loc 1 1171 0
	movl	$1, -16(%ebp)
.L551:
	.loc 1 1173 0
	cmpl	$0, -20(%ebp)
	jne	.L556
	.loc 1 1174 0
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L550
.L556:
	.loc 1 1175 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$10, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L559
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	je	.L550
.L559:
	.loc 1 1177 0
	movl	$0, -24(%ebp)
	jmp	.L561
.L547:
	.loc 1 1181 0
	movl	$0, -24(%ebp)
	jmp	.L561
.L550:
.LBE6:
	.loc 1 1147 0
	addl	$1, -12(%ebp)
.L545:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L546
.L543:
	.loc 1 1185 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L561:
	movl	-24(%ebp), %eax
	.loc 1 1186 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	single_set_2, .-single_set_2
.globl multiple_sets
	.type	multiple_sets, @function
multiple_sets:
.LFB41:
	.loc 1 1194 0
	pushl	%ebp
.LCFI104:
	movl	%esp, %ebp
.LCFI105:
	subl	$20, %esp
.LCFI106:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1199 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L564
	.loc 1 1200 0
	movl	$0, -20(%ebp)
	jmp	.L566
.L564:
	.loc 1 1203 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L567
	.loc 1 1205 0
	movl	$0, -4(%ebp)
	movl	$0, -8(%ebp)
	jmp	.L569
.L570:
	.loc 1 1206 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L571
	.loc 1 1209 0
	cmpl	$0, -8(%ebp)
	je	.L573
	.loc 1 1210 0
	movl	$1, -20(%ebp)
	jmp	.L566
.L573:
	.loc 1 1212 0
	movl	$1, -8(%ebp)
.L571:
	.loc 1 1205 0
	addl	$1, -4(%ebp)
.L569:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-4(%ebp), %eax
	jg	.L570
.L567:
	.loc 1 1217 0
	movl	$0, -20(%ebp)
.L566:
	movl	-20(%ebp), %eax
	.loc 1 1218 0
	leave
	ret
.LFE41:
	.size	multiple_sets, .-multiple_sets
.globl set_noop_p
	.type	set_noop_p, @function
set_noop_p:
.LFB42:
	.loc 1 1226 0
	pushl	%ebp
.LCFI107:
	movl	%esp, %ebp
.LCFI108:
	pushl	%ebx
.LCFI109:
	subl	$36, %esp
.LCFI110:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1227 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1228 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1230 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L577
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	je	.L579
.L577:
	.loc 1 1231 0
	movl	$0, -32(%ebp)
	jmp	.L580
.L579:
	.loc 1 1233 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L581
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L581
	.loc 1 1234 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	movl	%eax, -32(%ebp)
	jmp	.L580
.L581:
	.loc 1 1236 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L584
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L584
	.loc 1 1237 0
	movl	$1, -32(%ebp)
	jmp	.L580
.L584:
	.loc 1 1239 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L587
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	jne	.L589
.L587:
	.loc 1 1241 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L590
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	jne	.L590
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	jne	.L590
	movl	$1, -28(%ebp)
	jmp	.L594
.L590:
	movl	$0, -28(%ebp)
.L594:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L580
.L589:
	.loc 1 1244 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	jne	.L595
	.loc 1 1245 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L595:
	.loc 1 1247 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L597
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L597
	.loc 1 1249 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L600
	.loc 1 1250 0
	movl	$0, -32(%ebp)
	jmp	.L580
.L600:
	.loc 1 1251 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1252 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L597:
	.loc 1 1255 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L602
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L602
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L602
	movl	$1, -24(%ebp)
	jmp	.L606
.L602:
	movl	$0, -24(%ebp)
.L606:
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
.L580:
	movl	-32(%ebp), %eax
	.loc 1 1257 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	set_noop_p, .-set_noop_p
.globl noop_move_p
	.type	noop_move_p, @function
noop_move_p:
.LFB43:
	.loc 1 1265 0
	pushl	%ebp
.LCFI111:
	movl	%esp, %ebp
.LCFI112:
	pushl	%ebx
.LCFI113:
	subl	$36, %esp
.LCFI114:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1266 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1268 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	$2147483647, %eax
	jne	.L609
	.loc 1 1269 0
	movl	$1, -24(%ebp)
	jmp	.L611
.L609:
	.loc 1 1272 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L612
	.loc 1 1273 0
	movl	$0, -24(%ebp)
	jmp	.L611
.L612:
	.loc 1 1277 0
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L614
	.loc 1 1278 0
	movl	$0, -24(%ebp)
	jmp	.L611
.L614:
	.loc 1 1280 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L616
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_noop_p@PLT
	testl	%eax, %eax
	je	.L616
	.loc 1 1281 0
	movl	$1, -24(%ebp)
	jmp	.L611
.L616:
	.loc 1 1283 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L619
.LBB7:
	.loc 1 1288 0
	movl	$0, -12(%ebp)
	jmp	.L621
.L622:
.LBB8:
	.loc 1 1290 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1292 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L623
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L623
	.loc 1 1296 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L626
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_noop_p@PLT
	testl	%eax, %eax
	jne	.L623
.L626:
	.loc 1 1297 0
	movl	$0, -24(%ebp)
	jmp	.L611
.L623:
.LBE8:
	.loc 1 1288 0
	addl	$1, -12(%ebp)
.L621:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L622
	.loc 1 1300 0
	movl	$1, -24(%ebp)
	jmp	.L611
.L619:
.LBE7:
	.loc 1 1302 0
	movl	$0, -24(%ebp)
.L611:
	movl	-24(%ebp), %eax
	.loc 1 1303 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	noop_move_p, .-noop_move_p
.globl find_last_value
	.type	find_last_value, @function
find_last_value:
.LFB44:
	.loc 1 1319 0
	pushl	%ebp
.LCFI115:
	movl	%esp, %ebp
.LCFI116:
	pushl	%ebx
.LCFI117:
	subl	$52, %esp
.LCFI118:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1322 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L631
.L632:
	.loc 1 1324 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L633
.LBB9:
	.loc 1 1326 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L635
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L637
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L639
.L637:
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -28(%ebp)
.L639:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L640
.L635:
	movl	$0, -32(%ebp)
.L640:
	movl	-32(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1327 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1329 0
	cmpl	$0, -16(%ebp)
	je	.L641
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L641
.LBB10:
	.loc 1 1331 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1333 0
	cmpl	$0, -12(%ebp)
	je	.L644
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$3, %ax
	je	.L644
	.loc 1 1334 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L644:
	.loc 1 1336 0
	cmpl	$0, 16(%ebp)
	je	.L647
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	modified_between_p@PLT
	testl	%eax, %eax
	jne	.L641
.L647:
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L649
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L649
	cmpl	$0, 20(%ebp)
	je	.L641
.L649:
	.loc 1 1343 0
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1344 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L652
.L641:
.LBE10:
	.loc 1 1349 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	jne	.L653
.L633:
.LBE9:
	.loc 1 1323 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L631:
	.loc 1 1322 0
	cmpl	$0, -20(%ebp)
	je	.L653
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L632
.L653:
	.loc 1 1353 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L652:
	movl	-24(%ebp), %eax
	.loc 1 1354 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	find_last_value, .-find_last_value
.globl refers_to_regno_p
	.type	refers_to_regno_p, @function
refers_to_regno_p:
.LFB45:
	.loc 1 1368 0
	pushl	%ebp
.LCFI119:
	movl	%esp, %ebp
.LCFI120:
	pushl	%ebx
.LCFI121:
	subl	$84, %esp
.LCFI122:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	jmp	.L719
.L657:
.L719:
	.loc 1 1377 0
	cmpl	$0, 16(%ebp)
	jne	.L658
	.loc 1 1378 0
	movl	$0, -56(%ebp)
	jmp	.L660
.L658:
	.loc 1 1380 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1382 0
	movl	-24(%ebp), %eax
	movl	%eax, -60(%ebp)
	cmpl	$59, -60(%ebp)
	je	.L662
	cmpl	$59, -60(%ebp)
	ja	.L665
	cmpl	$57, -60(%ebp)
	je	.L662
	jmp	.L661
.L665:
	cmpl	$71, -60(%ebp)
	je	.L663
	cmpl	$73, -60(%ebp)
	je	.L664
	jmp	.L661
.L663:
	.loc 1 1385 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1390 0
	cmpl	$29, -28(%ebp)
	je	.L666
	cmpl	$0, -28(%ebp)
	je	.L666
	cmpl	$1, -28(%ebp)
	jne	.L669
.L666:
	cmpl	$175, 8(%ebp)
	jbe	.L669
	cmpl	$180, 8(%ebp)
	ja	.L669
	.loc 1 1396 0
	movl	$1, -56(%ebp)
	jmp	.L660
.L669:
	.loc 1 1398 0
	movl	12(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jbe	.L672
	cmpl	$175, -28(%ebp)
	ja	.L674
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -48(%ebp)
	jmp	.L676
.L674:
	movl	$1, -48(%ebp)
.L676:
	movl	-48(%ebp), %eax
	addl	-28(%ebp), %eax
	cmpl	8(%ebp), %eax
	jbe	.L672
	movl	$1, -52(%ebp)
	jmp	.L678
.L672:
	movl	$0, -52(%ebp)
.L678:
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L660
.L664:
	.loc 1 1406 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L661
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L661
.LBB11:
	.loc 1 1409 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_regno@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1412 0
	cmpl	$175, -16(%ebp)
	ja	.L682
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -44(%ebp)
	jmp	.L684
.L682:
	movl	$1, -44(%ebp)
.L684:
	movl	-44(%ebp), %eax
	addl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1414 0
	movl	12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jbe	.L685
	movl	8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jae	.L685
	movl	$1, -40(%ebp)
	jmp	.L688
.L685:
	movl	$0, -40(%ebp)
.L688:
	movl	-40(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L660
.L662:
.LBE11:
	.loc 1 1420 0
	movl	16(%ebp), %eax
	addl	$4, %eax
	cmpl	20(%ebp), %eax
	je	.L689
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L691
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	addl	$4, %eax
	cmpl	20(%ebp), %eax
	je	.L691
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L691
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L691
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	refers_to_regno_p@PLT
	testl	%eax, %eax
	jne	.L696
.L691:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L689
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	refers_to_regno_p@PLT
	testl	%eax, %eax
	je	.L689
.L696:
	.loc 1 1432 0
	movl	$1, -56(%ebp)
	jmp	.L660
.L689:
	.loc 1 1434 0
	cmpl	$59, -24(%ebp)
	je	.L698
	movl	16(%ebp), %eax
	addl	$12, %eax
	cmpl	20(%ebp), %eax
	jne	.L700
.L698:
	.loc 1 1435 0
	movl	$0, -56(%ebp)
	jmp	.L660
.L700:
	.loc 1 1436 0
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 16(%ebp)
	.loc 1 1437 0
	jmp	.L657
.L661:
	.loc 1 1445 0
	movl	-24(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1446 0
	movl	-24(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	jmp	.L701
.L702:
	.loc 1 1448 0
	movl	-32(%ebp), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L703
	movl	-32(%ebp), %eax
	sall	$3, %eax
	addl	16(%ebp), %eax
	addl	$4, %eax
	cmpl	20(%ebp), %eax
	je	.L703
	.loc 1 1450 0
	cmpl	$0, -32(%ebp)
	jne	.L706
	.loc 1 1452 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 16(%ebp)
	.loc 1 1453 0
	jmp	.L657
.L706:
	.loc 1 1456 0
	movl	-32(%ebp), %edx
	movl	16(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	refers_to_regno_p@PLT
	testl	%eax, %eax
	je	.L710
	.loc 1 1457 0
	movl	$1, -56(%ebp)
	jmp	.L660
.L703:
	.loc 1 1459 0
	movl	-32(%ebp), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L710
.LBB12:
	.loc 1 1462 0
	movl	-32(%ebp), %edx
	movl	16(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L712
.L713:
	.loc 1 1463 0
	movl	-32(%ebp), %edx
	movl	16(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	leal	4(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	cmpl	20(%ebp), %eax
	je	.L714
	movl	-32(%ebp), %edx
	movl	16(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	refers_to_regno_p@PLT
	testl	%eax, %eax
	je	.L714
	.loc 1 1465 0
	movl	$1, -56(%ebp)
	jmp	.L660
.L714:
	.loc 1 1462 0
	subl	$1, -8(%ebp)
.L712:
	cmpl	$0, -8(%ebp)
	jns	.L713
.L710:
.LBE12:
	.loc 1 1446 0
	subl	$1, -32(%ebp)
.L701:
	cmpl	$0, -32(%ebp)
	jns	.L702
	.loc 1 1468 0
	movl	$0, -56(%ebp)
.L660:
	movl	-56(%ebp), %eax
	.loc 1 1469 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	refers_to_regno_p, .-refers_to_regno_p
	.section	.rodata
	.type	__FUNCTION__.11575, @object
	.size	__FUNCTION__.11575, 24
__FUNCTION__.11575:
	.string	"reg_overlap_mentioned_p"
	.text
.globl reg_overlap_mentioned_p
	.type	reg_overlap_mentioned_p, @function
reg_overlap_mentioned_p:
.LFB46:
	.loc 1 1480 0
	pushl	%ebp
.LCFI123:
	movl	%esp, %ebp
.LCFI124:
	pushl	%ebx
.LCFI125:
	subl	$68, %esp
.LCFI126:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1484 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L721
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L721
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	jne	.L724
.L721:
	.loc 1 1487 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L724:
	.loc 1 1490 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L725
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L725
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L725
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L725
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L725
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L725
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L725
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L725
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L725
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L725
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L725
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L725
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L725
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L725
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L725
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L741
.L725:
	.loc 1 1491 0
	movl	$0, -44(%ebp)
	jmp	.L742
.L741:
	.loc 1 1493 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$49, %eax
	movl	%eax, -48(%ebp)
	cmpl	$30, -48(%ebp)
	ja	.L743
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	.L749@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L749:
	.long	.L744@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L745@GOTOFF
	.long	.L743@GOTOFF
	.long	.L746@GOTOFF
	.long	.L745@GOTOFF
	.long	.L747@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L748@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L745@GOTOFF
	.text
.L747:
	.loc 1 1496 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1497 0
	cmpl	$175, -24(%ebp)
	ja	.L752
	.loc 1 1498 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_regno@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1499 0
	jmp	.L752
.L746:
	.loc 1 1502 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L752:
	.loc 1 1504 0
	cmpl	$175, -24(%ebp)
	ja	.L753
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-24(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -40(%ebp)
	jmp	.L755
.L753:
	movl	$1, -40(%ebp)
.L755:
	movl	-40(%ebp), %eax
	addl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1506 0
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	refers_to_regno_p@PLT
	movl	%eax, -44(%ebp)
	jmp	.L742
.L748:
.LBB13:
	.loc 1 1513 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L756
	.loc 1 1514 0
	movl	$1, -44(%ebp)
	jmp	.L742
.L756:
	.loc 1 1516 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1517 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L758
.L759:
	.loc 1 1518 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L760
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L760
	.loc 1 1519 0
	movl	$1, -44(%ebp)
	jmp	.L742
.L760:
	.loc 1 1517 0
	subl	$1, -12(%ebp)
.L758:
	cmpl	$0, -12(%ebp)
	jns	.L759
	.loc 1 1521 0
	movl	$0, -44(%ebp)
	jmp	.L742
.L745:
.LBE13:
	.loc 1 1527 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	movl	%eax, -44(%ebp)
	jmp	.L742
.L744:
.LBB14:
	.loc 1 1534 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L764
.L765:
	.loc 1 1535 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L766
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L766
	.loc 1 1537 0
	movl	$1, -44(%ebp)
	jmp	.L742
.L766:
	.loc 1 1534 0
	subl	$1, -8(%ebp)
.L764:
	cmpl	$0, -8(%ebp)
	jns	.L765
	.loc 1 1538 0
	movl	$0, -44(%ebp)
	jmp	.L742
.L743:
.LBE14:
	.loc 1 1545 0
	leal	__FUNCTION__.11575@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1545, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L742:
	movl	-44(%ebp), %eax
	.loc 1 1546 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	reg_overlap_mentioned_p, .-reg_overlap_mentioned_p
.globl reg_set_last
	.type	reg_set_last, @function
reg_set_last:
.LFB47:
	.loc 1 1558 0
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
	.loc 1 1559 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1570 0
	jmp	.L772
.L773:
	.loc 1 1574 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L774
.LBB15:
	.loc 1 1576 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_of@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1578 0
	cmpl	$0, -12(%ebp)
	je	.L774
.LBB16:
	.loc 1 1581 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L777
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L779
.L777:
	.loc 1 1582 0
	movl	$0, -24(%ebp)
	jmp	.L780
.L779:
	.loc 1 1583 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1584 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L781
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L781
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L781
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L781
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L781
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L781
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L781
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L781
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L790
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L792
.L790:
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_between_p@PLT
	testl	%eax, %eax
	jne	.L792
.L781:
	.loc 1 1589 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L780
.L792:
	.loc 1 1591 0
	movl	$0, -24(%ebp)
	jmp	.L780
.L774:
.LBE16:
.LBE15:
	.loc 1 1573 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%ebp)
.L772:
	.loc 1 1570 0
	cmpl	$0, 12(%ebp)
	je	.L793
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L793
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L773
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$176, %eax
	ja	.L773
.L793:
	.loc 1 1595 0
	movl	$0, -24(%ebp)
.L780:
	movl	-24(%ebp), %eax
	.loc 1 1596 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	reg_set_last, .-reg_set_last
.globl note_stores
	.type	note_stores, @function
note_stores:
.LFB48:
	.loc 1 1612 0
	pushl	%ebp
.LCFI131:
	movl	%esp, %ebp
.LCFI132:
	pushl	%ebx
.LCFI133:
	subl	$36, %esp
.LCFI134:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1615 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$48, %ax
	jne	.L799
	.loc 1 1616 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%ebp)
.L799:
	.loc 1 1618 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L801
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L803
.L801:
.LBB17:
	.loc 1 1620 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1622 0
	jmp	.L804
.L805:
	.loc 1 1628 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L804:
	.loc 1 1622 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L806
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L805
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L805
.L806:
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L805
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L805
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L805
	.loc 1 1632 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L812
	.loc 1 1634 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L814
.L815:
	.loc 1 1635 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L816
	.loc 1 1636 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
.L816:
	.loc 1 1634 0
	subl	$1, -12(%ebp)
.L814:
	cmpl	$0, -12(%ebp)
	jns	.L815
	jmp	.L824
.L812:
	.loc 1 1639 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	.loc 1 1618 0
	jmp	.L824
.L803:
.LBE17:
	.loc 1 1642 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L824
	.loc 1 1643 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L822
.L823:
	.loc 1 1644 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 1643 0
	subl	$1, -12(%ebp)
.L822:
	cmpl	$0, -12(%ebp)
	jns	.L823
.L824:
	.loc 1 1645 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	note_stores, .-note_stores
.globl note_uses
	.type	note_uses, @function
note_uses:
.LFB49:
	.loc 1 1661 0
	pushl	%ebp
.LCFI135:
	movl	%esp, %ebp
.LCFI136:
	pushl	%ebx
.LCFI137:
	subl	$36, %esp
.LCFI138:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1662 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1665 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$48, %eax
	movl	%eax, -24(%ebp)
	cmpl	$14, -24(%ebp)
	ja	.L826
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	.L836@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L836:
	.long	.L827@GOTOFF
	.long	.L828@GOTOFF
	.long	.L826@GOTOFF
	.long	.L829@GOTOFF
	.long	.L830@GOTOFF
	.long	.L830@GOTOFF
	.long	.L826@GOTOFF
	.long	.L826@GOTOFF
	.long	.L831@GOTOFF
	.long	.L832@GOTOFF
	.long	.L833@GOTOFF
	.long	.L834@GOTOFF
	.long	.L826@GOTOFF
	.long	.L826@GOTOFF
	.long	.L835@GOTOFF
	.text
.L827:
	.loc 1 1668 0
	movl	-16(%ebp), %edx
	addl	$4, %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	.loc 1 1669 0
	movl	-16(%ebp), %edx
	addl	$12, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_uses@PLT
	.loc 1 1670 0
	jmp	.L857
.L828:
	.loc 1 1673 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L838
.L839:
	.loc 1 1674 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	leal	4(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_uses@PLT
	.loc 1 1673 0
	subl	$1, -12(%ebp)
.L838:
	cmpl	$0, -12(%ebp)
	jns	.L839
	.loc 1 1675 0
	jmp	.L857
.L833:
	.loc 1 1678 0
	movl	-16(%ebp), %eax
	addl	$4, %eax
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	.loc 1 1679 0
	jmp	.L857
.L829:
	.loc 1 1682 0
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L841
.L842:
	.loc 1 1683 0
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	leal	4(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	.loc 1 1682 0
	subl	$1, -12(%ebp)
.L841:
	cmpl	$0, -12(%ebp)
	jns	.L842
	.loc 1 1684 0
	jmp	.L857
.L835:
	.loc 1 1687 0
	movl	-16(%ebp), %eax
	addl	$4, %eax
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	.loc 1 1688 0
	jmp	.L857
.L831:
	.loc 1 1691 0
	movl	-16(%ebp), %eax
	addl	$4, %eax
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	.loc 1 1692 0
	jmp	.L857
.L830:
	.loc 1 1696 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L844
.L845:
	.loc 1 1697 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	leal	4(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	.loc 1 1696 0
	subl	$1, -12(%ebp)
.L844:
	cmpl	$0, -12(%ebp)
	jns	.L845
	.loc 1 1698 0
	jmp	.L857
.L834:
	.loc 1 1701 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L857
	.loc 1 1702 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	leal	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	.loc 1 1703 0
	jmp	.L857
.L832:
.LBB18:
	.loc 1 1707 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1711 0
	movl	-16(%ebp), %edx
	addl	$12, %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	.loc 1 1713 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	jne	.L851
	.loc 1 1715 0
	movl	-8(%ebp), %edx
	addl	$12, %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	.loc 1 1716 0
	movl	-8(%ebp), %edx
	addl	$20, %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	.loc 1 1719 0
	jmp	.L851
.L852:
	.loc 1 1720 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L851:
	.loc 1 1719 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L852
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L852
	.loc 1 1722 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L857
	.loc 1 1723 0
	movl	-8(%ebp), %eax
	addl	$4, %eax
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	.loc 1 1725 0
	jmp	.L857
.L826:
.LBE18:
	.loc 1 1729 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
.L857:
	.loc 1 1732 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	note_uses, .-note_uses
	.section	.rodata
	.type	__FUNCTION__.11879, @object
	.size	__FUNCTION__.11879, 14
__FUNCTION__.11879:
	.string	"dead_or_set_p"
	.text
.globl dead_or_set_p
	.type	dead_or_set_p, @function
dead_or_set_p:
.LFB50:
	.loc 1 1755 0
	pushl	%ebp
.LCFI139:
	movl	%esp, %ebp
.LCFI140:
	pushl	%ebx
.LCFI141:
	subl	$36, %esp
.LCFI142:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1760 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$79, %ax
	jne	.L859
	.loc 1 1761 0
	movl	$1, -28(%ebp)
	jmp	.L861
.L859:
	.loc 1 1763 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L862
	.loc 1 1764 0
	leal	__FUNCTION__.11879@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1764, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L862:
	.loc 1 1766 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1767 0
	cmpl	$175, -16(%ebp)
	ja	.L864
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-16(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-16(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	jmp	.L866
.L864:
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L866:
	movl	-24(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1770 0
	movl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L867
.L868:
	.loc 1 1771 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dead_or_set_regno_p@PLT
	testl	%eax, %eax
	jne	.L869
	.loc 1 1772 0
	movl	$0, -28(%ebp)
	jmp	.L861
.L869:
	.loc 1 1770 0
	addl	$1, -8(%ebp)
.L867:
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jbe	.L868
	.loc 1 1774 0
	movl	$1, -28(%ebp)
.L861:
	movl	-28(%ebp), %eax
	.loc 1 1775 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	dead_or_set_p, .-dead_or_set_p
.globl dead_or_set_regno_p
	.type	dead_or_set_regno_p, @function
dead_or_set_regno_p:
.LFB51:
	.loc 1 1784 0
	pushl	%ebp
.LCFI143:
	movl	%esp, %ebp
.LCFI144:
	pushl	%ebx
.LCFI145:
	subl	$132, %esp
.LCFI146:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1789 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_regno_note@PLT
	testl	%eax, %eax
	je	.L874
	.loc 1 1790 0
	movl	$1, -124(%ebp)
	jmp	.L876
.L874:
	.loc 1 1792 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L877
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$59, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_regno_fusage@PLT
	testl	%eax, %eax
	je	.L877
	.loc 1 1794 0
	movl	$1, -124(%ebp)
	jmp	.L876
.L877:
	.loc 1 1796 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1798 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$48, %ax
	jne	.L880
	.loc 1 1799 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
.L880:
	.loc 1 1801 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L882
.LBB19:
	.loc 1 1803 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1808 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L884
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -120(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L886
	movl	$8, -116(%ebp)
	jmp	.L888
.L886:
	movl	$4, -116(%ebp)
.L888:
	movl	-120(%ebp), %eax
	addl	-116(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -112(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L889
	movl	$8, -108(%ebp)
	jmp	.L891
.L889:
	movl	$4, -108(%ebp)
.L891:
	movl	-112(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-108(%ebp)
	movl	%eax, -104(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -100(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L892
	movl	$8, -96(%ebp)
	jmp	.L894
.L892:
	movl	$4, -96(%ebp)
.L894:
	movl	-100(%ebp), %eax
	addl	-96(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -92(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L895
	movl	$8, -88(%ebp)
	jmp	.L897
.L895:
	movl	$4, -88(%ebp)
.L897:
	movl	-92(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-88(%ebp)
	cmpl	%eax, -104(%ebp)
	jne	.L884
	.loc 1 1813 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L884:
	.loc 1 1815 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L899
	.loc 1 1816 0
	movl	$0, -124(%ebp)
	jmp	.L876
.L899:
	.loc 1 1818 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1819 0
	cmpl	$175, -32(%ebp)
	jbe	.L901
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -84(%ebp)
	jmp	.L903
.L901:
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-32(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	-32(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -84(%ebp)
.L903:
	movl	-84(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1822 0
	movl	12(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jb	.L904
	movl	12(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jae	.L904
	movl	$1, -80(%ebp)
	jmp	.L907
.L904:
	movl	$0, -80(%ebp)
.L907:
	movl	-80(%ebp), %edx
	movl	%edx, -124(%ebp)
	jmp	.L876
.L882:
.LBE19:
	.loc 1 1824 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L908
.LBB20:
	.loc 1 1828 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L910
.L911:
.LBB21:
	.loc 1 1830 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1832 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$48, %ax
	jne	.L912
	.loc 1 1833 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L912:
	.loc 1 1835 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L914
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L916
.L914:
.LBB22:
	.loc 1 1837 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1839 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L917
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L919
	movl	$8, -72(%ebp)
	jmp	.L921
.L919:
	movl	$4, -72(%ebp)
.L921:
	movl	-76(%ebp), %eax
	addl	-72(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -68(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L922
	movl	$8, -64(%ebp)
	jmp	.L924
.L922:
	movl	$4, -64(%ebp)
.L924:
	movl	-68(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-64(%ebp)
	movl	%eax, -60(%ebp)
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L925
	movl	$8, -52(%ebp)
	jmp	.L927
.L925:
	movl	$4, -52(%ebp)
.L927:
	movl	-56(%ebp), %eax
	addl	-52(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -48(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L928
	movl	$8, -44(%ebp)
	jmp	.L930
.L928:
	movl	$4, -44(%ebp)
.L930:
	movl	-48(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-44(%ebp)
	cmpl	%eax, -60(%ebp)
	jne	.L917
	.loc 1 1844 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L917:
	.loc 1 1846 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L916
	.loc 1 1849 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1850 0
	cmpl	$175, -32(%ebp)
	jbe	.L933
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -40(%ebp)
	jmp	.L935
.L933:
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-32(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	-32(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -40(%ebp)
.L935:
	movl	-40(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1853 0
	movl	12(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jb	.L916
	movl	12(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jae	.L916
	.loc 1 1854 0
	movl	$1, -124(%ebp)
	jmp	.L876
.L916:
.LBE22:
.LBE21:
	.loc 1 1828 0
	subl	$1, -16(%ebp)
.L910:
	cmpl	$0, -16(%ebp)
	jns	.L911
.L908:
.LBE20:
	.loc 1 1859 0
	movl	$0, -124(%ebp)
.L876:
	movl	-124(%ebp), %eax
	.loc 1 1860 0
	addl	$132, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	dead_or_set_regno_p, .-dead_or_set_regno_p
.globl find_reg_note
	.type	find_reg_note, @function
find_reg_note:
.LFB52:
	.loc 1 1870 0
	pushl	%ebp
.LCFI147:
	movl	%esp, %ebp
.LCFI148:
	subl	$20, %esp
.LCFI149:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1874 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L940
	.loc 1 1875 0
	movl	$0, -20(%ebp)
	jmp	.L942
.L940:
	.loc 1 1877 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L943
.L944:
	.loc 1 1878 0
	movl	-4(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	jne	.L945
	cmpl	$0, 16(%ebp)
	je	.L947
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L945
.L947:
	.loc 1 1880 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L942
.L945:
	.loc 1 1877 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -4(%ebp)
.L943:
	cmpl	$0, -4(%ebp)
	jne	.L944
	.loc 1 1881 0
	movl	$0, -20(%ebp)
.L942:
	movl	-20(%ebp), %eax
	.loc 1 1882 0
	leave
	ret
.LFE52:
	.size	find_reg_note, .-find_reg_note
.globl find_regno_note
	.type	find_regno_note, @function
find_regno_note:
.LFB53:
	.loc 1 1894 0
	pushl	%ebp
.LCFI150:
	movl	%esp, %ebp
.LCFI151:
	pushl	%ebx
.LCFI152:
	subl	$36, %esp
.LCFI153:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1898 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L952
	.loc 1 1899 0
	movl	$0, -32(%ebp)
	jmp	.L954
.L952:
	.loc 1 1901 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L955
.L956:
	.loc 1 1902 0
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	jne	.L957
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L957
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	16(%ebp), %eax
	ja	.L957
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L961
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -24(%ebp)
	jmp	.L963
.L961:
	movl	$1, -24(%ebp)
.L963:
	movl	-28(%ebp), %eax
	addl	-24(%ebp), %eax
	cmpl	16(%ebp), %eax
	jbe	.L957
	.loc 1 1912 0
	movl	-8(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L954
.L957:
	.loc 1 1901 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L955:
	cmpl	$0, -8(%ebp)
	jne	.L956
	.loc 1 1913 0
	movl	$0, -32(%ebp)
.L954:
	movl	-32(%ebp), %eax
	.loc 1 1914 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	find_regno_note, .-find_regno_note
.globl find_reg_equal_equiv_note
	.type	find_reg_equal_equiv_note, @function
find_reg_equal_equiv_note:
.LFB54:
	.loc 1 1922 0
	pushl	%ebp
.LCFI154:
	movl	%esp, %ebp
.LCFI155:
	pushl	%ebx
.LCFI156:
	subl	$36, %esp
.LCFI157:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1925 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L968
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L970
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	sete	-25(%ebp)
	jmp	.L972
.L970:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	testl	%eax, %eax
	sete	-25(%ebp)
.L972:
	movzbl	-25(%ebp), %eax
	movb	%al, -26(%ebp)
	jmp	.L973
.L968:
	movb	$1, -26(%ebp)
.L973:
	cmpb	$0, -26(%ebp)
	je	.L974
	.loc 1 1926 0
	movl	$0, -24(%ebp)
	jmp	.L976
.L974:
	.loc 1 1927 0
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L977
	.loc 1 1928 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L976
.L977:
	.loc 1 1930 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -24(%ebp)
.L976:
	movl	-24(%ebp), %eax
	.loc 1 1931 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	find_reg_equal_equiv_note, .-find_reg_equal_equiv_note
	.section	.rodata
	.type	__FUNCTION__.12171, @object
	.size	__FUNCTION__.12171, 16
__FUNCTION__.12171:
	.string	"find_reg_fusage"
	.text
.globl find_reg_fusage
	.type	find_reg_fusage, @function
find_reg_fusage:
.LFB55:
	.loc 1 1941 0
	pushl	%ebp
.LCFI158:
	movl	%esp, %ebp
.LCFI159:
	pushl	%ebx
.LCFI160:
	subl	$36, %esp
.LCFI161:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1944 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L981
	.loc 1 1945 0
	movl	$0, -24(%ebp)
	jmp	.L983
.L981:
	.loc 1 1947 0
	cmpl	$0, 16(%ebp)
	jne	.L984
	.loc 1 1948 0
	leal	__FUNCTION__.12171@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1948, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L984:
	.loc 1 1950 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L986
.LBB23:
	.loc 1 1954 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1955 0
	jmp	.L988
.L989:
	.loc 1 1957 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	12(%ebp), %eax
	jne	.L990
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L990
	.loc 1 1959 0
	movl	$1, -24(%ebp)
	jmp	.L983
.L990:
	.loc 1 1956 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L988:
	.loc 1 1955 0
	cmpl	$0, -20(%ebp)
	jne	.L989
	jmp	.L994
.L986:
.LBE23:
.LBB24:
	.loc 1 1963 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1968 0
	cmpl	$175, -16(%ebp)
	ja	.L994
.LBB25:
	.loc 1 1971 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-16(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1974 0
	movl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L996
.L997:
	.loc 1 1975 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_regno_fusage@PLT
	testl	%eax, %eax
	je	.L998
	.loc 1 1976 0
	movl	$1, -24(%ebp)
	jmp	.L983
.L998:
	.loc 1 1974 0
	addl	$1, -8(%ebp)
.L996:
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jb	.L997
.L994:
.LBE25:
.LBE24:
	.loc 1 1980 0
	movl	$0, -24(%ebp)
.L983:
	movl	-24(%ebp), %eax
	.loc 1 1981 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	find_reg_fusage, .-find_reg_fusage
.globl find_regno_fusage
	.type	find_regno_fusage, @function
find_regno_fusage:
.LFB56:
	.loc 1 1991 0
	pushl	%ebp
.LCFI162:
	movl	%esp, %ebp
.LCFI163:
	pushl	%ebx
.LCFI164:
	subl	$36, %esp
.LCFI165:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1997 0
	cmpl	$175, 16(%ebp)
	ja	.L1002
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L1004
.L1002:
	.loc 1 1999 0
	movl	$0, -24(%ebp)
	jmp	.L1005
.L1004:
	.loc 1 2001 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1006
.L1007:
.LBB26:
	.loc 1 2006 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	12(%ebp), %eax
	jne	.L1008
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1008
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	cmpl	16(%ebp), %eax
	ja	.L1008
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-16(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-16(%ebp), %eax
	cmpl	16(%ebp), %eax
	jbe	.L1008
	.loc 1 2010 0
	movl	$1, -24(%ebp)
	jmp	.L1005
.L1008:
.LBE26:
	.loc 1 2001 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L1006:
	cmpl	$0, -20(%ebp)
	jne	.L1007
	.loc 1 2013 0
	movl	$0, -24(%ebp)
.L1005:
	movl	-24(%ebp), %eax
	.loc 1 2014 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	find_regno_fusage, .-find_regno_fusage
.globl pure_call_p
	.type	pure_call_p, @function
pure_call_p:
.LFB57:
	.loc 1 2021 0
	pushl	%ebp
.LCFI166:
	movl	%esp, %ebp
.LCFI167:
	subl	$20, %esp
.LCFI168:
	.loc 1 2024 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1016
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1018
.L1016:
	.loc 1 2025 0
	movl	$0, -20(%ebp)
	jmp	.L1019
.L1018:
	.loc 1 2028 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1020
.L1021:
.LBB27:
	.loc 1 2032 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L1022
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1022
	movl	-4(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	jne	.L1022
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$72, %ax
	jne	.L1022
	.loc 1 2035 0
	movl	$1, -20(%ebp)
	jmp	.L1019
.L1022:
.LBE27:
	.loc 1 2028 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L1020:
	cmpl	$0, -12(%ebp)
	jne	.L1021
	.loc 1 2038 0
	movl	$0, -20(%ebp)
.L1019:
	movl	-20(%ebp), %eax
	.loc 1 2039 0
	leave
	ret
.LFE57:
	.size	pure_call_p, .-pure_call_p
	.section	.rodata
	.type	__FUNCTION__.12284, @object
	.size	__FUNCTION__.12284, 12
__FUNCTION__.12284:
	.string	"remove_note"
	.text
.globl remove_note
	.type	remove_note, @function
remove_note:
.LFB58:
	.loc 1 2047 0
	pushl	%ebp
.LCFI169:
	movl	%esp, %ebp
.LCFI170:
	pushl	%ebx
.LCFI171:
	subl	$36, %esp
.LCFI172:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2050 0
	cmpl	$0, 12(%ebp)
	je	.L1039
	.loc 1 2053 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1032
	.loc 1 2055 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 2056 0
	jmp	.L1039
.L1032:
	.loc 1 2059 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1034
.L1035:
	.loc 1 2060 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1036
	.loc 1 2062 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2063 0
	jmp	.L1039
.L1036:
	.loc 1 2059 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L1034:
	cmpl	$0, -8(%ebp)
	jne	.L1035
	.loc 1 2066 0
	leal	__FUNCTION__.12284@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2066, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1039:
	.loc 1 2067 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	remove_note, .-remove_note
.globl in_expr_list_p
	.type	in_expr_list_p, @function
in_expr_list_p:
.LFB59:
	.loc 1 2077 0
	pushl	%ebp
.LCFI173:
	movl	%esp, %ebp
.LCFI174:
	subl	$20, %esp
.LCFI175:
	.loc 1 2080 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L1041
.L1042:
	.loc 1 2081 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1043
	.loc 1 2082 0
	movl	$1, -20(%ebp)
	jmp	.L1045
.L1043:
	.loc 1 2080 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -4(%ebp)
.L1041:
	cmpl	$0, -4(%ebp)
	jne	.L1042
	.loc 1 2084 0
	movl	$0, -20(%ebp)
.L1045:
	movl	-20(%ebp), %eax
	.loc 1 2085 0
	leave
	ret
.LFE59:
	.size	in_expr_list_p, .-in_expr_list_p
.globl remove_node_from_expr_list
	.type	remove_node_from_expr_list, @function
remove_node_from_expr_list:
.LFB60:
	.loc 1 2096 0
	pushl	%ebp
.LCFI176:
	movl	%esp, %ebp
.LCFI177:
	subl	$16, %esp
.LCFI178:
	.loc 1 2097 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2098 0
	movl	$0, -4(%ebp)
	.loc 1 2100 0
	jmp	.L1049
.L1050:
	.loc 1 2102 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1051
	.loc 1 2105 0
	cmpl	$0, -4(%ebp)
	je	.L1053
	.loc 1 2106 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L1057
.L1053:
	.loc 1 2108 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2110 0
	jmp	.L1057
.L1051:
	.loc 1 2113 0
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 2114 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L1049:
	.loc 1 2100 0
	cmpl	$0, -8(%ebp)
	jne	.L1050
.L1057:
	.loc 1 2116 0
	leave
	ret
.LFE60:
	.size	remove_node_from_expr_list, .-remove_node_from_expr_list
.globl volatile_insn_p
	.type	volatile_insn_p, @function
volatile_insn_p:
.LFB61:
	.loc 1 2126 0
	pushl	%ebp
.LCFI179:
	movl	%esp, %ebp
.LCFI180:
	pushl	%ebx
.LCFI181:
	subl	$32, %esp
.LCFI182:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2129 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 2130 0
	movl	-20(%ebp), %eax
	subl	$50, %eax
	movl	%eax, -28(%ebp)
	cmpl	$29, -28(%ebp)
	ja	.L1059
	movl	$1, %eax
	movl	%eax, %edx
	movzbl	-28(%ebp), %ecx
	sall	%cl, %edx
	movl	%edx, -32(%ebp)
	movl	-32(%ebp), %eax
	andl	$1013827120, %eax
	testl	%eax, %eax
	jne	.L1062
	movl	-32(%ebp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L1060
	movl	-32(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L1061
	jmp	.L1059
.L1062:
	.loc 1 2147 0
	movl	$0, -24(%ebp)
	jmp	.L1063
.L1061:
	.loc 1 2151 0
	movl	$1, -24(%ebp)
	jmp	.L1063
.L1060:
	.loc 1 2155 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1059
	.loc 1 2156 0
	movl	$1, -24(%ebp)
	jmp	.L1063
.L1059:
.LBB28:
	.loc 1 2165 0
	movl	-20(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2168 0
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L1065
.L1066:
	.loc 1 2170 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1067
	.loc 1 2172 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	volatile_insn_p@PLT
	testl	%eax, %eax
	je	.L1071
	.loc 1 2173 0
	movl	$1, -24(%ebp)
	jmp	.L1063
.L1067:
	.loc 1 2175 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1071
.LBB29:
	.loc 1 2178 0
	movl	$0, -8(%ebp)
	jmp	.L1073
.L1074:
	.loc 1 2179 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	volatile_insn_p@PLT
	testl	%eax, %eax
	je	.L1075
	.loc 1 2180 0
	movl	$1, -24(%ebp)
	jmp	.L1063
.L1075:
	.loc 1 2178 0
	addl	$1, -8(%ebp)
.L1073:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L1074
.L1071:
.LBE29:
	.loc 1 2168 0
	subl	$1, -12(%ebp)
.L1065:
	cmpl	$0, -12(%ebp)
	jns	.L1066
.LBE28:
	.loc 1 2184 0
	movl	$0, -24(%ebp)
.L1063:
	movl	-24(%ebp), %eax
	.loc 1 2185 0
	addl	$32, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE61:
	.size	volatile_insn_p, .-volatile_insn_p
.globl volatile_refs_p
	.type	volatile_refs_p, @function
volatile_refs_p:
.LFB62:
	.loc 1 2193 0
	pushl	%ebp
.LCFI183:
	movl	%esp, %ebp
.LCFI184:
	pushl	%ebx
.LCFI185:
	subl	$32, %esp
.LCFI186:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2196 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 2197 0
	movl	-20(%ebp), %eax
	subl	$50, %eax
	movl	%eax, -28(%ebp)
	cmpl	$29, -28(%ebp)
	ja	.L1080
	movl	$1, %eax
	movl	%eax, %edx
	movzbl	-28(%ebp), %ecx
	sall	%cl, %edx
	movl	%edx, -32(%ebp)
	movl	-32(%ebp), %eax
	andl	$946717232, %eax
	testl	%eax, %eax
	jne	.L1083
	movl	-32(%ebp), %eax
	andl	$67108867, %eax
	testl	%eax, %eax
	jne	.L1081
	movl	-32(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L1082
	jmp	.L1080
.L1083:
	.loc 1 2212 0
	movl	$0, -24(%ebp)
	jmp	.L1084
.L1082:
	.loc 1 2215 0
	movl	$1, -24(%ebp)
	jmp	.L1084
.L1081:
	.loc 1 2220 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1080
	.loc 1 2221 0
	movl	$1, -24(%ebp)
	jmp	.L1084
.L1080:
.LBB30:
	.loc 1 2230 0
	movl	-20(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2233 0
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L1086
.L1087:
	.loc 1 2235 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1088
	.loc 1 2237 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	volatile_refs_p@PLT
	testl	%eax, %eax
	je	.L1092
	.loc 1 2238 0
	movl	$1, -24(%ebp)
	jmp	.L1084
.L1088:
	.loc 1 2240 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1092
.LBB31:
	.loc 1 2243 0
	movl	$0, -8(%ebp)
	jmp	.L1094
.L1095:
	.loc 1 2244 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	volatile_refs_p@PLT
	testl	%eax, %eax
	je	.L1096
	.loc 1 2245 0
	movl	$1, -24(%ebp)
	jmp	.L1084
.L1096:
	.loc 1 2243 0
	addl	$1, -8(%ebp)
.L1094:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L1095
.L1092:
.LBE31:
	.loc 1 2233 0
	subl	$1, -12(%ebp)
.L1086:
	cmpl	$0, -12(%ebp)
	jns	.L1087
.LBE30:
	.loc 1 2249 0
	movl	$0, -24(%ebp)
.L1084:
	movl	-24(%ebp), %eax
	.loc 1 2250 0
	addl	$32, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE62:
	.size	volatile_refs_p, .-volatile_refs_p
.globl side_effects_p
	.type	side_effects_p, @function
side_effects_p:
.LFB63:
	.loc 1 2258 0
	pushl	%ebp
.LCFI187:
	movl	%esp, %ebp
.LCFI188:
	pushl	%ebx
.LCFI189:
	subl	$28, %esp
.LCFI190:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2261 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 2262 0
	movl	-20(%ebp), %eax
	subl	$50, %eax
	movl	%eax, -28(%ebp)
	cmpl	$61, -28(%ebp)
	ja	.L1101
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	.L1106@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1106:
	.long	.L1102@GOTOFF
	.long	.L1102@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1103@GOTOFF
	.long	.L1104@GOTOFF
	.long	.L1104@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1105@GOTOFF
	.long	.L1103@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1104@GOTOFF
	.long	.L1104@GOTOFF
	.long	.L1104@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1104@GOTOFF
	.long	.L1104@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1104@GOTOFF
	.long	.L1104@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1102@GOTOFF
	.long	.L1104@GOTOFF
	.long	.L1104@GOTOFF
	.long	.L1104@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1103@GOTOFF
	.long	.L1103@GOTOFF
	.long	.L1103@GOTOFF
	.long	.L1103@GOTOFF
	.long	.L1103@GOTOFF
	.long	.L1103@GOTOFF
	.text
.L1104:
	.loc 1 2276 0
	movl	$0, -24(%ebp)
	jmp	.L1107
.L1105:
	.loc 1 2282 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	jmp	.L1107
.L1103:
	.loc 1 2293 0
	movl	$1, -24(%ebp)
	jmp	.L1107
.L1102:
	.loc 1 2298 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1101
	.loc 1 2299 0
	movl	$1, -24(%ebp)
	jmp	.L1107
.L1101:
.LBB32:
	.loc 1 2308 0
	movl	-20(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2311 0
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L1109
.L1110:
	.loc 1 2313 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1111
	.loc 1 2315 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	je	.L1115
	.loc 1 2316 0
	movl	$1, -24(%ebp)
	jmp	.L1107
.L1111:
	.loc 1 2318 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1115
.LBB33:
	.loc 1 2321 0
	movl	$0, -8(%ebp)
	jmp	.L1117
.L1118:
	.loc 1 2322 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	je	.L1119
	.loc 1 2323 0
	movl	$1, -24(%ebp)
	jmp	.L1107
.L1119:
	.loc 1 2321 0
	addl	$1, -8(%ebp)
.L1117:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L1118
.L1115:
.LBE33:
	.loc 1 2311 0
	subl	$1, -12(%ebp)
.L1109:
	cmpl	$0, -12(%ebp)
	jns	.L1110
.LBE32:
	.loc 1 2327 0
	movl	$0, -24(%ebp)
.L1107:
	movl	-24(%ebp), %eax
	.loc 1 2328 0
	addl	$28, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE63:
	.size	side_effects_p, .-side_effects_p
.globl may_trap_p
	.type	may_trap_p, @function
may_trap_p:
.LFB64:
	.loc 1 2335 0
	pushl	%ebp
.LCFI191:
	movl	%esp, %ebp
.LCFI192:
	pushl	%ebx
.LCFI193:
	subl	$36, %esp
.LCFI194:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2340 0
	cmpl	$0, 8(%ebp)
	jne	.L1124
	.loc 1 2341 0
	movl	$0, -24(%ebp)
	jmp	.L1126
.L1124:
	.loc 1 2342 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2343 0
	movl	-16(%ebp), %eax
	subl	$3, %eax
	movl	%eax, -28(%ebp)
	cmpl	$136, -28(%ebp)
	ja	.L1127
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	.L1138@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1138:
	.long	.L1128@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1129@GOTOFF
	.long	.L1130@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1129@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1129@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1131@GOTOFF
	.long	.L1131@GOTOFF
	.long	.L1131@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1131@GOTOFF
	.long	.L1131@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1131@GOTOFF
	.long	.L1131@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1132@GOTOFF
	.long	.L1131@GOTOFF
	.long	.L1131@GOTOFF
	.long	.L1131@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1133@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1161@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1135@GOTOFF
	.long	.L1135@GOTOFF
	.long	.L1135@GOTOFF
	.long	.L1135@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1136@GOTOFF
	.long	.L1136@GOTOFF
	.long	.L1133@GOTOFF
	.long	.L1133@GOTOFF
	.long	.L1133@GOTOFF
	.long	.L1133@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1137@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1127@GOTOFF
	.long	.L1161@GOTOFF
	.text
.L1131:
	.loc 1 2356 0
	movl	$0, -24(%ebp)
	jmp	.L1126
.L1129:
	.loc 1 2361 0
	movl	$1, -24(%ebp)
	jmp	.L1126
.L1130:
	.loc 1 2364 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	jmp	.L1126
.L1132:
	.loc 1 2368 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1139
	.loc 1 2369 0
	movl	$0, -24(%ebp)
	jmp	.L1126
.L1139:
	.loc 1 2370 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	rtx_addr_can_trap_p@PLT
	movl	%eax, -24(%ebp)
	jmp	.L1126
.L1135:
	.loc 1 2377 0
	movl	flag_signaling_nans@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1141
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L1143
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L1143
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L1141
.L1143:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1141
	.loc 1 2378 0
	movl	$1, -24(%ebp)
	jmp	.L1126
.L1141:
	.loc 1 2379 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1147
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1147
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1147
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1147
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1147
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1147
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1147
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1155
.L1147:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	jne	.L1156
	movl	flag_trapping_math@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1156
.L1155:
	.loc 1 2382 0
	movl	$1, -24(%ebp)
	jmp	.L1126
.L1156:
	.loc 1 2385 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1161
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1161
	.loc 1 2386 0
	movl	$1, -24(%ebp)
	jmp	.L1126
.L1128:
	.loc 1 2392 0
	movl	$1, -24(%ebp)
	jmp	.L1126
.L1133:
	.loc 1 2400 0
	movl	flag_trapping_math@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1161
	.loc 1 2406 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L1163
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L1163
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L1166
.L1163:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1166
	.loc 1 2407 0
	movl	$1, -24(%ebp)
	jmp	.L1126
.L1166:
	.loc 1 2410 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L1168
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L1168
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L1171
.L1168:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1172
.L1171:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L1173
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L1173
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L1161
.L1173:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1161
.L1172:
	.loc 1 2412 0
	movl	$1, -24(%ebp)
	jmp	.L1126
.L1136:
	.loc 1 2417 0
	movl	flag_signaling_nans@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1177
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L1179
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L1179
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L1177
.L1179:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1177
	.loc 1 2418 0
	movl	$1, -24(%ebp)
	jmp	.L1126
.L1177:
	.loc 1 2420 0
	movl	flag_signaling_nans@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1183
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L1185
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L1185
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L1183
.L1185:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1188
.L1183:
	movl	flag_signaling_nans@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1161
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L1191
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L1191
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L1161
.L1191:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1161
.L1188:
	.loc 1 2422 0
	movl	$1, -24(%ebp)
	jmp	.L1126
.L1137:
	.loc 1 2427 0
	movl	flag_trapping_math@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1161
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L1196
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L1196
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L1161
.L1196:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1161
	.loc 1 2428 0
	movl	$1, -24(%ebp)
	jmp	.L1126
.L1127:
	.loc 1 2438 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	jne	.L1161
	movl	flag_trapping_math@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1161
	.loc 1 2440 0
	movl	$1, -24(%ebp)
	jmp	.L1126
.L1161:
	.loc 1 2443 0
	movl	-16(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2444 0
	movl	-16(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L1202
.L1203:
	.loc 1 2446 0
	movl	-20(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1204
	.loc 1 2448 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	je	.L1208
	.loc 1 2449 0
	movl	$1, -24(%ebp)
	jmp	.L1126
.L1204:
	.loc 1 2451 0
	movl	-20(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1208
.LBB34:
	.loc 1 2454 0
	movl	$0, -8(%ebp)
	jmp	.L1210
.L1211:
	.loc 1 2455 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	je	.L1212
	.loc 1 2456 0
	movl	$1, -24(%ebp)
	jmp	.L1126
.L1212:
	.loc 1 2454 0
	addl	$1, -8(%ebp)
.L1210:
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L1211
.L1208:
.LBE34:
	.loc 1 2444 0
	subl	$1, -20(%ebp)
.L1202:
	cmpl	$0, -20(%ebp)
	jns	.L1203
	.loc 1 2459 0
	movl	$0, -24(%ebp)
.L1126:
	movl	-24(%ebp), %eax
	.loc 1 2460 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE64:
	.size	may_trap_p, .-may_trap_p
.globl inequality_comparisons_p
	.type	inequality_comparisons_p, @function
inequality_comparisons_p:
.LFB65:
	.loc 1 2468 0
	pushl	%ebp
.LCFI195:
	movl	%esp, %ebp
.LCFI196:
	pushl	%ebx
.LCFI197:
	subl	$44, %esp
.LCFI198:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2471 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	.loc 1 2473 0
	movl	-12(%ebp), %eax
	subl	$64, %eax
	movl	%eax, -44(%ebp)
	cmpl	$57, -44(%ebp)
	ja	.L1217
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	.L1220@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1220:
	.long	.L1218@GOTOFF
	.long	.L1218@GOTOFF
	.long	.L1218@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1218@GOTOFF
	.long	.L1218@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1218@GOTOFF
	.long	.L1218@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1218@GOTOFF
	.long	.L1218@GOTOFF
	.long	.L1218@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1217@GOTOFF
	.long	.L1219@GOTOFF
	.long	.L1219@GOTOFF
	.long	.L1219@GOTOFF
	.long	.L1219@GOTOFF
	.long	.L1219@GOTOFF
	.long	.L1219@GOTOFF
	.long	.L1219@GOTOFF
	.long	.L1219@GOTOFF
	.text
.L1218:
	.loc 1 2485 0
	movl	$0, -40(%ebp)
	jmp	.L1221
.L1219:
	.loc 1 2495 0
	movl	$1, -40(%ebp)
	jmp	.L1221
.L1217:
	.loc 1 2501 0
	movl	-12(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 2502 0
	movl	-12(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2504 0
	movl	$0, -16(%ebp)
	jmp	.L1222
.L1223:
	.loc 1 2506 0
	movl	-16(%ebp), %eax
	addl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1224
	.loc 1 2508 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	inequality_comparisons_p@PLT
	testl	%eax, %eax
	je	.L1228
	.loc 1 2509 0
	movl	$1, -40(%ebp)
	jmp	.L1221
.L1224:
	.loc 1 2511 0
	movl	-16(%ebp), %eax
	addl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1228
.LBB35:
	.loc 1 2514 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L1230
.L1231:
	.loc 1 2515 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	inequality_comparisons_p@PLT
	testl	%eax, %eax
	je	.L1232
	.loc 1 2516 0
	movl	$1, -40(%ebp)
	jmp	.L1221
.L1232:
	.loc 1 2514 0
	subl	$1, -8(%ebp)
.L1230:
	cmpl	$0, -8(%ebp)
	jns	.L1231
.L1228:
.LBE35:
	.loc 1 2504 0
	addl	$1, -16(%ebp)
.L1222:
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L1223
	.loc 1 2520 0
	movl	$0, -40(%ebp)
.L1221:
	movl	-40(%ebp), %eax
	.loc 1 2521 0
	addl	$44, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE65:
	.size	inequality_comparisons_p, .-inequality_comparisons_p
	.section	.rodata
	.type	__FUNCTION__.12913, @object
	.size	__FUNCTION__.12913, 12
__FUNCTION__.12913:
	.string	"replace_rtx"
	.text
.globl replace_rtx
	.type	replace_rtx, @function
replace_rtx:
.LFB66:
	.loc 1 2532 0
	pushl	%ebp
.LCFI199:
	movl	%esp, %ebp
.LCFI200:
	pushl	%edi
.LCFI201:
	pushl	%esi
.LCFI202:
	pushl	%ebx
.LCFI203:
	subl	$60, %esp
.LCFI204:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2538 0
	cmpl	$0, 8(%ebp)
	je	.L1237
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L1237
	.loc 1 2539 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1240
.L1237:
	.loc 1 2541 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L1241
	.loc 1 2542 0
	movl	16(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1240
.L1241:
	.loc 1 2545 0
	cmpl	$0, 8(%ebp)
	jne	.L1243
	.loc 1 2546 0
	movl	$0, -48(%ebp)
	jmp	.L1240
.L1243:
	.loc 1 2548 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1245
.LBB36:
	.loc 1 2550 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	replace_rtx@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2552 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1247
	.loc 1 2554 0
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	simplify_subreg@PLT
	movl	%eax, 8(%ebp)
	.loc 1 2557 0
	cmpl	$0, 8(%ebp)
	jne	.L1251
	.loc 1 2558 0
	leal	__FUNCTION__.12913@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2558, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1247:
	.loc 1 2561 0
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%edx)
.L1251:
	.loc 1 2563 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1240
.L1245:
.LBE36:
	.loc 1 2565 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$131, %ax
	jne	.L1252
.LBB37:
	.loc 1 2567 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	replace_rtx@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2569 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1254
	.loc 1 2571 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$131, (%esp)
	call	simplify_unary_operation@PLT
	movl	%eax, 8(%ebp)
	.loc 1 2573 0
	cmpl	$0, 8(%ebp)
	jne	.L1258
	.loc 1 2574 0
	leal	__FUNCTION__.12913@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2574, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1254:
	.loc 1 2577 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%edx)
.L1258:
	.loc 1 2579 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1240
.L1252:
.LBE37:
	.loc 1 2582 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2583 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	jmp	.L1259
.L1260:
	.loc 1 2585 0
	movl	-32(%ebp), %eax
	addl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1261
	.loc 1 2586 0
	movl	-32(%ebp), %esi
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	replace_rtx@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax,%esi,8)
	jmp	.L1263
.L1261:
	.loc 1 2587 0
	movl	-32(%ebp), %eax
	addl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1263
	.loc 1 2588 0
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	jmp	.L1265
.L1266:
	.loc 1 2589 0
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	-28(%ebp), %edi
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	replace_rtx@PLT
	movl	%eax, 4(%esi,%edi,4)
	.loc 1 2588 0
	subl	$1, -28(%ebp)
.L1265:
	cmpl	$0, -28(%ebp)
	jns	.L1266
.L1263:
	.loc 1 2583 0
	subl	$1, -32(%ebp)
.L1259:
	cmpl	$0, -32(%ebp)
	jns	.L1260
	.loc 1 2592 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
.L1240:
	movl	-48(%ebp), %eax
	.loc 1 2593 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE66:
	.size	replace_rtx, .-replace_rtx
.globl replace_regs
	.type	replace_regs, @function
replace_regs:
.LFB67:
	.loc 1 2613 0
	pushl	%ebp
.LCFI205:
	movl	%esp, %ebp
.LCFI206:
	pushl	%edi
.LCFI207:
	pushl	%esi
.LCFI208:
	pushl	%ebx
.LCFI209:
	subl	$60, %esp
.LCFI210:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2618 0
	cmpl	$0, 8(%ebp)
	jne	.L1270
	.loc 1 2619 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1272
.L1270:
	.loc 1 2621 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -32(%ebp)
	.loc 1 2622 0
	movl	-32(%ebp), %eax
	subl	$57, %eax
	movl	%eax, -52(%ebp)
	cmpl	$22, -52(%ebp)
	ja	.L1273
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	.L1278@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1278:
	.long	.L1274@GOTOFF
	.long	.L1273@GOTOFF
	.long	.L1273@GOTOFF
	.long	.L1273@GOTOFF
	.long	.L1273@GOTOFF
	.long	.L1273@GOTOFF
	.long	.L1273@GOTOFF
	.long	.L1275@GOTOFF
	.long	.L1275@GOTOFF
	.long	.L1275@GOTOFF
	.long	.L1273@GOTOFF
	.long	.L1275@GOTOFF
	.long	.L1275@GOTOFF
	.long	.L1273@GOTOFF
	.long	.L1276@GOTOFF
	.long	.L1275@GOTOFF
	.long	.L1277@GOTOFF
	.long	.L1273@GOTOFF
	.long	.L1273@GOTOFF
	.long	.L1273@GOTOFF
	.long	.L1275@GOTOFF
	.long	.L1275@GOTOFF
	.long	.L1275@GOTOFF
	.text
.L1275:
	.loc 1 2633 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1272
.L1276:
	.loc 1 2637 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	16(%ebp), %eax
	jae	.L1279
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1279
	.loc 1 2642 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1282
	.loc 1 2643 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -48(%ebp)
	jmp	.L1272
.L1282:
	.loc 1 2644 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1272
.L1279:
	.loc 1 2646 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1272
.L1277:
	.loc 1 2650 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1273
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	16(%ebp), %eax
	jae	.L1273
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1273
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1273
.LBB38:
	.loc 1 2654 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2655 0
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	simplify_gen_subreg@PLT
	movl	%eax, -48(%ebp)
	jmp	.L1272
.L1274:
.LBE38:
	.loc 1 2662 0
	cmpl	$0, 20(%ebp)
	je	.L1289
	.loc 1 2663 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	replace_regs@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L1291
.L1289:
	.loc 1 2665 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L1292
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	jne	.L1294
.L1292:
	.loc 1 2670 0
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	replace_regs@PLT
	movl	%eax, 4(%esi)
	.loc 1 2665 0
	jmp	.L1291
.L1294:
	.loc 1 2672 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L1273
.L1291:
	.loc 1 2676 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	replace_regs@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2677 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1272
.L1273:
	.loc 1 2683 0
	movl	-32(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2684 0
	movl	-32(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	jmp	.L1295
.L1296:
	.loc 1 2686 0
	movl	-28(%ebp), %eax
	addl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1297
	.loc 1 2687 0
	movl	-28(%ebp), %esi
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	replace_regs@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax,%esi,8)
	jmp	.L1299
.L1297:
	.loc 1 2688 0
	movl	-28(%ebp), %eax
	addl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1299
.LBB39:
	.loc 1 2691 0
	movl	$0, -16(%ebp)
	jmp	.L1301
.L1302:
	.loc 1 2692 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	-16(%ebp), %edi
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	replace_regs@PLT
	movl	%eax, 4(%esi,%edi,4)
	.loc 1 2691 0
	addl	$1, -16(%ebp)
.L1301:
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L1302
.L1299:
.LBE39:
	.loc 1 2684 0
	subl	$1, -28(%ebp)
.L1295:
	cmpl	$0, -28(%ebp)
	jns	.L1296
	.loc 1 2696 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
.L1272:
	movl	-48(%ebp), %eax
	.loc 1 2697 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE67:
	.size	replace_regs, .-replace_regs
	.type	computed_jump_p_1, @function
computed_jump_p_1:
.LFB68:
	.loc 1 2706 0
	pushl	%ebp
.LCFI211:
	movl	%esp, %ebp
.LCFI212:
	pushl	%ebx
.LCFI213:
	subl	$36, %esp
.LCFI214:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2707 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 2711 0
	movl	-20(%ebp), %eax
	subl	$64, %eax
	movl	%eax, -36(%ebp)
	cmpl	$18, -36(%ebp)
	ja	.L1306
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	.L1311@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1311:
	.long	.L1307@GOTOFF
	.long	.L1307@GOTOFF
	.long	.L1307@GOTOFF
	.long	.L1306@GOTOFF
	.long	.L1307@GOTOFF
	.long	.L1308@GOTOFF
	.long	.L1306@GOTOFF
	.long	.L1307@GOTOFF
	.long	.L1306@GOTOFF
	.long	.L1306@GOTOFF
	.long	.L1306@GOTOFF
	.long	.L1306@GOTOFF
	.long	.L1309@GOTOFF
	.long	.L1308@GOTOFF
	.long	.L1307@GOTOFF
	.long	.L1306@GOTOFF
	.long	.L1306@GOTOFF
	.long	.L1306@GOTOFF
	.long	.L1310@GOTOFF
	.text
.L1308:
	.loc 1 2715 0
	movl	$0, -32(%ebp)
	jmp	.L1312
.L1307:
	.loc 1 2723 0
	movl	$1, -32(%ebp)
	jmp	.L1312
.L1309:
	.loc 1 2726 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L1313
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1315
.L1313:
	movl	$1, -28(%ebp)
	jmp	.L1316
.L1315:
	movl	$0, -28(%ebp)
.L1316:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1312
.L1310:
	.loc 1 2730 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	computed_jump_p_1
	testl	%eax, %eax
	jne	.L1317
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	computed_jump_p_1
	testl	%eax, %eax
	je	.L1319
.L1317:
	movl	$1, -24(%ebp)
	jmp	.L1320
.L1319:
	movl	$0, -24(%ebp)
.L1320:
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1312
.L1306:
	.loc 1 2737 0
	movl	-20(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2738 0
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L1321
.L1322:
	.loc 1 2740 0
	movl	-16(%ebp), %eax
	addl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1323
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	computed_jump_p_1
	testl	%eax, %eax
	je	.L1323
	.loc 1 2742 0
	movl	$1, -32(%ebp)
	jmp	.L1312
.L1323:
	.loc 1 2744 0
	movl	-16(%ebp), %eax
	addl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1326
	.loc 1 2745 0
	movl	$0, -12(%ebp)
	jmp	.L1328
.L1329:
	.loc 1 2746 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	computed_jump_p_1
	testl	%eax, %eax
	je	.L1330
	.loc 1 2747 0
	movl	$1, -32(%ebp)
	jmp	.L1312
.L1330:
	.loc 1 2745 0
	addl	$1, -12(%ebp)
.L1328:
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L1329
.L1326:
	.loc 1 2738 0
	subl	$1, -16(%ebp)
.L1321:
	cmpl	$0, -16(%ebp)
	jns	.L1322
	.loc 1 2750 0
	movl	$0, -32(%ebp)
.L1312:
	movl	-32(%ebp), %eax
	.loc 1 2751 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE68:
	.size	computed_jump_p_1, .-computed_jump_p_1
.globl computed_jump_p
	.type	computed_jump_p, @function
computed_jump_p:
.LFB69:
	.loc 1 2761 0
	pushl	%ebp
.LCFI215:
	movl	%esp, %ebp
.LCFI216:
	pushl	%ebx
.LCFI217:
	subl	$36, %esp
.LCFI218:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2763 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1335
.LBB40:
	.loc 1 2765 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2767 0
	movl	$0, 8(%esp)
	movl	$13, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L1337
	.loc 1 2768 0
	movl	$0, -24(%ebp)
	jmp	.L1339
.L1337:
	.loc 1 2769 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L1340
.LBB41:
	.loc 1 2771 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2772 0
	movl	$0, -8(%ebp)
	.loc 1 2774 0
	movl	-12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L1342
.L1343:
	.loc 1 2775 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L1344
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L1344
	.loc 1 2778 0
	movl	$1, -8(%ebp)
.L1344:
	.loc 1 2774 0
	subl	$1, -20(%ebp)
.L1342:
	cmpl	$0, -20(%ebp)
	jns	.L1343
	.loc 1 2780 0
	cmpl	$0, -8(%ebp)
	jne	.L1335
	.loc 1 2781 0
	movl	-12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L1350
.L1351:
	.loc 1 2782 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1352
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1352
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	computed_jump_p_1
	testl	%eax, %eax
	je	.L1352
	.loc 1 2785 0
	movl	$1, -24(%ebp)
	jmp	.L1339
.L1352:
	.loc 1 2781 0
	subl	$1, -20(%ebp)
.L1350:
	cmpl	$0, -20(%ebp)
	jns	.L1351
	jmp	.L1335
.L1340:
.LBE41:
	.loc 1 2787 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1335
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1335
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	computed_jump_p_1
	testl	%eax, %eax
	je	.L1335
	.loc 1 2790 0
	movl	$1, -24(%ebp)
	jmp	.L1339
.L1335:
.LBE40:
	.loc 1 2792 0
	movl	$0, -24(%ebp)
.L1339:
	movl	-24(%ebp), %eax
	.loc 1 2793 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE69:
	.size	computed_jump_p, .-computed_jump_p
.globl for_each_rtx
	.type	for_each_rtx, @function
for_each_rtx:
.LFB70:
	.loc 1 2813 0
	pushl	%ebp
.LCFI219:
	movl	%esp, %ebp
.LCFI220:
	pushl	%ebx
.LCFI221:
	subl	$52, %esp
.LCFI222:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2820 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	movl	%eax, -24(%ebp)
	.loc 1 2821 0
	cmpl	$-1, -24(%ebp)
	jne	.L1361
	.loc 1 2823 0
	movl	$0, -44(%ebp)
	jmp	.L1363
.L1361:
	.loc 1 2824 0
	cmpl	$0, -24(%ebp)
	je	.L1364
	.loc 1 2826 0
	movl	-24(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1363
.L1364:
	.loc 1 2828 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1366
	.loc 1 2830 0
	movl	$0, -44(%ebp)
	jmp	.L1363
.L1366:
	.loc 1 2832 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 2833 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2835 0
	movl	$0, -12(%ebp)
	jmp	.L1368
.L1369:
	.loc 1 2837 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	cmpl	$86, -40(%ebp)
	je	.L1371
	cmpl	$101, -40(%ebp)
	je	.L1372
	cmpl	$69, -40(%ebp)
	je	.L1371
	jmp	.L1370
.L1372:
	.loc 1 2840 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	leal	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	for_each_rtx@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2841 0
	cmpl	$0, -24(%ebp)
	je	.L1370
	.loc 1 2842 0
	movl	-24(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1363
.L1371:
	.loc 1 2847 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L1370
.LBB42:
	.loc 1 2850 0
	movl	$0, -8(%ebp)
	jmp	.L1376
.L1377:
	.loc 1 2852 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	leal	4(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	for_each_rtx@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2853 0
	cmpl	$0, -24(%ebp)
	je	.L1378
	.loc 1 2854 0
	movl	-24(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1363
.L1378:
	.loc 1 2850 0
	addl	$1, -8(%ebp)
.L1376:
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L1377
.L1370:
.LBE42:
	.loc 1 2835 0
	addl	$1, -12(%ebp)
.L1368:
	movl	-12(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L1369
	.loc 1 2866 0
	movl	$0, -44(%ebp)
.L1363:
	movl	-44(%ebp), %eax
	.loc 1 2867 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE70:
	.size	for_each_rtx, .-for_each_rtx
.globl regno_use_in
	.type	regno_use_in, @function
regno_use_in:
.LFB71:
	.loc 1 2876 0
	pushl	%ebp
.LCFI223:
	movl	%esp, %ebp
.LCFI224:
	pushl	%ebx
.LCFI225:
	subl	$28, %esp
.LCFI226:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2881 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1383
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1383
	.loc 1 2882 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1386
.L1383:
	.loc 1 2884 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2885 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L1387
.L1388:
	.loc 1 2887 0
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1389
	.loc 1 2889 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	regno_use_in@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L1393
	.loc 1 2890 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1386
.L1389:
	.loc 1 2892 0
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1393
	.loc 1 2893 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L1395
.L1396:
	.loc 1 2894 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	regno_use_in@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L1397
	.loc 1 2895 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1386
.L1397:
	.loc 1 2893 0
	subl	$1, -12(%ebp)
.L1395:
	cmpl	$0, -12(%ebp)
	jns	.L1396
.L1393:
	.loc 1 2885 0
	subl	$1, -16(%ebp)
.L1387:
	cmpl	$0, -16(%ebp)
	jns	.L1388
	.loc 1 2898 0
	movl	$0, -24(%ebp)
.L1386:
	movl	-24(%ebp), %eax
	.loc 1 2899 0
	addl	$28, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE71:
	.size	regno_use_in, .-regno_use_in
.globl commutative_operand_precedence
	.type	commutative_operand_precedence, @function
commutative_operand_precedence:
.LFB72:
	.loc 1 2910 0
	pushl	%ebp
.LCFI227:
	movl	%esp, %ebp
.LCFI228:
	subl	$4, %esp
.LCFI229:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2912 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1402
	.loc 1 2913 0
	movl	$-5, -4(%ebp)
	jmp	.L1404
.L1402:
	.loc 1 2914 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L1405
	.loc 1 2915 0
	movl	$-4, -4(%ebp)
	jmp	.L1404
.L1405:
	.loc 1 2916 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1407
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1407
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1407
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1407
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1407
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1407
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1407
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1415
.L1407:
	.loc 1 2917 0
	movl	$-3, -4(%ebp)
	jmp	.L1404
.L1415:
	.loc 1 2920 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1416
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$111, %al
	jne	.L1416
	.loc 1 2922 0
	movl	$-2, -4(%ebp)
	jmp	.L1404
.L1416:
	.loc 1 2927 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$87, %ax
	je	.L1419
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$96, %ax
	je	.L1419
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	je	.L1419
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L1419
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	jne	.L1424
.L1419:
	.loc 1 2930 0
	movl	$2, -4(%ebp)
	jmp	.L1404
.L1424:
	.loc 1 2934 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$111, %al
	jne	.L1425
	.loc 1 2935 0
	movl	$-1, -4(%ebp)
	jmp	.L1404
.L1425:
	.loc 1 2936 0
	movl	$0, -4(%ebp)
.L1404:
	movl	-4(%ebp), %eax
	.loc 1 2937 0
	leave
	ret
.LFE72:
	.size	commutative_operand_precedence, .-commutative_operand_precedence
.globl swap_commutative_operands_p
	.type	swap_commutative_operands_p, @function
swap_commutative_operands_p:
.LFB73:
	.loc 1 2945 0
	pushl	%ebp
.LCFI230:
	movl	%esp, %ebp
.LCFI231:
	pushl	%esi
.LCFI232:
	pushl	%ebx
.LCFI233:
	subl	$16, %esp
.LCFI234:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2946 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	commutative_operand_precedence@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	commutative_operand_precedence@PLT
	cmpl	%eax, %esi
	setl	%al
	movzbl	%al, %eax
	.loc 1 2948 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE73:
	.size	swap_commutative_operands_p, .-swap_commutative_operands_p
.globl auto_inc_p
	.type	auto_inc_p, @function
auto_inc_p:
.LFB74:
	.loc 1 2955 0
	pushl	%ebp
.LCFI235:
	movl	%esp, %ebp
.LCFI236:
	subl	$4, %esp
.LCFI237:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2956 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$106, %eax
	cmpl	$5, %eax
	ja	.L1431
	.loc 1 2965 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ecx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	.L1431
	.loc 1 2966 0
	movl	$1, -4(%ebp)
	jmp	.L1434
.L1431:
	.loc 1 2970 0
	movl	$0, -4(%ebp)
.L1434:
	movl	-4(%ebp), %eax
	.loc 1 2971 0
	leave
	ret
.LFE74:
	.size	auto_inc_p, .-auto_inc_p
.globl insns_safe_to_move_p
	.type	insns_safe_to_move_p, @function
insns_safe_to_move_p:
.LFB75:
	.loc 1 2988 0
	pushl	%ebp
.LCFI238:
	movl	%esp, %ebp
.LCFI239:
	subl	$24, %esp
.LCFI240:
	.loc 1 2989 0
	movl	$0, -12(%ebp)
	.loc 1 2990 0
	movl	$0, -8(%ebp)
	.loc 1 2991 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 2995 0
	cmpl	$0, 16(%ebp)
	je	.L1439
	.loc 1 2996 0
	movl	16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2998 0
	jmp	.L1439
.L1440:
	.loc 1 3000 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L1441
	.loc 1 3002 0
	movl	-4(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	cmpl	$-86, -24(%ebp)
	je	.L1444
	cmpl	$-85, -24(%ebp)
	je	.L1445
	jmp	.L1449
.L1444:
	.loc 1 3005 0
	addl	$1, -12(%ebp)
	.loc 1 3006 0
	jmp	.L1449
.L1445:
	.loc 1 3009 0
	cmpl	$0, -12(%ebp)
	jne	.L1446
	.loc 1 3013 0
	movl	$0, -20(%ebp)
	jmp	.L1448
.L1446:
	.loc 1 3015 0
	subl	$1, -12(%ebp)
	jmp	.L1449
.L1441:
	.loc 1 3022 0
	cmpl	$0, -8(%ebp)
	je	.L1449
	.loc 1 3025 0
	movl	$0, -20(%ebp)
	jmp	.L1448
.L1449:
	.loc 1 3027 0
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L1451
	.loc 1 3029 0
	cmpl	$0, 16(%ebp)
	jne	.L1453
	.loc 1 3032 0
	cmpl	$0, -12(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	jmp	.L1448
.L1453:
	.loc 1 3034 0
	movl	$1, -8(%ebp)
.L1451:
	.loc 1 3039 0
	cmpl	$0, -8(%ebp)
	je	.L1455
	cmpl	$0, -12(%ebp)
	jne	.L1455
	.loc 1 3041 0
	movl	16(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3042 0
	movl	$1, -20(%ebp)
	jmp	.L1448
.L1455:
	.loc 1 3046 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
.L1439:
	.loc 1 2998 0
	cmpl	$0, -4(%ebp)
	jne	.L1440
	.loc 1 3049 0
	movl	$0, -20(%ebp)
.L1448:
	movl	-20(%ebp), %eax
	.loc 1 3050 0
	leave
	ret
.LFE75:
	.size	insns_safe_to_move_p, .-insns_safe_to_move_p
.globl loc_mentioned_in_p
	.type	loc_mentioned_in_p, @function
loc_mentioned_in_p:
.LFB76:
	.loc 1 3056 0
	pushl	%ebp
.LCFI241:
	movl	%esp, %ebp
.LCFI242:
	pushl	%ebx
.LCFI243:
	subl	$28, %esp
.LCFI244:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3057 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 3058 0
	movl	-20(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3061 0
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L1461
.L1462:
	.loc 1 3063 0
	movl	-12(%ebp), %eax
	sall	$3, %eax
	addl	12(%ebp), %eax
	addl	$4, %eax
	cmpl	8(%ebp), %eax
	jne	.L1463
	.loc 1 3064 0
	movl	$1, -24(%ebp)
	jmp	.L1465
.L1463:
	.loc 1 3065 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1466
	.loc 1 3067 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loc_mentioned_in_p@PLT
	testl	%eax, %eax
	je	.L1470
	.loc 1 3068 0
	movl	$1, -24(%ebp)
	jmp	.L1465
.L1466:
	.loc 1 3070 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1470
	.loc 1 3071 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L1472
.L1473:
	.loc 1 3072 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loc_mentioned_in_p@PLT
	testl	%eax, %eax
	je	.L1474
	.loc 1 3073 0
	movl	$1, -24(%ebp)
	jmp	.L1465
.L1474:
	.loc 1 3071 0
	subl	$1, -8(%ebp)
.L1472:
	cmpl	$0, -8(%ebp)
	jns	.L1473
.L1470:
	.loc 1 3061 0
	subl	$1, -12(%ebp)
.L1461:
	cmpl	$0, -12(%ebp)
	jns	.L1462
	.loc 1 3075 0
	movl	$0, -24(%ebp)
.L1465:
	movl	-24(%ebp), %eax
	.loc 1 3076 0
	addl	$28, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE76:
	.size	loc_mentioned_in_p, .-loc_mentioned_in_p
	.section	.rodata
	.type	__FUNCTION__.13607, @object
	.size	__FUNCTION__.13607, 11
__FUNCTION__.13607:
	.string	"subreg_lsb"
	.text
.globl subreg_lsb
	.type	subreg_lsb, @function
subreg_lsb:
.LFB77:
	.loc 1 3084 0
	pushl	%ebp
.LCFI245:
	movl	%esp, %ebp
.LCFI246:
	pushl	%esi
.LCFI247:
	pushl	%ebx
.LCFI248:
	subl	$72, %esp
.LCFI249:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3085 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 3086 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 3092 0
	movl	-24(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movl	-28(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	cmpw	%ax, %cx
	jbe	.L1479
	.loc 1 3093 0
	movl	$0, -80(%ebp)
	jmp	.L1481
.L1479:
	.loc 1 3104 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1482
	.loc 1 3105 0
	movl	-28(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %esi
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-24(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	leal	(%ecx,%eax), %eax
	movl	%esi, %edx
	subl	%eax, %edx
	movl	%edx, -76(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1484
	movl	$8, -72(%ebp)
	jmp	.L1486
.L1484:
	movl	$4, -72(%ebp)
.L1486:
	movl	-76(%ebp), %eax
	movl	$0, %edx
	divl	-72(%ebp)
	movl	%eax, -12(%ebp)
	jmp	.L1487
.L1482:
	.loc 1 3108 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -68(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1488
	movl	$8, -64(%ebp)
	jmp	.L1490
.L1488:
	movl	$4, -64(%ebp)
.L1490:
	movl	-68(%ebp), %eax
	movl	$0, %edx
	divl	-64(%ebp)
	movl	%eax, -12(%ebp)
.L1487:
	.loc 1 3109 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1491
	movl	$64, -60(%ebp)
	jmp	.L1493
.L1491:
	movl	$32, -60(%ebp)
.L1493:
	movl	-60(%ebp), %eax
	imull	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3111 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1494
	.loc 1 3112 0
	movl	-28(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %esi
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-24(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	leal	(%ecx,%eax), %eax
	movl	%esi, %edx
	subl	%eax, %edx
	movl	%edx, -56(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1496
	movl	$8, -52(%ebp)
	jmp	.L1498
.L1496:
	movl	$4, -52(%ebp)
.L1498:
	movl	-56(%ebp), %eax
	movl	$0, %edx
	divl	-52(%ebp)
	movl	%edx, -16(%ebp)
	jmp	.L1499
.L1494:
	.loc 1 3115 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1500
	movl	$8, -44(%ebp)
	jmp	.L1502
.L1500:
	movl	$4, -44(%ebp)
.L1502:
	movl	-48(%ebp), %eax
	movl	$0, %edx
	divl	-44(%ebp)
	movl	%edx, -16(%ebp)
.L1499:
	.loc 1 3116 0
	movl	-16(%ebp), %eax
	sall	$3, %eax
	addl	%eax, -20(%ebp)
	.loc 1 3118 0
	movl	-20(%ebp), %eax
	movl	%eax, -80(%ebp)
.L1481:
	movl	-80(%ebp), %eax
	.loc 1 3119 0
	addl	$72, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE77:
	.size	subreg_lsb, .-subreg_lsb
	.section	.rodata
	.type	__FUNCTION__.13734, @object
	.size	__FUNCTION__.13734, 20
__FUNCTION__.13734:
	.string	"subreg_regno_offset"
	.text
.globl subreg_regno_offset
	.type	subreg_regno_offset, @function
subreg_regno_offset:
.LFB78:
	.loc 1 3133 0
	pushl	%ebp
.LCFI250:
	movl	%esp, %ebp
.LCFI251:
	pushl	%ebx
.LCFI252:
	subl	$52, %esp
.LCFI253:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3138 0
	cmpl	$175, 8(%ebp)
	jbe	.L1505
	.loc 1 3139 0
	leal	__FUNCTION__.13734@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3139, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1505:
	.loc 1 3141 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -24(%ebp)
	.loc 1 3142 0
	movl	8(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3147 0
	cmpl	$0, 16(%ebp)
	jne	.L1507
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jle	.L1507
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1507
	.loc 1 3151 0
	movl	-20(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -40(%ebp)
	jmp	.L1511
.L1507:
	.loc 1 3153 0
	cmpl	$0, 16(%ebp)
	je	.L1512
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L1514
.L1512:
	.loc 1 3154 0
	movl	$0, -40(%ebp)
	jmp	.L1511
.L1514:
	.loc 1 3157 0
	movl	12(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	20(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %edx
	movzbw	%cl, %ax
	divb	%dl
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 3158 0
	cmpl	$0, -16(%ebp)
	jne	.L1515
	.loc 1 3159 0
	leal	__FUNCTION__.13734@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3159, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1515:
	.loc 1 3161 0
	movl	20(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %edx
	movl	16(%ebp), %eax
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%eax, -8(%ebp)
	.loc 1 3162 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-20(%ebp)
	movl	%eax, -12(%ebp)
	.loc 1 3163 0
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-12(%ebp)
	movl	-8(%ebp), %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	imull	-20(%ebp), %eax
	movl	%eax, -40(%ebp)
.L1511:
	movl	-40(%ebp), %eax
	.loc 1 3164 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE78:
	.size	subreg_regno_offset, .-subreg_regno_offset
	.section	.rodata
	.type	__FUNCTION__.13780, @object
	.size	__FUNCTION__.13780, 30
__FUNCTION__.13780:
	.string	"subreg_offset_representable_p"
	.text
.globl subreg_offset_representable_p
	.type	subreg_offset_representable_p, @function
subreg_offset_representable_p:
.LFB79:
	.loc 1 3179 0
	pushl	%ebp
.LCFI254:
	movl	%esp, %ebp
.LCFI255:
	pushl	%ebx
.LCFI256:
	subl	$52, %esp
.LCFI257:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3184 0
	cmpl	$175, 8(%ebp)
	jbe	.L1519
	.loc 1 3185 0
	leal	__FUNCTION__.13780@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3185, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1519:
	.loc 1 3187 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -24(%ebp)
	.loc 1 3188 0
	movl	8(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3191 0
	cmpl	$0, 16(%ebp)
	jne	.L1521
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jle	.L1521
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1521
	.loc 1 3195 0
	movl	$1, -40(%ebp)
	jmp	.L1525
.L1521:
	.loc 1 3198 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_lowpart_offset@PLT
	cmpl	16(%ebp), %eax
	jne	.L1526
	.loc 1 3199 0
	movl	$1, -40(%ebp)
	jmp	.L1525
.L1526:
	.loc 1 3214 0
	movl	12(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-24(%ebp)
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	mode_for_size@PLT
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_lowpart_offset@PLT
	subl	%eax, 16(%ebp)
	.loc 1 3220 0
	movl	12(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	20(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %edx
	movzbw	%cl, %ax
	divb	%dl
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 3221 0
	cmpl	$0, -16(%ebp)
	jne	.L1528
	.loc 1 3222 0
	leal	__FUNCTION__.13780@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3222, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1528:
	.loc 1 3224 0
	movl	20(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %edx
	movl	16(%ebp), %eax
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%eax, -8(%ebp)
	.loc 1 3225 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-20(%ebp)
	movl	%eax, -12(%ebp)
	.loc 1 3231 0
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-12(%ebp)
	movl	-8(%ebp), %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
.L1525:
	movl	-40(%ebp), %eax
	.loc 1 3232 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE79:
	.size	subreg_offset_representable_p, .-subreg_offset_representable_p
.globl subreg_regno
	.type	subreg_regno, @function
subreg_regno:
.LFB80:
	.loc 1 3238 0
	pushl	%ebp
.LCFI258:
	movl	%esp, %ebp
.LCFI259:
	pushl	%esi
.LCFI260:
	pushl	%ebx
.LCFI261:
	subl	$32, %esp
.LCFI262:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3240 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3241 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3243 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-12(%ebp), %edx
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	subreg_regno_offset@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3247 0
	movl	-20(%ebp), %eax
	.loc 1 3249 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE80:
	.size	subreg_regno, .-subreg_regno
	.type	parms_set, @function
parms_set:
.LFB81:
	.loc 1 3261 0
	pushl	%ebp
.LCFI263:
	movl	%esp, %ebp
.LCFI264:
	pushl	%edi
.LCFI265:
	pushl	%esi
.LCFI266:
	subl	$32, %esp
.LCFI267:
	.loc 1 3262 0
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3263 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1538
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1538
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-12(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	8(%eax,%edx,8), %edi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L1540
	movl	%edx, %eax
	xorl	%edx, %edx
.L1540:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1538
	.loc 1 3266 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -36(%ebp)
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	8(%eax,%edx,8), %edi
	movl	%esi, -32(%ebp)
	movl	%edi, -28(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1539
	movl	%eax, %edx
	xorl	%eax, %eax
.L1539:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-32(%ebp), %eax
	andl	%esi, %eax
	movl	-28(%ebp), %edx
	andl	%edi, %edx
	movl	-12(%ebp), %ecx
	movl	-36(%ebp), %edi
	movl	%eax, 4(%ecx,%edi,8)
	movl	%edx, 8(%ecx,%edi,8)
	.loc 1 3267 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
.L1538:
	.loc 1 3269 0
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE81:
	.size	parms_set, .-parms_set
	.section	.rodata
	.type	__FUNCTION__.13884, @object
	.size	__FUNCTION__.13884, 26
__FUNCTION__.13884:
	.string	"find_first_parameter_load"
	.text
.globl find_first_parameter_load
	.type	find_first_parameter_load, @function
find_first_parameter_load:
.LFB82:
	.loc 1 3276 0
	pushl	%ebp
.LCFI268:
	movl	%esp, %ebp
.LCFI269:
	pushl	%edi
.LCFI270:
	pushl	%esi
.LCFI271:
	pushl	%ebx
.LCFI272:
	subl	$124, %esp
.LCFI273:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB43:
	.loc 1 3283 0
	leal	-56(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-20(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE43:
	.loc 1 3284 0
	movl	$0, -56(%ebp)
	.loc 1 3285 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1542
.L1543:
	.loc 1 3286 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L1544
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1544
	.loc 1 3289 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1547
	.loc 1 3290 0
	leal	__FUNCTION__.13884@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3290, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1547:
	.loc 1 3294 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	subl	$4, %eax
	movl	%eax, -120(%ebp)
	movl	$0, -116(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1549
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L1551
.L1549:
	movl	$3, -112(%ebp)
	movl	$0, -108(%ebp)
	jmp	.L1552
.L1551:
	movl	$7, -112(%ebp)
	movl	$0, -108(%ebp)
.L1552:
	movl	-108(%ebp), %eax
	cmpl	%eax, -116(%ebp)
	jb	.L1553
	movl	-108(%ebp), %edx
	cmpl	%edx, -116(%ebp)
	ja	.L1555
	movl	-112(%ebp), %ecx
	cmpl	%ecx, -120(%ebp)
	jbe	.L1553
.L1555:
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	subl	$44, %eax
	movl	%eax, -104(%ebp)
	movl	$0, -100(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1556
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L1558
.L1556:
	movl	$3, -96(%ebp)
	movl	$0, -92(%ebp)
	jmp	.L1559
.L1558:
	movl	$7, -96(%ebp)
	movl	$0, -92(%ebp)
.L1559:
	movl	-92(%ebp), %eax
	cmpl	%eax, -100(%ebp)
	ja	.L1544
	movl	-92(%ebp), %edx
	cmpl	%edx, -100(%ebp)
	jb	.L1561
	movl	-96(%ebp), %ecx
	cmpl	%ecx, -104(%ebp)
	ja	.L1544
.L1561:
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L1562
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	je	.L1564
.L1562:
	movl	$1, -80(%ebp)
	jmp	.L1565
.L1564:
	movl	$2, -80(%ebp)
.L1565:
	movl	-84(%ebp), %eax
	movl	$0, %edx
	divl	-80(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L1544
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1544
.L1553:
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	jne	.L1544
	.loc 1 3297 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -76(%ebp)
	movl	-52(%ebp,%eax,8), %edx
	movl	-48(%ebp,%eax,8), %ecx
	movl	%edx, -72(%ebp)
	movl	%ecx, -68(%ebp)
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1581
	movl	%esi, %edi
	xorl	%esi, %esi
.L1581:
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	-76(%ebp), %ecx
	movl	%eax, -52(%ebp,%ecx,8)
	movl	%edx, -48(%ebp,%ecx,8)
	.loc 1 3298 0
	movl	-56(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -56(%ebp)
.L1544:
	.loc 1 3285 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
.L1542:
	cmpl	$0, -28(%ebp)
	jne	.L1543
	.loc 1 3300 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3303 0
	jmp	.L1580
.L1570:
	.loc 1 3305 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3309 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L1571
	.loc 1 3316 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L1573
	.loc 1 3318 0
	movl	-24(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L1571
	.loc 1 3319 0
	leal	__FUNCTION__.13884@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3319, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1573:
	.loc 1 3323 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1569
	.loc 1 3324 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %edx
	leal	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	parms_set@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
.L1569:
.L1580:
	.loc 1 3303 0
	movl	-56(%ebp), %eax
	testl	%eax, %eax
	je	.L1571
	movl	-24(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L1570
.L1571:
	.loc 1 3326 0
	movl	-24(%ebp), %eax
	.loc 1 3327 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE82:
	.size	find_first_parameter_load, .-find_first_parameter_load
.globl keep_with_call_p
	.type	keep_with_call_p, @function
keep_with_call_p:
.LFB83:
	.loc 1 3335 0
	pushl	%ebp
.LCFI274:
	movl	%esp, %ebp
.LCFI275:
	pushl	%ebx
.LCFI276:
	subl	$52, %esp
.LCFI277:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3338 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1583
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1585
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1587
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1589
.L1587:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -44(%ebp)
.L1589:
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1590
.L1585:
	movl	$0, -48(%ebp)
.L1590:
	movl	-48(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L1583
	.loc 1 3340 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1592
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1592
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	je	.L1592
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	general_operand@PLT
	testl	%eax, %eax
	je	.L1592
	.loc 1 3344 0
	movl	$1, -40(%ebp)
	jmp	.L1597
.L1592:
	.loc 1 3345 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1598
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$2, %eax
	je	.L1600
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L1602
	movl	$2, -32(%ebp)
	jmp	.L1604
.L1602:
	movl	$32, -32(%ebp)
.L1604:
	movl	-32(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	je	.L1600
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1606
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L1598
.L1606:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L1598
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L1609
	movl	$4, -24(%ebp)
	jmp	.L1611
.L1609:
	movl	$34, -24(%ebp)
.L1611:
	movl	-24(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L1598
.L1600:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1598
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1598
	.loc 1 3349 0
	movl	$1, -40(%ebp)
	jmp	.L1597
.L1598:
	.loc 1 3353 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1583
.LBB44:
	.loc 1 3355 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3356 0
	cmpl	$0, -8(%ebp)
	je	.L1583
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	keep_with_call_p@PLT
	testb	%al, %al
	je	.L1583
	.loc 1 3357 0
	movl	$1, -40(%ebp)
	jmp	.L1597
.L1583:
.LBE44:
	.loc 1 3360 0
	movl	$0, -40(%ebp)
.L1597:
	movl	-40(%ebp), %eax
	.loc 1 3361 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE83:
	.size	keep_with_call_p, .-keep_with_call_p
	.type	hoist_test_store, @function
hoist_test_store:
.LFB84:
	.loc 1 3371 0
	pushl	%ebp
.LCFI278:
	movl	%esp, %ebp
.LCFI279:
	pushl	%ebx
.LCFI280:
	subl	$36, %esp
.LCFI281:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3372 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$72, %ax
	jne	.L1619
	.loc 1 3373 0
	movl	$1, -32(%ebp)
	jmp	.L1621
.L1619:
	.loc 1 3375 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1622
	.loc 1 3376 0
	movl	$1, -32(%ebp)
	jmp	.L1621
.L1622:
	.loc 1 3382 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1624
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1624
	.loc 1 3384 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1627
	movl	$8, -24(%ebp)
	jmp	.L1629
.L1627:
	movl	$4, -24(%ebp)
.L1629:
	movl	-24(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	jle	.L1630
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	cmpw	%ax, %cx
	jae	.L1630
	.loc 1 3387 0
	movl	$0, -32(%ebp)
	jmp	.L1621
.L1630:
	.loc 1 3388 0
	movl	$1, -32(%ebp)
	jmp	.L1621
.L1624:
	.loc 1 3390 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1633
	.loc 1 3391 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L1633:
	.loc 1 3396 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1635
	.loc 1 3397 0
	movl	$0, -32(%ebp)
	jmp	.L1621
.L1635:
	.loc 1 3404 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1637
.LBB45:
	.loc 1 3406 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3407 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3409 0
	cmpl	$0, 16(%ebp)
	jne	.L1639
	.loc 1 3410 0
	movl	$0, -32(%ebp)
	jmp	.L1621
.L1639:
	.loc 1 3411 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L1643
	.loc 1 3412 0
	movl	$0, -32(%ebp)
	jmp	.L1621
.L1644:
	.loc 1 3414 0
	movl	-8(%ebp), %eax
	addl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L1643
	.loc 1 3415 0
	movl	$0, -32(%ebp)
	jmp	.L1621
.L1643:
	.loc 1 3413 0
	subl	$1, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jg	.L1644
.L1637:
.LBE45:
	.loc 1 3417 0
	movl	$1, -32(%ebp)
.L1621:
	movl	-32(%ebp), %eax
	.loc 1 3418 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE84:
	.size	hoist_test_store, .-hoist_test_store
	.section	.rodata
	.type	__FUNCTION__.14176, @object
	.size	__FUNCTION__.14176, 17
__FUNCTION__.14176:
	.string	"can_hoist_insn_p"
	.text
.globl can_hoist_insn_p
	.type	can_hoist_insn_p, @function
can_hoist_insn_p:
.LFB85:
	.loc 1 3429 0
	pushl	%ebp
.LCFI282:
	movl	%esp, %ebp
.LCFI283:
	pushl	%ebx
.LCFI284:
	subl	$52, %esp
.LCFI285:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3430 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3435 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1648
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1650
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	sete	-33(%ebp)
	jmp	.L1652
.L1650:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	testl	%eax, %eax
	sete	-33(%ebp)
.L1652:
	movzbl	-33(%ebp), %eax
	movb	%al, -34(%ebp)
	jmp	.L1653
.L1648:
	movb	$1, -34(%ebp)
.L1653:
	cmpb	$0, -34(%ebp)
	je	.L1654
	.loc 1 3436 0
	movl	$0, -32(%ebp)
	jmp	.L1656
.L1654:
	.loc 1 3439 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1657
	.loc 1 3440 0
	movl	$0, -32(%ebp)
	jmp	.L1656
.L1657:
	.loc 1 3443 0
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L1659
	.loc 1 3444 0
	movl	$0, -32(%ebp)
	jmp	.L1656
.L1659:
	.loc 1 3445 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	cmpl	$57, -28(%ebp)
	je	.L1663
	cmpl	$57, -28(%ebp)
	ja	.L1666
	cmpl	$49, -28(%ebp)
	je	.L1662
	jmp	.L1661
.L1666:
	cmpl	$58, -28(%ebp)
	je	.L1664
	cmpl	$59, -28(%ebp)
	je	.L1665
	jmp	.L1661
.L1663:
	.loc 1 3448 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	hoist_test_store
	xorl	$1, %eax
	testb	%al, %al
	je	.L1669
	.loc 1 3449 0
	movl	$0, -32(%ebp)
	jmp	.L1656
.L1664:
	.loc 1 3453 0
	movl	$0, -32(%ebp)
	jmp	.L1656
.L1665:
	.loc 1 3456 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	hoist_test_store
	xorl	$1, %eax
	testb	%al, %al
	je	.L1669
	.loc 1 3457 0
	movl	$0, -32(%ebp)
	jmp	.L1656
.L1662:
	.loc 1 3460 0
	movl	$0, -12(%ebp)
	jmp	.L1672
.L1673:
.LBB46:
	.loc 1 3462 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3463 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	cmpl	$58, -24(%ebp)
	je	.L1676
	cmpl	$59, -24(%ebp)
	je	.L1677
	cmpl	$57, -24(%ebp)
	je	.L1675
	jmp	.L1674
.L1675:
	.loc 1 3466 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	hoist_test_store
	xorl	$1, %eax
	testb	%al, %al
	je	.L1674
	.loc 1 3467 0
	movl	$0, -32(%ebp)
	jmp	.L1656
.L1676:
	.loc 1 3473 0
	movl	$0, -32(%ebp)
	jmp	.L1656
.L1677:
	.loc 1 3476 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	hoist_test_store
	xorl	$1, %eax
	testb	%al, %al
	je	.L1674
	.loc 1 3477 0
	movl	$0, -32(%ebp)
	jmp	.L1656
.L1674:
.LBE46:
	.loc 1 3460 0
	addl	$1, -12(%ebp)
.L1672:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L1673
	.loc 1 3483 0
	jmp	.L1669
.L1661:
	.loc 1 3485 0
	leal	__FUNCTION__.14176@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3485, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1669:
	.loc 1 3487 0
	movl	$1, -32(%ebp)
.L1656:
	movl	-32(%ebp), %eax
	.loc 1 3488 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE85:
	.size	can_hoist_insn_p, .-can_hoist_insn_p
	.section	.rodata
	.type	__FUNCTION__.14239, @object
	.size	__FUNCTION__.14239, 19
__FUNCTION__.14239:
	.string	"hoist_update_store"
	.text
	.type	hoist_update_store, @function
hoist_update_store:
.LFB86:
	.loc 1 3497 0
	pushl	%ebp
.LCFI286:
	movl	%esp, %ebp
.LCFI287:
	pushl	%esi
.LCFI288:
	pushl	%ebx
.LCFI289:
	subl	$32, %esp
.LCFI290:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3498 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3500 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$72, %ax
	je	.L1697
	.loc 1 3503 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1686
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L1686
	.loc 1 3504 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %esi
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	simplify_gen_subreg@PLT
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
.L1686:
	.loc 1 3507 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1689
	.loc 1 3509 0
	movl	$1, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 3510 0
	jmp	.L1697
.L1689:
	.loc 1 3512 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1691
	.loc 1 3514 0
	movl	-12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 12(%ebp)
	.loc 1 3515 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L1691:
	.loc 1 3518 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1693
	.loc 1 3519 0
	leal	__FUNCTION__.14239@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3519, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1693:
	.loc 1 3523 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1695
	.loc 1 3524 0
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
.L1695:
	.loc 1 3525 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	alloc_EXPR_LIST@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 68(%eax)
.L1697:
	.loc 1 3527 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE86:
	.size	hoist_update_store, .-hoist_update_store
	.section	.rodata
	.type	__FUNCTION__.14309, @object
	.size	__FUNCTION__.14309, 17
__FUNCTION__.14309:
	.string	"hoist_insn_after"
	.text
.globl hoist_insn_after
	.type	hoist_insn_after, @function
hoist_insn_after:
.LFB87:
	.loc 1 3535 0
	pushl	%ebp
.LCFI291:
	movl	%esp, %ebp
.LCFI292:
	pushl	%ebx
.LCFI293:
	subl	$52, %esp
.LCFI294:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3540 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_copy_of_insn_after@PLT
	movl	%eax, 8(%ebp)
	.loc 1 3541 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3544 0
	jmp	.L1699
.L1700:
	.loc 1 3545 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L1699:
	.loc 1 3544 0
	movl	$0, 8(%esp)
	movl	$10, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L1700
	.loc 1 3550 0
	jmp	.L1702
.L1703:
	.loc 1 3551 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L1702:
	.loc 1 3550 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L1703
	.loc 1 3552 0
	jmp	.L1705
.L1706:
	.loc 1 3553 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L1705:
	.loc 1 3552 0
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L1706
	.loc 1 3557 0
	jmp	.L1708
.L1709:
	.loc 1 3558 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L1708:
	.loc 1 3557 0
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L1709
	.loc 1 3559 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	cmpl	$57, -28(%ebp)
	je	.L1713
	cmpl	$57, -28(%ebp)
	ja	.L1716
	cmpl	$49, -28(%ebp)
	je	.L1712
	jmp	.L1711
.L1716:
	cmpl	$58, -28(%ebp)
	je	.L1717
	cmpl	$59, -28(%ebp)
	je	.L1715
	jmp	.L1711
.L1713:
	.loc 1 3562 0
	movl	-20(%ebp), %edx
	addl	$4, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	hoist_update_store
	.loc 1 3563 0
	jmp	.L1717
.L1715:
	.loc 1 3567 0
	movl	-20(%ebp), %edx
	addl	$4, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	hoist_update_store
	.loc 1 3568 0
	jmp	.L1717
.L1712:
	.loc 1 3570 0
	movl	$0, -16(%ebp)
	jmp	.L1718
.L1719:
.LBB47:
	.loc 1 3572 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3573 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	cmpl	$58, -24(%ebp)
	je	.L1720
	cmpl	$59, -24(%ebp)
	je	.L1723
	cmpl	$57, -24(%ebp)
	je	.L1721
	jmp	.L1720
.L1721:
	.loc 1 3576 0
	movl	-8(%ebp), %edx
	addl	$4, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	hoist_update_store
	.loc 1 3577 0
	jmp	.L1720
.L1723:
	.loc 1 3581 0
	movl	-8(%ebp), %edx
	addl	$4, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	hoist_update_store
.L1720:
.LBE47:
	.loc 1 3570 0
	addl	$1, -16(%ebp)
.L1718:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L1719
	.loc 1 3587 0
	jmp	.L1717
.L1711:
	.loc 1 3589 0
	leal	__FUNCTION__.14309@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3589, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1717:
	.loc 1 3591 0
	call	apply_change_group@PLT
	testl	%eax, %eax
	jne	.L1725
	.loc 1 3592 0
	leal	__FUNCTION__.14309@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3592, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1725:
	.loc 1 3594 0
	movl	8(%ebp), %eax
	.loc 1 3595 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE87:
	.size	hoist_insn_after, .-hoist_insn_after
	.section	.rodata
	.type	__FUNCTION__.14340, @object
	.size	__FUNCTION__.14340, 19
__FUNCTION__.14340:
	.string	"hoist_insn_to_edge"
	.text
.globl hoist_insn_to_edge
	.type	hoist_insn_to_edge, @function
hoist_insn_to_edge:
.LFB88:
	.loc 1 3601 0
	pushl	%ebp
.LCFI295:
	movl	%esp, %ebp
.LCFI296:
	pushl	%ebx
.LCFI297:
	subl	$36, %esp
.LCFI298:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3606 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1729
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1729
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1729
	.loc 1 3607 0
	leal	__FUNCTION__.14340@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3607, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1729:
	.loc 1 3611 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L1733
	.loc 1 3613 0
	call	start_sequence@PLT
	.loc 1 3614 0
	movl	$-99, 4(%esp)
	movl	$0, (%esp)
	call	emit_note@PLT
	jmp	.L1735
.L1733:
	.loc 1 3617 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	push_to_sequence@PLT
.L1735:
	.loc 1 3619 0
	call	get_last_insn@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	hoist_insn_after@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3621 0
	call	get_insns@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 3622 0
	call	end_sequence@PLT
	.loc 1 3623 0
	movl	-8(%ebp), %eax
	.loc 1 3624 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE88:
	.size	hoist_insn_to_edge, .-hoist_insn_to_edge
	.comm	target_flags,4,4
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
	.long	.LCFI20-.LCFI17
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
	.long	.LCFI21-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI22-.LCFI21
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
	.long	.LCFI45-.LCFI41
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
	.long	.LCFI46-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xd
	.uleb128 0x5
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
	.byte	0x4
	.long	.LCFI75-.LCFI73
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
	.long	.LCFI76-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI79-.LCFI77
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
	.long	.LCFI80-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI83-.LCFI81
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
	.long	.LCFI84-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI85-.LCFI84
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI87-.LCFI85
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
	.long	.LCFI88-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI89-.LCFI88
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI91-.LCFI89
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
	.long	.LCFI92-.LFB38
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
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI96-.LFB39
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
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI100-.LFB40
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
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI104-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI105-.LCFI104
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
	.long	.LCFI107-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI108-.LCFI107
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI110-.LCFI108
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
	.long	.LCFI111-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI112-.LCFI111
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI114-.LCFI112
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
	.long	.LCFI115-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI116-.LCFI115
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI118-.LCFI116
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
	.long	.LCFI119-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI120-.LCFI119
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI122-.LCFI120
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
	.long	.LCFI134-.LCFI132
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
	.long	.LCFI135-.LFB49
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
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI139-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI140-.LCFI139
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI142-.LCFI140
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
	.long	.LCFI143-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI144-.LCFI143
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI146-.LCFI144
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
	.long	.LCFI147-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI148-.LCFI147
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
	.long	.LCFI150-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI151-.LCFI150
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI153-.LCFI151
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
	.long	.LCFI154-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI155-.LCFI154
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI157-.LCFI155
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
	.long	.LCFI158-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI159-.LCFI158
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI161-.LCFI159
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
	.long	.LCFI162-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI163-.LCFI162
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI165-.LCFI163
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
	.long	.LCFI166-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI167-.LCFI166
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
	.long	.LCFI169-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI170-.LCFI169
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI172-.LCFI170
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
	.long	.LCFI173-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI174-.LCFI173
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB60
	.long	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI176-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI177-.LCFI176
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB61
	.long	.LFE61-.LFB61
	.byte	0x4
	.long	.LCFI179-.LFB61
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
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI183-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI184-.LCFI183
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI186-.LCFI184
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
	.long	.LCFI187-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI188-.LCFI187
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI190-.LCFI188
	.byte	0x83
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
	.long	.LCFI191-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI192-.LCFI191
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI194-.LCFI192
	.byte	0x83
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
	.long	.LCFI195-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI196-.LCFI195
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI198-.LCFI196
	.byte	0x83
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
	.long	.LCFI199-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI200-.LCFI199
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI204-.LCFI200
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI205-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI206-.LCFI205
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI210-.LCFI206
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
	.long	.LCFI211-.LFB68
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI212-.LCFI211
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI214-.LCFI212
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
	.long	.LCFI215-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI216-.LCFI215
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI218-.LCFI216
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
	.long	.LCFI219-.LFB70
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
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.long	.LFB71
	.long	.LFE71-.LFB71
	.byte	0x4
	.long	.LCFI223-.LFB71
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
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.long	.LFB72
	.long	.LFE72-.LFB72
	.byte	0x4
	.long	.LCFI227-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI228-.LCFI227
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE114:
.LSFDE116:
	.long	.LEFDE116-.LASFDE116
.LASFDE116:
	.long	.Lframe0
	.long	.LFB73
	.long	.LFE73-.LFB73
	.byte	0x4
	.long	.LCFI230-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI231-.LCFI230
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI234-.LCFI231
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
	.long	.LCFI235-.LFB74
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI236-.LCFI235
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.long	.LFB75
	.long	.LFE75-.LFB75
	.byte	0x4
	.long	.LCFI238-.LFB75
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI239-.LCFI238
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.long	.LFB76
	.long	.LFE76-.LFB76
	.byte	0x4
	.long	.LCFI241-.LFB76
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI242-.LCFI241
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI244-.LCFI242
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.long	.LFB77
	.long	.LFE77-.LFB77
	.byte	0x4
	.long	.LCFI245-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI246-.LCFI245
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI249-.LCFI246
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.long	.LFB78
	.long	.LFE78-.LFB78
	.byte	0x4
	.long	.LCFI250-.LFB78
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
.LEFDE126:
.LSFDE128:
	.long	.LEFDE128-.LASFDE128
.LASFDE128:
	.long	.Lframe0
	.long	.LFB79
	.long	.LFE79-.LFB79
	.byte	0x4
	.long	.LCFI254-.LFB79
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI255-.LCFI254
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI257-.LCFI255
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE128:
.LSFDE130:
	.long	.LEFDE130-.LASFDE130
.LASFDE130:
	.long	.Lframe0
	.long	.LFB80
	.long	.LFE80-.LFB80
	.byte	0x4
	.long	.LCFI258-.LFB80
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI259-.LCFI258
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI262-.LCFI259
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE130:
.LSFDE132:
	.long	.LEFDE132-.LASFDE132
.LASFDE132:
	.long	.Lframe0
	.long	.LFB81
	.long	.LFE81-.LFB81
	.byte	0x4
	.long	.LCFI263-.LFB81
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI264-.LCFI263
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI267-.LCFI264
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE132:
.LSFDE134:
	.long	.LEFDE134-.LASFDE134
.LASFDE134:
	.long	.Lframe0
	.long	.LFB82
	.long	.LFE82-.LFB82
	.byte	0x4
	.long	.LCFI268-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI269-.LCFI268
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI273-.LCFI269
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE134:
.LSFDE136:
	.long	.LEFDE136-.LASFDE136
.LASFDE136:
	.long	.Lframe0
	.long	.LFB83
	.long	.LFE83-.LFB83
	.byte	0x4
	.long	.LCFI274-.LFB83
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI275-.LCFI274
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI277-.LCFI275
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE136:
.LSFDE138:
	.long	.LEFDE138-.LASFDE138
.LASFDE138:
	.long	.Lframe0
	.long	.LFB84
	.long	.LFE84-.LFB84
	.byte	0x4
	.long	.LCFI278-.LFB84
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI279-.LCFI278
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI281-.LCFI279
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE138:
.LSFDE140:
	.long	.LEFDE140-.LASFDE140
.LASFDE140:
	.long	.Lframe0
	.long	.LFB85
	.long	.LFE85-.LFB85
	.byte	0x4
	.long	.LCFI282-.LFB85
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI283-.LCFI282
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI285-.LCFI283
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE140:
.LSFDE142:
	.long	.LEFDE142-.LASFDE142
.LASFDE142:
	.long	.Lframe0
	.long	.LFB86
	.long	.LFE86-.LFB86
	.byte	0x4
	.long	.LCFI286-.LFB86
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI287-.LCFI286
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI290-.LCFI287
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE142:
.LSFDE144:
	.long	.LEFDE144-.LASFDE144
.LASFDE144:
	.long	.Lframe0
	.long	.LFB87
	.long	.LFE87-.LFB87
	.byte	0x4
	.long	.LCFI291-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI292-.LCFI291
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI294-.LCFI292
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE144:
.LSFDE146:
	.long	.LEFDE146-.LASFDE146
.LASFDE146:
	.long	.Lframe0
	.long	.LFB88
	.long	.LFE88-.LFB88
	.byte	0x4
	.long	.LCFI295-.LFB88
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI296-.LCFI295
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI298-.LCFI296
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE146:
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/machmode.h"
	.file 5 "../../../kgccfe/gnu/bitmap.h"
	.file 6 "../../../kgccfe/gnu/basic-block.h"
	.file 7 "../../../kgccfe/gnu/sbitmap.h"
	.file 8 "../../../kgccfe/gnu/hard-reg-set.h"
	.file 9 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 10 "../../../kgccfe/gnu/flags.h"
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
	.long	.LCFI80-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI80-.Ltext0
	.long	.LCFI81-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI81-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
	.long	.LCFI84-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI84-.Ltext0
	.long	.LCFI85-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI85-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
	.long	.LCFI107-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI107-.Ltext0
	.long	.LCFI108-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI108-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
	.long	.LCFI115-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI115-.Ltext0
	.long	.LCFI116-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI116-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI119-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI119-.Ltext0
	.long	.LCFI120-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI120-.Ltext0
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
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
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
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
	.long	.LCFI150-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI150-.Ltext0
	.long	.LCFI151-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI151-.Ltext0
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
	.long	.LCFI154-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI154-.Ltext0
	.long	.LCFI155-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI155-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
	.long	.LCFI158-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI158-.Ltext0
	.long	.LCFI159-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI159-.Ltext0
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
	.long	.LCFI162-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI162-.Ltext0
	.long	.LCFI163-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI163-.Ltext0
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
	.long	.LCFI166-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI166-.Ltext0
	.long	.LCFI167-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI167-.Ltext0
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
	.long	.LCFI169-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI169-.Ltext0
	.long	.LCFI170-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI170-.Ltext0
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
	.long	.LCFI173-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI173-.Ltext0
	.long	.LCFI174-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI174-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
	.long	.LCFI176-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI176-.Ltext0
	.long	.LCFI177-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI177-.Ltext0
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB61-.Ltext0
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
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB62-.Ltext0
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
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB63-.Ltext0
	.long	.LCFI187-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI187-.Ltext0
	.long	.LCFI188-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI188-.Ltext0
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB64-.Ltext0
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
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB65-.Ltext0
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
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB66-.Ltext0
	.long	.LCFI199-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI199-.Ltext0
	.long	.LCFI200-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI200-.Ltext0
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB67-.Ltext0
	.long	.LCFI205-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI205-.Ltext0
	.long	.LCFI206-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI206-.Ltext0
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB68-.Ltext0
	.long	.LCFI211-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI211-.Ltext0
	.long	.LCFI212-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI212-.Ltext0
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB69-.Ltext0
	.long	.LCFI215-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI215-.Ltext0
	.long	.LCFI216-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI216-.Ltext0
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB70-.Ltext0
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
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB71-.Ltext0
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
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB72-.Ltext0
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
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB73-.Ltext0
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
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB74-.Ltext0
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
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LFB75-.Ltext0
	.long	.LCFI238-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI238-.Ltext0
	.long	.LCFI239-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI239-.Ltext0
	.long	.LFE75-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LFB76-.Ltext0
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
	.long	.LFE76-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LFB77-.Ltext0
	.long	.LCFI245-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI245-.Ltext0
	.long	.LCFI246-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI246-.Ltext0
	.long	.LFE77-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LFB78-.Ltext0
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
	.long	.LFE78-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LFB79-.Ltext0
	.long	.LCFI254-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI254-.Ltext0
	.long	.LCFI255-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI255-.Ltext0
	.long	.LFE79-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LFB80-.Ltext0
	.long	.LCFI258-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI258-.Ltext0
	.long	.LCFI259-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI259-.Ltext0
	.long	.LFE80-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST66:
	.long	.LFB81-.Ltext0
	.long	.LCFI263-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI263-.Ltext0
	.long	.LCFI264-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI264-.Ltext0
	.long	.LFE81-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LFB82-.Ltext0
	.long	.LCFI268-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI268-.Ltext0
	.long	.LCFI269-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI269-.Ltext0
	.long	.LFE82-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST68:
	.long	.LFB83-.Ltext0
	.long	.LCFI274-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI274-.Ltext0
	.long	.LCFI275-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI275-.Ltext0
	.long	.LFE83-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST69:
	.long	.LFB84-.Ltext0
	.long	.LCFI278-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI278-.Ltext0
	.long	.LCFI279-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI279-.Ltext0
	.long	.LFE84-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST70:
	.long	.LFB85-.Ltext0
	.long	.LCFI282-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI282-.Ltext0
	.long	.LCFI283-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI283-.Ltext0
	.long	.LFE85-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST71:
	.long	.LFB86-.Ltext0
	.long	.LCFI286-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI286-.Ltext0
	.long	.LCFI287-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI287-.Ltext0
	.long	.LFE86-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST72:
	.long	.LFB87-.Ltext0
	.long	.LCFI291-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI291-.Ltext0
	.long	.LCFI292-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI292-.Ltext0
	.long	.LFE87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST73:
	.long	.LFB88-.Ltext0
	.long	.LCFI295-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI295-.Ltext0
	.long	.LCFI296-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI296-.Ltext0
	.long	.LFE88-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x4205
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/rtlanal.c"
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
	.long	0x19c
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.long	.LASF0
	.byte	0x3
	.byte	0x8a
	.long	0x5d3
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
	.long	0x2db
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
	.long	0x21c
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
	.long	0x21c
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
	.long	0x21c
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
	.long	0x21c
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
	.long	0x21c
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
	.long	0x21c
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
	.long	0x21c
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
	.long	0x21c
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
	.long	0x11ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1a9
	.uleb128 0x3
	.byte	0x4
	.long	0x1af
	.uleb128 0x4
	.long	0x1e4
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x11ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1f0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f6
	.uleb128 0x8
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x208
	.uleb128 0x9
	.long	0x20d
	.uleb128 0xa
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xb
	.long	.LASF1
	.byte	0x4
	.byte	0x7
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
	.uleb128 0xc
	.byte	0x4
	.uleb128 0xd
	.long	0x2cb
	.long	0x20d
	.uleb128 0xe
	.long	0x223
	.byte	0x17
	.byte	0x0
	.uleb128 0xd
	.long	0x2db
	.long	0x20d
	.uleb128 0xe
	.long	0x223
	.byte	0x13
	.byte	0x0
	.uleb128 0xf
	.long	0x524
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.uleb128 0x10
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x10
	.string	"BImode"
	.sleb128 1
	.uleb128 0x10
	.string	"QImode"
	.sleb128 2
	.uleb128 0x10
	.string	"HImode"
	.sleb128 3
	.uleb128 0x10
	.string	"SImode"
	.sleb128 4
	.uleb128 0x10
	.string	"DImode"
	.sleb128 5
	.uleb128 0x10
	.string	"TImode"
	.sleb128 6
	.uleb128 0x10
	.string	"OImode"
	.sleb128 7
	.uleb128 0x10
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x10
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x10
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x10
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x10
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x10
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x10
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x10
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x10
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x10
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x10
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x10
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x10
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x10
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x10
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x10
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x10
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x10
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x10
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x10
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x10
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x10
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x10
	.string	"COImode"
	.sleb128 30
	.uleb128 0x10
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x10
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x10
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x10
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x10
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x10
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x10
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x10
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x10
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x10
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x10
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x10
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x10
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x10
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x10
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x10
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x10
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x10
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x10
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x10
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x10
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x10
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x10
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x10
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x11
	.long	0x5d3
	.long	.LASF2
	.byte	0x4
	.byte	0x4
	.byte	0x2c
	.uleb128 0x10
	.string	"MODE_RANDOM"
	.sleb128 0
	.uleb128 0x10
	.string	"MODE_INT"
	.sleb128 1
	.uleb128 0x10
	.string	"MODE_FLOAT"
	.sleb128 2
	.uleb128 0x10
	.string	"MODE_PARTIAL_INT"
	.sleb128 3
	.uleb128 0x10
	.string	"MODE_CC"
	.sleb128 4
	.uleb128 0x10
	.string	"MODE_COMPLEX_INT"
	.sleb128 5
	.uleb128 0x10
	.string	"MODE_COMPLEX_FLOAT"
	.sleb128 6
	.uleb128 0x10
	.string	"MODE_VECTOR_INT"
	.sleb128 7
	.uleb128 0x10
	.string	"MODE_VECTOR_FLOAT"
	.sleb128 8
	.uleb128 0x10
	.string	"MAX_MODE_CLASS"
	.sleb128 9
	.byte	0x0
	.uleb128 0xf
	.long	0xda2
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x2f
	.uleb128 0x10
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x10
	.string	"NIL"
	.sleb128 1
	.uleb128 0x10
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x10
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x10
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x10
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x10
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x10
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x10
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x10
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x10
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x10
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x10
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x10
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x10
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x10
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x10
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x10
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x10
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x10
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x10
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x10
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x10
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x10
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x10
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x10
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x10
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x10
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x10
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x10
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x10
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x10
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x10
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x10
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x10
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x10
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x10
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x10
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x10
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x10
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x10
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x10
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x10
	.string	"INSN"
	.sleb128 42
	.uleb128 0x10
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x10
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x10
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x10
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x10
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x10
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x10
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x10
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x10
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x10
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x10
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x10
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x10
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x10
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x10
	.string	"SET"
	.sleb128 57
	.uleb128 0x10
	.string	"USE"
	.sleb128 58
	.uleb128 0x10
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x10
	.string	"CALL"
	.sleb128 60
	.uleb128 0x10
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x10
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x10
	.string	"RESX"
	.sleb128 63
	.uleb128 0x10
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x10
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x10
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x10
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x10
	.string	"CONST"
	.sleb128 68
	.uleb128 0x10
	.string	"PC"
	.sleb128 69
	.uleb128 0x10
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x10
	.string	"REG"
	.sleb128 71
	.uleb128 0x10
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x10
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x10
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x10
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x10
	.string	"MEM"
	.sleb128 76
	.uleb128 0x10
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x10
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x10
	.string	"CC0"
	.sleb128 79
	.uleb128 0x10
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x10
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x10
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x10
	.string	"COND"
	.sleb128 83
	.uleb128 0x10
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x10
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x10
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x10
	.string	"NEG"
	.sleb128 87
	.uleb128 0x10
	.string	"MULT"
	.sleb128 88
	.uleb128 0x10
	.string	"DIV"
	.sleb128 89
	.uleb128 0x10
	.string	"MOD"
	.sleb128 90
	.uleb128 0x10
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x10
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x10
	.string	"AND"
	.sleb128 93
	.uleb128 0x10
	.string	"IOR"
	.sleb128 94
	.uleb128 0x10
	.string	"XOR"
	.sleb128 95
	.uleb128 0x10
	.string	"NOT"
	.sleb128 96
	.uleb128 0x10
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x10
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x10
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x10
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x10
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x10
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x10
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x10
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x10
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x10
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x10
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x10
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x10
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x10
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x10
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x10
	.string	"NE"
	.sleb128 112
	.uleb128 0x10
	.string	"EQ"
	.sleb128 113
	.uleb128 0x10
	.string	"GE"
	.sleb128 114
	.uleb128 0x10
	.string	"GT"
	.sleb128 115
	.uleb128 0x10
	.string	"LE"
	.sleb128 116
	.uleb128 0x10
	.string	"LT"
	.sleb128 117
	.uleb128 0x10
	.string	"GEU"
	.sleb128 118
	.uleb128 0x10
	.string	"GTU"
	.sleb128 119
	.uleb128 0x10
	.string	"LEU"
	.sleb128 120
	.uleb128 0x10
	.string	"LTU"
	.sleb128 121
	.uleb128 0x10
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x10
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x10
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x10
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x10
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x10
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x10
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x10
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x10
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x10
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x10
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x10
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x10
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x10
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x10
	.string	"FIX"
	.sleb128 136
	.uleb128 0x10
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x10
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x10
	.string	"ABS"
	.sleb128 139
	.uleb128 0x10
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x10
	.string	"FFS"
	.sleb128 141
	.uleb128 0x10
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x10
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x10
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x10
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x10
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x10
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x10
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x10
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x10
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x10
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x10
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x10
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x10
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x10
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x10
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x10
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x10
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x10
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x10
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x10
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x10
	.string	"PHI"
	.sleb128 162
	.uleb128 0x10
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x12
	.long	0xe7c
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x6
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x21c
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
	.long	0x21c
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
	.long	0x21c
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
	.long	0x21c
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
	.long	0x21c
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
	.long	0x21c
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
	.long	0x21c
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
	.long	0x21c
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
	.long	0xda2
	.uleb128 0x13
	.long	0xef0
	.long	.LASF3
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x7
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x282
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.long	.LASF4
	.byte	0x3
	.byte	0x6b
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
	.byte	0x3
	.byte	0x6c
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x3
	.byte	0x6d
	.long	0x21c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x15
	.long	.LASF3
	.byte	0x3
	.byte	0x6e
	.long	0xe97
	.uleb128 0x16
	.long	0xfcd
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x17
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x282
	.uleb128 0x17
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x215
	.uleb128 0x17
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x21c
	.uleb128 0x17
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x202
	.uleb128 0x17
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x9c
	.uleb128 0x17
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x19c
	.uleb128 0x17
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x2db
	.uleb128 0x17
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0xe7c
	.uleb128 0x17
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0xfe1
	.uleb128 0x17
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x1049
	.uleb128 0x17
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e4
	.uleb128 0x17
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x11d4
	.uleb128 0x17
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x11da
	.byte	0x0
	.uleb128 0x18
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0xfcd
	.uleb128 0x4
	.long	0x1049
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x7
	.string	"first"
	.byte	0x5
	.byte	0x3d
	.long	0x14e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x14e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x21c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xfe7
	.uleb128 0x4
	.long	0x11d4
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x7
	.string	"head"
	.byte	0x6
	.byte	0xb5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0x6
	.byte	0xb5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0x6
	.byte	0xb8
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0x6
	.byte	0xb9
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0x6
	.byte	0xbc
	.long	0x1644
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0x6
	.byte	0xbc
	.long	0x1644
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0x6
	.byte	0xc1
	.long	0x1574
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0x6
	.byte	0xc5
	.long	0x1574
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0x6
	.byte	0xcb
	.long	0x1574
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0x6
	.byte	0xcd
	.long	0x1574
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0x6
	.byte	0xd0
	.long	0x2b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"index"
	.byte	0x6
	.byte	0xd3
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x11d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x11d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0x6
	.byte	0xd9
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0x6
	.byte	0xdc
	.long	0x18c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0x6
	.byte	0xdf
	.long	0x1582
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0x6
	.byte	0xe2
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"flags"
	.byte	0x6
	.byte	0xe5
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x104f
	.uleb128 0x3
	.byte	0x4
	.long	0xef0
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0xefb
	.uleb128 0xd
	.long	0x11ff
	.long	0x11e0
	.uleb128 0xe
	.long	0x223
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x120f
	.long	0x9c
	.uleb128 0xe
	.long	0x223
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.long	0x13d7
	.string	"reg_note"
	.byte	0x4
	.byte	0x3
	.value	0x263
	.uleb128 0x10
	.string	"REG_DEAD"
	.sleb128 1
	.uleb128 0x10
	.string	"REG_INC"
	.sleb128 2
	.uleb128 0x10
	.string	"REG_EQUIV"
	.sleb128 3
	.uleb128 0x10
	.string	"REG_EQUAL"
	.sleb128 4
	.uleb128 0x10
	.string	"REG_WAS_0"
	.sleb128 5
	.uleb128 0x10
	.string	"REG_RETVAL"
	.sleb128 6
	.uleb128 0x10
	.string	"REG_LIBCALL"
	.sleb128 7
	.uleb128 0x10
	.string	"REG_NONNEG"
	.sleb128 8
	.uleb128 0x10
	.string	"REG_NO_CONFLICT"
	.sleb128 9
	.uleb128 0x10
	.string	"REG_UNUSED"
	.sleb128 10
	.uleb128 0x10
	.string	"REG_CC_SETTER"
	.sleb128 11
	.uleb128 0x10
	.string	"REG_CC_USER"
	.sleb128 12
	.uleb128 0x10
	.string	"REG_LABEL"
	.sleb128 13
	.uleb128 0x10
	.string	"REG_DEP_ANTI"
	.sleb128 14
	.uleb128 0x10
	.string	"REG_DEP_OUTPUT"
	.sleb128 15
	.uleb128 0x10
	.string	"REG_BR_PROB"
	.sleb128 16
	.uleb128 0x10
	.string	"REG_NOALIAS"
	.sleb128 17
	.uleb128 0x10
	.string	"REG_SAVE_AREA"
	.sleb128 18
	.uleb128 0x10
	.string	"REG_BR_PRED"
	.sleb128 19
	.uleb128 0x10
	.string	"REG_FRAME_RELATED_EXPR"
	.sleb128 20
	.uleb128 0x10
	.string	"REG_EH_CONTEXT"
	.sleb128 21
	.uleb128 0x10
	.string	"REG_EH_REGION"
	.sleb128 22
	.uleb128 0x10
	.string	"REG_SAVE_NOTE"
	.sleb128 23
	.uleb128 0x10
	.string	"REG_MAYBE_DEAD"
	.sleb128 24
	.uleb128 0x10
	.string	"REG_NORETURN"
	.sleb128 25
	.uleb128 0x10
	.string	"REG_NON_LOCAL_GOTO"
	.sleb128 26
	.uleb128 0x10
	.string	"REG_SETJMP"
	.sleb128 27
	.uleb128 0x10
	.string	"REG_ALWAYS_RETURN"
	.sleb128 28
	.uleb128 0x10
	.string	"REG_VTABLE_REF"
	.sleb128 29
	.byte	0x0
	.uleb128 0x1a
	.string	"rtx_function"
	.byte	0x3
	.value	0x672
	.long	0x13ec
	.uleb128 0x3
	.byte	0x4
	.long	0x13f2
	.uleb128 0x1b
	.long	0x1407
	.byte	0x1
	.long	0x215
	.uleb128 0x1c
	.long	0x1407
	.uleb128 0x1c
	.long	0x2b9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9c
	.uleb128 0x2
	.string	"HARD_REG_ELT_TYPE"
	.byte	0x8
	.byte	0x29
	.long	0x293
	.uleb128 0x2
	.string	"HARD_REG_SET"
	.byte	0x8
	.byte	0x34
	.long	0x143a
	.uleb128 0xd
	.long	0x144a
	.long	0x140d
	.uleb128 0xe
	.long	0x223
	.byte	0x2
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x251
	.uleb128 0x4
	.long	0x14b5
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x7
	.string	"next"
	.byte	0x5
	.byte	0x35
	.long	0x14b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x5
	.byte	0x36
	.long	0x14b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x21c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x14bb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x145d
	.uleb128 0xd
	.long	0x14cb
	.long	0x144a
	.uleb128 0xe
	.long	0x223
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x145d
	.uleb128 0x3
	.byte	0x4
	.long	0x14cb
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x1049
	.uleb128 0x4
	.long	0x154f
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x7
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0x7
	.byte	0x21
	.long	0x21c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x21c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x21c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0x7
	.byte	0x24
	.long	0x154f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x155f
	.long	0x293
	.uleb128 0xe
	.long	0x223
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x7
	.byte	0x25
	.long	0x156e
	.uleb128 0x3
	.byte	0x4
	.long	0x14f5
	.uleb128 0x2
	.string	"regset"
	.byte	0x6
	.byte	0x22
	.long	0x14e7
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x6
	.byte	0x75
	.long	0x282
	.uleb128 0x4
	.long	0x163e
	.string	"edge_def"
	.byte	0x28
	.byte	0x6
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0x6
	.byte	0x7a
	.long	0x163e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0x6
	.byte	0x7a
	.long	0x163e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0x6
	.byte	0x7d
	.long	0x11d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"dest"
	.byte	0x6
	.byte	0x7d
	.long	0x11d4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"insns"
	.byte	0x6
	.byte	0x80
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0x6
	.byte	0x83
	.long	0x2b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"flags"
	.byte	0x6
	.byte	0x85
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0x6
	.byte	0x86
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"count"
	.byte	0x6
	.byte	0x87
	.long	0x1582
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1593
	.uleb128 0x2
	.string	"edge"
	.byte	0x6
	.byte	0x89
	.long	0x163e
	.uleb128 0x4
	.long	0x18c0
	.string	"loop"
	.byte	0x80
	.byte	0x6
	.byte	0xdc
	.uleb128 0x1d
	.string	"num"
	.byte	0x6
	.value	0x176
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.string	"header"
	.byte	0x6
	.value	0x179
	.long	0x18c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"latch"
	.byte	0x6
	.value	0x17c
	.long	0x18c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"pre_header"
	.byte	0x6
	.value	0x17f
	.long	0x18c6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1d
	.string	"pre_header_edges"
	.byte	0x6
	.value	0x184
	.long	0x18d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1d
	.string	"num_pre_header_edges"
	.byte	0x6
	.value	0x187
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1d
	.string	"first"
	.byte	0x6
	.value	0x18b
	.long	0x18c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1d
	.string	"last"
	.byte	0x6
	.value	0x18f
	.long	0x18c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1d
	.string	"nodes"
	.byte	0x6
	.value	0x192
	.long	0x155f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"num_nodes"
	.byte	0x6
	.value	0x195
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.string	"entry_edges"
	.byte	0x6
	.value	0x198
	.long	0x18d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1d
	.string	"num_entries"
	.byte	0x6
	.value	0x19b
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x1d
	.string	"exit_edges"
	.byte	0x6
	.value	0x19e
	.long	0x18d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1d
	.string	"num_exits"
	.byte	0x6
	.value	0x1a1
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1d
	.string	"exits_doms"
	.byte	0x6
	.value	0x1a4
	.long	0x155f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x1d
	.string	"depth"
	.byte	0x6
	.value	0x1a7
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1d
	.string	"pred"
	.byte	0x6
	.value	0x1aa
	.long	0x18df
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x1d
	.string	"level"
	.byte	0x6
	.value	0x1ae
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1d
	.string	"outer"
	.byte	0x6
	.value	0x1b1
	.long	0x18c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1d
	.string	"inner"
	.byte	0x6
	.value	0x1b4
	.long	0x18c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1d
	.string	"next"
	.byte	0x6
	.value	0x1b7
	.long	0x18c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1d
	.string	"invalid"
	.byte	0x6
	.value	0x1ba
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1d
	.string	"aux"
	.byte	0x6
	.value	0x1bd
	.long	0x2b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1d
	.string	"vtop"
	.byte	0x6
	.value	0x1c3
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x1d
	.string	"cont"
	.byte	0x6
	.value	0x1c7
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1d
	.string	"start"
	.byte	0x6
	.value	0x1ca
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x1d
	.string	"end"
	.byte	0x6
	.value	0x1cd
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x1d
	.string	"top"
	.byte	0x6
	.value	0x1d1
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x1d
	.string	"scan_start"
	.byte	0x6
	.value	0x1d4
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x1d
	.string	"sink"
	.byte	0x6
	.value	0x1d7
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x1d
	.string	"exit_labels"
	.byte	0x6
	.value	0x1e2
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x1d
	.string	"exit_count"
	.byte	0x6
	.value	0x1e6
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1650
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x6
	.byte	0xe6
	.long	0x11d4
	.uleb128 0x3
	.byte	0x4
	.long	0x1644
	.uleb128 0x3
	.byte	0x4
	.long	0x18c0
	.uleb128 0xa
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x1e
	.long	0x1961
	.byte	0x1
	.string	"rtx_unstable_p"
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.long	0x215
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.byte	0x39
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF0
	.byte	0x1
	.byte	0x3b
	.long	0x5d3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x3c
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"fmt"
	.byte	0x1
	.byte	0x3d
	.long	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x21
	.string	"j"
	.byte	0x1
	.byte	0x73
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x19e0
	.byte	0x1
	.string	"rtx_varies_p"
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.long	0x215
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.byte	0x85
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	.LASF5
	.byte	0x1
	.byte	0x86
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.long	.LASF0
	.byte	0x1
	.byte	0x88
	.long	0x5d3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x89
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"fmt"
	.byte	0x1
	.byte	0x8a
	.long	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x21
	.string	"j"
	.byte	0x1
	.byte	0xcb
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x1a28
	.byte	0x1
	.string	"rtx_addr_can_trap_p"
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.long	0x215
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.byte	0xd8
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF0
	.byte	0x1
	.byte	0xda
	.long	0x5d3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x1ab3
	.byte	0x1
	.string	"rtx_addr_varies_p"
	.byte	0x1
	.value	0x11a
	.byte	0x1
	.long	0x215
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x118
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF5
	.byte	0x1
	.value	0x119
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0x11b
	.long	0x5d3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x11c
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x11d
	.long	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x12f
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x1aec
	.byte	0x1
	.string	"get_integer_term"
	.byte	0x1
	.value	0x13f
	.byte	0x1
	.long	0x282
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x13e
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x24
	.long	0x1b26
	.byte	0x1
	.string	"get_related_value"
	.byte	0x1
	.value	0x153
	.byte	0x1
	.long	0x9c
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x152
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x24
	.long	0x1c08
	.byte	0x1
	.string	"get_jump_table_offset"
	.byte	0x1
	.value	0x16b
	.byte	0x1
	.long	0x9c
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0x169
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"earliest"
	.byte	0x1
	.value	0x16a
	.long	0x1407
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"label"
	.byte	0x1
	.value	0x16c
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"table"
	.byte	0x1
	.value	0x16d
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x16e
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"old_insn"
	.byte	0x1
	.value	0x16f
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x170
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"old_x"
	.byte	0x1
	.value	0x171
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0x172
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"old_y"
	.byte	0x1
	.value	0x173
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x174
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x1c75
	.string	"global_reg_mentioned_p_1"
	.byte	0x1
	.value	0x1f3
	.byte	0x1
	.long	0x215
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x25
	.string	"loc"
	.byte	0x1
	.value	0x1f1
	.long	0x1407
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF7
	.byte	0x1
	.value	0x1f2
	.long	0x2b9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF8
	.byte	0x1
	.value	0x1f4
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x1f5
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x1cb4
	.byte	0x1
	.string	"global_reg_mentioned_p"
	.byte	0x1
	.value	0x225
	.byte	0x1
	.long	0x215
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x224
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x24
	.long	0x1d64
	.byte	0x1
	.string	"count_occurrences"
	.byte	0x1
	.value	0x23f
	.byte	0x1
	.long	0x215
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x23d
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"find"
	.byte	0x1
	.value	0x23d
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"count_dest"
	.byte	0x1
	.value	0x23e
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x240
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x240
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0x241
	.long	0x5d3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"format_ptr"
	.byte	0x1
	.value	0x242
	.long	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"count"
	.byte	0x1
	.value	0x243
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x1dee
	.byte	0x1
	.string	"reg_mentioned_p"
	.byte	0x1
	.value	0x27f
	.byte	0x1
	.long	0x215
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x25
	.string	"reg"
	.byte	0x1
	.value	0x27e
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"in"
	.byte	0x1
	.value	0x27e
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x280
	.long	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x281
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0x282
	.long	0x5d3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x2b1
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x1e48
	.byte	0x1
	.string	"no_labels_between_p"
	.byte	0x1
	.value	0x2c3
	.byte	0x1
	.long	0x215
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x25
	.string	"beg"
	.byte	0x1
	.value	0x2c2
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"end"
	.byte	0x1
	.value	0x2c2
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x2c4
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x24
	.long	0x1ea1
	.byte	0x1
	.string	"no_jumps_between_p"
	.byte	0x1
	.value	0x2d3
	.byte	0x1
	.long	0x215
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x25
	.string	"beg"
	.byte	0x1
	.value	0x2d2
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"end"
	.byte	0x1
	.value	0x2d2
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x2d4
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x24
	.long	0x1f0b
	.byte	0x1
	.string	"reg_used_between_p"
	.byte	0x1
	.value	0x2e1
	.byte	0x1
	.long	0x215
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x25
	.string	"reg"
	.byte	0x1
	.value	0x2e0
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF9
	.byte	0x1
	.value	0x2e0
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.long	.LASF10
	.byte	0x1
	.value	0x2e0
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF6
	.byte	0x1
	.value	0x2e2
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x1f61
	.byte	0x1
	.string	"reg_referenced_p"
	.byte	0x1
	.value	0x2f9
	.byte	0x1
	.long	0x215
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x2f7
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"body"
	.byte	0x1
	.value	0x2f8
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x2fa
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x1fd1
	.byte	0x1
	.string	"reg_referenced_between_p"
	.byte	0x1
	.value	0x347
	.byte	0x1
	.long	0x215
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x25
	.string	"reg"
	.byte	0x1
	.value	0x346
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF9
	.byte	0x1
	.value	0x346
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.long	.LASF10
	.byte	0x1
	.value	0x346
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF6
	.byte	0x1
	.value	0x348
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x203a
	.byte	0x1
	.string	"reg_set_between_p"
	.byte	0x1
	.value	0x35c
	.byte	0x1
	.long	0x215
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x25
	.string	"reg"
	.byte	0x1
	.value	0x35b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF9
	.byte	0x1
	.value	0x35b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.long	.LASF10
	.byte	0x1
	.value	0x35b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF6
	.byte	0x1
	.value	0x35d
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x208d
	.byte	0x1
	.string	"reg_set_p"
	.byte	0x1
	.value	0x36c
	.byte	0x1
	.long	0x215
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x25
	.string	"reg"
	.byte	0x1
	.value	0x36b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0x36b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"body"
	.byte	0x1
	.value	0x36d
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x2120
	.byte	0x1
	.string	"regs_set_between_p"
	.byte	0x1
	.value	0x38f
	.byte	0x1
	.long	0x215
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x38d
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"start"
	.byte	0x1
	.value	0x38e
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"end"
	.byte	0x1
	.value	0x38e
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0x390
	.long	0x5d3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x391
	.long	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x392
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x392
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x21b3
	.byte	0x1
	.string	"modified_between_p"
	.byte	0x1
	.value	0x3be
	.byte	0x1
	.long	0x215
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x3bc
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"start"
	.byte	0x1
	.value	0x3bd
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"end"
	.byte	0x1
	.value	0x3bd
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0x3bf
	.long	0x5d3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x3c0
	.long	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x3c1
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x3c1
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x2230
	.byte	0x1
	.string	"modified_in_p"
	.byte	0x1
	.value	0x3f6
	.byte	0x1
	.long	0x215
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x3f4
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0x3f5
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0x3f7
	.long	0x5d3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x3f8
	.long	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x3f9
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x3f9
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x2295
	.byte	0x1
	.string	"insn_dependent_p"
	.byte	0x1
	.value	0x42c
	.byte	0x1
	.long	0x215
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x42b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.value	0x42b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"tmp"
	.byte	0x1
	.value	0x42d
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2a
	.long	.LASF11
	.long	0x3fe4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11082
	.byte	0x0
	.uleb128 0x2b
	.long	0x22fa
	.string	"insn_dependent_p_1"
	.byte	0x1
	.value	0x446
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x443
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"pat"
	.byte	0x1
	.value	0x444
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.long	.LASF7
	.byte	0x1
	.value	0x445
	.long	0x2b9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"pinsn"
	.byte	0x1
	.value	0x447
	.long	0x1407
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x2330
	.string	"set_of_data"
	.byte	0x8
	.byte	0x1
	.value	0x44f
	.uleb128 0x1d
	.string	"found"
	.byte	0x1
	.value	0x450
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.string	"pat"
	.byte	0x1
	.value	0x451
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2b
	.long	0x238b
	.string	"set_of_1"
	.byte	0x1
	.value	0x459
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x456
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"pat"
	.byte	0x1
	.value	0x457
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"data1"
	.byte	0x1
	.value	0x458
	.long	0x2b9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF7
	.byte	0x1
	.value	0x45a
	.long	0x238b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x22fa
	.uleb128 0x24
	.long	0x23e0
	.byte	0x1
	.string	"set_of"
	.byte	0x1
	.value	0x465
	.byte	0x1
	.long	0x9c
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x25
	.string	"pat"
	.byte	0x1
	.value	0x464
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0x464
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF7
	.byte	0x1
	.value	0x466
	.long	0x22fa
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x24
	.long	0x2473
	.byte	0x1
	.string	"single_set_2"
	.byte	0x1
	.value	0x474
	.byte	0x1
	.long	0x9c
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0x473
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"pat"
	.byte	0x1
	.value	0x473
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x475
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"set_verified"
	.byte	0x1
	.value	0x476
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x477
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x28
	.string	"sub"
	.byte	0x1
	.value	0x47d
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x24c9
	.byte	0x1
	.string	"multiple_sets"
	.byte	0x1
	.value	0x4aa
	.byte	0x1
	.long	0x215
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0x4a9
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"found"
	.byte	0x1
	.value	0x4ab
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x4ac
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x24
	.long	0x251c
	.byte	0x1
	.string	"set_noop_p"
	.byte	0x1
	.value	0x4ca
	.byte	0x1
	.long	0x215
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x25
	.string	"set"
	.byte	0x1
	.value	0x4c9
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0x4cb
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"dst"
	.byte	0x1
	.value	0x4cc
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x2591
	.byte	0x1
	.string	"noop_move_p"
	.byte	0x1
	.value	0x4f1
	.byte	0x1
	.long	0x215
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0x4f0
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0x4f2
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x505
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x50a
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x2654
	.byte	0x1
	.string	"find_last_value"
	.byte	0x1
	.value	0x527
	.byte	0x1
	.long	0x9c
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x523
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"pinsn"
	.byte	0x1
	.value	0x524
	.long	0x1407
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"valid_to"
	.byte	0x1
	.value	0x525
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"allow_hwreg"
	.byte	0x1
	.value	0x526
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x528
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x52e
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"note"
	.byte	0x1
	.value	0x52f
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0x533
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x275e
	.byte	0x1
	.string	"refers_to_regno_p"
	.byte	0x1
	.value	0x558
	.byte	0x1
	.long	0x215
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x26
	.long	.LASF8
	.byte	0x1
	.value	0x555
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF12
	.byte	0x1
	.value	0x555
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x556
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"loc"
	.byte	0x1
	.value	0x557
	.long	0x1407
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x559
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"x_regno"
	.byte	0x1
	.value	0x55a
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0x55b
	.long	0x5d3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x55c
	.long	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"repeat"
	.byte	0x1
	.value	0x59d
	.long	.L657
	.uleb128 0x2e
	.long	0x2746
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x28
	.string	"inner_regno"
	.byte	0x1
	.value	0x581
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"inner_endregno"
	.byte	0x1
	.value	0x582
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x22
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x5b5
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x282e
	.byte	0x1
	.string	"reg_overlap_mentioned_p"
	.byte	0x1
	.value	0x5c8
	.byte	0x1
	.long	0x215
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x5c7
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"in"
	.byte	0x1
	.value	0x5c7
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF8
	.byte	0x1
	.value	0x5c9
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF12
	.byte	0x1
	.value	0x5c9
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"do_reg"
	.byte	0x1
	.value	0x5df
	.long	.L752
	.uleb128 0x2e
	.long	0x2802
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x5e6
	.long	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x5e7
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2e
	.long	0x281d
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x5fb
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF11
	.long	0x3fdf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11575
	.byte	0x0
	.uleb128 0x24
	.long	0x28c0
	.byte	0x1
	.string	"reg_set_last"
	.byte	0x1
	.value	0x616
	.byte	0x1
	.long	0x9c
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x614
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0x615
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"orig_insn"
	.byte	0x1
	.value	0x617
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x628
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x28
	.string	"last_value"
	.byte	0x1
	.value	0x62c
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x2935
	.byte	0x1
	.string	"note_stores"
	.byte	0x1
	.value	0x64c
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x649
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"fun"
	.byte	0x1
	.value	0x64a
	.long	0x294b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.long	.LASF7
	.byte	0x1
	.value	0x64b
	.long	0x2b9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x64d
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x28
	.string	"dest"
	.byte	0x1
	.value	0x654
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x294b
	.byte	0x1
	.uleb128 0x1c
	.long	0x9c
	.uleb128 0x1c
	.long	0x9c
	.uleb128 0x1c
	.long	0x2b9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2935
	.uleb128 0x2f
	.long	0x29d8
	.byte	0x1
	.string	"note_uses"
	.byte	0x1
	.value	0x67d
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x25
	.string	"pbody"
	.byte	0x1
	.value	0x67a
	.long	0x1407
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"fun"
	.byte	0x1
	.value	0x67b
	.long	0x29e9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.long	.LASF7
	.byte	0x1
	.value	0x67c
	.long	0x2b9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"body"
	.byte	0x1
	.value	0x67e
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x67f
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x28
	.string	"dest"
	.byte	0x1
	.value	0x6ab
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x29e9
	.byte	0x1
	.uleb128 0x1c
	.long	0x1407
	.uleb128 0x1c
	.long	0x2b9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x29d8
	.uleb128 0x24
	.long	0x2a76
	.byte	0x1
	.string	"dead_or_set_p"
	.byte	0x1
	.value	0x6db
	.byte	0x1
	.long	0x215
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0x6d9
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x6da
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF8
	.byte	0x1
	.value	0x6dc
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"last_regno"
	.byte	0x1
	.value	0x6dc
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x6dd
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2a
	.long	.LASF11
	.long	0x3fda
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11879
	.byte	0x0
	.uleb128 0x24
	.long	0x2b64
	.byte	0x1
	.string	"dead_or_set_regno_p"
	.byte	0x1
	.value	0x6f8
	.byte	0x1
	.long	0x215
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0x6f6
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"test_regno"
	.byte	0x1
	.value	0x6f7
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF8
	.byte	0x1
	.value	0x6f9
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF12
	.byte	0x1
	.value	0x6f9
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"pattern"
	.byte	0x1
	.value	0x6fa
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	0x2b18
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x28
	.string	"dest"
	.byte	0x1
	.value	0x70b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x22
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x722
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x28
	.string	"body"
	.byte	0x1
	.value	0x726
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x28
	.string	"dest"
	.byte	0x1
	.value	0x72d
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x2bcc
	.byte	0x1
	.string	"find_reg_note"
	.byte	0x1
	.value	0x74e
	.byte	0x1
	.long	0x9c
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0x74b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"kind"
	.byte	0x1
	.value	0x74c
	.long	0x120f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"datum"
	.byte	0x1
	.value	0x74d
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF13
	.byte	0x1
	.value	0x74f
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x24
	.long	0x2c34
	.byte	0x1
	.string	"find_regno_note"
	.byte	0x1
	.value	0x766
	.byte	0x1
	.long	0x9c
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0x763
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"kind"
	.byte	0x1
	.value	0x764
	.long	0x120f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.long	.LASF8
	.byte	0x1
	.value	0x765
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF13
	.byte	0x1
	.value	0x767
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x2c88
	.byte	0x1
	.string	"find_reg_equal_equiv_note"
	.byte	0x1
	.value	0x782
	.byte	0x1
	.long	0x9c
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0x781
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"note"
	.byte	0x1
	.value	0x783
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x2d58
	.byte	0x1
	.string	"find_reg_fusage"
	.byte	0x1
	.value	0x795
	.byte	0x1
	.long	0x215
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0x792
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x793
	.long	0x5d3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"datum"
	.byte	0x1
	.value	0x794
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.long	0x2cfe
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x27
	.long	.LASF13
	.byte	0x1
	.value	0x7a0
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2e
	.long	0x2d47
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x27
	.long	.LASF8
	.byte	0x1
	.value	0x7ab
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x28
	.string	"end_regno"
	.byte	0x1
	.value	0x7b2
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x7b4
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF11
	.long	0x3fc5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12171
	.byte	0x0
	.uleb128 0x24
	.long	0x2dfb
	.byte	0x1
	.string	"find_regno_fusage"
	.byte	0x1
	.value	0x7c7
	.byte	0x1
	.long	0x215
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0x7c4
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x7c5
	.long	0x5d3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.long	.LASF8
	.byte	0x1
	.value	0x7c6
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF13
	.byte	0x1
	.value	0x7c8
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x28
	.string	"regnote"
	.byte	0x1
	.value	0x7d3
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"op"
	.byte	0x1
	.value	0x7d4
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x7d4
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x2e64
	.byte	0x1
	.string	"pure_call_p"
	.byte	0x1
	.value	0x7e5
	.byte	0x1
	.long	0x215
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0x7e4
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF13
	.byte	0x1
	.value	0x7e6
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x28
	.string	"u"
	.byte	0x1
	.value	0x7ee
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x28
	.string	"m"
	.byte	0x1
	.value	0x7ee
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x2ec5
	.byte	0x1
	.string	"remove_note"
	.byte	0x1
	.value	0x7ff
	.byte	0x1
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0x7fd
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"note"
	.byte	0x1
	.value	0x7fe
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF13
	.byte	0x1
	.value	0x800
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2a
	.long	.LASF11
	.long	0x3fb0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12284
	.byte	0x0
	.uleb128 0x24
	.long	0x2f1d
	.byte	0x1
	.string	"in_expr_list_p"
	.byte	0x1
	.value	0x81d
	.byte	0x1
	.long	0x215
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x25
	.string	"listp"
	.byte	0x1
	.value	0x81b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"node"
	.byte	0x1
	.value	0x81c
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x81e
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2f
	.long	0x2f90
	.byte	0x1
	.string	"remove_node_from_expr_list"
	.byte	0x1
	.value	0x830
	.byte	0x1
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x25
	.string	"node"
	.byte	0x1
	.value	0x82e
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"listp"
	.byte	0x1
	.value	0x82f
	.long	0x1407
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"temp"
	.byte	0x1
	.value	0x831
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x28
	.string	"prev"
	.byte	0x1
	.value	0x832
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x24
	.long	0x3014
	.byte	0x1
	.string	"volatile_insn_p"
	.byte	0x1
	.value	0x84e
	.byte	0x1
	.long	0x215
	.long	.LFB61
	.long	.LFE61
	.long	.LLST46
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x84d
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0x84f
	.long	0x5d3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x875
	.long	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x876
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x881
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x3098
	.byte	0x1
	.string	"volatile_refs_p"
	.byte	0x1
	.value	0x891
	.byte	0x1
	.long	0x215
	.long	.LFB62
	.long	.LFE62
	.long	.LLST47
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x890
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0x892
	.long	0x5d3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x8b6
	.long	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x8b7
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x8c2
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x311b
	.byte	0x1
	.string	"side_effects_p"
	.byte	0x1
	.value	0x8d2
	.byte	0x1
	.long	0x215
	.long	.LFB63
	.long	.LFE63
	.long	.LLST48
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x8d1
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0x8d3
	.long	0x5d3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x904
	.long	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x905
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x910
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x3190
	.byte	0x1
	.string	"may_trap_p"
	.byte	0x1
	.value	0x91f
	.byte	0x1
	.long	0x215
	.long	.LFB64
	.long	.LFE64
	.long	.LLST49
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x91e
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x920
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0x921
	.long	0x5d3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x922
	.long	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x995
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x3222
	.byte	0x1
	.string	"inequality_comparisons_p"
	.byte	0x1
	.value	0x9a4
	.byte	0x1
	.long	0x215
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x9a3
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x9a5
	.long	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x9a6
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x9a6
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0x9a7
	.long	0x5d3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x9d1
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x32e7
	.byte	0x1
	.string	"replace_rtx"
	.byte	0x1
	.value	0x9e4
	.byte	0x1
	.long	0x9c
	.long	.LFB66
	.long	.LFE66
	.long	.LLST51
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x9e3
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"from"
	.byte	0x1
	.value	0x9e3
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"to"
	.byte	0x1
	.value	0x9e3
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x9e5
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x9e5
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0x9e6
	.long	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	0x32b9
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0x9f6
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2e
	.long	0x32d6
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0xa07
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF11
	.long	0x3fab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12913
	.byte	0x0
	.uleb128 0x24
	.long	0x33bb
	.byte	0x1
	.string	"replace_regs"
	.byte	0x1
	.value	0xa35
	.byte	0x1
	.long	0x9c
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0xa31
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"reg_map"
	.byte	0x1
	.value	0xa32
	.long	0x1407
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"nregs"
	.byte	0x1
	.value	0xa33
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"replace_dest"
	.byte	0x1
	.value	0xa34
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0xa36
	.long	0x5d3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xa37
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0xa38
	.long	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	0x33a3
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x28
	.string	"map_val"
	.byte	0x1
	.value	0xa5e
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x22
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0xa82
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x342c
	.string	"computed_jump_p_1"
	.byte	0x1
	.value	0xa92
	.byte	0x1
	.long	0x215
	.long	.LFB68
	.long	.LFE68
	.long	.LLST53
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0xa91
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0xa93
	.long	0x5d3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xa94
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0xa94
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0xa95
	.long	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x34c1
	.byte	0x1
	.string	"computed_jump_p"
	.byte	0x1
	.value	0xac9
	.byte	0x1
	.long	0x215
	.long	.LFB69
	.long	.LFE69
	.long	.LLST54
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0xac8
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xaca
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0xacd
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0xad3
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"has_use_labelref"
	.byte	0x1
	.value	0xad4
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x356c
	.byte	0x1
	.string	"for_each_rtx"
	.byte	0x1
	.value	0xafd
	.byte	0x1
	.long	0x215
	.long	.LFB70
	.long	.LFE70
	.long	.LLST55
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0xafa
	.long	0x1407
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"f"
	.byte	0x1
	.value	0xafb
	.long	0x13d7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.long	.LASF7
	.byte	0x1
	.value	0xafc
	.long	0x2b9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"result"
	.byte	0x1
	.value	0xafe
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"length"
	.byte	0x1
	.value	0xaff
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"format"
	.byte	0x1
	.value	0xb00
	.long	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xb01
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0xb21
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x35e8
	.byte	0x1
	.string	"regno_use_in"
	.byte	0x1
	.value	0xb3c
	.byte	0x1
	.long	0x9c
	.long	.LFB71
	.long	.LFE71
	.long	.LLST56
	.uleb128 0x26
	.long	.LASF8
	.byte	0x1
	.value	0xb3a
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0xb3b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0xb3d
	.long	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xb3e
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0xb3e
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0xb3f
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x3630
	.byte	0x1
	.string	"commutative_operand_precedence"
	.byte	0x1
	.value	0xb5e
	.byte	0x1
	.long	0x215
	.long	.LFB72
	.long	.LFE72
	.long	.LLST57
	.uleb128 0x25
	.string	"op"
	.byte	0x1
	.value	0xb5d
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x24
	.long	0x3681
	.byte	0x1
	.string	"swap_commutative_operands_p"
	.byte	0x1
	.value	0xb81
	.byte	0x1
	.long	0x215
	.long	.LFB73
	.long	.LFE73
	.long	.LLST58
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0xb80
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.value	0xb80
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x24
	.long	0x36b4
	.byte	0x1
	.string	"auto_inc_p"
	.byte	0x1
	.value	0xb8b
	.byte	0x1
	.long	0x215
	.long	.LFB74
	.long	.LFE74
	.long	.LLST59
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0xb8a
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x24
	.long	0x3751
	.byte	0x1
	.string	"insns_safe_to_move_p"
	.byte	0x1
	.value	0xbac
	.byte	0x1
	.long	0x215
	.long	.LFB75
	.long	.LFE75
	.long	.LLST60
	.uleb128 0x25
	.string	"from"
	.byte	0x1
	.value	0xba9
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"to"
	.byte	0x1
	.value	0xbaa
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"new_to"
	.byte	0x1
	.value	0xbab
	.long	0x1407
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"eh_region_count"
	.byte	0x1
	.value	0xbad
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"past_to_p"
	.byte	0x1
	.value	0xbae
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x28
	.string	"r"
	.byte	0x1
	.value	0xbaf
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x24
	.long	0x37d4
	.byte	0x1
	.string	"loc_mentioned_in_p"
	.byte	0x1
	.value	0xbf0
	.byte	0x1
	.long	0x215
	.long	.LFB76
	.long	.LFE76
	.long	.LLST61
	.uleb128 0x25
	.string	"loc"
	.byte	0x1
	.value	0xbef
	.long	0x1407
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"in"
	.byte	0x1
	.value	0xbef
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0xbf1
	.long	0x5d3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"fmt"
	.byte	0x1
	.value	0xbf2
	.long	0x202
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xbf3
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0xbf3
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x386f
	.byte	0x1
	.string	"subreg_lsb"
	.byte	0x1
	.value	0xc0c
	.byte	0x1
	.long	0x21c
	.long	.LFB77
	.long	.LFE77
	.long	.LLST62
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0xc0b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"inner_mode"
	.byte	0x1
	.value	0xc0d
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"mode"
	.byte	0x1
	.value	0xc0e
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"bitpos"
	.byte	0x1
	.value	0xc0f
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"byte"
	.byte	0x1
	.value	0xc10
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"word"
	.byte	0x1
	.value	0xc11
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF11
	.long	0x3f96
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13607
	.byte	0x0
	.uleb128 0x24
	.long	0x393c
	.byte	0x1
	.string	"subreg_regno_offset"
	.byte	0x1
	.value	0xc3d
	.byte	0x1
	.long	0x21c
	.long	.LFB78
	.long	.LFE78
	.long	.LLST63
	.uleb128 0x25
	.string	"xregno"
	.byte	0x1
	.value	0xc39
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"xmode"
	.byte	0x1
	.value	0xc3a
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.long	.LASF4
	.byte	0x1
	.value	0xc3b
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"ymode"
	.byte	0x1
	.value	0xc3c
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0xc3e
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF15
	.byte	0x1
	.value	0xc3e
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LASF16
	.byte	0x1
	.value	0xc3f
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF17
	.byte	0x1
	.value	0xc3f
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0xc40
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2a
	.long	.LASF11
	.long	0x3f81
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13734
	.byte	0x0
	.uleb128 0x24
	.long	0x3a13
	.byte	0x1
	.string	"subreg_offset_representable_p"
	.byte	0x1
	.value	0xc6b
	.byte	0x1
	.long	0x18e5
	.long	.LFB79
	.long	.LFE79
	.long	.LLST64
	.uleb128 0x25
	.string	"xregno"
	.byte	0x1
	.value	0xc67
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"xmode"
	.byte	0x1
	.value	0xc68
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.long	.LASF4
	.byte	0x1
	.value	0xc69
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"ymode"
	.byte	0x1
	.value	0xc6a
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0xc6c
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF15
	.byte	0x1
	.value	0xc6c
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LASF16
	.byte	0x1
	.value	0xc6d
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF17
	.byte	0x1
	.value	0xc6d
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0xc6e
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2a
	.long	.LASF11
	.long	0x3f7c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13780
	.byte	0x0
	.uleb128 0x24
	.long	0x3a78
	.byte	0x1
	.string	"subreg_regno"
	.byte	0x1
	.value	0xca6
	.byte	0x1
	.long	0x21c
	.long	.LFB80
	.long	.LFE80
	.long	.LLST65
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0xca5
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0xca7
	.long	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"subreg"
	.byte	0x1
	.value	0xca8
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF8
	.byte	0x1
	.value	0xca9
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2c
	.long	0x3ab2
	.string	"parms_set_data"
	.byte	0x1c
	.byte	0x1
	.value	0xcb3
	.uleb128 0x1d
	.string	"nregs"
	.byte	0x1
	.value	0xcb4
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.string	"regs"
	.byte	0x1
	.value	0xcb5
	.long	0x1426
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2b
	.long	0x3b0a
	.string	"parms_set"
	.byte	0x1
	.value	0xcbd
	.byte	0x1
	.long	.LFB81
	.long	.LFE81
	.long	.LLST66
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0xcbb
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"pat"
	.byte	0x1
	.value	0xcbb
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.long	.LASF7
	.byte	0x1
	.value	0xcbc
	.long	0x2b9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"d"
	.byte	0x1
	.value	0xcbe
	.long	0x3b0a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3a78
	.uleb128 0x24
	.long	0x3bcf
	.byte	0x1
	.string	"find_first_parameter_load"
	.byte	0x1
	.value	0xccc
	.byte	0x1
	.long	0x9c
	.long	.LFB82
	.long	.LFE82
	.long	.LLST67
	.uleb128 0x25
	.string	"call_insn"
	.byte	0x1
	.value	0xccb
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"boundary"
	.byte	0x1
	.value	0xccb
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"parm"
	.byte	0x1
	.value	0xccd
	.long	0x3a78
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0xcce
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"before"
	.byte	0x1
	.value	0xcce
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	0x3bbe
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x28
	.string	"scan_tp_"
	.byte	0x1
	.value	0xcd3
	.long	0x3bcf
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF11
	.long	0x3f67
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13884
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x140d
	.uleb128 0x24
	.long	0x3c37
	.byte	0x1
	.string	"keep_with_call_p"
	.byte	0x1
	.value	0xd07
	.byte	0x1
	.long	0x18e5
	.long	.LFB83
	.long	.LFE83
	.long	.LLST68
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0xd06
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0xd08
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x28
	.string	"i2"
	.byte	0x1
	.value	0xd1b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x3cb4
	.string	"hoist_test_store"
	.byte	0x1
	.value	0xd2b
	.byte	0x1
	.long	0x18e5
	.long	.LFB84
	.long	.LFE84
	.long	.LLST69
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0xd29
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"val"
	.byte	0x1
	.value	0xd29
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"live"
	.byte	0x1
	.value	0xd2a
	.long	0x1574
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x27
	.long	.LASF8
	.byte	0x1
	.value	0xd4e
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"n"
	.byte	0x1
	.value	0xd4f
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x3d55
	.byte	0x1
	.string	"can_hoist_insn_p"
	.byte	0x1
	.value	0xd65
	.byte	0x1
	.long	0x18e5
	.long	.LFB85
	.long	.LFE85
	.long	.LLST70
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0xd63
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"val"
	.byte	0x1
	.value	0xd63
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"live"
	.byte	0x1
	.value	0xd64
	.long	0x1574
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0xd66
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xd67
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	0x3d44
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0xd86
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF11
	.long	0x3f52
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14176
	.byte	0x0
	.uleb128 0x2b
	.long	0x3dd6
	.string	"hoist_update_store"
	.byte	0x1
	.value	0xda9
	.byte	0x1
	.long	.LFB86
	.long	.LFE86
	.long	.LLST71
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0xda8
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"xp"
	.byte	0x1
	.value	0xda8
	.long	0x1407
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"val"
	.byte	0x1
	.value	0xda8
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"new"
	.byte	0x1
	.value	0xda8
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0xdaa
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF11
	.long	0x3f4d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14239
	.byte	0x0
	.uleb128 0x24
	.long	0x3e97
	.byte	0x1
	.string	"hoist_insn_after"
	.byte	0x1
	.value	0xdcf
	.byte	0x1
	.long	0x9c
	.long	.LFB87
	.long	.LFE87
	.long	.LLST72
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0xdce
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"after"
	.byte	0x1
	.value	0xdce
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"val"
	.byte	0x1
	.value	0xdce
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"new"
	.byte	0x1
	.value	0xdce
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.string	"pat"
	.byte	0x1
	.value	0xdd0
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0xdd1
	.long	0x215
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"note"
	.byte	0x1
	.value	0xdd2
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	0x3e86
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0xdf4
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF11
	.long	0x3f48
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14309
	.byte	0x0
	.uleb128 0x24
	.long	0x3f23
	.byte	0x1
	.string	"hoist_insn_to_edge"
	.byte	0x1
	.value	0xe11
	.byte	0x1
	.long	0x9c
	.long	.LFB88
	.long	.LFE88
	.long	.LLST73
	.uleb128 0x26
	.long	.LASF6
	.byte	0x1
	.value	0xe0f
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0xe10
	.long	0x1644
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"val"
	.byte	0x1
	.value	0xe0f
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"new"
	.byte	0x1
	.value	0xe0f
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.string	"new_insn"
	.byte	0x1
	.value	0xe12
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2a
	.long	.LASF11
	.long	0x3f33
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14340
	.byte	0x0
	.uleb128 0xd
	.long	0x3f33
	.long	0x20d
	.uleb128 0xe
	.long	0x223
	.byte	0x12
	.byte	0x0
	.uleb128 0x9
	.long	0x3f23
	.uleb128 0xd
	.long	0x3f48
	.long	0x20d
	.uleb128 0xe
	.long	0x223
	.byte	0x10
	.byte	0x0
	.uleb128 0x9
	.long	0x3f38
	.uleb128 0x9
	.long	0x3f23
	.uleb128 0x9
	.long	0x3f38
	.uleb128 0xd
	.long	0x3f67
	.long	0x20d
	.uleb128 0xe
	.long	0x223
	.byte	0x19
	.byte	0x0
	.uleb128 0x9
	.long	0x3f57
	.uleb128 0xd
	.long	0x3f7c
	.long	0x20d
	.uleb128 0xe
	.long	0x223
	.byte	0x1d
	.byte	0x0
	.uleb128 0x9
	.long	0x3f6c
	.uleb128 0x9
	.long	0x2cb
	.uleb128 0xd
	.long	0x3f96
	.long	0x20d
	.uleb128 0xe
	.long	0x223
	.byte	0xa
	.byte	0x0
	.uleb128 0x9
	.long	0x3f86
	.uleb128 0xd
	.long	0x3fab
	.long	0x20d
	.uleb128 0xe
	.long	0x223
	.byte	0xb
	.byte	0x0
	.uleb128 0x9
	.long	0x3f9b
	.uleb128 0x9
	.long	0x3f9b
	.uleb128 0xd
	.long	0x3fc5
	.long	0x20d
	.uleb128 0xe
	.long	0x223
	.byte	0xf
	.byte	0x0
	.uleb128 0x9
	.long	0x3fb5
	.uleb128 0xd
	.long	0x3fda
	.long	0x20d
	.uleb128 0xe
	.long	0x223
	.byte	0xd
	.byte	0x0
	.uleb128 0x9
	.long	0x3fca
	.uleb128 0x9
	.long	0x2bb
	.uleb128 0x9
	.long	0x3f38
	.uleb128 0x31
	.string	"target_flags"
	.byte	0x1
	.byte	0x30
	.long	0x215
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	target_flags
	.uleb128 0x32
	.string	"mips_abi"
	.byte	0x9
	.value	0x3ca
	.long	0x215
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x4027
	.long	0x524
	.uleb128 0xe
	.long	0x223
	.byte	0x35
	.byte	0x0
	.uleb128 0x33
	.long	.LASF2
	.byte	0x4
	.byte	0x34
	.long	0x4034
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x4017
	.uleb128 0xd
	.long	0x4049
	.long	0x22a
	.uleb128 0xe
	.long	0x223
	.byte	0x35
	.byte	0x0
	.uleb128 0x34
	.string	"mode_size"
	.byte	0x4
	.byte	0x59
	.long	0x405c
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x4039
	.uleb128 0xd
	.long	0x4071
	.long	0x23b
	.uleb128 0xe
	.long	0x223
	.byte	0x35
	.byte	0x0
	.uleb128 0x34
	.string	"mode_bitsize"
	.byte	0x4
	.byte	0x69
	.long	0x4087
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x4061
	.uleb128 0xd
	.long	0x409c
	.long	0x22a
	.uleb128 0xe
	.long	0x223
	.byte	0xa2
	.byte	0x0
	.uleb128 0x34
	.string	"rtx_length"
	.byte	0x3
	.byte	0x3c
	.long	0x40b0
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x408c
	.uleb128 0xd
	.long	0x40c5
	.long	0x202
	.uleb128 0xe
	.long	0x223
	.byte	0xa2
	.byte	0x0
	.uleb128 0x34
	.string	"rtx_format"
	.byte	0x3
	.byte	0x42
	.long	0x40d9
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x40b5
	.uleb128 0xd
	.long	0x40ee
	.long	0x20d
	.uleb128 0xe
	.long	0x223
	.byte	0xa2
	.byte	0x0
	.uleb128 0x34
	.string	"rtx_class"
	.byte	0x3
	.byte	0x45
	.long	0x4101
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x40de
	.uleb128 0xd
	.long	0x4116
	.long	0x9c
	.uleb128 0xe
	.long	0x223
	.byte	0x80
	.byte	0x0
	.uleb128 0x32
	.string	"const_int_rtx"
	.byte	0x3
	.value	0x6a4
	.long	0x4106
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x413e
	.long	0x9c
	.uleb128 0xe
	.long	0x223
	.byte	0xa
	.byte	0x0
	.uleb128 0x32
	.string	"global_rtl"
	.byte	0x3
	.value	0x6e5
	.long	0x412e
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"pic_offset_table_rtx"
	.byte	0x3
	.value	0x6f3
	.long	0x9c
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x4182
	.long	0x20d
	.uleb128 0xe
	.long	0x223
	.byte	0xaf
	.byte	0x0
	.uleb128 0x32
	.string	"fixed_regs"
	.byte	0x8
	.value	0x18b
	.long	0x4172
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"global_regs"
	.byte	0x8
	.value	0x1b4
	.long	0x4172
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"flag_finite_math_only"
	.byte	0xa
	.value	0x177
	.long	0x215
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"flag_trapping_math"
	.byte	0xa
	.value	0x17d
	.long	0x215
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"flag_signaling_nans"
	.byte	0xa
	.value	0x2b4
	.long	0x215
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0x0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x5a6
	.value	0x2
	.long	.Ldebug_info0
	.long	0x4209
	.long	0x18ee
	.string	"rtx_unstable_p"
	.long	0x1961
	.string	"rtx_varies_p"
	.long	0x19e0
	.string	"rtx_addr_can_trap_p"
	.long	0x1a28
	.string	"rtx_addr_varies_p"
	.long	0x1ab3
	.string	"get_integer_term"
	.long	0x1aec
	.string	"get_related_value"
	.long	0x1b26
	.string	"get_jump_table_offset"
	.long	0x1c75
	.string	"global_reg_mentioned_p"
	.long	0x1cb4
	.string	"count_occurrences"
	.long	0x1d64
	.string	"reg_mentioned_p"
	.long	0x1dee
	.string	"no_labels_between_p"
	.long	0x1e48
	.string	"no_jumps_between_p"
	.long	0x1ea1
	.string	"reg_used_between_p"
	.long	0x1f0b
	.string	"reg_referenced_p"
	.long	0x1f61
	.string	"reg_referenced_between_p"
	.long	0x1fd1
	.string	"reg_set_between_p"
	.long	0x203a
	.string	"reg_set_p"
	.long	0x208d
	.string	"regs_set_between_p"
	.long	0x2120
	.string	"modified_between_p"
	.long	0x21b3
	.string	"modified_in_p"
	.long	0x2230
	.string	"insn_dependent_p"
	.long	0x2391
	.string	"set_of"
	.long	0x23e0
	.string	"single_set_2"
	.long	0x2473
	.string	"multiple_sets"
	.long	0x24c9
	.string	"set_noop_p"
	.long	0x251c
	.string	"noop_move_p"
	.long	0x2591
	.string	"find_last_value"
	.long	0x2654
	.string	"refers_to_regno_p"
	.long	0x275e
	.string	"reg_overlap_mentioned_p"
	.long	0x282e
	.string	"reg_set_last"
	.long	0x28c0
	.string	"note_stores"
	.long	0x2951
	.string	"note_uses"
	.long	0x29ef
	.string	"dead_or_set_p"
	.long	0x2a76
	.string	"dead_or_set_regno_p"
	.long	0x2b64
	.string	"find_reg_note"
	.long	0x2bcc
	.string	"find_regno_note"
	.long	0x2c34
	.string	"find_reg_equal_equiv_note"
	.long	0x2c88
	.string	"find_reg_fusage"
	.long	0x2d58
	.string	"find_regno_fusage"
	.long	0x2dfb
	.string	"pure_call_p"
	.long	0x2e64
	.string	"remove_note"
	.long	0x2ec5
	.string	"in_expr_list_p"
	.long	0x2f1d
	.string	"remove_node_from_expr_list"
	.long	0x2f90
	.string	"volatile_insn_p"
	.long	0x3014
	.string	"volatile_refs_p"
	.long	0x3098
	.string	"side_effects_p"
	.long	0x311b
	.string	"may_trap_p"
	.long	0x3190
	.string	"inequality_comparisons_p"
	.long	0x3222
	.string	"replace_rtx"
	.long	0x32e7
	.string	"replace_regs"
	.long	0x342c
	.string	"computed_jump_p"
	.long	0x34c1
	.string	"for_each_rtx"
	.long	0x356c
	.string	"regno_use_in"
	.long	0x35e8
	.string	"commutative_operand_precedence"
	.long	0x3630
	.string	"swap_commutative_operands_p"
	.long	0x3681
	.string	"auto_inc_p"
	.long	0x36b4
	.string	"insns_safe_to_move_p"
	.long	0x3751
	.string	"loc_mentioned_in_p"
	.long	0x37d4
	.string	"subreg_lsb"
	.long	0x386f
	.string	"subreg_regno_offset"
	.long	0x393c
	.string	"subreg_offset_representable_p"
	.long	0x3a13
	.string	"subreg_regno"
	.long	0x3b10
	.string	"find_first_parameter_load"
	.long	0x3bd5
	.string	"keep_with_call_p"
	.long	0x3cb4
	.string	"can_hoist_insn_p"
	.long	0x3dd6
	.string	"hoist_insn_after"
	.long	0x3e97
	.string	"hoist_insn_to_edge"
	.long	0x3fe9
	.string	"target_flags"
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
	.string	"endregno"
.LASF18:
	.string	"y_offset"
.LASF4:
	.string	"offset"
.LASF5:
	.string	"for_alias"
.LASF13:
	.string	"link"
.LASF3:
	.string	"mem_attrs"
.LASF0:
	.string	"code"
.LASF6:
	.string	"insn"
.LASF16:
	.string	"mode_multiple"
.LASF10:
	.string	"to_insn"
.LASF15:
	.string	"nregs_ymode"
.LASF14:
	.string	"nregs_xmode"
.LASF11:
	.string	"__FUNCTION__"
.LASF7:
	.string	"data"
.LASF17:
	.string	"nregs_multiple"
.LASF2:
	.string	"mode_class"
.LASF1:
	.string	"unsigned int"
.LASF8:
	.string	"regno"
.LASF9:
	.string	"from_insn"
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
