	.file	"alloca.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	last_alloca_header
	.comm	last_alloca_header,4,4
.globl C_alloca
	.type	C_alloca, @function
C_alloca:
.LFB5:
	.file 1 "../../libiberty/alloca.c"
	.loc 1 158 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%esi
.LCFI2:
	pushl	%ebx
.LCFI3:
	subl	$48, %esp
.LCFI4:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 160 0
	leal	-9(%ebp), %eax
	movl	%eax, -36(%ebp)
.LBB2:
	.loc 1 173 0
	movl	last_alloca_header@GOTOFF(%ebx), %edx
	movl	%edx, -32(%ebp)
	jmp	.L2
.L3:
	.loc 1 174 0
	movl	-32(%ebp), %edx
	movl	4(%edx), %eax
	cmpl	-36(%ebp), %eax
	jae	.L4
.LBB3:
	.loc 1 177 0
	movl	-32(%ebp), %eax
	movl	(%eax), %esi
	.loc 1 179 0
	movl	-32(%ebp), %edx
	movl	%edx, (%esp)
	call	free@PLT
	.loc 1 181 0
	movl	%esi, -32(%ebp)
.L2:
.LBE3:
	.loc 1 173 0
	cmpl	$0, -32(%ebp)
	jne	.L3
.L4:
	.loc 1 186 0
	movl	-32(%ebp), %eax
	movl	%eax, last_alloca_header@GOTOFF(%ebx)
.LBE2:
	.loc 1 189 0
	cmpl	$0, 8(%ebp)
	jne	.L6
	.loc 1 190 0
	movl	$0, -40(%ebp)
	jmp	.L8
.L6:
.LBB4:
	.loc 1 195 0
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 198 0
	cmpl	$0, -28(%ebp)
	jne	.L9
	.loc 1 199 0
	call	abort@PLT
.L9:
	.loc 1 201 0
	movl	-28(%ebp), %edx
	movl	last_alloca_header@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 202 0
	movl	-28(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%edx, 4(%eax)
	.loc 1 204 0
	movl	-28(%ebp), %eax
	movl	%eax, last_alloca_header@GOTOFF(%ebx)
	.loc 1 208 0
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -40(%ebp)
.L8:
	movl	-40(%ebp), %eax
.LBE4:
	.loc 1 210 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE5:
	.size	C_alloca, .-C_alloca
	.comm	libiberty_optr,4,4
	.comm	libiberty_nptr,4,4
	.comm	libiberty_len,4,4
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
	.file 2 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
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
	.section	.debug_info
	.long	0x2e6
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libiberty/alloca.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libiberty"
	.uleb128 0x2
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.string	"size_t"
	.byte	0x2
	.byte	0xd6
	.long	0xac
	.uleb128 0x4
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x5
	.byte	0x4
	.long	0xde
	.uleb128 0x6
	.long	0xb3
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
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.long	0xb3
	.uleb128 0x8
	.long	0x174
	.long	0xb3
	.uleb128 0x9
	.long	0xbb
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x19b
	.byte	0x8
	.byte	0x1
	.byte	0x8a
	.uleb128 0xb
	.string	"next"
	.byte	0x1
	.byte	0x8b
	.long	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"deep"
	.byte	0x1
	.byte	0x8c
	.long	0x15e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xc
	.long	0x1be
	.string	"hdr"
	.byte	0x8
	.byte	0x1
	.byte	0x87
	.uleb128 0xd
	.string	"align"
	.byte	0x1
	.byte	0x88
	.long	0x164
	.uleb128 0xd
	.string	"h"
	.byte	0x1
	.byte	0x8d
	.long	0x174
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x19b
	.uleb128 0x3
	.string	"header"
	.byte	0x1
	.byte	0x8e
	.long	0x19b
	.uleb128 0xe
	.long	0x26d
	.byte	0x1
	.string	"C_alloca"
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.long	0x15c
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0xf
	.string	"size"
	.byte	0x1
	.byte	0x9d
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"probe"
	.byte	0x1
	.byte	0x9f
	.long	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x10
	.string	"depth"
	.byte	0x1
	.byte	0xa0
	.long	0x15e
	.byte	0x2
	.byte	0x75
	.sleb128 -36
	.uleb128 0x11
	.long	0x254
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x10
	.string	"hp"
	.byte	0x1
	.byte	0xab
	.long	0x26d
	.byte	0x2
	.byte	0x75
	.sleb128 -32
	.uleb128 0x12
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x10
	.string	"np"
	.byte	0x1
	.byte	0xb1
	.long	0x26d
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x10
	.string	"new"
	.byte	0x1
	.byte	0xc3
	.long	0x15c
	.byte	0x2
	.byte	0x75
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x1c4
	.uleb128 0x10
	.string	"last_alloca_header"
	.byte	0x1
	.byte	0x90
	.long	0x26d
	.byte	0x5
	.byte	0x3
	.long	last_alloca_header
	.uleb128 0x13
	.string	"libiberty_optr"
	.byte	0x1
	.byte	0x3c
	.long	0xd8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	libiberty_optr
	.uleb128 0x13
	.string	"libiberty_nptr"
	.byte	0x1
	.byte	0x3d
	.long	0x15e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	libiberty_nptr
	.uleb128 0x13
	.string	"libiberty_len"
	.byte	0x1
	.byte	0x3e
	.long	0x111
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	libiberty_len
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x17
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
	.uleb128 0xd
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.long	0x53
	.value	0x2
	.long	.Ldebug_info0
	.long	0x2ea
	.long	0x1d2
	.string	"C_alloca"
	.long	0x293
	.string	"libiberty_optr"
	.long	0x2b0
	.string	"libiberty_nptr"
	.long	0x2cd
	.string	"libiberty_len"
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
