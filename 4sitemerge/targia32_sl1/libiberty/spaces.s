	.file	"spaces.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	maxsize.1395
	.comm	maxsize.1395,4,4
	.local	buf.1394
	.comm	buf.1394,4,4
.globl spaces
	.type	spaces, @function
spaces:
.LFB2:
	.file 1 "../../libiberty/spaces.c"
	.loc 1 47 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$20, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 52 0
	movl	maxsize.1395@GOTOFF(%ebx), %eax
	cmpl	%eax, 8(%ebp)
	jle	.L2
	.loc 1 54 0
	movl	buf.1394@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L4
	.loc 1 56 0
	movl	buf.1394@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L4:
	.loc 1 58 0
	movl	8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, buf.1394@GOTOFF(%ebx)
	.loc 1 59 0
	movl	buf.1394@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L6
	.loc 1 60 0
	movl	$0, -12(%ebp)
	jmp	.L8
.L6:
	.loc 1 61 0
	movl	buf.1394@GOTOFF(%ebx), %eax
	movl	8(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -8(%ebp)
	jmp	.L9
.L10:
	.loc 1 63 0
	subl	$1, -8(%ebp)
	movl	-8(%ebp), %eax
	movb	$32, (%eax)
.L9:
	.loc 1 61 0
	movl	buf.1394@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L10
	.loc 1 65 0
	movl	8(%ebp), %eax
	movl	%eax, maxsize.1395@GOTOFF(%ebx)
	.loc 1 66 0
	movl	buf.1394@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %eax
	movb	$0, (%eax)
.L2:
	.loc 1 68 0
	movl	buf.1394@GOTOFF(%ebx), %edx
	movl	maxsize.1395@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, -12(%ebp)
.L8:
	movl	-12(%ebp), %eax
	.loc 1 69 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE2:
	.size	spaces, .-spaces
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
	.section	.debug_info
	.long	0x127
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libiberty/spaces.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libiberty"
	.uleb128 0x2
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.long	0x119
	.byte	0x1
	.string	"spaces"
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.long	0x119
	.long	.LFB2
	.long	.LFE2
	.long	.LLST0
	.uleb128 0x4
	.string	"count"
	.byte	0x1
	.byte	0x2e
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.string	"t"
	.byte	0x1
	.byte	0x30
	.long	0x124
	.byte	0x2
	.byte	0x75
	.sleb128 -8
	.uleb128 0x5
	.string	"buf"
	.byte	0x1
	.byte	0x31
	.long	0x124
	.byte	0x5
	.byte	0x3
	.long	buf.1394
	.uleb128 0x5
	.string	"maxsize"
	.byte	0x1
	.byte	0x32
	.long	0x97
	.byte	0x5
	.byte	0x3
	.long	maxsize.1395
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x11f
	.uleb128 0x7
	.long	0xae
	.uleb128 0x6
	.byte	0x4
	.long	0xae
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x19
	.value	0x2
	.long	.Ldebug_info0
	.long	0x12b
	.long	0xb6
	.string	"spaces"
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
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
