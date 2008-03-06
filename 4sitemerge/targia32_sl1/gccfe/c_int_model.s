	.file	"c_int_model.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl Max
	.type	Max, @function
Max:
.LFB5:
	.file 1 "../../common/com/defs.h"
	.loc 1 375 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	subl	$8, %esp
.LCFI2:
	.loc 1 376 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-8(%ebp), %eax
	cmpl	%eax, -4(%ebp)
	jge	.L2
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
.L2:
	movl	-4(%ebp), %eax
	.loc 1 377 0
	leave
	ret
.LFE5:
	.size	Max, .-Max
.globl Min
	.type	Min, @function
Min:
.LFB6:
	.loc 1 379 0
	pushl	%ebp
.LCFI3:
	movl	%esp, %ebp
.LCFI4:
	subl	$8, %esp
.LCFI5:
	.loc 1 380 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-8(%ebp), %eax
	cmpl	%eax, -4(%ebp)
	jle	.L5
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
.L5:
	movl	-4(%ebp), %eax
	.loc 1 381 0
	leave
	ret
.LFE6:
	.size	Min, .-Min
.globl Target_Int_Model
	.bss
	.align 4
	.type	Target_Int_Model, @object
	.size	Target_Int_Model, 4
Target_Int_Model:
	.zero	4
.globl C_Int_Model
	.data
	.align 32
	.type	C_Int_Model, @object
	.size	C_Int_Model, 84
C_Int_Model:
	.long	3
	.long	4
	.long	4
	.long	7
	.long	8
	.long	8
	.long	8
	.long	3
	.long	4
	.long	5
	.long	7
	.long	8
	.long	9
	.long	9
	.long	3
	.long	5
	.long	5
	.long	7
	.long	9
	.long	9
	.long	9
	.text
.globl Initialize_C_Int_Model
	.type	Initialize_C_Int_Model, @function
Initialize_C_Int_Model:
.LFB7:
	.file 2 "../../kgccfe/c_int_model.c"
	.loc 2 139 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 2 141 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L8
	.loc 2 142 0
	movl	Target_Int_Model@GOT(%ecx), %eax
	movl	$1, (%eax)
.L8:
	.loc 2 144 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L10
	.loc 2 145 0
	movl	Target_Byte_Sex@GOT(%ecx), %eax
	movl	$4321, (%eax)
	jmp	.L13
.L10:
	.loc 2 146 0
	movl	Target_Byte_Sex@GOT(%ecx), %eax
	movl	$1234, (%eax)
.L13:
	.loc 2 151 0
	popl	%ebp
	ret
.LFE7:
	.size	Initialize_C_Int_Model, .-Initialize_C_Int_Model
.globl FE_Int_Type_To_Mtype
	.type	FE_Int_Type_To_Mtype, @function
FE_Int_Type_To_Mtype:
.LFB8:
	.loc 2 156 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	.loc 2 157 0
	popl	%ebp
	ret
.LFE8:
	.size	FE_Int_Type_To_Mtype, .-FE_Int_Type_To_Mtype
.globl FE_Pointer_Type_To_Mtype
	.type	FE_Pointer_Type_To_Mtype, @function
FE_Pointer_Type_To_Mtype:
.LFB9:
	.loc 2 160 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%ebx
.LCFI12:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 161 0
	movl	Target_Int_Model@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	C_Int_Model@GOT(%ebx), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movl	8(%eax), %eax
	.loc 2 162 0
	popl	%ebx
	popl	%ebp
	ret
.LFE9:
	.size	FE_Pointer_Type_To_Mtype, .-FE_Pointer_Type_To_Mtype
.globl FE_int_To_Mtype
	.type	FE_int_To_Mtype, @function
FE_int_To_Mtype:
.LFB10:
	.loc 2 165 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	pushl	%ebx
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 166 0
	movl	Target_Int_Model@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	C_Int_Model@GOT(%ebx), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	movl	4(%eax,%ecx), %eax
	.loc 2 167 0
	popl	%ebx
	popl	%ebp
	ret
.LFE10:
	.size	FE_int_To_Mtype, .-FE_int_To_Mtype
.globl Make_Int_Model_Consistent
	.type	Make_Int_Model_Consistent, @function
Make_Int_Model_Consistent:
.LFB11:
	.loc 2 171 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%ebx
.LCFI18:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 172 0
	movl	Target_Int_Model@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	C_Int_Model@GOT(%ebx), %ecx
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movl	8(%eax), %edx
	movl	Machine_Types@GOT(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movzwl	2(%eax,%ecx), %eax
	cmpw	$32, %ax
	sete	%al
	movzbl	%al, %edx
	movl	Use_32_Bit_Pointers@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 174 0
	popl	%ebx
	popl	%ebp
	ret
.LFE11:
	.size	Make_Int_Model_Consistent, .-Make_Int_Model_Consistent
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
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.byte	0x4
	.long	.LCFI6-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI8-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
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
	.long	.LCFI10-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.byte	0x4
	.long	.LCFI13-.LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI16-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE12:
	.file 3 "../../common/com/mtypes.h"
	.file 4 "../../kgccfe/c_int_model.h"
	.file 5 "../../common/com/MIPS/config_targ.h"
	.file 6 "../../kgccfe/gnu/MIPS/mips.h"
	.file 7 "../../common/com/config.h"
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
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI4-.Ltext0
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB7-.Ltext0
	.long	.LCFI6-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI6-.Ltext0
	.long	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI7-.Ltext0
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB8-.Ltext0
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
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB9-.Ltext0
	.long	.LCFI10-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI10-.Ltext0
	.long	.LCFI11-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI11-.Ltext0
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB10-.Ltext0
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
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB11-.Ltext0
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
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x5f9
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../kgccfe/c_int_model.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe"
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
	.long	0x13f
	.uleb128 0x3
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x5
	.string	"INT"
	.byte	0x1
	.byte	0xe6
	.long	0xf4
	.uleb128 0x5
	.string	"UINT8"
	.byte	0x1
	.byte	0xed
	.long	0x95
	.uleb128 0x5
	.string	"BOOL"
	.byte	0x1
	.byte	0xf1
	.long	0xf4
	.uleb128 0x5
	.string	"mUINT8"
	.byte	0x1
	.byte	0xf6
	.long	0x9c
	.uleb128 0x5
	.string	"mUINT16"
	.byte	0x1
	.byte	0xf7
	.long	0xad
	.uleb128 0x5
	.string	"mBOOL"
	.byte	0x1
	.byte	0xfa
	.long	0x9c
	.uleb128 0x3
	.string	"long double"
	.byte	0xc
	.byte	0x4
	.uleb128 0x6
	.string	"mCLASS_INDEX"
	.byte	0x1
	.value	0x163
	.long	0x179
	.uleb128 0x7
	.long	0x1f2
	.byte	0x1
	.string	"Max"
	.byte	0x1
	.value	0x177
	.byte	0x1
	.long	0x147
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.value	0x176
	.long	0x147
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.string	"j"
	.byte	0x1
	.value	0x176
	.long	0x147
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x7
	.long	0x22b
	.byte	0x1
	.string	"Min"
	.byte	0x1
	.value	0x17b
	.byte	0x1
	.long	0x147
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.value	0x17a
	.long	0x147
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.string	"j"
	.byte	0x1
	.value	0x17a
	.long	0x147
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x5
	.string	"TYPE_ID"
	.byte	0x3
	.byte	0x9d
	.long	0x152
	.uleb128 0x9
	.long	0x357
	.string	"type_desc"
	.byte	0x18
	.byte	0x3
	.byte	0xb2
	.uleb128 0xa
	.string	"id"
	.byte	0x3
	.byte	0xb3
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.string	"bit_size"
	.byte	0x3
	.byte	0xb4
	.long	0x179
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.string	"byte_size"
	.byte	0x3
	.byte	0xb5
	.long	0x179
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"dummy1"
	.byte	0x3
	.byte	0xb6
	.long	0x179
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.string	"alignment"
	.byte	0x3
	.byte	0xb7
	.long	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"dummy2"
	.byte	0x3
	.byte	0xb8
	.long	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.string	"dummy3"
	.byte	0x3
	.byte	0xb9
	.long	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"signed_type"
	.byte	0x3
	.byte	0xbb
	.long	0x188
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.string	"float_type"
	.byte	0x3
	.byte	0xbc
	.long	0x188
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"dummy4"
	.byte	0x3
	.byte	0xbd
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.string	"name"
	.byte	0x3
	.byte	0xbe
	.long	0x139
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"type_class_bits"
	.byte	0x3
	.byte	0xbf
	.long	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"type_order"
	.byte	0x3
	.byte	0xc0
	.long	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xa
	.string	"complement"
	.byte	0x3
	.byte	0xc1
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x5
	.string	"TYPE_DESC"
	.byte	0x3
	.byte	0xc2
	.long	0x23a
	.uleb128 0xb
	.long	0x3a9
	.byte	0x4
	.byte	0x4
	.byte	0x4f
	.uleb128 0xc
	.string	"TARGET_INT_ILP32"
	.sleb128 0
	.uleb128 0xc
	.string	"TARGET_INT_LP64"
	.sleb128 1
	.uleb128 0xc
	.string	"TARGET_INT_ILP64"
	.sleb128 2
	.byte	0x0
	.uleb128 0x5
	.string	"TARGET_INT_MODEL"
	.byte	0x4
	.byte	0x53
	.long	0x368
	.uleb128 0xd
	.long	0x463
	.byte	0x1c
	.byte	0x2
	.byte	0x47
	.uleb128 0xa
	.string	"mtype_short"
	.byte	0x2
	.byte	0x48
	.long	0x22b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.string	"mtype_int"
	.byte	0x2
	.byte	0x49
	.long	0x22b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"mtype_long"
	.byte	0x2
	.byte	0x4a
	.long	0x22b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"mtype_ushort"
	.byte	0x2
	.byte	0x4b
	.long	0x22b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"mtype_uint"
	.byte	0x2
	.byte	0x4c
	.long	0x22b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"mtype_ulong"
	.byte	0x2
	.byte	0x4d
	.long	0x22b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"mtype_pointer"
	.byte	0x2
	.byte	0x52
	.long	0x22b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.string	"Initialize_C_Int_Model"
	.byte	0x2
	.byte	0x8b
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0xf
	.long	0x4c6
	.byte	0x1
	.string	"FE_Int_Type_To_Mtype"
	.byte	0x2
	.byte	0x9c
	.byte	0x1
	.long	0x22b
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0x10
	.string	"t"
	.byte	0x2
	.byte	0x9b
	.long	0xf4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.string	"FE_Pointer_Type_To_Mtype"
	.byte	0x2
	.byte	0xa0
	.byte	0x1
	.long	0x22b
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0x11
	.byte	0x1
	.string	"FE_int_To_Mtype"
	.byte	0x2
	.byte	0xa5
	.byte	0x1
	.long	0x22b
	.long	.LFB10
	.long	.LFE10
	.long	.LLST5
	.uleb128 0xe
	.byte	0x1
	.string	"Make_Int_Model_Consistent"
	.byte	0x2
	.byte	0xab
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.uleb128 0x12
	.long	0x54f
	.long	0x357
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x14
	.string	"Machine_Types"
	.byte	0x3
	.byte	0xc7
	.long	0x544
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"Target_Int_Model"
	.byte	0x2
	.byte	0x41
	.long	0x3a9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Target_Int_Model
	.uleb128 0x14
	.string	"Use_32_Bit_Pointers"
	.byte	0x5
	.byte	0xd6
	.long	0x15f
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"target_flags"
	.byte	0x6
	.byte	0x21
	.long	0xf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.string	"Target_Byte_Sex"
	.byte	0x7
	.value	0x25d
	.long	0x152
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0x5e2
	.long	0x3c1
	.uleb128 0x17
	.long	0x132
	.byte	0x2
	.byte	0x0
	.uleb128 0x15
	.string	"C_Int_Model"
	.byte	0x2
	.byte	0x53
	.long	0x5d2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	C_Int_Model
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
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x21
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xc6
	.value	0x2
	.long	.Ldebug_info0
	.long	0x5fd
	.long	0x1b9
	.string	"Max"
	.long	0x1f2
	.string	"Min"
	.long	0x463
	.string	"Initialize_C_Int_Model"
	.long	0x48b
	.string	"FE_Int_Type_To_Mtype"
	.long	0x4c6
	.string	"FE_Pointer_Type_To_Mtype"
	.long	0x4f4
	.string	"FE_int_To_Mtype"
	.long	0x519
	.string	"Make_Int_Model_Consistent"
	.long	0x566
	.string	"Target_Int_Model"
	.long	0x5e2
	.string	"C_Int_Model"
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
	.section	.text.__i686.get_pc_thunk.cx,"axG",@progbits,__i686.get_pc_thunk.cx,comdat
.globl __i686.get_pc_thunk.cx
	.hidden	__i686.get_pc_thunk.cx
	.type	__i686.get_pc_thunk.cx, @function
__i686.get_pc_thunk.cx:
	movl	(%esp), %ecx
	ret
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
