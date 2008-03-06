	.file	"partition.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl partition_new
	.type	partition_new, @function
partition_new:
.LFB5:
	.file 1 "../../libiberty/partition.c"
	.loc 1 45 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%esi
.LCFI2:
	pushl	%ebx
.LCFI3:
	subl	$32, %esp
.LCFI4:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 50 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 51 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 52 0
	movl	$0, -16(%ebp)
	jmp	.L2
.L3:
	.loc 1 54 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	leal	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 55 0
	movl	-16(%ebp), %ecx
	movl	-12(%ebp), %esi
	addl	$4, %esi
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%eax, %esi
	movl	-12(%ebp), %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	%esi, (%eax)
	.loc 1 56 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	$1, (%eax)
	.loc 1 52 0
	addl	$1, -16(%ebp)
.L2:
	movl	-16(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	.L3
	.loc 1 59 0
	movl	-12(%ebp), %eax
	.loc 1 60 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE5:
	.size	partition_new, .-partition_new
.globl partition_delete
	.type	partition_delete, @function
partition_delete:
.LFB6:
	.loc 1 67 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%ebx
.LCFI7:
	subl	$4, %esp
.LCFI8:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 68 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 69 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE6:
	.size	partition_delete, .-partition_delete
.globl partition_union
	.type	partition_union, @function
partition_union:
.LFB7:
	.loc 1 81 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	pushl	%esi
.LCFI11:
	subl	$36, %esp
.LCFI12:
	.loc 1 82 0
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -32(%ebp)
	.loc 1 88 0
	movl	12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 91 0
	movl	16(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L9
	.loc 1 92 0
	movl	-12(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L11
.L9:
	.loc 1 96 0
	movl	12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	8(%eax), %ecx
	movl	16(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %ecx
	jae	.L12
.LBB2:
	.loc 1 98 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 99 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 100 0
	movl	-8(%ebp), %eax
	movl	%eax, 16(%ebp)
	.loc 1 101 0
	movl	12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L12:
.LBE2:
	.loc 1 104 0
	movl	12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 105 0
	movl	16(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 108 0
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	-32(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	8(%eax), %esi
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	8(%eax), %eax
	leal	(%esi,%eax), %eax
	movl	%eax, 8(%ecx)
	.loc 1 112 0
	movl	-24(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 113 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L14
.L15:
	.loc 1 114 0
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 113 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L14:
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jne	.L15
	.loc 1 118 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 119 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 120 0
	movl	-24(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 122 0
	movl	-12(%ebp), %eax
	movl	%eax, -40(%ebp)
.L11:
	movl	-40(%ebp), %eax
	.loc 1 123 0
	addl	$36, %esp
	popl	%esi
	popl	%ebp
	ret
.LFE7:
	.size	partition_union, .-partition_union
	.type	elem_compare, @function
elem_compare:
.LFB8:
	.loc 1 132 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	subl	$20, %esp
.LCFI15:
	.loc 1 133 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 134 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 135 0
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jge	.L19
	.loc 1 136 0
	movl	$-1, -20(%ebp)
	jmp	.L21
.L19:
	.loc 1 137 0
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jle	.L22
	.loc 1 138 0
	movl	$1, -20(%ebp)
	jmp	.L21
.L22:
	.loc 1 140 0
	movl	$0, -20(%ebp)
.L21:
	movl	-20(%ebp), %eax
	.loc 1 141 0
	leave
	ret
.LFE8:
	.size	elem_compare, .-elem_compare
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	" %d"
	.text
.globl partition_print
	.type	partition_print, @function
partition_print:
.LFB9:
	.loc 1 150 0
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
	.loc 1 152 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 153 0
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -32(%ebp)
	.loc 1 158 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -40(%ebp)
	.loc 1 159 0
	movl	-36(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 162 0
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 164 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$91, (%esp)
	call	fputc@PLT
	.loc 1 165 0
	movl	$0, -24(%ebp)
	jmp	.L26
.L27:
	.loc 1 167 0
	movl	-24(%ebp), %eax
	addl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L28
.LBB3:
	.loc 1 169 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 170 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 174 0
	movl	$0, -12(%ebp)
	jmp	.L30
.L31:
	.loc 1 175 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-28(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 176 0
	movl	-20(%ebp), %eax
	addl	-40(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 177 0
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarl	$2, %eax
	imull	$-1431655765, %eax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 174 0
	addl	$1, -12(%ebp)
.L30:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L31
	.loc 1 180 0
	movl	-16(%ebp), %edx
	leal	elem_compare@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	qsort@PLT
	.loc 1 182 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$40, (%esp)
	call	fputc@PLT
	.loc 1 183 0
	movl	$0, -12(%ebp)
	jmp	.L33
.L34:
	.loc 1 184 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	addl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L35
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
	jmp	.L37
.L35:
	leal	.LC1@GOTOFF(%ebx), %ecx
	movl	%ecx, -44(%ebp)
.L37:
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 183 0
	addl	$1, -12(%ebp)
.L33:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L34
	.loc 1 185 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$41, (%esp)
	call	fputc@PLT
.L28:
.LBE3:
	.loc 1 165 0
	addl	$1, -24(%ebp)
.L26:
	movl	-24(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L27
	.loc 1 187 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$93, (%esp)
	call	fputc@PLT
	.loc 1 189 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 190 0
	addl	$64, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE9:
	.size	partition_print, .-partition_print
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
	.long	.LCFI4-.LCFI1
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI5-.LFB6
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI8-.LCFI6
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
	.long	.LCFI9-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI12-.LCFI10
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI13-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.byte	0x4
	.long	.LCFI16-.LFB9
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
	.file 2 "../../include/gnu/partition.h"
	.file 3 "/usr/include/stdio.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/bits/types.h"
	.file 6 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
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
	.long	.LCFI5-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI5-.Ltext0
	.long	.LCFI6-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI6-.Ltext0
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB7-.Ltext0
	.long	.LCFI9-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI9-.Ltext0
	.long	.LCFI10-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI10-.Ltext0
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB8-.Ltext0
	.long	.LCFI13-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI13-.Ltext0
	.long	.LCFI14-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI14-.Ltext0
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB9-.Ltext0
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
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x7c3
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libiberty/partition.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libiberty"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x6
	.byte	0xd6
	.long	0xa8
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x5
	.byte	0x4
	.long	0xaf
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x4
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
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
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x5
	.byte	0x3b
	.long	0xc8
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x5
	.byte	0x90
	.long	0xbc
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x5
	.byte	0x91
	.long	0x15a
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.long	0xf6
	.uleb128 0x5
	.byte	0x4
	.long	0x198
	.uleb128 0x7
	.uleb128 0x2
	.string	"FILE"
	.byte	0x3
	.byte	0x2e
	.long	0x1a5
	.uleb128 0x8
	.long	0x420
	.long	.LASF1
	.byte	0x94
	.byte	0x3
	.byte	0x2e
	.uleb128 0x9
	.string	"_flags"
	.byte	0x4
	.value	0x10c
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"_IO_read_ptr"
	.byte	0x4
	.value	0x111
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"_IO_read_end"
	.byte	0x4
	.value	0x112
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"_IO_read_base"
	.byte	0x4
	.value	0x113
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"_IO_write_base"
	.byte	0x4
	.value	0x114
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"_IO_write_ptr"
	.byte	0x4
	.value	0x115
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"_IO_write_end"
	.byte	0x4
	.value	0x116
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"_IO_buf_base"
	.byte	0x4
	.value	0x117
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"_IO_buf_end"
	.byte	0x4
	.value	0x118
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"_IO_save_base"
	.byte	0x4
	.value	0x11a
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"_IO_backup_base"
	.byte	0x4
	.value	0x11b
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"_IO_save_end"
	.byte	0x4
	.value	0x11c
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"_markers"
	.byte	0x4
	.value	0x11e
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"_chain"
	.byte	0x4
	.value	0x120
	.long	0x477
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"_fileno"
	.byte	0x4
	.value	0x122
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"_flags2"
	.byte	0x4
	.value	0x126
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"_old_offset"
	.byte	0x4
	.value	0x128
	.long	0x16a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"_cur_column"
	.byte	0x4
	.value	0x12c
	.long	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"_vtable_offset"
	.byte	0x4
	.value	0x12d
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"_shortbuf"
	.byte	0x4
	.value	0x12e
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"_lock"
	.byte	0x4
	.value	0x132
	.long	0x48d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"_offset"
	.byte	0x4
	.value	0x13b
	.long	0x179
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"__pad1"
	.byte	0x4
	.value	0x144
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"__pad2"
	.byte	0x4
	.value	0x145
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"__pad3"
	.byte	0x4
	.value	0x146
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"__pad4"
	.byte	0x4
	.value	0x147
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"__pad5"
	.byte	0x4
	.value	0x148
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"_mode"
	.byte	0x4
	.value	0x14a
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"_unused2"
	.byte	0x4
	.value	0x14c
	.long	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xa
	.string	"_IO_lock_t"
	.byte	0x4
	.byte	0xb0
	.uleb128 0xb
	.long	0x471
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x4
	.byte	0xb6
	.uleb128 0xc
	.string	"_next"
	.byte	0x4
	.byte	0xb7
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"_sbuf"
	.byte	0x4
	.byte	0xb8
	.long	0x477
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"_pos"
	.byte	0x4
	.byte	0xbc
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x42e
	.uleb128 0x5
	.byte	0x4
	.long	0x1a5
	.uleb128 0xd
	.long	0x48d
	.long	0xf6
	.uleb128 0xe
	.long	0xd9
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x420
	.uleb128 0xd
	.long	0x4a3
	.long	0xf6
	.uleb128 0xe
	.long	0xd9
	.byte	0x27
	.byte	0x0
	.uleb128 0xb
	.long	0x4ee
	.string	"partition_elem"
	.byte	0xc
	.byte	0x2
	.byte	0x33
	.uleb128 0xf
	.long	.LASF2
	.byte	0x2
	.byte	0x36
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"next"
	.byte	0x2
	.byte	0x39
	.long	0x4ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"class_count"
	.byte	0x2
	.byte	0x3c
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x4a3
	.uleb128 0xb
	.long	0x527
	.string	"partition_def"
	.byte	0x10
	.byte	0x2
	.byte	0x40
	.uleb128 0xf
	.long	.LASF3
	.byte	0x2
	.byte	0x42
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF4
	.byte	0x2
	.byte	0x44
	.long	0x527
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xd
	.long	0x537
	.long	0x4a3
	.uleb128 0xe
	.long	0xd9
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"partition"
	.byte	0x2
	.byte	0x45
	.long	0x548
	.uleb128 0x5
	.byte	0x4
	.long	0x4f4
	.uleb128 0x10
	.long	0x59f
	.byte	0x1
	.string	"partition_new"
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.long	0x537
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0x11
	.long	.LASF3
	.byte	0x1
	.byte	0x2c
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"e"
	.byte	0x1
	.byte	0x2e
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"part"
	.byte	0x1
	.byte	0x30
	.long	0x537
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x13
	.long	0x5d5
	.byte	0x1
	.string	"partition_delete"
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0x14
	.string	"part"
	.byte	0x1
	.byte	0x42
	.long	0x537
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x10
	.long	0x69c
	.byte	0x1
	.string	"partition_union"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.long	0xaf
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0x14
	.string	"part"
	.byte	0x1
	.byte	0x4e
	.long	0x537
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"elem1"
	.byte	0x1
	.byte	0x4f
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"elem2"
	.byte	0x1
	.byte	0x50
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.byte	0x52
	.long	0x4ee
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"e1"
	.byte	0x1
	.byte	0x53
	.long	0x4ee
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"e2"
	.byte	0x1
	.byte	0x54
	.long	0x4ee
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0x55
	.long	0x4ee
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.string	"old_next"
	.byte	0x1
	.byte	0x56
	.long	0x4ee
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF2
	.byte	0x1
	.byte	0x58
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x12
	.string	"temp"
	.byte	0x1
	.byte	0x62
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.long	0x6fc
	.string	"elem_compare"
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.long	0xaf
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0x14
	.string	"elem1"
	.byte	0x1
	.byte	0x82
	.long	0x192
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"elem2"
	.byte	0x1
	.byte	0x83
	.long	0x192
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.string	"e1"
	.byte	0x1
	.byte	0x85
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x12
	.string	"e2"
	.byte	0x1
	.byte	0x86
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x13
	.long	0x7c0
	.byte	0x1
	.string	"partition_print"
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0x14
	.string	"part"
	.byte	0x1
	.byte	0x94
	.long	0x537
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"fp"
	.byte	0x1
	.byte	0x95
	.long	0x7c0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.string	"done"
	.byte	0x1
	.byte	0x97
	.long	0x18c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.long	.LASF3
	.byte	0x1
	.byte	0x98
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.byte	0x99
	.long	0x4ee
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"class_elements"
	.byte	0x1
	.byte	0x9a
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"e"
	.byte	0x1
	.byte	0x9b
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0xa9
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.string	"count"
	.byte	0x1
	.byte	0xaa
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xab
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x199
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x5d
	.value	0x2
	.long	.Ldebug_info0
	.long	0x7c7
	.long	0x54e
	.string	"partition_new"
	.long	0x59f
	.string	"partition_delete"
	.long	0x5d5
	.string	"partition_union"
	.long	0x6fc
	.string	"partition_print"
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
.LASF1:
	.string	"_IO_FILE"
.LASF4:
	.string	"elements"
.LASF3:
	.string	"num_elements"
.LASF2:
	.string	"class_element"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
