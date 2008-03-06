	.file	"mkdeps.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	munge, @function
munge:
.LFB15:
	.file 1 "../../../kgccfe/gnu/mkdeps.c"
	.loc 1 52 0
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
	.loc 1 57 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	$0, -24(%ebp)
	jmp	.L2
.L3:
	.loc 1 59 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	cmpl	$32, -44(%ebp)
	je	.L5
	cmpl	$36, -44(%ebp)
	je	.L6
	cmpl	$9, -44(%ebp)
	je	.L5
	jmp	.L4
.L5:
	.loc 1 69 0
	movl	-20(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L7
.L8:
	.loc 1 70 0
	addl	$1, -24(%ebp)
	.loc 1 69 0
	subl	$1, -16(%ebp)
.L7:
	movl	8(%ebp), %eax
	cmpl	-16(%ebp), %eax
	ja	.L9
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$92, %al
	je	.L8
.L9:
	.loc 1 71 0
	addl	$1, -24(%ebp)
	.loc 1 72 0
	jmp	.L4
.L6:
	.loc 1 76 0
	addl	$1, -24(%ebp)
.L4:
	.loc 1 57 0
	addl	$1, -20(%ebp)
	addl	$1, -24(%ebp)
.L2:
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L3
	.loc 1 82 0
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 84 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L12
.L13:
	.loc 1 86 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	cmpl	$32, -40(%ebp)
	je	.L15
	cmpl	$36, -40(%ebp)
	je	.L16
	cmpl	$9, -40(%ebp)
	je	.L15
	jmp	.L14
.L15:
	.loc 1 90 0
	movl	-20(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L17
.L18:
	.loc 1 91 0
	movl	-12(%ebp), %eax
	movb	$92, (%eax)
	addl	$1, -12(%ebp)
	.loc 1 90 0
	subl	$1, -16(%ebp)
.L17:
	movl	8(%ebp), %eax
	cmpl	-16(%ebp), %eax
	ja	.L19
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$92, %al
	je	.L18
.L19:
	.loc 1 92 0
	movl	-12(%ebp), %eax
	movb	$92, (%eax)
	addl	$1, -12(%ebp)
	.loc 1 93 0
	jmp	.L14
.L16:
	.loc 1 96 0
	movl	-12(%ebp), %eax
	movb	$36, (%eax)
	addl	$1, -12(%ebp)
.L14:
	.loc 1 102 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-12(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 84 0
	addl	$1, -20(%ebp)
	addl	$1, -12(%ebp)
.L12:
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L13
	.loc 1 105 0
	movl	-12(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 106 0
	movl	-8(%ebp), %eax
	.loc 1 107 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	munge, .-munge
.globl deps_init
	.type	deps_init, @function
deps_init:
.LFB16:
	.loc 1 113 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$20, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 114 0
	movl	$24, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 118 0
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 119 0
	movl	-8(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 121 0
	movl	-8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 122 0
	movl	-8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 123 0
	movl	-8(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 124 0
	movl	-8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 126 0
	movl	-8(%ebp), %eax
	.loc 1 127 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	deps_init, .-deps_init
.globl deps_free
	.type	deps_free, @function
deps_free:
.LFB17:
	.loc 1 132 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$20, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 135 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L26
	.loc 1 137 0
	movl	$0, -8(%ebp)
	jmp	.L28
.L29:
	.loc 1 138 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 137 0
	addl	$1, -8(%ebp)
.L28:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	ja	.L29
	.loc 1 139 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L26:
	.loc 1 142 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L31
	.loc 1 144 0
	movl	$0, -8(%ebp)
	jmp	.L33
.L34:
	.loc 1 145 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 144 0
	addl	$1, -8(%ebp)
.L33:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-8(%ebp), %eax
	ja	.L34
	.loc 1 146 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L31:
	.loc 1 149 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 150 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	deps_free, .-deps_free
.globl deps_add_target
	.type	deps_add_target, @function
deps_add_target:
.LFB18:
	.loc 1 159 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$20, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 160 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L38
	.loc 1 162 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	addl	%eax, %eax
	leal	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 163 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
.L38:
	.loc 1 167 0
	cmpl	$0, 16(%ebp)
	je	.L40
	.loc 1 168 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	munge
	movl	%eax, 12(%ebp)
	jmp	.L42
.L40:
	.loc 1 170 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, 12(%ebp)
.L42:
	.loc 1 172 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	leal	0(,%ecx,4), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	leal	1(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 173 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	deps_add_target, .-deps_add_target
	.section	.rodata
.LC0:
	.string	"-"
	.text
.globl deps_add_default_target
	.type	deps_add_default_target, @function
deps_add_default_target:
.LFB19:
	.loc 1 182 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%edi
.LCFI18:
	pushl	%ebx
.LCFI19:
	subl	$48, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 182 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 184 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L51
	.loc 1 187 0
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L47
	.loc 1 188 0
	movl	$1, 8(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	deps_add_target@PLT
	jmp	.L51
.L47:
.LBB2:
	.loc 1 194 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	lbasename@PLT
	movl	%eax, -24(%ebp)
	.loc 1 195 0
	movl	-24(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -40(%ebp)
	movl	$0, %eax
	cld
	movl	-40(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$3, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	12(%esp), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %edi
	movl	%edi, -20(%ebp)
	.loc 1 198 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 200 0
	movl	$46, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strrchr@PLT
	movl	%eax, -16(%ebp)
	.loc 1 201 0
	cmpl	$0, -16(%ebp)
	jne	.L49
	.loc 1 202 0
	movl	-20(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -44(%ebp)
	movl	$0, %eax
	cld
	movl	-44(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
.L49:
	.loc 1 203 0
	movl	-16(%ebp), %eax
	movw	$28462, (%eax)
	movb	$0, 2(%eax)
	.loc 1 205 0
	movl	$1, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	deps_add_target@PLT
.L51:
.LBE2:
	.loc 1 207 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L52
	call	__stack_chk_fail_local
.L52:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	deps_add_default_target, .-deps_add_default_target
.globl deps_add_dep
	.type	deps_add_dep, @function
deps_add_dep:
.LFB20:
	.loc 1 213 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%ebx
.LCFI23:
	subl	$20, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 214 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	munge
	movl	%eax, 12(%ebp)
	.loc 1 216 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jne	.L54
	.loc 1 218 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	addl	%eax, %eax
	leal	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 219 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
.L54:
	.loc 1 222 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %ecx
	leal	0(,%ecx,4), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	leal	1(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 223 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	deps_add_dep, .-deps_add_dep
	.section	.rodata
.LC1:
	.string	" \\\n "
	.text
.globl deps_write
	.type	deps_write, @function
deps_write:
.LFB21:
	.loc 1 230 0
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
	.loc 1 233 0
	movl	$0, -12(%ebp)
	.loc 1 234 0
	cmpl	$0, 16(%ebp)
	je	.L58
	cmpl	$33, 16(%ebp)
	ja	.L58
	.loc 1 235 0
	movl	$34, 16(%ebp)
.L58:
	.loc 1 237 0
	movl	$0, -16(%ebp)
	jmp	.L61
.L62:
	.loc 1 239 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
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
	movl	%eax, -20(%ebp)
	.loc 1 240 0
	movl	-20(%ebp), %eax
	addl	%eax, -12(%ebp)
	.loc 1 241 0
	cmpl	$0, 16(%ebp)
	je	.L63
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jbe	.L63
	.loc 1 243 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 244 0
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
.L63:
	.loc 1 246 0
	cmpl	$0, -16(%ebp)
	je	.L66
	.loc 1 248 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	call	putc_unlocked@PLT
	.loc 1 249 0
	addl	$1, -12(%ebp)
.L66:
	.loc 1 251 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fputs_unlocked@PLT
	.loc 1 237 0
	addl	$1, -16(%ebp)
.L61:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-16(%ebp), %eax
	ja	.L62
	.loc 1 254 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$58, (%esp)
	call	putc_unlocked@PLT
	.loc 1 255 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	call	putc_unlocked@PLT
	.loc 1 256 0
	addl	$2, -12(%ebp)
	.loc 1 258 0
	movl	$0, -16(%ebp)
	jmp	.L69
.L70:
	.loc 1 260 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
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
	movl	%eax, -20(%ebp)
	.loc 1 261 0
	movl	-20(%ebp), %eax
	addl	%eax, -12(%ebp)
	.loc 1 262 0
	cmpl	$0, 16(%ebp)
	je	.L71
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jbe	.L71
	.loc 1 264 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 265 0
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
.L71:
	.loc 1 267 0
	cmpl	$0, -16(%ebp)
	je	.L74
	.loc 1 269 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	call	putc_unlocked@PLT
	.loc 1 270 0
	addl	$1, -12(%ebp)
.L74:
	.loc 1 272 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fputs_unlocked@PLT
	.loc 1 258 0
	addl	$1, -16(%ebp)
.L69:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-16(%ebp), %eax
	ja	.L70
	.loc 1 274 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 275 0
	addl	$48, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	deps_write, .-deps_write
.globl deps_phony_targets
	.type	deps_phony_targets, @function
deps_phony_targets:
.LFB22:
	.loc 1 281 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	pushl	%ebx
.LCFI32:
	subl	$36, %esp
.LCFI33:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 284 0
	movl	$1, -8(%ebp)
	jmp	.L79
.L80:
	.loc 1 286 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 287 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fputs_unlocked@PLT
	.loc 1 288 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$58, (%esp)
	call	putc_unlocked@PLT
	.loc 1 289 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 284 0
	addl	$1, -8(%ebp)
.L79:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-8(%ebp), %eax
	ja	.L80
	.loc 1 291 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	deps_phony_targets, .-deps_phony_targets
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
	.byte	0x83
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
	.byte	0x4
	.long	.LCFI24-.LCFI22
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
	.long	.LCFI25-.LFB21
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
	.file 2 "../../../kgccfe/gnu/mkdeps.h"
	.file 3 "/usr/include/stdio.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/bits/types.h"
	.file 6 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
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
	.section	.debug_info
	.long	0x7e5
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/mkdeps.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.byte	0x4
	.long	0xa1
	.uleb128 0x3
	.long	0xa6
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x6
	.string	"size_t"
	.byte	0x6
	.byte	0xd6
	.long	0xb5
	.uleb128 0x4
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x4
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x4
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x4
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x4
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x6
	.string	"__quad_t"
	.byte	0x5
	.byte	0x3b
	.long	0x129
	.uleb128 0x6
	.string	"__off_t"
	.byte	0x5
	.byte	0x90
	.long	0x173
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x6
	.string	"__off64_t"
	.byte	0x5
	.byte	0x91
	.long	0x154
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.long	0xa6
	.uleb128 0x6
	.string	"FILE"
	.byte	0x3
	.byte	0x2e
	.long	0x1a4
	.uleb128 0x8
	.long	0x41f
	.long	.LASF1
	.byte	0x94
	.byte	0x3
	.byte	0x2e
	.uleb128 0x9
	.string	"_flags"
	.byte	0x4
	.value	0x10c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"_IO_read_ptr"
	.byte	0x4
	.value	0x111
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"_IO_read_end"
	.byte	0x4
	.value	0x112
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"_IO_read_base"
	.byte	0x4
	.value	0x113
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"_IO_write_base"
	.byte	0x4
	.value	0x114
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"_IO_write_ptr"
	.byte	0x4
	.value	0x115
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"_IO_write_end"
	.byte	0x4
	.value	0x116
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"_IO_buf_base"
	.byte	0x4
	.value	0x117
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"_IO_buf_end"
	.byte	0x4
	.value	0x118
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"_IO_save_base"
	.byte	0x4
	.value	0x11a
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"_IO_backup_base"
	.byte	0x4
	.value	0x11b
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"_IO_save_end"
	.byte	0x4
	.value	0x11c
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"_markers"
	.byte	0x4
	.value	0x11e
	.long	0x476
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"_chain"
	.byte	0x4
	.value	0x120
	.long	0x47c
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"_fileno"
	.byte	0x4
	.value	0x122
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"_flags2"
	.byte	0x4
	.value	0x126
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"_old_offset"
	.byte	0x4
	.value	0x128
	.long	0x164
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"_cur_column"
	.byte	0x4
	.value	0x12c
	.long	0xe2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"_vtable_offset"
	.byte	0x4
	.value	0x12d
	.long	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"_shortbuf"
	.byte	0x4
	.value	0x12e
	.long	0x482
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"_lock"
	.byte	0x4
	.value	0x132
	.long	0x492
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"_offset"
	.byte	0x4
	.value	0x13b
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"__pad1"
	.byte	0x4
	.value	0x144
	.long	0x190
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"__pad2"
	.byte	0x4
	.value	0x145
	.long	0x190
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"__pad3"
	.byte	0x4
	.value	0x146
	.long	0x190
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"__pad4"
	.byte	0x4
	.value	0x147
	.long	0x190
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"__pad5"
	.byte	0x4
	.value	0x148
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"_mode"
	.byte	0x4
	.value	0x14a
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"_unused2"
	.byte	0x4
	.value	0x14c
	.long	0x498
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x9b
	.uleb128 0xa
	.string	"_IO_lock_t"
	.byte	0x4
	.byte	0xb0
	.uleb128 0xb
	.long	0x476
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x4
	.byte	0xb6
	.uleb128 0xc
	.string	"_next"
	.byte	0x4
	.byte	0xb7
	.long	0x476
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"_sbuf"
	.byte	0x4
	.byte	0xb8
	.long	0x47c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"_pos"
	.byte	0x4
	.byte	0xbc
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x433
	.uleb128 0x2
	.byte	0x4
	.long	0x1a4
	.uleb128 0xd
	.long	0x492
	.long	0xa6
	.uleb128 0xe
	.long	0xbc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x425
	.uleb128 0xd
	.long	0x4a8
	.long	0xa6
	.uleb128 0xe
	.long	0xbc
	.byte	0x27
	.byte	0x0
	.uleb128 0xb
	.long	0x525
	.string	"deps"
	.byte	0x18
	.byte	0x2
	.byte	0x1d
	.uleb128 0xc
	.string	"targetv"
	.byte	0x1
	.byte	0x1f
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"ntargets"
	.byte	0x1
	.byte	0x20
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"targets_size"
	.byte	0x1
	.byte	0x21
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"depv"
	.byte	0x1
	.byte	0x23
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"ndeps"
	.byte	0x1
	.byte	0x24
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"deps_size"
	.byte	0x1
	.byte	0x25
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x59c
	.string	"munge"
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.long	0x9b
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x10
	.string	"filename"
	.byte	0x1
	.byte	0x33
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x35
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.string	"p"
	.byte	0x1
	.byte	0x36
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.string	"q"
	.byte	0x1
	.byte	0x36
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"dst"
	.byte	0x1
	.byte	0x37
	.long	0x192
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.string	"buffer"
	.byte	0x1
	.byte	0x37
	.long	0x192
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x12
	.long	0x5cc
	.byte	0x1
	.string	"deps_init"
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.long	0x5cc
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x11
	.string	"d"
	.byte	0x1
	.byte	0x72
	.long	0x5cc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x4a8
	.uleb128 0x13
	.long	0x60a
	.byte	0x1
	.string	"deps_free"
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x10
	.string	"d"
	.byte	0x1
	.byte	0x83
	.long	0x5cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x85
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x13
	.long	0x658
	.byte	0x1
	.string	"deps_add_target"
	.byte	0x1
	.byte	0x9f
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x10
	.string	"d"
	.byte	0x1
	.byte	0x9c
	.long	0x5cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"t"
	.byte	0x1
	.byte	0x9d
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.string	"quote"
	.byte	0x1
	.byte	0x9e
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x13
	.long	0x6d7
	.byte	0x1
	.string	"deps_add_default_target"
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x10
	.string	"d"
	.byte	0x1
	.byte	0xb4
	.long	0x5cc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"tgt"
	.byte	0x1
	.byte	0xb5
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x11
	.string	"start"
	.byte	0x1
	.byte	0xc2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.string	"o"
	.byte	0x1
	.byte	0xc3
	.long	0x192
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.string	"suffix"
	.byte	0x1
	.byte	0xc4
	.long	0x192
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x712
	.byte	0x1
	.string	"deps_add_dep"
	.byte	0x1
	.byte	0xd5
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x10
	.string	"d"
	.byte	0x1
	.byte	0xd3
	.long	0x5cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"t"
	.byte	0x1
	.byte	0xd4
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x13
	.long	0x789
	.byte	0x1
	.string	"deps_write"
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x10
	.string	"d"
	.byte	0x1
	.byte	0xe3
	.long	0x789
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"fp"
	.byte	0x1
	.byte	0xe4
	.long	0x794
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.string	"colmax"
	.byte	0x1
	.byte	0xe5
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.string	"size"
	.byte	0x1
	.byte	0xe7
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xe7
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"column"
	.byte	0x1
	.byte	0xe7
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x78f
	.uleb128 0x3
	.long	0x4a8
	.uleb128 0x2
	.byte	0x4
	.long	0x198
	.uleb128 0x15
	.byte	0x1
	.string	"deps_phony_targets"
	.byte	0x1
	.value	0x119
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x16
	.string	"d"
	.byte	0x1
	.value	0x117
	.long	0x789
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"fp"
	.byte	0x1
	.value	0x118
	.long	0x794
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x11a
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x91
	.value	0x2
	.long	.Ldebug_info0
	.long	0x7e9
	.long	0x59c
	.string	"deps_init"
	.long	0x5d2
	.string	"deps_free"
	.long	0x60a
	.string	"deps_add_target"
	.long	0x658
	.string	"deps_add_default_target"
	.long	0x6d7
	.string	"deps_add_dep"
	.long	0x712
	.string	"deps_write"
	.long	0x79a
	.string	"deps_phony_targets"
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
.LASF1:
	.string	"_IO_FILE"
.LASF0:
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
