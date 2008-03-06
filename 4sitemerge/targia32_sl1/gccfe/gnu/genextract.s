	.file	"genextract.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	insn_name_ptr
	.comm	insn_name_ptr,4,4
	.local	insn_name_ptr_size
	.comm	insn_name_ptr_size,4,4
	.section	.rodata
.LC0:
	.string	""
	.text
	.type	gen_insn, @function
gen_insn:
.LFB15:
	.file 1 "../../../kgccfe/gnu/genextract.c"
	.loc 1 104 0
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
	.loc 1 109 0
	movl	$0, op_count@GOTOFF(%ebx)
	.loc 1 110 0
	movl	$0, dup_count@GOTOFF(%ebx)
	.loc 1 113 0
	leal	oplocs@GOTOFF(%ebx), %edx
	movl	$120, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 118 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L2
	.loc 1 119 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_rtx
	jmp	.L4
.L2:
	.loc 1 121 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L5
.L6:
.LBB2:
	.loc 1 125 0
	movl	-20(%ebp), %eax
	addl	$97, %eax
	movb	%al, -6(%ebp)
	.loc 1 126 0
	movb	$0, -5(%ebp)
	.loc 1 128 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	leal	-6(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_rtx
.LBE2:
	.loc 1 121 0
	subl	$1, -20(%ebp)
.L5:
	cmpl	$0, -20(%ebp)
	jns	.L6
.L4:
	.loc 1 131 0
	movl	$8, (%esp)
	call	xmalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 132 0
	movl	insn_code_number@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 136 0
	movl	extractions@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	jmp	.L7
.L8:
	.loc 1 138 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	op_count@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L9
	movl	-16(%ebp), %eax
	movl	124(%eax), %edx
	movl	dup_count@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L9
	.loc 1 141 0
	movl	$0, -20(%ebp)
	jmp	.L12
.L13:
	.loc 1 142 0
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax,%edx,4), %edx
	movl	-20(%ebp), %eax
	movl	oplocs@GOTOFF(%ebx,%eax,4), %eax
	cmpl	%eax, %edx
	je	.L14
	movl	-20(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	4(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L16
	movl	-20(%ebp), %eax
	movl	oplocs@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	je	.L16
	movl	-20(%ebp), %eax
	movl	oplocs@GOTOFF(%ebx,%eax,4), %ecx
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L16
.L14:
	.loc 1 141 0
	addl	$1, -20(%ebp)
.L12:
	movl	op_count@GOTOFF(%ebx), %eax
	cmpl	%eax, -20(%ebp)
	jl	.L13
.L16:
	.loc 1 147 0
	movl	op_count@GOTOFF(%ebx), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L9
	.loc 1 150 0
	movl	$0, -20(%ebp)
	jmp	.L20
.L21:
	.loc 1 151 0
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	144(%eax,%edx,4), %edx
	movl	-20(%ebp), %eax
	movl	dupnums@GOTOFF(%ebx,%eax,4), %eax
	cmpl	%eax, %edx
	jne	.L22
	movl	-20(%ebp), %eax
	movl	duplocs@GOTOFF(%ebx,%eax,4), %ecx
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	128(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L22
	.loc 1 150 0
	addl	$1, -20(%ebp)
.L20:
	movl	dup_count@GOTOFF(%ebx), %eax
	cmpl	%eax, -20(%ebp)
	jl	.L21
.L22:
	.loc 1 155 0
	movl	dup_count@GOTOFF(%ebx), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L9
	.loc 1 159 0
	movl	-16(%ebp), %eax
	movl	160(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 160 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 160(%edx)
	.loc 1 161 0
	jmp	.L33
.L9:
	.loc 1 136 0
	movl	-16(%ebp), %eax
	movl	164(%eax), %eax
	movl	%eax, -16(%ebp)
.L7:
	cmpl	$0, -16(%ebp)
	jne	.L8
	.loc 1 166 0
	movl	$168, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 167 0
	movl	op_count@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 168 0
	movl	dup_count@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 124(%eax)
	.loc 1 169 0
	movl	extractions@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 164(%eax)
	.loc 1 170 0
	movl	-16(%ebp), %eax
	movl	%eax, extractions@GOTOFF(%ebx)
	.loc 1 171 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 160(%edx)
	.loc 1 172 0
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 174 0
	movl	$0, -20(%ebp)
	jmp	.L28
.L29:
	.loc 1 175 0
	movl	-20(%ebp), %ecx
	movl	-20(%ebp), %eax
	movl	oplocs@GOTOFF(%ebx,%eax,4), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 4(%eax,%ecx,4)
	.loc 1 174 0
	addl	$1, -20(%ebp)
.L28:
	movl	op_count@GOTOFF(%ebx), %eax
	cmpl	%eax, -20(%ebp)
	jl	.L29
	.loc 1 177 0
	movl	$0, -20(%ebp)
	jmp	.L31
.L32:
	.loc 1 178 0
	movl	-20(%ebp), %ecx
	movl	-20(%ebp), %eax
	movl	dupnums@GOTOFF(%ebx,%eax,4), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 144(%eax,%ecx,4)
	movl	-20(%ebp), %ecx
	movl	-20(%ebp), %eax
	movl	duplocs@GOTOFF(%ebx,%eax,4), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 128(%eax,%ecx,4)
	.loc 1 177 0
	addl	$1, -20(%ebp)
.L31:
	movl	dup_count@GOTOFF(%ebx), %eax
	cmpl	%eax, -20(%ebp)
	jl	.L32
.L33:
	.loc 1 179 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	gen_insn, .-gen_insn
	.type	walk_rtx, @function
walk_rtx:
.LFB16:
	.loc 1 185 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%edi
.LCFI6:
	pushl	%esi
.LCFI7:
	pushl	%ebx
.LCFI8:
	subl	$92, %esp
.LCFI9:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 190 0
	movl	12(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -80(%ebp)
	movl	$0, %eax
	cld
	movl	-80(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	.loc 1 193 0
	cmpl	$0, 8(%ebp)
	je	.L71
	.loc 1 196 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -40(%ebp)
	.loc 1 198 0
	movl	-40(%ebp), %eax
	subl	$5, %eax
	movl	%eax, -84(%ebp)
	cmpl	$74, -84(%ebp)
	ja	.L37
	movl	-84(%ebp), %eax
	sall	$2, %eax
	movl	.L45@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L45:
	.long	.L38@GOTOFF
	.long	.L38@GOTOFF
	.long	.L39@GOTOFF
	.long	.L40@GOTOFF
	.long	.L41@GOTOFF
	.long	.L42@GOTOFF
	.long	.L42@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L43@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L71@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L71@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L37@GOTOFF
	.long	.L71@GOTOFF
	.long	.L71@GOTOFF
	.text
.L38:
	.loc 1 208 0
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, oplocs@GOTOFF(%ebx,%esi,4)
	.loc 1 209 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movl	op_count@GOTOFF(%ebx), %edx
	movl	%edx, -76(%ebp)
	movl	%eax, -72(%ebp)
	movl	-76(%ebp), %edi
	cmpl	%edi, -72(%ebp)
	jge	.L46
	movl	-76(%ebp), %eax
	movl	%eax, -72(%ebp)
.L46:
	movl	-72(%ebp), %edx
	movl	%edx, op_count@GOTOFF(%ebx)
	.loc 1 210 0
	jmp	.L37
.L39:
	.loc 1 213 0
	movl	dup_count@GOTOFF(%ebx), %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, duplocs@GOTOFF(%ebx,%esi,4)
	.loc 1 214 0
	movl	dup_count@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, dupnums@GOTOFF(%ebx,%edx,4)
	.loc 1 215 0
	movl	dup_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, dup_count@GOTOFF(%ebx)
	.loc 1 216 0
	jmp	.L37
.L42:
	.loc 1 220 0
	movl	dup_count@GOTOFF(%ebx), %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, duplocs@GOTOFF(%ebx,%esi,4)
	.loc 1 221 0
	movl	dup_count@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, dupnums@GOTOFF(%ebx,%edx,4)
	.loc 1 222 0
	movl	dup_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, dup_count@GOTOFF(%ebx)
	.loc 1 224 0
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 225 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 226 0
	movl	-24(%ebp), %eax
	addl	-20(%ebp), %eax
	addl	$1, %eax
	movb	$0, (%eax)
	.loc 1 228 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	jmp	.L47
.L48:
	.loc 1 230 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edi
	addl	%eax, %edi
	movl	%edi, -68(%ebp)
	cmpl	$10, -40(%ebp)
	jne	.L49
	movb	$48, -61(%ebp)
	jmp	.L51
.L49:
	movb	$97, -61(%ebp)
.L51:
	movl	-36(%ebp), %eax
	addb	-61(%ebp), %al
	movl	-68(%ebp), %edx
	movb	%al, (%edx)
	.loc 1 231 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_rtx
	.loc 1 228 0
	subl	$1, -36(%ebp)
.L47:
	cmpl	$0, -36(%ebp)
	jns	.L48
	.loc 1 233 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 234 0
	jmp	.L71
.L40:
	.loc 1 237 0
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, oplocs@GOTOFF(%ebx,%esi,4)
	.loc 1 238 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movl	op_count@GOTOFF(%ebx), %edi
	movl	%edi, -60(%ebp)
	movl	%eax, -56(%ebp)
	movl	-60(%ebp), %eax
	cmpl	%eax, -56(%ebp)
	jge	.L53
	movl	-60(%ebp), %edx
	movl	%edx, -56(%ebp)
.L53:
	movl	-56(%ebp), %edi
	movl	%edi, op_count@GOTOFF(%ebx)
	.loc 1 240 0
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 241 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 242 0
	movl	-24(%ebp), %eax
	addl	-20(%ebp), %eax
	addl	$1, %eax
	movb	$0, (%eax)
	.loc 1 244 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	jmp	.L54
.L55:
	.loc 1 246 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	addl	-20(%ebp), %edx
	movl	-36(%ebp), %eax
	addl	$48, %eax
	movb	%al, (%edx)
	.loc 1 247 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_rtx
	.loc 1 244 0
	subl	$1, -36(%ebp)
.L54:
	cmpl	$0, -36(%ebp)
	jns	.L55
	.loc 1 249 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 250 0
	jmp	.L71
.L41:
	.loc 1 253 0
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, oplocs@GOTOFF(%ebx,%esi,4)
	.loc 1 254 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movl	op_count@GOTOFF(%ebx), %edx
	movl	%edx, -52(%ebp)
	movl	%eax, -48(%ebp)
	movl	-52(%ebp), %edi
	cmpl	%edi, -48(%ebp)
	jge	.L57
	movl	-52(%ebp), %eax
	movl	%eax, -48(%ebp)
.L57:
	movl	-48(%ebp), %edx
	movl	%edx, op_count@GOTOFF(%ebx)
	.loc 1 256 0
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 257 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 258 0
	movl	-24(%ebp), %eax
	addl	-20(%ebp), %eax
	addl	$1, %eax
	movb	$0, (%eax)
	.loc 1 260 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	jmp	.L58
.L59:
	.loc 1 262 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	addl	-20(%ebp), %edx
	movl	-36(%ebp), %eax
	addl	$97, %eax
	movb	%al, (%edx)
	.loc 1 263 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_rtx
	.loc 1 260 0
	subl	$1, -36(%ebp)
.L58:
	cmpl	$0, -36(%ebp)
	jns	.L59
	.loc 1 265 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 266 0
	jmp	.L71
.L43:
	.loc 1 269 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_rtx
	.loc 1 270 0
	jmp	.L71
.L37:
	.loc 1 276 0
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 277 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 278 0
	movl	-24(%ebp), %eax
	addl	-20(%ebp), %eax
	addl	$1, %eax
	movb	$0, (%eax)
	.loc 1 280 0
	movl	-40(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 281 0
	movl	-40(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 282 0
	movl	$0, -36(%ebp)
	jmp	.L61
.L62:
	.loc 1 284 0
	movl	-36(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	je	.L63
	movl	-36(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$117, %al
	jne	.L65
.L63:
	.loc 1 286 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	addl	-20(%ebp), %edx
	movl	-36(%ebp), %eax
	addl	$48, %eax
	movb	%al, (%edx)
	.loc 1 287 0
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_rtx
	.loc 1 284 0
	jmp	.L66
.L65:
	.loc 1 289 0
	movl	-36(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L66
.LBB3:
	.loc 1 292 0
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L68
.L69:
	.loc 1 294 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	addl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	$97, %eax
	movb	%al, (%edx)
	.loc 1 295 0
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_rtx
	.loc 1 292 0
	subl	$1, -16(%ebp)
.L68:
	cmpl	$0, -16(%ebp)
	jns	.L69
.L66:
.LBE3:
	.loc 1 282 0
	addl	$1, -36(%ebp)
.L61:
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jl	.L62
	.loc 1 299 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L71:
	.loc 1 300 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	walk_rtx, .-walk_rtx
	.section	.rodata
	.type	__FUNCTION__.6951, @object
	.size	__FUNCTION__.6951, 11
__FUNCTION__.6951:
	.string	"print_path"
.LC1:
	.string	"PATTERN (insn)"
.LC2:
	.string	"XVECEXP ("
.LC3:
	.string	"XEXP ("
	.align 4
.LC4:
	.string	"../../../kgccfe/gnu/genextract.c"
.LC5:
	.string	"pat"
.LC6:
	.string	", 0, %d)"
.LC7:
	.string	", %d)"
	.text
	.type	print_path, @function
print_path:
.LFB17:
	.loc 1 309 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%edi
.LCFI12:
	pushl	%ebx
.LCFI13:
	subl	$32, %esp
.LCFI14:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 310 0
	movl	8(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -28(%ebp)
	movl	$0, %eax
	cld
	movl	-28(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	.loc 1 313 0
	cmpl	$0, -16(%ebp)
	jne	.L73
	.loc 1 317 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 318 0
	jmp	.L91
.L73:
	.loc 1 324 0
	movl	-16(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L76
.L77:
	.loc 1 326 0
	movl	-12(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L78
	.loc 1 327 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L80
.L78:
	.loc 1 328 0
	movl	-12(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L81
	.loc 1 329 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L80
.L81:
	.loc 1 331 0
	leal	__FUNCTION__.6951@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$331, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L80:
	.loc 1 324 0
	subl	$1, -12(%ebp)
.L76:
	cmpl	$0, -12(%ebp)
	jns	.L77
	.loc 1 334 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 336 0
	movl	$0, -12(%ebp)
	jmp	.L84
.L85:
	.loc 1 338 0
	movl	-12(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L86
	.loc 1 339 0
	movl	-12(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$97, %eax
	movl	%eax, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L88
.L86:
	.loc 1 340 0
	movl	-12(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L89
	.loc 1 341 0
	movl	-12(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$48, %eax
	movl	%eax, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L88
.L89:
	.loc 1 343 0
	leal	__FUNCTION__.6951@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$343, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L88:
	.loc 1 336 0
	addl	$1, -12(%ebp)
.L84:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L85
.L91:
	.loc 1 345 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE17:
	.size	print_path, .-print_path
	.section	.rodata
.LC8:
	.string	"genextract"
.LC9:
	.string	"no input file name"
	.align 4
.LC10:
	.string	"/* Generated automatically by the program `genextract'\nfrom the machine description file `md'.  */\n"
.LC11:
	.string	"#include \"config.h\""
.LC12:
	.string	"#include \"system.h\""
.LC13:
	.string	"#include \"rtl.h\""
.LC14:
	.string	"#include \"insn-config.h\""
.LC15:
	.string	"#include \"recog.h\""
.LC16:
	.string	"#include \"toplev.h\"\n"
	.align 4
.LC17:
	.string	"static rtx junk ATTRIBUTE_UNUSED;"
.LC18:
	.string	"void\ninsn_extract (insn)"
.LC19:
	.string	"     rtx insn;"
.LC20:
	.string	"{"
	.align 4
.LC21:
	.string	"  rtx *ro = recog_data.operand;"
	.align 4
.LC22:
	.string	"  rtx **ro_loc = recog_data.operand_loc;"
.LC23:
	.string	"  rtx pat = PATTERN (insn);"
.LC24:
	.string	"  int i ATTRIBUTE_UNUSED;\n"
	.align 4
.LC25:
	.string	"  memset (ro, 0, sizeof (*ro) * MAX_RECOG_OPERANDS);"
	.align 4
.LC26:
	.string	"  memset (ro_loc, 0, sizeof (*ro_loc) * MAX_RECOG_OPERANDS);"
.LC27:
	.string	"  switch (INSN_CODE (insn))"
.LC28:
	.string	"    {"
.LC29:
	.string	"    case -1:"
	.align 4
.LC30:
	.string	"      fatal_insn_not_found (insn);\n"
.LC31:
	.string	"    case %d:\n"
	.align 4
.LC32:
	.string	"      for (i = XVECLEN (pat, 0) - 1; i >= 0; i--)"
	.align 4
.LC33:
	.string	"          ro[i] = *(ro_loc[i] = &XVECEXP (pat, 0, i));"
.LC34:
	.string	"      break;\n"
.LC35:
	.string	"    case %d:  /* %s */\n"
.LC36:
	.string	"      ro[%d] = const0_rtx;\n"
.LC37:
	.string	"      ro_loc[%d] = &junk;\n"
	.align 4
.LC38:
	.string	"      ro[%d] = *(ro_loc[%d] = &"
.LC39:
	.string	");"
	.align 4
.LC40:
	.string	"      recog_data.dup_loc[%d] = &"
.LC41:
	.string	";"
	.align 4
.LC42:
	.string	"      recog_data.dup_num[%d] = %d;\n"
.LC43:
	.string	"    default:\n      abort ();"
.LC44:
	.string	"    }\n}"
	.text
.globl main
	.type	main, @function
main:
.LFB18:
	.loc 1 353 0
	leal	4(%esp), %ecx
.LCFI15:
	andl	$-16, %esp
	pushl	-4(%ecx)
.LCFI16:
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%ebx
.LCFI19:
	pushl	%ecx
.LCFI20:
	subl	$64, %esp
.LCFI21:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%ecx, -48(%ebp)
	.loc 1 360 0
	movl	progname@GOT(%ebx), %edx
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 362 0
	movl	-48(%ebp), %eax
	cmpl	$1, (%eax)
	jg	.L93
	.loc 1 363 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fatal@PLT
.L93:
	.loc 1 365 0
	movl	-48(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%esp)
	call	init_md_reader_args@PLT
	testl	%eax, %eax
	je	.L95
	.loc 1 366 0
	movl	$1, -44(%ebp)
	jmp	.L97
.L95:
	.loc 1 371 0
	movl	$0, insn_code_number@GOTOFF(%ebx)
	.loc 1 373 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 376 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 377 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 378 0
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 379 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 380 0
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 381 0
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 385 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 387 0
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 388 0
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 389 0
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 390 0
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 391 0
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 392 0
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 393 0
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 394 0
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 395 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 396 0
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 397 0
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 398 0
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 399 0
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	jmp	.L129
.L98:
.L129:
.LBB4:
	.loc 1 407 0
	leal	insn_code_number@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	read_md_rtx@PLT
	movl	%eax, -32(%ebp)
	.loc 1 408 0
	cmpl	$0, -32(%ebp)
	je	.L99
	.loc 1 411 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$13, %ax
	jne	.L101
	.loc 1 413 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	insn_code_number@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	record_insn_name
	.loc 1 414 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_insn
	jmp	.L98
.L101:
	.loc 1 417 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$14, %ax
	jne	.L98
.LBB5:
	.loc 1 420 0
	movl	$8, (%esp)
	call	xmalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 422 0
	movl	insn_code_number@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 423 0
	movl	peepholes@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 424 0
	movl	-12(%ebp), %eax
	movl	%eax, peepholes@GOTOFF(%ebx)
	.loc 1 426 0
	jmp	.L98
.L99:
.LBE5:
.LBE4:
	.loc 1 430 0
	movl	peepholes@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L105
	.loc 1 432 0
	movl	peepholes@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L107
.L108:
	.loc 1 433 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 432 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L107:
	cmpl	$0, -20(%ebp)
	jne	.L108
	.loc 1 440 0
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 441 0
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 442 0
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L105:
	.loc 1 446 0
	movl	extractions@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L110
.L111:
	.loc 1 448 0
	movl	-24(%ebp), %eax
	movl	160(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L112
.L113:
	.loc 1 450 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 451 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	get_insn_name@PLT
	movl	%eax, -16(%ebp)
	.loc 1 452 0
	cmpl	$0, -16(%ebp)
	je	.L114
	.loc 1 453 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L116
.L114:
	.loc 1 455 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L116:
	.loc 1 448 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L112:
	cmpl	$0, -20(%ebp)
	jne	.L113
	.loc 1 458 0
	movl	$0, -28(%ebp)
	jmp	.L118
.L119:
	.loc 1 460 0
	movl	-28(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	4(%edx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L120
	.loc 1 462 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 463 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L122
.L120:
	.loc 1 467 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 468 0
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	print_path
	.loc 1 469 0
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L122:
	.loc 1 458 0
	addl	$1, -28(%ebp)
.L118:
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jg	.L119
	.loc 1 473 0
	movl	$0, -28(%ebp)
	jmp	.L124
.L125:
	.loc 1 475 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 476 0
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	128(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	print_path
	.loc 1 477 0
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 478 0
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	144(%eax,%edx,4), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 473 0
	addl	$1, -28(%ebp)
.L124:
	movl	-24(%ebp), %eax
	movl	124(%eax), %eax
	cmpl	-28(%ebp), %eax
	jg	.L125
	.loc 1 481 0
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 446 0
	movl	-24(%ebp), %eax
	movl	164(%eax), %eax
	movl	%eax, -24(%ebp)
.L110:
	cmpl	$0, -24(%ebp)
	jne	.L111
	.loc 1 487 0
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 489 0
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 491 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fflush@PLT
	.loc 1 492 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	ferror@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
.L97:
	movl	-44(%ebp), %eax
	.loc 1 493 0
	addl	$64, %esp
	popl	%ecx
	popl	%ebx
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
.LFE18:
	.size	main, .-main
.globl get_insn_name
	.type	get_insn_name, @function
get_insn_name:
.LFB19:
	.loc 1 499 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	subl	$4, %esp
.LCFI24:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 500 0
	movl	insn_name_ptr_size@GOTOFF(%ecx), %eax
	cmpl	%eax, 8(%ebp)
	jge	.L131
	.loc 1 501 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_name_ptr@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L133
.L131:
	.loc 1 503 0
	movl	$0, -4(%ebp)
.L133:
	movl	-4(%ebp), %eax
	.loc 1 504 0
	leave
	ret
.LFE19:
	.size	get_insn_name, .-get_insn_name
	.local	last_real_code.7112
	.comm	last_real_code.7112,4,4
	.section	.rodata
.LC45:
	.string	"insn"
	.section	.data.rel.local,"aw",@progbits
	.align 4
	.type	last_real_name.7111, @object
	.size	last_real_name.7111, 4
last_real_name.7111:
	.long	.LC45
	.section	.rodata
.LC46:
	.string	"%s+%d"
	.text
	.type	record_insn_name, @function
record_insn_name:
.LFB20:
	.loc 1 510 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	pushl	%edi
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$48, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 515 0
	movl	insn_name_ptr_size@GOTOFF(%ebx), %eax
	cmpl	8(%ebp), %eax
	jg	.L136
.LBB6:
	.loc 1 518 0
	movl	insn_name_ptr_size@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L138
	movl	insn_name_ptr_size@GOTOFF(%ebx), %eax
	addl	%eax, %eax
	movl	%eax, -28(%ebp)
	jmp	.L140
.L138:
	movl	$512, -28(%ebp)
.L140:
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 519 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	insn_name_ptr@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	xrealloc@PLT
	movl	%eax, insn_name_ptr@GOTOFF(%ebx)
	.loc 1 521 0
	movl	insn_name_ptr_size@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	subl	%edx, %eax
	leal	0(,%eax,4), %ecx
	movl	insn_name_ptr_size@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_name_ptr@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edi
	cld
	movl	$0, %eax
	rep
	stosb
	.loc 1 523 0
	movl	-12(%ebp), %eax
	movl	%eax, insn_name_ptr_size@GOTOFF(%ebx)
.L136:
.LBE6:
	.loc 1 526 0
	cmpl	$0, 12(%ebp)
	je	.L141
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L143
.L141:
	.loc 1 528 0
	movl	last_real_name.7111@GOTOFF(%ebx), %eax
	movl	$-1, %ecx
	movl	%eax, -32(%ebp)
	movl	$0, %eax
	cld
	movl	-32(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$10, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 529 0
	movl	last_real_code.7112@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	subl	%edx, %eax
	movl	last_real_name.7111@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 526 0
	jmp	.L144
.L143:
	.loc 1 533 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, last_real_name.7111@GOTOFF(%ebx)
	.loc 1 534 0
	movl	8(%ebp), %eax
	movl	%eax, last_real_code.7112@GOTOFF(%ebx)
.L144:
	.loc 1 537 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_name_ptr@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 538 0
	addl	$48, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE20:
	.size	record_insn_name, .-record_insn_name
	.local	extractions
	.comm	extractions,4,4
	.local	insn_code_number
	.comm	insn_code_number,4,4
	.local	op_count
	.comm	op_count,4,4
	.local	oplocs
	.comm	oplocs,120,32
	.local	dup_count
	.comm	dup_count,4,4
	.local	duplocs
	.comm	duplocs,16,4
	.local	dupnums
	.comm	dupnums,16,4
	.local	peepholes
	.comm	peepholes,4,4
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
	.long	.LCFI9-.LCFI5
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI14-.LCFI11
	.byte	0x83
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
	.long	.LCFI15-.LFB18
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.byte	0x9
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI17-.LCFI16
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
	.byte	0x84
	.uleb128 0x4
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
	.long	.LCFI22-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
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
	.long	.LCFI25-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI29-.LCFI26
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE10:
	.file 2 "../../../kgccfe/gnu/MIPS/hconfig.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/machmode.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/types.h"
	.file 8 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 9 "../../../include/gnu/safe-ctype.h"
	.file 10 "../../../kgccfe/gnu/errors.h"
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
	.long	.LCFI15-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI15-.Ltext0
	.long	.LCFI16-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LCFI16-.Ltext0
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
	.long	.LCFI25-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI25-.Ltext0
	.long	.LCFI26-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI26-.Ltext0
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x189b
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/genextract.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xaa
	.uleb128 0x3
	.byte	0x4
	.long	0xb0
	.uleb128 0x4
	.long	0x1a0
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x8a
	.long	0x84a
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
	.long	0x601
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x12a6
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
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x12b6
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
	.uleb128 0x7
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x20c
	.uleb128 0x8
	.long	0x211
	.uleb128 0x9
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xa
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"size_t"
	.byte	0x8
	.byte	0xd6
	.long	0x220
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
	.byte	0x7
	.byte	0x3b
	.long	0x294
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x7
	.byte	0x90
	.long	0x2de
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x7
	.byte	0x91
	.long	0x2bf
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x211
	.uleb128 0xc
	.long	0x57e
	.long	.LASF1
	.byte	0x94
	.byte	0x5
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x6
	.value	0x10c
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x6
	.value	0x111
	.long	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x6
	.value	0x112
	.long	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x6
	.value	0x113
	.long	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x6
	.value	0x114
	.long	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x6
	.value	0x115
	.long	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x6
	.value	0x116
	.long	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x6
	.value	0x117
	.long	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x6
	.value	0x118
	.long	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x6
	.value	0x11a
	.long	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x6
	.value	0x11b
	.long	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x6
	.value	0x11c
	.long	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x6
	.value	0x11e
	.long	0x5cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x6
	.value	0x120
	.long	0x5d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x6
	.value	0x122
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x6
	.value	0x126
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x6
	.value	0x128
	.long	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x6
	.value	0x12c
	.long	0x24d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x6
	.value	0x12d
	.long	0x278
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x6
	.value	0x12e
	.long	0x5db
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x6
	.value	0x132
	.long	0x5eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x6
	.value	0x13b
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x6
	.value	0x144
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x6
	.value	0x145
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x6
	.value	0x146
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x6
	.value	0x147
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x6
	.value	0x148
	.long	0x22e
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x6
	.value	0x14a
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x6
	.value	0x14c
	.long	0x5f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xe
	.string	"_IO_lock_t"
	.byte	0x6
	.byte	0xb0
	.uleb128 0x4
	.long	0x5cf
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x6
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x6
	.byte	0xb7
	.long	0x5cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x6
	.byte	0xb8
	.long	0x5d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x6
	.byte	0xbc
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x58c
	.uleb128 0x3
	.byte	0x4
	.long	0x303
	.uleb128 0xf
	.long	0x5eb
	.long	0x211
	.uleb128 0x10
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x57e
	.uleb128 0xf
	.long	0x601
	.long	0x211
	.uleb128 0x10
	.long	0x227
	.byte	0x27
	.byte	0x0
	.uleb128 0x11
	.long	0x84a
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.uleb128 0x12
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x12
	.string	"BImode"
	.sleb128 1
	.uleb128 0x12
	.string	"QImode"
	.sleb128 2
	.uleb128 0x12
	.string	"HImode"
	.sleb128 3
	.uleb128 0x12
	.string	"SImode"
	.sleb128 4
	.uleb128 0x12
	.string	"DImode"
	.sleb128 5
	.uleb128 0x12
	.string	"TImode"
	.sleb128 6
	.uleb128 0x12
	.string	"OImode"
	.sleb128 7
	.uleb128 0x12
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x12
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x12
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x12
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x12
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x12
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x12
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x12
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x12
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x12
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x12
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x12
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x12
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x12
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x12
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x12
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x12
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x12
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x12
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x12
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x12
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x12
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x12
	.string	"COImode"
	.sleb128 30
	.uleb128 0x12
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x12
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x12
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x12
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x12
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x12
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x12
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x12
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x12
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x12
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x12
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x12
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x12
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x12
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x12
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x12
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x12
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x12
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x12
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x12
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x12
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x12
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x12
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x12
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x11
	.long	0x1019
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x2f
	.uleb128 0x12
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x12
	.string	"NIL"
	.sleb128 1
	.uleb128 0x12
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x12
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x12
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x12
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x12
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x12
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x12
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x12
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x12
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x12
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x12
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x12
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x12
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x12
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x12
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x12
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x12
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x12
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x12
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x12
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x12
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x12
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x12
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x12
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x12
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x12
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x12
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x12
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x12
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x12
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x12
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x12
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x12
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x12
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x12
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x12
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x12
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x12
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x12
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x12
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x12
	.string	"INSN"
	.sleb128 42
	.uleb128 0x12
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x12
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x12
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x12
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x12
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x12
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x12
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x12
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x12
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x12
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x12
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x12
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x12
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x12
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x12
	.string	"SET"
	.sleb128 57
	.uleb128 0x12
	.string	"USE"
	.sleb128 58
	.uleb128 0x12
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x12
	.string	"CALL"
	.sleb128 60
	.uleb128 0x12
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x12
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x12
	.string	"RESX"
	.sleb128 63
	.uleb128 0x12
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x12
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x12
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x12
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x12
	.string	"CONST"
	.sleb128 68
	.uleb128 0x12
	.string	"PC"
	.sleb128 69
	.uleb128 0x12
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x12
	.string	"REG"
	.sleb128 71
	.uleb128 0x12
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x12
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x12
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x12
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x12
	.string	"MEM"
	.sleb128 76
	.uleb128 0x12
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x12
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x12
	.string	"CC0"
	.sleb128 79
	.uleb128 0x12
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x12
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x12
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x12
	.string	"COND"
	.sleb128 83
	.uleb128 0x12
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x12
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x12
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x12
	.string	"NEG"
	.sleb128 87
	.uleb128 0x12
	.string	"MULT"
	.sleb128 88
	.uleb128 0x12
	.string	"DIV"
	.sleb128 89
	.uleb128 0x12
	.string	"MOD"
	.sleb128 90
	.uleb128 0x12
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x12
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x12
	.string	"AND"
	.sleb128 93
	.uleb128 0x12
	.string	"IOR"
	.sleb128 94
	.uleb128 0x12
	.string	"XOR"
	.sleb128 95
	.uleb128 0x12
	.string	"NOT"
	.sleb128 96
	.uleb128 0x12
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x12
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x12
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x12
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x12
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x12
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x12
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x12
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x12
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x12
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x12
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x12
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x12
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x12
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x12
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x12
	.string	"NE"
	.sleb128 112
	.uleb128 0x12
	.string	"EQ"
	.sleb128 113
	.uleb128 0x12
	.string	"GE"
	.sleb128 114
	.uleb128 0x12
	.string	"GT"
	.sleb128 115
	.uleb128 0x12
	.string	"LE"
	.sleb128 116
	.uleb128 0x12
	.string	"LT"
	.sleb128 117
	.uleb128 0x12
	.string	"GEU"
	.sleb128 118
	.uleb128 0x12
	.string	"GTU"
	.sleb128 119
	.uleb128 0x12
	.string	"LEU"
	.sleb128 120
	.uleb128 0x12
	.string	"LTU"
	.sleb128 121
	.uleb128 0x12
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x12
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x12
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x12
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x12
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x12
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x12
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x12
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x12
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x12
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x12
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x12
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x12
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x12
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x12
	.string	"FIX"
	.sleb128 136
	.uleb128 0x12
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x12
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x12
	.string	"ABS"
	.sleb128 139
	.uleb128 0x12
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x12
	.string	"FFS"
	.sleb128 141
	.uleb128 0x12
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x12
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x12
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x12
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x12
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x12
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x12
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x12
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x12
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x12
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x12
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x12
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x12
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x12
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x12
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x12
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x12
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x12
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x12
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x12
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x12
	.string	"PHI"
	.sleb128 162
	.uleb128 0x12
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x13
	.long	0x10f3
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x1019
	.uleb128 0xc
	.long	0x116a
	.long	.LASF2
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x294
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x6b
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x6c
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x6d
	.long	0x220
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x14
	.long	.LASF2
	.byte	0x3
	.byte	0x6e
	.long	0x110e
	.uleb128 0x15
	.long	0x1247
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x16
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x294
	.uleb128 0x16
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x219
	.uleb128 0x16
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x220
	.uleb128 0x16
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x206
	.uleb128 0x16
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x9f
	.uleb128 0x16
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x1a0
	.uleb128 0x16
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x601
	.uleb128 0x16
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0x10f3
	.uleb128 0x16
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x125b
	.uleb128 0x16
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x1273
	.uleb128 0x16
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e8
	.uleb128 0x16
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x128b
	.uleb128 0x16
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x1291
	.byte	0x0
	.uleb128 0x17
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1247
	.uleb128 0x17
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1261
	.uleb128 0x17
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1279
	.uleb128 0x3
	.byte	0x4
	.long	0x116a
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0x1175
	.uleb128 0xf
	.long	0x12b6
	.long	0x1297
	.uleb128 0x10
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x12c6
	.long	0x9f
	.uleb128 0x10
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x134e
	.string	"extraction"
	.byte	0xa8
	.byte	0x1
	.byte	0x2a
	.uleb128 0x18
	.long	.LASF3
	.byte	0x1
	.byte	0x2b
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"oplocs"
	.byte	0x1
	.byte	0x2c
	.long	0x134e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.long	.LASF4
	.byte	0x1
	.byte	0x2d
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"duplocs"
	.byte	0x1
	.byte	0x2e
	.long	0x135e
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"dupnums"
	.byte	0x1
	.byte	0x2f
	.long	0x136e
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x6
	.string	"insns"
	.byte	0x1
	.byte	0x30
	.long	0x13b3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x6
	.string	"next"
	.byte	0x1
	.byte	0x31
	.long	0x13b9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.byte	0x0
	.uleb128 0xf
	.long	0x135e
	.long	0x2fd
	.uleb128 0x10
	.long	0x227
	.byte	0x1d
	.byte	0x0
	.uleb128 0xf
	.long	0x136e
	.long	0x2fd
	.uleb128 0x10
	.long	0x227
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.long	0x137e
	.long	0x219
	.uleb128 0x10
	.long	0x227
	.byte	0x3
	.byte	0x0
	.uleb128 0x4
	.long	0x13b3
	.string	"code_ptr"
	.byte	0x8
	.byte	0x1
	.byte	0x30
	.uleb128 0x6
	.string	"insn_code"
	.byte	0x1
	.byte	0x38
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"next"
	.byte	0x1
	.byte	0x39
	.long	0x13b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x137e
	.uleb128 0x3
	.byte	0x4
	.long	0x12c6
	.uleb128 0x19
	.long	0x142c
	.string	"gen_insn"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x1a
	.string	"insn"
	.byte	0x1
	.byte	0x67
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x69
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.byte	0x6a
	.long	0x13b9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"link"
	.byte	0x1
	.byte	0x6b
	.long	0x13b3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x1b
	.string	"path"
	.byte	0x1
	.byte	0x7b
	.long	0x142c
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x143c
	.long	0x211
	.uleb128 0x10
	.long	0x227
	.byte	0x1
	.byte	0x0
	.uleb128 0x19
	.long	0x14e5
	.string	"walk_rtx"
	.byte	0x1
	.byte	0xb9
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.byte	0xb7
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"path"
	.byte	0x1
	.byte	0xb8
	.long	0x206
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.string	"code"
	.byte	0x1
	.byte	0xba
	.long	0x84a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0xbb
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.string	"len"
	.byte	0x1
	.byte	0xbc
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"fmt"
	.byte	0x1
	.byte	0xbd
	.long	0x206
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.string	"depth"
	.byte	0x1
	.byte	0xbe
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.string	"newpath"
	.byte	0x1
	.byte	0xbf
	.long	0x2fd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.value	0x123
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x154b
	.string	"print_path"
	.byte	0x1
	.value	0x135
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x1f
	.string	"path"
	.byte	0x1
	.value	0x134
	.long	0x206
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.value	0x136
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x137
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.string	"__FUNCTION__"
	.long	0x1711
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.6951
	.byte	0x0
	.uleb128 0x21
	.long	0x1610
	.byte	0x1
	.string	"main"
	.byte	0x1
	.value	0x161
	.byte	0x1
	.long	0x219
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x1f
	.string	"argc"
	.byte	0x1
	.value	0x15f
	.long	0x219
	.byte	0x3
	.byte	0x75
	.sleb128 -48
	.byte	0x6
	.uleb128 0x1f
	.string	"argv"
	.byte	0x1
	.value	0x160
	.long	0x1610
	.byte	0x5
	.byte	0x75
	.sleb128 -48
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"desc"
	.byte	0x1
	.value	0x162
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x163
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.value	0x164
	.long	0x13b9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.string	"link"
	.byte	0x1
	.value	0x165
	.long	0x13b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.string	"name"
	.byte	0x1
	.value	0x166
	.long	0x206
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x1d
	.string	"line_no"
	.byte	0x1
	.value	0x195
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x1d
	.string	"link"
	.byte	0x1
	.value	0x1a3
	.long	0x13b3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2fd
	.uleb128 0x21
	.long	0x164f
	.byte	0x1
	.string	"get_insn_name"
	.byte	0x1
	.value	0x1f3
	.byte	0x1
	.long	0x206
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x1f
	.string	"code"
	.byte	0x1
	.value	0x1f2
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1e
	.long	0x1701
	.string	"record_insn_name"
	.byte	0x1
	.value	0x1fe
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x1f
	.string	"code"
	.byte	0x1
	.value	0x1fc
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"name"
	.byte	0x1
	.value	0x1fd
	.long	0x206
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"new"
	.byte	0x1
	.value	0x201
	.long	0x2fd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	0x16c6
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x1d
	.string	"new_size"
	.byte	0x1
	.value	0x205
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1d
	.string	"last_real_name"
	.byte	0x1
	.value	0x1ff
	.long	0x206
	.byte	0x5
	.byte	0x3
	.long	last_real_name.7111
	.uleb128 0x1d
	.string	"last_real_code"
	.byte	0x1
	.value	0x200
	.long	0x219
	.byte	0x5
	.byte	0x3
	.long	last_real_code.7112
	.byte	0x0
	.uleb128 0xf
	.long	0x1711
	.long	0x211
	.uleb128 0x10
	.long	0x227
	.byte	0xa
	.byte	0x0
	.uleb128 0x8
	.long	0x1701
	.uleb128 0x1b
	.string	"extractions"
	.byte	0x1
	.byte	0x3c
	.long	0x13b9
	.byte	0x5
	.byte	0x3
	.long	extractions
	.uleb128 0x1b
	.string	"insn_name_ptr"
	.byte	0x1
	.byte	0x3f
	.long	0x1610
	.byte	0x5
	.byte	0x3
	.long	insn_name_ptr
	.uleb128 0x1b
	.string	"insn_name_ptr_size"
	.byte	0x1
	.byte	0x40
	.long	0x219
	.byte	0x5
	.byte	0x3
	.long	insn_name_ptr_size
	.uleb128 0x1b
	.string	"insn_code_number"
	.byte	0x1
	.byte	0x44
	.long	0x219
	.byte	0x5
	.byte	0x3
	.long	insn_code_number
	.uleb128 0x23
	.long	.LASF3
	.byte	0x1
	.byte	0x48
	.long	0x219
	.byte	0x5
	.byte	0x3
	.long	op_count
	.uleb128 0x1b
	.string	"oplocs"
	.byte	0x1
	.byte	0x4d
	.long	0x134e
	.byte	0x5
	.byte	0x3
	.long	oplocs
	.uleb128 0x23
	.long	.LASF4
	.byte	0x1
	.byte	0x52
	.long	0x219
	.byte	0x5
	.byte	0x3
	.long	dup_count
	.uleb128 0x1b
	.string	"duplocs"
	.byte	0x1
	.byte	0x56
	.long	0x135e
	.byte	0x5
	.byte	0x3
	.long	duplocs
	.uleb128 0x1b
	.string	"dupnums"
	.byte	0x1
	.byte	0x5a
	.long	0x136e
	.byte	0x5
	.byte	0x3
	.long	dupnums
	.uleb128 0x1b
	.string	"peepholes"
	.byte	0x1
	.byte	0x5e
	.long	0x13b3
	.byte	0x5
	.byte	0x3
	.long	peepholes
	.uleb128 0x24
	.string	"stdout"
	.byte	0x5
	.byte	0x8f
	.long	0x5d5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x181f
	.long	0x24d
	.uleb128 0x10
	.long	0x227
	.byte	0xff
	.byte	0x0
	.uleb128 0x24
	.string	"_sch_istable"
	.byte	0x9
	.byte	0x48
	.long	0x1835
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x180f
	.uleb128 0xf
	.long	0x184a
	.long	0x23c
	.uleb128 0x10
	.long	0x227
	.byte	0xa2
	.byte	0x0
	.uleb128 0x24
	.string	"rtx_length"
	.byte	0x3
	.byte	0x3c
	.long	0x185e
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x183a
	.uleb128 0xf
	.long	0x1873
	.long	0x206
	.uleb128 0x10
	.long	0x227
	.byte	0xa2
	.byte	0x0
	.uleb128 0x24
	.string	"rtx_format"
	.byte	0x3
	.byte	0x42
	.long	0x1887
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x1863
	.uleb128 0x24
	.string	"progname"
	.byte	0xa
	.byte	0x29
	.long	0x206
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.long	0x29
	.value	0x2
	.long	.Ldebug_info0
	.long	0x189f
	.long	0x154b
	.string	"main"
	.long	0x1616
	.string	"get_insn_name"
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
.LASF3:
	.string	"op_count"
.LASF1:
	.string	"_IO_FILE"
.LASF2:
	.string	"mem_attrs"
.LASF0:
	.string	"unsigned int"
.LASF4:
	.string	"dup_count"
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
