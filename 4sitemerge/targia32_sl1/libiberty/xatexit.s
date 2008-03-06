	.file	"xatexit.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.data.rel.local,"aw",@progbits
	.align 4
	.type	xatexit_head, @object
	.size	xatexit_head, 4
xatexit_head:
	.long	xatexit_first
	.text
.globl xatexit
	.type	xatexit, @function
xatexit:
.LFB2:
	.file 1 "../../libiberty/xatexit.c"
	.loc 1 70 0
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
	.loc 1 74 0
	movl	_xexit_cleanup@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2
	.loc 1 75 0
	movl	_xexit_cleanup@GOT(%ebx), %edx
	leal	xatexit_cleanup@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
.L2:
	.loc 1 77 0
	movl	xatexit_head@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 78 0
	movl	-8(%ebp), %edx
	movl	4(%edx), %eax
	cmpl	$31, %eax
	jle	.L4
	.loc 1 80 0
	movl	$136, (%esp)
	call	malloc@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L6
	.loc 1 81 0
	movl	$-1, -12(%ebp)
	jmp	.L8
.L6:
	.loc 1 82 0
	movl	-8(%ebp), %ecx
	movl	$0, 4(%ecx)
	.loc 1 83 0
	movl	xatexit_head@GOTOFF(%ebx), %eax
	movl	-8(%ebp), %edx
	movl	%eax, (%edx)
	.loc 1 84 0
	movl	-8(%ebp), %ecx
	movl	%ecx, xatexit_head@GOTOFF(%ebx)
.L4:
	.loc 1 86 0
	movl	-8(%ebp), %edx
	movl	4(%edx), %eax
	movl	8(%ebp), %edx
	movl	-8(%ebp), %ecx
	movl	%edx, 8(%ecx,%eax,4)
	addl	$1, %eax
	movl	-8(%ebp), %edx
	movl	%eax, 4(%edx)
	.loc 1 87 0
	movl	$0, -12(%ebp)
.L8:
	movl	-12(%ebp), %eax
	.loc 1 88 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE2:
	.size	xatexit, .-xatexit
	.type	xatexit_cleanup, @function
xatexit_cleanup:
.LFB3:
	.loc 1 94 0
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
	.loc 1 98 0
	movl	xatexit_head@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	jmp	.L11
.L12:
	.loc 1 99 0
	movl	-12(%ebp), %edx
	movl	4(%edx), %edx
	movl	%edx, -8(%ebp)
	jmp	.L13
.L14:
	.loc 1 100 0
	movl	-8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	8(%edx,%eax,4), %eax
	call	*%eax
.L13:
	.loc 1 99 0
	subl	$1, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jns	.L14
	.loc 1 98 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L11:
	cmpl	$0, -12(%ebp)
	jne	.L12
	.loc 1 101 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE3:
	.size	xatexit_cleanup, .-xatexit_cleanup
	.local	xatexit_first
	.comm	xatexit_first,136,32
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
	.section	.debug_info
	.long	0x260
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libiberty/xatexit.c"
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
	.uleb128 0x4
	.long	0x180
	.string	"xatexit"
	.byte	0x88
	.byte	0x1
	.byte	0x33
	.uleb128 0x5
	.string	"next"
	.byte	0x1
	.byte	0x34
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"ind"
	.byte	0x1
	.byte	0x35
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"fns"
	.byte	0x1
	.byte	0x36
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x144
	.uleb128 0x7
	.long	0x196
	.long	0x198
	.uleb128 0x8
	.long	0x13d
	.byte	0x1f
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.long	0x196
	.uleb128 0xa
	.long	0x1d9
	.byte	0x1
	.string	"xatexit"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.long	0x98
	.long	.LFB2
	.long	.LFE2
	.long	.LLST0
	.uleb128 0xb
	.string	"fn"
	.byte	0x1
	.byte	0x45
	.long	0x198
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"p"
	.byte	0x1
	.byte	0x47
	.long	0x180
	.byte	0x2
	.byte	0x75
	.sleb128 -8
	.byte	0x0
	.uleb128 0xd
	.long	0x216
	.string	"xatexit_cleanup"
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.long	.LLST1
	.uleb128 0xc
	.string	"p"
	.byte	0x1
	.byte	0x5f
	.long	0x180
	.byte	0x2
	.byte	0x75
	.sleb128 -12
	.uleb128 0xc
	.string	"n"
	.byte	0x1
	.byte	0x60
	.long	0x98
	.byte	0x2
	.byte	0x75
	.sleb128 -8
	.byte	0x0
	.uleb128 0xc
	.string	"xatexit_first"
	.byte	0x1
	.byte	0x3b
	.long	0x144
	.byte	0x5
	.byte	0x3
	.long	xatexit_first
	.uleb128 0xc
	.string	"xatexit_head"
	.byte	0x1
	.byte	0x3e
	.long	0x180
	.byte	0x5
	.byte	0x3
	.long	xatexit_head
	.uleb128 0xe
	.string	"_xexit_cleanup"
	.byte	0x1
	.byte	0x2f
	.long	0x198
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
	.uleb128 0x38
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x1a
	.value	0x2
	.long	.Ldebug_info0
	.long	0x264
	.long	0x19e
	.string	"xatexit"
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
