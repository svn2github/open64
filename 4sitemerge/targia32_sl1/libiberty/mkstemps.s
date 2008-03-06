	.file	"mkstemps.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	value.3745
	.comm	value.3745,8,8
	.section	.rodata
	.align 32
	.type	letters.3744, @object
	.size	letters.3744, 63
letters.3744:
	.string	"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
.LC0:
	.string	"XXXXXX"
.globl __umoddi3
.globl __udivdi3
	.text
.globl mkstemps
	.type	mkstemps, @function
mkstemps:
.LFB15:
	.file 1 "../../libiberty/mkstemps.c"
	.loc 1 77 0
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
	subl	$92, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 88 0
	movl	8(%ebp), %eax
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
	.loc 1 90 0
	movl	-28(%ebp), %edx
	movl	12(%ebp), %eax
	addl	$6, %eax
	cmpl	%eax, %edx
	jl	.L2
	movl	12(%ebp), %edx
	movl	-28(%ebp), %eax
	subl	%edx, %eax
	addl	8(%ebp), %eax
	subl	$6, %eax
	movl	%eax, -76(%ebp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
	movl	$6, -84(%ebp)
	cld
	movl	-76(%ebp), %esi
	movl	-80(%ebp), %edi
	movl	-84(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L4
.L2:
	.loc 1 93 0
	movl	$-1, -68(%ebp)
	jmp	.L5
.L4:
	.loc 1 96 0
	movl	12(%ebp), %edx
	movl	-28(%ebp), %eax
	subl	%edx, %eax
	addl	8(%ebp), %eax
	subl	$6, %eax
	movl	%eax, -32(%ebp)
	.loc 1 100 0
	movl	$0, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	gettimeofday@PLT
	.loc 1 101 0
	movl	-44(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	$16, %esi, %edi
	sall	$16, %esi
	movl	%esi, -64(%ebp)
	movl	%edi, -60(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	-64(%ebp), %esi
	xorl	%eax, %esi
	movl	-60(%ebp), %edi
	xorl	%edx, %edi
	call	getpid@PLT
	movl	%eax, -56(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -52(%ebp)
	movl	-56(%ebp), %eax
	xorl	%esi, %eax
	movl	-52(%ebp), %edx
	xorl	%edi, %edx
	movl	value.3745@GOTOFF(%ebx), %esi
	movl	4+value.3745@GOTOFF(%ebx), %edi
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, value.3745@GOTOFF(%ebx)
	movl	%edx, 4+value.3745@GOTOFF(%ebx)
	.loc 1 106 0
	movl	$0, -24(%ebp)
	jmp	.L6
.L7:
.LBB2:
	.loc 1 108 0
	movl	value.3745@GOTOFF(%ebx), %eax
	movl	4+value.3745@GOTOFF(%ebx), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 112 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	$62, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__umoddi3@PLT
	leal	letters.3744@GOTOFF(%ebx), %ecx
	movzbl	(%ecx,%eax), %edx
	movl	-32(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 113 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	$62, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 114 0
	movl	-32(%ebp), %esi
	addl	$1, %esi
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	$62, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__umoddi3@PLT
	leal	letters.3744@GOTOFF(%ebx), %ecx
	movzbl	(%ecx,%eax), %eax
	movb	%al, (%esi)
	.loc 1 115 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	$62, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 116 0
	movl	-32(%ebp), %esi
	addl	$2, %esi
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	$62, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__umoddi3@PLT
	leal	letters.3744@GOTOFF(%ebx), %ecx
	movzbl	(%ecx,%eax), %eax
	movb	%al, (%esi)
	.loc 1 117 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	$62, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 118 0
	movl	-32(%ebp), %esi
	addl	$3, %esi
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	$62, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__umoddi3@PLT
	leal	letters.3744@GOTOFF(%ebx), %ecx
	movzbl	(%ecx,%eax), %eax
	movb	%al, (%esi)
	.loc 1 119 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	$62, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 120 0
	movl	-32(%ebp), %esi
	addl	$4, %esi
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	$62, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__umoddi3@PLT
	leal	letters.3744@GOTOFF(%ebx), %ecx
	movzbl	(%ecx,%eax), %eax
	movb	%al, (%esi)
	.loc 1 121 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	$62, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 122 0
	movl	-32(%ebp), %esi
	addl	$5, %esi
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	$62, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__umoddi3@PLT
	leal	letters.3744@GOTOFF(%ebx), %ecx
	movzbl	(%ecx,%eax), %eax
	movb	%al, (%esi)
	.loc 1 127 0
	movl	$384, 8(%esp)
	movl	$194, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	open@PLT
	movl	%eax, -20(%ebp)
	.loc 1 129 0
	cmpl	$0, -20(%ebp)
	js	.L8
	.loc 1 131 0
	movl	-20(%ebp), %ecx
	movl	%ecx, -68(%ebp)
	jmp	.L5
.L8:
	.loc 1 136 0
	movl	value.3745@GOTOFF(%ebx), %eax
	movl	4+value.3745@GOTOFF(%ebx), %edx
	addl	$7777, %eax
	adcl	$0, %edx
	movl	%eax, value.3745@GOTOFF(%ebx)
	movl	%edx, 4+value.3745@GOTOFF(%ebx)
.LBE2:
	.loc 1 106 0
	addl	$1, -24(%ebp)
.L6:
	cmpl	$238327, -24(%ebp)
	jle	.L7
	.loc 1 140 0
	movl	8(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 141 0
	movl	$-1, -68(%ebp)
.L5:
	movl	-68(%ebp), %eax
	.loc 1 142 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	mkstemps, .-mkstemps
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
	.file 2 "/usr/include/bits/time.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
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
	.section	.debug_info
	.long	0x2ad
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libiberty/mkstemps.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libiberty"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x4
	.byte	0xd6
	.long	0xa7
	.uleb128 0x3
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
	.string	"int"
	.byte	0x4
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
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"__time_t"
	.byte	0x3
	.byte	0x98
	.long	0x138
	.uleb128 0x2
	.string	"__suseconds_t"
	.byte	0x3
	.byte	0x9a
	.long	0x138
	.uleb128 0x5
	.byte	0x4
	.long	0x176
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x6
	.long	0x1b2
	.string	"timeval"
	.byte	0x8
	.byte	0x2
	.byte	0x46
	.uleb128 0x7
	.string	"tv_sec"
	.byte	0x2
	.byte	0x47
	.long	0x14b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"tv_usec"
	.byte	0x2
	.byte	0x48
	.long	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"gcc_uint64_t"
	.byte	0x1
	.byte	0x2b
	.long	0x11e
	.uleb128 0x8
	.long	0x29b
	.byte	0x1
	.string	"mkstemps"
	.byte	0x1
	.byte	0x4d
	.long	0x106
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x9
	.string	"template"
	.byte	0x1
	.byte	0x4b
	.long	0x170
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.string	"suffix_len"
	.byte	0x1
	.byte	0x4c
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xa
	.string	"tv"
	.byte	0x1
	.byte	0x52
	.long	0x17e
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.string	"XXXXXX"
	.byte	0x1
	.byte	0x54
	.long	0x170
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"len"
	.byte	0x1
	.byte	0x55
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"count"
	.byte	0x1
	.byte	0x56
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.long	0x272
	.long	.LBB2
	.long	.LBE2
	.uleb128 0xa
	.string	"v"
	.byte	0x1
	.byte	0x6c
	.long	0x1b2
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.string	"fd"
	.byte	0x1
	.byte	0x6d
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0xa
	.string	"letters"
	.byte	0x1
	.byte	0x4e
	.long	0x2ab
	.byte	0x5
	.byte	0x3
	.long	letters.3744
	.uleb128 0xa
	.string	"value"
	.byte	0x1
	.byte	0x50
	.long	0x1b2
	.byte	0x5
	.byte	0x3
	.long	value.3745
	.byte	0x0
	.uleb128 0xc
	.long	0x2ab
	.long	0x176
	.uleb128 0xd
	.long	0x144
	.byte	0x3e
	.byte	0x0
	.uleb128 0xe
	.long	0x29b
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x1b
	.value	0x2
	.long	.Ldebug_info0
	.long	0x2b1
	.long	0x1c6
	.string	"mkstemps"
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
