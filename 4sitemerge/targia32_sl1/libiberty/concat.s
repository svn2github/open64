	.file	"concat.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl concat_length
	.type	concat_length, @function
concat_length:
.LFB7:
	.file 1 "../../libiberty/concat.c"
	.loc 1 112 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	subl	$24, %esp
.LCFI2:
.LBB2:
	.loc 1 115 0
	leal	12(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB3:
	.loc 1 117 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	vconcat_length
	movl	%eax, -4(%ebp)
.LBE3:
.LBE2:
	.loc 1 120 0
	movl	-4(%ebp), %eax
	.loc 1 121 0
	leave
	ret
.LFE7:
	.size	concat_length, .-concat_length
	.type	vconcat_length, @function
vconcat_length:
.LFB5:
	.loc 1 77 0
	pushl	%ebp
.LCFI3:
	movl	%esp, %ebp
.LCFI4:
	pushl	%edi
.LCFI5:
	subl	$20, %esp
.LCFI6:
	.loc 1 78 0
	movl	$0, -12(%ebp)
	.loc 1 81 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L4
.L5:
	.loc 1 82 0
	movl	-8(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -24(%ebp)
	movl	$0, %eax
	cld
	movl	-24(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	%eax, -12(%ebp)
	.loc 1 81 0
	movl	12(%ebp), %edx
	leal	4(%edx), %eax
	movl	%eax, 12(%ebp)
	movl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L4:
	cmpl	$0, -8(%ebp)
	jne	.L5
	.loc 1 84 0
	movl	-12(%ebp), %eax
	.loc 1 85 0
	addl	$20, %esp
	popl	%edi
	popl	%ebp
	ret
.LFE5:
	.size	vconcat_length, .-vconcat_length
.globl concat_copy
	.type	concat_copy, @function
concat_copy:
.LFB8:
	.loc 1 127 0
	pushl	%ebp
.LCFI7:
	movl	%esp, %ebp
.LCFI8:
	subl	$40, %esp
.LCFI9:
.LBB4:
	.loc 1 130 0
	leal	16(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB5:
	.loc 1 133 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	vconcat_copy
	.loc 1 134 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
.LBE5:
.LBE4:
	.loc 1 137 0
	movl	-4(%ebp), %eax
	.loc 1 138 0
	leave
	ret
.LFE8:
	.size	concat_copy, .-concat_copy
	.type	vconcat_copy, @function
vconcat_copy:
.LFB6:
	.loc 1 93 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%edi
.LCFI12:
	pushl	%esi
.LCFI13:
	subl	$20, %esp
.LCFI14:
	.loc 1 94 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 97 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L11
.L12:
.LBB6:
	.loc 1 99 0
	movl	-16(%ebp), %eax
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
	movl	%eax, -12(%ebp)
	.loc 1 100 0
	movl	-20(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 101 0
	movl	-12(%ebp), %eax
	addl	%eax, -20(%ebp)
.LBE6:
	.loc 1 97 0
	movl	16(%ebp), %edx
	leal	4(%edx), %eax
	movl	%eax, 16(%ebp)
	movl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L11:
	cmpl	$0, -16(%ebp)
	jne	.L12
	.loc 1 103 0
	movl	-20(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 105 0
	movl	8(%ebp), %eax
	.loc 1 106 0
	addl	$20, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE6:
	.size	vconcat_copy, .-vconcat_copy
.globl concat_copy2
	.type	concat_copy2, @function
concat_copy2:
.LFB9:
	.loc 1 146 0
	pushl	%ebp
.LCFI15:
	movl	%esp, %ebp
.LCFI16:
	pushl	%ebx
.LCFI17:
	subl	$28, %esp
.LCFI18:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB7:
	.loc 1 147 0
	leal	12(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB8:
	.loc 1 149 0
	movl	-8(%ebp), %edx
	movl	libiberty_concat_ptr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	vconcat_copy
.LBE8:
.LBE7:
	.loc 1 152 0
	movl	libiberty_concat_ptr@GOT(%ebx), %eax
	movl	(%eax), %eax
	.loc 1 153 0
	addl	$28, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE9:
	.size	concat_copy2, .-concat_copy2
.globl concat
	.type	concat, @function
concat:
.LFB10:
	.loc 1 157 0
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	pushl	%ebx
.LCFI21:
	subl	$36, %esp
.LCFI22:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB9:
	.loc 1 161 0
	leal	12(%ebp), %eax
	movl	%eax, -12(%ebp)
.LBB10:
	.loc 1 163 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	vconcat_length
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
.LBE10:
.LBE9:
.LBB11:
	.loc 1 167 0
	leal	12(%ebp), %eax
	movl	%eax, -12(%ebp)
.LBB12:
	.loc 1 169 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	vconcat_copy
.LBE12:
.LBE11:
	.loc 1 172 0
	movl	-8(%ebp), %eax
	.loc 1 173 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE10:
	.size	concat, .-concat
.globl reconcat
	.type	reconcat, @function
reconcat:
.LFB11:
	.loc 1 194 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	pushl	%ebx
.LCFI25:
	subl	$36, %esp
.LCFI26:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB13:
	.loc 1 198 0
	leal	16(%ebp), %eax
	movl	%eax, -12(%ebp)
.LBB14:
	.loc 1 201 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	vconcat_length
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
.LBE14:
.LBE13:
.LBB15:
	.loc 1 205 0
	leal	16(%ebp), %eax
	movl	%eax, -12(%ebp)
.LBB16:
	.loc 1 208 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	vconcat_copy
	.loc 1 209 0
	cmpl	$0, 8(%ebp)
	je	.L20
	.loc 1 210 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L20:
.LBE16:
.LBE15:
	.loc 1 213 0
	movl	-8(%ebp), %eax
	.loc 1 214 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE11:
	.size	reconcat, .-reconcat
	.comm	libiberty_concat_ptr,4,4
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
	.long	.LFB7
	.long	.LFE7-.LFB7
	.byte	0x4
	.long	.LCFI0-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB5
	.long	.LFE5-.LFB5
	.byte	0x4
	.long	.LCFI3-.LFB5
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI6-.LCFI4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI7-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.byte	0x4
	.long	.LCFI10-.LFB6
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
	.long	.LFB9
	.long	.LFE9-.LFB9
	.byte	0x4
	.long	.LCFI15-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI18-.LCFI16
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.byte	0x4
	.long	.LCFI19-.LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI22-.LCFI20
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI23-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI26-.LCFI24
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE12:
	.file 2 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB7-.Ltext0
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
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB5-.Ltext0
	.long	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI3-.Ltext0
	.long	.LCFI4-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI4-.Ltext0
	.long	.LFE5-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB8-.Ltext0
	.long	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI7-.Ltext0
	.long	.LCFI8-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI8-.Ltext0
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB6-.Ltext0
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
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB9-.Ltext0
	.long	.LCFI15-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI15-.Ltext0
	.long	.LCFI16-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI16-.Ltext0
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB10-.Ltext0
	.long	.LCFI19-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI19-.Ltext0
	.long	.LCFI20-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI20-.Ltext0
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB11-.Ltext0
	.long	.LCFI23-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI23-.Ltext0
	.long	.LCFI24-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI24-.Ltext0
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x4d6
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libiberty/concat.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libiberty"
	.uleb128 0x2
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.string	"__gnuc_va_list"
	.byte	0x2
	.byte	0x2b
	.long	0xbb
	.uleb128 0x5
	.byte	0x4
	.long	0xc1
	.uleb128 0x2
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.string	"va_list"
	.byte	0x2
	.byte	0x69
	.long	0xa5
	.uleb128 0x2
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
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
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.byte	0x4
	.long	0xc1
	.uleb128 0x5
	.byte	0x4
	.long	0x17a
	.uleb128 0x6
	.long	0xc1
	.uleb128 0x7
	.long	0x1e5
	.byte	0x1
	.string	"concat_length"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.long	0xff
	.long	.LFB7
	.long	.LFE7
	.long	.LLST0
	.uleb128 0x8
	.long	.LASF3
	.byte	0x1
	.byte	0x6f
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF1
	.byte	0x1
	.byte	0x71
	.long	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xb
	.long	.LBB2
	.long	.LBE2
	.uleb128 0xa
	.long	.LASF2
	.byte	0x1
	.byte	0x73
	.long	0xc9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xc
	.long	.LBB3
	.long	.LBE3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x245
	.string	"vconcat_length"
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.long	0xff
	.long	.LFB5
	.long	.LFE5
	.long	.LLST1
	.uleb128 0x8
	.long	.LASF3
	.byte	0x1
	.byte	0x4b
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.long	.LASF2
	.byte	0x1
	.byte	0x4c
	.long	0xc9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xa
	.long	.LASF1
	.byte	0x1
	.byte	0x4e
	.long	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"arg"
	.byte	0x1
	.byte	0x4f
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x7
	.long	0x2bc
	.byte	0x1
	.string	"concat_copy"
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.long	0x16e
	.long	.LFB8
	.long	.LFE8
	.long	.LLST2
	.uleb128 0xf
	.string	"dst"
	.byte	0x1
	.byte	0x7e
	.long	0x16e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.long	.LASF3
	.byte	0x1
	.byte	0x7e
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.uleb128 0xe
	.string	"save_dst"
	.byte	0x1
	.byte	0x80
	.long	0x16e
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xb
	.long	.LBB4
	.long	.LBE4
	.uleb128 0xa
	.long	.LASF2
	.byte	0x1
	.byte	0x82
	.long	0xc9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xc
	.long	.LBB5
	.long	.LBE5
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x340
	.string	"vconcat_copy"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.long	0x16e
	.long	.LFB6
	.long	.LFE6
	.long	.LLST3
	.uleb128 0xf
	.string	"dst"
	.byte	0x1
	.byte	0x5a
	.long	0x16e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.long	.LASF3
	.byte	0x1
	.byte	0x5b
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x8
	.long	.LASF2
	.byte	0x1
	.byte	0x5c
	.long	0xc9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xe
	.string	"end"
	.byte	0x1
	.byte	0x5e
	.long	0x16e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.string	"arg"
	.byte	0x1
	.byte	0x5f
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.long	.LBB6
	.long	.LBE6
	.uleb128 0xa
	.long	.LASF1
	.byte	0x1
	.byte	0x63
	.long	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.long	0x397
	.byte	0x1
	.string	"concat_copy2"
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.long	0x16e
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0x8
	.long	.LASF3
	.byte	0x1
	.byte	0x91
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.uleb128 0xb
	.long	.LBB7
	.long	.LBE7
	.uleb128 0xa
	.long	.LASF2
	.byte	0x1
	.byte	0x93
	.long	0xc9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xc
	.long	.LBB8
	.long	.LBE8
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.long	0x41e
	.byte	0x1
	.string	"concat"
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.long	0x16e
	.long	.LFB10
	.long	.LFE10
	.long	.LLST5
	.uleb128 0x8
	.long	.LASF3
	.byte	0x1
	.byte	0x9c
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.uleb128 0xe
	.string	"newstr"
	.byte	0x1
	.byte	0x9e
	.long	0x16e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x10
	.long	0x3fc
	.long	.LBB9
	.long	.LBE9
	.uleb128 0xa
	.long	.LASF2
	.byte	0x1
	.byte	0xa1
	.long	0xc9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.long	.LBB10
	.long	.LBE10
	.byte	0x0
	.uleb128 0xb
	.long	.LBB11
	.long	.LBE11
	.uleb128 0xa
	.long	.LASF2
	.byte	0x1
	.byte	0xa7
	.long	0xc9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.long	.LBB12
	.long	.LBE12
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.long	0x4b6
	.byte	0x1
	.string	"reconcat"
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.long	0x16e
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.uleb128 0xf
	.string	"optr"
	.byte	0x1
	.byte	0xc1
	.long	0x16e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.long	.LASF3
	.byte	0x1
	.byte	0xc1
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.uleb128 0xe
	.string	"newstr"
	.byte	0x1
	.byte	0xc3
	.long	0x16e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x10
	.long	0x494
	.long	.LBB13
	.long	.LBE13
	.uleb128 0xa
	.long	.LASF2
	.byte	0x1
	.byte	0xc6
	.long	0xc9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.long	.LBB14
	.long	.LBE14
	.byte	0x0
	.uleb128 0xb
	.long	.LBB15
	.long	.LBE15
	.uleb128 0xa
	.long	.LASF2
	.byte	0x1
	.byte	0xcd
	.long	0xc9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.long	.LBB16
	.long	.LBE16
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.string	"libiberty_concat_ptr"
	.byte	0x1
	.byte	0x8c
	.long	0x16e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	libiberty_concat_ptr
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x72
	.value	0x2
	.long	.Ldebug_info0
	.long	0x4da
	.long	0x17f
	.string	"concat_length"
	.long	0x245
	.string	"concat_copy"
	.long	0x340
	.string	"concat_copy2"
	.long	0x397
	.string	"concat"
	.long	0x41e
	.string	"reconcat"
	.long	0x4b6
	.string	"libiberty_concat_ptr"
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
.LASF3:
	.string	"first"
.LASF1:
	.string	"length"
.LASF2:
	.string	"args"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
