	.file	"getpwd.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	failure_errno.2962
	.comm	failure_errno.2962,4,4
	.local	pwd.2961
	.comm	pwd.2961,4,4
	.section	.rodata
.LC0:
	.string	"PWD"
.LC1:
	.string	"."
	.text
.globl getpwd
	.type	getpwd, @function
getpwd:
.LFB15:
	.file 1 "../../libiberty/getpwd.c"
	.loc 1 68 0
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
	subl	$204, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 72 0
	movl	pwd.2961@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	.loc 1 76 0
	cmpl	$0, -24(%ebp)
	jne	.L2
	call	__errno_location@PLT
	movl	failure_errno.2962@GOTOFF(%ebx), %edx
	movl	%edx, (%eax)
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2
	.loc 1 78 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L5
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	.L5
	leal	-200(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	stat@PLT
	testl	%eax, %eax
	jne	.L5
	leal	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	stat@PLT
	testl	%eax, %eax
	jne	.L5
	movl	-100(%ebp), %edx
	movl	-188(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L5
	movl	-112(%ebp), %esi
	movl	-108(%ebp), %edi
	movl	-200(%ebp), %eax
	movl	-196(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L11
.L5:
	.loc 1 86 0
	movl	$4097, -20(%ebp)
	jmp	.L12
.L13:
.LBB2:
	.loc 1 88 0
	call	__errno_location@PLT
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 89 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 91 0
	cmpl	$34, -16(%ebp)
	je	.L14
	.loc 1 94 0
	call	__errno_location@PLT
	movl	-16(%ebp), %edx
	movl	%edx, failure_errno.2962@GOTOFF(%ebx)
	movl	failure_errno.2962@GOTOFF(%ebx), %edx
	movl	%edx, (%eax)
	.loc 1 95 0
	movl	$0, -24(%ebp)
	.loc 1 96 0
	jmp	.L11
.L14:
.LBE2:
	.loc 1 86 0
	sall	-20(%ebp)
.L12:
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -24(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	getcwd@PLT
	testl	%eax, %eax
	je	.L13
.L11:
	.loc 1 102 0
	movl	-24(%ebp), %eax
	movl	%eax, pwd.2961@GOTOFF(%ebx)
.L2:
	.loc 1 104 0
	movl	-24(%ebp), %eax
	.loc 1 105 0
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	getpwd, .-getpwd
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
	.file 2 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 3 "/usr/include/bits/stat.h"
	.file 4 "/usr/include/bits/types.h"
	.file 5 "/usr/include/time.h"
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
	.long	0x421
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libiberty/getpwd.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libiberty"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x2
	.byte	0xd6
	.long	0xa5
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
	.string	"__u_quad_t"
	.byte	0x4
	.byte	0x3c
	.long	0x11c
	.uleb128 0x2
	.string	"__dev_t"
	.byte	0x4
	.byte	0x89
	.long	0x136
	.uleb128 0x2
	.string	"__uid_t"
	.byte	0x4
	.byte	0x8a
	.long	0xa5
	.uleb128 0x2
	.string	"__gid_t"
	.byte	0x4
	.byte	0x8b
	.long	0xa5
	.uleb128 0x2
	.string	"__ino_t"
	.byte	0x4
	.byte	0x8c
	.long	0xd3
	.uleb128 0x2
	.string	"__mode_t"
	.byte	0x4
	.byte	0x8e
	.long	0xa5
	.uleb128 0x2
	.string	"__nlink_t"
	.byte	0x4
	.byte	0x8f
	.long	0xa5
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x4
	.byte	0x90
	.long	0x1b4
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
	.byte	0x4
	.byte	0x98
	.long	0x1b4
	.uleb128 0x2
	.string	"__blksize_t"
	.byte	0x4
	.byte	0xa7
	.long	0x1b4
	.uleb128 0x2
	.string	"__blkcnt_t"
	.byte	0x4
	.byte	0xac
	.long	0x1b4
	.uleb128 0x5
	.byte	0x4
	.long	0x202
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x6
	.long	0x23f
	.string	"timespec"
	.byte	0x8
	.byte	0x5
	.byte	0x7a
	.uleb128 0x7
	.string	"tv_sec"
	.byte	0x5
	.byte	0x7b
	.long	0x1c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"tv_nsec"
	.byte	0x5
	.byte	0x7c
	.long	0x1b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x6
	.long	0x383
	.string	"stat"
	.byte	0x58
	.byte	0x3
	.byte	0x25
	.uleb128 0x7
	.string	"st_dev"
	.byte	0x3
	.byte	0x26
	.long	0x148
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"__pad1"
	.byte	0x3
	.byte	0x27
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"st_ino"
	.byte	0x3
	.byte	0x29
	.long	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"st_mode"
	.byte	0x3
	.byte	0x2d
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"st_nlink"
	.byte	0x3
	.byte	0x2e
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"st_uid"
	.byte	0x3
	.byte	0x2f
	.long	0x157
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"st_gid"
	.byte	0x3
	.byte	0x30
	.long	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"st_rdev"
	.byte	0x3
	.byte	0x31
	.long	0x148
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"__pad2"
	.byte	0x3
	.byte	0x32
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"st_size"
	.byte	0x3
	.byte	0x34
	.long	0x1a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"st_blksize"
	.byte	0x3
	.byte	0x38
	.long	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"st_blocks"
	.byte	0x3
	.byte	0x3b
	.long	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"st_atim"
	.byte	0x3
	.byte	0x46
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"st_mtim"
	.byte	0x3
	.byte	0x47
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"st_ctim"
	.byte	0x3
	.byte	0x48
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"__unused4"
	.byte	0x3
	.byte	0x55
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x7
	.string	"__unused5"
	.byte	0x3
	.byte	0x56
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x0
	.uleb128 0x8
	.byte	0x1
	.string	"getpwd"
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.long	0x1fc
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x48
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.string	"s"
	.byte	0x1
	.byte	0x49
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.string	"dotstat"
	.byte	0x1
	.byte	0x4a
	.long	0x23f
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x9
	.string	"pwdstat"
	.byte	0x1
	.byte	0x4a
	.long	0x23f
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0xa
	.long	0x3f7
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x9
	.string	"e"
	.byte	0x1
	.byte	0x58
	.long	0x104
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x9
	.string	"pwd"
	.byte	0x1
	.byte	0x45
	.long	0x1fc
	.byte	0x5
	.byte	0x3
	.long	pwd.2961
	.uleb128 0x9
	.string	"failure_errno"
	.byte	0x1
	.byte	0x46
	.long	0x104
	.byte	0x5
	.byte	0x3
	.long	failure_errno.2962
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x19
	.value	0x2
	.long	.Ldebug_info0
	.long	0x425
	.long	0x383
	.string	"getpwd"
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
