	.file	"targ_isa_hazards.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl ISA_HAZARD_hazard_info
	.data
	.align 4
	.type	ISA_HAZARD_hazard_info, @object
	.size	ISA_HAZARD_hazard_info, 12
ISA_HAZARD_hazard_info:
	.long	3
	.value	0
	.value	0
	.value	0
	.byte	0
	.byte	0
.globl ISA_HAZARD_hazard_index
	.bss
	.align 32
	.type	ISA_HAZARD_hazard_index, @object
	.size	ISA_HAZARD_hazard_index, 764
ISA_HAZARD_hazard_index:
	.zero	764
	.text
.globl ISA_HAZARD_Initialize
	.type	ISA_HAZARD_Initialize, @function
ISA_HAZARD_Initialize:
.LFB9:
	.file 1 "targ_isa_hazards.c"
	.loc 1 777 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%esi
.LCFI2:
	pushl	%ebx
.LCFI3:
	subl	$32, %esp
.LCFI4:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 779 0
	movl	ISA_SUBSET_Value@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -24(%ebp)
	.loc 1 780 0
	movl	$0, -28(%ebp)
	jmp	.L2
.L3:
.LBB2:
	.loc 1 782 0
	movl	-28(%ebp), %edx
	movl	ISA_HAZARD_hazard_index@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 783 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L4
.L5:
	.loc 1 784 0
	movl	-20(%ebp), %edx
	movl	ISA_HAZARD_hazard_info@GOT(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movzbl	11(%eax,%ecx), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 785 0
	jmp	.L6
.L7:
	.loc 1 787 0
	movl	-16(%ebp), %edx
	movl	ISA_HAZARD_hazard_info@GOT(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movzbl	11(%eax,%ecx), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
.L6:
	.loc 1 785 0
	cmpl	$0, -16(%ebp)
	je	.L8
	movl	-16(%ebp), %edx
	movl	ISA_HAZARD_hazard_info@GOT(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movzbl	10(%eax,%ecx), %eax
	movzbl	%al, %eax
	andl	-24(%ebp), %eax
	testl	%eax, %eax
	je	.L7
.L8:
	.loc 1 788 0
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, %esi
	movl	ISA_HAZARD_hazard_info@GOT(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%esi, %edx
	movb	%dl, 11(%eax,%ecx)
	.loc 1 783 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L4:
	cmpl	$0, -20(%ebp)
	jne	.L5
	.loc 1 790 0
	movl	-12(%ebp), %edx
	movl	ISA_HAZARD_hazard_info@GOT(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movzbl	10(%eax,%ecx), %eax
	movzbl	%al, %eax
	andl	-24(%ebp), %eax
	testl	%eax, %eax
	jne	.L11
	.loc 1 791 0
	movl	-28(%ebp), %esi
	movl	-12(%ebp), %edx
	movl	ISA_HAZARD_hazard_info@GOT(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movzbl	11(%eax,%ecx), %edx
	movl	ISA_HAZARD_hazard_index@GOT(%ebx), %eax
	movb	%dl, (%eax,%esi)
.L11:
.LBE2:
	.loc 1 780 0
	addl	$1, -28(%ebp)
.L2:
	cmpl	$763, -28(%ebp)
	jle	.L3
	.loc 1 794 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE9:
	.size	ISA_HAZARD_Initialize, .-ISA_HAZARD_Initialize
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
	.long	.LFB9
	.long	.LFE9-.LFB9
	.byte	0x4
	.long	.LCFI0-.LFB9
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
	.file 2 "topcode.h"
	.file 3 "targ_isa_subset.h"
	.file 4 "targ_isa_hazards.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB9-.Ltext0
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
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x397
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"targ_isa_hazards.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/targ_info"
	.uleb128 0x2
	.string	"INT"
	.byte	0x2
	.byte	0x28
	.long	0x9c
	.uleb128 0x3
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x3
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x4
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"mUINT8"
	.byte	0x2
	.byte	0x32
	.long	0xff
	.uleb128 0x3
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.string	"mUINT16"
	.byte	0x2
	.byte	0x33
	.long	0x11f
	.uleb128 0x3
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x5
	.long	0x18a
	.byte	0x4
	.byte	0x3
	.byte	0x41
	.uleb128 0x6
	.string	"ISA_SUBSET_MIPS4"
	.sleb128 0
	.uleb128 0x6
	.string	"ISA_SUBSET_UNDEFINED"
	.sleb128 1
	.uleb128 0x6
	.string	"ISA_SUBSET_MIN"
	.sleb128 0
	.uleb128 0x6
	.string	"ISA_SUBSET_MAX"
	.sleb128 0
	.byte	0x0
	.uleb128 0x2
	.string	"ISA_SUBSET"
	.byte	0x3
	.byte	0x46
	.long	0x135
	.uleb128 0x5
	.long	0x1f9
	.byte	0x4
	.byte	0x4
	.byte	0x54
	.uleb128 0x6
	.string	"ISA_HAZARD_result"
	.sleb128 0
	.uleb128 0x6
	.string	"ISA_HAZARD_operand"
	.sleb128 1
	.uleb128 0x6
	.string	"ISA_HAZARD_errata"
	.sleb128 2
	.uleb128 0x6
	.string	"ISA_HAZARD_UNDEFINED"
	.sleb128 3
	.byte	0x0
	.uleb128 0x2
	.string	"ISA_HAZARD"
	.byte	0x4
	.byte	0x59
	.long	0x19c
	.uleb128 0x7
	.long	0x279
	.byte	0xc
	.byte	0x4
	.byte	0x5b
	.uleb128 0x8
	.string	"type"
	.byte	0x4
	.byte	0x5c
	.long	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"data"
	.byte	0x4
	.byte	0x5d
	.long	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"pre_ops"
	.byte	0x4
	.byte	0x5e
	.long	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.string	"post_ops"
	.byte	0x4
	.byte	0x5f
	.long	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"isa_mask"
	.byte	0x4
	.byte	0x60
	.long	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.string	"next"
	.byte	0x4
	.byte	0x61
	.long	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x2
	.string	"ISA_HAZARD_INFO"
	.byte	0x4
	.byte	0x62
	.long	0x20b
	.uleb128 0x9
	.long	0x30d
	.byte	0x1
	.string	"ISA_HAZARD_Initialize"
	.byte	0x1
	.value	0x309
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.long	.LLST0
	.uleb128 0xa
	.string	"top"
	.byte	0x1
	.value	0x30a
	.long	0x91
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"mask"
	.byte	0x1
	.value	0x30b
	.long	0x91
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.long	.LBB2
	.long	.LBE2
	.uleb128 0xa
	.string	"j"
	.byte	0x1
	.value	0x30d
	.long	0x91
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.string	"k"
	.byte	0x1
	.value	0x30d
	.long	0x91
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.value	0x30e
	.long	0x91
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.string	"ISA_SUBSET_Value"
	.byte	0x3
	.byte	0x47
	.long	0x18a
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x338
	.long	0xf1
	.uleb128 0xe
	.long	0x338
	.value	0x2fb
	.byte	0x0
	.uleb128 0x4
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.string	"ISA_HAZARD_hazard_index"
	.byte	0x1
	.byte	0x9
	.long	0x327
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ISA_HAZARD_hazard_index
	.uleb128 0xd
	.long	0x375
	.long	0x279
	.uleb128 0x10
	.long	0x338
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.string	"ISA_HAZARD_hazard_info"
	.byte	0x1
	.byte	0x5
	.long	0x365
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ISA_HAZARD_hazard_info
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
	.uleb128 0x8
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
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x5
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
	.uleb128 0x10
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
	.long	0x5f
	.value	0x2
	.long	.Ldebug_info0
	.long	0x39b
	.long	0x290
	.string	"ISA_HAZARD_Initialize"
	.long	0x33f
	.string	"ISA_HAZARD_hazard_index"
	.long	0x375
	.string	"ISA_HAZARD_hazard_info"
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
