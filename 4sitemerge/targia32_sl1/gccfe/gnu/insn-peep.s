	.file	"insn-peep.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl peephole
	.type	peephole, @function
peephole:
.LFB15:
	.file 1 "../../../kgccfe/gnu/MIPS/insn-peep.c"
	.loc 1 25 0
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
	.loc 1 28 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L2
	.loc 1 30 0
	movl	$0, -24(%ebp)
	jmp	.L5
.L2:
	.loc 1 32 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 33 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 34 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 35 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L6
	.loc 1 36 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 37 0
	movl	peep_operand@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 38 0
	movl	$4, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	register_operand@PLT
	testl	%eax, %eax
	je	.L6
	.loc 1 39 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 40 0
	movl	peep_operand@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 41 0
	movl	$4, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	register_operand@PLT
	testl	%eax, %eax
	je	.L6
	jmp	.L125
.L9:
.L125:
	.loc 1 42 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 43 0
	cmpl	$0, -16(%ebp)
	je	.L6
	.loc 1 47 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L9
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L12
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L9
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L9
.L12:
	.loc 1 48 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L6
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L6
	.loc 1 51 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 52 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 53 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L6
	.loc 1 54 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 55 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	jne	.L6
	.loc 1 56 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 57 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	jne	.L6
	.loc 1 58 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 59 0
	movl	peep_operand@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 60 0
	movl	$4, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	equality_op@PLT
	testl	%eax, %eax
	je	.L6
	.loc 1 61 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 62 0
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L6
	.loc 1 63 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 64 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L6
	.loc 1 65 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L6
	.loc 1 66 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 67 0
	movl	peep_operand@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 68 0
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_or_label_operand@PLT
	testl	%eax, %eax
	je	.L6
	.loc 1 69 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 70 0
	movl	peep_operand@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 71 0
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_or_label_operand@PLT
	testl	%eax, %eax
	je	.L6
	.loc 1 72 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L6
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L6
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$24, %eax
	jne	.L6
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	dead_or_set_p@PLT
	testl	%eax, %eax
	je	.L6
	movl	peep_operand@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L6
	movl	peep_operand@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$1, %eax
	jbe	.L31
	movl	peep_operand@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$7, %eax
	jbe	.L33
.L31:
	movl	peep_operand@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$16, %eax
	je	.L33
	movl	peep_operand@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$17, %eax
	jne	.L6
.L33:
	.loc 1 78 0
	movl	peep_operand@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$5, (%esp)
	call	gen_rtvec_v@PLT
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$49, (%esp)
	call	gen_rtx_fmt_E@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 79 0
	movl	8(%ebp), %eax
	movl	$529, 52(%eax)
	.loc 1 80 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	delete_for_peephole@PLT
	.loc 1 81 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L5
.L6:
	.loc 1 84 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 85 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 86 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 87 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L35
	.loc 1 88 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 89 0
	movl	peep_operand@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 90 0
	movl	$5, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	register_operand@PLT
	testl	%eax, %eax
	je	.L35
	.loc 1 91 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 92 0
	movl	peep_operand@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 93 0
	movl	$5, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	register_operand@PLT
	testl	%eax, %eax
	je	.L35
	jmp	.L126
.L38:
.L126:
	.loc 1 94 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 95 0
	cmpl	$0, -16(%ebp)
	je	.L35
	.loc 1 99 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L38
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L41
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L38
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L38
.L41:
	.loc 1 100 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L35
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L35
	.loc 1 103 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 104 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 105 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L35
	.loc 1 106 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 107 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	jne	.L35
	.loc 1 108 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 109 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	jne	.L35
	.loc 1 110 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 111 0
	movl	peep_operand@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 112 0
	movl	$5, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	equality_op@PLT
	testl	%eax, %eax
	je	.L35
	.loc 1 113 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 114 0
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L35
	.loc 1 115 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 116 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L35
	.loc 1 117 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L35
	.loc 1 118 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 119 0
	movl	peep_operand@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 120 0
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_or_label_operand@PLT
	testl	%eax, %eax
	je	.L35
	.loc 1 121 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 122 0
	movl	peep_operand@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 123 0
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_or_label_operand@PLT
	testl	%eax, %eax
	je	.L35
	.loc 1 124 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L35
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L35
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L35
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$24, %eax
	jne	.L35
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	dead_or_set_p@PLT
	testl	%eax, %eax
	je	.L35
	movl	peep_operand@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L35
	movl	peep_operand@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$1, %eax
	jbe	.L61
	movl	peep_operand@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$7, %eax
	jbe	.L63
.L61:
	movl	peep_operand@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$16, %eax
	je	.L63
	movl	peep_operand@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$17, %eax
	jne	.L35
.L63:
	.loc 1 130 0
	movl	peep_operand@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$5, (%esp)
	call	gen_rtvec_v@PLT
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$49, (%esp)
	call	gen_rtx_fmt_E@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 131 0
	movl	8(%ebp), %eax
	movl	$530, 52(%eax)
	.loc 1 132 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	delete_for_peephole@PLT
	.loc 1 133 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L5
.L35:
	.loc 1 136 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 137 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 138 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 139 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L65
	.loc 1 140 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 141 0
	movl	peep_operand@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 142 0
	movl	$4, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	register_operand@PLT
	testl	%eax, %eax
	je	.L65
	.loc 1 143 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 144 0
	movl	peep_operand@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 145 0
	movl	$4, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	register_operand@PLT
	testl	%eax, %eax
	je	.L65
	jmp	.L127
.L68:
.L127:
	.loc 1 146 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 147 0
	cmpl	$0, -16(%ebp)
	je	.L65
	.loc 1 151 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L68
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L71
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L68
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L68
.L71:
	.loc 1 152 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L65
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L65
	.loc 1 155 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 156 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 157 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L65
	.loc 1 158 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 159 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	jne	.L65
	.loc 1 160 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 161 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	jne	.L65
	.loc 1 162 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 163 0
	movl	peep_operand@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 164 0
	movl	$4, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	equality_op@PLT
	testl	%eax, %eax
	je	.L65
	.loc 1 165 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 166 0
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L65
	.loc 1 167 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 168 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L65
	.loc 1 169 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L65
	.loc 1 170 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 171 0
	movl	peep_operand@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 172 0
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_or_label_operand@PLT
	testl	%eax, %eax
	je	.L65
	.loc 1 173 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 174 0
	movl	peep_operand@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 175 0
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_or_label_operand@PLT
	testl	%eax, %eax
	je	.L65
	.loc 1 176 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L65
	movl	peep_operand@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L65
	movl	peep_operand@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$24, %eax
	jne	.L65
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L65
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$1, %eax
	jbe	.L89
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$7, %eax
	jbe	.L91
.L89:
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$16, %eax
	je	.L91
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$17, %eax
	jne	.L65
.L91:
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	dead_or_set_p@PLT
	testl	%eax, %eax
	je	.L65
	.loc 1 182 0
	movl	peep_operand@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$5, (%esp)
	call	gen_rtvec_v@PLT
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$49, (%esp)
	call	gen_rtx_fmt_E@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 183 0
	movl	8(%ebp), %eax
	movl	$531, 52(%eax)
	.loc 1 184 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	delete_for_peephole@PLT
	.loc 1 185 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L5
.L65:
	.loc 1 188 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 189 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 190 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 191 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L94
	.loc 1 192 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 193 0
	movl	peep_operand@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 194 0
	movl	$5, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	register_operand@PLT
	testl	%eax, %eax
	je	.L94
	.loc 1 195 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 196 0
	movl	peep_operand@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 197 0
	movl	$5, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	register_operand@PLT
	testl	%eax, %eax
	je	.L94
	jmp	.L128
.L97:
.L128:
	.loc 1 198 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 199 0
	cmpl	$0, -16(%ebp)
	je	.L94
	.loc 1 203 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L97
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L100
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L97
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L97
.L100:
	.loc 1 204 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L94
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L94
	.loc 1 207 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 208 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 209 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L94
	.loc 1 210 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 211 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	jne	.L94
	.loc 1 212 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 213 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	jne	.L94
	.loc 1 214 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 215 0
	movl	peep_operand@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 216 0
	movl	$5, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	equality_op@PLT
	testl	%eax, %eax
	je	.L94
	.loc 1 217 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 218 0
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L94
	.loc 1 219 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 220 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L94
	.loc 1 221 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L94
	.loc 1 222 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 223 0
	movl	peep_operand@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 224 0
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_or_label_operand@PLT
	testl	%eax, %eax
	je	.L94
	.loc 1 225 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 226 0
	movl	peep_operand@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 227 0
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_or_label_operand@PLT
	testl	%eax, %eax
	je	.L94
	.loc 1 228 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L94
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L94
	movl	peep_operand@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L94
	movl	peep_operand@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$24, %eax
	jne	.L94
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L94
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$1, %eax
	jbe	.L119
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$7, %eax
	jbe	.L121
.L119:
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$16, %eax
	je	.L121
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$17, %eax
	jne	.L94
.L121:
	movl	peep_operand@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	dead_or_set_p@PLT
	testl	%eax, %eax
	je	.L94
	.loc 1 234 0
	movl	peep_operand@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$5, (%esp)
	call	gen_rtvec_v@PLT
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$49, (%esp)
	call	gen_rtx_fmt_E@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 235 0
	movl	8(%ebp), %eax
	movl	$532, 52(%eax)
	.loc 1 236 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	delete_for_peephole@PLT
	.loc 1 237 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L5
.L94:
	.loc 1 240 0
	movl	$0, -24(%ebp)
.L5:
	movl	-24(%ebp), %eax
	.loc 1 241 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	peephole, .-peephole
	.comm	peep_operand,20,4
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
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/machmode.h"
	.file 5 "../../../kgccfe/gnu/bitmap.h"
	.file 6 "../../../kgccfe/gnu/basic-block.h"
	.file 7 "../../../kgccfe/gnu/sbitmap.h"
	.file 8 "../../../kgccfe/gnu/MIPS/mips.h"
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
	.long	0x16b8
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/MIPS/insn-peep.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xae
	.uleb128 0x3
	.byte	0x4
	.long	0xb4
	.uleb128 0x4
	.long	0x1a4
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x8a
	.long	0x50c
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x3
	.byte	0x8d
	.long	0x2c3
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x3
	.byte	0x94
	.long	0x224
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x3
	.byte	0x97
	.long	0x224
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x3
	.byte	0x9f
	.long	0x224
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x3
	.byte	0xa8
	.long	0x224
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x3
	.byte	0xba
	.long	0x224
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x3
	.byte	0xc1
	.long	0x224
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x3
	.byte	0xc6
	.long	0x224
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x3
	.byte	0xcf
	.long	0x224
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x3
	.byte	0xd4
	.long	0x112b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1b1
	.uleb128 0x3
	.byte	0x4
	.long	0x1b7
	.uleb128 0x4
	.long	0x1ec
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x113b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1f8
	.uleb128 0x3
	.byte	0x4
	.long	0x1fe
	.uleb128 0x7
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x210
	.uleb128 0x8
	.long	0x215
	.uleb128 0x9
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xa
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x9
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x9
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x9
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x9
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x9
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x9
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.byte	0x4
	.uleb128 0xc
	.long	0x50c
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.uleb128 0xd
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0xd
	.string	"BImode"
	.sleb128 1
	.uleb128 0xd
	.string	"QImode"
	.sleb128 2
	.uleb128 0xd
	.string	"HImode"
	.sleb128 3
	.uleb128 0xd
	.string	"SImode"
	.sleb128 4
	.uleb128 0xd
	.string	"DImode"
	.sleb128 5
	.uleb128 0xd
	.string	"TImode"
	.sleb128 6
	.uleb128 0xd
	.string	"OImode"
	.sleb128 7
	.uleb128 0xd
	.string	"PQImode"
	.sleb128 8
	.uleb128 0xd
	.string	"PHImode"
	.sleb128 9
	.uleb128 0xd
	.string	"PSImode"
	.sleb128 10
	.uleb128 0xd
	.string	"PDImode"
	.sleb128 11
	.uleb128 0xd
	.string	"QFmode"
	.sleb128 12
	.uleb128 0xd
	.string	"HFmode"
	.sleb128 13
	.uleb128 0xd
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0xd
	.string	"SFmode"
	.sleb128 15
	.uleb128 0xd
	.string	"DFmode"
	.sleb128 16
	.uleb128 0xd
	.string	"XFmode"
	.sleb128 17
	.uleb128 0xd
	.string	"TFmode"
	.sleb128 18
	.uleb128 0xd
	.string	"QCmode"
	.sleb128 19
	.uleb128 0xd
	.string	"HCmode"
	.sleb128 20
	.uleb128 0xd
	.string	"SCmode"
	.sleb128 21
	.uleb128 0xd
	.string	"DCmode"
	.sleb128 22
	.uleb128 0xd
	.string	"XCmode"
	.sleb128 23
	.uleb128 0xd
	.string	"TCmode"
	.sleb128 24
	.uleb128 0xd
	.string	"CQImode"
	.sleb128 25
	.uleb128 0xd
	.string	"CHImode"
	.sleb128 26
	.uleb128 0xd
	.string	"CSImode"
	.sleb128 27
	.uleb128 0xd
	.string	"CDImode"
	.sleb128 28
	.uleb128 0xd
	.string	"CTImode"
	.sleb128 29
	.uleb128 0xd
	.string	"COImode"
	.sleb128 30
	.uleb128 0xd
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0xd
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0xd
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0xd
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0xd
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0xd
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0xd
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0xd
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0xd
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0xd
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0xd
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0xd
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0xd
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0xd
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0xd
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0xd
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0xd
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0xd
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0xd
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0xd
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0xd
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0xd
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0xd
	.string	"CCmode"
	.sleb128 53
	.uleb128 0xd
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0xc
	.long	0xcdb
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x2f
	.uleb128 0xd
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0xd
	.string	"NIL"
	.sleb128 1
	.uleb128 0xd
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0xd
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0xd
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0xd
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0xd
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0xd
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0xd
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0xd
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0xd
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0xd
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0xd
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0xd
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0xd
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0xd
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0xd
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0xd
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0xd
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0xd
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0xd
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0xd
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0xd
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0xd
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0xd
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0xd
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0xd
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0xd
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0xd
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0xd
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0xd
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0xd
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0xd
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0xd
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0xd
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0xd
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0xd
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0xd
	.string	"ATTR"
	.sleb128 37
	.uleb128 0xd
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0xd
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0xd
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0xd
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0xd
	.string	"INSN"
	.sleb128 42
	.uleb128 0xd
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0xd
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0xd
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0xd
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0xd
	.string	"NOTE"
	.sleb128 47
	.uleb128 0xd
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0xd
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0xd
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0xd
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0xd
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0xd
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0xd
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0xd
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0xd
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0xd
	.string	"SET"
	.sleb128 57
	.uleb128 0xd
	.string	"USE"
	.sleb128 58
	.uleb128 0xd
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0xd
	.string	"CALL"
	.sleb128 60
	.uleb128 0xd
	.string	"RETURN"
	.sleb128 61
	.uleb128 0xd
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0xd
	.string	"RESX"
	.sleb128 63
	.uleb128 0xd
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0xd
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0xd
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0xd
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0xd
	.string	"CONST"
	.sleb128 68
	.uleb128 0xd
	.string	"PC"
	.sleb128 69
	.uleb128 0xd
	.string	"VALUE"
	.sleb128 70
	.uleb128 0xd
	.string	"REG"
	.sleb128 71
	.uleb128 0xd
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0xd
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0xd
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0xd
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0xd
	.string	"MEM"
	.sleb128 76
	.uleb128 0xd
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0xd
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0xd
	.string	"CC0"
	.sleb128 79
	.uleb128 0xd
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0xd
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0xd
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0xd
	.string	"COND"
	.sleb128 83
	.uleb128 0xd
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0xd
	.string	"PLUS"
	.sleb128 85
	.uleb128 0xd
	.string	"MINUS"
	.sleb128 86
	.uleb128 0xd
	.string	"NEG"
	.sleb128 87
	.uleb128 0xd
	.string	"MULT"
	.sleb128 88
	.uleb128 0xd
	.string	"DIV"
	.sleb128 89
	.uleb128 0xd
	.string	"MOD"
	.sleb128 90
	.uleb128 0xd
	.string	"UDIV"
	.sleb128 91
	.uleb128 0xd
	.string	"UMOD"
	.sleb128 92
	.uleb128 0xd
	.string	"AND"
	.sleb128 93
	.uleb128 0xd
	.string	"IOR"
	.sleb128 94
	.uleb128 0xd
	.string	"XOR"
	.sleb128 95
	.uleb128 0xd
	.string	"NOT"
	.sleb128 96
	.uleb128 0xd
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0xd
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0xd
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0xd
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0xd
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0xd
	.string	"SMIN"
	.sleb128 102
	.uleb128 0xd
	.string	"SMAX"
	.sleb128 103
	.uleb128 0xd
	.string	"UMIN"
	.sleb128 104
	.uleb128 0xd
	.string	"UMAX"
	.sleb128 105
	.uleb128 0xd
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0xd
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0xd
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0xd
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0xd
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0xd
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0xd
	.string	"NE"
	.sleb128 112
	.uleb128 0xd
	.string	"EQ"
	.sleb128 113
	.uleb128 0xd
	.string	"GE"
	.sleb128 114
	.uleb128 0xd
	.string	"GT"
	.sleb128 115
	.uleb128 0xd
	.string	"LE"
	.sleb128 116
	.uleb128 0xd
	.string	"LT"
	.sleb128 117
	.uleb128 0xd
	.string	"GEU"
	.sleb128 118
	.uleb128 0xd
	.string	"GTU"
	.sleb128 119
	.uleb128 0xd
	.string	"LEU"
	.sleb128 120
	.uleb128 0xd
	.string	"LTU"
	.sleb128 121
	.uleb128 0xd
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0xd
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0xd
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0xd
	.string	"UNGE"
	.sleb128 125
	.uleb128 0xd
	.string	"UNGT"
	.sleb128 126
	.uleb128 0xd
	.string	"UNLE"
	.sleb128 127
	.uleb128 0xd
	.string	"UNLT"
	.sleb128 128
	.uleb128 0xd
	.string	"LTGT"
	.sleb128 129
	.uleb128 0xd
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0xd
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0xd
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0xd
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0xd
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0xd
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0xd
	.string	"FIX"
	.sleb128 136
	.uleb128 0xd
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0xd
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0xd
	.string	"ABS"
	.sleb128 139
	.uleb128 0xd
	.string	"SQRT"
	.sleb128 140
	.uleb128 0xd
	.string	"FFS"
	.sleb128 141
	.uleb128 0xd
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0xd
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0xd
	.string	"HIGH"
	.sleb128 144
	.uleb128 0xd
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0xd
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0xd
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0xd
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0xd
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0xd
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0xd
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0xd
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0xd
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0xd
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0xd
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0xd
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0xd
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0xd
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0xd
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0xd
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0xd
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0xd
	.string	"PHI"
	.sleb128 162
	.uleb128 0xd
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0xe
	.long	0xdb5
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x224
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x3
	.byte	0x51
	.long	0x224
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x3
	.byte	0x52
	.long	0x224
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x3
	.byte	0x54
	.long	0x224
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x3
	.byte	0x56
	.long	0x224
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x3
	.byte	0x58
	.long	0x224
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x3
	.byte	0x5b
	.long	0x224
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x3
	.byte	0x5d
	.long	0x224
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0x3
	.byte	0x5e
	.long	0xcdb
	.uleb128 0xf
	.long	0xe2c
	.long	.LASF1
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x28a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x6b
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x6c
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x6d
	.long	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x10
	.long	.LASF1
	.byte	0x3
	.byte	0x6e
	.long	0xdd0
	.uleb128 0x11
	.long	0xf09
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x12
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x28a
	.uleb128 0x12
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x21d
	.uleb128 0x12
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x224
	.uleb128 0x12
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x20a
	.uleb128 0x12
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0xa3
	.uleb128 0x12
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x1a4
	.uleb128 0x12
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x2c3
	.uleb128 0x12
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0xdb5
	.uleb128 0x12
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0xf1d
	.uleb128 0x12
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0xf85
	.uleb128 0x12
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1ec
	.uleb128 0x12
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x1110
	.uleb128 0x12
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x1116
	.byte	0x0
	.uleb128 0x13
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0xf09
	.uleb128 0x4
	.long	0xf85
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x6
	.string	"first"
	.byte	0x5
	.byte	0x3d
	.long	0x11f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x11f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xf23
	.uleb128 0x4
	.long	0x1110
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x6
	.string	"head"
	.byte	0x6
	.byte	0xb5
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x6
	.byte	0xb5
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x6
	.byte	0xb8
	.long	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x6
	.byte	0xb9
	.long	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x6
	.byte	0xbc
	.long	0x1345
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x6
	.byte	0xbc
	.long	0x1345
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x6
	.byte	0xc1
	.long	0x1275
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x6
	.byte	0xc5
	.long	0x1275
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x6
	.byte	0xcb
	.long	0x1275
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x6
	.byte	0xcd
	.long	0x1275
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x6
	.byte	0xd0
	.long	0x2c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x6
	.byte	0xd3
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x1110
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x1110
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x6
	.byte	0xd9
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x6
	.byte	0xdc
	.long	0x15c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x6
	.byte	0xdf
	.long	0x1283
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x6
	.byte	0xe2
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0x6
	.byte	0xe5
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xf8b
	.uleb128 0x3
	.byte	0x4
	.long	0xe2c
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0xe37
	.uleb128 0x14
	.long	0x113b
	.long	0x111c
	.uleb128 0x15
	.long	0x22b
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x114b
	.long	0xa3
	.uleb128 0x15
	.long	0x22b
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x115b
	.long	0x29b
	.uleb128 0x15
	.long	0x22b
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x259
	.uleb128 0x4
	.long	0x11c6
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x6
	.string	"next"
	.byte	0x5
	.byte	0x35
	.long	0x11c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x5
	.byte	0x36
	.long	0x11c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x11cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x116e
	.uleb128 0x14
	.long	0x11dc
	.long	0x115b
	.uleb128 0x15
	.long	0x22b
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x116e
	.uleb128 0x3
	.byte	0x4
	.long	0x11dc
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0xf85
	.uleb128 0x4
	.long	0x1260
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x7
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x7
	.byte	0x21
	.long	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x7
	.byte	0x24
	.long	0x114b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x7
	.byte	0x25
	.long	0x126f
	.uleb128 0x3
	.byte	0x4
	.long	0x1206
	.uleb128 0x2
	.string	"regset"
	.byte	0x6
	.byte	0x22
	.long	0x11f8
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x6
	.byte	0x75
	.long	0x28a
	.uleb128 0x4
	.long	0x133f
	.string	"edge_def"
	.byte	0x28
	.byte	0x6
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x6
	.byte	0x7a
	.long	0x133f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x6
	.byte	0x7a
	.long	0x133f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x6
	.byte	0x7d
	.long	0x1110
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x6
	.byte	0x7d
	.long	0x1110
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x6
	.byte	0x80
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x6
	.byte	0x83
	.long	0x2c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0x6
	.byte	0x85
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x6
	.byte	0x86
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x6
	.byte	0x87
	.long	0x1283
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1294
	.uleb128 0x2
	.string	"edge"
	.byte	0x6
	.byte	0x89
	.long	0x133f
	.uleb128 0x4
	.long	0x15c1
	.string	"loop"
	.byte	0x80
	.byte	0x6
	.byte	0xdc
	.uleb128 0x16
	.string	"num"
	.byte	0x6
	.value	0x176
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"header"
	.byte	0x6
	.value	0x179
	.long	0x15c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"latch"
	.byte	0x6
	.value	0x17c
	.long	0x15c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"pre_header"
	.byte	0x6
	.value	0x17f
	.long	0x15c7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"pre_header_edges"
	.byte	0x6
	.value	0x184
	.long	0x15da
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.string	"num_pre_header_edges"
	.byte	0x6
	.value	0x187
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.string	"first"
	.byte	0x6
	.value	0x18b
	.long	0x15c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.string	"last"
	.byte	0x6
	.value	0x18f
	.long	0x15c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.string	"nodes"
	.byte	0x6
	.value	0x192
	.long	0x1260
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.string	"num_nodes"
	.byte	0x6
	.value	0x195
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x16
	.string	"entry_edges"
	.byte	0x6
	.value	0x198
	.long	0x15da
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x16
	.string	"num_entries"
	.byte	0x6
	.value	0x19b
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x16
	.string	"exit_edges"
	.byte	0x6
	.value	0x19e
	.long	0x15da
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x16
	.string	"num_exits"
	.byte	0x6
	.value	0x1a1
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x16
	.string	"exits_doms"
	.byte	0x6
	.value	0x1a4
	.long	0x1260
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x16
	.string	"depth"
	.byte	0x6
	.value	0x1a7
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x16
	.string	"pred"
	.byte	0x6
	.value	0x1aa
	.long	0x15e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x16
	.string	"level"
	.byte	0x6
	.value	0x1ae
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x16
	.string	"outer"
	.byte	0x6
	.value	0x1b1
	.long	0x15c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x16
	.string	"inner"
	.byte	0x6
	.value	0x1b4
	.long	0x15c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x16
	.string	"next"
	.byte	0x6
	.value	0x1b7
	.long	0x15c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x16
	.string	"invalid"
	.byte	0x6
	.value	0x1ba
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x16
	.string	"aux"
	.byte	0x6
	.value	0x1bd
	.long	0x2c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x16
	.string	"vtop"
	.byte	0x6
	.value	0x1c3
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x16
	.string	"cont"
	.byte	0x6
	.value	0x1c7
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x16
	.string	"start"
	.byte	0x6
	.value	0x1ca
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x16
	.string	"end"
	.byte	0x6
	.value	0x1cd
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x16
	.string	"top"
	.byte	0x6
	.value	0x1d1
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x16
	.string	"scan_start"
	.byte	0x6
	.value	0x1d4
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x16
	.string	"sink"
	.byte	0x6
	.value	0x1d7
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x16
	.string	"exit_labels"
	.byte	0x6
	.value	0x1e2
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x16
	.string	"exit_count"
	.byte	0x6
	.value	0x1e6
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1351
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x6
	.byte	0xe6
	.long	0x1110
	.uleb128 0x3
	.byte	0x4
	.long	0x1345
	.uleb128 0x3
	.byte	0x4
	.long	0x15c1
	.uleb128 0x9
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x17
	.long	0x167a
	.byte	0x1
	.string	"peephole"
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.long	0xa3
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x18
	.string	"ins1"
	.byte	0x1
	.byte	0x18
	.long	0xa3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"insn"
	.byte	0x1
	.byte	0x1a
	.long	0xa3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.byte	0x1a
	.long	0xa3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.string	"pat"
	.byte	0x1
	.byte	0x1a
	.long	0xa3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.string	"L529"
	.byte	0x1
	.byte	0x52
	.long	.L6
	.uleb128 0x1a
	.string	"L530"
	.byte	0x1
	.byte	0x86
	.long	.L35
	.uleb128 0x1a
	.string	"L531"
	.byte	0x1
	.byte	0xba
	.long	.L65
	.uleb128 0x1a
	.string	"L532"
	.byte	0x1
	.byte	0xee
	.long	.L94
	.byte	0x0
	.uleb128 0x1b
	.string	"target_flags"
	.byte	0x8
	.byte	0x21
	.long	0x21d
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.long	0x16a0
	.long	0xa3
	.uleb128 0x15
	.long	0x22b
	.byte	0x4
	.byte	0x0
	.uleb128 0x1c
	.string	"peep_operand"
	.byte	0x1
	.byte	0xf3
	.long	0x1690
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	peep_operand
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x17
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.long	0x16bc
	.long	0x15ef
	.string	"peephole"
	.long	0x16a0
	.string	"peep_operand"
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
	.string	"mem_attrs"
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
