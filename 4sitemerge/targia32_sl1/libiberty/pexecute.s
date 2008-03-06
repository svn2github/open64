	.file	"pexecute.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.align 4
.LC0:
	.string	"installation problem, cannot exec `%s'"
	.section	.data.rel.local,"aw",@progbits
	.align 4
	.type	install_error_msg, @object
	.size	install_error_msg, 4
install_error_msg:
	.long	.LC0
	.local	last_pipe_input.4018
	.comm	last_pipe_input.4018,4,4
	.section	.rodata
.LC1:
	.string	"pipe"
.LC2:
	.string	"fork"
.LC3:
	.string	"%s: "
.LC4:
	.string	": %s\n"
	.text
.globl pexecute
	.type	pexecute, @function
pexecute:
.LFB5:
	.file 1 "../../libiberty/pexecute.c"
	.loc 1 678 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$68, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 679 0
	movl	32(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L2
	movl	execvp@GOT(%ebx), %eax
	movl	%eax, -44(%ebp)
	jmp	.L4
.L2:
	movl	execv@GOT(%ebx), %eax
	movl	%eax, -44(%ebp)
.L4:
	movl	-44(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 690 0
	movl	32(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L5
	.loc 1 691 0
	movl	$0, last_pipe_input.4018@GOTOFF(%ebx)
.L5:
	.loc 1 693 0
	movl	last_pipe_input.4018@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 697 0
	movl	32(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L7
	.loc 1 699 0
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	pipe@PLT
	testl	%eax, %eax
	jns	.L9
	.loc 1 701 0
	movl	24(%ebp), %eax
	leal	.LC1@GOTOFF(%ebx), %edx
	movl	%edx, (%eax)
	.loc 1 702 0
	movl	28(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 703 0
	movl	$-1, -40(%ebp)
	jmp	.L11
.L9:
	.loc 1 705 0
	movl	-32(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 706 0
	movl	-36(%ebp), %eax
	movl	%eax, last_pipe_input.4018@GOTOFF(%ebx)
	jmp	.L12
.L7:
	.loc 1 711 0
	movl	$1, -16(%ebp)
	.loc 1 712 0
	movl	$0, last_pipe_input.4018@GOTOFF(%ebx)
.L12:
	.loc 1 716 0
	movl	$1, -8(%ebp)
	.loc 1 717 0
	movl	$-1, -24(%ebp)
	.loc 1 718 0
	movl	$0, -12(%ebp)
	jmp	.L13
.L14:
	.loc 1 720 0
	call	fork@PLT
	movl	%eax, -24(%ebp)
	.loc 1 721 0
	cmpl	$0, -24(%ebp)
	jns	.L15
	.loc 1 723 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	sleep@PLT
	.loc 1 724 0
	sall	-8(%ebp)
	.loc 1 718 0
	addl	$1, -12(%ebp)
.L13:
	cmpl	$3, -12(%ebp)
	jle	.L14
.L15:
	.loc 1 727 0
	movl	-24(%ebp), %eax
	movl	%eax, -48(%ebp)
	cmpl	$-1, -48(%ebp)
	je	.L18
	cmpl	$0, -48(%ebp)
	je	.L19
	jmp	.L17
.L18:
	.loc 1 730 0
	movl	24(%ebp), %eax
	leal	.LC2@GOTOFF(%ebx), %edx
	movl	%edx, (%eax)
	.loc 1 731 0
	movl	28(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 732 0
	movl	$-1, -40(%ebp)
	jmp	.L11
.L19:
	.loc 1 736 0
	cmpl	$0, -20(%ebp)
	je	.L20
	.loc 1 738 0
	movl	$0, (%esp)
	call	close@PLT
	.loc 1 739 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	dup@PLT
	.loc 1 740 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	close@PLT
.L20:
	.loc 1 742 0
	cmpl	$1, -16(%ebp)
	je	.L22
	.loc 1 744 0
	movl	$1, (%esp)
	call	close@PLT
	.loc 1 745 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	dup@PLT
	.loc 1 746 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	close@PLT
.L22:
	.loc 1 750 0
	movl	last_pipe_input.4018@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L24
	.loc 1 751 0
	movl	last_pipe_input.4018@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	close@PLT
.L24:
	.loc 1 754 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	-28(%ebp), %eax
	call	*%eax
	.loc 1 756 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 757 0
	movl	install_error_msg@GOTOFF(%ebx), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 758 0
	call	__errno_location@PLT
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	xstrerror@PLT
	movl	%eax, %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 759 0
	movl	$-1, (%esp)
	call	exit@PLT
.L17:
	.loc 1 766 0
	cmpl	$0, -20(%ebp)
	je	.L26
	.loc 1 767 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	close@PLT
.L26:
	.loc 1 768 0
	cmpl	$1, -16(%ebp)
	je	.L28
	.loc 1 769 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	close@PLT
.L28:
	.loc 1 772 0
	movl	-24(%ebp), %eax
	movl	%eax, -40(%ebp)
.L11:
	movl	-40(%ebp), %eax
	.loc 1 774 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE5:
	.size	pexecute, .-pexecute
.globl pwait
	.type	pwait, @function
pwait:
.LFB6:
	.loc 1 781 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$4, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 787 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	wait@PLT
	movl	%eax, 8(%ebp)
	.loc 1 789 0
	movl	8(%ebp), %eax
	.loc 1 790 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE6:
	.size	pwait, .-pwait
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
	.long	.LCFI3-.LCFI1
	.byte	0x83
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
	.long	.LCFI4-.LFB6
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
	.file 2 "/usr/include/stdio.h"
	.file 3 "/usr/include/libio.h"
	.file 4 "/usr/include/bits/types.h"
	.file 5 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
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
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x6a1
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libiberty/pexecute.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libiberty"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x5
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
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x4
	.byte	0x3b
	.long	0x10d
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x4
	.byte	0x90
	.long	0x157
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x4
	.byte	0x91
	.long	0x138
	.uleb128 0x5
	.long	0x184
	.long	0x106
	.uleb128 0x6
	.long	0x184
	.byte	0x1
	.byte	0x0
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x8
	.byte	0x4
	.long	0x193
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.long	0x416
	.long	.LASF1
	.byte	0x94
	.byte	0x2
	.byte	0x2e
	.uleb128 0xa
	.string	"_flags"
	.byte	0x3
	.value	0x10c
	.long	0x106
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.string	"_IO_read_ptr"
	.byte	0x3
	.value	0x111
	.long	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"_IO_read_end"
	.byte	0x3
	.value	0x112
	.long	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"_IO_read_base"
	.byte	0x3
	.value	0x113
	.long	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"_IO_write_base"
	.byte	0x3
	.value	0x114
	.long	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"_IO_write_ptr"
	.byte	0x3
	.value	0x115
	.long	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"_IO_write_end"
	.byte	0x3
	.value	0x116
	.long	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.string	"_IO_buf_base"
	.byte	0x3
	.value	0x117
	.long	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.string	"_IO_buf_end"
	.byte	0x3
	.value	0x118
	.long	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.string	"_IO_save_base"
	.byte	0x3
	.value	0x11a
	.long	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.string	"_IO_backup_base"
	.byte	0x3
	.value	0x11b
	.long	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.string	"_IO_save_end"
	.byte	0x3
	.value	0x11c
	.long	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.string	"_markers"
	.byte	0x3
	.value	0x11e
	.long	0x472
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.string	"_chain"
	.byte	0x3
	.value	0x120
	.long	0x478
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.string	"_fileno"
	.byte	0x3
	.value	0x122
	.long	0x106
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.string	"_flags2"
	.byte	0x3
	.value	0x126
	.long	0x106
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.string	"_old_offset"
	.byte	0x3
	.value	0x128
	.long	0x148
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.string	"_cur_column"
	.byte	0x3
	.value	0x12c
	.long	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.string	"_vtable_offset"
	.byte	0x3
	.value	0x12d
	.long	0xea
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xa
	.string	"_shortbuf"
	.byte	0x3
	.value	0x12e
	.long	0x47e
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xa
	.string	"_lock"
	.byte	0x3
	.value	0x132
	.long	0x48e
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.string	"_offset"
	.byte	0x3
	.value	0x13b
	.long	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.string	"__pad1"
	.byte	0x3
	.value	0x144
	.long	0x18b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.string	"__pad2"
	.byte	0x3
	.value	0x145
	.long	0x18b
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.string	"__pad3"
	.byte	0x3
	.value	0x146
	.long	0x18b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xa
	.string	"__pad4"
	.byte	0x3
	.value	0x147
	.long	0x18b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.string	"__pad5"
	.byte	0x3
	.value	0x148
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xa
	.string	"_mode"
	.byte	0x3
	.value	0x14a
	.long	0x106
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.string	"_unused2"
	.byte	0x3
	.value	0x14c
	.long	0x494
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x41c
	.uleb128 0xb
	.long	0x193
	.uleb128 0xc
	.string	"_IO_lock_t"
	.byte	0x3
	.byte	0xb0
	.uleb128 0xd
	.long	0x472
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x3
	.byte	0xb6
	.uleb128 0xe
	.string	"_next"
	.byte	0x3
	.byte	0xb7
	.long	0x472
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_sbuf"
	.byte	0x3
	.byte	0xb8
	.long	0x478
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_pos"
	.byte	0x3
	.byte	0xbc
	.long	0x106
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x42f
	.uleb128 0x8
	.byte	0x4
	.long	0x19b
	.uleb128 0x5
	.long	0x48e
	.long	0x193
	.uleb128 0x6
	.long	0x184
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x421
	.uleb128 0x5
	.long	0x4a4
	.long	0x193
	.uleb128 0x6
	.long	0x184
	.byte	0x27
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x106
	.uleb128 0xf
	.long	0x600
	.byte	0x1
	.string	"pexecute"
	.byte	0x1
	.value	0x2a6
	.byte	0x1
	.long	0x106
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0x10
	.string	"program"
	.byte	0x1
	.value	0x2a0
	.long	0x416
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"argv"
	.byte	0x1
	.value	0x2a1
	.long	0x600
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.string	"this_pname"
	.byte	0x1
	.value	0x2a2
	.long	0x416
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.string	"temp_base"
	.byte	0x1
	.value	0x2a3
	.long	0x416
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x10
	.string	"errmsg_fmt"
	.byte	0x1
	.value	0x2a4
	.long	0x60b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x10
	.string	"errmsg_arg"
	.byte	0x1
	.value	0x2a4
	.long	0x60b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x10
	.string	"flags"
	.byte	0x1
	.value	0x2a5
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x11
	.string	"func"
	.byte	0x1
	.value	0x2a7
	.long	0x61c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.string	"pid"
	.byte	0x1
	.value	0x2a8
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.string	"pdes"
	.byte	0x1
	.value	0x2a9
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.string	"input_desc"
	.byte	0x1
	.value	0x2aa
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.string	"output_desc"
	.byte	0x1
	.value	0x2aa
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"retries"
	.byte	0x1
	.value	0x2ab
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.string	"sleep_interval"
	.byte	0x1
	.value	0x2ab
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x11
	.string	"last_pipe_input"
	.byte	0x1
	.value	0x2af
	.long	0x106
	.byte	0x5
	.byte	0x3
	.long	last_pipe_input.4018
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x606
	.uleb128 0xb
	.long	0x18d
	.uleb128 0x8
	.byte	0x4
	.long	0x18d
	.uleb128 0x12
	.long	0x61c
	.long	0x106
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x611
	.uleb128 0xf
	.long	0x675
	.byte	0x1
	.string	"pwait"
	.byte	0x1
	.value	0x30d
	.byte	0x1
	.long	0x106
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0x10
	.string	"pid"
	.byte	0x1
	.value	0x30a
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"status"
	.byte	0x1
	.value	0x30b
	.long	0x4a4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.string	"flags"
	.byte	0x1
	.value	0x30c
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x14
	.string	"install_error_msg"
	.byte	0x1
	.byte	0x3f
	.long	0x18d
	.byte	0x5
	.byte	0x3
	.long	install_error_msg
	.uleb128 0x15
	.string	"stderr"
	.byte	0x2
	.byte	0x90
	.long	0x478
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x18
	.byte	0x0
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.long	0x25
	.value	0x2
	.long	.Ldebug_info0
	.long	0x6a5
	.long	0x4aa
	.string	"pexecute"
	.long	0x622
	.string	"pwait"
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
