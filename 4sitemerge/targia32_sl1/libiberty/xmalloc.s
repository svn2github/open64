	.file	"xmalloc.c"
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
	.type	name, @object
	.size	name, 4
name:
	.long	.LC0
	.local	first_break
	.comm	first_break,4,4
	.text
.globl xmalloc_set_program_name
	.type	xmalloc_set_program_name, @function
xmalloc_set_program_name:
.LFB2:
	.file 1 "../../libiberty/xmalloc.c"
	.loc 1 105 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$4, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 106 0
	movl	8(%ebp), %eax
	movl	%eax, name@GOTOFF(%ebx)
	.loc 1 109 0
	movl	first_break@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L4
	.loc 1 110 0
	movl	$0, (%esp)
	call	sbrk@PLT
	movl	%eax, first_break@GOTOFF(%ebx)
.L4:
	.loc 1 112 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE2:
	.size	xmalloc_set_program_name, .-xmalloc_set_program_name
	.section	.rodata
.LC1:
	.string	": "
	.align 4
.LC2:
	.string	"\n%s%sout of memory allocating %lu bytes after a total of %lu bytes\n"
	.text
.globl xmalloc_failed
	.type	xmalloc_failed, @function
xmalloc_failed:
.LFB3:
	.loc 1 117 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$52, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 122 0
	movl	first_break@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L6
	.loc 1 123 0
	movl	$0, (%esp)
	call	sbrk@PLT
	movl	%eax, %edx
	movl	first_break@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -8(%ebp)
	jmp	.L8
.L6:
	.loc 1 125 0
	movl	$0, (%esp)
	call	sbrk@PLT
	movl	%eax, %edx
	movl	environ@GOT(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -8(%ebp)
.L8:
	.loc 1 126 0
	movl	name@GOTOFF(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L9
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L11
.L9:
	leal	.LC0@GOTOFF(%ebx), %ecx
	movl	%ecx, -24(%ebp)
.L11:
	movl	name@GOTOFF(%ebx), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-8(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 136 0
	movl	$1, (%esp)
	call	xexit@PLT
.LFE3:
	.size	xmalloc_failed, .-xmalloc_failed
.globl xmalloc
	.type	xmalloc, @function
xmalloc:
.LFB4:
	.loc 1 142 0
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
	.loc 1 145 0
	cmpl	$0, 8(%ebp)
	jne	.L14
	.loc 1 146 0
	movl	$1, 8(%ebp)
.L14:
	.loc 1 147 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 148 0
	cmpl	$0, -8(%ebp)
	jne	.L16
	.loc 1 149 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	xmalloc_failed@PLT
.L16:
	.loc 1 151 0
	movl	-8(%ebp), %eax
	.loc 1 152 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE4:
	.size	xmalloc, .-xmalloc
.globl xcalloc
	.type	xcalloc, @function
xcalloc:
.LFB5:
	.loc 1 157 0
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
	.loc 1 160 0
	cmpl	$0, 8(%ebp)
	je	.L20
	cmpl	$0, 12(%ebp)
	jne	.L22
.L20:
	.loc 1 161 0
	movl	$1, 12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%ebp)
.L22:
	.loc 1 163 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	calloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 164 0
	cmpl	$0, -8(%ebp)
	jne	.L23
	.loc 1 165 0
	movl	8(%ebp), %eax
	imull	12(%ebp), %eax
	movl	%eax, (%esp)
	call	xmalloc_failed@PLT
.L23:
	.loc 1 167 0
	movl	-8(%ebp), %eax
	.loc 1 168 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE5:
	.size	xcalloc, .-xcalloc
.globl xrealloc
	.type	xrealloc, @function
xrealloc:
.LFB6:
	.loc 1 174 0
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
	.loc 1 177 0
	cmpl	$0, 12(%ebp)
	jne	.L27
	.loc 1 178 0
	movl	$1, 12(%ebp)
.L27:
	.loc 1 179 0
	cmpl	$0, 8(%ebp)
	jne	.L29
	.loc 1 180 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, -8(%ebp)
	jmp	.L31
.L29:
	.loc 1 182 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	realloc@PLT
	movl	%eax, -8(%ebp)
.L31:
	.loc 1 183 0
	cmpl	$0, -8(%ebp)
	jne	.L32
	.loc 1 184 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	xmalloc_failed@PLT
.L32:
	.loc 1 186 0
	movl	-8(%ebp), %eax
	.loc 1 187 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE6:
	.size	xrealloc, .-xrealloc
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
	.long	.LFB2
	.long	.LFE2-.LFB2
	.byte	0x4
	.long	.LCFI0-.LFB2
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
	.long	.LFB3
	.long	.LFE3-.LFB3
	.byte	0x4
	.long	.LCFI4-.LFB3
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
	.long	.LFB4
	.long	.LFE4-.LFB4
	.byte	0x4
	.long	.LCFI8-.LFB4
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
	.long	.LFB5
	.long	.LFE5-.LFB5
	.byte	0x4
	.long	.LCFI12-.LFB5
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
	.long	.LFB6
	.long	.LFE6-.LFB6
	.byte	0x4
	.long	.LCFI16-.LFB6
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
	.file 2 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 3 "/usr/include/stdio.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/bits/types.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB2-.Ltext0
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
	.long	.LFE2-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB3-.Ltext0
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
	.long	.LFE3-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB4-.Ltext0
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
	.long	.LFE4-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB5-.Ltext0
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
	.long	.LFE5-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB6-.Ltext0
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
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x646
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libiberty/xmalloc.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libiberty"
	.uleb128 0x2
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.string	"size_t"
	.byte	0x2
	.byte	0xd6
	.long	0xad
	.uleb128 0x4
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"char"
	.byte	0x1
	.byte	0x8
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
	.uleb128 0x3
	.string	"__quad_t"
	.byte	0x5
	.byte	0x3b
	.long	0x114
	.uleb128 0x3
	.string	"__off_t"
	.byte	0x5
	.byte	0x90
	.long	0x15e
	.uleb128 0x2
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.string	"__off64_t"
	.byte	0x5
	.byte	0x91
	.long	0x13f
	.uleb128 0x4
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0xb4
	.uleb128 0x7
	.long	0x405
	.long	.LASF1
	.byte	0x94
	.byte	0x3
	.byte	0x2e
	.uleb128 0x8
	.string	"_flags"
	.byte	0x4
	.value	0x10c
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"_IO_read_ptr"
	.byte	0x4
	.value	0x111
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"_IO_read_end"
	.byte	0x4
	.value	0x112
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"_IO_read_base"
	.byte	0x4
	.value	0x113
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"_IO_write_base"
	.byte	0x4
	.value	0x114
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"_IO_write_ptr"
	.byte	0x4
	.value	0x115
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"_IO_write_end"
	.byte	0x4
	.value	0x116
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"_IO_buf_base"
	.byte	0x4
	.value	0x117
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"_IO_buf_end"
	.byte	0x4
	.value	0x118
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"_IO_save_base"
	.byte	0x4
	.value	0x11a
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"_IO_backup_base"
	.byte	0x4
	.value	0x11b
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"_IO_save_end"
	.byte	0x4
	.value	0x11c
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.string	"_markers"
	.byte	0x4
	.value	0x11e
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.string	"_chain"
	.byte	0x4
	.value	0x120
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.string	"_fileno"
	.byte	0x4
	.value	0x122
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.string	"_flags2"
	.byte	0x4
	.value	0x126
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.string	"_old_offset"
	.byte	0x4
	.value	0x128
	.long	0x14f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.string	"_cur_column"
	.byte	0x4
	.value	0x12c
	.long	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.string	"_vtable_offset"
	.byte	0x4
	.value	0x12d
	.long	0xf8
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x8
	.string	"_shortbuf"
	.byte	0x4
	.value	0x12e
	.long	0x46d
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x8
	.string	"_lock"
	.byte	0x4
	.value	0x132
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.string	"_offset"
	.byte	0x4
	.value	0x13b
	.long	0x16a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.string	"__pad1"
	.byte	0x4
	.value	0x144
	.long	0x182
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.string	"__pad2"
	.byte	0x4
	.value	0x145
	.long	0x182
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.string	"__pad3"
	.byte	0x4
	.value	0x146
	.long	0x182
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.string	"__pad4"
	.byte	0x4
	.value	0x147
	.long	0x182
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.string	"__pad5"
	.byte	0x4
	.value	0x148
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.string	"_mode"
	.byte	0x4
	.value	0x14a
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.string	"_unused2"
	.byte	0x4
	.value	0x14c
	.long	0x483
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x40b
	.uleb128 0x9
	.long	0xb4
	.uleb128 0xa
	.string	"_IO_lock_t"
	.byte	0x4
	.byte	0xb0
	.uleb128 0xb
	.long	0x461
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x4
	.byte	0xb6
	.uleb128 0xc
	.string	"_next"
	.byte	0x4
	.byte	0xb7
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"_sbuf"
	.byte	0x4
	.byte	0xb8
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"_pos"
	.byte	0x4
	.byte	0xbc
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x41e
	.uleb128 0x6
	.byte	0x4
	.long	0x18a
	.uleb128 0xd
	.long	0x47d
	.long	0xb4
	.uleb128 0xe
	.long	0x17b
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x410
	.uleb128 0xd
	.long	0x493
	.long	0xb4
	.uleb128 0xe
	.long	0x17b
	.byte	0x27
	.byte	0x0
	.uleb128 0xf
	.long	0x4ce
	.byte	0x1
	.string	"xmalloc_set_program_name"
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.long	.LLST0
	.uleb128 0x10
	.string	"s"
	.byte	0x1
	.byte	0x68
	.long	0x405
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xf
	.long	0x516
	.byte	0x1
	.string	"xmalloc_failed"
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.long	.LLST1
	.uleb128 0x10
	.string	"size"
	.byte	0x1
	.byte	0x74
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"allocated"
	.byte	0x1
	.byte	0x78
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x12
	.long	0x555
	.byte	0x1
	.string	"xmalloc"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.long	0x182
	.long	.LFB4
	.long	.LFE4
	.long	.LLST2
	.uleb128 0x10
	.string	"size"
	.byte	0x1
	.byte	0x8d
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.byte	0x8f
	.long	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x12
	.long	0x5a6
	.byte	0x1
	.string	"xcalloc"
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.long	0x182
	.long	.LFB5
	.long	.LFE5
	.long	.LLST3
	.uleb128 0x10
	.string	"nelem"
	.byte	0x1
	.byte	0x9c
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"elsize"
	.byte	0x1
	.byte	0x9c
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.byte	0x9e
	.long	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x12
	.long	0x5f7
	.byte	0x1
	.string	"xrealloc"
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.long	0x182
	.long	.LFB6
	.long	.LFE6
	.long	.LLST4
	.uleb128 0x10
	.string	"oldmem"
	.byte	0x1
	.byte	0xac
	.long	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"size"
	.byte	0x1
	.byte	0xad
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.byte	0xaf
	.long	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x11
	.string	"name"
	.byte	0x1
	.byte	0x5e
	.long	0x405
	.byte	0x5
	.byte	0x3
	.long	name
	.uleb128 0x11
	.string	"first_break"
	.byte	0x1
	.byte	0x63
	.long	0x184
	.byte	0x5
	.byte	0x3
	.long	first_break
	.uleb128 0x14
	.string	"stderr"
	.byte	0x3
	.byte	0x90
	.long	0x467
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"environ"
	.byte	0x1
	.byte	0x77
	.long	0x643
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.long	0x184
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x14
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
	.long	0x63
	.value	0x2
	.long	.Ldebug_info0
	.long	0x64a
	.long	0x493
	.string	"xmalloc_set_program_name"
	.long	0x4ce
	.string	"xmalloc_failed"
	.long	0x516
	.string	"xmalloc"
	.long	0x555
	.string	"xcalloc"
	.long	0x5a6
	.string	"xrealloc"
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
.LASF2:
	.string	"newmem"
.LASF0:
	.string	"unsigned int"
.LASF1:
	.string	"_IO_FILE"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
