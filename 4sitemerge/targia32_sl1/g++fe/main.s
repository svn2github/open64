	.file	"main.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	WFE_Compile_File_Invoked
	.comm	WFE_Compile_File_Invoked,4,4
.globl WFE_Compile_File
	.type	WFE_Compile_File, @function
WFE_Compile_File:
.LFB5:
	.file 1 "../../kg++fe/main.c"
	.loc 1 66 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	subl	$24, %esp
.LCFI2:
	.loc 1 67 0
	movl	$1, WFE_Compile_File_Invoked
	.loc 1 68 0
	movl	envp_save, %eax
	movl	argv_save, %edx
	movl	argc_save, %ecx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	WFE_Init
	.loc 1 69 0
	movl	argv_save, %eax
	movl	argc_save, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	WFE_File_Init
	.loc 1 70 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	WFE_Expand_Top_Level_Decl
	.loc 1 71 0
	call	weak_finish
	.loc 1 72 0
	call	WFE_File_Finish
	.loc 1 73 0
	call	WFE_Finish
	.loc 1 74 0
	leave
	ret
.LFE5:
	.size	WFE_Compile_File, .-WFE_Compile_File
.globl back_end_hook
	.data
	.align 4
	.type	back_end_hook, @object
	.size	back_end_hook, 4
back_end_hook:
	.long	WFE_Compile_File
	.text
.globl main
	.type	main, @function
main:
.LFB6:
	.loc 1 86 0
	leal	4(%esp), %ecx
.LCFI3:
	andl	$-16, %esp
	pushl	-4(%ecx)
.LCFI4:
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%ecx
.LCFI7:
	subl	$36, %esp
.LCFI8:
	.loc 1 90 0
	movl	(%ecx), %eax
	movl	%eax, argc_save
	.loc 1 91 0
	movl	4(%ecx), %eax
	movl	%eax, argv_save
	.loc 1 92 0
	movl	8(%ecx), %eax
	movl	%eax, envp_save
	.loc 1 95 0
	movl	8(%ecx), %eax
	movl	%eax, 8(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	call	gnu_init
	movl	%eax, Orig_Src_File_Name
	.loc 1 100 0
	movl	Orig_Src_File_Name, %eax
	testl	%eax, %eax
	jne	.L4
	.loc 1 101 0
	movl	$0, (%esp)
	call	exit
.L4:
	.loc 1 104 0
	movl	Orig_Src_File_Name, %eax
	movl	%eax, (%esp)
	call	compile_file
	.loc 1 106 0
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_gnu_errors
	.loc 1 107 0
	movl	-8(%ebp), %eax
	testl	%eax, %eax
	je	.L6
	.loc 1 108 0
	movl	$2, (%esp)
	call	exit
.L6:
	.loc 1 109 0
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L8
	.loc 1 110 0
	movl	$2, (%esp)
	call	exit
.L8:
	.loc 1 112 0
	leal	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	WFE_Check_Errors
	.loc 1 113 0
	movl	-8(%ebp), %eax
	testl	%eax, %eax
	je	.L10
	.loc 1 114 0
	movl	$1, (%esp)
	call	Terminate
.L10:
	.loc 1 115 0
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	je	.L12
	movl	Enable_WFE_DFE, %eax
	testl	%eax, %eax
	je	.L14
	movl	Opt_Level, %eax
	cmpl	$1, %eax
	jle	.L12
.L14:
	.loc 1 117 0
	movl	$16, (%esp)
	call	exit
.L12:
	.loc 1 119 0
	movl	WFE_Compile_File_Invoked, %eax
	testl	%eax, %eax
	jne	.L16
	.loc 1 120 0
	movl	envp_save, %eax
	movl	argv_save, %edx
	movl	argc_save, %ecx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	WFE_Init
	.loc 1 121 0
	movl	argv_save, %eax
	movl	argc_save, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	WFE_File_Init
	.loc 1 122 0
	call	WFE_File_Finish
	.loc 1 123 0
	call	WFE_Finish
.L16:
	.loc 1 126 0
	movl	$0, (%esp)
	call	exit
.LFE6:
	.size	main, .-main
	.local	argc_save
	.comm	argc_save,4,4
	.local	argv_save
	.comm	argv_save,4,4
	.local	envp_save
	.comm	envp_save,4,4
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
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.byte	0x4
	.long	.LCFI3-.LFB6
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.byte	0x9
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0x84
	.uleb128 0x3
	.align 4
.LEFDE2:
	.file 2 "../../kg++fe/wfe_misc.h"
	.file 3 "../../common/com/glob.h"
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
	.long	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI3-.Ltext0
	.long	.LCFI4-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LCFI4-.Ltext0
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
	.section	.debug_info
	.long	0x319
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../kg++fe/main.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe"
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x3
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.byte	0x4
	.long	0x138
	.uleb128 0x3
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x5
	.string	"INT"
	.byte	0x2
	.byte	0x31
	.long	0xed
	.uleb128 0x5
	.string	"INT32"
	.byte	0x2
	.byte	0x32
	.long	0xed
	.uleb128 0x5
	.string	"BOOL"
	.byte	0x2
	.byte	0x34
	.long	0xed
	.uleb128 0x6
	.long	0x19a
	.byte	0x1
	.string	"WFE_Compile_File"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0x7
	.string	"decl"
	.byte	0x1
	.byte	0x41
	.long	0x1a1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x8
	.string	"tree"
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.long	0x19a
	.uleb128 0x9
	.long	0x236
	.byte	0x1
	.string	"main"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.long	0xed
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0x7
	.string	"argc"
	.byte	0x1
	.byte	0x53
	.long	0x140
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x7
	.string	"argv"
	.byte	0x1
	.byte	0x54
	.long	0x236
	.byte	0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x7
	.string	"envp"
	.byte	0x1
	.byte	0x55
	.long	0x236
	.byte	0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0xa
	.string	"error_count"
	.byte	0x1
	.byte	0x57
	.long	0x140
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xa
	.string	"sorry_count"
	.byte	0x1
	.byte	0x57
	.long	0x140
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"need_inliner"
	.byte	0x1
	.byte	0x58
	.long	0x158
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x4
	.byte	0x4
	.long	0x132
	.uleb128 0xa
	.string	"argc_save"
	.byte	0x1
	.byte	0x34
	.long	0x140
	.byte	0x5
	.byte	0x3
	.long	argc_save
	.uleb128 0xa
	.string	"argv_save"
	.byte	0x1
	.byte	0x35
	.long	0x236
	.byte	0x5
	.byte	0x3
	.long	argv_save
	.uleb128 0xa
	.string	"envp_save"
	.byte	0x1
	.byte	0x36
	.long	0x236
	.byte	0x5
	.byte	0x3
	.long	envp_save
	.uleb128 0xa
	.string	"WFE_Compile_File_Invoked"
	.byte	0x1
	.byte	0x3a
	.long	0xed
	.byte	0x5
	.byte	0x3
	.long	WFE_Compile_File_Invoked
	.uleb128 0xb
	.string	"Orig_Src_File_Name"
	.byte	0x3
	.byte	0x7d
	.long	0x132
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.string	"Opt_Level"
	.byte	0x1
	.byte	0x37
	.long	0x14b
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.string	"Enable_WFE_DFE"
	.byte	0x1
	.byte	0x38
	.long	0x158
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0x2fa
	.byte	0x1
	.uleb128 0xd
	.long	0x1a1
	.byte	0x0
	.uleb128 0xe
	.string	"back_end_hook"
	.byte	0x1
	.byte	0x4c
	.long	0x316
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	back_end_hook
	.uleb128 0x4
	.byte	0x4
	.long	0x2ee
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x3e
	.value	0x2
	.long	.Ldebug_info0
	.long	0x31d
	.long	0x164
	.string	"WFE_Compile_File"
	.long	0x1a7
	.string	"main"
	.long	0x2fa
	.string	"back_end_hook"
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
	.section	.note.GNU-stack,"",@progbits
