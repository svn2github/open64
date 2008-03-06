	.file	"argv.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl dupargv
	.type	dupargv, @function
dupargv:
.LFB5:
	.file 1 "../../libiberty/argv.c"
	.loc 1 80 0
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
	subl	$44, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 84 0
	cmpl	$0, 8(%ebp)
	jne	.L2
	.loc 1 85 0
	movl	$0, -32(%ebp)
	jmp	.L4
.L2:
	.loc 1 88 0
	movl	$0, -24(%ebp)
	jmp	.L5
.L6:
	addl	$1, -24(%ebp)
.L5:
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L6
	.loc 1 89 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 90 0
	cmpl	$0, -20(%ebp)
	jne	.L8
	.loc 1 91 0
	movl	$0, -32(%ebp)
	jmp	.L4
.L8:
	.loc 1 94 0
	movl	$0, -24(%ebp)
	jmp	.L10
.L11:
.LBB2:
	.loc 1 96 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -36(%ebp)
	movl	$0, %eax
	cld
	movl	-36(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	.loc 1 97 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-20(%ebp), %esi
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, (%esi)
	.loc 1 98 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L12
	.loc 1 100 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	freeargv@PLT
	.loc 1 101 0
	movl	$0, -32(%ebp)
	jmp	.L4
.L12:
	.loc 1 103 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcpy@PLT
.LBE2:
	.loc 1 94 0
	addl	$1, -24(%ebp)
.L10:
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L11
	.loc 1 105 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 106 0
	movl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
.L4:
	movl	-32(%ebp), %eax
	.loc 1 107 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE5:
	.size	dupargv, .-dupargv
.globl freeargv
	.type	freeargv, @function
freeargv:
.LFB6:
	.loc 1 124 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%ebx
.LCFI8:
	subl	$20, %esp
.LCFI9:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 127 0
	cmpl	$0, 8(%ebp)
	je	.L22
	.loc 1 129 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L19
.L20:
	.loc 1 131 0
	movl	-8(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 129 0
	addl	$4, -8(%ebp)
.L19:
	movl	-8(%ebp), %edx
	movl	(%edx), %eax
	testl	%eax, %eax
	jne	.L20
	.loc 1 133 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L22:
	.loc 1 135 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE6:
	.size	freeargv, .-freeargv
.globl buildargv
	.type	buildargv, @function
buildargv:
.LFB7:
	.loc 1 179 0
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
	subl	$76, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 179 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 182 0
	movl	$0, -44(%ebp)
	.loc 1 183 0
	movl	$0, -40(%ebp)
	.loc 1 184 0
	movl	$0, -36(%ebp)
	.loc 1 185 0
	movl	$0, -32(%ebp)
	.loc 1 186 0
	movl	$0, -28(%ebp)
	.loc 1 187 0
	movl	$0, -24(%ebp)
	.loc 1 190 0
	cmpl	$0, -64(%ebp)
	je	.L24
	.loc 1 192 0
	movl	-64(%ebp), %eax
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
	addl	$1, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	8(%esp), %eax
	movl	%eax, -68(%ebp)
	movl	-68(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -68(%ebp)
	movl	-68(%ebp), %edx
	movl	%edx, -48(%ebp)
	.loc 1 198 0
	jmp	.L76
.L28:
	.loc 1 200 0
	addl	$1, -64(%ebp)
.L27:
.L76:
	.loc 1 198 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	.L28
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$9, %al
	je	.L28
	.loc 1 202 0
	cmpl	$0, -28(%ebp)
	je	.L31
	movl	-28(%ebp), %eax
	subl	$1, %eax
	cmpl	-32(%ebp), %eax
	jg	.L33
.L31:
	.loc 1 205 0
	cmpl	$0, -24(%ebp)
	jne	.L34
	.loc 1 207 0
	movl	$8, -28(%ebp)
	.loc 1 208 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, -20(%ebp)
	jmp	.L36
.L34:
	.loc 1 212 0
	sall	-28(%ebp)
	.loc 1 213 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	realloc@PLT
	movl	%eax, -20(%ebp)
.L36:
	.loc 1 215 0
	cmpl	$0, -20(%ebp)
	jne	.L37
	.loc 1 217 0
	cmpl	$0, -24(%ebp)
	je	.L24
	.loc 1 219 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	freeargv@PLT
	.loc 1 220 0
	movl	$0, -24(%ebp)
	.loc 1 222 0
	jmp	.L24
.L37:
	.loc 1 224 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 225 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	addl	-24(%ebp), %eax
	movl	$0, (%eax)
.L33:
	.loc 1 228 0
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 229 0
	jmp	.L41
.L42:
	.loc 1 231 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	.L43
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$9, %al
	jne	.L45
.L43:
	cmpl	$0, -44(%ebp)
	jne	.L45
	cmpl	$0, -40(%ebp)
	jne	.L45
	cmpl	$0, -36(%ebp)
	je	.L48
.L45:
	.loc 1 237 0
	cmpl	$0, -36(%ebp)
	je	.L49
	.loc 1 239 0
	movl	$0, -36(%ebp)
	.loc 1 240 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-52(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -52(%ebp)
	jmp	.L51
.L49:
	.loc 1 242 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$92, %al
	jne	.L52
	.loc 1 244 0
	movl	$1, -36(%ebp)
	jmp	.L51
.L52:
	.loc 1 246 0
	cmpl	$0, -44(%ebp)
	je	.L54
	.loc 1 248 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$39, %al
	jne	.L56
	.loc 1 250 0
	movl	$0, -44(%ebp)
	jmp	.L51
.L56:
	.loc 1 254 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-52(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -52(%ebp)
	jmp	.L51
.L54:
	.loc 1 257 0
	cmpl	$0, -40(%ebp)
	je	.L59
	.loc 1 259 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$34, %al
	jne	.L61
	.loc 1 261 0
	movl	$0, -40(%ebp)
	jmp	.L51
.L61:
	.loc 1 265 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-52(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -52(%ebp)
	jmp	.L51
.L59:
	.loc 1 270 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$39, %al
	jne	.L64
	.loc 1 272 0
	movl	$1, -44(%ebp)
	jmp	.L51
.L64:
	.loc 1 274 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$34, %al
	jne	.L66
	.loc 1 276 0
	movl	$1, -40(%ebp)
	jmp	.L51
.L66:
	.loc 1 280 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-52(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -52(%ebp)
.L51:
	.loc 1 283 0
	addl	$1, -64(%ebp)
.L41:
	.loc 1 229 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L42
.L48:
	.loc 1 286 0
	movl	-52(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 287 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-24(%ebp), %esi
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	strdup@PLT
	movl	%eax, (%esi)
	.loc 1 288 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	addl	-24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L68
	.loc 1 290 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	freeargv@PLT
	.loc 1 291 0
	movl	$0, -24(%ebp)
	.loc 1 292 0
	jmp	.L24
.L68:
	.loc 1 294 0
	addl	$1, -32(%ebp)
	.loc 1 295 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	addl	-24(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 297 0
	jmp	.L70
.L71:
	.loc 1 299 0
	addl	$1, -64(%ebp)
.L70:
	.loc 1 297 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	.L71
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$9, %al
	je	.L71
	.loc 1 302 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L27
.L24:
	.loc 1 304 0
	movl	-24(%ebp), %eax
	.loc 1 305 0
	movl	-16(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L75
	call	__stack_chk_fail_local
.L75:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE7:
	.size	buildargv, .-buildargv
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
	.long	.LFB5
	.long	.LFE5-.LFB5
	.byte	0x4
	.long	.LCFI0-.LFB5
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
	.long	.LFB6
	.long	.LFE6-.LFB6
	.byte	0x4
	.long	.LCFI6-.LFB6
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
	.long	.LFB7
	.long	.LFE7-.LFB7
	.byte	0x4
	.long	.LCFI10-.LFB7
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
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB5-.Ltext0
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
	.long	.LFE5-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB6-.Ltext0
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
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB7-.Ltext0
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
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x2c0
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libiberty/argv.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libiberty"
	.uleb128 0x2
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x4
	.byte	0x4
	.long	0xce
	.uleb128 0x5
	.long	0xa3
	.uleb128 0x2
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x2
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.byte	0x4
	.long	0xa3
	.uleb128 0x6
	.long	0x1b9
	.byte	0x1
	.string	"dupargv"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.long	0x1b9
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0x7
	.string	"argv"
	.byte	0x1
	.byte	0x4f
	.long	0x1b9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.string	"argc"
	.byte	0x1
	.byte	0x51
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.string	"copy"
	.byte	0x1
	.byte	0x52
	.long	0x1b9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x8
	.string	"len"
	.byte	0x1
	.byte	0x60
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.byte	0x4
	.long	0x14c
	.uleb128 0xa
	.long	0x1fe
	.byte	0x1
	.string	"freeargv"
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0x7
	.string	"vector"
	.byte	0x1
	.byte	0x7b
	.long	0x1b9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.string	"scan"
	.byte	0x1
	.byte	0x7d
	.long	0x1b9
	.byte	0x2
	.byte	0x75
	.sleb128 -8
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.string	"buildargv"
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.long	0x1b9
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0x7
	.string	"input"
	.byte	0x1
	.byte	0xb2
	.long	0xc8
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x8
	.string	"arg"
	.byte	0x1
	.byte	0xb4
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x8
	.string	"copybuf"
	.byte	0x1
	.byte	0xb5
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.string	"squote"
	.byte	0x1
	.byte	0xb6
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.string	"dquote"
	.byte	0x1
	.byte	0xb7
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.string	"bsquote"
	.byte	0x1
	.byte	0xb8
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"argc"
	.byte	0x1
	.byte	0xb9
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"maxargc"
	.byte	0x1
	.byte	0xba
	.long	0x95
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"argv"
	.byte	0x1
	.byte	0xbb
	.long	0x1b9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.string	"nargv"
	.byte	0x1
	.byte	0xbc
	.long	0x1b9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x35
	.value	0x2
	.long	.Ldebug_info0
	.long	0x2c4
	.long	0x152
	.string	"dupargv"
	.long	0x1bf
	.string	"freeargv"
	.long	0x1fe
	.string	"buildargv"
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
