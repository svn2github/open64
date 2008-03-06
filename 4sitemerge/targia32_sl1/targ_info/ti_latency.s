	.file	"ti_latency.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl TI_LATENCY_Commit_Cycle
	.type	TI_LATENCY_Commit_Cycle, @function
TI_LATENCY_Commit_Cycle:
.LFB64:
	.file 1 "../../common/targ_info/access/ti_latency.c"
	.loc 1 60 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%edi
.LCFI2:
	pushl	%esi
.LCFI3:
	subl	$4, %esp
.LCFI4:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 61 0
	cmpl	$384, 8(%ebp)
	jne	.L2
	movl	$1, -12(%ebp)
	jmp	.L4
.L2:
	.loc 1 62 0
	movl	8(%ebp), %edx
	movl	ISA_PROPERTIES_flags@GOT(%ecx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	%esi, %eax
	andl	$524288, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L5
	movl	$2, -12(%ebp)
	jmp	.L4
.L5:
	.loc 1 64 0
	movl	$0, -12(%ebp)
.L4:
	movl	-12(%ebp), %eax
	.loc 1 65 0
	addl	$4, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE64:
	.size	TI_LATENCY_Commit_Cycle, .-TI_LATENCY_Commit_Cycle
	.section	.rodata
	.align 4
.LC0:
	.string	"found both a pre- and post-hazard for %s"
	.align 4
.LC1:
	.string	"multiple operand hazards for %s"
	.text
.globl TI_LATENCY_Operand_Hazard
	.type	TI_LATENCY_Operand_Hazard, @function
TI_LATENCY_Operand_Hazard:
.LFB65:
	.loc 1 80 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%ebx
.LCFI7:
	subl	$52, %esp
.LCFI8:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 82 0
	movl	$0, -20(%ebp)
	.loc 1 83 0
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 85 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_HAZARD_First
	movl	%eax, -24(%ebp)
	.loc 1 86 0
	jmp	.L9
.L10:
	.loc 1 89 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_HAZARD_Type
	cmpl	$1, %eax
	jne	.L11
.LBB2:
	.loc 1 91 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_HAZARD_Pre_Ops
	movl	%eax, -12(%ebp)
	.loc 1 92 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_HAZARD_Post_Ops
	movl	%eax, -8(%ebp)
	.loc 1 94 0
	cmpl	$0, -12(%ebp)
	je	.L13
	.loc 1 95 0
	cmpl	$0, -8(%ebp)
	je	.L15
	.loc 1 96 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	TOP_Name@PLT
	movl	%eax, 8(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	TI_errmsg@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 98 0
	movl	16(%ebp), %eax
	movl	$-1, (%eax)
	.loc 1 99 0
	movl	$0, -40(%ebp)
	jmp	.L17
.L15:
	.loc 1 101 0
	movl	-12(%ebp), %eax
	negl	%eax
	movl	%eax, -16(%ebp)
	jmp	.L18
.L13:
	.loc 1 102 0
	cmpl	$0, -8(%ebp)
	je	.L19
	.loc 1 103 0
	movl	-8(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L18
.L19:
	.loc 1 105 0
	movl	$0, -16(%ebp)
.L18:
	.loc 1 108 0
	cmpl	$0, -16(%ebp)
	je	.L11
	.loc 1 109 0
	cmpl	$0, -20(%ebp)
	je	.L22
	.loc 1 110 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	TOP_Name@PLT
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	TI_errmsg@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 112 0
	movl	16(%ebp), %eax
	movl	$-1, (%eax)
	.loc 1 113 0
	movl	$0, -40(%ebp)
	jmp	.L17
.L22:
	.loc 1 115 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 116 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_HAZARD_Data
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L11:
.LBE2:
	.loc 1 88 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_HAZARD_Next
	movl	%eax, -24(%ebp)
.L9:
	.loc 1 86 0
	cmpl	$0, -24(%ebp)
	jne	.L10
	.loc 1 121 0
	movl	-20(%ebp), %eax
	movl	%eax, -40(%ebp)
.L17:
	movl	-40(%ebp), %eax
	.loc 1 122 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE65:
	.size	TI_LATENCY_Operand_Hazard, .-TI_LATENCY_Operand_Hazard
	.type	ISA_HAZARD_First, @function
ISA_HAZARD_First:
.LFB53:
	.file 2 "./targ_isa_hazards.h"
	.loc 2 107 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	subl	$20, %esp
.LCFI11:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 2 110 0
	movl	8(%ebp), %edx
	movl	ISA_HAZARD_hazard_index@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%ebp)
	.loc 2 111 0
	cmpl	$0, -4(%ebp)
	je	.L27
	movl	-4(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ISA_HAZARD_hazard_info@GOT(%ecx), %eax
	addl	%eax, %edx
	movl	%edx, -20(%ebp)
	jmp	.L29
.L27:
	movl	$0, -20(%ebp)
.L29:
	movl	-20(%ebp), %eax
	.loc 2 112 0
	leave
	ret
.LFE53:
	.size	ISA_HAZARD_First, .-ISA_HAZARD_First
	.type	ISA_HAZARD_Type, @function
ISA_HAZARD_Type:
.LFB55:
	.loc 2 122 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	.loc 2 123 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	.loc 2 124 0
	popl	%ebp
	ret
.LFE55:
	.size	ISA_HAZARD_Type, .-ISA_HAZARD_Type
	.type	ISA_HAZARD_Pre_Ops, @function
ISA_HAZARD_Pre_Ops:
.LFB57:
	.loc 2 132 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	.loc 2 133 0
	movl	8(%ebp), %eax
	movzwl	6(%eax), %eax
	movzwl	%ax, %eax
	.loc 2 134 0
	popl	%ebp
	ret
.LFE57:
	.size	ISA_HAZARD_Pre_Ops, .-ISA_HAZARD_Pre_Ops
	.type	ISA_HAZARD_Post_Ops, @function
ISA_HAZARD_Post_Ops:
.LFB58:
	.loc 2 137 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	.loc 2 138 0
	movl	8(%ebp), %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	.loc 2 139 0
	popl	%ebp
	ret
.LFE58:
	.size	ISA_HAZARD_Post_Ops, .-ISA_HAZARD_Post_Ops
	.type	ISA_HAZARD_Data, @function
ISA_HAZARD_Data:
.LFB56:
	.loc 2 127 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	.loc 2 128 0
	movl	8(%ebp), %eax
	movzwl	4(%eax), %eax
	movzwl	%ax, %eax
	.loc 2 129 0
	popl	%ebp
	ret
.LFE56:
	.size	ISA_HAZARD_Data, .-ISA_HAZARD_Data
	.type	ISA_HAZARD_Next, @function
ISA_HAZARD_Next:
.LFB54:
	.loc 2 115 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	subl	$20, %esp
.LCFI22:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 2 117 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%ebp)
	.loc 2 118 0
	cmpl	$0, -4(%ebp)
	je	.L40
	movl	-4(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ISA_HAZARD_hazard_info@GOT(%ecx), %eax
	addl	%eax, %edx
	movl	%edx, -20(%ebp)
	jmp	.L42
.L40:
	movl	$0, -20(%ebp)
.L42:
	movl	-20(%ebp), %eax
	.loc 2 119 0
	leave
	ret
.LFE54:
	.size	ISA_HAZARD_Next, .-ISA_HAZARD_Next
	.section	.rodata
	.align 4
.LC2:
	.string	"found a result pre-hazard for %s"
	.align 4
.LC3:
	.string	"multiple result hazards for %s"
	.text
.globl TI_LATENCY_Result_Hazard
	.type	TI_LATENCY_Result_Hazard, @function
TI_LATENCY_Result_Hazard:
.LFB66:
	.loc 1 138 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	pushl	%ebx
.LCFI25:
	subl	$36, %esp
.LCFI26:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 140 0
	movl	$0, -16(%ebp)
	.loc 1 141 0
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 143 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_HAZARD_First
	movl	%eax, -20(%ebp)
	.loc 1 144 0
	jmp	.L45
.L46:
	.loc 1 147 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_HAZARD_Type
	testl	%eax, %eax
	jne	.L47
.LBB3:
	.loc 1 148 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_HAZARD_Pre_Ops
	movl	%eax, -12(%ebp)
	.loc 1 149 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_HAZARD_Post_Ops
	movl	%eax, -8(%ebp)
	.loc 1 151 0
	cmpl	$0, -12(%ebp)
	je	.L49
	.loc 1 152 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	TOP_Name@PLT
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	TI_errmsg@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 154 0
	movl	16(%ebp), %eax
	movl	$-1, (%eax)
	.loc 1 155 0
	movl	$0, -24(%ebp)
	jmp	.L51
.L49:
	.loc 1 158 0
	cmpl	$0, -8(%ebp)
	je	.L47
	.loc 1 159 0
	cmpl	$0, -16(%ebp)
	je	.L53
	.loc 1 160 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	TOP_Name@PLT
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	TI_errmsg@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 162 0
	movl	16(%ebp), %eax
	movl	$-1, (%eax)
	.loc 1 163 0
	movl	$0, -24(%ebp)
	jmp	.L51
.L53:
	.loc 1 165 0
	movl	-8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 166 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_HAZARD_Data
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L47:
.LBE3:
	.loc 1 146 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_HAZARD_Next
	movl	%eax, -20(%ebp)
.L45:
	.loc 1 144 0
	cmpl	$0, -20(%ebp)
	jne	.L46
	.loc 1 171 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L51:
	movl	-24(%ebp), %eax
	.loc 1 172 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE66:
	.size	TI_LATENCY_Result_Hazard, .-TI_LATENCY_Result_Hazard
	.section	.rodata
	.align 4
.LC4:
	.string	"found an errata pre-hazard for %s"
	.align 4
.LC5:
	.string	"multiple errata hazards for %s"
	.text
.globl TI_LATENCY_Errata_Hazard
	.type	TI_LATENCY_Errata_Hazard, @function
TI_LATENCY_Errata_Hazard:
.LFB67:
	.loc 1 188 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	pushl	%ebx
.LCFI29:
	subl	$36, %esp
.LCFI30:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 190 0
	movl	$0, -16(%ebp)
	.loc 1 191 0
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 193 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_HAZARD_First
	movl	%eax, -20(%ebp)
	.loc 1 194 0
	jmp	.L58
.L59:
	.loc 1 197 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_HAZARD_Type
	cmpl	$2, %eax
	jne	.L60
.LBB4:
	.loc 1 198 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_HAZARD_Pre_Ops
	movl	%eax, -12(%ebp)
	.loc 1 199 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_HAZARD_Post_Ops
	movl	%eax, -8(%ebp)
	.loc 1 201 0
	cmpl	$0, -12(%ebp)
	je	.L62
	.loc 1 202 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	TOP_Name@PLT
	movl	%eax, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	TI_errmsg@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 204 0
	movl	16(%ebp), %eax
	movl	$-1, (%eax)
	.loc 1 205 0
	movl	$0, -24(%ebp)
	jmp	.L64
.L62:
	.loc 1 208 0
	cmpl	$0, -8(%ebp)
	je	.L60
	.loc 1 209 0
	cmpl	$0, -16(%ebp)
	je	.L66
	.loc 1 210 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	TOP_Name@PLT
	movl	%eax, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	TI_errmsg@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 212 0
	movl	16(%ebp), %eax
	movl	$-1, (%eax)
	.loc 1 213 0
	movl	$0, -24(%ebp)
	jmp	.L64
.L66:
	.loc 1 215 0
	movl	-8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 216 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_HAZARD_Data
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L60:
.LBE4:
	.loc 1 196 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_HAZARD_Next
	movl	%eax, -20(%ebp)
.L58:
	.loc 1 194 0
	cmpl	$0, -20(%ebp)
	jne	.L59
	.loc 1 221 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L64:
	movl	-24(%ebp), %eax
	.loc 1 222 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE67:
	.size	TI_LATENCY_Errata_Hazard, .-TI_LATENCY_Errata_Hazard
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
	.long	.LFB64
	.long	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI0-.LFB64
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
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.byte	0x4
	.long	.LCFI5-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI8-.LCFI6
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI9-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB55
	.long	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI12-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI14-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI16-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI18-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI20-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB66
	.long	.LFE66-.LFB66
	.byte	0x4
	.long	.LCFI23-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI26-.LCFI24
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB67
	.long	.LFE67-.LFB67
	.byte	0x4
	.long	.LCFI27-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI30-.LCFI28
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE18:
	.file 3 "./topcode.h"
	.file 4 "../../common/targ_info/access/ti_si.h"
	.file 5 "./targ_isa_properties.h"
	.file 6 "../../common/targ_info/access/ti_errors.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB64-.Ltext0
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
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB65-.Ltext0
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
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB53-.Ltext0
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
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB55-.Ltext0
	.long	.LCFI12-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI12-.Ltext0
	.long	.LCFI13-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI13-.Ltext0
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB57-.Ltext0
	.long	.LCFI14-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI14-.Ltext0
	.long	.LCFI15-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI15-.Ltext0
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB58-.Ltext0
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
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB56-.Ltext0
	.long	.LCFI18-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI18-.Ltext0
	.long	.LCFI19-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI19-.Ltext0
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB54-.Ltext0
	.long	.LCFI20-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI20-.Ltext0
	.long	.LCFI21-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI21-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB66-.Ltext0
	.long	.LCFI23-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI23-.Ltext0
	.long	.LCFI24-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI24-.Ltext0
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB67-.Ltext0
	.long	.LCFI27-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI27-.Ltext0
	.long	.LCFI28-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI28-.Ltext0
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x3f5a
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../common/targ_info/access/ti_latency.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/targ_info"
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
	.uleb128 0x3
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.byte	0x4
	.long	0x15b
	.uleb128 0x5
	.long	0x14d
	.uleb128 0x6
	.long	0x3490
	.string	"topcode"
	.byte	0x4
	.byte	0x4
	.value	0x15e
	.uleb128 0x7
	.string	"TOP_abs16"
	.sleb128 0
	.uleb128 0x7
	.string	"TOP_add16"
	.sleb128 1
	.uleb128 0x7
	.string	"TOP_add16_i"
	.sleb128 2
	.uleb128 0x7
	.string	"TOP_add16_sp"
	.sleb128 3
	.uleb128 0x7
	.string	"TOP_and16"
	.sleb128 4
	.uleb128 0x7
	.string	"TOP_and16_i"
	.sleb128 5
	.uleb128 0x7
	.string	"TOP_jr16"
	.sleb128 6
	.uleb128 0x7
	.string	"TOP_jr16_lnk"
	.sleb128 7
	.uleb128 0x7
	.string	"TOP_ldw16"
	.sleb128 8
	.uleb128 0x7
	.string	"TOP_ldub16_rs"
	.sleb128 9
	.uleb128 0x7
	.string	"TOP_lduh16_rs"
	.sleb128 10
	.uleb128 0x7
	.string	"TOP_mv16"
	.sleb128 11
	.uleb128 0x7
	.string	"TOP_mv16_i"
	.sleb128 12
	.uleb128 0x7
	.string	"TOP_mvfc16"
	.sleb128 13
	.uleb128 0x7
	.string	"TOP_mvtc16"
	.sleb128 14
	.uleb128 0x7
	.string	"TOP_nop16"
	.sleb128 15
	.uleb128 0x7
	.string	"TOP_inv16"
	.sleb128 16
	.uleb128 0x7
	.string	"TOP_or16"
	.sleb128 17
	.uleb128 0x7
	.string	"TOP_or16_i"
	.sleb128 18
	.uleb128 0x7
	.string	"TOP_pop16"
	.sleb128 19
	.uleb128 0x7
	.string	"TOP_push16"
	.sleb128 20
	.uleb128 0x7
	.string	"TOP_ret16"
	.sleb128 21
	.uleb128 0x7
	.string	"TOP_shll16"
	.sleb128 22
	.uleb128 0x7
	.string	"TOP_shll16_i"
	.sleb128 23
	.uleb128 0x7
	.string	"TOP_shra16"
	.sleb128 24
	.uleb128 0x7
	.string	"TOP_shra16_i"
	.sleb128 25
	.uleb128 0x7
	.string	"TOP_shrl16"
	.sleb128 26
	.uleb128 0x7
	.string	"TOP_shrl16_i"
	.sleb128 27
	.uleb128 0x7
	.string	"TOP_stw16"
	.sleb128 28
	.uleb128 0x7
	.string	"TOP_sub16"
	.sleb128 29
	.uleb128 0x7
	.string	"TOP_sub16_i"
	.sleb128 30
	.uleb128 0x7
	.string	"TOP_xor16"
	.sleb128 31
	.uleb128 0x7
	.string	"TOP_xor16_i"
	.sleb128 32
	.uleb128 0x7
	.string	"TOP_br16_eqz"
	.sleb128 33
	.uleb128 0x7
	.string	"TOP_br16_nez"
	.sleb128 34
	.uleb128 0x7
	.string	"TOP_c3_bitc"
	.sleb128 35
	.uleb128 0x7
	.string	"TOP_c3_bitr"
	.sleb128 36
	.uleb128 0x7
	.string	"TOP_c3_dadd"
	.sleb128 37
	.uleb128 0x7
	.string	"TOP_c3_dmac"
	.sleb128 38
	.uleb128 0x7
	.string	"TOP_c3_dmacn"
	.sleb128 39
	.uleb128 0x7
	.string	"TOP_c3_dmac_a"
	.sleb128 40
	.uleb128 0x7
	.string	"TOP_c3_dmacn_a"
	.sleb128 41
	.uleb128 0x7
	.string	"TOP_c3_dmula"
	.sleb128 42
	.uleb128 0x7
	.string	"TOP_c3_dmulan"
	.sleb128 43
	.uleb128 0x7
	.string	"TOP_c3_dmula_a"
	.sleb128 44
	.uleb128 0x7
	.string	"TOP_c3_dmulan_a"
	.sleb128 45
	.uleb128 0x7
	.string	"TOP_c3_dshll_i"
	.sleb128 46
	.uleb128 0x7
	.string	"TOP_c3_dshrl_i"
	.sleb128 47
	.uleb128 0x7
	.string	"TOP_c3_dsub"
	.sleb128 48
	.uleb128 0x7
	.string	"TOP_c3_ld"
	.sleb128 49
	.uleb128 0x7
	.string	"TOP_c3_lead"
	.sleb128 50
	.uleb128 0x7
	.string	"TOP_c3_mac"
	.sleb128 51
	.uleb128 0x7
	.string	"TOP_c3_mac_a"
	.sleb128 52
	.uleb128 0x7
	.string	"TOP_c3_mac_ar"
	.sleb128 53
	.uleb128 0x7
	.string	"TOP_c3_mac_i"
	.sleb128 54
	.uleb128 0x7
	.string	"TOP_c3_macci"
	.sleb128 55
	.uleb128 0x7
	.string	"TOP_c3_maccr"
	.sleb128 56
	.uleb128 0x7
	.string	"TOP_c3_macd"
	.sleb128 57
	.uleb128 0x7
	.string	"TOP_c3_macn"
	.sleb128 58
	.uleb128 0x7
	.string	"TOP_c3_macn_a"
	.sleb128 59
	.uleb128 0x7
	.string	"TOP_c3_macn_ar"
	.sleb128 60
	.uleb128 0x7
	.string	"TOP_c3_macn_i"
	.sleb128 61
	.uleb128 0x7
	.string	"TOP_c3_mula"
	.sleb128 62
	.uleb128 0x7
	.string	"TOP_c3_mula_a"
	.sleb128 63
	.uleb128 0x7
	.string	"TOP_c3_mula_ar"
	.sleb128 64
	.uleb128 0x7
	.string	"TOP_c3_mula_i"
	.sleb128 65
	.uleb128 0x7
	.string	"TOP_c3_mulaci"
	.sleb128 66
	.uleb128 0x7
	.string	"TOP_c3_mulacr"
	.sleb128 67
	.uleb128 0x7
	.string	"TOP_c3_mulad"
	.sleb128 68
	.uleb128 0x7
	.string	"TOP_c3_mulan"
	.sleb128 69
	.uleb128 0x7
	.string	"TOP_c3_muls"
	.sleb128 70
	.uleb128 0x7
	.string	"TOP_c3_mulus"
	.sleb128 71
	.uleb128 0x7
	.string	"TOP_c3_mvfs"
	.sleb128 72
	.uleb128 0x7
	.string	"TOP_c3_mvfacc"
	.sleb128 73
	.uleb128 0x7
	.string	"TOP_c3_mvfadd"
	.sleb128 74
	.uleb128 0x7
	.string	"TOP_c3_mvfadds"
	.sleb128 75
	.uleb128 0x7
	.string	"TOP_c3_mvts"
	.sleb128 76
	.uleb128 0x7
	.string	"TOP_c3_mvtacc"
	.sleb128 77
	.uleb128 0x7
	.string	"TOP_c3_mvtadd"
	.sleb128 78
	.uleb128 0x7
	.string	"TOP_c3_mvtadds"
	.sleb128 79
	.uleb128 0x7
	.string	"TOP_c3_revb"
	.sleb128 80
	.uleb128 0x7
	.string	"TOP_c3_round"
	.sleb128 81
	.uleb128 0x7
	.string	"TOP_c3_saadd_a"
	.sleb128 82
	.uleb128 0x7
	.string	"TOP_c3_saaddh_a"
	.sleb128 83
	.uleb128 0x7
	.string	"TOP_c3_saadds"
	.sleb128 84
	.uleb128 0x7
	.string	"TOP_c3_saaddsh"
	.sleb128 85
	.uleb128 0x7
	.string	"TOP_c3_saddha"
	.sleb128 86
	.uleb128 0x7
	.string	"TOP_c3_saddha_a"
	.sleb128 87
	.uleb128 0x7
	.string	"TOP_c3_samulh_a"
	.sleb128 88
	.uleb128 0x7
	.string	"TOP_c3_samulsh"
	.sleb128 89
	.uleb128 0x7
	.string	"TOP_c3_sashllh"
	.sleb128 90
	.uleb128 0x7
	.string	"TOP_c3_sasub_a"
	.sleb128 91
	.uleb128 0x7
	.string	"TOP_c3_sasubh_a"
	.sleb128 92
	.uleb128 0x7
	.string	"TOP_c3_sasubs"
	.sleb128 93
	.uleb128 0x7
	.string	"TOP_c3_sasubsh"
	.sleb128 94
	.uleb128 0x7
	.string	"TOP_c3_st"
	.sleb128 95
	.uleb128 0x7
	.string	"TOP_c3_trback"
	.sleb128 96
	.uleb128 0x7
	.string	"TOP_c3_viterbi"
	.sleb128 97
	.uleb128 0x7
	.string	"TOP_c3_fft"
	.sleb128 98
	.uleb128 0x7
	.string	"TOP_c3_fftld"
	.sleb128 99
	.uleb128 0x7
	.string	"TOP_c3_fftst"
	.sleb128 100
	.uleb128 0x7
	.string	"TOP_loop"
	.sleb128 101
	.uleb128 0x7
	.string	"TOP_mvtc"
	.sleb128 102
	.uleb128 0x7
	.string	"TOP_mvfc"
	.sleb128 103
	.uleb128 0x7
	.string	"TOP_mvtc_i"
	.sleb128 104
	.uleb128 0x7
	.string	"TOP_ret"
	.sleb128 105
	.uleb128 0x7
	.string	"TOP_mc_r_ge"
	.sleb128 106
	.uleb128 0x7
	.string	"TOP_mc_r_le"
	.sleb128 107
	.uleb128 0x7
	.string	"TOP_mc_r_lt"
	.sleb128 108
	.uleb128 0x7
	.string	"TOP_mc_r_gt"
	.sleb128 109
	.uleb128 0x7
	.string	"TOP_mc_r_eq"
	.sleb128 110
	.uleb128 0x7
	.string	"TOP_mc_r_ne"
	.sleb128 111
	.uleb128 0x7
	.string	"TOP_mc_abs"
	.sleb128 112
	.uleb128 0x7
	.string	"TOP_mc_zc_le"
	.sleb128 113
	.uleb128 0x7
	.string	"TOP_mc_zc_lt"
	.sleb128 114
	.uleb128 0x7
	.string	"TOP_mc_zc_gt"
	.sleb128 115
	.uleb128 0x7
	.string	"TOP_mc_zc_ge"
	.sleb128 116
	.uleb128 0x7
	.string	"TOP_mc_zc_eq"
	.sleb128 117
	.uleb128 0x7
	.string	"TOP_mc_zc_ne"
	.sleb128 118
	.uleb128 0x7
	.string	"TOP_j"
	.sleb128 119
	.uleb128 0x7
	.string	"TOP_jal"
	.sleb128 120
	.uleb128 0x7
	.string	"TOP_lb"
	.sleb128 121
	.uleb128 0x7
	.string	"TOP_lbu"
	.sleb128 122
	.uleb128 0x7
	.string	"TOP_lh"
	.sleb128 123
	.uleb128 0x7
	.string	"TOP_lhu"
	.sleb128 124
	.uleb128 0x7
	.string	"TOP_lw"
	.sleb128 125
	.uleb128 0x7
	.string	"TOP_lwl"
	.sleb128 126
	.uleb128 0x7
	.string	"TOP_lwr"
	.sleb128 127
	.uleb128 0x7
	.string	"TOP_sb"
	.sleb128 128
	.uleb128 0x7
	.string	"TOP_sh"
	.sleb128 129
	.uleb128 0x7
	.string	"TOP_sw"
	.sleb128 130
	.uleb128 0x7
	.string	"TOP_swl"
	.sleb128 131
	.uleb128 0x7
	.string	"TOP_swr"
	.sleb128 132
	.uleb128 0x7
	.string	"TOP_ll"
	.sleb128 133
	.uleb128 0x7
	.string	"TOP_sc"
	.sleb128 134
	.uleb128 0x7
	.string	"TOP_sync"
	.sleb128 135
	.uleb128 0x7
	.string	"TOP_lwu"
	.sleb128 136
	.uleb128 0x7
	.string	"TOP_ld"
	.sleb128 137
	.uleb128 0x7
	.string	"TOP_ldl"
	.sleb128 138
	.uleb128 0x7
	.string	"TOP_ldr"
	.sleb128 139
	.uleb128 0x7
	.string	"TOP_lld"
	.sleb128 140
	.uleb128 0x7
	.string	"TOP_sd"
	.sleb128 141
	.uleb128 0x7
	.string	"TOP_sdl"
	.sleb128 142
	.uleb128 0x7
	.string	"TOP_sdr"
	.sleb128 143
	.uleb128 0x7
	.string	"TOP_scd"
	.sleb128 144
	.uleb128 0x7
	.string	"TOP_pref"
	.sleb128 145
	.uleb128 0x7
	.string	"TOP_prefx"
	.sleb128 146
	.uleb128 0x7
	.string	"TOP_add"
	.sleb128 147
	.uleb128 0x7
	.string	"TOP_addi"
	.sleb128 148
	.uleb128 0x7
	.string	"TOP_addiu"
	.sleb128 149
	.uleb128 0x7
	.string	"TOP_addu"
	.sleb128 150
	.uleb128 0x7
	.string	"TOP_div"
	.sleb128 151
	.uleb128 0x7
	.string	"TOP_divu"
	.sleb128 152
	.uleb128 0x7
	.string	"TOP_mult"
	.sleb128 153
	.uleb128 0x7
	.string	"TOP_multu"
	.sleb128 154
	.uleb128 0x7
	.string	"TOP_slt"
	.sleb128 155
	.uleb128 0x7
	.string	"TOP_slti"
	.sleb128 156
	.uleb128 0x7
	.string	"TOP_sltiu"
	.sleb128 157
	.uleb128 0x7
	.string	"TOP_sltu"
	.sleb128 158
	.uleb128 0x7
	.string	"TOP_sub"
	.sleb128 159
	.uleb128 0x7
	.string	"TOP_subu"
	.sleb128 160
	.uleb128 0x7
	.string	"TOP_dadd"
	.sleb128 161
	.uleb128 0x7
	.string	"TOP_daddi"
	.sleb128 162
	.uleb128 0x7
	.string	"TOP_daddiu"
	.sleb128 163
	.uleb128 0x7
	.string	"TOP_daddu"
	.sleb128 164
	.uleb128 0x7
	.string	"TOP_ddiv"
	.sleb128 165
	.uleb128 0x7
	.string	"TOP_ddivu"
	.sleb128 166
	.uleb128 0x7
	.string	"TOP_dmult"
	.sleb128 167
	.uleb128 0x7
	.string	"TOP_dmultu"
	.sleb128 168
	.uleb128 0x7
	.string	"TOP_dsub"
	.sleb128 169
	.uleb128 0x7
	.string	"TOP_dsubu"
	.sleb128 170
	.uleb128 0x7
	.string	"TOP_and"
	.sleb128 171
	.uleb128 0x7
	.string	"TOP_andi"
	.sleb128 172
	.uleb128 0x7
	.string	"TOP_lui"
	.sleb128 173
	.uleb128 0x7
	.string	"TOP_nor"
	.sleb128 174
	.uleb128 0x7
	.string	"TOP_or"
	.sleb128 175
	.uleb128 0x7
	.string	"TOP_ori"
	.sleb128 176
	.uleb128 0x7
	.string	"TOP_xor"
	.sleb128 177
	.uleb128 0x7
	.string	"TOP_xori"
	.sleb128 178
	.uleb128 0x7
	.string	"TOP_mfhi"
	.sleb128 179
	.uleb128 0x7
	.string	"TOP_mflo"
	.sleb128 180
	.uleb128 0x7
	.string	"TOP_mthi"
	.sleb128 181
	.uleb128 0x7
	.string	"TOP_mtlo"
	.sleb128 182
	.uleb128 0x7
	.string	"TOP_mc_z_eq"
	.sleb128 183
	.uleb128 0x7
	.string	"TOP_mc_z_ne"
	.sleb128 184
	.uleb128 0x7
	.string	"TOP_mc_z_gt"
	.sleb128 185
	.uleb128 0x7
	.string	"TOP_mc_z_ge"
	.sleb128 186
	.uleb128 0x7
	.string	"TOP_mc_z_lt"
	.sleb128 187
	.uleb128 0x7
	.string	"TOP_mc_z_le"
	.sleb128 188
	.uleb128 0x7
	.string	"TOP_mc_zn_eq"
	.sleb128 189
	.uleb128 0x7
	.string	"TOP_mc_zn_ne"
	.sleb128 190
	.uleb128 0x7
	.string	"TOP_mc_zn_gt"
	.sleb128 191
	.uleb128 0x7
	.string	"TOP_mc_zn_ge"
	.sleb128 192
	.uleb128 0x7
	.string	"TOP_mc_zn_lt"
	.sleb128 193
	.uleb128 0x7
	.string	"TOP_mc_zn_le"
	.sleb128 194
	.uleb128 0x7
	.string	"TOP_depb"
	.sleb128 195
	.uleb128 0x7
	.string	"TOP_extrbs"
	.sleb128 196
	.uleb128 0x7
	.string	"TOP_extrbu"
	.sleb128 197
	.uleb128 0x7
	.string	"TOP_movf"
	.sleb128 198
	.uleb128 0x7
	.string	"TOP_movn"
	.sleb128 199
	.uleb128 0x7
	.string	"TOP_movt"
	.sleb128 200
	.uleb128 0x7
	.string	"TOP_movz"
	.sleb128 201
	.uleb128 0x7
	.string	"TOP_sllv"
	.sleb128 202
	.uleb128 0x7
	.string	"TOP_sll"
	.sleb128 203
	.uleb128 0x7
	.string	"TOP_srav"
	.sleb128 204
	.uleb128 0x7
	.string	"TOP_sra"
	.sleb128 205
	.uleb128 0x7
	.string	"TOP_srlv"
	.sleb128 206
	.uleb128 0x7
	.string	"TOP_srl"
	.sleb128 207
	.uleb128 0x7
	.string	"TOP_dsll"
	.sleb128 208
	.uleb128 0x7
	.string	"TOP_dsll32"
	.sleb128 209
	.uleb128 0x7
	.string	"TOP_dsllv"
	.sleb128 210
	.uleb128 0x7
	.string	"TOP_dsra"
	.sleb128 211
	.uleb128 0x7
	.string	"TOP_dsra32"
	.sleb128 212
	.uleb128 0x7
	.string	"TOP_dsrav"
	.sleb128 213
	.uleb128 0x7
	.string	"TOP_dsrl"
	.sleb128 214
	.uleb128 0x7
	.string	"TOP_dsrl32"
	.sleb128 215
	.uleb128 0x7
	.string	"TOP_dsrlv"
	.sleb128 216
	.uleb128 0x7
	.string	"TOP_beq"
	.sleb128 217
	.uleb128 0x7
	.string	"TOP_bgez"
	.sleb128 218
	.uleb128 0x7
	.string	"TOP_bgezal"
	.sleb128 219
	.uleb128 0x7
	.string	"TOP_bgtz"
	.sleb128 220
	.uleb128 0x7
	.string	"TOP_blez"
	.sleb128 221
	.uleb128 0x7
	.string	"TOP_bltz"
	.sleb128 222
	.uleb128 0x7
	.string	"TOP_bltzal"
	.sleb128 223
	.uleb128 0x7
	.string	"TOP_bne"
	.sleb128 224
	.uleb128 0x7
	.string	"TOP_jalr"
	.sleb128 225
	.uleb128 0x7
	.string	"TOP_jr"
	.sleb128 226
	.uleb128 0x7
	.string	"TOP_break"
	.sleb128 227
	.uleb128 0x7
	.string	"TOP_syscall"
	.sleb128 228
	.uleb128 0x7
	.string	"TOP_teq"
	.sleb128 229
	.uleb128 0x7
	.string	"TOP_teqi"
	.sleb128 230
	.uleb128 0x7
	.string	"TOP_tge"
	.sleb128 231
	.uleb128 0x7
	.string	"TOP_tgei"
	.sleb128 232
	.uleb128 0x7
	.string	"TOP_tgeiu"
	.sleb128 233
	.uleb128 0x7
	.string	"TOP_tgeu"
	.sleb128 234
	.uleb128 0x7
	.string	"TOP_tlt"
	.sleb128 235
	.uleb128 0x7
	.string	"TOP_tlti"
	.sleb128 236
	.uleb128 0x7
	.string	"TOP_tltiu"
	.sleb128 237
	.uleb128 0x7
	.string	"TOP_tltu"
	.sleb128 238
	.uleb128 0x7
	.string	"TOP_tne"
	.sleb128 239
	.uleb128 0x7
	.string	"TOP_tnei"
	.sleb128 240
	.uleb128 0x7
	.string	"TOP_lwc1"
	.sleb128 241
	.uleb128 0x7
	.string	"TOP_ldc1"
	.sleb128 242
	.uleb128 0x7
	.string	"TOP_lwxc1"
	.sleb128 243
	.uleb128 0x7
	.string	"TOP_ldxc1"
	.sleb128 244
	.uleb128 0x7
	.string	"TOP_swc1"
	.sleb128 245
	.uleb128 0x7
	.string	"TOP_sdc1"
	.sleb128 246
	.uleb128 0x7
	.string	"TOP_swxc1"
	.sleb128 247
	.uleb128 0x7
	.string	"TOP_sdxc1"
	.sleb128 248
	.uleb128 0x7
	.string	"TOP_abs_s"
	.sleb128 249
	.uleb128 0x7
	.string	"TOP_abs_d"
	.sleb128 250
	.uleb128 0x7
	.string	"TOP_add_s"
	.sleb128 251
	.uleb128 0x7
	.string	"TOP_add_d"
	.sleb128 252
	.uleb128 0x7
	.string	"TOP_c_f_s"
	.sleb128 253
	.uleb128 0x7
	.string	"TOP_c_f_d"
	.sleb128 254
	.uleb128 0x7
	.string	"TOP_c_t_s"
	.sleb128 255
	.uleb128 0x7
	.string	"TOP_c_t_d"
	.sleb128 256
	.uleb128 0x7
	.string	"TOP_c_un_s"
	.sleb128 257
	.uleb128 0x7
	.string	"TOP_c_un_d"
	.sleb128 258
	.uleb128 0x7
	.string	"TOP_c_or_s"
	.sleb128 259
	.uleb128 0x7
	.string	"TOP_c_or_d"
	.sleb128 260
	.uleb128 0x7
	.string	"TOP_c_eq_s"
	.sleb128 261
	.uleb128 0x7
	.string	"TOP_c_eq_d"
	.sleb128 262
	.uleb128 0x7
	.string	"TOP_c_neq_s"
	.sleb128 263
	.uleb128 0x7
	.string	"TOP_c_neq_d"
	.sleb128 264
	.uleb128 0x7
	.string	"TOP_c_ueq_s"
	.sleb128 265
	.uleb128 0x7
	.string	"TOP_c_ueq_d"
	.sleb128 266
	.uleb128 0x7
	.string	"TOP_c_olg_s"
	.sleb128 267
	.uleb128 0x7
	.string	"TOP_c_olg_d"
	.sleb128 268
	.uleb128 0x7
	.string	"TOP_c_olt_s"
	.sleb128 269
	.uleb128 0x7
	.string	"TOP_c_olt_d"
	.sleb128 270
	.uleb128 0x7
	.string	"TOP_c_uge_s"
	.sleb128 271
	.uleb128 0x7
	.string	"TOP_c_uge_d"
	.sleb128 272
	.uleb128 0x7
	.string	"TOP_c_ult_s"
	.sleb128 273
	.uleb128 0x7
	.string	"TOP_c_ult_d"
	.sleb128 274
	.uleb128 0x7
	.string	"TOP_c_oge_s"
	.sleb128 275
	.uleb128 0x7
	.string	"TOP_c_oge_d"
	.sleb128 276
	.uleb128 0x7
	.string	"TOP_c_ole_s"
	.sleb128 277
	.uleb128 0x7
	.string	"TOP_c_ole_d"
	.sleb128 278
	.uleb128 0x7
	.string	"TOP_c_ugt_s"
	.sleb128 279
	.uleb128 0x7
	.string	"TOP_c_ugt_d"
	.sleb128 280
	.uleb128 0x7
	.string	"TOP_c_ule_s"
	.sleb128 281
	.uleb128 0x7
	.string	"TOP_c_ule_d"
	.sleb128 282
	.uleb128 0x7
	.string	"TOP_c_ogt_s"
	.sleb128 283
	.uleb128 0x7
	.string	"TOP_c_ogt_d"
	.sleb128 284
	.uleb128 0x7
	.string	"TOP_c_sf_s"
	.sleb128 285
	.uleb128 0x7
	.string	"TOP_c_sf_d"
	.sleb128 286
	.uleb128 0x7
	.string	"TOP_c_st_s"
	.sleb128 287
	.uleb128 0x7
	.string	"TOP_c_st_d"
	.sleb128 288
	.uleb128 0x7
	.string	"TOP_c_ngle_s"
	.sleb128 289
	.uleb128 0x7
	.string	"TOP_c_ngle_d"
	.sleb128 290
	.uleb128 0x7
	.string	"TOP_c_gle_s"
	.sleb128 291
	.uleb128 0x7
	.string	"TOP_c_gle_d"
	.sleb128 292
	.uleb128 0x7
	.string	"TOP_c_seq_s"
	.sleb128 293
	.uleb128 0x7
	.string	"TOP_c_seq_d"
	.sleb128 294
	.uleb128 0x7
	.string	"TOP_c_sne_s"
	.sleb128 295
	.uleb128 0x7
	.string	"TOP_c_sne_d"
	.sleb128 296
	.uleb128 0x7
	.string	"TOP_c_ngl_s"
	.sleb128 297
	.uleb128 0x7
	.string	"TOP_c_ngl_d"
	.sleb128 298
	.uleb128 0x7
	.string	"TOP_c_gl_s"
	.sleb128 299
	.uleb128 0x7
	.string	"TOP_c_gl_d"
	.sleb128 300
	.uleb128 0x7
	.string	"TOP_c_lt_s"
	.sleb128 301
	.uleb128 0x7
	.string	"TOP_c_lt_d"
	.sleb128 302
	.uleb128 0x7
	.string	"TOP_c_nlt_s"
	.sleb128 303
	.uleb128 0x7
	.string	"TOP_c_nlt_d"
	.sleb128 304
	.uleb128 0x7
	.string	"TOP_c_nge_s"
	.sleb128 305
	.uleb128 0x7
	.string	"TOP_c_nge_d"
	.sleb128 306
	.uleb128 0x7
	.string	"TOP_c_ge_s"
	.sleb128 307
	.uleb128 0x7
	.string	"TOP_c_ge_d"
	.sleb128 308
	.uleb128 0x7
	.string	"TOP_c_le_s"
	.sleb128 309
	.uleb128 0x7
	.string	"TOP_c_le_d"
	.sleb128 310
	.uleb128 0x7
	.string	"TOP_c_nle_s"
	.sleb128 311
	.uleb128 0x7
	.string	"TOP_c_nle_d"
	.sleb128 312
	.uleb128 0x7
	.string	"TOP_c_ngt_s"
	.sleb128 313
	.uleb128 0x7
	.string	"TOP_c_ngt_d"
	.sleb128 314
	.uleb128 0x7
	.string	"TOP_c_gt_s"
	.sleb128 315
	.uleb128 0x7
	.string	"TOP_c_gt_d"
	.sleb128 316
	.uleb128 0x7
	.string	"TOP_div_s"
	.sleb128 317
	.uleb128 0x7
	.string	"TOP_div_d"
	.sleb128 318
	.uleb128 0x7
	.string	"TOP_mul_s"
	.sleb128 319
	.uleb128 0x7
	.string	"TOP_mul_d"
	.sleb128 320
	.uleb128 0x7
	.string	"TOP_neg_s"
	.sleb128 321
	.uleb128 0x7
	.string	"TOP_neg_d"
	.sleb128 322
	.uleb128 0x7
	.string	"TOP_sub_s"
	.sleb128 323
	.uleb128 0x7
	.string	"TOP_sub_d"
	.sleb128 324
	.uleb128 0x7
	.string	"TOP_sqrt_s"
	.sleb128 325
	.uleb128 0x7
	.string	"TOP_sqrt_d"
	.sleb128 326
	.uleb128 0x7
	.string	"TOP_madd_s"
	.sleb128 327
	.uleb128 0x7
	.string	"TOP_madd_d"
	.sleb128 328
	.uleb128 0x7
	.string	"TOP_msub_s"
	.sleb128 329
	.uleb128 0x7
	.string	"TOP_msub_d"
	.sleb128 330
	.uleb128 0x7
	.string	"TOP_nmadd_s"
	.sleb128 331
	.uleb128 0x7
	.string	"TOP_nmadd_d"
	.sleb128 332
	.uleb128 0x7
	.string	"TOP_nmsub_s"
	.sleb128 333
	.uleb128 0x7
	.string	"TOP_nmsub_d"
	.sleb128 334
	.uleb128 0x7
	.string	"TOP_recip_s"
	.sleb128 335
	.uleb128 0x7
	.string	"TOP_recip_d"
	.sleb128 336
	.uleb128 0x7
	.string	"TOP_rsqrt_s"
	.sleb128 337
	.uleb128 0x7
	.string	"TOP_rsqrt_d"
	.sleb128 338
	.uleb128 0x7
	.string	"TOP_cfc1"
	.sleb128 339
	.uleb128 0x7
	.string	"TOP_ctc1"
	.sleb128 340
	.uleb128 0x7
	.string	"TOP_mfc1"
	.sleb128 341
	.uleb128 0x7
	.string	"TOP_mtc1"
	.sleb128 342
	.uleb128 0x7
	.string	"TOP_dmfc1"
	.sleb128 343
	.uleb128 0x7
	.string	"TOP_dmtc1"
	.sleb128 344
	.uleb128 0x7
	.string	"TOP_mov_s"
	.sleb128 345
	.uleb128 0x7
	.string	"TOP_mov_d"
	.sleb128 346
	.uleb128 0x7
	.string	"TOP_movf_s"
	.sleb128 347
	.uleb128 0x7
	.string	"TOP_movf_d"
	.sleb128 348
	.uleb128 0x7
	.string	"TOP_movn_s"
	.sleb128 349
	.uleb128 0x7
	.string	"TOP_movn_d"
	.sleb128 350
	.uleb128 0x7
	.string	"TOP_movt_s"
	.sleb128 351
	.uleb128 0x7
	.string	"TOP_movt_d"
	.sleb128 352
	.uleb128 0x7
	.string	"TOP_movz_s"
	.sleb128 353
	.uleb128 0x7
	.string	"TOP_movz_d"
	.sleb128 354
	.uleb128 0x7
	.string	"TOP_cvt_d_s"
	.sleb128 355
	.uleb128 0x7
	.string	"TOP_cvt_d_w"
	.sleb128 356
	.uleb128 0x7
	.string	"TOP_cvt_d_l"
	.sleb128 357
	.uleb128 0x7
	.string	"TOP_cvt_l_s"
	.sleb128 358
	.uleb128 0x7
	.string	"TOP_cvt_l_d"
	.sleb128 359
	.uleb128 0x7
	.string	"TOP_cvt_s_d"
	.sleb128 360
	.uleb128 0x7
	.string	"TOP_cvt_s_w"
	.sleb128 361
	.uleb128 0x7
	.string	"TOP_cvt_s_l"
	.sleb128 362
	.uleb128 0x7
	.string	"TOP_cvt_w_s"
	.sleb128 363
	.uleb128 0x7
	.string	"TOP_cvt_w_d"
	.sleb128 364
	.uleb128 0x7
	.string	"TOP_ceil_w_s"
	.sleb128 365
	.uleb128 0x7
	.string	"TOP_ceil_w_d"
	.sleb128 366
	.uleb128 0x7
	.string	"TOP_ceil_l_s"
	.sleb128 367
	.uleb128 0x7
	.string	"TOP_ceil_l_d"
	.sleb128 368
	.uleb128 0x7
	.string	"TOP_floor_w_s"
	.sleb128 369
	.uleb128 0x7
	.string	"TOP_floor_w_d"
	.sleb128 370
	.uleb128 0x7
	.string	"TOP_floor_l_s"
	.sleb128 371
	.uleb128 0x7
	.string	"TOP_floor_l_d"
	.sleb128 372
	.uleb128 0x7
	.string	"TOP_round_w_s"
	.sleb128 373
	.uleb128 0x7
	.string	"TOP_round_w_d"
	.sleb128 374
	.uleb128 0x7
	.string	"TOP_round_l_s"
	.sleb128 375
	.uleb128 0x7
	.string	"TOP_round_l_d"
	.sleb128 376
	.uleb128 0x7
	.string	"TOP_trunc_w_s"
	.sleb128 377
	.uleb128 0x7
	.string	"TOP_trunc_w_d"
	.sleb128 378
	.uleb128 0x7
	.string	"TOP_trunc_l_s"
	.sleb128 379
	.uleb128 0x7
	.string	"TOP_trunc_l_d"
	.sleb128 380
	.uleb128 0x7
	.string	"TOP_bc1f"
	.sleb128 381
	.uleb128 0x7
	.string	"TOP_bc1t"
	.sleb128 382
	.uleb128 0x7
	.string	"TOP_asm"
	.sleb128 383
	.uleb128 0x7
	.string	"TOP_intrncall"
	.sleb128 384
	.uleb128 0x7
	.string	"TOP_spadjust"
	.sleb128 385
	.uleb128 0x7
	.string	"TOP_begin_pregtn"
	.sleb128 386
	.uleb128 0x7
	.string	"TOP_end_pregtn"
	.sleb128 387
	.uleb128 0x7
	.string	"TOP_bwd_bar"
	.sleb128 388
	.uleb128 0x7
	.string	"TOP_fwd_bar"
	.sleb128 389
	.uleb128 0x7
	.string	"TOP_label"
	.sleb128 390
	.uleb128 0x7
	.string	"TOP_c2_mvgr_r2g_h_u"
	.sleb128 391
	.uleb128 0x7
	.string	"TOP_c2_mvgr_r2g_h"
	.sleb128 392
	.uleb128 0x7
	.string	"TOP_c2_mvgr_r2g_w"
	.sleb128 393
	.uleb128 0x7
	.string	"TOP_c2_mvgr_r2g_h_u_i"
	.sleb128 394
	.uleb128 0x7
	.string	"TOP_c2_mvgr_r2g_h_i"
	.sleb128 395
	.uleb128 0x7
	.string	"TOP_c2_mvgr_r2g_w_i"
	.sleb128 396
	.uleb128 0x7
	.string	"TOP_c2_mvgr_r2s"
	.sleb128 397
	.uleb128 0x7
	.string	"TOP_c2_mvgr_g2r_ba_lh"
	.sleb128 398
	.uleb128 0x7
	.string	"TOP_c2_mvgr_g2r_ba_hh"
	.sleb128 399
	.uleb128 0x7
	.string	"TOP_c2_mvgr_g2r_ba_w"
	.sleb128 400
	.uleb128 0x7
	.string	"TOP_c2_mvgr_g2r_lh_i"
	.sleb128 401
	.uleb128 0x7
	.string	"TOP_c2_mvgr_g2r_hh_i"
	.sleb128 402
	.uleb128 0x7
	.string	"TOP_c2_mvgr_g2r_w_i"
	.sleb128 403
	.uleb128 0x7
	.string	"TOP_c2_mvgr_g2r_lh"
	.sleb128 404
	.uleb128 0x7
	.string	"TOP_c2_mvgr_g2r_hh"
	.sleb128 405
	.uleb128 0x7
	.string	"TOP_c2_mvgr_g2r_w"
	.sleb128 406
	.uleb128 0x7
	.string	"TOP_c2_mvgr_g2r_bh"
	.sleb128 407
	.uleb128 0x7
	.string	"TOP_c2_mvgr_g2r_bh_u"
	.sleb128 408
	.uleb128 0x7
	.string	"TOP_c2_mvgr_g2r_bv"
	.sleb128 409
	.uleb128 0x7
	.string	"TOP_c2_mvgr_g2r_bv_u"
	.sleb128 410
	.uleb128 0x7
	.string	"TOP_c2_mvgr_g2r_b4_i"
	.sleb128 411
	.uleb128 0x7
	.string	"TOP_c2_mvgr_g2r_b4"
	.sleb128 412
	.uleb128 0x7
	.string	"TOP_c2_mvgr_g2s"
	.sleb128 413
	.uleb128 0x7
	.string	"TOP_c2_mvgr_s2g"
	.sleb128 414
	.uleb128 0x7
	.string	"TOP_c2_mvgc_c2g"
	.sleb128 415
	.uleb128 0x7
	.string	"TOP_c2_mvgc_g2c"
	.sleb128 416
	.uleb128 0x7
	.string	"TOP_c2_ld_v_b_u"
	.sleb128 417
	.uleb128 0x7
	.string	"TOP_c2_ld_v_b"
	.sleb128 418
	.uleb128 0x7
	.string	"TOP_c2_ld_v_h"
	.sleb128 419
	.uleb128 0x7
	.string	"TOP_c2_ld_v_w"
	.sleb128 420
	.uleb128 0x7
	.string	"TOP_c2_ld_v_sw"
	.sleb128 421
	.uleb128 0x7
	.string	"TOP_c2_ld_v_m_b_u"
	.sleb128 422
	.uleb128 0x7
	.string	"TOP_c2_ld_v_m_b"
	.sleb128 423
	.uleb128 0x7
	.string	"TOP_c2_ld_v_m_h"
	.sleb128 424
	.uleb128 0x7
	.string	"TOP_c2_ld_v_m_w"
	.sleb128 425
	.uleb128 0x7
	.string	"TOP_c2_ld_s_h_u_p"
	.sleb128 426
	.uleb128 0x7
	.string	"TOP_c2_ld_s_h_u"
	.sleb128 427
	.uleb128 0x7
	.string	"TOP_c2_ld_s_h_p"
	.sleb128 428
	.uleb128 0x7
	.string	"TOP_c2_ld_s_h"
	.sleb128 429
	.uleb128 0x7
	.string	"TOP_c2_ld_s_w_p"
	.sleb128 430
	.uleb128 0x7
	.string	"TOP_c2_ld_s_w"
	.sleb128 431
	.uleb128 0x7
	.string	"TOP_c2_ld_s2s_ga_p"
	.sleb128 432
	.uleb128 0x7
	.string	"TOP_c2_ld_s2s_ga"
	.sleb128 433
	.uleb128 0x7
	.string	"TOP_c2_ld_s2s_sa_p"
	.sleb128 434
	.uleb128 0x7
	.string	"TOP_c2_ld_s2s_sa"
	.sleb128 435
	.uleb128 0x7
	.string	"TOP_c2_ld_v2g_b_u"
	.sleb128 436
	.uleb128 0x7
	.string	"TOP_c2_ld_v2g_b"
	.sleb128 437
	.uleb128 0x7
	.string	"TOP_c2_ld_v2g_h_u"
	.sleb128 438
	.uleb128 0x7
	.string	"TOP_c2_ld_v2g_h"
	.sleb128 439
	.uleb128 0x7
	.string	"TOP_c2_ld_v2g_w"
	.sleb128 440
	.uleb128 0x7
	.string	"TOP_c2_st_v_b"
	.sleb128 441
	.uleb128 0x7
	.string	"TOP_c2_st_v_h"
	.sleb128 442
	.uleb128 0x7
	.string	"TOP_c2_st_v_w"
	.sleb128 443
	.uleb128 0x7
	.string	"TOP_c2_st_v_m_b"
	.sleb128 444
	.uleb128 0x7
	.string	"TOP_c2_st_v_m_h"
	.sleb128 445
	.uleb128 0x7
	.string	"TOP_c2_st_v_m_w"
	.sleb128 446
	.uleb128 0x7
	.string	"TOP_c2_st_s_h"
	.sleb128 447
	.uleb128 0x7
	.string	"TOP_c2_st_s_h_p"
	.sleb128 448
	.uleb128 0x7
	.string	"TOP_c2_st_s_w"
	.sleb128 449
	.uleb128 0x7
	.string	"TOP_c2_st_s_w_p"
	.sleb128 450
	.uleb128 0x7
	.string	"TOP_c2_st_g2v_b"
	.sleb128 451
	.uleb128 0x7
	.string	"TOP_c2_st_g2v_h"
	.sleb128 452
	.uleb128 0x7
	.string	"TOP_c2_st_g2v_w"
	.sleb128 453
	.uleb128 0x7
	.string	"TOP_c2_ldi_s_h_u"
	.sleb128 454
	.uleb128 0x7
	.string	"TOP_c2_ldi_s_h"
	.sleb128 455
	.uleb128 0x7
	.string	"TOP_c2_ldi_s_w"
	.sleb128 456
	.uleb128 0x7
	.string	"TOP_c2_ldi_c"
	.sleb128 457
	.uleb128 0x7
	.string	"TOP_c2_ldi_v_b_u"
	.sleb128 458
	.uleb128 0x7
	.string	"TOP_c2_ldi_v_b"
	.sleb128 459
	.uleb128 0x7
	.string	"TOP_c2_ldi_v_h"
	.sleb128 460
	.uleb128 0x7
	.string	"TOP_c2_ldi_v_w"
	.sleb128 461
	.uleb128 0x7
	.string	"TOP_c2_ldi_v_m_b_u"
	.sleb128 462
	.uleb128 0x7
	.string	"TOP_c2_ldi_v_m_b"
	.sleb128 463
	.uleb128 0x7
	.string	"TOP_c2_ldi_v_m_h"
	.sleb128 464
	.uleb128 0x7
	.string	"TOP_c2_ldi_v_m_w"
	.sleb128 465
	.uleb128 0x7
	.string	"TOP_c2_ldi_v2g_b_u"
	.sleb128 466
	.uleb128 0x7
	.string	"TOP_c2_ldi_v2g_b"
	.sleb128 467
	.uleb128 0x7
	.string	"TOP_c2_ldi_v2g_h_u"
	.sleb128 468
	.uleb128 0x7
	.string	"TOP_c2_ldi_v2g_h"
	.sleb128 469
	.uleb128 0x7
	.string	"TOP_c2_ldi_v2g_w"
	.sleb128 470
	.uleb128 0x7
	.string	"TOP_c2_sti_v_b"
	.sleb128 471
	.uleb128 0x7
	.string	"TOP_c2_sti_v_h"
	.sleb128 472
	.uleb128 0x7
	.string	"TOP_c2_sti_v_w"
	.sleb128 473
	.uleb128 0x7
	.string	"TOP_c2_sti_v_m_b"
	.sleb128 474
	.uleb128 0x7
	.string	"TOP_c2_sti_v_m_h"
	.sleb128 475
	.uleb128 0x7
	.string	"TOP_c2_sti_v_m_w"
	.sleb128 476
	.uleb128 0x7
	.string	"TOP_c2_sti_c"
	.sleb128 477
	.uleb128 0x7
	.string	"TOP_c2_sti_s_h"
	.sleb128 478
	.uleb128 0x7
	.string	"TOP_c2_sti_s_w"
	.sleb128 479
	.uleb128 0x7
	.string	"TOP_c2_sti_g2v_b"
	.sleb128 480
	.uleb128 0x7
	.string	"TOP_c2_sti_g2v_h"
	.sleb128 481
	.uleb128 0x7
	.string	"TOP_c2_sti_g2v_w"
	.sleb128 482
	.uleb128 0x7
	.string	"TOP_c2_vadds_h"
	.sleb128 483
	.uleb128 0x7
	.string	"TOP_c2_vadds_w"
	.sleb128 484
	.uleb128 0x7
	.string	"TOP_c2_vadds_p"
	.sleb128 485
	.uleb128 0x7
	.string	"TOP_c2_vadds_h_c"
	.sleb128 486
	.uleb128 0x7
	.string	"TOP_c2_vadds_w_c"
	.sleb128 487
	.uleb128 0x7
	.string	"TOP_c2_vadds_p_c"
	.sleb128 488
	.uleb128 0x7
	.string	"TOP_c2_vsubs_h"
	.sleb128 489
	.uleb128 0x7
	.string	"TOP_c2_vsubs_h_sm"
	.sleb128 490
	.uleb128 0x7
	.string	"TOP_c2_vsubs_h_abs"
	.sleb128 491
	.uleb128 0x7
	.string	"TOP_c2_vsubs_h_abs_sm"
	.sleb128 492
	.uleb128 0x7
	.string	"TOP_c2_vabs_h"
	.sleb128 493
	.uleb128 0x7
	.string	"TOP_c2_vabs_h_sm"
	.sleb128 494
	.uleb128 0x7
	.string	"TOP_c2_vsubs_w"
	.sleb128 495
	.uleb128 0x7
	.string	"TOP_c2_vsubs_w_sm"
	.sleb128 496
	.uleb128 0x7
	.string	"TOP_c2_vsubs_w_abs"
	.sleb128 497
	.uleb128 0x7
	.string	"TOP_c2_vsubs_w_abs_sm"
	.sleb128 498
	.uleb128 0x7
	.string	"TOP_c2_vabs_w"
	.sleb128 499
	.uleb128 0x7
	.string	"TOP_c2_vabs_w_sm"
	.sleb128 500
	.uleb128 0x7
	.string	"TOP_c2_vsubs_p"
	.sleb128 501
	.uleb128 0x7
	.string	"TOP_c2_vsubs_p_sm"
	.sleb128 502
	.uleb128 0x7
	.string	"TOP_c2_vsubs_p_abs"
	.sleb128 503
	.uleb128 0x7
	.string	"TOP_c2_vsubs_p_abs_sm"
	.sleb128 504
	.uleb128 0x7
	.string	"TOP_c2_vabs_p"
	.sleb128 505
	.uleb128 0x7
	.string	"TOP_c2_vabs_p_sm"
	.sleb128 506
	.uleb128 0x7
	.string	"TOP_c2_vabs_acc"
	.sleb128 507
	.uleb128 0x7
	.string	"TOP_c2_vmul_h"
	.sleb128 508
	.uleb128 0x7
	.string	"TOP_c2_vmul_w"
	.sleb128 509
	.uleb128 0x7
	.string	"TOP_c2_vneg_h"
	.sleb128 510
	.uleb128 0x7
	.string	"TOP_c2_vneg_w"
	.sleb128 511
	.uleb128 0x7
	.string	"TOP_c2_vneg_p"
	.sleb128 512
	.uleb128 0x7
	.string	"TOP_c2_vshr_p"
	.sleb128 513
	.uleb128 0x7
	.string	"TOP_c2_vshr_h"
	.sleb128 514
	.uleb128 0x7
	.string	"TOP_c2_vshr_w"
	.sleb128 515
	.uleb128 0x7
	.string	"TOP_c2_vshl_p"
	.sleb128 516
	.uleb128 0x7
	.string	"TOP_c2_vshl_h"
	.sleb128 517
	.uleb128 0x7
	.string	"TOP_c2_vshl_w"
	.sleb128 518
	.uleb128 0x7
	.string	"TOP_c2_vclp"
	.sleb128 519
	.uleb128 0x7
	.string	"TOP_c2_vclp_p"
	.sleb128 520
	.uleb128 0x7
	.string	"TOP_c2_vclp_a"
	.sleb128 521
	.uleb128 0x7
	.string	"TOP_c2_vclp_s"
	.sleb128 522
	.uleb128 0x7
	.string	"TOP_c2_vclp_2"
	.sleb128 523
	.uleb128 0x7
	.string	"TOP_c2_vclp_n"
	.sleb128 524
	.uleb128 0x7
	.string	"TOP_c2_vclg_h_lt_and"
	.sleb128 525
	.uleb128 0x7
	.string	"TOP_c2_vclg_h_lt_or"
	.sleb128 526
	.uleb128 0x7
	.string	"TOP_c2_vclg_h_le_and"
	.sleb128 527
	.uleb128 0x7
	.string	"TOP_c2_vclg_h_le_or"
	.sleb128 528
	.uleb128 0x7
	.string	"TOP_c2_vclg_h_eq_and"
	.sleb128 529
	.uleb128 0x7
	.string	"TOP_c2_vclg_h_eq_or"
	.sleb128 530
	.uleb128 0x7
	.string	"TOP_c2_vclg_h_ge_and"
	.sleb128 531
	.uleb128 0x7
	.string	"TOP_c2_vclg_h_ge_or"
	.sleb128 532
	.uleb128 0x7
	.string	"TOP_c2_vclg_h_gt_and"
	.sleb128 533
	.uleb128 0x7
	.string	"TOP_c2_vclg_h_gt_or"
	.sleb128 534
	.uleb128 0x7
	.string	"TOP_c2_vclg_h_and"
	.sleb128 535
	.uleb128 0x7
	.string	"TOP_c2_vclg_h_or"
	.sleb128 536
	.uleb128 0x7
	.string	"TOP_c2_vclg_h_le"
	.sleb128 537
	.uleb128 0x7
	.string	"TOP_c2_vclg_h_lt"
	.sleb128 538
	.uleb128 0x7
	.string	"TOP_c2_vclg_h_ge"
	.sleb128 539
	.uleb128 0x7
	.string	"TOP_c2_vclg_h_gt"
	.sleb128 540
	.uleb128 0x7
	.string	"TOP_c2_vclg_w_lt_and"
	.sleb128 541
	.uleb128 0x7
	.string	"TOP_c2_vclg_w_lt_or"
	.sleb128 542
	.uleb128 0x7
	.string	"TOP_c2_vclg_w_le_and"
	.sleb128 543
	.uleb128 0x7
	.string	"TOP_c2_vclg_w_le_or"
	.sleb128 544
	.uleb128 0x7
	.string	"TOP_c2_vclg_w_eq_and"
	.sleb128 545
	.uleb128 0x7
	.string	"TOP_c2_vclg_w_eq_or"
	.sleb128 546
	.uleb128 0x7
	.string	"TOP_c2_vclg_w_ge_and"
	.sleb128 547
	.uleb128 0x7
	.string	"TOP_c2_vclg_w_ge_or"
	.sleb128 548
	.uleb128 0x7
	.string	"TOP_c2_vclg_w_gt_and"
	.sleb128 549
	.uleb128 0x7
	.string	"TOP_c2_vclg_w_gt_or"
	.sleb128 550
	.uleb128 0x7
	.string	"TOP_c2_vclg_w_and"
	.sleb128 551
	.uleb128 0x7
	.string	"TOP_c2_vclg_w_or"
	.sleb128 552
	.uleb128 0x7
	.string	"TOP_c2_vclg_w_le"
	.sleb128 553
	.uleb128 0x7
	.string	"TOP_c2_vclg_w_lt"
	.sleb128 554
	.uleb128 0x7
	.string	"TOP_c2_vclg_w_ge"
	.sleb128 555
	.uleb128 0x7
	.string	"TOP_c2_vclg_w_gt"
	.sleb128 556
	.uleb128 0x7
	.string	"TOP_c2_vclg_p_lt_and"
	.sleb128 557
	.uleb128 0x7
	.string	"TOP_c2_vclg_p_lt_or"
	.sleb128 558
	.uleb128 0x7
	.string	"TOP_c2_vclg_p_le_and"
	.sleb128 559
	.uleb128 0x7
	.string	"TOP_c2_vclg_p_le_or"
	.sleb128 560
	.uleb128 0x7
	.string	"TOP_c2_vclg_p_eq_and"
	.sleb128 561
	.uleb128 0x7
	.string	"TOP_c2_vclg_p_eq_or"
	.sleb128 562
	.uleb128 0x7
	.string	"TOP_c2_vclg_p_ge_and"
	.sleb128 563
	.uleb128 0x7
	.string	"TOP_c2_vclg_p_ge_or"
	.sleb128 564
	.uleb128 0x7
	.string	"TOP_c2_vclg_p_gt_and"
	.sleb128 565
	.uleb128 0x7
	.string	"TOP_c2_vclg_p_gt_or"
	.sleb128 566
	.uleb128 0x7
	.string	"TOP_c2_vclg_p_and"
	.sleb128 567
	.uleb128 0x7
	.string	"TOP_c2_vclg_p_or"
	.sleb128 568
	.uleb128 0x7
	.string	"TOP_c2_vclg_p_le"
	.sleb128 569
	.uleb128 0x7
	.string	"TOP_c2_vclg_p_eq"
	.sleb128 570
	.uleb128 0x7
	.string	"TOP_c2_vclg_p_ge"
	.sleb128 571
	.uleb128 0x7
	.string	"TOP_c2_vclg_p_gt"
	.sleb128 572
	.uleb128 0x7
	.string	"TOP_c2_vcmov_h_f"
	.sleb128 573
	.uleb128 0x7
	.string	"TOP_c2_vcmov_h_t"
	.sleb128 574
	.uleb128 0x7
	.string	"TOP_c2_vcmov_w_f"
	.sleb128 575
	.uleb128 0x7
	.string	"TOP_c2_vcmov_w_t"
	.sleb128 576
	.uleb128 0x7
	.string	"TOP_c2_lczero_z"
	.sleb128 577
	.uleb128 0x7
	.string	"TOP_c2_lczero_nz_fw"
	.sleb128 578
	.uleb128 0x7
	.string	"TOP_c2_lczero_nz_bw"
	.sleb128 579
	.uleb128 0x7
	.string	"TOP_c2_vrnd_h"
	.sleb128 580
	.uleb128 0x7
	.string	"TOP_c2_vrnd_w"
	.sleb128 581
	.uleb128 0x7
	.string	"TOP_c2_vspas"
	.sleb128 582
	.uleb128 0x7
	.string	"TOP_c2_vspel_mul_h"
	.sleb128 583
	.uleb128 0x7
	.string	"TOP_c2_vspel_mul_w"
	.sleb128 584
	.uleb128 0x7
	.string	"TOP_c2_vspel_adds"
	.sleb128 585
	.uleb128 0x7
	.string	"TOP_c2_vspel_mac_h"
	.sleb128 586
	.uleb128 0x7
	.string	"TOP_c2_vspel_mac_w"
	.sleb128 587
	.uleb128 0x7
	.string	"TOP_c2_mmul_s123"
	.sleb128 588
	.uleb128 0x7
	.string	"TOP_c2_mmul_h"
	.sleb128 589
	.uleb128 0x7
	.string	"TOP_c2_mmul_w"
	.sleb128 590
	.uleb128 0x7
	.string	"TOP_c2_vmov"
	.sleb128 591
	.uleb128 0x7
	.string	"TOP_c2_vmov_swin"
	.sleb128 592
	.uleb128 0x7
	.string	"TOP_c2_vcopy"
	.sleb128 593
	.uleb128 0x7
	.string	"TOP_c2_vcmpr_h_eq"
	.sleb128 594
	.uleb128 0x7
	.string	"TOP_c2_vcmpr_h_lt"
	.sleb128 595
	.uleb128 0x7
	.string	"TOP_c2_vcmpr_h_le"
	.sleb128 596
	.uleb128 0x7
	.string	"TOP_c2_vcmpr_h_gt"
	.sleb128 597
	.uleb128 0x7
	.string	"TOP_c2_vcmpr_h_ge"
	.sleb128 598
	.uleb128 0x7
	.string	"TOP_c2_vcmpr_w_eq"
	.sleb128 599
	.uleb128 0x7
	.string	"TOP_c2_vcmpr_w_lt"
	.sleb128 600
	.uleb128 0x7
	.string	"TOP_c2_vcmpr_w_le"
	.sleb128 601
	.uleb128 0x7
	.string	"TOP_c2_vcmpr_w_gt"
	.sleb128 602
	.uleb128 0x7
	.string	"TOP_c2_vcmpr_w_ge"
	.sleb128 603
	.uleb128 0x7
	.string	"TOP_c2_sad"
	.sleb128 604
	.uleb128 0x7
	.string	"TOP_c2_satd"
	.sleb128 605
	.uleb128 0x7
	.string	"TOP_c2_intra"
	.sleb128 606
	.uleb128 0x7
	.string	"TOP_c2_intra_0_1_9_14_16"
	.sleb128 607
	.uleb128 0x7
	.string	"TOP_c2_intra_2_3_8_10"
	.sleb128 608
	.uleb128 0x7
	.string	"TOP_c2_intra_4"
	.sleb128 609
	.uleb128 0x7
	.string	"TOP_c2_intra_5_11"
	.sleb128 610
	.uleb128 0x7
	.string	"TOP_c2_intra_12_13"
	.sleb128 611
	.uleb128 0x7
	.string	"TOP_c2_intra_15_17"
	.sleb128 612
	.uleb128 0x7
	.string	"TOP_c2_intra_6"
	.sleb128 613
	.uleb128 0x7
	.string	"TOP_c2_intra_7"
	.sleb128 614
	.uleb128 0x7
	.string	"TOP_c2_mvsel"
	.sleb128 615
	.uleb128 0x7
	.string	"TOP_c2_mvsel_zero_two"
	.sleb128 616
	.uleb128 0x7
	.string	"TOP_c2_bcst_q"
	.sleb128 617
	.uleb128 0x7
	.string	"TOP_c2_bcst_i"
	.sleb128 618
	.uleb128 0x7
	.string	"TOP_c2_vlcs_dc"
	.sleb128 619
	.uleb128 0x7
	.string	"TOP_c2_vlcs_ac"
	.sleb128 620
	.uleb128 0x7
	.string	"TOP_c2_vlcs_wb"
	.sleb128 621
	.uleb128 0x7
	.string	"TOP_c2_add_shl_g_i"
	.sleb128 622
	.uleb128 0x7
	.string	"TOP_c2_add_shr_g_i"
	.sleb128 623
	.uleb128 0x7
	.string	"TOP_c2_add_shl_g"
	.sleb128 624
	.uleb128 0x7
	.string	"TOP_c2_add_shr_g"
	.sleb128 625
	.uleb128 0x7
	.string	"TOP_c2_add_shl_r_h_i"
	.sleb128 626
	.uleb128 0x7
	.string	"TOP_c2_add_shr_r_h_i"
	.sleb128 627
	.uleb128 0x7
	.string	"TOP_c2_add_shl_r_w_i"
	.sleb128 628
	.uleb128 0x7
	.string	"TOP_c2_add_shr_r_w_i"
	.sleb128 629
	.uleb128 0x7
	.string	"TOP_c2_add_shl_r_h"
	.sleb128 630
	.uleb128 0x7
	.string	"TOP_c2_add_shr_r_h"
	.sleb128 631
	.uleb128 0x7
	.string	"TOP_c2_add_shl_r_w"
	.sleb128 632
	.uleb128 0x7
	.string	"TOP_c2_add_shr_r_w"
	.sleb128 633
	.uleb128 0x7
	.string	"TOP_c2_sub_g_abs_i"
	.sleb128 634
	.uleb128 0x7
	.string	"TOP_c2_subs_g_i"
	.sleb128 635
	.uleb128 0x7
	.string	"TOP_c2_sub_g_abs"
	.sleb128 636
	.uleb128 0x7
	.string	"TOP_c2_subs_g"
	.sleb128 637
	.uleb128 0x7
	.string	"TOP_c2_subs_r_h_i"
	.sleb128 638
	.uleb128 0x7
	.string	"TOP_c2_subs_r_w_i"
	.sleb128 639
	.uleb128 0x7
	.string	"TOP_c2_sub_r_abs_h_i"
	.sleb128 640
	.uleb128 0x7
	.string	"TOP_c2_sub_r_abs_w_i"
	.sleb128 641
	.uleb128 0x7
	.string	"TOP_c2_subs_r_h"
	.sleb128 642
	.uleb128 0x7
	.string	"TOP_c2_subs_r_w"
	.sleb128 643
	.uleb128 0x7
	.string	"TOP_c2_sub_r_abs_h"
	.sleb128 644
	.uleb128 0x7
	.string	"TOP_c2_sub_r_abs_w"
	.sleb128 645
	.uleb128 0x7
	.string	"TOP_c2_muls"
	.sleb128 646
	.uleb128 0x7
	.string	"TOP_c2_muls_r_h"
	.sleb128 647
	.uleb128 0x7
	.string	"TOP_c2_muls_r_w"
	.sleb128 648
	.uleb128 0x7
	.string	"TOP_c2_mads"
	.sleb128 649
	.uleb128 0x7
	.string	"TOP_c2_smads"
	.sleb128 650
	.uleb128 0x7
	.string	"TOP_c2_min"
	.sleb128 651
	.uleb128 0x7
	.string	"TOP_c2_max"
	.sleb128 652
	.uleb128 0x7
	.string	"TOP_c2_cmov"
	.sleb128 653
	.uleb128 0x7
	.string	"TOP_c2_mov_g"
	.sleb128 654
	.uleb128 0x7
	.string	"TOP_c2_mov_r"
	.sleb128 655
	.uleb128 0x7
	.string	"TOP_c2_mov_c_i"
	.sleb128 656
	.uleb128 0x7
	.string	"TOP_c2_mov_c"
	.sleb128 657
	.uleb128 0x7
	.string	"TOP_c2_mov_s_i"
	.sleb128 658
	.uleb128 0x7
	.string	"TOP_c2_mov_s"
	.sleb128 659
	.uleb128 0x7
	.string	"TOP_c2_clp"
	.sleb128 660
	.uleb128 0x7
	.string	"TOP_c2_clp_i"
	.sleb128 661
	.uleb128 0x7
	.string	"TOP_c2_chkrng"
	.sleb128 662
	.uleb128 0x7
	.string	"TOP_c2_scond_r_h_wb_eq"
	.sleb128 663
	.uleb128 0x7
	.string	"TOP_c2_scond_r_h_wb_lt"
	.sleb128 664
	.uleb128 0x7
	.string	"TOP_c2_scond_r_h_wb_le"
	.sleb128 665
	.uleb128 0x7
	.string	"TOP_c2_scond_r_h_wb_gt"
	.sleb128 666
	.uleb128 0x7
	.string	"TOP_c2_scond_r_h_wb_ge"
	.sleb128 667
	.uleb128 0x7
	.string	"TOP_c2_scond_r_wb_eq_i"
	.sleb128 668
	.uleb128 0x7
	.string	"TOP_c2_scond_r_wb_lt_i"
	.sleb128 669
	.uleb128 0x7
	.string	"TOP_c2_scond_r_wb_le_i"
	.sleb128 670
	.uleb128 0x7
	.string	"TOP_c2_scond_r_wb_gt_i"
	.sleb128 671
	.uleb128 0x7
	.string	"TOP_c2_scond_r_wb_ge_i"
	.sleb128 672
	.uleb128 0x7
	.string	"TOP_c2_scond_r_w_wb_eq"
	.sleb128 673
	.uleb128 0x7
	.string	"TOP_c2_scond_r_w_wb_lt"
	.sleb128 674
	.uleb128 0x7
	.string	"TOP_c2_scond_r_w_wb_le"
	.sleb128 675
	.uleb128 0x7
	.string	"TOP_c2_scond_r_w_wb_gt"
	.sleb128 676
	.uleb128 0x7
	.string	"TOP_c2_scond_r_w_wb_ge"
	.sleb128 677
	.uleb128 0x7
	.string	"TOP_c2_scond_r_w_wb_eq_i"
	.sleb128 678
	.uleb128 0x7
	.string	"TOP_c2_scond_r_w_wb_lt_i"
	.sleb128 679
	.uleb128 0x7
	.string	"TOP_c2_scond_r_w_wb_le_i"
	.sleb128 680
	.uleb128 0x7
	.string	"TOP_c2_scond_r_w_wb_gt_i"
	.sleb128 681
	.uleb128 0x7
	.string	"TOP_c2_scond_r_w_wb_ge_i"
	.sleb128 682
	.uleb128 0x7
	.string	"TOP_c2_scond_r_h_eq"
	.sleb128 683
	.uleb128 0x7
	.string	"TOP_c2_scond_r_h_lt"
	.sleb128 684
	.uleb128 0x7
	.string	"TOP_c2_scond_r_h_le"
	.sleb128 685
	.uleb128 0x7
	.string	"TOP_c2_scond_r_h_gt"
	.sleb128 686
	.uleb128 0x7
	.string	"TOP_c2_scond_r_h_ge"
	.sleb128 687
	.uleb128 0x7
	.string	"TOP_c2_scond_r_h_eq_i"
	.sleb128 688
	.uleb128 0x7
	.string	"TOP_c2_scond_r_h_lt_i"
	.sleb128 689
	.uleb128 0x7
	.string	"TOP_c2_scond_r_h_le_i"
	.sleb128 690
	.uleb128 0x7
	.string	"TOP_c2_scond_r_h_gt_i"
	.sleb128 691
	.uleb128 0x7
	.string	"TOP_c2_scond_r_h_ge_i"
	.sleb128 692
	.uleb128 0x7
	.string	"TOP_c2_scond_r_w_eq"
	.sleb128 693
	.uleb128 0x7
	.string	"TOP_c2_scond_r_w_lt"
	.sleb128 694
	.uleb128 0x7
	.string	"TOP_c2_scond_r_w_le"
	.sleb128 695
	.uleb128 0x7
	.string	"TOP_c2_scond_r_w_gt"
	.sleb128 696
	.uleb128 0x7
	.string	"TOP_c2_scond_r_w_ge"
	.sleb128 697
	.uleb128 0x7
	.string	"TOP_c2_scond_r_w_eq_i"
	.sleb128 698
	.uleb128 0x7
	.string	"TOP_c2_scond_r_w_lt_i"
	.sleb128 699
	.uleb128 0x7
	.string	"TOP_c2_scond_r_w_le_i"
	.sleb128 700
	.uleb128 0x7
	.string	"TOP_c2_scond_r_w_gt_i"
	.sleb128 701
	.uleb128 0x7
	.string	"TOP_c2_scond_r_w_ge_i"
	.sleb128 702
	.uleb128 0x7
	.string	"TOP_c2_scond_eq"
	.sleb128 703
	.uleb128 0x7
	.string	"TOP_c2_scond_lt"
	.sleb128 704
	.uleb128 0x7
	.string	"TOP_c2_scond_le"
	.sleb128 705
	.uleb128 0x7
	.string	"TOP_c2_scond_gt"
	.sleb128 706
	.uleb128 0x7
	.string	"TOP_c2_scond_ge"
	.sleb128 707
	.uleb128 0x7
	.string	"TOP_c2_scond_eq_i"
	.sleb128 708
	.uleb128 0x7
	.string	"TOP_c2_scond_lt_i"
	.sleb128 709
	.uleb128 0x7
	.string	"TOP_c2_scond_le_i"
	.sleb128 710
	.uleb128 0x7
	.string	"TOP_c2_scond_gt_i"
	.sleb128 711
	.uleb128 0x7
	.string	"TOP_c2_scond_ge_i"
	.sleb128 712
	.uleb128 0x7
	.string	"TOP_c2_bop_ls"
	.sleb128 713
	.uleb128 0x7
	.string	"TOP_c2_bop_rs"
	.sleb128 714
	.uleb128 0x7
	.string	"TOP_c2_bop_and"
	.sleb128 715
	.uleb128 0x7
	.string	"TOP_c2_bop_or"
	.sleb128 716
	.uleb128 0x7
	.string	"TOP_c2_bop_xor"
	.sleb128 717
	.uleb128 0x7
	.string	"TOP_c2_bop_ls_i"
	.sleb128 718
	.uleb128 0x7
	.string	"TOP_c2_bop_rs_i"
	.sleb128 719
	.uleb128 0x7
	.string	"TOP_c2_bop_and_i"
	.sleb128 720
	.uleb128 0x7
	.string	"TOP_c2_bop_or_i"
	.sleb128 721
	.uleb128 0x7
	.string	"TOP_c2_bop_xor_i"
	.sleb128 722
	.uleb128 0x7
	.string	"TOP_c2_bdep_l"
	.sleb128 723
	.uleb128 0x7
	.string	"TOP_c2_bdep_m"
	.sleb128 724
	.uleb128 0x7
	.string	"TOP_c2_bxtr_u_l"
	.sleb128 725
	.uleb128 0x7
	.string	"TOP_c2_bxtr_s_l"
	.sleb128 726
	.uleb128 0x7
	.string	"TOP_c2_bxtr_u_m"
	.sleb128 727
	.uleb128 0x7
	.string	"TOP_c2_bxtr_s_m"
	.sleb128 728
	.uleb128 0x7
	.string	"TOP_c2_sum4_c"
	.sleb128 729
	.uleb128 0x7
	.string	"TOP_c2_sum4_g"
	.sleb128 730
	.uleb128 0x7
	.string	"TOP_c2_sum4_sw"
	.sleb128 731
	.uleb128 0x7
	.string	"TOP_c2_sum4_r"
	.sleb128 732
	.uleb128 0x7
	.string	"TOP_c2_med"
	.sleb128 733
	.uleb128 0x7
	.string	"TOP_c2_gsums"
	.sleb128 734
	.uleb128 0x7
	.string	"TOP_c2_wrap"
	.sleb128 735
	.uleb128 0x7
	.string	"TOP_c2_clzob_zd"
	.sleb128 736
	.uleb128 0x7
	.string	"TOP_c2_clzob_za"
	.sleb128 737
	.uleb128 0x7
	.string	"TOP_c2_clzob_od"
	.sleb128 738
	.uleb128 0x7
	.string	"TOP_c2_clzob_oa"
	.sleb128 739
	.uleb128 0x7
	.string	"TOP_c2_clzob_zd_i"
	.sleb128 740
	.uleb128 0x7
	.string	"TOP_c2_clzob_za_i"
	.sleb128 741
	.uleb128 0x7
	.string	"TOP_c2_clzob_od_i"
	.sleb128 742
	.uleb128 0x7
	.string	"TOP_c2_clzob_oa_i"
	.sleb128 743
	.uleb128 0x7
	.string	"TOP_c2_thctrl_lock"
	.sleb128 744
	.uleb128 0x7
	.string	"TOP_c2_thctrl_unlock"
	.sleb128 745
	.uleb128 0x7
	.string	"TOP_c2_thctrl_deact"
	.sleb128 746
	.uleb128 0x7
	.string	"TOP_c2_thctrl_act"
	.sleb128 747
	.uleb128 0x7
	.string	"TOP_c2_thctrl_mode4"
	.sleb128 748
	.uleb128 0x7
	.string	"TOP_c2_thctrl_mode5"
	.sleb128 749
	.uleb128 0x7
	.string	"TOP_c2_thctrl_mode6"
	.sleb128 750
	.uleb128 0x7
	.string	"TOP_c2_joint"
	.sleb128 751
	.uleb128 0x7
	.string	"TOP_c2_thread_major"
	.sleb128 752
	.uleb128 0x7
	.string	"TOP_c2_thread_minor"
	.sleb128 753
	.uleb128 0x7
	.string	"TOP_c2_sum3_saddr"
	.sleb128 754
	.uleb128 0x7
	.string	"TOP_peripheral_rw_begin"
	.sleb128 755
	.uleb128 0x7
	.string	"TOP_peripheral_rw_end"
	.sleb128 756
	.uleb128 0x7
	.string	"TOP_c2_br_f"
	.sleb128 757
	.uleb128 0x7
	.string	"TOP_c2_br_t"
	.sleb128 758
	.uleb128 0x7
	.string	"TOP_c2_fork_m"
	.sleb128 759
	.uleb128 0x7
	.string	"TOP_c2_fork_n"
	.sleb128 760
	.uleb128 0x7
	.string	"TOP_c2_macro"
	.sleb128 761
	.uleb128 0x7
	.string	"TOP_nop"
	.sleb128 762
	.uleb128 0x7
	.string	"TOP_noop"
	.sleb128 763
	.uleb128 0x7
	.string	"TOP_UNDEFINED"
	.sleb128 764
	.byte	0x0
	.uleb128 0x8
	.string	"INT"
	.byte	0x3
	.byte	0x28
	.long	0x108
	.uleb128 0x8
	.string	"mINT32"
	.byte	0x3
	.byte	0x2d
	.long	0x108
	.uleb128 0x8
	.string	"UINT"
	.byte	0x3
	.byte	0x2f
	.long	0xa9
	.uleb128 0x8
	.string	"mUINT8"
	.byte	0x3
	.byte	0x32
	.long	0xb0
	.uleb128 0x8
	.string	"mUINT16"
	.byte	0x3
	.byte	0x33
	.long	0xc1
	.uleb128 0x8
	.string	"mUINT32"
	.byte	0x3
	.byte	0x34
	.long	0xa9
	.uleb128 0x8
	.string	"mUINT64"
	.byte	0x3
	.byte	0x35
	.long	0x120
	.uleb128 0x9
	.string	"TOP"
	.byte	0x3
	.value	0x341
	.long	0x160
	.uleb128 0xa
	.long	0x3514
	.byte	0x10
	.byte	0x4
	.value	0x165
	.uleb128 0xb
	.string	"dw"
	.byte	0x4
	.value	0x166
	.long	0x3514
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x3524
	.long	0x34e1
	.uleb128 0xd
	.long	0x146
	.byte	0x1
	.byte	0x0
	.uleb128 0x9
	.string	"SI_BAD_II_SET"
	.byte	0x4
	.value	0x167
	.long	0x34fc
	.uleb128 0x9
	.string	"SI_RESOURCE_ID"
	.byte	0x4
	.value	0x188
	.long	0x34a9
	.uleb128 0xa
	.long	0x35b3
	.byte	0xc
	.byte	0x4
	.value	0x18a
	.uleb128 0xb
	.string	"name"
	.byte	0x4
	.value	0x18b
	.long	0x155
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"id"
	.byte	0x4
	.value	0x18c
	.long	0x353a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	.LASF1
	.byte	0x4
	.value	0x18d
	.long	0x34b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"word_index"
	.byte	0x4
	.value	0x18e
	.long	0x34b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.string	"bit_index"
	.byte	0x4
	.value	0x18f
	.long	0x34b5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x5
	.long	0x3551
	.uleb128 0x9
	.string	"SI_RESOURCE_ID_SET"
	.byte	0x4
	.value	0x1c8
	.long	0x34e1
	.uleb128 0x9
	.string	"SI_RRW"
	.byte	0x4
	.value	0x1f6
	.long	0x34e1
	.uleb128 0xa
	.long	0x361b
	.byte	0xc
	.byte	0x4
	.value	0x21f
	.uleb128 0xb
	.string	"name"
	.byte	0x4
	.value	0x220
	.long	0x155
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"skew"
	.byte	0x4
	.value	0x221
	.long	0x349b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	.LASF1
	.byte	0x4
	.value	0x222
	.long	0x349b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.long	0x35e2
	.uleb128 0xa
	.long	0x3654
	.byte	0x8
	.byte	0x4
	.value	0x251
	.uleb128 0xb
	.string	"resource"
	.byte	0x4
	.value	0x252
	.long	0x3654
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"total_used"
	.byte	0x4
	.value	0x253
	.long	0x349b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x4
	.byte	0x4
	.long	0x35b3
	.uleb128 0x5
	.long	0x3620
	.uleb128 0x9
	.string	"SI_RR"
	.byte	0x4
	.value	0x26e
	.long	0x366d
	.uleb128 0x4
	.byte	0x4
	.long	0x3673
	.uleb128 0x5
	.long	0x35d3
	.uleb128 0x9
	.string	"SI_ID"
	.byte	0x4
	.value	0x27f
	.long	0x34a9
	.uleb128 0xa
	.long	0x3884
	.byte	0x58
	.byte	0x4
	.value	0x281
	.uleb128 0xb
	.string	"name"
	.byte	0x4
	.value	0x282
	.long	0x155
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"id"
	.byte	0x4
	.value	0x283
	.long	0x3678
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"operand_access_times"
	.byte	0x4
	.value	0x284
	.long	0x3884
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"result_available_times"
	.byte	0x4
	.value	0x285
	.long	0x3884
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"load_access_time"
	.byte	0x4
	.value	0x286
	.long	0x349b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"last_issue_cycle"
	.byte	0x4
	.value	0x287
	.long	0x349b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"store_available_time"
	.byte	0x4
	.value	0x288
	.long	0x349b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"rr"
	.byte	0x4
	.value	0x289
	.long	0x365f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"alter_rr"
	.byte	0x4
	.value	0x28b
	.long	0x365f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"resources_used"
	.byte	0x4
	.value	0x28d
	.long	0x388f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"ii_info_size"
	.byte	0x4
	.value	0x28e
	.long	0x34d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"ii_rr"
	.byte	0x4
	.value	0x28f
	.long	0x389a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"ii_resources_used"
	.byte	0x4
	.value	0x290
	.long	0x38a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"bad_iis"
	.byte	0x4
	.value	0x291
	.long	0x3524
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"valid_issue_slot_count"
	.byte	0x4
	.value	0x292
	.long	0x349b
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"valid_issue_slots"
	.byte	0x4
	.value	0x293
	.long	0x38b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"resource_total_vector_size"
	.byte	0x4
	.value	0x294
	.long	0x349b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.string	"resource_total_vector"
	.byte	0x4
	.value	0x295
	.long	0x38c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.string	"write_write_interlock"
	.byte	0x4
	.value	0x296
	.long	0x34b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x0
	.uleb128 0x4
	.byte	0x4
	.long	0x388a
	.uleb128 0x5
	.long	0x34b5
	.uleb128 0x4
	.byte	0x4
	.long	0x3895
	.uleb128 0x5
	.long	0x35b8
	.uleb128 0x4
	.byte	0x4
	.long	0x38a0
	.uleb128 0x5
	.long	0x365f
	.uleb128 0x4
	.byte	0x4
	.long	0x38ab
	.uleb128 0x5
	.long	0x388f
	.uleb128 0x4
	.byte	0x4
	.long	0x38b6
	.uleb128 0x5
	.long	0x38bb
	.uleb128 0x4
	.byte	0x4
	.long	0x361b
	.uleb128 0x4
	.byte	0x4
	.long	0x365a
	.uleb128 0x5
	.long	0x3686
	.uleb128 0xf
	.long	0x3929
	.byte	0x4
	.byte	0x2
	.byte	0x54
	.uleb128 0x7
	.string	"ISA_HAZARD_result"
	.sleb128 0
	.uleb128 0x7
	.string	"ISA_HAZARD_operand"
	.sleb128 1
	.uleb128 0x7
	.string	"ISA_HAZARD_errata"
	.sleb128 2
	.uleb128 0x7
	.string	"ISA_HAZARD_UNDEFINED"
	.sleb128 3
	.byte	0x0
	.uleb128 0x8
	.string	"ISA_HAZARD"
	.byte	0x2
	.byte	0x59
	.long	0x38cc
	.uleb128 0x10
	.long	0x39a0
	.byte	0xc
	.byte	0x2
	.byte	0x5b
	.uleb128 0x11
	.string	"type"
	.byte	0x2
	.byte	0x5c
	.long	0x3929
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"data"
	.byte	0x2
	.byte	0x5d
	.long	0x34c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.long	.LASF2
	.byte	0x2
	.byte	0x5e
	.long	0x34c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x12
	.long	.LASF3
	.byte	0x2
	.byte	0x5f
	.long	0x34c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"isa_mask"
	.byte	0x2
	.byte	0x60
	.long	0x34b5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.string	"next"
	.byte	0x2
	.byte	0x61
	.long	0x34b5
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x8
	.string	"ISA_HAZARD_INFO"
	.byte	0x2
	.byte	0x62
	.long	0x393b
	.uleb128 0x13
	.long	0x39f7
	.byte	0x1
	.string	"TI_LATENCY_Commit_Cycle"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.long	0x3490
	.long	.LFB64
	.long	.LFE64
	.long	.LLST0
	.uleb128 0x14
	.long	.LASF4
	.byte	0x1
	.byte	0x3b
	.long	0x34f0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x13
	.long	0x3aad
	.byte	0x1
	.string	"TI_LATENCY_Operand_Hazard"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.long	0x3490
	.long	.LFB65
	.long	.LFE65
	.long	.LLST1
	.uleb128 0x14
	.long	.LASF4
	.byte	0x1
	.byte	0x4c
	.long	0x34f0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"opnd"
	.byte	0x1
	.byte	0x4d
	.long	0x3aad
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"error"
	.byte	0x1
	.byte	0x4f
	.long	0x3aad
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF5
	.byte	0x1
	.byte	0x51
	.long	0x3ab3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"ops"
	.byte	0x1
	.byte	0x52
	.long	0x3490
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x17
	.string	"this_ops"
	.byte	0x1
	.byte	0x5a
	.long	0x3490
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF2
	.byte	0x1
	.byte	0x5b
	.long	0x3490
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.long	.LASF3
	.byte	0x1
	.byte	0x5c
	.long	0x3490
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.byte	0x4
	.long	0x3490
	.uleb128 0x4
	.byte	0x4
	.long	0x39a0
	.uleb128 0x19
	.long	0x3b05
	.string	"ISA_HAZARD_First"
	.byte	0x2
	.byte	0x6b
	.byte	0x1
	.long	0x3ab3
	.long	.LFB53
	.long	.LFE53
	.long	.LLST2
	.uleb128 0x15
	.string	"topcode"
	.byte	0x2
	.byte	0x6a
	.long	0x34f0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"index"
	.byte	0x2
	.byte	0x6e
	.long	0x3490
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x19
	.long	0x3b3c
	.string	"ISA_HAZARD_Type"
	.byte	0x2
	.byte	0x7a
	.byte	0x1
	.long	0x3929
	.long	.LFB55
	.long	.LFE55
	.long	.LLST3
	.uleb128 0x14
	.long	.LASF5
	.byte	0x2
	.byte	0x79
	.long	0x3ab3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x19
	.long	0x3b76
	.string	"ISA_HAZARD_Pre_Ops"
	.byte	0x2
	.byte	0x84
	.byte	0x1
	.long	0x3490
	.long	.LFB57
	.long	.LFE57
	.long	.LLST4
	.uleb128 0x14
	.long	.LASF5
	.byte	0x2
	.byte	0x83
	.long	0x3ab3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x19
	.long	0x3bb1
	.string	"ISA_HAZARD_Post_Ops"
	.byte	0x2
	.byte	0x89
	.byte	0x1
	.long	0x3490
	.long	.LFB58
	.long	.LFE58
	.long	.LLST5
	.uleb128 0x14
	.long	.LASF5
	.byte	0x2
	.byte	0x88
	.long	0x3ab3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x19
	.long	0x3be8
	.string	"ISA_HAZARD_Data"
	.byte	0x2
	.byte	0x7f
	.byte	0x1
	.long	0x3490
	.long	.LFB56
	.long	.LFE56
	.long	.LLST6
	.uleb128 0x14
	.long	.LASF5
	.byte	0x2
	.byte	0x7e
	.long	0x3ab3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x19
	.long	0x3c2f
	.string	"ISA_HAZARD_Next"
	.byte	0x2
	.byte	0x73
	.byte	0x1
	.long	0x3ab3
	.long	.LFB54
	.long	.LFE54
	.long	.LLST7
	.uleb128 0x14
	.long	.LASF5
	.byte	0x2
	.byte	0x72
	.long	0x3ab3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"index"
	.byte	0x2
	.byte	0x75
	.long	0x3490
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x13
	.long	0x3cd3
	.byte	0x1
	.string	"TI_LATENCY_Result_Hazard"
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.long	0x3490
	.long	.LFB66
	.long	.LFE66
	.long	.LLST8
	.uleb128 0x14
	.long	.LASF4
	.byte	0x1
	.byte	0x86
	.long	0x34f0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"result"
	.byte	0x1
	.byte	0x87
	.long	0x3aad
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"error"
	.byte	0x1
	.byte	0x89
	.long	0x3aad
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF5
	.byte	0x1
	.byte	0x8b
	.long	0x3ab3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"ops"
	.byte	0x1
	.byte	0x8c
	.long	0x3490
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x16
	.long	.LASF2
	.byte	0x1
	.byte	0x94
	.long	0x3490
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.long	.LASF3
	.byte	0x1
	.byte	0x95
	.long	0x3490
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x3d77
	.byte	0x1
	.string	"TI_LATENCY_Errata_Hazard"
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.long	0x3490
	.long	.LFB67
	.long	.LFE67
	.long	.LLST9
	.uleb128 0x14
	.long	.LASF4
	.byte	0x1
	.byte	0xb8
	.long	0x34f0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"number"
	.byte	0x1
	.byte	0xb9
	.long	0x3aad
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"error"
	.byte	0x1
	.byte	0xbb
	.long	0x3aad
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF5
	.byte	0x1
	.byte	0xbd
	.long	0x3ab3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"ops"
	.byte	0x1
	.byte	0xbe
	.long	0x3490
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x16
	.long	.LASF2
	.byte	0x1
	.byte	0xc6
	.long	0x3490
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.long	.LASF3
	.byte	0x1
	.byte	0xc7
	.long	0x3490
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"SI_resource_count_p"
	.byte	0x4
	.value	0x1af
	.long	0x3aad
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0x3da0
	.long	0x3654
	.uleb128 0x1b
	.byte	0x0
	.uleb128 0x1a
	.string	"SI_resources_p"
	.byte	0x4
	.value	0x1b7
	.long	0x3db9
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.long	0x3d95
	.uleb128 0x1a
	.string	"SI_RRW_initializer_p"
	.byte	0x4
	.value	0x1fc
	.long	0x3dde
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.long	0x35d3
	.uleb128 0x1a
	.string	"SI_RRW_overuse_mask_p"
	.byte	0x4
	.value	0x204
	.long	0x3dde
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"SI_issue_slot_count_p"
	.byte	0x4
	.value	0x238
	.long	0x3aad
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0x3e2f
	.long	0x38bb
	.uleb128 0x1b
	.byte	0x0
	.uleb128 0x1a
	.string	"SI_issue_slots_p"
	.byte	0x4
	.value	0x240
	.long	0x3e4a
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.long	0x3e24
	.uleb128 0xc
	.long	0x3e5b
	.long	0x3e5b
	.uleb128 0x1b
	.byte	0x0
	.uleb128 0x4
	.byte	0x4
	.long	0x38c7
	.uleb128 0x1a
	.string	"SI_top_si_p"
	.byte	0x4
	.value	0x29d
	.long	0x3e77
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.long	0x3e50
	.uleb128 0x1a
	.string	"SI_ID_count_p"
	.byte	0x4
	.value	0x30b
	.long	0x3aad
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"SI_ID_si_p"
	.byte	0x4
	.value	0x318
	.long	0x3e77
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0x3eb5
	.long	0x34e1
	.uleb128 0x1b
	.byte	0x0
	.uleb128 0x1c
	.string	"ISA_PROPERTIES_flags"
	.byte	0x5
	.byte	0x34
	.long	0x3ed3
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.long	0x3eaa
	.uleb128 0xc
	.long	0x3ee9
	.long	0x34b5
	.uleb128 0x1d
	.long	0x146
	.value	0x2fb
	.byte	0x0
	.uleb128 0x1c
	.string	"ISA_HAZARD_hazard_index"
	.byte	0x2
	.byte	0x6c
	.long	0x3ed8
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0x3f1a
	.long	0x39a0
	.uleb128 0xd
	.long	0x146
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.string	"ISA_HAZARD_hazard_info"
	.byte	0x2
	.byte	0x74
	.long	0x3f0a
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0x3f4a
	.long	0x14d
	.uleb128 0xd
	.long	0x146
	.byte	0x4f
	.byte	0x0
	.uleb128 0x1c
	.string	"TI_errmsg"
	.byte	0x6
	.byte	0x51
	.long	0x3f3a
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x82
	.value	0x2
	.long	.Ldebug_info0
	.long	0x3f5e
	.long	0x39b7
	.string	"TI_LATENCY_Commit_Cycle"
	.long	0x39f7
	.string	"TI_LATENCY_Operand_Hazard"
	.long	0x3c2f
	.string	"TI_LATENCY_Result_Hazard"
	.long	0x3cd3
	.string	"TI_LATENCY_Errata_Hazard"
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
	.string	"avail_per_cycle"
.LASF3:
	.string	"post_ops"
.LASF2:
	.string	"pre_ops"
.LASF4:
	.string	"opcode"
.LASF0:
	.string	"unsigned int"
.LASF5:
	.string	"info"
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
