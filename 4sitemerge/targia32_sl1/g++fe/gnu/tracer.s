	.file	"tracer.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	ignore_bb_p, @function
ignore_bb_p:
.LFB15:
	.file 1 "../../../kg++fe/gnu/tracer.c"
	.loc 1 72 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$20, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 73 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jns	.L2
	.loc 1 74 0
	movl	$1, -8(%ebp)
	jmp	.L4
.L2:
	.loc 1 75 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_hot_bb_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L5
	.loc 1 76 0
	movl	$1, -8(%ebp)
	jmp	.L4
.L5:
	.loc 1 77 0
	movl	$0, -8(%ebp)
.L4:
	movl	-8(%ebp), %eax
	.loc 1 78 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	ignore_bb_p, .-ignore_bb_p
	.type	count_insns, @function
count_insns:
.LFB16:
	.loc 1 85 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$20, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 87 0
	movl	$0, -8(%ebp)
	.loc 1 89 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L9
.L10:
	.loc 1 90 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	active_insn_p@PLT
	testl	%eax, %eax
	je	.L11
	.loc 1 91 0
	addl	$1, -8(%ebp)
.L11:
	.loc 1 89 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L9:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L10
	.loc 1 92 0
	movl	-8(%ebp), %eax
	.loc 1 93 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	count_insns, .-count_insns
	.type	better_p, @function
better_p:
.LFB17:
	.loc 1 99 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%edi
.LCFI10:
	pushl	%esi
.LCFI11:
	subl	$24, %esp
.LCFI12:
	.loc 1 100 0
	movl	8(%ebp), %eax
	movl	32(%eax), %esi
	movl	36(%eax), %edi
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L16
	.loc 1 101 0
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	36(%eax), %ecx
	movl	%edx, -24(%ebp)
	movl	%ecx, -20(%ebp)
	movl	12(%ebp), %eax
	movl	32(%eax), %edx
	movl	36(%eax), %ecx
	movl	%edx, -16(%ebp)
	movl	%ecx, -12(%ebp)
	movl	$1, -28(%ebp)
	movl	-12(%ebp), %ecx
	cmpl	%ecx, -20(%ebp)
	jg	.L20
	movl	-12(%ebp), %eax
	cmpl	%eax, -20(%ebp)
	jl	.L19
	movl	-16(%ebp), %edx
	cmpl	%edx, -24(%ebp)
	ja	.L20
.L19:
	movl	$0, -28(%ebp)
	jmp	.L20
.L16:
	.loc 1 102 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	imull	%edx, %eax
	cmpl	%eax, %ecx
	je	.L21
	.loc 1 104 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	imull	%edx, %eax
	cmpl	%eax, %ecx
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	jmp	.L20
.L21:
	.loc 1 108 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	.L23
	.loc 1 109 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	cmpl	%eax, %edx
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	jmp	.L20
.L23:
	.loc 1 110 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	cmpl	%eax, %edx
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
.L20:
	movl	-28(%ebp), %eax
	.loc 1 111 0
	addl	$24, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE17:
	.size	better_p, .-better_p
	.type	find_best_successor, @function
find_best_successor:
.LFB18:
	.loc 1 118 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	pushl	%ebx
.LCFI15:
	subl	$36, %esp
.LCFI16:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 120 0
	movl	$0, -8(%ebp)
	.loc 1 122 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L27
.L28:
	.loc 1 123 0
	cmpl	$0, -8(%ebp)
	je	.L29
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	better_p
	testb	%al, %al
	je	.L31
.L29:
	.loc 1 124 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L31:
	.loc 1 122 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L27:
	cmpl	$0, -12(%ebp)
	jne	.L28
	.loc 1 125 0
	cmpl	$0, -8(%ebp)
	je	.L33
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	ignore_bb_p
	testb	%al, %al
	je	.L35
.L33:
	.loc 1 126 0
	movl	$0, -24(%ebp)
	jmp	.L36
.L35:
	.loc 1 127 0
	movl	-8(%ebp), %eax
	movl	28(%eax), %edx
	movl	probability_cutoff@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jg	.L37
	.loc 1 128 0
	movl	$0, -24(%ebp)
	jmp	.L36
.L37:
	.loc 1 129 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L36:
	movl	-24(%ebp), %eax
	.loc 1 130 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	find_best_successor, .-find_best_successor
	.type	find_best_predecessor, @function
find_best_predecessor:
.LFB19:
	.loc 1 137 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%ebx
.LCFI19:
	subl	$36, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 139 0
	movl	$0, -8(%ebp)
	.loc 1 141 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L41
.L42:
	.loc 1 142 0
	cmpl	$0, -8(%ebp)
	je	.L43
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	better_p
	testb	%al, %al
	je	.L45
.L43:
	.loc 1 143 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L45:
	.loc 1 141 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L41:
	cmpl	$0, -12(%ebp)
	jne	.L42
	.loc 1 144 0
	cmpl	$0, -8(%ebp)
	je	.L47
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	ignore_bb_p
	testb	%al, %al
	je	.L49
.L47:
	.loc 1 145 0
	movl	$0, -24(%ebp)
	jmp	.L50
.L49:
	.loc 1 146 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	imull	%edx, %eax
	leal	5000(%eax), %ecx
	movl	$1759218605, -28(%ebp)
	movl	-28(%ebp), %eax
	imull	%ecx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	imull	$10000, %eax, %ecx
	movl	8(%ebp), %eax
	movl	72(%eax), %edx
	movl	branch_ratio_cutoff@GOTOFF(%ebx), %eax
	imull	%edx, %eax
	cmpl	%eax, %ecx
	jge	.L51
	.loc 1 148 0
	movl	$0, -24(%ebp)
	jmp	.L50
.L51:
	.loc 1 149 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L50:
	movl	-24(%ebp), %eax
	.loc 1 150 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	find_best_predecessor, .-find_best_predecessor
	.section	.rodata
.LC0:
	.string	"Trace seed %i [%i]"
.LC1:
	.string	",%i [%i]"
.LC2:
	.string	" forward %i [%i]"
	.text
	.type	find_trace, @function
find_trace:
.LFB20:
	.loc 1 159 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%esi
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$32, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 160 0
	movl	$0, -20(%ebp)
	.loc 1 163 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L57
	.loc 1 164 0
	movl	8(%ebp), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	44(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 166 0
	jmp	.L57
.L58:
.LBB2:
	.loc 1 168 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 169 0
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L59
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L59
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	andl	$46, %eax
	testl	%eax, %eax
	jne	.L59
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_best_successor
	cmpl	-16(%ebp), %eax
	jne	.L59
	.loc 1 172 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L64
	.loc 1 173 0
	movl	8(%ebp), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	44(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L64:
	.loc 1 174 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%ebp)
.L57:
.LBE2:
	.loc 1 166 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_best_predecessor
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	.L58
.L59:
	.loc 1 176 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L66
	.loc 1 177 0
	movl	8(%ebp), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	44(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L66:
	.loc 1 178 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -20(%ebp)
	.loc 1 181 0
	jmp	.L68
.L69:
	.loc 1 183 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 184 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L70
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L70
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	andl	$46, %eax
	testl	%eax, %eax
	jne	.L70
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_best_predecessor
	cmpl	-16(%ebp), %eax
	jne	.L70
	.loc 1 187 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L75
	.loc 1 188 0
	movl	8(%ebp), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	44(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L75:
	.loc 1 189 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -20(%ebp)
.L68:
	.loc 1 181 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_best_successor
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	.L69
.L70:
	.loc 1 191 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L77
	.loc 1 192 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L77:
	.loc 1 193 0
	movl	-20(%ebp), %eax
	.loc 1 194 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE20:
	.size	find_trace, .-find_trace
	.section	.rodata
	.type	__FUNCTION__.11854, @object
	.size	__FUNCTION__.11854, 15
__FUNCTION__.11854:
	.string	"tail_duplicate"
.globl __divdi3
.LC3:
	.string	"../../../kg++fe/gnu/tracer.c"
.LC4:
	.string	"Duplicated %i as %i [%i]\n"
.LC6:
	.string	" covered now %.1f\n\n"
.LC7:
	.string	"Duplicated %i insns (%i%%)\n"
	.align 8
.LC5:
	.long	0
	.long	1079574528
	.text
	.type	tail_duplicate, @function
tail_duplicate:
.LFB21:
	.loc 1 201 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%edi
.LCFI28:
	pushl	%esi
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$140, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 202 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -76(%ebp)
	.loc 1 203 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -72(%ebp)
	.loc 1 204 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -68(%ebp)
	.loc 1 205 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	.loc 1 206 0
	movl	$0, -104(%ebp)
	movl	$0, -100(%ebp)
	movl	$0, -96(%ebp)
	movl	$0, -92(%ebp)
	.loc 1 207 0
	call	fibheap_new@PLT
	movl	%eax, -56(%ebp)
	.loc 1 212 0
	movl	profile_info@GOT(%ebx), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L81
	movl	flag_branch_probabilities@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L81
	.loc 1 213 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$216, %eax
	movl	4(%eax), %eax
	movl	%eax, probability_cutoff@GOTOFF(%ebx)
	.loc 1 212 0
	jmp	.L84
.L81:
	.loc 1 215 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$228, %eax
	movl	4(%eax), %eax
	movl	%eax, probability_cutoff@GOTOFF(%ebx)
.L84:
	.loc 1 216 0
	movl	probability_cutoff@GOTOFF(%ebx), %eax
	imull	$100, %eax, %eax
	movl	%eax, probability_cutoff@GOTOFF(%ebx)
	.loc 1 218 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$204, %eax
	movl	4(%eax), %eax
	imull	$100, %eax, %eax
	movl	%eax, branch_ratio_cutoff@GOTOFF(%ebx)
	.loc 1 221 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L85
.L86:
.LBB3:
	.loc 1 223 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	count_insns
	movl	%eax, -44(%ebp)
	.loc 1 224 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	ignore_bb_p
	xorl	$1, %eax
	testb	%al, %al
	je	.L87
	.loc 1 225 0
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-76(%ebp), %esi
	movl	-48(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, %edx
	negl	%edx
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_insert@PLT
	movl	%eax, (%esi)
.L87:
	.loc 1 228 0
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-68(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 229 0
	movl	-44(%ebp), %eax
	addl	%eax, -64(%ebp)
	.loc 1 230 0
	movl	-48(%ebp), %eax
	movl	72(%eax), %eax
	imull	-44(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	%eax, -104(%ebp)
	adcl	%edx, -100(%ebp)
.LBE3:
	.loc 1 221 0
	movl	-48(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -48(%ebp)
.L85:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -48(%ebp)
	jne	.L86
	.loc 1 233 0
	movl	profile_info@GOT(%ebx), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L90
	movl	flag_branch_probabilities@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L90
	.loc 1 234 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$168, %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 233 0
	jmp	.L93
.L90:
	.loc 1 236 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$180, %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
.L93:
	.loc 1 237 0
	movl	-100(%ebp), %eax
	movl	%eax, %ecx
	imull	-88(%ebp), %ecx
	movl	-84(%ebp), %eax
	imull	-104(%ebp), %eax
	addl	%eax, %ecx
	movl	-88(%ebp), %eax
	mull	-104(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	addl	$50, %eax
	adcl	$0, %edx
	movl	$100, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 238 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$192, %eax
	movl	4(%eax), %eax
	imull	-64(%ebp), %eax
	leal	50(%eax), %ecx
	movl	$1374389535, -124(%ebp)
	movl	-124(%ebp), %eax
	imull	%ecx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -52(%ebp)
	.loc 1 240 0
	jmp	.L125
.L95:
.LBB4:
	.loc 1 243 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_extract_min@PLT
	movl	%eax, -40(%ebp)
	.loc 1 246 0
	cmpl	$0, -40(%ebp)
	je	.L96
	.loc 1 249 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-76(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 251 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	ignore_bb_p
	testb	%al, %al
	jne	.L94
	.loc 1 253 0
	movl	-40(%ebp), %eax
	movl	40(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L99
	movl	-40(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L101
.L99:
	.loc 1 254 0
	leal	__FUNCTION__.11854@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$254, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L101:
	.loc 1 256 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	find_trace
	movl	%eax, -36(%ebp)
	.loc 1 258 0
	movl	-72(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 259 0
	movl	-40(%ebp), %eax
	movl	72(%eax), %edx
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-68(%ebp), %eax
	movl	(%eax), %eax
	imull	%edx, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	%eax, -96(%ebp)
	adcl	%edx, -92(%ebp)
	.loc 1 260 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-76(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L102
	.loc 1 262 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-76(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_delete_node@PLT
	.loc 1 263 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-76(%ebp), %eax
	movl	$0, (%eax)
.L102:
	.loc 1 266 0
	movl	$1, -32(%ebp)
	jmp	.L104
.L105:
.LBB5:
	.loc 1 268 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	addl	-72(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 270 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-76(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L106
	.loc 1 272 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-76(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_delete_node@PLT
	.loc 1 273 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-76(%ebp), %eax
	movl	$0, (%eax)
.L106:
	.loc 1 275 0
	movl	-28(%ebp), %eax
	movl	72(%eax), %edx
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-68(%ebp), %eax
	movl	(%eax), %eax
	imull	%edx, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	%eax, -96(%ebp)
	adcl	%edx, -92(%ebp)
	.loc 1 276 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L108
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L108
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	cfg_layout_can_duplicate_bb_p@PLT
	testb	%al, %al
	je	.L108
.LBB6:
	.loc 1 279 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 280 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 282 0
	jmp	.L112
.L113:
	.loc 1 283 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L112:
	.loc 1 282 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L113
	.loc 1 284 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-68(%ebp), %eax
	movl	(%eax), %eax
	addl	%eax, -60(%ebp)
	.loc 1 285 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	cfg_layout_duplicate_bb@PLT
	movl	%eax, -28(%ebp)
	.loc 1 290 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-76(%ebp), %esi
	movl	-20(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, %edx
	negl	%edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_insert@PLT
	movl	%eax, (%esi)
	.loc 1 293 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L108
	.loc 1 294 0
	movl	-28(%ebp), %eax
	movl	72(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	44(%eax), %esi
	movl	-20(%ebp), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edi
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	fprintf@PLT
.L108:
.LBE6:
	.loc 1 297 0
	movl	-40(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 298 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	$1, 16(%eax)
	.loc 1 299 0
	movl	-28(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 301 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	ignore_bb_p
	testb	%al, %al
	jne	.L116
.LBE5:
	.loc 1 266 0
	addl	$1, -32(%ebp)
.L104:
	movl	-32(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L105
.L116:
	.loc 1 304 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L94
	.loc 1 305 0
	fildll	-96(%ebp)
	fldl	.LC5@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fildll	-104(%ebp)
	fdivrp	%st, %st(1)
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	fstpl	8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L94:
.L125:
.LBE4:
	.loc 1 240 0
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	-116(%ebp), %edx
	cmpl	-84(%ebp), %edx
	jg	.L96
	movl	-116(%ebp), %ecx
	cmpl	-84(%ebp), %ecx
	jl	.L120
	movl	-120(%ebp), %eax
	cmpl	-88(%ebp), %eax
	jae	.L96
.L120:
	movl	-60(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jge	.L96
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_empty@PLT
	testl	%eax, %eax
	je	.L95
.L96:
	.loc 1 308 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L122
	.loc 1 309 0
	movl	-60(%ebp), %eax
	imull	$100, %eax, %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-64(%ebp)
	movl	%eax, %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L122:
	.loc 1 312 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 313 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 314 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 315 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_delete@PLT
	.loc 1 316 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	tail_duplicate, .-tail_duplicate
	.type	layout_superblocks, @function
layout_superblocks:
.LFB22:
	.loc 1 325 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	pushl	%esi
.LCFI34:
	pushl	%ebx
.LCFI35:
	subl	$20, %esp
.LCFI36:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 326 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 327 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 329 0
	jmp	.L149
.L128:
.LBB7:
	.loc 1 331 0
	movl	$0, -12(%ebp)
	.loc 1 332 0
	jmp	.L129
.L130:
	.loc 1 333 0
	movl	-24(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
.L129:
	.loc 1 332 0
	movl	-24(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L130
	.loc 1 335 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L132
.L133:
	.loc 1 336 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L134
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L134
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L134
	cmpl	$0, -12(%ebp)
	je	.L138
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	imull	%edx, %eax
	leal	5000(%eax), %ecx
	movl	$1759218605, -28(%ebp)
	movl	-28(%ebp), %eax
	imull	%ecx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	-12(%ebp), %eax
	movl	28(%eax), %eax
	imull	%edx, %eax
	leal	5000(%eax), %ecx
	movl	$1759218605, -28(%ebp)
	movl	-28(%ebp), %eax
	imull	%ecx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	%eax, %esi
	jle	.L134
.L138:
	.loc 1 340 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
.L134:
	.loc 1 335 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L132:
	cmpl	$0, -16(%ebp)
	jne	.L133
	.loc 1 342 0
	cmpl	$0, -12(%ebp)
	je	.L143
	.loc 1 344 0
	movl	-24(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%edx)
	.loc 1 345 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	movl	$1, 16(%eax)
	jmp	.L127
.L144:
	.loc 1 350 0
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L145
	.loc 1 352 0
	movl	-24(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 353 0
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	movl	$1, 16(%eax)
	.loc 1 354 0
	jmp	.L127
.L145:
	.loc 1 348 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
.L143:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L144
.L127:
.L149:
.LBE7:
	.loc 1 329 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L128
	.loc 1 358 0
	addl	$20, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE22:
	.size	layout_superblocks, .-layout_superblocks
.globl tracer
	.type	tracer, @function
tracer:
.LFB23:
	.loc 1 364 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	pushl	%ebx
.LCFI39:
	subl	$4, %esp
.LCFI40:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 365 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L157
	.loc 1 367 0
	call	cfg_layout_initialize@PLT
	.loc 1 368 0
	call	mark_dfs_back_edges@PLT
	.loc 1 369 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L153
	.loc 1 370 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dump_flow_info@PLT
.L153:
	.loc 1 371 0
	call	tail_duplicate
	.loc 1 372 0
	call	layout_superblocks
	.loc 1 373 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L155
	.loc 1 374 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dump_flow_info@PLT
.L155:
	.loc 1 375 0
	call	cfg_layout_finalize@PLT
	.loc 1 377 0
	movl	$1, (%esp)
	call	cleanup_cfg@PLT
.L157:
	.loc 1 378 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	tracer, .-tracer
	.local	probability_cutoff
	.comm	probability_cutoff,4,4
	.local	branch_ratio_cutoff
	.comm	branch_ratio_cutoff,4,4
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
	.long	.LCFI7-.LCFI5
	.byte	0x83
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
	.long	.LCFI8-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI12-.LCFI9
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI13-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI16-.LCFI14
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI17-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI20-.LCFI18
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI21-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI25-.LCFI22
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI26-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI31-.LCFI27
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI32-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI36-.LCFI33
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI37-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI40-.LCFI38
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE16:
	.file 2 "../../../kg++fe/gnu/basic-block.h"
	.file 3 "../../../kg++fe/gnu/rtl.h"
	.file 4 "../../../kg++fe/gnu/MIPS/config.h"
	.file 5 "../../../kg++fe/gnu/machmode.h"
	.file 6 "../../../kg++fe/gnu/bitmap.h"
	.file 7 "../../../kg++fe/gnu/tree.h"
	.file 8 "../../../kg++fe/gnu/hashtable.h"
	.file 9 "../../../kg++fe/gnu/location.h"
	.file 10 "../../../kg++fe/omp_types.h"
	.file 11 "../../../kg++fe/gnu/sbitmap.h"
	.file 12 "../../../include/gnu/fibheap.h"
	.file 13 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 14 "../../../kg++fe/gnu/output.h"
	.file 15 "/usr/include/stdio.h"
	.file 16 "/usr/include/libio.h"
	.file 17 "/usr/include/bits/types.h"
	.file 18 "../../../kg++fe/gnu/flags.h"
	.file 19 "../../../kg++fe/gnu/params.h"
	.file 20 "../../../kg++fe/gnu/profile.h"
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
	.long	.LCFI17-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI17-.Ltext0
	.long	.LCFI18-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI18-.Ltext0
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
	.long	.LCFI21-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI21-.Ltext0
	.long	.LCFI22-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI22-.Ltext0
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
	.long	.LCFI26-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI26-.Ltext0
	.long	.LCFI27-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI27-.Ltext0
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
	.long	.LCFI32-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI32-.Ltext0
	.long	.LCFI33-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI33-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
	.long	.LCFI37-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI37-.Ltext0
	.long	.LCFI38-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI38-.Ltext0
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x5e22
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/tracer.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x4
	.byte	0xc
	.long	0xa6
	.uleb128 0x3
	.byte	0x4
	.long	0xac
	.uleb128 0x4
	.long	0x19c
	.string	"rtx_def"
	.byte	0xc
	.byte	0x4
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x84
	.long	0x45fe
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x3
	.byte	0x87
	.long	0x6e8
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x3
	.byte	0x8e
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x3
	.byte	0x91
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x3
	.byte	0x99
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x3
	.byte	0xa2
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x3
	.byte	0xb4
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x3
	.byte	0xbb
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x3
	.byte	0xc0
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x3
	.byte	0xc9
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x3
	.byte	0xce
	.long	0x521d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x4
	.byte	0xe
	.long	0x1a9
	.uleb128 0x3
	.byte	0x4
	.long	0x1af
	.uleb128 0x4
	.long	0x1e4
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x4
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x3
	.byte	0xf2
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf3
	.long	0x522d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x4
	.byte	0x10
	.long	0x1f0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f6
	.uleb128 0x7
	.long	0x2d0
	.string	"tree_node"
	.byte	0xa0
	.byte	0x4
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x7
	.value	0x887
	.long	0x2ff0
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x7
	.value	0x888
	.long	0x330f
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x7
	.value	0x889
	.long	0x3357
	.uleb128 0x9
	.string	"vector"
	.byte	0x7
	.value	0x88a
	.long	0x347a
	.uleb128 0x9
	.string	"string"
	.byte	0x7
	.value	0x88b
	.long	0x33b8
	.uleb128 0x9
	.string	"complex"
	.byte	0x7
	.value	0x88c
	.long	0x3425
	.uleb128 0x9
	.string	"identifier"
	.byte	0x7
	.value	0x88d
	.long	0x3500
	.uleb128 0x9
	.string	"decl"
	.byte	0x7
	.value	0x88e
	.long	0x3bc7
	.uleb128 0x9
	.string	"type"
	.byte	0x7
	.value	0x88f
	.long	0x3765
	.uleb128 0x9
	.string	"list"
	.byte	0x7
	.value	0x890
	.long	0x3537
	.uleb128 0x9
	.string	"vec"
	.byte	0x7
	.value	0x891
	.long	0x357e
	.uleb128 0x9
	.string	"exp"
	.byte	0x7
	.value	0x892
	.long	0x35cf
	.uleb128 0x9
	.string	"block"
	.byte	0x7
	.value	0x893
	.long	0x361b
	.uleb128 0x9
	.string	"omp"
	.byte	0x7
	.value	0x895
	.long	0x45a1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d6
	.uleb128 0xa
	.long	0x2db
	.uleb128 0xb
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xc
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"size_t"
	.byte	0xd
	.byte	0xd6
	.long	0x2ea
	.uleb128 0xb
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0xb
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0xb
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0xb
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0xb
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0xb
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x11
	.byte	0x3b
	.long	0x35e
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x11
	.byte	0x90
	.long	0x3a8
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x11
	.byte	0x91
	.long	0x389
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2db
	.uleb128 0x2
	.string	"FILE"
	.byte	0xf
	.byte	0x2e
	.long	0x3d9
	.uleb128 0xe
	.long	0x654
	.long	.LASF2
	.byte	0x94
	.byte	0xf
	.byte	0x2e
	.uleb128 0xf
	.string	"_flags"
	.byte	0x10
	.value	0x10c
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"_IO_read_ptr"
	.byte	0x10
	.value	0x111
	.long	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"_IO_read_end"
	.byte	0x10
	.value	0x112
	.long	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"_IO_read_base"
	.byte	0x10
	.value	0x113
	.long	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"_IO_write_base"
	.byte	0x10
	.value	0x114
	.long	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"_IO_write_ptr"
	.byte	0x10
	.value	0x115
	.long	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"_IO_write_end"
	.byte	0x10
	.value	0x116
	.long	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"_IO_buf_base"
	.byte	0x10
	.value	0x117
	.long	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"_IO_buf_end"
	.byte	0x10
	.value	0x118
	.long	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"_IO_save_base"
	.byte	0x10
	.value	0x11a
	.long	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"_IO_backup_base"
	.byte	0x10
	.value	0x11b
	.long	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"_IO_save_end"
	.byte	0x10
	.value	0x11c
	.long	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"_markers"
	.byte	0x10
	.value	0x11e
	.long	0x6b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"_chain"
	.byte	0x10
	.value	0x120
	.long	0x6b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"_fileno"
	.byte	0x10
	.value	0x122
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"_flags2"
	.byte	0x10
	.value	0x126
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"_old_offset"
	.byte	0x10
	.value	0x128
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"_cur_column"
	.byte	0x10
	.value	0x12c
	.long	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"_vtable_offset"
	.byte	0x10
	.value	0x12d
	.long	0x342
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xf
	.string	"_shortbuf"
	.byte	0x10
	.value	0x12e
	.long	0x6bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xf
	.string	"_lock"
	.byte	0x10
	.value	0x132
	.long	0x6cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"_offset"
	.byte	0x10
	.value	0x13b
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"__pad1"
	.byte	0x10
	.value	0x144
	.long	0x3c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xf
	.string	"__pad2"
	.byte	0x10
	.value	0x145
	.long	0x3c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xf
	.string	"__pad3"
	.byte	0x10
	.value	0x146
	.long	0x3c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"__pad4"
	.byte	0x10
	.value	0x147
	.long	0x3c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"__pad5"
	.byte	0x10
	.value	0x148
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"_mode"
	.byte	0x10
	.value	0x14a
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"_unused2"
	.byte	0x10
	.value	0x14c
	.long	0x6d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x65a
	.uleb128 0xa
	.long	0x306
	.uleb128 0x10
	.string	"_IO_lock_t"
	.byte	0x10
	.byte	0xb0
	.uleb128 0x4
	.long	0x6b0
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x10
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x10
	.byte	0xb7
	.long	0x6b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x10
	.byte	0xb8
	.long	0x6b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x10
	.byte	0xbc
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x66d
	.uleb128 0x3
	.byte	0x4
	.long	0x3d9
	.uleb128 0x11
	.long	0x6cc
	.long	0x2db
	.uleb128 0x12
	.long	0x2f1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x65f
	.uleb128 0x11
	.long	0x6e2
	.long	0x2db
	.uleb128 0x12
	.long	0x2f1
	.byte	0x27
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2e3
	.uleb128 0x13
	.long	0x931
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.uleb128 0x14
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x14
	.string	"BImode"
	.sleb128 1
	.uleb128 0x14
	.string	"QImode"
	.sleb128 2
	.uleb128 0x14
	.string	"HImode"
	.sleb128 3
	.uleb128 0x14
	.string	"SImode"
	.sleb128 4
	.uleb128 0x14
	.string	"DImode"
	.sleb128 5
	.uleb128 0x14
	.string	"TImode"
	.sleb128 6
	.uleb128 0x14
	.string	"OImode"
	.sleb128 7
	.uleb128 0x14
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x14
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x14
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x14
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x14
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x14
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x14
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x14
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x14
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x14
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x14
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x14
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x14
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x14
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x14
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x14
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x14
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x14
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x14
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x14
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x14
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x14
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x14
	.string	"COImode"
	.sleb128 30
	.uleb128 0x14
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x14
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x14
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x14
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x14
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x14
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x14
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x14
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x14
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x14
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x14
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x14
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x14
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x14
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x14
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x14
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x14
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x14
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x14
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x14
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x14
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x14
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x14
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x14
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x4
	.long	0x963
	.string	"location_s"
	.byte	0x8
	.byte	0x9
	.byte	0x1c
	.uleb128 0x6
	.string	"file"
	.byte	0x9
	.byte	0x1e
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line"
	.byte	0x9
	.byte	0x21
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x9
	.byte	0x23
	.long	0x931
	.uleb128 0x13
	.long	0x1297
	.string	"tree_code"
	.byte	0x4
	.byte	0x7
	.byte	0x25
	.uleb128 0x14
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x14
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x14
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x14
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x14
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x14
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x14
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x14
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x14
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x14
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x14
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x14
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x14
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x14
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x14
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x14
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x14
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x14
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x14
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x14
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x14
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x14
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x14
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x14
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x14
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x14
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x14
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x14
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x14
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x14
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x14
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x14
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x14
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x14
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x14
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x14
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x14
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x14
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x14
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x14
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x14
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x14
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x14
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x14
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x14
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x14
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x14
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x14
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x14
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x14
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x14
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x14
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x14
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x14
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x14
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x14
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x14
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x14
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x14
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x14
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x14
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x14
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x14
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x14
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x14
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x14
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x14
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x14
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x14
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x14
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x14
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x14
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x14
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x14
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x14
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x14
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x14
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x14
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x14
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x14
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x14
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x14
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x14
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x14
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x14
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x14
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x14
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x14
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x14
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x14
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x14
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x14
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x14
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x14
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x14
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x14
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x14
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x14
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x14
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x14
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x14
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x14
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x14
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x14
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x14
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x14
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x14
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x14
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x14
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x14
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x14
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x14
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x14
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x14
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x14
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x14
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x14
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x14
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x14
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x14
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x14
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x14
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x14
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x14
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x14
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x14
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x14
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x14
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x14
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x14
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x14
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x14
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x14
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x14
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x14
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x14
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x14
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x14
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x14
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x14
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x14
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x14
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x14
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x14
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x14
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x14
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x14
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x14
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x14
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x14
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x14
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x14
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x7
	.byte	0x2f
	.long	0x2ea
	.uleb128 0x4
	.long	0x12e7
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x7
	.byte	0x30
	.uleb128 0x6
	.string	"block"
	.byte	0x7
	.byte	0x30
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset"
	.byte	0x7
	.byte	0x30
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x7
	.byte	0x34
	.long	0x12f1
	.uleb128 0x15
	.string	"st"
	.byte	0x1
	.uleb128 0x16
	.long	0x1346
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.byte	0x58
	.uleb128 0x14
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x14
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x14
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x14
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x13
	.long	0x2ff0
	.string	"built_in_function"
	.byte	0x4
	.byte	0x7
	.byte	0x67
	.uleb128 0x14
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x14
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x14
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x14
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x14
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x14
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x14
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x14
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x14
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x14
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x14
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x14
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x14
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x14
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x14
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x14
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x14
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x14
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x14
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x14
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x14
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x14
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x14
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x14
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x14
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x14
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x14
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x14
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x14
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x14
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x14
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x14
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x14
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x14
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x14
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x14
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x14
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x14
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x14
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x14
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x14
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x14
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x14
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x14
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x14
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x14
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x14
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x14
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x14
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x14
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x14
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x14
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x14
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x14
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x14
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x14
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x14
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x14
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x14
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x14
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x14
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x14
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x14
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x14
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x14
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x14
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x14
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x14
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x14
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x14
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x14
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x14
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x14
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x14
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x14
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x14
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x14
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x14
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x14
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x14
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x14
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x14
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x14
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x14
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x14
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x14
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x14
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x14
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x14
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x14
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x14
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x14
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x14
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x14
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x14
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x14
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x14
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x14
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x14
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x14
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x14
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x14
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x14
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x14
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x14
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x14
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x14
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x14
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x14
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x14
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x14
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x14
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x14
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x14
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x14
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x14
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x14
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x14
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x14
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x14
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x14
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x14
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x14
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x14
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x14
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x14
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x14
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x14
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x14
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x14
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x14
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x14
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x14
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x14
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x14
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x14
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x14
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x14
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x14
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x14
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x14
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x14
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x14
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x14
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x14
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x14
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x14
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x14
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x14
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x14
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x14
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x14
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x14
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x14
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x14
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x14
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x14
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x14
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x14
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x14
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x14
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x14
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x14
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x14
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x14
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x14
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x14
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x14
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x14
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x14
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x14
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x14
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x14
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x14
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x14
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x14
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x14
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x14
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x14
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x14
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x14
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x14
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x14
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x14
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x14
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x14
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x14
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x14
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x14
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x14
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x14
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x14
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x14
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x14
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x14
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x14
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x14
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x14
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x14
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x14
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x14
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x14
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x14
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x14
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x14
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x14
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x14
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x14
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x14
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x14
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x14
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x14
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x14
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x14
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x14
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x14
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x14
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x14
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x14
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x14
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x14
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x14
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x14
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x14
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x14
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x14
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x14
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x14
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x14
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x14
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x14
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x14
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x14
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x14
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x14
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x14
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x14
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x14
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x14
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x14
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x14
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x14
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x14
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x14
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x14
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x14
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x14
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x14
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x14
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x14
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x14
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x14
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x14
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x14
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x14
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x14
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x14
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x14
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x14
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x14
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x14
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x14
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x14
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x14
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x14
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x14
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x14
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x14
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x14
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x14
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x14
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x14
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x14
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x14
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x14
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x14
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x14
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x14
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x14
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x14
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x14
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x14
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x14
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x14
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x14
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x14
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x14
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x14
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x14
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x14
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x14
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x14
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x14
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x14
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x14
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x14
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x14
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x14
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x14
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x14
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x14
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x14
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x14
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x14
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x14
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x14
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x14
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x14
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x14
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x14
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x14
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x14
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x14
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x14
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x14
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x14
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x14
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x32d3
	.string	"tree_common"
	.byte	0x10
	.byte	0x7
	.byte	0x8c
	.uleb128 0x6
	.string	"chain"
	.byte	0x7
	.byte	0x8d
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type"
	.byte	0x7
	.byte	0x8e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x7
	.byte	0x90
	.long	0x975
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"side_effects_flag"
	.byte	0x7
	.byte	0x92
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"constant_flag"
	.byte	0x7
	.byte	0x93
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"addressable_flag"
	.byte	0x7
	.byte	0x94
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"volatile_flag"
	.byte	0x7
	.byte	0x95
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"readonly_flag"
	.byte	0x7
	.byte	0x96
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unsigned_flag"
	.byte	0x7
	.byte	0x97
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"asm_written_flag"
	.byte	0x7
	.byte	0x98
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"not_emitted_by_gxx"
	.byte	0x7
	.byte	0x9a
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"used_flag"
	.byte	0x7
	.byte	0x9f
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"nothrow_flag"
	.byte	0x7
	.byte	0xa0
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"static_flag"
	.byte	0x7
	.byte	0xa1
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"public_flag"
	.byte	0x7
	.byte	0xa2
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"private_flag"
	.byte	0x7
	.byte	0xa3
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"protected_flag"
	.byte	0x7
	.byte	0xa4
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"bounded_flag"
	.byte	0x7
	.byte	0xa5
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"deprecated_flag"
	.byte	0x7
	.byte	0xa6
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.long	.LASF4
	.byte	0x7
	.byte	0xa8
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.long	.LASF5
	.byte	0x7
	.byte	0xa9
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.long	.LASF6
	.byte	0x7
	.byte	0xaa
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.long	.LASF7
	.byte	0x7
	.byte	0xab
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.long	.LASF8
	.byte	0x7
	.byte	0xac
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.long	.LASF9
	.byte	0x7
	.byte	0xad
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.long	.LASF10
	.byte	0x7
	.byte	0xae
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.long	.LASF11
	.byte	0x7
	.byte	0xb0
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"sbuf"
	.byte	0x7
	.byte	0xb5
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"sdram"
	.byte	0x7
	.byte	0xb6
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v1buf"
	.byte	0x7
	.byte	0xb7
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v2buf"
	.byte	0x7
	.byte	0xb8
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v4buf"
	.byte	0x7
	.byte	0xb9
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x18
	.long	0x330f
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x7
	.value	0x30a
	.uleb128 0xf
	.string	"low"
	.byte	0x7
	.value	0x30b
	.long	0x36f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"high"
	.byte	0x7
	.value	0x30c
	.long	0x35e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x18
	.long	0x3357
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x7
	.value	0x303
	.uleb128 0x19
	.long	.LASF0
	.byte	0x7
	.value	0x304
	.long	0x2ff0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x7
	.value	0x305
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"int_cst"
	.byte	0x7
	.value	0x30d
	.long	0x32d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x18
	.long	0x33a5
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x7
	.value	0x31f
	.uleb128 0x19
	.long	.LASF0
	.byte	0x7
	.value	0x320
	.long	0x2ff0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x7
	.value	0x321
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"real_cst_ptr"
	.byte	0x7
	.value	0x322
	.long	0x33b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x15
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x33a5
	.uleb128 0x18
	.long	0x341f
	.string	"tree_string"
	.byte	0x20
	.byte	0x7
	.value	0x333
	.uleb128 0x19
	.long	.LASF0
	.byte	0x7
	.value	0x334
	.long	0x2ff0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x7
	.value	0x335
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"length"
	.byte	0x7
	.value	0x336
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"pointer"
	.byte	0x7
	.value	0x337
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"st"
	.byte	0x7
	.value	0x339
	.long	0x341f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x12e7
	.uleb128 0x18
	.long	0x347a
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x7
	.value	0x342
	.uleb128 0x19
	.long	.LASF0
	.byte	0x7
	.value	0x343
	.long	0x2ff0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x7
	.value	0x344
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"real"
	.byte	0x7
	.value	0x345
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"imag"
	.byte	0x7
	.value	0x346
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x18
	.long	0x34c2
	.string	"tree_vector"
	.byte	0x18
	.byte	0x7
	.value	0x355
	.uleb128 0x19
	.long	.LASF0
	.byte	0x7
	.value	0x356
	.long	0x2ff0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x7
	.value	0x357
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"elements"
	.byte	0x7
	.value	0x358
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xe
	.long	0x3500
	.long	.LASF12
	.byte	0xc
	.byte	0x8
	.byte	0x19
	.uleb128 0x6
	.string	"str"
	.byte	0x8
	.byte	0x1c
	.long	0x654
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0x8
	.byte	0x1d
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"hash_value"
	.byte	0x8
	.byte	0x1e
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x18
	.long	0x3537
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x7
	.value	0x376
	.uleb128 0x19
	.long	.LASF0
	.byte	0x7
	.value	0x377
	.long	0x2ff0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"id"
	.byte	0x7
	.value	0x378
	.long	0x34c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x18
	.long	0x357e
	.string	"tree_list"
	.byte	0x18
	.byte	0x7
	.value	0x380
	.uleb128 0x19
	.long	.LASF0
	.byte	0x7
	.value	0x381
	.long	0x2ff0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"purpose"
	.byte	0x7
	.value	0x382
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"value"
	.byte	0x7
	.value	0x383
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x18
	.long	0x35bf
	.string	"tree_vec"
	.byte	0x18
	.byte	0x7
	.value	0x38e
	.uleb128 0x19
	.long	.LASF0
	.byte	0x7
	.value	0x38f
	.long	0x2ff0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"length"
	.byte	0x7
	.value	0x390
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"a"
	.byte	0x7
	.value	0x391
	.long	0x35bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x11
	.long	0x35cf
	.long	0x1e4
	.uleb128 0x12
	.long	0x2f1
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.long	0x361b
	.string	"tree_exp"
	.byte	0x18
	.byte	0x7
	.value	0x3d4
	.uleb128 0x19
	.long	.LASF0
	.byte	0x7
	.value	0x3d5
	.long	0x2ff0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"complexity"
	.byte	0x7
	.value	0x3d6
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"operands"
	.byte	0x7
	.value	0x3d9
	.long	0x35bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x18
	.long	0x370b
	.string	"tree_block"
	.byte	0x2c
	.byte	0x7
	.value	0x40a
	.uleb128 0x19
	.long	.LASF0
	.byte	0x7
	.value	0x40b
	.long	0x2ff0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.string	"handler_block_flag"
	.byte	0x7
	.value	0x40d
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.long	.LASF13
	.byte	0x7
	.value	0x40e
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.string	"block_num"
	.byte	0x7
	.value	0x40f
	.long	0x2ea
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"vars"
	.byte	0x7
	.value	0x411
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"subblocks"
	.byte	0x7
	.value	0x412
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"supercontext"
	.byte	0x7
	.value	0x413
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x19
	.long	.LASF14
	.byte	0x7
	.value	0x414
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"fragment_origin"
	.byte	0x7
	.value	0x415
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"fragment_chain"
	.byte	0x7
	.value	0x416
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x1c
	.long	0x3752
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x7
	.value	0x570
	.uleb128 0x9
	.string	"address"
	.byte	0x7
	.value	0x571
	.long	0x2e3
	.uleb128 0x9
	.string	"pointer"
	.byte	0x7
	.value	0x572
	.long	0x3c7
	.uleb128 0x9
	.string	"die"
	.byte	0x7
	.value	0x573
	.long	0x375f
	.byte	0x0
	.uleb128 0x15
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3752
	.uleb128 0x18
	.long	0x3ab3
	.string	"tree_type"
	.byte	0x74
	.byte	0x7
	.value	0x551
	.uleb128 0x19
	.long	.LASF0
	.byte	0x7
	.value	0x552
	.long	0x2ff0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"values"
	.byte	0x7
	.value	0x553
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"size"
	.byte	0x7
	.value	0x554
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x19
	.long	.LASF15
	.byte	0x7
	.value	0x555
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x19
	.long	.LASF16
	.byte	0x7
	.value	0x556
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"uid"
	.byte	0x7
	.value	0x557
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"precision"
	.byte	0x7
	.value	0x559
	.long	0x2ea
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.string	"mode"
	.byte	0x7
	.value	0x55a
	.long	0x6e8
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.string	"string_flag"
	.byte	0x7
	.value	0x55c
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.string	"no_force_blk_flag"
	.byte	0x7
	.value	0x55d
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.string	"needs_constructing_flag"
	.byte	0x7
	.value	0x55e
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.string	"transparent_union_flag"
	.byte	0x7
	.value	0x55f
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.string	"packed_flag"
	.byte	0x7
	.value	0x560
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.string	"restrict_flag"
	.byte	0x7
	.value	0x561
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.long	.LASF17
	.byte	0x7
	.value	0x562
	.long	0x2ea
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x7
	.value	0x564
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.long	.LASF5
	.byte	0x7
	.value	0x565
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.long	.LASF6
	.byte	0x7
	.value	0x566
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.long	.LASF7
	.byte	0x7
	.value	0x567
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.long	.LASF8
	.byte	0x7
	.value	0x568
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.long	.LASF9
	.byte	0x7
	.value	0x569
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.long	.LASF10
	.byte	0x7
	.value	0x56a
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.long	.LASF18
	.byte	0x7
	.value	0x56b
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"align"
	.byte	0x7
	.value	0x56d
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"pointer_to"
	.byte	0x7
	.value	0x56e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"reference_to"
	.byte	0x7
	.value	0x56f
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"symtab"
	.byte	0x7
	.value	0x574
	.long	0x370b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"name"
	.byte	0x7
	.value	0x576
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"minval"
	.byte	0x7
	.value	0x577
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"maxval"
	.byte	0x7
	.value	0x578
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"next_variant"
	.byte	0x7
	.value	0x579
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"main_variant"
	.byte	0x7
	.value	0x57a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"binfo"
	.byte	0x7
	.value	0x57b
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"context"
	.byte	0x7
	.value	0x57c
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xf
	.string	"alias_set"
	.byte	0x7
	.value	0x57d
	.long	0x35e
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x19
	.long	.LASF19
	.byte	0x7
	.value	0x57f
	.long	0x3abf
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"ty_idx"
	.byte	0x7
	.value	0x581
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"field_ids_used"
	.byte	0x7
	.value	0x582
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"dst_id"
	.byte	0x7
	.value	0x583
	.long	0x12a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"extra_methods"
	.byte	0x7
	.value	0x58a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x15
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3ab3
	.uleb128 0x18
	.long	0x3b0a
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x7
	.value	0x817
	.uleb128 0x1a
	.string	"align"
	.byte	0x7
	.value	0x818
	.long	0x2ea
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.string	"off_align"
	.byte	0x7
	.value	0x819
	.long	0x2ea
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x1c
	.long	0x3b3f
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x7
	.value	0x80e
	.uleb128 0x9
	.string	"f"
	.byte	0x7
	.value	0x811
	.long	0x1346
	.uleb128 0x9
	.string	"i"
	.byte	0x7
	.value	0x814
	.long	0x35e
	.uleb128 0x9
	.string	"a"
	.byte	0x7
	.value	0x81a
	.long	0x3ac5
	.byte	0x0
	.uleb128 0x1c
	.long	0x3b7e
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x7
	.value	0x837
	.uleb128 0x9
	.string	"f"
	.byte	0x7
	.value	0x838
	.long	0x3b89
	.uleb128 0x9
	.string	"r"
	.byte	0x7
	.value	0x839
	.long	0x9b
	.uleb128 0x9
	.string	"t"
	.byte	0x7
	.value	0x83a
	.long	0x1e4
	.uleb128 0x9
	.string	"i"
	.byte	0x7
	.value	0x83b
	.long	0x2e3
	.byte	0x0
	.uleb128 0x15
	.string	"function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3b7e
	.uleb128 0x1d
	.long	0x3bc7
	.byte	0x4
	.byte	0x7
	.value	0x84e
	.uleb128 0x9
	.string	"st"
	.byte	0x7
	.value	0x84f
	.long	0x341f
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x7
	.value	0x850
	.long	0x1297
	.uleb128 0x9
	.string	"field_id"
	.byte	0x7
	.value	0x851
	.long	0x2ea
	.byte	0x0
	.uleb128 0x18
	.long	0x4311
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x7
	.value	0x7c5
	.uleb128 0x19
	.long	.LASF0
	.byte	0x7
	.value	0x7c6
	.long	0x2ff0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"locus"
	.byte	0x7
	.value	0x7c7
	.long	0x963
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"uid"
	.byte	0x7
	.value	0x7c8
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"size"
	.byte	0x7
	.value	0x7c9
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1a
	.string	"mode"
	.byte	0x7
	.value	0x7ca
	.long	0x6e8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"external_flag"
	.byte	0x7
	.value	0x7cc
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"nonlocal_flag"
	.byte	0x7
	.value	0x7cd
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"regdecl_flag"
	.byte	0x7
	.value	0x7ce
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"inline_flag"
	.byte	0x7
	.value	0x7cf
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"bit_field_flag"
	.byte	0x7
	.value	0x7d0
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"virtual_flag"
	.byte	0x7
	.value	0x7d1
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"ignored_flag"
	.byte	0x7
	.value	0x7d2
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.long	.LASF13
	.byte	0x7
	.value	0x7d3
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"sbuf_flag"
	.byte	0x7
	.value	0x7d7
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"sdram_flag"
	.byte	0x7
	.value	0x7d8
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"v1buf_flag"
	.byte	0x7
	.value	0x7d9
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"v2buf_flag"
	.byte	0x7
	.value	0x7da
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"v4buf_flag"
	.byte	0x7
	.value	0x7db
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"in_system_header_flag"
	.byte	0x7
	.value	0x7df
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"common_flag"
	.byte	0x7
	.value	0x7e0
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"defer_output"
	.byte	0x7
	.value	0x7e1
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"transparent_union"
	.byte	0x7
	.value	0x7e2
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"static_ctor_flag"
	.byte	0x7
	.value	0x7e3
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"static_dtor_flag"
	.byte	0x7
	.value	0x7e4
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"artificial_flag"
	.byte	0x7
	.value	0x7e5
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"weak_flag"
	.byte	0x7
	.value	0x7e6
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"non_addr_const_p"
	.byte	0x7
	.value	0x7e8
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"no_instrument_function_entry_exit"
	.byte	0x7
	.value	0x7e9
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"comdat_flag"
	.byte	0x7
	.value	0x7ea
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.string	"malloc_flag"
	.byte	0x7
	.value	0x7eb
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.string	"no_limit_stack"
	.byte	0x7
	.value	0x7ec
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.long	.LASF3
	.byte	0x7
	.value	0x7ed
	.long	0x12f6
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.string	"pure_flag"
	.byte	0x7
	.value	0x7ee
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.long	.LASF17
	.byte	0x7
	.value	0x7f0
	.long	0x2ea
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.string	"non_addressable"
	.byte	0x7
	.value	0x7f1
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.long	.LASF18
	.byte	0x7
	.value	0x7f2
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.string	"uninlinable"
	.byte	0x7
	.value	0x7f3
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.string	"thread_local_flag"
	.byte	0x7
	.value	0x7f4
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.string	"inlined_function_flag"
	.byte	0x7
	.value	0x7f5
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.string	"threadprivate_flag"
	.byte	0x7
	.value	0x7f7
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x7
	.value	0x7fa
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.long	.LASF5
	.byte	0x7
	.value	0x7fb
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.long	.LASF6
	.byte	0x7
	.value	0x7fc
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.long	.LASF7
	.byte	0x7
	.value	0x7fd
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.long	.LASF8
	.byte	0x7
	.value	0x7fe
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.long	.LASF9
	.byte	0x7
	.value	0x7ff
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.long	.LASF10
	.byte	0x7
	.value	0x800
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.long	.LASF11
	.byte	0x7
	.value	0x801
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.string	"syscall_linkage_flag"
	.byte	0x7
	.value	0x804
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.string	"widen_retval_flag"
	.byte	0x7
	.value	0x805
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.string	"emitted_by_gxx"
	.byte	0x7
	.value	0x808
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"u1"
	.byte	0x7
	.value	0x81b
	.long	0x3b0a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x19
	.long	.LASF15
	.byte	0x7
	.value	0x81d
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"name"
	.byte	0x7
	.value	0x81e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"context"
	.byte	0x7
	.value	0x81f
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"arguments"
	.byte	0x7
	.value	0x820
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"result"
	.byte	0x7
	.value	0x821
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"initial"
	.byte	0x7
	.value	0x822
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"initial_2"
	.byte	0x7
	.value	0x824
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"alias_target"
	.byte	0x7
	.value	0x825
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"thunk_delta"
	.byte	0x7
	.value	0x829
	.long	0x35e
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x19
	.long	.LASF14
	.byte	0x7
	.value	0x82b
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xf
	.string	"assembler_name"
	.byte	0x7
	.value	0x82c
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"section_name"
	.byte	0x7
	.value	0x82d
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x19
	.long	.LASF16
	.byte	0x7
	.value	0x82e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"rtl"
	.byte	0x7
	.value	0x82f
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"live_range_rtl"
	.byte	0x7
	.value	0x830
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xf
	.string	"u2"
	.byte	0x7
	.value	0x83c
	.long	0x3b3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xf
	.string	"saved_tree"
	.byte	0x7
	.value	0x83f
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xf
	.string	"inlined_fns"
	.byte	0x7
	.value	0x843
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xf
	.string	"vindex"
	.byte	0x7
	.value	0x845
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xf
	.string	"pointer_alias_set"
	.byte	0x7
	.value	0x846
	.long	0x35e
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x19
	.long	.LASF19
	.byte	0x7
	.value	0x848
	.long	0x431d
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x1a
	.string	"symtab_idx"
	.byte	0x7
	.value	0x84b
	.long	0x2ea
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x1a
	.string	"label_defined"
	.byte	0x7
	.value	0x84c
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xf
	.string	"sgi_u1"
	.byte	0x7
	.value	0x852
	.long	0x3b8f
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xf
	.string	"decl_dst_id"
	.byte	0x7
	.value	0x858
	.long	0x12a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xf
	.string	"sl_model_name"
	.byte	0x7
	.value	0x85c
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0x15
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4311
	.uleb128 0x13
	.long	0x45a1
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xa
	.byte	0x1d
	.uleb128 0x14
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x14
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x14
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x14
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x14
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x14
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x14
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x14
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x14
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x14
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x14
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x14
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x14
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x14
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x14
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x14
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x14
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x14
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x14
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x14
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x14
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x14
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x14
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x14
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x14
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x14
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x14
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x14
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x14
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x14
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x14
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x14
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x14
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x14
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x14
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0x18
	.long	0x45f0
	.string	"tree_omp"
	.byte	0x18
	.byte	0x7
	.value	0x864
	.uleb128 0x19
	.long	.LASF0
	.byte	0x7
	.value	0x865
	.long	0x2ff0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"choice"
	.byte	0x7
	.value	0x866
	.long	0x4323
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"omp_clause_list"
	.byte	0x7
	.value	0x867
	.long	0x3c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x2d0
	.uleb128 0xb
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x13
	.long	0x4dcd
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x29
	.uleb128 0x14
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x14
	.string	"NIL"
	.sleb128 1
	.uleb128 0x14
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x14
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x14
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x14
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x14
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x14
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x14
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x14
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x14
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x14
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x14
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x14
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x14
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x14
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x14
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x14
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x14
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x14
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x14
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x14
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x14
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x14
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x14
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x14
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x14
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x14
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x14
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x14
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x14
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x14
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x14
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x14
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x14
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x14
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x14
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x14
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x14
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x14
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x14
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x14
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x14
	.string	"INSN"
	.sleb128 42
	.uleb128 0x14
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x14
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x14
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x14
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x14
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x14
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x14
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x14
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x14
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x14
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x14
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x14
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x14
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x14
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x14
	.string	"SET"
	.sleb128 57
	.uleb128 0x14
	.string	"USE"
	.sleb128 58
	.uleb128 0x14
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x14
	.string	"CALL"
	.sleb128 60
	.uleb128 0x14
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x14
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x14
	.string	"RESX"
	.sleb128 63
	.uleb128 0x14
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x14
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x14
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x14
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x14
	.string	"CONST"
	.sleb128 68
	.uleb128 0x14
	.string	"PC"
	.sleb128 69
	.uleb128 0x14
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x14
	.string	"REG"
	.sleb128 71
	.uleb128 0x14
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x14
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x14
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x14
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x14
	.string	"MEM"
	.sleb128 76
	.uleb128 0x14
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x14
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x14
	.string	"CC0"
	.sleb128 79
	.uleb128 0x14
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x14
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x14
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x14
	.string	"COND"
	.sleb128 83
	.uleb128 0x14
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x14
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x14
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x14
	.string	"NEG"
	.sleb128 87
	.uleb128 0x14
	.string	"MULT"
	.sleb128 88
	.uleb128 0x14
	.string	"DIV"
	.sleb128 89
	.uleb128 0x14
	.string	"MOD"
	.sleb128 90
	.uleb128 0x14
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x14
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x14
	.string	"AND"
	.sleb128 93
	.uleb128 0x14
	.string	"IOR"
	.sleb128 94
	.uleb128 0x14
	.string	"XOR"
	.sleb128 95
	.uleb128 0x14
	.string	"NOT"
	.sleb128 96
	.uleb128 0x14
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x14
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x14
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x14
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x14
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x14
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x14
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x14
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x14
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x14
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x14
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x14
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x14
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x14
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x14
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x14
	.string	"NE"
	.sleb128 112
	.uleb128 0x14
	.string	"EQ"
	.sleb128 113
	.uleb128 0x14
	.string	"GE"
	.sleb128 114
	.uleb128 0x14
	.string	"GT"
	.sleb128 115
	.uleb128 0x14
	.string	"LE"
	.sleb128 116
	.uleb128 0x14
	.string	"LT"
	.sleb128 117
	.uleb128 0x14
	.string	"GEU"
	.sleb128 118
	.uleb128 0x14
	.string	"GTU"
	.sleb128 119
	.uleb128 0x14
	.string	"LEU"
	.sleb128 120
	.uleb128 0x14
	.string	"LTU"
	.sleb128 121
	.uleb128 0x14
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x14
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x14
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x14
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x14
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x14
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x14
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x14
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x14
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x14
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x14
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x14
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x14
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x14
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x14
	.string	"FIX"
	.sleb128 136
	.uleb128 0x14
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x14
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x14
	.string	"ABS"
	.sleb128 139
	.uleb128 0x14
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x14
	.string	"FFS"
	.sleb128 141
	.uleb128 0x14
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x14
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x14
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x14
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x14
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x14
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x14
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x14
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x14
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x14
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x14
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x14
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x14
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x14
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x14
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x14
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x14
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x14
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x14
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x14
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x14
	.string	"PHI"
	.sleb128 162
	.uleb128 0x14
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x1e
	.long	0x4ea7
	.byte	0x4
	.byte	0x3
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x49
	.long	0x2ea
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x3
	.byte	0x4b
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x3
	.byte	0x4c
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x3
	.byte	0x4e
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x3
	.byte	0x50
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x3
	.byte	0x52
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x3
	.byte	0x55
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x3
	.byte	0x57
	.long	0x2ea
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
	.byte	0x58
	.long	0x4dcd
	.uleb128 0xe
	.long	0x4f1e
	.long	.LASF20
	.byte	0x18
	.byte	0x3
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x63
	.long	0x35e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x64
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x65
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x66
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x67
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1f
	.long	.LASF20
	.byte	0x3
	.byte	0x68
	.long	0x4ec2
	.uleb128 0x7
	.long	0x4ffb
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x6d
	.uleb128 0x20
	.string	"rtwint"
	.byte	0x3
	.byte	0x6e
	.long	0x35e
	.uleb128 0x20
	.string	"rtint"
	.byte	0x3
	.byte	0x6f
	.long	0x2e3
	.uleb128 0x20
	.string	"rtuint"
	.byte	0x3
	.byte	0x70
	.long	0x2ea
	.uleb128 0x20
	.string	"rtstr"
	.byte	0x3
	.byte	0x71
	.long	0x2d0
	.uleb128 0x20
	.string	"rtx"
	.byte	0x3
	.byte	0x72
	.long	0x9b
	.uleb128 0x20
	.string	"rtvec"
	.byte	0x3
	.byte	0x73
	.long	0x19c
	.uleb128 0x20
	.string	"rttype"
	.byte	0x3
	.byte	0x74
	.long	0x6e8
	.uleb128 0x20
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x75
	.long	0x4ea7
	.uleb128 0x20
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x76
	.long	0x500f
	.uleb128 0x20
	.string	"rtbit"
	.byte	0x3
	.byte	0x77
	.long	0x5077
	.uleb128 0x20
	.string	"rttree"
	.byte	0x3
	.byte	0x78
	.long	0x1e4
	.uleb128 0x20
	.string	"bb"
	.byte	0x3
	.byte	0x79
	.long	0x5202
	.uleb128 0x20
	.string	"rtmem"
	.byte	0x3
	.byte	0x7a
	.long	0x5208
	.byte	0x0
	.uleb128 0x15
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4ffb
	.uleb128 0x4
	.long	0x5077
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x77
	.uleb128 0x6
	.string	"first"
	.byte	0x6
	.byte	0x3d
	.long	0x52d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x6
	.byte	0x3e
	.long	0x52d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x6
	.byte	0x3f
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x6
	.byte	0x40
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5015
	.uleb128 0x4
	.long	0x5202
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x79
	.uleb128 0x6
	.string	"head"
	.byte	0x2
	.byte	0xb5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x2
	.byte	0xb5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x2
	.byte	0xb8
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x2
	.byte	0xb9
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x2
	.byte	0xbc
	.long	0x5437
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x2
	.byte	0xbc
	.long	0x5437
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x2
	.byte	0xc1
	.long	0x5367
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x2
	.byte	0xc5
	.long	0x5367
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x2
	.byte	0xcb
	.long	0x5367
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x2
	.byte	0xcd
	.long	0x5367
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x2
	.byte	0xd0
	.long	0x3c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x2
	.byte	0xd3
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x2
	.byte	0xd6
	.long	0x5202
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x2
	.byte	0xd6
	.long	0x5202
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x2
	.byte	0xd9
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x2
	.byte	0xdc
	.long	0x56b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x2
	.byte	0xdf
	.long	0x5375
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x2
	.byte	0xe2
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0x2
	.byte	0xe5
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x507d
	.uleb128 0x3
	.byte	0x4
	.long	0x4f1e
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x7c
	.long	0x4f29
	.uleb128 0x11
	.long	0x522d
	.long	0x520e
	.uleb128 0x12
	.long	0x2f1
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x523d
	.long	0x9b
	.uleb128 0x12
	.long	0x2f1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x6
	.byte	0x1d
	.long	0x32d
	.uleb128 0x4
	.long	0x52a8
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x6
	.byte	0x34
	.uleb128 0x6
	.string	"next"
	.byte	0x6
	.byte	0x35
	.long	0x52a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x6
	.byte	0x36
	.long	0x52a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x6
	.byte	0x37
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x6
	.byte	0x38
	.long	0x52ae
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5250
	.uleb128 0x11
	.long	0x52be
	.long	0x523d
	.uleb128 0x12
	.long	0x2f1
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x6
	.byte	0x39
	.long	0x5250
	.uleb128 0x3
	.byte	0x4
	.long	0x52be
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x6
	.byte	0x43
	.long	0x5077
	.uleb128 0x4
	.long	0x5342
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0xb
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0xb
	.byte	0x21
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0xb
	.byte	0x22
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0xb
	.byte	0x23
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0xb
	.byte	0x24
	.long	0x5342
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x11
	.long	0x5352
	.long	0x36f
	.uleb128 0x12
	.long	0x2f1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xb
	.byte	0x25
	.long	0x5361
	.uleb128 0x3
	.byte	0x4
	.long	0x52e8
	.uleb128 0x2
	.string	"regset"
	.byte	0x2
	.byte	0x22
	.long	0x52da
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x2
	.byte	0x75
	.long	0x35e
	.uleb128 0x4
	.long	0x5431
	.string	"edge_def"
	.byte	0x28
	.byte	0x2
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x2
	.byte	0x7a
	.long	0x5431
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x2
	.byte	0x7a
	.long	0x5431
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x2
	.byte	0x7d
	.long	0x5202
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x2
	.byte	0x7d
	.long	0x5202
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x2
	.byte	0x80
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x2
	.byte	0x83
	.long	0x3c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0x2
	.byte	0x85
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x2
	.byte	0x86
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x2
	.byte	0x87
	.long	0x5375
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5386
	.uleb128 0x2
	.string	"edge"
	.byte	0x2
	.byte	0x89
	.long	0x5431
	.uleb128 0x4
	.long	0x56b3
	.string	"loop"
	.byte	0x80
	.byte	0x2
	.byte	0xdc
	.uleb128 0xf
	.string	"num"
	.byte	0x2
	.value	0x176
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"header"
	.byte	0x2
	.value	0x179
	.long	0x56b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"latch"
	.byte	0x2
	.value	0x17c
	.long	0x56b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"pre_header"
	.byte	0x2
	.value	0x17f
	.long	0x56b9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"pre_header_edges"
	.byte	0x2
	.value	0x184
	.long	0x56cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"num_pre_header_edges"
	.byte	0x2
	.value	0x187
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"first"
	.byte	0x2
	.value	0x18b
	.long	0x56b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"last"
	.byte	0x2
	.value	0x18f
	.long	0x56b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"nodes"
	.byte	0x2
	.value	0x192
	.long	0x5352
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"num_nodes"
	.byte	0x2
	.value	0x195
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"entry_edges"
	.byte	0x2
	.value	0x198
	.long	0x56cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"num_entries"
	.byte	0x2
	.value	0x19b
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"exit_edges"
	.byte	0x2
	.value	0x19e
	.long	0x56cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"num_exits"
	.byte	0x2
	.value	0x1a1
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"exits_doms"
	.byte	0x2
	.value	0x1a4
	.long	0x5352
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"depth"
	.byte	0x2
	.value	0x1a7
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"pred"
	.byte	0x2
	.value	0x1aa
	.long	0x56d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"level"
	.byte	0x2
	.value	0x1ae
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"outer"
	.byte	0x2
	.value	0x1b1
	.long	0x56b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"inner"
	.byte	0x2
	.value	0x1b4
	.long	0x56b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"next"
	.byte	0x2
	.value	0x1b7
	.long	0x56b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xf
	.string	"invalid"
	.byte	0x2
	.value	0x1ba
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xf
	.string	"aux"
	.byte	0x2
	.value	0x1bd
	.long	0x3c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xf
	.string	"vtop"
	.byte	0x2
	.value	0x1c3
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"cont"
	.byte	0x2
	.value	0x1c7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"start"
	.byte	0x2
	.value	0x1ca
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"end"
	.byte	0x2
	.value	0x1cd
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"top"
	.byte	0x2
	.value	0x1d1
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xf
	.string	"scan_start"
	.byte	0x2
	.value	0x1d4
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xf
	.string	"sink"
	.byte	0x2
	.value	0x1d7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xf
	.string	"exit_labels"
	.byte	0x2
	.value	0x1e2
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xf
	.string	"exit_count"
	.byte	0x2
	.value	0x1e6
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5443
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x2
	.byte	0xe6
	.long	0x5202
	.uleb128 0x3
	.byte	0x4
	.long	0x5437
	.uleb128 0x3
	.byte	0x4
	.long	0x56b3
	.uleb128 0x2
	.string	"fibheapkey_t"
	.byte	0xc
	.byte	0x31
	.long	0x3a8
	.uleb128 0x4
	.long	0x572a
	.string	"fibheap"
	.byte	0xc
	.byte	0xc
	.byte	0x34
	.uleb128 0x6
	.string	"nodes"
	.byte	0xc
	.byte	0x35
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min"
	.byte	0xc
	.byte	0x36
	.long	0x57be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"root"
	.byte	0xc
	.byte	0x37
	.long	0x57be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.long	0x57be
	.string	"fibnode"
	.byte	0x1c
	.byte	0xc
	.byte	0x36
	.uleb128 0x6
	.string	"parent"
	.byte	0xc
	.byte	0x3c
	.long	0x57be
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"child"
	.byte	0xc
	.byte	0x3d
	.long	0x57be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"left"
	.byte	0xc
	.byte	0x3e
	.long	0x57be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"right"
	.byte	0xc
	.byte	0x3f
	.long	0x57be
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"key"
	.byte	0xc
	.byte	0x40
	.long	0x56d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"data"
	.byte	0xc
	.byte	0x41
	.long	0x3c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"degree"
	.byte	0xc
	.byte	0x42
	.long	0x2ea
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.string	"mark"
	.byte	0xc
	.byte	0x43
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x572a
	.uleb128 0x2
	.string	"fibheap_t"
	.byte	0xc
	.byte	0x38
	.long	0x57d5
	.uleb128 0x3
	.byte	0x4
	.long	0x56ec
	.uleb128 0x2
	.string	"fibnode_t"
	.byte	0xc
	.byte	0x44
	.long	0x57be
	.uleb128 0xe
	.long	0x5829
	.long	.LASF21
	.byte	0xc
	.byte	0x13
	.byte	0x2d
	.uleb128 0x6
	.string	"option"
	.byte	0x13
	.byte	0x30
	.long	0x45f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"value"
	.byte	0x13
	.byte	0x32
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"help"
	.byte	0x13
	.byte	0x34
	.long	0x45f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1f
	.long	.LASF21
	.byte	0x13
	.byte	0x35
	.long	0x57ec
	.uleb128 0xe
	.long	0x58f4
	.long	.LASF22
	.byte	0x18
	.byte	0x14
	.byte	0x19
	.uleb128 0x6
	.string	"count_instrumented_edges"
	.byte	0x14
	.byte	0x1d
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"count_edges_instrumented_now"
	.byte	0x14
	.byte	0x22
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"current_function_cfg_checksum"
	.byte	0x14
	.byte	0x27
	.long	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"max_counter_in_program"
	.byte	0x14
	.byte	0x2c
	.long	0x5375
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"count_profiles_merged"
	.byte	0x14
	.byte	0x30
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x21
	.long	0x5926
	.string	"ignore_bb_p"
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.long	0x45f5
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x22
	.string	"bb"
	.byte	0x1
	.byte	0x47
	.long	0x56b9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x21
	.long	0x5973
	.string	"count_insns"
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.long	0x2e3
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x22
	.string	"bb"
	.byte	0x1
	.byte	0x54
	.long	0x56b9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"insn"
	.byte	0x1
	.byte	0x56
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.byte	0x57
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x21
	.long	0x59af
	.string	"better_p"
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.long	0x45f5
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x22
	.string	"e1"
	.byte	0x1
	.byte	0x62
	.long	0x5437
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"e2"
	.byte	0x1
	.byte	0x62
	.long	0x5437
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x21
	.long	0x5a04
	.string	"find_best_successor"
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.long	0x5437
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x22
	.string	"bb"
	.byte	0x1
	.byte	0x75
	.long	0x56b9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"e"
	.byte	0x1
	.byte	0x77
	.long	0x5437
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.string	"best"
	.byte	0x1
	.byte	0x78
	.long	0x5437
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x21
	.long	0x5a5b
	.string	"find_best_predecessor"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.long	0x5437
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x22
	.string	"bb"
	.byte	0x1
	.byte	0x88
	.long	0x56b9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"e"
	.byte	0x1
	.byte	0x8a
	.long	0x5437
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.string	"best"
	.byte	0x1
	.byte	0x8b
	.long	0x5437
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x21
	.long	0x5acc
	.string	"find_trace"
	.byte	0x1
	.byte	0x9f
	.byte	0x1
	.long	0x2e3
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x22
	.string	"bb"
	.byte	0x1
	.byte	0x9d
	.long	0x56b9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"trace"
	.byte	0x1
	.byte	0x9e
	.long	0x5acc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xa0
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"e"
	.byte	0x1
	.byte	0xa1
	.long	0x5437
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x23
	.string	"bb2"
	.byte	0x1
	.byte	0xa8
	.long	0x56b9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x56b9
	.uleb128 0x25
	.long	0x5c78
	.string	"tail_duplicate"
	.byte	0x1
	.byte	0xc9
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x23
	.string	"blocks"
	.byte	0x1
	.byte	0xca
	.long	0x5c78
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x23
	.string	"trace"
	.byte	0x1
	.byte	0xcb
	.long	0x5acc
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"counts"
	.byte	0x1
	.byte	0xcc
	.long	0x6e2
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x23
	.string	"ninsns"
	.byte	0x1
	.byte	0xcd
	.long	0x2e3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"nduplicated"
	.byte	0x1
	.byte	0xcd
	.long	0x2e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x23
	.string	"weighted_insns"
	.byte	0x1
	.byte	0xce
	.long	0x5375
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.string	"traced_insns"
	.byte	0x1
	.byte	0xce
	.long	0x5375
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.string	"heap"
	.byte	0x1
	.byte	0xcf
	.long	0x57c4
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"cover_insns"
	.byte	0x1
	.byte	0xd0
	.long	0x5375
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.string	"max_dup_insns"
	.byte	0x1
	.byte	0xd1
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.string	"bb"
	.byte	0x1
	.byte	0xd2
	.long	0x56b9
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	0x5bea
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.byte	0xdf
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x26
	.long	0x5c5e
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x23
	.string	"bb"
	.byte	0x1
	.byte	0xf3
	.long	0x56b9
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.byte	0xf4
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"pos"
	.byte	0x1
	.byte	0xf4
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x27
	.string	"bb2"
	.byte	0x1
	.value	0x10c
	.long	0x56b9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0x117
	.long	0x5437
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"old"
	.byte	0x1
	.value	0x118
	.long	0x56b9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.string	"__FUNCTION__"
	.long	0x5d14
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11854
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x57db
	.uleb128 0x29
	.long	0x5ceb
	.string	"layout_superblocks"
	.byte	0x1
	.value	0x145
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.value	0x146
	.long	0x56b9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0x147
	.long	0x56b9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0x14b
	.long	0x5437
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"best"
	.byte	0x1
	.value	0x14b
	.long	0x5437
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.string	"tracer"
	.byte	0x1
	.value	0x16c
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x11
	.long	0x5d14
	.long	0x2db
	.uleb128 0x12
	.long	0x2f1
	.byte	0xe
	.byte	0x0
	.uleb128 0xa
	.long	0x5d04
	.uleb128 0x23
	.string	"probability_cutoff"
	.byte	0x1
	.byte	0x3c
	.long	0x2e3
	.byte	0x5
	.byte	0x3
	.long	probability_cutoff
	.uleb128 0x23
	.string	"branch_ratio_cutoff"
	.byte	0x1
	.byte	0x3d
	.long	0x2e3
	.byte	0x5
	.byte	0x3
	.long	branch_ratio_cutoff
	.uleb128 0x2b
	.string	"n_basic_blocks"
	.byte	0x2
	.byte	0xf2
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"last_basic_block"
	.byte	0x2
	.byte	0xf6
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x5d9c
	.long	0x507d
	.uleb128 0x12
	.long	0x2f1
	.byte	0x1
	.byte	0x0
	.uleb128 0x2c
	.string	"entry_exit_blocks"
	.byte	0x2
	.value	0x139
	.long	0x5d8c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"rtl_dump_file"
	.byte	0xe
	.value	0x1b8
	.long	0x5dd0
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3cd
	.uleb128 0x2b
	.string	"flag_branch_probabilities"
	.byte	0x12
	.byte	0xd2
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"compiler_params"
	.byte	0x13
	.byte	0x3a
	.long	0x5e12
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5829
	.uleb128 0x2d
	.long	.LASF22
	.byte	0x14
	.byte	0x34
	.long	0x5834
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
	.uleb128 0x8
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x4
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x17
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x19
	.value	0x2
	.long	.Ldebug_info0
	.long	0x5e26
	.long	0x5ceb
	.string	"tracer"
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
	.string	"common"
.LASF20:
	.string	"mem_attrs"
.LASF12:
	.string	"ht_identifier"
.LASF14:
	.string	"abstract_origin"
.LASF19:
	.string	"lang_specific"
.LASF15:
	.string	"size_unit"
.LASF18:
	.string	"user_align"
.LASF22:
	.string	"profile_info"
.LASF21:
	.string	"param_info"
.LASF2:
	.string	"_IO_FILE"
.LASF5:
	.string	"lang_flag_1"
.LASF6:
	.string	"lang_flag_2"
.LASF9:
	.string	"lang_flag_5"
.LASF11:
	.string	"lang_flag_7"
.LASF16:
	.string	"attributes"
.LASF4:
	.string	"lang_flag_0"
.LASF3:
	.string	"built_in_class"
.LASF7:
	.string	"lang_flag_3"
.LASF8:
	.string	"lang_flag_4"
.LASF10:
	.string	"lang_flag_6"
.LASF17:
	.string	"pointer_depth"
.LASF13:
	.string	"abstract_flag"
.LASF1:
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
