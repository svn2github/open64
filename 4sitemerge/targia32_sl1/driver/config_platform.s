	.file	"config_platform.c"
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
	.string	"../../driver/config_platform.c"
	.section	.data.rel.local,"aw",@progbits
	.align 4
	.type	source_file, @object
	.size	source_file, 4
source_file:
	.long	.LC0
.globl Platform
	.bss
	.align 4
	.type	Platform, @object
	.size	Platform, 4
Platform:
	.zero	4
	.section	.rodata
.LC1:
	.string	"ip??"
.LC2:
	.string	"itanium"
.LC3:
	.string	"Itanium"
.LC4:
	.string	"ip19"
.LC5:
	.string	"r4k"
.LC6:
	.string	"Challenge"
.LC7:
	.string	"ip20"
.LC8:
	.string	"R4000 Indigo"
.LC9:
	.string	"ip21"
.LC10:
	.string	"r8k"
.LC11:
	.string	"Power Challenge"
.LC12:
	.string	"ip22_4K"
.LC13:
	.string	"R4x00 Indy/Indigo2"
.LC14:
	.string	"ip22_5K"
.LC15:
	.string	"r5k"
.LC16:
	.string	"R5000 Indy/Indigo2"
.LC17:
	.string	"ip24"
.LC18:
	.string	"ip25"
.LC19:
	.string	"r10k"
.LC20:
	.string	"R10000 Power Challenge"
.LC21:
	.string	"ip26"
.LC22:
	.string	"R8000  Indigo2"
.LC23:
	.string	"ip27"
.LC24:
	.string	"Origin 2000"
.LC25:
	.string	"ip28"
.LC26:
	.string	"R10000 Indigo2"
.LC27:
	.string	"ip30"
.LC28:
	.string	"R10000 Octane"
.LC29:
	.string	"ip32_5K"
.LC30:
	.string	"R5000  O2"
.LC31:
	.string	"ip32_10K"
.LC32:
	.string	"R10000 O2"
.LC33:
	.string	""
.LC34:
	.string	"End of list"
	.section	.data.rel.local
	.align 32
	.type	PF_Opts, @object
	.size	PF_Opts, 300
PF_Opts:
	.long	0
	.long	.LC1
	.long	.LC2
	.long	20
	.long	.LC3
	.long	1
	.long	.LC4
	.long	.LC5
	.long	4
	.long	.LC6
	.long	2
	.long	.LC7
	.long	.LC5
	.long	4
	.long	.LC8
	.long	3
	.long	.LC9
	.long	.LC10
	.long	8
	.long	.LC11
	.long	4
	.long	.LC12
	.long	.LC5
	.long	4
	.long	.LC13
	.long	5
	.long	.LC14
	.long	.LC15
	.long	5
	.long	.LC16
	.long	6
	.long	.LC17
	.long	.LC15
	.long	5
	.long	.LC16
	.long	7
	.long	.LC18
	.long	.LC19
	.long	10
	.long	.LC20
	.long	8
	.long	.LC21
	.long	.LC10
	.long	8
	.long	.LC22
	.long	9
	.long	.LC23
	.long	.LC19
	.long	10
	.long	.LC24
	.long	10
	.long	.LC25
	.long	.LC19
	.long	10
	.long	.LC26
	.long	11
	.long	.LC27
	.long	.LC19
	.long	10
	.long	.LC28
	.long	12
	.long	.LC29
	.long	.LC15
	.long	5
	.long	.LC30
	.long	13
	.long	.LC31
	.long	.LC19
	.long	10
	.long	.LC32
	.long	14
	.long	.LC33
	.long	.LC33
	.long	0
	.long	.LC34
	.text
.globl Get_Platform_Options
	.type	Get_Platform_Options, @function
Get_Platform_Options:
.LFB2:
	.file 1 "../../driver/config_platform.c"
	.loc 1 103 0
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
	.loc 1 107 0
	cmpl	$0, 8(%ebp)
	je	.L2
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L4
.L2:
	.loc 1 108 0
	leal	PF_Opts@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L5
.L4:
	.loc 1 112 0
	movl	$1, -8(%ebp)
	jmp	.L6
.L7:
	.loc 1 113 0
	movl	-8(%ebp), %edx
	leal	PF_Opts@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcasecmp@PLT
	testl	%eax, %eax
	jne	.L8
	.loc 1 114 0
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	leal	PF_Opts@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%edx, -24(%ebp)
	jmp	.L5
.L8:
	.loc 1 112 0
	addl	$1, -8(%ebp)
.L6:
	movl	-8(%ebp), %edx
	leal	PF_Opts@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	cmpl	$14, %eax
	jne	.L7
	.loc 1 119 0
	leal	PF_Opts@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L5:
	movl	-24(%ebp), %eax
	.loc 1 120 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE2:
	.size	Get_Platform_Options, .-Get_Platform_Options
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
	.file 2 "../../driver/config_platform.h"
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
	.long	0x2f7
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../driver/config_platform.c"
	.string	"/usa/handong/simplnano/cmplr/targia32_sl1/driver"
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.long	0x140
	.byte	0x4
	.byte	0x2
	.byte	0x50
	.uleb128 0x5
	.string	"IP0"
	.sleb128 0
	.uleb128 0x5
	.string	"IP19"
	.sleb128 1
	.uleb128 0x5
	.string	"IP20"
	.sleb128 2
	.uleb128 0x5
	.string	"IP21"
	.sleb128 3
	.uleb128 0x5
	.string	"IP22_4K"
	.sleb128 4
	.uleb128 0x5
	.string	"IP22_5K"
	.sleb128 5
	.uleb128 0x5
	.string	"IP24"
	.sleb128 6
	.uleb128 0x5
	.string	"IP25"
	.sleb128 7
	.uleb128 0x5
	.string	"IP26"
	.sleb128 8
	.uleb128 0x5
	.string	"IP27"
	.sleb128 9
	.uleb128 0x5
	.string	"IP28"
	.sleb128 10
	.uleb128 0x5
	.string	"IP30"
	.sleb128 11
	.uleb128 0x5
	.string	"IP32_5K"
	.sleb128 12
	.uleb128 0x5
	.string	"IP32_10K"
	.sleb128 13
	.uleb128 0x5
	.string	"IP_END"
	.sleb128 14
	.byte	0x0
	.uleb128 0x6
	.string	"PLATFORM"
	.byte	0x2
	.byte	0x60
	.long	0xc0
	.uleb128 0x4
	.long	0x1c9
	.byte	0x4
	.byte	0x2
	.byte	0x63
	.uleb128 0x5
	.string	"PROC_NONE"
	.sleb128 0
	.uleb128 0x5
	.string	"PROC_R3K"
	.sleb128 3
	.uleb128 0x5
	.string	"PROC_R4K"
	.sleb128 4
	.uleb128 0x5
	.string	"PROC_R5K"
	.sleb128 5
	.uleb128 0x5
	.string	"PROC_R8K"
	.sleb128 8
	.uleb128 0x5
	.string	"PROC_R10K"
	.sleb128 10
	.uleb128 0x5
	.string	"PROC_R12K"
	.sleb128 12
	.uleb128 0x5
	.string	"PROC_ITANIUM"
	.sleb128 20
	.uleb128 0x5
	.string	"PROC_SIMPLIGHT"
	.sleb128 30
	.byte	0x0
	.uleb128 0x6
	.string	"PROCESSOR"
	.byte	0x2
	.byte	0x6d
	.long	0x150
	.uleb128 0x7
	.long	0x236
	.byte	0x14
	.byte	0x2
	.byte	0x72
	.uleb128 0x8
	.string	"id"
	.byte	0x2
	.byte	0x73
	.long	0x140
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"name"
	.byte	0x2
	.byte	0x74
	.long	0x236
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"pname"
	.byte	0x2
	.byte	0x75
	.long	0x236
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"processor"
	.byte	0x2
	.byte	0x76
	.long	0x1c9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"nickname"
	.byte	0x2
	.byte	0x78
	.long	0x236
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.long	0xb8
	.uleb128 0x6
	.string	"PLATFORM_OPTIONS"
	.byte	0x2
	.byte	0x79
	.long	0x1da
	.uleb128 0xa
	.long	0x29f
	.byte	0x1
	.string	"Get_Platform_Options"
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.long	0x29f
	.long	.LFB2
	.long	.LFE2
	.long	.LLST0
	.uleb128 0xb
	.string	"name"
	.byte	0x1
	.byte	0x66
	.long	0x236
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"ix"
	.byte	0x1
	.byte	0x68
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.long	0x23c
	.uleb128 0xc
	.string	"source_file"
	.byte	0x1
	.byte	0x41
	.long	0x236
	.byte	0x5
	.byte	0x3
	.long	source_file
	.uleb128 0xd
	.long	0x2ce
	.long	0x23c
	.uleb128 0xe
	.long	0x94
	.byte	0xe
	.byte	0x0
	.uleb128 0xc
	.string	"PF_Opts"
	.byte	0x1
	.byte	0x4d
	.long	0x2be
	.byte	0x5
	.byte	0x3
	.long	PF_Opts
	.uleb128 0xf
	.string	"Platform"
	.byte	0x1
	.byte	0x4a
	.long	0x140
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Platform
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
	.uleb128 0xe
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
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.long	0x34
	.value	0x2
	.long	.Ldebug_info0
	.long	0x2fb
	.long	0x254
	.string	"Get_Platform_Options"
	.long	0x2e3
	.string	"Platform"
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
