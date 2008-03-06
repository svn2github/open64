	.file	"prefix.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	""
	.section	.data.rel.local,"aw",@progbits
	.align 4
	.type	std_prefix, @object
	.size	std_prefix, 4
std_prefix:
	.long	.LC0
	.section	.rodata
.LC1:
	.string	"_ROOT"
	.text
	.type	get_key_value, @function
get_key_value:
.LFB15:
	.file 1 "../../../kg++fe/gnu/prefix.c"
	.loc 1 101 0
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
	.loc 1 102 0
	movl	$0, -12(%ebp)
	.loc 1 103 0
	movl	$0, -8(%ebp)
	.loc 1 109 0
	cmpl	$0, -12(%ebp)
	jne	.L2
	.loc 1 110 0
	movl	$0, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	concat@PLT
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -12(%ebp)
.L2:
	.loc 1 112 0
	cmpl	$0, -12(%ebp)
	jne	.L4
	.loc 1 113 0
	movl	std_prefix@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
.L4:
	.loc 1 115 0
	cmpl	$0, -8(%ebp)
	je	.L6
	.loc 1 116 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L6:
	.loc 1 118 0
	movl	-12(%ebp), %eax
	.loc 1 119 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	get_key_value, .-get_key_value
	.type	save_string, @function
save_string:
.LFB16:
	.loc 1 127 0
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
	subl	$28, %esp
.LCFI9:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 128 0
	movl	12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 130 0
	movl	12(%ebp), %ecx
	movl	-16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 131 0
	movl	12(%ebp), %eax
	addl	-16(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 132 0
	movl	-16(%ebp), %eax
	.loc 1 133 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	save_string, .-save_string
	.type	translate_name, @function
translate_name:
.LFB17:
	.loc 1 195 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$52, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 195 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
.L12:
	.loc 1 203 0
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -9(%ebp)
	.loc 1 204 0
	cmpb	$64, -9(%ebp)
	je	.L13
	cmpb	$36, -9(%ebp)
	jne	.L15
.L13:
	.loc 1 207 0
	movl	$0, -16(%ebp)
	.loc 1 208 0
	jmp	.L16
.L17:
	.loc 1 209 0
	addl	$1, -16(%ebp)
.L16:
	.loc 1 208 0
	movl	-16(%ebp), %eax
	addl	-40(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L18
	movl	-16(%ebp), %eax
	addl	-40(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	.L17
.L18:
	.loc 1 212 0
	movl	-16(%ebp), %eax
	addl	$1, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	12(%esp), %edx
	movl	%edx, -44(%ebp)
	movl	-44(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 213 0
	movl	-16(%ebp), %eax
	movl	-40(%ebp), %edx
	addl	$1, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strncpy@PLT
	.loc 1 214 0
	movl	-16(%ebp), %eax
	addl	-28(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 216 0
	cmpb	$64, -9(%ebp)
	jne	.L20
	.loc 1 218 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	get_key_value
	movl	%eax, -20(%ebp)
	.loc 1 219 0
	cmpl	$0, -20(%ebp)
	jne	.L24
	.loc 1 220 0
	movl	std_prefix@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L24
.L20:
	.loc 1 223 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -20(%ebp)
.L24:
	.loc 1 225 0
	cmpl	$0, -20(%ebp)
	jne	.L25
	.loc 1 226 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
.L25:
	.loc 1 233 0
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 234 0
	movl	-16(%ebp), %eax
	addl	-40(%ebp), %eax
	addl	$1, %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	concat@PLT
	movl	%eax, -40(%ebp)
	.loc 1 235 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 236 0
	jmp	.L12
.L15:
	.loc 1 238 0
	movl	-40(%ebp), %eax
	.loc 1 239 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L28
	call	__stack_chk_fail_local
.L28:
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE17:
	.size	translate_name, .-translate_name
	.type	tr, @function
tr:
.LFB18:
	.loc 1 246 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
.L30:
	.loc 1 249 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	jne	.L31
	.loc 1 250 0
	movl	16(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, (%eax)
.L31:
	.loc 1 252 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	setne	%al
	addl	$1, 8(%ebp)
	testb	%al, %al
	jne	.L30
	.loc 1 253 0
	popl	%ebp
	ret
.LFE18:
	.size	tr, .-tr
	.section	.rodata
.LC2:
	.string	"@"
	.text
.globl update_path
	.type	update_path, @function
update_path:
.LFB19:
	.loc 1 263 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%edi
.LCFI18:
	pushl	%ebx
.LCFI19:
	subl	$64, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 266 0
	movl	std_prefix@GOTOFF(%ebx), %eax
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
	movl	std_prefix@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L36
	cmpl	$0, 12(%ebp)
	je	.L36
.LBB2:
	.loc 1 268 0
	movb	$0, -9(%ebp)
	.loc 1 270 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$36, %al
	je	.L39
	.loc 1 272 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	concat@PLT
	movl	%eax, 12(%ebp)
	.loc 1 273 0
	movb	$1, -9(%ebp)
.L39:
	.loc 1 276 0
	movl	std_prefix@GOTOFF(%ebx), %eax
	movl	$-1, %ecx
	movl	%eax, -48(%ebp)
	movl	$0, %eax
	cld
	movl	-48(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	8(%ebp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	concat@PLT
	movl	%eax, -28(%ebp)
	.loc 1 277 0
	cmpb	$0, -9(%ebp)
	je	.L41
	.loc 1 278 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L41:
	.loc 1 279 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	translate_name
	movl	%eax, -28(%ebp)
	.loc 1 266 0
	jmp	.L43
.L36:
.LBE2:
	.loc 1 282 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, -28(%ebp)
.L43:
	.loc 1 288 0
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L75
.L44:
.L75:
.LBB3:
	.loc 1 293 0
	movl	$46, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	movl	%eax, -24(%ebp)
	.loc 1 294 0
	cmpl	$0, -24(%ebp)
	je	.L45
	.loc 1 297 0
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L47
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	.L47
	movl	-24(%ebp), %eax
	cmpl	-28(%ebp), %eax
	je	.L47
	movl	-24(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	.L47
	.loc 1 301 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 302 0
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	access@PLT
	testl	%eax, %eax
	jne	.L52
	.loc 1 304 0
	movl	-24(%ebp), %eax
	movb	$46, (%eax)
	.loc 1 305 0
	jmp	.L45
.L52:
	.loc 1 312 0
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
.L54:
	.loc 1 315 0
	subl	$1, -16(%ebp)
	.loc 1 316 0
	jmp	.L55
.L56:
	.loc 1 317 0
	subl	$1, -16(%ebp)
.L55:
	.loc 1 316 0
	movl	-16(%ebp), %eax
	cmpl	-28(%ebp), %eax
	je	.L59
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	je	.L56
	.loc 1 318 0
	jmp	.L59
.L60:
	.loc 1 319 0
	subl	$1, -16(%ebp)
.L59:
	.loc 1 318 0
	movl	-16(%ebp), %eax
	cmpl	-28(%ebp), %eax
	je	.L61
	movl	-16(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	.L60
.L61:
	.loc 1 321 0
	movl	-16(%ebp), %eax
	cmpl	-28(%ebp), %eax
	je	.L63
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	je	.L54
.L63:
	.loc 1 324 0
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	je	.L65
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	.L67
.L65:
	.loc 1 326 0
	movl	-24(%ebp), %eax
	movb	$46, (%eax)
	.loc 1 327 0
	jmp	.L45
.L67:
	.loc 1 329 0
	movl	-24(%ebp), %eax
	addl	$3, %eax
	movl	%eax, -20(%ebp)
	.loc 1 330 0
	jmp	.L68
.L69:
	.loc 1 331 0
	addl	$1, -20(%ebp)
.L68:
	.loc 1 330 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	je	.L69
	.loc 1 332 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L71:
	.loc 1 333 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-16(%ebp), %eax
	movb	%dl, (%eax)
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	setne	%al
	addl	$1, -16(%ebp)
	addl	$1, -20(%ebp)
	testb	%al, %al
	jne	.L71
	.loc 1 297 0
	jmp	.L44
.L47:
	.loc 1 338 0
	addl	$1, -24(%ebp)
	.loc 1 339 0
	jmp	.L44
.L45:
.LBE3:
	.loc 1 357 0
	movl	-28(%ebp), %eax
	.loc 1 358 0
	addl	$64, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	update_path, .-update_path
.globl set_std_prefix
	.type	set_std_prefix, @function
set_std_prefix:
.LFB20:
	.loc 1 365 0
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
	.loc 1 366 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	save_string
	movl	%eax, std_prefix@GOTOFF(%ebx)
	.loc 1 367 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	set_std_prefix, .-set_std_prefix
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
	.section	.debug_info
	.long	0x3d5
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/prefix.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
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
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.byte	0x4
	.long	0xa6
	.uleb128 0x6
	.long	0x1aa
	.string	"get_key_value"
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.long	0x9b
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x7
	.string	"key"
	.byte	0x1
	.byte	0x64
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.long	.LASF1
	.byte	0x1
	.byte	0x66
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"temp"
	.byte	0x1
	.byte	0x67
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x6
	.long	0x1fa
	.string	"save_string"
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.long	0x152
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x7
	.string	"s"
	.byte	0x1
	.byte	0x7d
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.string	"len"
	.byte	0x1
	.byte	0x7e
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.string	"result"
	.byte	0x1
	.byte	0x80
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x6
	.long	0x280
	.string	"translate_name"
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.long	0x152
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x7
	.string	"name"
	.byte	0x1
	.byte	0xc2
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.string	"code"
	.byte	0x1
	.byte	0xc4
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x9
	.string	"key"
	.byte	0x1
	.byte	0xc5
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"old_name"
	.byte	0x1
	.byte	0xc5
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.long	.LASF1
	.byte	0x1
	.byte	0xc6
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.string	"keylen"
	.byte	0x1
	.byte	0xc7
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0xa
	.long	0x2c3
	.string	"tr"
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x7
	.string	"string"
	.byte	0x1
	.byte	0xf4
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.string	"c1"
	.byte	0x1
	.byte	0xf5
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x7
	.string	"c2"
	.byte	0x1
	.byte	0xf5
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0xb
	.long	0x373
	.byte	0x1
	.string	"update_path"
	.byte	0x1
	.value	0x107
	.byte	0x1
	.long	0x152
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0xc
	.string	"path"
	.byte	0x1
	.value	0x105
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"key"
	.byte	0x1
	.value	0x106
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xd
	.string	"result"
	.byte	0x1
	.value	0x108
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"p"
	.byte	0x1
	.value	0x108
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.long	0x349
	.long	.LBB2
	.long	.LBE2
	.uleb128 0xd
	.string	"free_key"
	.byte	0x1
	.value	0x10c
	.long	0x373
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.byte	0x0
	.uleb128 0xf
	.long	.LBB3
	.long	.LBE3
	.uleb128 0xd
	.string	"src"
	.byte	0x1
	.value	0x123
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.string	"dest"
	.byte	0x1
	.value	0x123
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x10
	.long	0x3c0
	.byte	0x1
	.string	"set_std_prefix"
	.byte	0x1
	.value	0x16d
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x11
	.long	.LASF1
	.byte	0x1
	.value	0x16b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.value	0x16c
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x9
	.string	"std_prefix"
	.byte	0x1
	.byte	0x54
	.long	0x9b
	.byte	0x5
	.byte	0x3
	.long	std_prefix
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x31
	.value	0x2
	.long	.Ldebug_info0
	.long	0x3d9
	.long	0x2c3
	.string	"update_path"
	.long	0x37c
	.string	"set_std_prefix"
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
	.string	"prefix"
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
