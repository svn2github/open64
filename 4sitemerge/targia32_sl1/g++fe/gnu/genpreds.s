	.file	"genpreds.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"uns_arith_operand"
.LC1:
	.string	"arith_operand"
.LC2:
	.string	"arith32_operand"
.LC3:
	.string	"reg_or_0_operand"
.LC4:
	.string	"true_reg_or_0_operand"
.LC5:
	.string	"small_int"
.LC6:
	.string	"large_int"
.LC7:
	.string	"mips_const_double_ok"
.LC8:
	.string	"const_float_1_operand"
.LC9:
	.string	"simple_memory_operand"
.LC10:
	.string	"equality_op"
.LC11:
	.string	"cmp_op"
.LC12:
	.string	"trap_cmp_op"
.LC13:
	.string	"pc_or_label_operand"
.LC14:
	.string	"call_insn_operand"
.LC15:
	.string	"move_operand"
.LC16:
	.string	"movdi_operand"
.LC17:
	.string	"se_register_operand"
.LC18:
	.string	"se_reg_or_0_operand"
.LC19:
	.string	"se_uns_arith_operand"
.LC20:
	.string	"se_arith_operand"
.LC21:
	.string	"se_nonmemory_operand"
.LC22:
	.string	"consttable_operand"
.LC23:
	.string	"fcc_register_operand"
.LC24:
	.string	"extend_operator"
.LC25:
	.string	"highpart_shift_operator"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	predicate.6339, @object
	.size	predicate.6339, 17056
predicate.6339:
	.long	.LC0
	.long	71
	.long	64
	.long	73
	.zero	640
	.long	.LC1
	.long	71
	.long	64
	.long	73
	.zero	640
	.long	.LC2
	.long	71
	.long	64
	.long	73
	.zero	640
	.long	.LC3
	.long	71
	.long	64
	.long	65
	.long	73
	.zero	636
	.long	.LC4
	.long	71
	.long	64
	.long	65
	.long	73
	.zero	636
	.long	.LC5
	.long	64
	.zero	648
	.long	.LC6
	.long	64
	.zero	648
	.long	.LC7
	.long	65
	.zero	648
	.long	.LC8
	.long	65
	.zero	648
	.long	.LC9
	.long	76
	.long	73
	.zero	644
	.long	.LC10
	.long	113
	.long	112
	.zero	644
	.long	.LC11
	.long	113
	.long	112
	.long	115
	.long	114
	.long	119
	.long	118
	.long	117
	.long	116
	.long	121
	.long	120
	.zero	612
	.long	.LC12
	.long	113
	.long	112
	.long	114
	.long	118
	.long	117
	.long	121
	.zero	628
	.long	.LC13
	.long	69
	.long	77
	.zero	644
	.long	.LC14
	.long	64
	.long	68
	.long	78
	.long	71
	.zero	636
	.long	.LC15
	.long	64
	.long	65
	.long	68
	.long	78
	.long	77
	.long	73
	.long	71
	.long	76
	.zero	620
	.long	.LC16
	.long	64
	.long	65
	.long	68
	.long	78
	.long	77
	.long	73
	.long	71
	.long	76
	.long	130
	.zero	616
	.long	.LC17
	.long	73
	.long	71
	.long	130
	.zero	640
	.long	.LC18
	.long	71
	.long	64
	.long	65
	.long	73
	.long	130
	.zero	632
	.long	.LC19
	.long	71
	.long	64
	.long	73
	.long	130
	.zero	636
	.long	.LC20
	.long	71
	.long	64
	.long	73
	.long	130
	.zero	636
	.long	.LC21
	.long	64
	.long	65
	.long	68
	.long	78
	.long	77
	.long	73
	.long	71
	.long	130
	.zero	620
	.long	.LC22
	.long	77
	.long	78
	.long	64
	.long	65
	.long	68
	.zero	632
	.long	.LC23
	.long	71
	.long	73
	.zero	644
	.long	.LC24
	.long	130
	.long	131
	.zero	644
	.long	.LC25
	.long	99
	.long	100
	.long	101
	.long	98
	.zero	636
	.section	.rodata
.LC26:
	.string	"#ifdef RTX_CODE\n"
	.align 4
.LC27:
	.string	"extern int %s PARAMS ((rtx, enum machine_mode));\n"
.LC28:
	.string	"\n#endif /* RTX_CODE */\n"
	.text
	.type	output_predicate_decls, @function
output_predicate_decls:
.LFB15:
	.file 1 "../../../kg++fe/gnu/genpreds.c"
	.loc 1 35 0
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
	.loc 1 45 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 46 0
	movl	$0, -8(%ebp)
	jmp	.L2
.L3:
	.loc 1 47 0
	movl	-8(%ebp), %eax
	leal	predicate.6339@GOTOFF(%ebx), %edx
	imull	$656, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	%eax, 4(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 46 0
	addl	$1, -8(%ebp)
.L2:
	cmpl	$25, -8(%ebp)
	jbe	.L3
	.loc 1 49 0
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 51 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	output_predicate_decls, .-output_predicate_decls
	.section	.rodata
	.align 4
.LC29:
	.string	"/* Generated automatically by the program `genpreds'.  */\n"
.LC30:
	.string	"#ifndef GCC_TM_PREDS_H"
.LC31:
	.string	"#define GCC_TM_PREDS_H\n"
.LC32:
	.string	"#endif /* GCC_TM_PREDS_H */"
	.text
.globl main
	.type	main, @function
main:
.LFB16:
	.loc 1 55 0
	leal	4(%esp), %ecx
.LCFI4:
	andl	$-16, %esp
	pushl	-4(%ecx)
.LCFI5:
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%ebx
.LCFI8:
	pushl	%ecx
.LCFI9:
	subl	$16, %esp
.LCFI10:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 56 0
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 57 0
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 58 0
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 60 0
	call	output_predicate_decls
	.loc 1 62 0
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 64 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	ferror@PLT
	testl	%eax, %eax
	jne	.L7
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fflush@PLT
	testl	%eax, %eax
	jne	.L7
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
	testl	%eax, %eax
	je	.L10
.L7:
	.loc 1 65 0
	movl	$1, -12(%ebp)
	jmp	.L11
.L10:
	.loc 1 67 0
	movl	$0, -12(%ebp)
.L11:
	movl	-12(%ebp), %eax
	.loc 1 68 0
	addl	$16, %esp
	popl	%ecx
	popl	%ebx
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
.LFE16:
	.size	main, .-main
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
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.byte	0x9
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI9-.LCFI7
	.byte	0x84
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE2:
	.file 2 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 3 "../../../kg++fe/gnu/rtl.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/bits/types.h"
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
	.value	0x1
	.byte	0x51
	.long	.LCFI5-.Ltext0
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xd35
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/genpreds.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.byte	0x4
	.long	0xa3
	.uleb128 0x3
	.long	0xa8
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x6
	.string	"size_t"
	.byte	0x2
	.byte	0xd6
	.long	0xb7
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
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x4
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x6
	.string	"__quad_t"
	.byte	0x6
	.byte	0x3b
	.long	0x12b
	.uleb128 0x6
	.string	"__off_t"
	.byte	0x6
	.byte	0x90
	.long	0x175
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x6
	.string	"__off64_t"
	.byte	0x6
	.byte	0x91
	.long	0x156
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.long	0xa8
	.uleb128 0x8
	.long	0x415
	.long	.LASF1
	.byte	0x94
	.byte	0x4
	.byte	0x2e
	.uleb128 0x9
	.string	"_flags"
	.byte	0x5
	.value	0x10c
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"_IO_read_ptr"
	.byte	0x5
	.value	0x111
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"_IO_read_end"
	.byte	0x5
	.value	0x112
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"_IO_read_base"
	.byte	0x5
	.value	0x113
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"_IO_write_base"
	.byte	0x5
	.value	0x114
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"_IO_write_ptr"
	.byte	0x5
	.value	0x115
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"_IO_write_end"
	.byte	0x5
	.value	0x116
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"_IO_buf_base"
	.byte	0x5
	.value	0x117
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"_IO_buf_end"
	.byte	0x5
	.value	0x118
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"_IO_save_base"
	.byte	0x5
	.value	0x11a
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"_IO_backup_base"
	.byte	0x5
	.value	0x11b
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"_IO_save_end"
	.byte	0x5
	.value	0x11c
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"_markers"
	.byte	0x5
	.value	0x11e
	.long	0x466
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"_chain"
	.byte	0x5
	.value	0x120
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"_fileno"
	.byte	0x5
	.value	0x122
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"_flags2"
	.byte	0x5
	.value	0x126
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"_old_offset"
	.byte	0x5
	.value	0x128
	.long	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"_cur_column"
	.byte	0x5
	.value	0x12c
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"_vtable_offset"
	.byte	0x5
	.value	0x12d
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"_shortbuf"
	.byte	0x5
	.value	0x12e
	.long	0x472
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"_lock"
	.byte	0x5
	.value	0x132
	.long	0x482
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"_offset"
	.byte	0x5
	.value	0x13b
	.long	0x181
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"__pad1"
	.byte	0x5
	.value	0x144
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"__pad2"
	.byte	0x5
	.value	0x145
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"__pad3"
	.byte	0x5
	.value	0x146
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"__pad4"
	.byte	0x5
	.value	0x147
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"__pad5"
	.byte	0x5
	.value	0x148
	.long	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"_mode"
	.byte	0x5
	.value	0x14a
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"_unused2"
	.byte	0x5
	.value	0x14c
	.long	0x488
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xa
	.string	"_IO_lock_t"
	.byte	0x5
	.byte	0xb0
	.uleb128 0xb
	.long	0x466
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x5
	.byte	0xb6
	.uleb128 0xc
	.string	"_next"
	.byte	0x5
	.byte	0xb7
	.long	0x466
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"_sbuf"
	.byte	0x5
	.byte	0xb8
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"_pos"
	.byte	0x5
	.byte	0xbc
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x423
	.uleb128 0x2
	.byte	0x4
	.long	0x19a
	.uleb128 0xd
	.long	0x482
	.long	0xa8
	.uleb128 0xe
	.long	0xbe
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x415
	.uleb128 0xd
	.long	0x498
	.long	0xa8
	.uleb128 0xe
	.long	0xbe
	.byte	0x27
	.byte	0x0
	.uleb128 0xf
	.long	0xc67
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x29
	.uleb128 0x10
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x10
	.string	"NIL"
	.sleb128 1
	.uleb128 0x10
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x10
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x10
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x10
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x10
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x10
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x10
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x10
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x10
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x10
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x10
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x10
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x10
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x10
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x10
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x10
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x10
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x10
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x10
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x10
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x10
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x10
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x10
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x10
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x10
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x10
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x10
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x10
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x10
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x10
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x10
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x10
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x10
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x10
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x10
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x10
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x10
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x10
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x10
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x10
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x10
	.string	"INSN"
	.sleb128 42
	.uleb128 0x10
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x10
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x10
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x10
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x10
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x10
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x10
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x10
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x10
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x10
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x10
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x10
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x10
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x10
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x10
	.string	"SET"
	.sleb128 57
	.uleb128 0x10
	.string	"USE"
	.sleb128 58
	.uleb128 0x10
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x10
	.string	"CALL"
	.sleb128 60
	.uleb128 0x10
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x10
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x10
	.string	"RESX"
	.sleb128 63
	.uleb128 0x10
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x10
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x10
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x10
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x10
	.string	"CONST"
	.sleb128 68
	.uleb128 0x10
	.string	"PC"
	.sleb128 69
	.uleb128 0x10
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x10
	.string	"REG"
	.sleb128 71
	.uleb128 0x10
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x10
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x10
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x10
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x10
	.string	"MEM"
	.sleb128 76
	.uleb128 0x10
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x10
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x10
	.string	"CC0"
	.sleb128 79
	.uleb128 0x10
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x10
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x10
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x10
	.string	"COND"
	.sleb128 83
	.uleb128 0x10
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x10
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x10
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x10
	.string	"NEG"
	.sleb128 87
	.uleb128 0x10
	.string	"MULT"
	.sleb128 88
	.uleb128 0x10
	.string	"DIV"
	.sleb128 89
	.uleb128 0x10
	.string	"MOD"
	.sleb128 90
	.uleb128 0x10
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x10
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x10
	.string	"AND"
	.sleb128 93
	.uleb128 0x10
	.string	"IOR"
	.sleb128 94
	.uleb128 0x10
	.string	"XOR"
	.sleb128 95
	.uleb128 0x10
	.string	"NOT"
	.sleb128 96
	.uleb128 0x10
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x10
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x10
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x10
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x10
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x10
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x10
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x10
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x10
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x10
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x10
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x10
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x10
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x10
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x10
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x10
	.string	"NE"
	.sleb128 112
	.uleb128 0x10
	.string	"EQ"
	.sleb128 113
	.uleb128 0x10
	.string	"GE"
	.sleb128 114
	.uleb128 0x10
	.string	"GT"
	.sleb128 115
	.uleb128 0x10
	.string	"LE"
	.sleb128 116
	.uleb128 0x10
	.string	"LT"
	.sleb128 117
	.uleb128 0x10
	.string	"GEU"
	.sleb128 118
	.uleb128 0x10
	.string	"GTU"
	.sleb128 119
	.uleb128 0x10
	.string	"LEU"
	.sleb128 120
	.uleb128 0x10
	.string	"LTU"
	.sleb128 121
	.uleb128 0x10
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x10
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x10
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x10
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x10
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x10
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x10
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x10
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x10
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x10
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x10
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x10
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x10
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x10
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x10
	.string	"FIX"
	.sleb128 136
	.uleb128 0x10
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x10
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x10
	.string	"ABS"
	.sleb128 139
	.uleb128 0x10
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x10
	.string	"FFS"
	.sleb128 141
	.uleb128 0x10
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x10
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x10
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x10
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x10
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x10
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x10
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x10
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x10
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x10
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x10
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x10
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x10
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x10
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x10
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x10
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x10
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x10
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x10
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x10
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x10
	.string	"PHI"
	.sleb128 162
	.uleb128 0x10
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x11
	.long	0xcdf
	.string	"output_predicate_decls"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x12
	.long	0xcbb
	.value	0x290
	.byte	0x1
	.byte	0x25
	.uleb128 0xc
	.string	"name"
	.byte	0x1
	.byte	0x26
	.long	0xcdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"codes"
	.byte	0x1
	.byte	0x27
	.long	0xcf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x2b
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.string	"predicate"
	.byte	0x1
	.byte	0x28
	.long	0xd23
	.byte	0x5
	.byte	0x3
	.long	predicate.6339
	.byte	0x0
	.uleb128 0x3
	.long	0x9d
	.uleb128 0xd
	.long	0xcf4
	.long	0x498
	.uleb128 0xe
	.long	0xbe
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3
	.long	0xce4
	.uleb128 0x14
	.byte	0x1
	.string	"main"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.long	0xb0
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0xd
	.long	0xd23
	.long	0xc92
	.uleb128 0xe
	.long	0xbe
	.byte	0x19
	.byte	0x0
	.uleb128 0x3
	.long	0xd13
	.uleb128 0x15
	.string	"stdout"
	.byte	0x4
	.byte	0x8f
	.long	0x46c
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.long	0x17
	.value	0x2
	.long	.Ldebug_info0
	.long	0xd39
	.long	0xcf9
	.string	"main"
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
