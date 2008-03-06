	.file	"varray.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.align 32
	.type	element_size, @object
	.size	element_size, 80
element_size:
	.long	1
	.long	1
	.long	2
	.long	2
	.long	4
	.long	4
	.long	4
	.long	4
	.long	8
	.long	8
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	8
	.long	4
	.long	4
	.align 32
	.type	uses_ggc, @object
	.size	uses_ggc, 80
uses_ggc:
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	1
	.text
.globl varray_init
	.type	varray_init, @function
varray_init:
.LFB15:
	.file 1 "../../../kg++fe/gnu/varray.c"
	.loc 1 67 0
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
	.loc 1 68 0
	movl	12(%ebp), %eax
	movl	element_size@GOTOFF(%ebx,%eax,4), %eax
	imull	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 70 0
	movl	12(%ebp), %eax
	movl	uses_ggc@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	je	.L2
	.loc 1 71 0
	movl	-12(%ebp), %eax
	addl	$16, %eax
	movl	%eax, (%esp)
	call	ggc_alloc_cleared@PLT
	movl	%eax, -8(%ebp)
	jmp	.L4
.L2:
	.loc 1 73 0
	movl	-12(%ebp), %eax
	addl	$16, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -8(%ebp)
.L4:
	.loc 1 75 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 76 0
	movl	-8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 77 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 78 0
	movl	-8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 79 0
	movl	-8(%ebp), %eax
	.loc 1 80 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	varray_init, .-varray_init
.globl varray_grow
	.type	varray_grow, @function
varray_grow:
.LFB16:
	.loc 1 88 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%edi
.LCFI6:
	pushl	%ebx
.LCFI7:
	subl	$32, %esp
.LCFI8:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 89 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 91 0
	movl	12(%ebp), %eax
	cmpl	-24(%ebp), %eax
	je	.L7
.LBB2:
	.loc 1 93 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	element_size@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 94 0
	movl	-24(%ebp), %eax
	imull	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 95 0
	movl	12(%ebp), %eax
	imull	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 97 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	uses_ggc@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	je	.L9
	.loc 1 98 0
	movl	-12(%ebp), %eax
	addl	$16, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_realloc@PLT
	movl	%eax, 8(%ebp)
	jmp	.L11
.L9:
	.loc 1 100 0
	movl	-12(%ebp), %eax
	addl	$16, %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	xrealloc@PLT
	movl	%eax, 8(%ebp)
.L11:
	.loc 1 101 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 102 0
	movl	12(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jbe	.L7
	.loc 1 103 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	8(%ebp), %edx
	addl	$16, %edx
	movl	-16(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edi
	cld
	movl	$0, %eax
	rep
	stosb
.L7:
.LBE2:
	.loc 1 106 0
	movl	8(%ebp), %eax
	.loc 1 107 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	varray_grow, .-varray_grow
.globl varray_clear
	.type	varray_clear, @function
varray_clear:
.LFB17:
	.loc 1 113 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	pushl	%edi
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$16, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 114 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	element_size@GOTOFF(%ebx,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	imull	%edx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 116 0
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	-12(%ebp), %edx
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 117 0
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 118 0
	addl	$16, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE17:
	.size	varray_clear, .-varray_clear
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
	.long	.LCFI3-.LCFI1
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI4-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI8-.LCFI5
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI9-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI13-.LCFI10
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE4:
	.file 2 "../../../kg++fe/gnu/varray.h"
	.file 3 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
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
.LLST1:
	.long	.LFB16-.Ltext0
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x83c
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/varray.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.byte	0x4
	.long	0xa1
	.uleb128 0x3
	.string	"rtx_def"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0xb1
	.uleb128 0x3
	.string	"rtvec_def"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0xc3
	.uleb128 0x4
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0xd5
	.uleb128 0x5
	.long	0xda
	.uleb128 0x6
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x6
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x7
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x7
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x8
	.string	"size_t"
	.byte	0x3
	.byte	0xd6
	.long	0xe9
	.uleb128 0x6
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x6
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x6
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x6
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x6
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x6
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x6
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x6
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x9
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.long	0xda
	.uleb128 0xa
	.long	0x1ac
	.long	0xda
	.uleb128 0xb
	.long	0xf0
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x1e2
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0x2
	.byte	0x24
	.uleb128 0xd
	.string	"rtx"
	.byte	0x2
	.byte	0x32
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"age"
	.byte	0x2
	.byte	0x36
	.long	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xe
	.long	0x37d
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0x2
	.byte	0x3c
	.uleb128 0xf
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0xf
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0xf
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0xf
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0xf
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0xf
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0xf
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0xf
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0xf
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0xf
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0xf
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0xf
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0xf
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0xf
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0xf
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0xf
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0xf
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0xf
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0xf
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0xf
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0xf
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x10
	.long	0x479
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x2
	.byte	0x55
	.uleb128 0x11
	.string	"c"
	.byte	0x2
	.byte	0x56
	.long	0x19c
	.uleb128 0x11
	.string	"uc"
	.byte	0x2
	.byte	0x58
	.long	0x479
	.uleb128 0x11
	.string	"s"
	.byte	0x2
	.byte	0x5a
	.long	0x489
	.uleb128 0x11
	.string	"us"
	.byte	0x2
	.byte	0x5c
	.long	0x499
	.uleb128 0x11
	.string	"i"
	.byte	0x2
	.byte	0x5e
	.long	0x4a9
	.uleb128 0x11
	.string	"u"
	.byte	0x2
	.byte	0x60
	.long	0x4b9
	.uleb128 0x11
	.string	"l"
	.byte	0x2
	.byte	0x62
	.long	0x4c9
	.uleb128 0x11
	.string	"ul"
	.byte	0x2
	.byte	0x64
	.long	0x4d9
	.uleb128 0x11
	.string	"hint"
	.byte	0x2
	.byte	0x66
	.long	0x4e9
	.uleb128 0x11
	.string	"uhint"
	.byte	0x2
	.byte	0x68
	.long	0x4f9
	.uleb128 0x11
	.string	"generic"
	.byte	0x2
	.byte	0x6a
	.long	0x509
	.uleb128 0x11
	.string	"cptr"
	.byte	0x2
	.byte	0x6c
	.long	0x519
	.uleb128 0x11
	.string	"rtx"
	.byte	0x2
	.byte	0x6e
	.long	0x529
	.uleb128 0x11
	.string	"rtvec"
	.byte	0x2
	.byte	0x70
	.long	0x539
	.uleb128 0x11
	.string	"tree"
	.byte	0x2
	.byte	0x72
	.long	0x549
	.uleb128 0x11
	.string	"bitmap"
	.byte	0x2
	.byte	0x74
	.long	0x559
	.uleb128 0x11
	.string	"reg"
	.byte	0x2
	.byte	0x76
	.long	0x581
	.uleb128 0x11
	.string	"const_equiv"
	.byte	0x2
	.byte	0x78
	.long	0x5a6
	.uleb128 0x11
	.string	"bb"
	.byte	0x2
	.byte	0x7a
	.long	0x5b6
	.uleb128 0x11
	.string	"te"
	.byte	0x2
	.byte	0x7c
	.long	0x5de
	.byte	0x0
	.uleb128 0xa
	.long	0x489
	.long	0x105
	.uleb128 0xb
	.long	0xf0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x499
	.long	0x150
	.uleb128 0xb
	.long	0xf0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x4a9
	.long	0x116
	.uleb128 0xb
	.long	0xf0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x4b9
	.long	0xe2
	.uleb128 0xb
	.long	0xf0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x4c9
	.long	0xe9
	.uleb128 0xb
	.long	0xf0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x4d9
	.long	0x188
	.uleb128 0xb
	.long	0xf0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x4e9
	.long	0x12c
	.uleb128 0xb
	.long	0xf0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x4f9
	.long	0x15d
	.uleb128 0xb
	.long	0xf0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x509
	.long	0x16e
	.uleb128 0xb
	.long	0xf0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x519
	.long	0x194
	.uleb128 0xb
	.long	0xf0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x529
	.long	0x196
	.uleb128 0xb
	.long	0xf0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x539
	.long	0x9b
	.uleb128 0xb
	.long	0xf0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x549
	.long	0xab
	.uleb128 0xb
	.long	0xf0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x559
	.long	0xbd
	.uleb128 0xb
	.long	0xf0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x569
	.long	0x57b
	.uleb128 0xb
	.long	0xf0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x569
	.uleb128 0xa
	.long	0x591
	.long	0x5a0
	.uleb128 0xb
	.long	0xf0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x591
	.uleb128 0xa
	.long	0x5b6
	.long	0x1ac
	.uleb128 0xb
	.long	0xf0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x5c6
	.long	0x5d8
	.uleb128 0xb
	.long	0xf0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x5c6
	.uleb128 0xa
	.long	0x5ee
	.long	0x5f9
	.uleb128 0xb
	.long	0xf0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x5ee
	.uleb128 0x8
	.string	"varray_data"
	.byte	0x2
	.byte	0x7e
	.long	0x37d
	.uleb128 0xc
	.long	0x67e
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x2
	.byte	0x81
	.uleb128 0x12
	.long	.LASF1
	.byte	0x2
	.byte	0x82
	.long	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"elements_used"
	.byte	0x2
	.byte	0x83
	.long	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"type"
	.byte	0x2
	.byte	0x85
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"name"
	.byte	0x2
	.byte	0x86
	.long	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"data"
	.byte	0x2
	.byte	0x87
	.long	0x5ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x8
	.string	"varray_type"
	.byte	0x2
	.byte	0x8a
	.long	0x691
	.uleb128 0x2
	.byte	0x4
	.long	0x612
	.uleb128 0x13
	.long	0x70d
	.byte	0x1
	.string	"varray_init"
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.long	0x67e
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x14
	.long	.LASF1
	.byte	0x1
	.byte	0x40
	.long	0xf7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"element_kind"
	.byte	0x1
	.byte	0x41
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"name"
	.byte	0x1
	.byte	0x42
	.long	0xcf
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF2
	.byte	0x1
	.byte	0x44
	.long	0xf7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.string	"ptr"
	.byte	0x1
	.byte	0x45
	.long	0x67e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x13
	.long	0x7a7
	.byte	0x1
	.string	"varray_grow"
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	0x67e
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x15
	.string	"va"
	.byte	0x1
	.byte	0x56
	.long	0x67e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0x57
	.long	0xf7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"old_elements"
	.byte	0x1
	.byte	0x59
	.long	0xf7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x17
	.string	"elem_size"
	.byte	0x1
	.byte	0x5d
	.long	0xf7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"old_data_size"
	.byte	0x1
	.byte	0x5e
	.long	0xf7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF2
	.byte	0x1
	.byte	0x5f
	.long	0xf7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.long	0x7e5
	.byte	0x1
	.string	"varray_clear"
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x15
	.string	"va"
	.byte	0x1
	.byte	0x70
	.long	0x67e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF2
	.byte	0x1
	.byte	0x72
	.long	0xf7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xa
	.long	0x7f5
	.long	0xf7
	.uleb128 0xb
	.long	0xf0
	.byte	0x13
	.byte	0x0
	.uleb128 0x17
	.string	"element_size"
	.byte	0x1
	.byte	0x1e
	.long	0x80f
	.byte	0x5
	.byte	0x3
	.long	element_size
	.uleb128 0x5
	.long	0x7e5
	.uleb128 0xa
	.long	0x824
	.long	0xe2
	.uleb128 0xb
	.long	0xf0
	.byte	0x13
	.byte	0x0
	.uleb128 0x17
	.string	"uses_ggc"
	.byte	0x1
	.byte	0x35
	.long	0x83a
	.byte	0x5
	.byte	0x3
	.long	uses_ggc
	.uleb128 0x5
	.long	0x814
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x17
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x4
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x3f
	.value	0x2
	.long	.Ldebug_info0
	.long	0x840
	.long	0x697
	.string	"varray_init"
	.long	0x70d
	.string	"varray_grow"
	.long	0x7a7
	.string	"varray_clear"
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
	.string	"data_size"
.LASF0:
	.string	"unsigned int"
.LASF1:
	.string	"num_elements"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
