	.file	"predict.c"
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
	.string	"combined"
.LC1:
	.string	"DS theory"
.LC2:
	.string	"first match"
.LC3:
	.string	"no prediction"
.LC4:
	.string	"unconditional jump"
.LC5:
	.string	"loop iterations"
.LC6:
	.string	"__builtin_expect"
.LC7:
	.string	"continue"
.LC8:
	.string	"noreturn call"
.LC9:
	.string	"loop branch"
.LC10:
	.string	"loop exit"
.LC11:
	.string	"loop condition"
.LC12:
	.string	"loop preconditioning"
.LC13:
	.string	"loop header"
.LC14:
	.string	"pointer"
.LC15:
	.string	"opcode values positive"
.LC16:
	.string	"opcode values nonequal"
.LC17:
	.string	"fp_opcode"
.LC18:
	.string	"call"
.LC19:
	.string	"early return"
.LC20:
	.string	"goto"
.LC21:
	.string	"const return"
.LC22:
	.string	"negative return"
.LC23:
	.string	"null return"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	predictor_info, @object
	.size	predictor_info, 300
predictor_info:
	.long	.LC0
	.long	10000
	.long	0
	.long	.LC1
	.long	10000
	.long	0
	.long	.LC2
	.long	10000
	.long	0
	.long	.LC3
	.long	10000
	.long	0
	.long	.LC4
	.long	10000
	.long	1
	.long	.LC5
	.long	10000
	.long	1
	.long	.LC6
	.long	9001
	.long	1
	.long	.LC7
	.long	5600
	.long	0
	.long	.LC8
	.long	9900
	.long	1
	.long	.LC9
	.long	8900
	.long	1
	.long	.LC10
	.long	9000
	.long	1
	.long	.LC11
	.long	9001
	.long	0
	.long	.LC12
	.long	9001
	.long	0
	.long	.LC13
	.long	6400
	.long	0
	.long	.LC14
	.long	8100
	.long	0
	.long	.LC15
	.long	7900
	.long	0
	.long	.LC16
	.long	7100
	.long	0
	.long	.LC17
	.long	9000
	.long	0
	.long	.LC18
	.long	7000
	.long	0
	.long	.LC19
	.long	6700
	.long	0
	.long	.LC20
	.long	7000
	.long	0
	.long	.LC21
	.long	9500
	.long	0
	.long	.LC22
	.long	9600
	.long	0
	.long	.LC23
	.long	9000
	.long	0
	.long	0
	.long	0
	.long	0
.globl __divdi3
	.text
.globl maybe_hot_bb_p
	.type	maybe_hot_bb_p, @function
maybe_hot_bb_p:
.LFB15:
	.file 1 "../../../kgccfe/gnu/predict.c"
	.loc 1 131 0
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
	subl	$44, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 132 0
	movl	profile_info@GOT(%ebx), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2
	movl	flag_branch_probabilities@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	68(%eax), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	profile_info@GOT(%ebx), %eax
	movl	12(%eax), %esi
	movl	16(%eax), %edi
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$144, %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	movl	-28(%ebp), %ecx
	cmpl	%ecx, -36(%ebp)
	jg	.L2
	movl	-28(%ebp), %esi
	cmpl	%esi, -36(%ebp)
	jl	.L6
	movl	-32(%ebp), %eax
	cmpl	%eax, -40(%ebp)
	jae	.L2
.L6:
	.loc 1 137 0
	movl	$0, -20(%ebp)
	jmp	.L7
.L2:
	.loc 1 138 0
	movl	8(%ebp), %eax
	movl	72(%eax), %ecx
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$156, %eax
	movl	4(%eax), %eax
	movl	$10000, %edx
	movl	%eax, %esi
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.L8
	.loc 1 139 0
	movl	$0, -20(%ebp)
	jmp	.L7
.L8:
	.loc 1 140 0
	movl	$1, -20(%ebp)
.L7:
	movl	-20(%ebp), %eax
	.loc 1 141 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	maybe_hot_bb_p, .-maybe_hot_bb_p
.globl probably_cold_bb_p
	.type	probably_cold_bb_p, @function
probably_cold_bb_p:
.LFB16:
	.loc 1 148 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%edi
.LCFI8:
	pushl	%esi
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$44, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 149 0
	movl	profile_info@GOT(%ebx), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L12
	movl	flag_branch_probabilities@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L12
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	68(%eax), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	profile_info@GOT(%ebx), %eax
	movl	12(%eax), %esi
	movl	16(%eax), %edi
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$144, %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	movl	-28(%ebp), %ecx
	cmpl	%ecx, -36(%ebp)
	jg	.L12
	movl	-28(%ebp), %esi
	cmpl	%esi, -36(%ebp)
	jl	.L16
	movl	-32(%ebp), %eax
	cmpl	%eax, -40(%ebp)
	jae	.L12
.L16:
	.loc 1 154 0
	movl	$1, -20(%ebp)
	jmp	.L17
.L12:
	.loc 1 155 0
	movl	8(%ebp), %eax
	movl	72(%eax), %ecx
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$156, %eax
	movl	4(%eax), %eax
	movl	$10000, %edx
	movl	%eax, %esi
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.L18
	.loc 1 156 0
	movl	$1, -20(%ebp)
	jmp	.L17
.L18:
	.loc 1 157 0
	movl	$0, -20(%ebp)
.L17:
	movl	-20(%ebp), %eax
	.loc 1 158 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	probably_cold_bb_p, .-probably_cold_bb_p
.globl probably_never_executed_bb_p
	.type	probably_never_executed_bb_p, @function
probably_never_executed_bb_p:
.LFB17:
	.loc 1 164 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%edi
.LCFI14:
	pushl	%esi
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$28, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 165 0
	movl	profile_info@GOT(%ebx), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L22
	movl	flag_branch_probabilities@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L22
	.loc 1 167 0
	movl	8(%ebp), %eax
	movl	64(%eax), %esi
	movl	68(%eax), %edi
	movl	profile_info@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	profile_info@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__divdi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	jmp	.L25
.L22:
	.loc 1 169 0
	movl	$0, -16(%ebp)
.L25:
	movl	-16(%ebp), %eax
	.loc 1 170 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE17:
	.size	probably_never_executed_bb_p, .-probably_never_executed_bb_p
	.type	predicted_by_p, @function
predicted_by_p:
.LFB18:
	.loc 1 179 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%edi
.LCFI20:
	pushl	%esi
.LCFI21:
	pushl	%ebx
.LCFI22:
	subl	$20, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 181 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L28
	.loc 1 182 0
	movl	$0, -32(%ebp)
	jmp	.L30
.L28:
	.loc 1 183 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L31
.L32:
	.loc 1 184 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$19, %al
	jne	.L33
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	12(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L33
	.loc 1 186 0
	movl	$1, -32(%ebp)
	jmp	.L30
.L33:
	.loc 1 183 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L31:
	cmpl	$0, -16(%ebp)
	jne	.L32
	.loc 1 187 0
	movl	$0, -32(%ebp)
.L30:
	movl	-32(%ebp), %eax
	.loc 1 188 0
	addl	$20, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE18:
	.size	predicted_by_p, .-predicted_by_p
	.section	.rodata
	.type	__FUNCTION__.13871, @object
	.size	__FUNCTION__.13871, 13
__FUNCTION__.13871:
	.string	"predict_insn"
.LC24:
	.string	"../../../kgccfe/gnu/predict.c"
	.text
.globl predict_insn
	.type	predict_insn, @function
predict_insn:
.LFB19:
	.loc 1 195 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	pushl	%edi
.LCFI26:
	pushl	%esi
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$28, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 196 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	jne	.L39
	.loc 1 197 0
	leal	__FUNCTION__.13871@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$197, 4(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L39:
	.loc 1 198 0
	movl	flag_guess_branch_prob@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L43
	.loc 1 201 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edi
	movl	16(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$75, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%edi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$19, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 68(%eax)
.L43:
	.loc 1 207 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	predict_insn, .-predict_insn
.globl predict_insn_def
	.type	predict_insn_def, @function
predict_insn_def:
.LFB20:
	.loc 1 216 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	pushl	%ebx
.LCFI32:
	subl	$36, %esp
.LCFI33:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 217 0
	movl	12(%ebp), %edx
	leal	predictor_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 219 0
	cmpl	$1, 16(%ebp)
	je	.L45
	.loc 1 220 0
	movl	$10000, %eax
	subl	-8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L45:
	.loc 1 222 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_insn@PLT
	.loc 1 223 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	predict_insn_def, .-predict_insn_def
.globl predict_edge
	.type	predict_edge, @function
predict_edge:
.LFB21:
	.loc 1 232 0
	pushl	%ebp
.LCFI34:
	movl	%esp, %ebp
.LCFI35:
	pushl	%ebx
.LCFI36:
	subl	$36, %esp
.LCFI37:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 234 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 238 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L53
	.loc 1 242 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L51
	.loc 1 243 0
	movl	$10000, %eax
	subl	16(%ebp), %eax
	movl	%eax, 16(%ebp)
.L51:
	.loc 1 245 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_insn@PLT
.L53:
	.loc 1 246 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	predict_edge, .-predict_edge
	.type	can_predict_insn_p, @function
can_predict_insn_p:
.LFB22:
	.loc 1 254 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$20, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 255 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L55
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L55
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L55
	movl	$1, -8(%ebp)
	jmp	.L59
.L55:
	movl	$0, -8(%ebp)
.L59:
	movzbl	-8(%ebp), %eax
	movzbl	%al, %eax
	.loc 1 258 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	can_predict_insn_p, .-can_predict_insn_p
.globl predict_edge_def
	.type	predict_edge_def, @function
predict_edge_def:
.LFB23:
	.loc 1 267 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$36, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 268 0
	movl	12(%ebp), %edx
	leal	predictor_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 270 0
	cmpl	$1, 16(%ebp)
	je	.L62
	.loc 1 271 0
	movl	$10000, %eax
	subl	-8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L62:
	.loc 1 273 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_edge@PLT
	.loc 1 274 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	predict_edge_def, .-predict_edge_def
.globl invert_br_probabilities
	.type	invert_br_probabilities, @function
invert_br_probabilities:
.LFB24:
	.loc 1 282 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%edi
.LCFI48:
	pushl	%esi
.LCFI49:
	pushl	%ebx
.LCFI50:
	subl	$44, %esp
.LCFI51:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 285 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L66
.L67:
	.loc 1 286 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$16, %al
	jne	.L68
	.loc 1 287 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	$10000, %eax
	movl	$0, %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L70
.L68:
	.loc 1 288 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$19, %al
	jne	.L70
	.loc 1 289 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	$10000, %eax
	movl	$0, %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	-32(%ebp), %edx
	movl	%eax, 12(%edx)
.L70:
	.loc 1 285 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L66:
	cmpl	$0, -16(%ebp)
	jne	.L67
	.loc 1 291 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE24:
	.size	invert_br_probabilities, .-invert_br_probabilities
	.section	.rodata
.LC27:
	.string	""
.LC28:
	.string	" (ignored)"
.LC29:
	.string	"  %s heuristics%s: %.1f%%"
.LC30:
	.string	"  exec "
.LC31:
	.string	"%lld"
.LC32:
	.string	" hit "
.LC33:
	.string	" (%.1f%%)"
	.align 8
.LC25:
	.long	0
	.long	1079574528
	.align 8
.LC26:
	.long	0
	.long	1086556160
	.text
	.type	dump_prediction, @function
dump_prediction:
.LFB25:
	.loc 1 301 0
	pushl	%ebp
.LCFI52:
	movl	%esp, %ebp
.LCFI53:
	pushl	%esi
.LCFI54:
	pushl	%ebx
.LCFI55:
	subl	$64, %esp
.LCFI56:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 302 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 304 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L87
	.loc 1 307 0
	jmp	.L77
.L78:
	.loc 1 308 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L77:
	.loc 1 307 0
	cmpl	$0, -12(%ebp)
	je	.L79
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L78
.L79:
	.loc 1 310 0
	fildl	12(%ebp)
	fldl	.LC25@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fldl	.LC26@GOTOFF(%ebx)
	fdivrp	%st, %st(1)
	fstpl	-40(%ebp)
	cmpl	$0, 20(%ebp)
	je	.L81
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	.L83
.L81:
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.L83:
	movl	8(%ebp), %edx
	leal	predictor_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	fldl	-40(%ebp)
	fstpl	16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 314 0
	movl	16(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L84
	.loc 1 316 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 317 0
	movl	16(%ebp), %eax
	movl	64(%eax), %edx
	movl	68(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 318 0
	cmpl	$0, -12(%ebp)
	je	.L84
	.loc 1 320 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 321 0
	movl	-12(%ebp), %eax
	movl	32(%eax), %edx
	movl	36(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 322 0
	movl	-12(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	fldl	.LC25@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	movl	16(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	fdivrp	%st, %st(1)
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	fstpl	8(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L84:
	.loc 1 326 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L87:
	.loc 1 327 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE25:
	.size	dump_prediction, .-dump_prediction
	.section	.rodata
	.align 4
.LC34:
	.string	"Predictions for insn %i bb %i\n"
	.align 8
.LC35:
	.long	0
	.long	1086556160
	.align 8
.LC36:
	.long	0
	.long	1071644672
	.text
	.type	combine_predictions_for_insn, @function
combine_predictions_for_insn:
.LFB26:
	.loc 1 336 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	pushl	%esi
.LCFI59:
	pushl	%ebx
.LCFI60:
	subl	$80, %esp
.LCFI61:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 337 0
	movl	$0, 8(%esp)
	movl	$16, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -56(%ebp)
	.loc 1 338 0
	movl	8(%ebp), %eax
	addl	$68, %eax
	movl	%eax, -52(%ebp)
	.loc 1 340 0
	movl	$5000, -44(%ebp)
	.loc 1 341 0
	movl	$24, -40(%ebp)
	.loc 1 342 0
	movl	$5000, -36(%ebp)
	.loc 1 344 0
	movb	$0, -10(%ebp)
	.loc 1 345 0
	movb	$0, -9(%ebp)
	.loc 1 347 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L89
	.loc 1 348 0
	movl	12(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L89:
	.loc 1 354 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L91
.L92:
	.loc 1 355 0
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$19, %al
	jne	.L93
.LBB2:
	.loc 1 357 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 358 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 360 0
	movb	$1, -9(%ebp)
	.loc 1 361 0
	movl	-40(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jle	.L95
	.loc 1 362 0
	movl	-24(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -40(%ebp)
.L95:
	.loc 1 364 0
	movl	-36(%ebp), %eax
	movl	%eax, %ecx
	imull	-24(%ebp), %ecx
	movl	$10000, %eax
	movl	%eax, %edx
	subl	-36(%ebp), %edx
	movl	$10000, %eax
	subl	-24(%ebp), %eax
	imull	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 369 0
	cmpl	$0, -32(%ebp)
	jne	.L97
	.loc 1 371 0
	movl	$5000, -36(%ebp)
	jmp	.L93
.L97:
	.loc 1 373 0
	fildl	-36(%ebp)
	fildl	-24(%ebp)
	fmulp	%st, %st(1)
	fldl	.LC35@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fildl	-32(%ebp)
	fdivrp	%st, %st(1)
	fldl	.LC36@GOTOFF(%ebx)
	faddp	%st, %st(1)
	fnstcw	-58(%ebp)
	movzwl	-58(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -60(%ebp)
	fldcw	-60(%ebp)
	fistpl	-36(%ebp)
	fldcw	-58(%ebp)
.L93:
.LBE2:
	.loc 1 354 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
.L91:
	cmpl	$0, -48(%ebp)
	jne	.L92
	.loc 1 381 0
	movl	-40(%ebp), %edx
	leal	predictor_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	8(%eax,%ecx), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L100
	.loc 1 382 0
	movb	$1, -10(%ebp)
.L100:
	.loc 1 384 0
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L102
	.loc 1 385 0
	movl	$1, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$3, (%esp)
	call	dump_prediction
	jmp	.L104
.L102:
	.loc 1 388 0
	movzbl	-10(%ebp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	dump_prediction
	.loc 1 389 0
	movzbl	-10(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	dump_prediction
.L104:
	.loc 1 392 0
	cmpb	$0, -10(%ebp)
	je	.L105
	.loc 1 393 0
	movl	-44(%ebp), %eax
	movl	%eax, -36(%ebp)
.L105:
	.loc 1 394 0
	movl	$1, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	dump_prediction
	.loc 1 396 0
	jmp	.L126
.L108:
	.loc 1 398 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	$19, %al
	jne	.L109
.LBB3:
	.loc 1 400 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 401 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 403 0
	movzbl	-10(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L111
	movl	-40(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L113
.L111:
	movl	$1, -72(%ebp)
	jmp	.L114
.L113:
	movl	$0, -72(%ebp)
.L114:
	movl	-20(%ebp), %edx
	movl	-72(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_prediction
	.loc 1 405 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L107
.L109:
.LBE3:
	.loc 1 408 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	%eax, -52(%ebp)
.L107:
.L126:
	.loc 1 396 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L108
	.loc 1 411 0
	cmpl	$0, -56(%ebp)
	jne	.L125
	.loc 1 413 0
	movl	8(%ebp), %eax
	movl	68(%eax), %esi
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$16, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 419 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L125
	.loc 1 421 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L119
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L121
.L119:
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -68(%ebp)
.L121:
	movl	-36(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 28(%edx)
	.loc 1 422 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L122
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L124
.L122:
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
.L124:
	movl	$10000, %eax
	subl	-36(%ebp), %eax
	movl	-64(%ebp), %edx
	movl	%eax, 28(%edx)
.L125:
	.loc 1 426 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE26:
	.size	combine_predictions_for_insn, .-combine_predictions_for_insn
.globl estimate_probability
	.type	estimate_probability, @function
estimate_probability:
.LFB27:
	.loc 1 437 0
	pushl	%ebp
.LCFI62:
	movl	%esp, %ebp
.LCFI63:
	pushl	%ebx
.LCFI64:
	subl	$84, %esp
.LCFI65:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 442 0
	call	connect_infinite_loops_to_exit@PLT
	.loc 1 443 0
	movl	$0, (%esp)
	call	calculate_dominance_info@PLT
	movl	%eax, -64(%ebp)
	.loc 1 444 0
	movl	$1, (%esp)
	call	calculate_dominance_info@PLT
	movl	%eax, -60(%ebp)
	.loc 1 448 0
	movl	$1, -52(%ebp)
	jmp	.L128
.L129:
.LBB4:
	.loc 1 453 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-52(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 455 0
	movl	$8, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_loop_scan@PLT
	.loc 1 456 0
	movl	-32(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 458 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	get_loop_body@PLT
	movl	%eax, -44(%ebp)
	.loc 1 459 0
	movl	$0, -40(%ebp)
	jmp	.L130
.L131:
.LBB5:
	.loc 1 461 0
	movl	$0, -28(%ebp)
	.loc 1 464 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	addl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 470 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	can_predict_insn_p
	xorl	$1, %eax
	testb	%al, %al
	jne	.L132
	movl	$7, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	predicted_by_p
	testb	%al, %al
	jne	.L132
	.loc 1 476 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L135
.L136:
	.loc 1 477 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L137
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L137
	.loc 1 480 0
	movl	$1, -28(%ebp)
	.loc 1 481 0
	movl	$1, 8(%esp)
	movl	$9, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_edge_def@PLT
.L137:
	.loc 1 476 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L135:
	cmpl	$0, -24(%ebp)
	jne	.L136
	.loc 1 486 0
	cmpl	$0, -28(%ebp)
	jne	.L132
	.loc 1 487 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L142
.L143:
	.loc 1 488 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	js	.L144
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_bb_inside_loop_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L146
.L144:
	.loc 1 490 0
	movl	124+predictor_info@GOTOFF(%ebx), %edx
	movl	$10000, %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-36(%ebp)
	movl	%eax, 8(%esp)
	movl	$10, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_edge@PLT
.L146:
	.loc 1 487 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L142:
	cmpl	$0, -24(%ebp)
	jne	.L143
.L132:
.LBE5:
	.loc 1 459 0
	addl	$1, -40(%ebp)
.L130:
	movl	-32(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	-40(%ebp), %eax
	jg	.L131
.LBE4:
	.loc 1 448 0
	addl	$1, -52(%ebp)
.L128:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-52(%ebp), %eax
	jg	.L129
	.loc 1 499 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L149
.L150:
.LBB6:
	.loc 1 501 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 505 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	can_predict_insn_p
	xorl	$1, %eax
	testb	%al, %al
	jne	.L151
	.loc 1 508 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L153
.L154:
	.loc 1 513 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L155
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L157
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L157
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L157
.L155:
	movl	$23, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	predicted_by_p
	xorl	$1, %eax
	testb	%al, %al
	je	.L157
	movl	$21, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	predicted_by_p
	xorl	$1, %eax
	testb	%al, %al
	je	.L157
	movl	$22, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	predicted_by_p
	xorl	$1, %eax
	testb	%al, %al
	je	.L157
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	last_basic_block_p
	xorl	$1, %eax
	testb	%al, %al
	je	.L157
	.loc 1 520 0
	movl	$1, 8(%esp)
	movl	$19, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_edge_def@PLT
.L157:
	.loc 1 524 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L164
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-56(%ebp), %eax
	je	.L164
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	dominated_by_p@PLT
	testb	%al, %al
	je	.L164
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	dominated_by_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L164
.LBB7:
	.loc 1 534 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L169
.L170:
	.loc 1 536 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L171
	movl	-8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L171
	.loc 1 541 0
	movl	$0, 8(%esp)
	movl	$18, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_edge_def@PLT
	.loc 1 542 0
	jmp	.L164
.L171:
	.loc 1 535 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L169:
	.loc 1 534 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L170
.L164:
.LBE7:
	.loc 1 508 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L153:
	cmpl	$0, -12(%ebp)
	jne	.L154
	.loc 1 547 0
	leal	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_condition@PLT
	movl	%eax, -16(%ebp)
	.loc 1 548 0
	cmpl	$0, -16(%ebp)
	je	.L151
	.loc 1 554 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L176
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L178
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L180
.L178:
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L176
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L176
.L180:
	.loc 1 558 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$113, %ax
	jne	.L182
	.loc 1 559 0
	movl	$0, 8(%esp)
	movl	$14, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_insn_def@PLT
	jmp	.L151
.L182:
	.loc 1 560 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$112, %ax
	jne	.L151
	.loc 1 561 0
	movl	$1, 8(%esp)
	movl	$14, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_insn_def@PLT
	.loc 1 554 0
	jmp	.L151
.L176:
	.loc 1 569 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$64, %eax
	movl	%eax, -72(%ebp)
	cmpl	$65, -72(%ebp)
	ja	.L151
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	.L193@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L193:
	.long	.L186@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L187@GOTOFF
	.long	.L188@GOTOFF
	.long	.L189@GOTOFF
	.long	.L189@GOTOFF
	.long	.L190@GOTOFF
	.long	.L190@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L191@GOTOFF
	.long	.L192@GOTOFF
	.long	.L188@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L187@GOTOFF
	.text
.L186:
	.loc 1 573 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-16(%ebp), %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_insn_def@PLT
	.loc 1 575 0
	jmp	.L151
.L188:
	.loc 1 582 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L151
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L151
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	je	.L151
	.loc 1 586 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	je	.L151
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	je	.L151
	.loc 1 590 0
	movl	$0, 8(%esp)
	movl	$16, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_insn_def@PLT
	.loc 1 591 0
	jmp	.L151
.L187:
	.loc 1 598 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L151
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L151
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	je	.L151
	.loc 1 602 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	je	.L151
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	je	.L151
	.loc 1 606 0
	movl	$1, 8(%esp)
	movl	$16, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_insn_def@PLT
	.loc 1 607 0
	jmp	.L151
.L192:
	.loc 1 610 0
	movl	$1, 8(%esp)
	movl	$17, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_insn_def@PLT
	.loc 1 611 0
	jmp	.L151
.L191:
	.loc 1 614 0
	movl	$0, 8(%esp)
	movl	$17, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_insn_def@PLT
	.loc 1 615 0
	jmp	.L151
.L190:
	.loc 1 619 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	je	.L206
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	%eax, %edx
	je	.L206
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	cmpl	%eax, %edx
	jne	.L151
.L206:
	.loc 1 621 0
	movl	$0, 8(%esp)
	movl	$15, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_insn_def@PLT
	.loc 1 622 0
	jmp	.L151
.L189:
	.loc 1 626 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	je	.L210
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	%eax, %edx
	je	.L210
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	cmpl	%eax, %edx
	jne	.L151
.L210:
	.loc 1 628 0
	movl	$1, 8(%esp)
	movl	$15, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_insn_def@PLT
.L151:
.LBE6:
	.loc 1 499 0
	movl	-56(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -56(%ebp)
.L149:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -56(%ebp)
	jne	.L150
	.loc 1 637 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L214
.L215:
	.loc 1 638 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L216
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L216
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L216
	.loc 1 641 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %edx
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	combine_predictions_for_insn
.L216:
	.loc 1 637 0
	movl	-56(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -56(%ebp)
.L214:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -56(%ebp)
	jne	.L215
	.loc 1 643 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	free_dominance_info@PLT
	.loc 1 644 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	free_dominance_info@PLT
	.loc 1 646 0
	call	remove_fake_edges@PLT
	.loc 1 647 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	estimate_bb_frequencies
	.loc 1 648 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	estimate_probability, .-estimate_probability
	.section	.rodata
	.type	__FUNCTION__.14424, @object
	.size	__FUNCTION__.14424, 26
__FUNCTION__.14424:
	.string	"expected_value_to_br_prob"
	.text
.globl expected_value_to_br_prob
	.type	expected_value_to_br_prob, @function
expected_value_to_br_prob:
.LFB28:
	.loc 1 656 0
	pushl	%ebp
.LCFI66:
	movl	%esp, %ebp
.LCFI67:
	pushl	%ebx
.LCFI68:
	subl	$52, %esp
.LCFI69:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 657 0
	movl	$0, -12(%ebp)
	movl	$0, -8(%ebp)
	.loc 1 659 0
	call	get_insns@PLT
	movl	%eax, -20(%ebp)
	jmp	.L223
.L224:
	.loc 1 661 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	cmpl	$46, -24(%ebp)
	je	.L227
	cmpl	$47, -24(%ebp)
	je	.L228
	cmpl	$43, -24(%ebp)
	je	.L226
	jmp	.L225
.L228:
	.loc 1 665 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-82, %eax
	jne	.L231
	.loc 1 667 0
	movl	-20(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 668 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 669 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 671 0
	jmp	.L231
.L227:
	.loc 1 675 0
	movl	$0, -12(%ebp)
	.loc 1 676 0
	jmp	.L231
.L226:
	.loc 1 681 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L231
	cmpl	$0, -12(%ebp)
	je	.L231
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L231
	.loc 1 702 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 703 0
	movl	-8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	canonicalize_condition@PLT
	movl	%eax, -16(%ebp)
	.loc 1 704 0
	cmpl	$0, -16(%ebp)
	je	.L231
	jmp	.L235
.L225:
	.loc 1 688 0
	cmpl	$0, -12(%ebp)
	je	.L231
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	je	.L231
	.loc 1 689 0
	movl	$0, -12(%ebp)
	.loc 1 690 0
	jmp	.L231
.L235:
	.loc 1 704 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L231
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L231
	.loc 1 711 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -16(%ebp)
	.loc 1 713 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_rtx@PLT
	movl	%eax, -16(%ebp)
	.loc 1 716 0
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -16(%ebp)
	je	.L241
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L241
	.loc 1 717 0
	leal	__FUNCTION__.14424@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$717, 4(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L241:
	.loc 1 718 0
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -16(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	movl	$6, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_insn_def@PLT
.L231:
	.loc 1 659 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L223:
	cmpl	$0, -20(%ebp)
	jne	.L224
	.loc 1 721 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	expected_value_to_br_prob, .-expected_value_to_br_prob
	.type	last_basic_block_p, @function
last_basic_block_p:
.LFB29:
	.loc 1 728 0
	pushl	%ebp
.LCFI70:
	movl	%esp, %ebp
.LCFI71:
	subl	$8, %esp
.LCFI72:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 729 0
	movl	entry_exit_blocks@GOT(%ecx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jne	.L247
	.loc 1 730 0
	movl	$0, -8(%ebp)
	jmp	.L249
.L247:
	.loc 1 732 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	entry_exit_blocks@GOT(%ecx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L250
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	52(%eax), %edx
	movl	entry_exit_blocks@GOT(%ecx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L252
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L252
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L252
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	movl	52(%eax), %edx
	movl	entry_exit_blocks@GOT(%ecx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L252
.L250:
	movl	$1, -4(%ebp)
	jmp	.L256
.L252:
	movl	$0, -4(%ebp)
.L256:
	movzbl	-4(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
.L249:
	movl	-8(%ebp), %eax
	.loc 1 736 0
	leave
	ret
.LFE29:
	.size	last_basic_block_p, .-last_basic_block_p
	.type	process_note_prediction, @function
process_note_prediction:
.LFB30:
	.loc 1 752 0
	pushl	%ebp
.LCFI73:
	movl	%esp, %ebp
.LCFI74:
	pushl	%ebx
.LCFI75:
	subl	$52, %esp
.LCFI76:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 757 0
	movl	28(%ebp), %eax
	andl	$1, %eax
	movb	%al, -5(%ebp)
	.loc 1 759 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L259
.LBB8:
	.loc 1 764 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 765 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_immediate_dominator@PLT
	movl	%eax, -16(%ebp)
	.loc 1 768 0
	jmp	.L261
.L262:
	.loc 1 770 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	dominated_by_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	jne	.L263
	.loc 1 772 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 773 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 774 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_immediate_dominator@PLT
	movl	%eax, -16(%ebp)
.L261:
	.loc 1 768 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L262
.L263:
	.loc 1 776 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	dominated_by_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L265
	.loc 1 777 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L268
.L265:
	.loc 1 779 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 780 0
	jmp	.L268
.L269:
	.loc 1 782 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 783 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L270
	.loc 1 784 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L272
.L270:
	.loc 1 786 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -20(%ebp)
.L272:
	.loc 1 787 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
.L268:
	.loc 1 780 0
	movl	-16(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L269
.L259:
.LBE8:
	.loc 1 790 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 794 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -24(%ebp)
	je	.L282
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	can_predict_insn_p
	xorl	$1, %eax
	testb	%al, %al
	je	.L275
	.loc 1 795 0
	jmp	.L282
.L275:
	.loc 1 796 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L277
.L278:
	.loc 1 797 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	js	.L279
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	dominated_by_p@PLT
	testb	%al, %al
	je	.L279
	.loc 1 799 0
	movzbl	-5(%ebp), %eax
	movl	24(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_edge_def@PLT
.L279:
	.loc 1 796 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L277:
	cmpl	$0, -28(%ebp)
	jne	.L278
.L282:
	.loc 1 800 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	process_note_prediction, .-process_note_prediction
	.type	process_note_predictions, @function
process_note_predictions:
.LFB31:
	.loc 1 812 0
	pushl	%ebp
.LCFI77:
	movl	%esp, %ebp
.LCFI78:
	pushl	%ebx
.LCFI79:
	subl	$68, %esp
.LCFI80:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 817 0
	movl	$0, -20(%ebp)
	.loc 1 818 0
	movl	$0, -16(%ebp)
	.loc 1 819 0
	movl	$1, -12(%ebp)
	.loc 1 821 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L284
.L285:
	.loc 1 824 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L286
	.loc 1 826 0
	cmpl	$0, -16(%ebp)
	jne	.L288
	.loc 1 832 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L293
	movl	$0, 8(%esp)
	movl	$25, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L293
	.loc 1 834 0
	movl	$1, -20(%ebp)
	.loc 1 835 0
	jmp	.L293
.L286:
	.loc 1 838 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-81, %eax
	jne	.L293
.LBB9:
	.loc 1 840 0
	movl	-28(%ebp), %eax
	movl	36(%eax), %eax
	sarl	$8, %eax
	movl	%eax, -8(%ebp)
	.loc 1 842 0
	movl	-28(%ebp), %eax
	movl	36(%eax), %eax
	andl	$255, %eax
	movl	%eax, 20(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	process_note_prediction
	.loc 1 847 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
.L293:
.LBE9:
	.loc 1 822 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
.L284:
	.loc 1 821 0
	cmpl	$0, -28(%ebp)
	jne	.L285
.L288:
	.loc 1 850 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L295
.L296:
	.loc 1 851 0
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L297
	.loc 1 852 0
	movl	$0, -12(%ebp)
.L297:
	.loc 1 850 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L295:
	cmpl	$0, -24(%ebp)
	jne	.L296
	.loc 1 853 0
	cmpl	$0, -20(%ebp)
	je	.L302
	.loc 1 858 0
	movl	$0, 20(%esp)
	movl	$8, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	process_note_prediction
.L302:
	.loc 1 863 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	process_note_predictions, .-process_note_predictions
.globl note_prediction_to_br_prob
	.type	note_prediction_to_br_prob, @function
note_prediction_to_br_prob:
.LFB32:
	.loc 1 870 0
	pushl	%ebp
.LCFI81:
	movl	%esp, %ebp
.LCFI82:
	pushl	%ebx
.LCFI83:
	subl	$36, %esp
.LCFI84:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 876 0
	call	add_noreturn_fake_exit_edges@PLT
	.loc 1 877 0
	call	connect_infinite_loops_to_exit@PLT
	.loc 1 879 0
	movl	$1, (%esp)
	call	calculate_dominance_info@PLT
	movl	%eax, -16(%ebp)
	.loc 1 880 0
	movl	$0, (%esp)
	call	calculate_dominance_info@PLT
	movl	%eax, -12(%ebp)
	.loc 1 882 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 883 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, 8(%esp)
	movl	$-1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	memset@PLT
	.loc 1 884 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-8(%ebp), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 888 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L304
.L305:
	.loc 1 889 0
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	process_note_predictions
	.loc 1 888 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
.L304:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L305
	.loc 1 891 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free_dominance_info@PLT
	.loc 1 892 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free_dominance_info@PLT
	.loc 1 893 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 895 0
	call	remove_fake_edges@PLT
	.loc 1 896 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	note_prediction_to_br_prob, .-note_prediction_to_br_prob
	.section	.rodata
	.align 4
.LC37:
	.string	"Irreducible region hit, ignoring edge to %i->%i\n"
	.text
	.type	propagate_freq, @function
propagate_freq:
.LFB33:
	.loc 1 936 0
	pushl	%ebp
.LCFI85:
	movl	%esp, %ebp
.LCFI86:
	pushl	%esi
.LCFI87:
	pushl	%ebx
.LCFI88:
	addl	$-128, %esp
.LCFI89:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 937 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 945 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L309
.L310:
	.loc 1 947 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movzbl	28(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L311
.LBB10:
	.loc 1 949 0
	movl	$0, -12(%ebp)
	.loc 1 951 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L313
.L314:
	.loc 1 952 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	40(%eax), %eax
	movzbl	28(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L315
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L315
	.loc 1 953 0
	addl	$1, -12(%ebp)
	.loc 1 952 0
	jmp	.L318
.L315:
	.loc 1 954 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	40(%eax), %eax
	movzbl	28(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L318
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L318
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L318
	.loc 1 956 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %esi
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L318:
	.loc 1 951 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L313:
	cmpl	$0, -20(%ebp)
	jne	.L314
	.loc 1 959 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 32(%edx)
.L311:
.LBE10:
	.loc 1 945 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
.L309:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L310
	.loc 1 963 0
	movl	-32(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	movl	real_one@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	movl	4+real_one@GOTOFF(%ebx), %eax
	movl	%eax, 4(%edx)
	movl	8+real_one@GOTOFF(%ebx), %eax
	movl	%eax, 8(%edx)
	movl	12+real_one@GOTOFF(%ebx), %eax
	movl	%eax, 12(%edx)
	movl	16+real_one@GOTOFF(%ebx), %eax
	movl	%eax, 16(%edx)
	movl	20+real_one@GOTOFF(%ebx), %eax
	movl	%eax, 20(%edx)
	.loc 1 964 0
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 965 0
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L324
.L325:
.LBB11:
	.loc 1 969 0
	leal	-56(%ebp), %edx
	movl	real_zero@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	movl	4+real_zero@GOTOFF(%ebx), %eax
	movl	%eax, 4(%edx)
	movl	8+real_zero@GOTOFF(%ebx), %eax
	movl	%eax, 8(%edx)
	movl	12+real_zero@GOTOFF(%ebx), %eax
	movl	%eax, 12(%edx)
	movl	16+real_zero@GOTOFF(%ebx), %eax
	movl	%eax, 16(%edx)
	movl	20+real_zero@GOTOFF(%ebx), %eax
	movl	%eax, 20(%edx)
	.loc 1 970 0
	leal	-80(%ebp), %edx
	movl	real_zero@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	movl	4+real_zero@GOTOFF(%ebx), %eax
	movl	%eax, 4(%edx)
	movl	8+real_zero@GOTOFF(%ebx), %eax
	movl	%eax, 8(%edx)
	movl	12+real_zero@GOTOFF(%ebx), %eax
	movl	%eax, 12(%edx)
	movl	16+real_zero@GOTOFF(%ebx), %eax
	movl	%eax, 16(%edx)
	movl	20+real_zero@GOTOFF(%ebx), %eax
	movl	%eax, 20(%edx)
	.loc 1 972 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 973 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	$0, 24(%eax)
	.loc 1 976 0
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	je	.L326
	.loc 1 984 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L328
.L329:
	.loc 1 985 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L330
	.loc 1 987 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$60, 4(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	real_arithmetic@PLT
	jmp	.L332
.L330:
	.loc 1 991 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L332
.LBB12:
	.loc 1 999 0
	movl	-20(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	global_trees@GOT(%ebx), %eax
	movl	100(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	$0, 24(%esp)
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 4(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	real_from_integer@PLT
	.loc 1 1001 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, 12(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$62, 4(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	real_arithmetic@PLT
	.loc 1 1003 0
	leal	real_inv_br_prob_base@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$62, 4(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	real_arithmetic@PLT
	.loc 1 1004 0
	leal	-104(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$60, 4(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	real_arithmetic@PLT
.L332:
.LBE12:
	.loc 1 984 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L328:
	cmpl	$0, -20(%ebp)
	jne	.L329
	.loc 1 1007 0
	leal	real_zero@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	real_identical@PLT
	testb	%al, %al
	je	.L335
	.loc 1 1008 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %ecx
	leal	-80(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12(%ecx)
	movl	16(%edx), %eax
	movl	%eax, 16(%ecx)
	movl	20(%edx), %eax
	movl	%eax, 20(%ecx)
	jmp	.L326
.L335:
	.loc 1 1011 0
	leal	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	real_almost_one@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$99, (%esp)
	call	real_compare@PLT
	testb	%al, %al
	je	.L337
	.loc 1 1012 0
	leal	-56(%ebp), %edx
	movl	real_almost_one@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	movl	4+real_almost_one@GOTOFF(%ebx), %eax
	movl	%eax, 4(%edx)
	movl	8+real_almost_one@GOTOFF(%ebx), %eax
	movl	%eax, 8(%edx)
	movl	12+real_almost_one@GOTOFF(%ebx), %eax
	movl	%eax, 12(%edx)
	movl	16+real_almost_one@GOTOFF(%ebx), %eax
	movl	%eax, 16(%edx)
	movl	20+real_almost_one@GOTOFF(%ebx), %eax
	movl	%eax, 20(%edx)
.L337:
	.loc 1 1017 0
	leal	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	real_one@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$61, 4(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	real_arithmetic@PLT
	.loc 1 1019 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	leal	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$71, 4(%esp)
	movl	%edx, (%esp)
	call	real_arithmetic@PLT
.L326:
	.loc 1 1024 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	movzbl	28(%edx), %eax
	andl	$-2, %eax
	movb	%al, 28(%edx)
	.loc 1 1027 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L339
.L340:
	.loc 1 1028 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L341
.LBB13:
	.loc 1 1035 0
	movl	-20(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	global_trees@GOT(%ebx), %eax
	movl	100(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	$0, 24(%esp)
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 4(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	real_from_integer@PLT
	.loc 1 1037 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, 12(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$62, 4(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	real_arithmetic@PLT
	.loc 1 1039 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	leal	real_inv_br_prob_base@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$62, 4(%esp)
	movl	%edx, (%esp)
	call	real_arithmetic@PLT
.L341:
.LBE13:
	.loc 1 1027 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L339:
	cmpl	$0, -20(%ebp)
	jne	.L340
	.loc 1 1045 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L344
.L345:
	.loc 1 1046 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L346
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L346
	.loc 1 1049 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	movl	32(%edx), %eax
	subl	$1, %eax
	movl	%eax, 32(%edx)
	.loc 1 1050 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L346
	.loc 1 1052 0
	cmpl	$0, -16(%ebp)
	jne	.L350
	.loc 1 1053 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L352
.L350:
	.loc 1 1055 0
	movl	-24(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 24(%edx)
.L352:
	.loc 1 1057 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
.L346:
	.loc 1 1045 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L344:
	cmpl	$0, -20(%ebp)
	jne	.L345
.LBE11:
	.loc 1 965 0
	movl	-16(%ebp), %eax
	movl	%eax, -28(%ebp)
.L324:
	cmpl	$0, -28(%ebp)
	jne	.L325
	.loc 1 1061 0
	subl	$-128, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE33:
	.size	propagate_freq, .-propagate_freq
	.type	estimate_loops_at_level, @function
estimate_loops_at_level:
.LFB34:
	.loc 1 1068 0
	pushl	%ebp
.LCFI90:
	movl	%esp, %ebp
.LCFI91:
	pushl	%ebx
.LCFI92:
	subl	$20, %esp
.LCFI93:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1071 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L357
.L358:
.LBB14:
	.loc 1 1077 0
	movl	-20(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	estimate_loops_at_level
	.loc 1 1079 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L359
	.loc 1 1082 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_latch_edge@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1083 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movzbl	24(%edx), %eax
	orl	$1, %eax
	movb	%al, 24(%edx)
.L359:
	.loc 1 1086 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_loop_body@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1087 0
	movl	$0, -8(%ebp)
	jmp	.L361
.L362:
	.loc 1 1088 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	movzbl	28(%edx), %eax
	orl	$1, %eax
	movb	%al, 28(%edx)
	.loc 1 1087 0
	addl	$1, -8(%ebp)
.L361:
	movl	-20(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L362
	.loc 1 1089 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1090 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_freq
.LBE14:
	.loc 1 1071 0
	movl	-20(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -20(%ebp)
.L357:
	cmpl	$0, -20(%ebp)
	jne	.L358
	.loc 1 1092 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	estimate_loops_at_level, .-estimate_loops_at_level
	.type	counts_to_freqs, @function
counts_to_freqs:
.LFB35:
	.loc 1 1098 0
	pushl	%ebp
.LCFI94:
	movl	%esp, %ebp
.LCFI95:
	pushl	%edi
.LCFI96:
	pushl	%esi
.LCFI97:
	pushl	%ebx
.LCFI98:
	subl	$76, %esp
.LCFI99:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1099 0
	movl	$1, -32(%ebp)
	movl	$0, -28(%ebp)
	.loc 1 1102 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L367
.L368:
	.loc 1 1103 0
	movl	-20(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	-32(%ebp), %esi
	movl	-28(%ebp), %edi
	movl	%esi, -48(%ebp)
	movl	%edi, -44(%ebp)
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	-44(%ebp), %edi
	cmpl	%edi, -36(%ebp)
	jg	.L369
	movl	-44(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	jl	.L370
	movl	-48(%ebp), %edx
	cmpl	%edx, -40(%ebp)
	jae	.L369
.L370:
	movl	-48(%ebp), %esi
	movl	-44(%ebp), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
.L369:
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 1102 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
.L367:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L368
	.loc 1 1105 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L372
.L373:
	.loc 1 1106 0
	movl	-20(%ebp), %eax
	movl	64(%eax), %edx
	movl	68(%eax), %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -60(%ebp)
	imull	$10000, -60(%ebp), %ecx
	imull	$0, -64(%ebp), %esi
	addl	%esi, %ecx
	movl	$10000, %esi
	movl	-64(%ebp), %eax
	mull	%esi
	movl	%eax, %esi
	movl	%edx, %edi
	addl	%edi, %ecx
	movl	%ecx, %edi
	movl	-32(%ebp), %edx
	movl	-28(%ebp), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-52(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	shrl	$31, %eax
	addl	-56(%ebp), %eax
	adcl	-52(%ebp), %edx
	shrdl	$1, %edx, %eax
	sarl	%edx
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 72(%eax)
	.loc 1 1105 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
.L372:
	cmpl	$0, -20(%ebp)
	jne	.L373
	.loc 1 1107 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE35:
	.size	counts_to_freqs, .-counts_to_freqs
	.section	.rodata
	.type	__FUNCTION__.14897, @object
	.size	__FUNCTION__.14897, 21
__FUNCTION__.14897:
	.string	"expensive_function_p"
	.text
.globl expensive_function_p
	.type	expensive_function_p, @function
expensive_function_p:
.LFB36:
	.loc 1 1117 0
	pushl	%ebp
.LCFI100:
	movl	%esp, %ebp
.LCFI101:
	pushl	%ebx
.LCFI102:
	subl	$36, %esp
.LCFI103:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1118 0
	movl	$0, -20(%ebp)
	.loc 1 1124 0
	cmpl	$10000, 8(%ebp)
	jle	.L377
	.loc 1 1125 0
	leal	__FUNCTION__.14897@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1125, 4(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L377:
	.loc 1 1130 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	jne	.L379
	.loc 1 1131 0
	movl	$1, -24(%ebp)
	jmp	.L381
.L379:
	.loc 1 1134 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	72(%eax), %eax
	imull	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1135 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L382
.L383:
.LBB15:
	.loc 1 1139 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L384
.L385:
	.loc 1 1141 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	active_insn_p@PLT
	testl	%eax, %eax
	je	.L386
	.loc 1 1143 0
	movl	-16(%ebp), %eax
	movl	72(%eax), %eax
	addl	%eax, -20(%ebp)
	.loc 1 1144 0
	movl	-20(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jbe	.L386
	.loc 1 1145 0
	movl	$1, -24(%ebp)
	jmp	.L381
.L386:
	.loc 1 1140 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L384:
	.loc 1 1139 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L385
.LBE15:
	.loc 1 1135 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
.L382:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L383
	.loc 1 1149 0
	movl	$0, -24(%ebp)
.L381:
	movl	-24(%ebp), %eax
	.loc 1 1150 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	expensive_function_p, .-expensive_function_p
	.type	estimate_bb_frequencies, @function
estimate_bb_frequencies:
.LFB37:
	.loc 1 1157 0
	pushl	%ebp
.LCFI104:
	movl	%esp, %ebp
.LCFI105:
	pushl	%esi
.LCFI106:
	pushl	%ebx
.LCFI107:
	subl	$112, %esp
.LCFI108:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1160 0
	movl	global_trees@GOT(%ebx), %eax
	movl	100(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1162 0
	movl	flag_branch_probabilities@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L393
	.loc 1 1163 0
	call	counts_to_freqs
	jmp	.L395
.L393:
	.loc 1 1166 0
	movl	$0, 24(%esp)
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	real_zero@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	real_from_integer@PLT
	.loc 1 1167 0
	movl	$0, 24(%esp)
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	real_one@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	real_from_integer@PLT
	.loc 1 1168 0
	movl	$0, 24(%esp)
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
	movl	$10000, 8(%esp)
	movl	$0, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	real_br_prob_base@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	real_from_integer@PLT
	.loc 1 1169 0
	movl	$0, 24(%esp)
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
	movl	$10000, 8(%esp)
	movl	$0, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	real_bb_freq_max@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	real_from_integer@PLT
	.loc 1 1170 0
	movl	$0, 24(%esp)
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
	movl	$2, 8(%esp)
	movl	$0, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	real_one_half@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	real_from_integer@PLT
	.loc 1 1171 0
	leal	real_one_half@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	real_one@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$71, 4(%esp)
	leal	real_one_half@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	real_arithmetic@PLT
	.loc 1 1172 0
	leal	real_br_prob_base@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	real_one@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$71, 4(%esp)
	leal	real_inv_br_prob_base@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	real_arithmetic@PLT
	.loc 1 1173 0
	leal	real_inv_br_prob_base@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	real_one@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$61, 4(%esp)
	leal	real_almost_one@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	real_arithmetic@PLT
	.loc 1 1175 0
	call	mark_dfs_back_edges@PLT
	.loc 1 1178 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L396
.L397:
.LBB16:
	.loc 1 1180 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1182 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	can_predict_insn_p
	xorl	$1, %eax
	testb	%al, %al
	je	.L398
.LBB17:
	.loc 1 1187 0
	movl	$0, -20(%ebp)
	.loc 1 1190 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L400
.L401:
	.loc 1 1192 0
	addl	$1, -20(%ebp)
	.loc 1 1193 0
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L402
	.loc 1 1190 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L400:
	cmpl	$0, -16(%ebp)
	jne	.L401
.L402:
	.loc 1 1196 0
	cmpl	$0, -16(%ebp)
	jne	.L398
	.loc 1 1197 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L405
.L406:
	.loc 1 1198 0
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	leal	10000(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-20(%ebp)
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 1197 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L405:
	cmpl	$0, -16(%ebp)
	jne	.L406
.L398:
.LBE17:
.LBE16:
	.loc 1 1178 0
	movl	-32(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -32(%ebp)
.L396:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jne	.L397
	.loc 1 1202 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	$10000, 28(%eax)
	.loc 1 1205 0
	movl	$36, (%esp)
	call	alloc_aux_for_blocks@PLT
	.loc 1 1206 0
	movl	$28, (%esp)
	call	alloc_aux_for_edges@PLT
	.loc 1 1207 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -32(%ebp)
	jmp	.L408
.L409:
.LBB18:
	.loc 1 1211 0
	movl	-32(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	movzbl	28(%edx), %eax
	andl	$-2, %eax
	movb	%al, 28(%edx)
	.loc 1 1212 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L410
.L411:
	.loc 1 1214 0
	movl	-12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %esi
	movl	$0, 24(%esp)
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	real_from_integer@PLT
	.loc 1 1216 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %ecx
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	leal	real_inv_br_prob_base@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$62, 4(%esp)
	movl	%edx, (%esp)
	call	real_arithmetic@PLT
	.loc 1 1212 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L410:
	cmpl	$0, -12(%ebp)
	jne	.L411
.LBE18:
	.loc 1 1207 0
	movl	-32(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -32(%ebp)
.L408:
	cmpl	$0, -32(%ebp)
	jne	.L409
	.loc 1 1224 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	estimate_loops_at_level
	.loc 1 1226 0
	leal	-56(%ebp), %edx
	movl	real_zero@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	movl	4+real_zero@GOTOFF(%ebx), %eax
	movl	%eax, 4(%edx)
	movl	8+real_zero@GOTOFF(%ebx), %eax
	movl	%eax, 8(%edx)
	movl	12+real_zero@GOTOFF(%ebx), %eax
	movl	%eax, 12(%edx)
	movl	16+real_zero@GOTOFF(%ebx), %eax
	movl	%eax, 16(%edx)
	movl	20+real_zero@GOTOFF(%ebx), %eax
	movl	%eax, 20(%edx)
	.loc 1 1227 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L414
.L415:
	.loc 1 1228 0
	movl	-32(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, 8(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$99, (%esp)
	call	real_compare@PLT
	testb	%al, %al
	je	.L416
	.loc 1 1230 0
	movl	-32(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	leal	-56(%ebp), %ecx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12(%ecx)
	movl	16(%edx), %eax
	movl	%eax, 16(%ecx)
	movl	20(%edx), %eax
	movl	%eax, 20(%ecx)
.L416:
	.loc 1 1227 0
	movl	-32(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -32(%ebp)
.L414:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jne	.L415
	.loc 1 1233 0
	leal	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	real_bb_freq_max@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$71, 4(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	real_arithmetic@PLT
	.loc 1 1235 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -32(%ebp)
	jmp	.L419
.L420:
.LBB19:
	.loc 1 1239 0
	movl	-32(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	leal	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$62, 4(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	real_arithmetic@PLT
	.loc 1 1241 0
	leal	real_one_half@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$60, 4(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	real_arithmetic@PLT
	.loc 1 1242 0
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	real_to_integer@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 72(%eax)
.LBE19:
	.loc 1 1235 0
	movl	-32(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -32(%ebp)
.L419:
	cmpl	$0, -32(%ebp)
	jne	.L420
	.loc 1 1245 0
	call	free_aux_for_blocks@PLT
	.loc 1 1246 0
	call	free_aux_for_edges@PLT
.L395:
	.loc 1 1248 0
	call	compute_function_frequency
	.loc 1 1249 0
	movl	flag_reorder_functions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L424
	.loc 1 1250 0
	call	choose_function_section
.L424:
	.loc 1 1251 0
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE37:
	.size	estimate_bb_frequencies, .-estimate_bb_frequencies
	.type	compute_function_frequency, @function
compute_function_frequency:
.LFB38:
	.loc 1 1256 0
	pushl	%ebp
.LCFI109:
	movl	%esp, %ebp
.LCFI110:
	pushl	%ebx
.LCFI111:
	subl	$20, %esp
.LCFI112:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1259 0
	movl	profile_info@GOT(%ebx), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L436
	movl	flag_branch_probabilities@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L428
	.loc 1 1261 0
	jmp	.L436
.L428:
	.loc 1 1262 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 300(%eax)
	.loc 1 1263 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L430
.L431:
	.loc 1 1265 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_hot_bb_p@PLT
	testb	%al, %al
	je	.L432
	.loc 1 1267 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$2, 300(%eax)
	.loc 1 1268 0
	jmp	.L436
.L432:
	.loc 1 1270 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	probably_never_executed_bb_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L434
	.loc 1 1271 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 300(%eax)
.L434:
	.loc 1 1263 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
.L430:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L431
.L436:
	.loc 1 1273 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	compute_function_frequency, .-compute_function_frequency
	.section	.rodata
.LC38:
	.string	"text.hot"
.LC39:
	.string	"text.unlikely"
	.text
	.type	choose_function_section, @function
choose_function_section:
.LFB39:
	.loc 1 1278 0
	pushl	%ebp
.LCFI113:
	movl	%esp, %ebp
.LCFI114:
	pushl	%esi
.LCFI115:
	pushl	%ebx
.LCFI116:
	subl	$16, %esp
.LCFI117:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1279 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	jne	.L446
	movl	targetm@GOT(%ebx), %eax
	movzbl	244(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L446
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	35(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L441
	.loc 1 1286 0
	jmp	.L446
.L441:
	.loc 1 1287 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	300(%eax), %eax
	cmpl	$2, %eax
	jne	.L443
	.loc 1 1288 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %esi
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	build_string@PLT
	movl	%eax, 80(%esi)
.L443:
	.loc 1 1290 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	300(%eax), %eax
	testl	%eax, %eax
	jne	.L446
	.loc 1 1291 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %esi
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$13, (%esp)
	call	build_string@PLT
	movl	%eax, 80(%esi)
.L446:
	.loc 1 1294 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE39:
	.size	choose_function_section, .-choose_function_section
	.local	real_zero
	.comm	real_zero,24,4
	.local	real_one
	.comm	real_one,24,4
	.local	real_almost_one
	.comm	real_almost_one,24,4
	.local	real_br_prob_base
	.comm	real_br_prob_base,24,4
	.local	real_inv_br_prob_base
	.comm	real_inv_br_prob_base,24,4
	.local	real_one_half
	.comm	real_one_half,24,4
	.local	real_bb_freq_max
	.comm	real_bb_freq_max,24,4
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
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI6-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI11-.LCFI7
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
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
	.long	.LCFI12-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI17-.LCFI13
	.byte	0x83
	.uleb128 0x5
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
	.long	.LCFI18-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI23-.LCFI19
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI24-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI29-.LCFI25
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI30-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI33-.LCFI31
	.byte	0x83
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
	.long	.LCFI34-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI37-.LCFI35
	.byte	0x83
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
	.long	.LCFI38-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI41-.LCFI39
	.byte	0x83
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
	.long	.LCFI42-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI45-.LCFI43
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI46-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI51-.LCFI47
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI52-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI56-.LCFI53
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI57-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI61-.LCFI58
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI62-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI63-.LCFI62
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI65-.LCFI63
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI66-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI67-.LCFI66
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI69-.LCFI67
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI70-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI73-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI74-.LCFI73
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI76-.LCFI74
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI77-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI78-.LCFI77
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI80-.LCFI78
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI81-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI82-.LCFI81
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI84-.LCFI82
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI85-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI86-.LCFI85
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI89-.LCFI86
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI90-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI91-.LCFI90
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI93-.LCFI91
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI94-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI95-.LCFI94
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI99-.LCFI95
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI100-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI101-.LCFI100
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI103-.LCFI101
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI104-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI105-.LCFI104
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI108-.LCFI105
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI109-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI110-.LCFI109
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI112-.LCFI110
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI113-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI114-.LCFI113
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI117-.LCFI114
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE48:
	.file 2 "../../../kgccfe/gnu/basic-block.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/MIPS/config.h"
	.file 5 "../../../kgccfe/gnu/machmode.h"
	.file 6 "../../../kgccfe/gnu/bitmap.h"
	.file 7 "../../../kgccfe/gnu/tree.h"
	.file 8 "../../../kgccfe/gnu/real.h"
	.file 9 "../../../kgccfe/gnu/hashtable.h"
	.file 10 "../../../kgccfe/gnu/location.h"
	.file 11 "../../../kgccfe/gnu/function.h"
	.file 12 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 13 "../../../kgccfe/omp_types.h"
	.file 14 "../../../kgccfe/gnu/sbitmap.h"
	.file 15 "../../../kgccfe/gnu/predict.h"
	.file 16 "../../../kgccfe/gnu/varray.h"
	.file 17 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 18 "../../../kgccfe/gnu/regs.h"
	.file 19 "../../../kgccfe/gnu/flags.h"
	.file 20 "../../../kgccfe/gnu/output.h"
	.file 21 "/usr/include/stdio.h"
	.file 22 "/usr/include/libio.h"
	.file 23 "/usr/include/bits/types.h"
	.file 24 "../../../kgccfe/gnu/profile.h"
	.file 25 "../../../kgccfe/gnu/params.h"
	.file 26 "../../../kgccfe/gnu/target.h"
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
.LLST2:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
	.long	.LCFI24-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI24-.Ltext0
	.long	.LCFI25-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI25-.Ltext0
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
	.long	.LCFI30-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI30-.Ltext0
	.long	.LCFI31-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI31-.Ltext0
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
	.long	.LCFI34-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI34-.Ltext0
	.long	.LCFI35-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI35-.Ltext0
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
	.long	.LCFI38-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI38-.Ltext0
	.long	.LCFI39-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI39-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
	.long	.LCFI42-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI42-.Ltext0
	.long	.LCFI43-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI43-.Ltext0
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
	.long	.LCFI46-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI46-.Ltext0
	.long	.LCFI47-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI47-.Ltext0
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
	.long	.LCFI52-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI52-.Ltext0
	.long	.LCFI53-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI53-.Ltext0
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
	.long	.LCFI57-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI57-.Ltext0
	.long	.LCFI58-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI58-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
	.long	.LCFI62-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI62-.Ltext0
	.long	.LCFI63-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI63-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
	.long	.LCFI66-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI66-.Ltext0
	.long	.LCFI67-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI67-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
	.long	.LCFI70-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI70-.Ltext0
	.long	.LCFI71-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI71-.Ltext0
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
	.long	.LCFI73-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI73-.Ltext0
	.long	.LCFI74-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI74-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
	.long	.LCFI77-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI77-.Ltext0
	.long	.LCFI78-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI78-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI81-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI81-.Ltext0
	.long	.LCFI82-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI82-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
	.long	.LCFI85-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI85-.Ltext0
	.long	.LCFI86-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI86-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
	.long	.LCFI90-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI90-.Ltext0
	.long	.LCFI91-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI91-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
	.long	.LCFI94-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI94-.Ltext0
	.long	.LCFI95-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI95-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
	.long	.LCFI100-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI100-.Ltext0
	.long	.LCFI101-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI101-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI104-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI104-.Ltext0
	.long	.LCFI105-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI105-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
	.long	.LCFI109-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI109-.Ltext0
	.long	.LCFI110-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI110-.Ltext0
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
	.long	.LCFI113-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI113-.Ltext0
	.long	.LCFI114-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI114-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x87cf
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/predict.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x4
	.byte	0xc
	.long	0xa7
	.uleb128 0x3
	.byte	0x4
	.long	0xad
	.uleb128 0x4
	.long	0x19d
	.string	"rtx_def"
	.byte	0xc
	.byte	0x4
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x8a
	.long	0xaee
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
	.long	0x7f6
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
	.long	0x3bd
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
	.long	0x3bd
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
	.long	0x3bd
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
	.long	0x3bd
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
	.long	0x3bd
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
	.long	0x3bd
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
	.long	0x3bd
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
	.long	0x3bd
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
	.long	0x1705
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x4
	.byte	0xe
	.long	0x1aa
	.uleb128 0x3
	.byte	0x4
	.long	0x1b0
	.uleb128 0x4
	.long	0x1e5
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x4
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x1715
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x4
	.byte	0x10
	.long	0x1f1
	.uleb128 0x3
	.byte	0x4
	.long	0x1f7
	.uleb128 0x7
	.long	0x2d1
	.string	"tree_node"
	.byte	0x94
	.byte	0x4
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x7
	.value	0x855
	.long	0x399e
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x7
	.value	0x856
	.long	0x3cb8
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x7
	.value	0x857
	.long	0x3d00
	.uleb128 0x9
	.string	"vector"
	.byte	0x7
	.value	0x858
	.long	0x3e6f
	.uleb128 0x9
	.string	"string"
	.byte	0x7
	.value	0x859
	.long	0x3dad
	.uleb128 0x9
	.string	"complex"
	.byte	0x7
	.value	0x85a
	.long	0x3e1a
	.uleb128 0x9
	.string	"identifier"
	.byte	0x7
	.value	0x85b
	.long	0x3ef5
	.uleb128 0x9
	.string	"decl"
	.byte	0x7
	.value	0x85c
	.long	0x4f83
	.uleb128 0x9
	.string	"type"
	.byte	0x7
	.value	0x85d
	.long	0x415a
	.uleb128 0x9
	.string	"list"
	.byte	0x7
	.value	0x85e
	.long	0x3f2c
	.uleb128 0x9
	.string	"vec"
	.byte	0x7
	.value	0x85f
	.long	0x3f73
	.uleb128 0x9
	.string	"exp"
	.byte	0x7
	.value	0x860
	.long	0x3fc4
	.uleb128 0x9
	.string	"block"
	.byte	0x7
	.value	0x861
	.long	0x4010
	.uleb128 0x9
	.string	"omp"
	.byte	0x7
	.value	0x863
	.long	0x5922
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d7
	.uleb128 0xa
	.long	0x2dc
	.uleb128 0xb
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.long	0x3bd
	.string	"mips_args"
	.byte	0x40
	.byte	0xc
	.value	0xaaa
	.uleb128 0xd
	.string	"gp_reg_found"
	.byte	0xc
	.value	0xaad
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"arg_number"
	.byte	0xc
	.value	0xab0
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"num_gprs"
	.byte	0xc
	.value	0xab5
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"num_fprs"
	.byte	0xc
	.value	0xab8
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stack_words"
	.byte	0xc
	.value	0xabb
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"fp_code"
	.byte	0xc
	.value	0xac8
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"prototype"
	.byte	0xc
	.value	0xacb
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"num_adjusts"
	.byte	0xc
	.value	0xad3
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"adjust"
	.byte	0xc
	.value	0xad4
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xe
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	0x3d4
	.long	0x9c
	.uleb128 0x10
	.long	0x3d4
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.string	"CUMULATIVE_ARGS"
	.byte	0xc
	.value	0xad5
	.long	0x2eb
	.uleb128 0x2
	.string	"size_t"
	.byte	0x11
	.byte	0xd6
	.long	0x3bd
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
	.byte	0x17
	.byte	0x3b
	.long	0x459
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x17
	.byte	0x90
	.long	0x4a3
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x17
	.byte	0x91
	.long	0x484
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2dc
	.uleb128 0x2
	.string	"FILE"
	.byte	0x15
	.byte	0x2e
	.long	0x4d4
	.uleb128 0x13
	.long	0x74f
	.long	.LASF2
	.byte	0x94
	.byte	0x15
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x16
	.value	0x10c
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x16
	.value	0x111
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x16
	.value	0x112
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x16
	.value	0x113
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x16
	.value	0x114
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x16
	.value	0x115
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x16
	.value	0x116
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x16
	.value	0x117
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x16
	.value	0x118
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x16
	.value	0x11a
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x16
	.value	0x11b
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x16
	.value	0x11c
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x16
	.value	0x11e
	.long	0x7b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x16
	.value	0x120
	.long	0x7b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x16
	.value	0x122
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x16
	.value	0x126
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x16
	.value	0x128
	.long	0x494
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x16
	.value	0x12c
	.long	0x412
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x16
	.value	0x12d
	.long	0x43d
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x16
	.value	0x12e
	.long	0x7bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x16
	.value	0x132
	.long	0x7cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x16
	.value	0x13b
	.long	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x16
	.value	0x144
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x16
	.value	0x145
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x16
	.value	0x146
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x16
	.value	0x147
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x16
	.value	0x148
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x16
	.value	0x14a
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x16
	.value	0x14c
	.long	0x7d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x755
	.uleb128 0xa
	.long	0x401
	.uleb128 0x3
	.byte	0x4
	.long	0x401
	.uleb128 0x14
	.string	"_IO_lock_t"
	.byte	0x16
	.byte	0xb0
	.uleb128 0x4
	.long	0x7b1
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x16
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x16
	.byte	0xb7
	.long	0x7b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x16
	.byte	0xb8
	.long	0x7b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x16
	.byte	0xbc
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x76e
	.uleb128 0x3
	.byte	0x4
	.long	0x4d4
	.uleb128 0xf
	.long	0x7cd
	.long	0x2dc
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x760
	.uleb128 0xf
	.long	0x7e3
	.long	0x2dc
	.uleb128 0x10
	.long	0x3d4
	.byte	0x27
	.byte	0x0
	.uleb128 0xa
	.long	0x2e4
	.uleb128 0x3
	.byte	0x4
	.long	0x2e4
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x7ee
	.uleb128 0x16
	.long	0xa3f
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.uleb128 0x17
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x17
	.string	"BImode"
	.sleb128 1
	.uleb128 0x17
	.string	"QImode"
	.sleb128 2
	.uleb128 0x17
	.string	"HImode"
	.sleb128 3
	.uleb128 0x17
	.string	"SImode"
	.sleb128 4
	.uleb128 0x17
	.string	"DImode"
	.sleb128 5
	.uleb128 0x17
	.string	"TImode"
	.sleb128 6
	.uleb128 0x17
	.string	"OImode"
	.sleb128 7
	.uleb128 0x17
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x17
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x17
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x17
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x17
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x17
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x17
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x17
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x17
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x17
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x17
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x17
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x17
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x17
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x17
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x17
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x17
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x17
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x17
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x17
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x17
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x17
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x17
	.string	"COImode"
	.sleb128 30
	.uleb128 0x17
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x17
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x17
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x17
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x17
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x17
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x17
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x17
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x17
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x17
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x17
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x17
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x17
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x17
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x17
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x17
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x17
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x17
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x17
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x17
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x17
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x17
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x17
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x17
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x18
	.long	0xaee
	.long	.LASF3
	.byte	0x4
	.byte	0x5
	.byte	0x2c
	.uleb128 0x17
	.string	"MODE_RANDOM"
	.sleb128 0
	.uleb128 0x17
	.string	"MODE_INT"
	.sleb128 1
	.uleb128 0x17
	.string	"MODE_FLOAT"
	.sleb128 2
	.uleb128 0x17
	.string	"MODE_PARTIAL_INT"
	.sleb128 3
	.uleb128 0x17
	.string	"MODE_CC"
	.sleb128 4
	.uleb128 0x17
	.string	"MODE_COMPLEX_INT"
	.sleb128 5
	.uleb128 0x17
	.string	"MODE_COMPLEX_FLOAT"
	.sleb128 6
	.uleb128 0x17
	.string	"MODE_VECTOR_INT"
	.sleb128 7
	.uleb128 0x17
	.string	"MODE_VECTOR_FLOAT"
	.sleb128 8
	.uleb128 0x17
	.string	"MAX_MODE_CLASS"
	.sleb128 9
	.byte	0x0
	.uleb128 0x16
	.long	0x12bd
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x2f
	.uleb128 0x17
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x17
	.string	"NIL"
	.sleb128 1
	.uleb128 0x17
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x17
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x17
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x17
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x17
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x17
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x17
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x17
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x17
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x17
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x17
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x17
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x17
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x17
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x17
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x17
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x17
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x17
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x17
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x17
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x17
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x17
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x17
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x17
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x17
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x17
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x17
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x17
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x17
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x17
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x17
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x17
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x17
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x17
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x17
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x17
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x17
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x17
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x17
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x17
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x17
	.string	"INSN"
	.sleb128 42
	.uleb128 0x17
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x17
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x17
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x17
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x17
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x17
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x17
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x17
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x17
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x17
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x17
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x17
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x17
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x17
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x17
	.string	"SET"
	.sleb128 57
	.uleb128 0x17
	.string	"USE"
	.sleb128 58
	.uleb128 0x17
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x17
	.string	"CALL"
	.sleb128 60
	.uleb128 0x17
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x17
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x17
	.string	"RESX"
	.sleb128 63
	.uleb128 0x17
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x17
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x17
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x17
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x17
	.string	"CONST"
	.sleb128 68
	.uleb128 0x17
	.string	"PC"
	.sleb128 69
	.uleb128 0x17
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x17
	.string	"REG"
	.sleb128 71
	.uleb128 0x17
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x17
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x17
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x17
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x17
	.string	"MEM"
	.sleb128 76
	.uleb128 0x17
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x17
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x17
	.string	"CC0"
	.sleb128 79
	.uleb128 0x17
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x17
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x17
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x17
	.string	"COND"
	.sleb128 83
	.uleb128 0x17
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x17
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x17
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x17
	.string	"NEG"
	.sleb128 87
	.uleb128 0x17
	.string	"MULT"
	.sleb128 88
	.uleb128 0x17
	.string	"DIV"
	.sleb128 89
	.uleb128 0x17
	.string	"MOD"
	.sleb128 90
	.uleb128 0x17
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x17
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x17
	.string	"AND"
	.sleb128 93
	.uleb128 0x17
	.string	"IOR"
	.sleb128 94
	.uleb128 0x17
	.string	"XOR"
	.sleb128 95
	.uleb128 0x17
	.string	"NOT"
	.sleb128 96
	.uleb128 0x17
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x17
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x17
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x17
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x17
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x17
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x17
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x17
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x17
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x17
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x17
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x17
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x17
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x17
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x17
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x17
	.string	"NE"
	.sleb128 112
	.uleb128 0x17
	.string	"EQ"
	.sleb128 113
	.uleb128 0x17
	.string	"GE"
	.sleb128 114
	.uleb128 0x17
	.string	"GT"
	.sleb128 115
	.uleb128 0x17
	.string	"LE"
	.sleb128 116
	.uleb128 0x17
	.string	"LT"
	.sleb128 117
	.uleb128 0x17
	.string	"GEU"
	.sleb128 118
	.uleb128 0x17
	.string	"GTU"
	.sleb128 119
	.uleb128 0x17
	.string	"LEU"
	.sleb128 120
	.uleb128 0x17
	.string	"LTU"
	.sleb128 121
	.uleb128 0x17
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x17
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x17
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x17
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x17
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x17
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x17
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x17
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x17
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x17
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x17
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x17
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x17
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x17
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x17
	.string	"FIX"
	.sleb128 136
	.uleb128 0x17
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x17
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x17
	.string	"ABS"
	.sleb128 139
	.uleb128 0x17
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x17
	.string	"FFS"
	.sleb128 141
	.uleb128 0x17
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x17
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x17
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x17
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x17
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x17
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x17
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x17
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x17
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x17
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x17
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x17
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x17
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x17
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x17
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x17
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x17
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x17
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x17
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x17
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x17
	.string	"PHI"
	.sleb128 162
	.uleb128 0x17
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x19
	.long	0x1397
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x3bd
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
	.long	0x3bd
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
	.long	0x3bd
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
	.long	0x3bd
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
	.long	0x3bd
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
	.long	0x3bd
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
	.long	0x3bd
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
	.long	0x3bd
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
	.long	0x12bd
	.uleb128 0x13
	.long	0x140e
	.long	.LASF4
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x6b
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x6c
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x6d
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF4
	.byte	0x3
	.byte	0x6e
	.long	0x13b2
	.uleb128 0x7
	.long	0x14eb
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x1b
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x459
	.uleb128 0x1b
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x2e4
	.uleb128 0x1b
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x3bd
	.uleb128 0x1b
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x2d1
	.uleb128 0x1b
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x9c
	.uleb128 0x1b
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x19d
	.uleb128 0x1b
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x7f6
	.uleb128 0x1b
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0x1397
	.uleb128 0x1b
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x14ff
	.uleb128 0x1b
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x1567
	.uleb128 0x1b
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e5
	.uleb128 0x1b
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x16ea
	.uleb128 0x1b
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x16f0
	.byte	0x0
	.uleb128 0x1c
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x14eb
	.uleb128 0x4
	.long	0x1567
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x6
	.string	"first"
	.byte	0x6
	.byte	0x3d
	.long	0x5b11
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x6
	.byte	0x3e
	.long	0x5b11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x6
	.byte	0x3f
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x6
	.byte	0x40
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1505
	.uleb128 0x4
	.long	0x16ea
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x6
	.string	"head"
	.byte	0x2
	.byte	0xb5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x2
	.byte	0xb5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x2
	.byte	0xb8
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x2
	.byte	0xb9
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x2
	.byte	0xbc
	.long	0x61f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x2
	.byte	0xbc
	.long	0x61f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x2
	.byte	0xc1
	.long	0x612e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x2
	.byte	0xc5
	.long	0x612e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x2
	.byte	0xcb
	.long	0x612e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x2
	.byte	0xcd
	.long	0x612e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x2
	.byte	0xd0
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x2
	.byte	0xd3
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x2
	.byte	0xd6
	.long	0x16ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x2
	.byte	0xd6
	.long	0x16ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x2
	.byte	0xd9
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x2
	.byte	0xdc
	.long	0x6470
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x2
	.byte	0xdf
	.long	0x613c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x1d
	.long	.LASF5
	.byte	0x2
	.byte	0xe2
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1d
	.long	.LASF6
	.byte	0x2
	.byte	0xe5
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x156d
	.uleb128 0x3
	.byte	0x4
	.long	0x140e
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0x1419
	.uleb128 0xf
	.long	0x1715
	.long	0x16f6
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1725
	.long	0x9c
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x175d
	.string	"location_s"
	.byte	0x8
	.byte	0xa
	.byte	0x1c
	.uleb128 0x6
	.string	"file"
	.byte	0xa
	.byte	0x1e
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line"
	.byte	0xa
	.byte	0x21
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0xa
	.byte	0x23
	.long	0x172b
	.uleb128 0x16
	.long	0x2091
	.string	"tree_code"
	.byte	0x4
	.byte	0x7
	.byte	0x27
	.uleb128 0x17
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x17
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x17
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x17
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x17
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x17
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x17
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x17
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x17
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x17
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x17
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x17
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x17
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x17
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x17
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x17
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x17
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x17
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x17
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x17
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x17
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x17
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x17
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x17
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x17
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x17
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x17
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x17
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x17
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x17
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x17
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x17
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x17
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x17
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x17
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x17
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x17
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x17
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x17
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x17
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x17
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x17
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x17
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x17
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x17
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x17
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x17
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x17
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x17
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x17
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x17
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x17
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x17
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x17
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x17
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x17
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x17
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x17
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x17
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x17
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x17
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x17
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x17
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x17
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x17
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x17
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x17
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x17
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x17
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x17
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x17
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x17
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x17
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x17
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x17
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x17
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x17
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x17
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x17
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x17
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x17
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x17
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x17
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x17
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x17
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x17
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x17
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x17
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x17
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x17
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x17
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x17
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x17
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x17
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x17
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x17
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x17
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x17
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x17
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x17
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x17
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x17
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x17
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x17
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x17
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x17
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x17
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x17
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x17
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x17
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x17
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x17
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x17
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x17
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x17
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x17
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x17
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x17
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x17
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x17
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x17
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x17
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x17
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x17
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x17
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x17
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x17
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x17
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x17
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x17
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x17
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x17
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x17
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x17
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x17
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x17
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x17
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x17
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x17
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x17
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x17
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x17
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x17
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x17
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x17
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x17
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x17
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x17
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x17
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x17
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x17
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x17
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x7
	.byte	0x31
	.long	0x3bd
	.uleb128 0x4
	.long	0x20e1
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x7
	.byte	0x32
	.uleb128 0x6
	.string	"block"
	.byte	0x7
	.byte	0x32
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset"
	.byte	0x7
	.byte	0x32
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x7
	.byte	0x36
	.long	0x20eb
	.uleb128 0x1c
	.string	"st"
	.byte	0x1
	.uleb128 0x18
	.long	0x2140
	.long	.LASF7
	.byte	0x4
	.byte	0x7
	.byte	0x5a
	.uleb128 0x17
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x17
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x17
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x17
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x16
	.long	0x399e
	.string	"built_in_function"
	.byte	0x4
	.byte	0x7
	.byte	0x69
	.uleb128 0x17
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x17
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x17
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x17
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x17
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x17
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x17
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x17
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x17
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x17
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x17
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x17
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x17
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x17
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x17
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x17
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x17
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x17
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x17
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x17
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x17
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x17
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x17
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x17
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x17
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x17
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x17
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x17
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x17
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x17
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x17
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x17
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x17
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x17
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x17
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x17
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x17
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x17
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x17
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x17
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x17
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x17
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x17
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x17
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x17
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x17
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x17
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x17
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x17
	.string	"BUILT_IN_FLOOR"
	.sleb128 48
	.uleb128 0x17
	.string	"BUILT_IN_FLOORF"
	.sleb128 49
	.uleb128 0x17
	.string	"BUILT_IN_FLOORL"
	.sleb128 50
	.uleb128 0x17
	.string	"BUILT_IN_POW"
	.sleb128 51
	.uleb128 0x17
	.string	"BUILT_IN_TAN"
	.sleb128 52
	.uleb128 0x17
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 53
	.uleb128 0x17
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 54
	.uleb128 0x17
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 55
	.uleb128 0x17
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 56
	.uleb128 0x17
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 57
	.uleb128 0x17
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 58
	.uleb128 0x17
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 59
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC"
	.sleb128 60
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN"
	.sleb128 61
	.uleb128 0x17
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 62
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 63
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 64
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA"
	.sleb128 65
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 66
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 67
	.uleb128 0x17
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 68
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACD"
	.sleb128 69
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 70
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 71
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 72
	.uleb128 0x17
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 73
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 74
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 75
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 76
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 77
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 78
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 79
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 80
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 81
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 82
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 83
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 84
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 85
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 86
	.uleb128 0x17
	.string	"BUILD_IN_C3_PTR"
	.sleb128 87
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 88
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 89
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 90
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 91
	.uleb128 0x17
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 92
	.uleb128 0x17
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 93
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 94
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 95
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 96
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 97
	.uleb128 0x17
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 98
	.uleb128 0x17
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 99
	.uleb128 0x17
	.string	"BUILD_IN_C3_DADD"
	.sleb128 100
	.uleb128 0x17
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 101
	.uleb128 0x17
	.string	"BUILD_IN_C3_FFT"
	.sleb128 102
	.uleb128 0x17
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 103
	.uleb128 0x17
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 104
	.uleb128 0x17
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 105
	.uleb128 0x17
	.string	"BUILD_IN_EXTRACT"
	.sleb128 106
	.uleb128 0x17
	.string	"BUILD_IN_C3_BITR"
	.sleb128 107
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 108
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 109
	.uleb128 0x17
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 110
	.uleb128 0x17
	.string	"BUILD_IN_C3_STORE"
	.sleb128 111
	.uleb128 0x17
	.string	"BUILD_IN_C3_REVB"
	.sleb128 112
	.uleb128 0x17
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 113
	.uleb128 0x17
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 114
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 115
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 116
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 117
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 118
	.uleb128 0x17
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 119
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 120
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 121
	.uleb128 0x17
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 122
	.uleb128 0x17
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 123
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 124
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 125
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 126
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 127
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 128
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 129
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 130
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 131
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 132
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 133
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 134
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 135
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 136
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 137
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 138
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 139
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 140
	.uleb128 0x17
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 141
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 142
	.uleb128 0x17
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 143
	.uleb128 0x17
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 144
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 145
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 146
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 147
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 148
	.uleb128 0x17
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 149
	.uleb128 0x17
	.string	"BUILT_IN_C2_VRND"
	.sleb128 150
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 151
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 152
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 153
	.uleb128 0x17
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 154
	.uleb128 0x17
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 155
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 156
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 157
	.uleb128 0x17
	.string	"BUILT_IN_C2_SAD"
	.sleb128 158
	.uleb128 0x17
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 159
	.uleb128 0x17
	.string	"BUILT_IN_C2_SATD"
	.sleb128 160
	.uleb128 0x17
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 161
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 162
	.uleb128 0x17
	.string	"BUILT_IN_C2_BCST"
	.sleb128 163
	.uleb128 0x17
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 164
	.uleb128 0x17
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 165
	.uleb128 0x17
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 166
	.uleb128 0x17
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 167
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 168
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 169
	.uleb128 0x17
	.string	"BUILT_IN_C2_MULS"
	.sleb128 170
	.uleb128 0x17
	.string	"BUILT_IN_C2_MADS"
	.sleb128 171
	.uleb128 0x17
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 172
	.uleb128 0x17
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 173
	.uleb128 0x17
	.string	"BUILT_IN_C2_MOV"
	.sleb128 174
	.uleb128 0x17
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 175
	.uleb128 0x17
	.string	"BUILT_IN_C2_CLP"
	.sleb128 176
	.uleb128 0x17
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 177
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 178
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 179
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 180
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 181
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 182
	.uleb128 0x17
	.string	"BUILT_IN_C2_BOP"
	.sleb128 183
	.uleb128 0x17
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 184
	.uleb128 0x17
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 185
	.uleb128 0x17
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 186
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 187
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 188
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 189
	.uleb128 0x17
	.string	"BUILT_IN_C2_MED"
	.sleb128 190
	.uleb128 0x17
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 191
	.uleb128 0x17
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 192
	.uleb128 0x17
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 193
	.uleb128 0x17
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 194
	.uleb128 0x17
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 195
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 196
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 197
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 198
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 199
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 200
	.uleb128 0x17
	.string	"BUILT_IN_C2_FORK"
	.sleb128 201
	.uleb128 0x17
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 202
	.uleb128 0x17
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 203
	.uleb128 0x17
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 204
	.uleb128 0x17
	.string	"BUILT_IN_SQRT"
	.sleb128 205
	.uleb128 0x17
	.string	"BUILT_IN_SIN"
	.sleb128 206
	.uleb128 0x17
	.string	"BUILT_IN_COS"
	.sleb128 207
	.uleb128 0x17
	.string	"BUILT_IN_EXP"
	.sleb128 208
	.uleb128 0x17
	.string	"BUILT_IN_LOG"
	.sleb128 209
	.uleb128 0x17
	.string	"BUILT_IN_SQRTF"
	.sleb128 210
	.uleb128 0x17
	.string	"BUILT_IN_SINF"
	.sleb128 211
	.uleb128 0x17
	.string	"BUILT_IN_COSF"
	.sleb128 212
	.uleb128 0x17
	.string	"BUILT_IN_EXPF"
	.sleb128 213
	.uleb128 0x17
	.string	"BUILT_IN_LOGF"
	.sleb128 214
	.uleb128 0x17
	.string	"BUILT_IN_SQRTL"
	.sleb128 215
	.uleb128 0x17
	.string	"BUILT_IN_SINL"
	.sleb128 216
	.uleb128 0x17
	.string	"BUILT_IN_COSL"
	.sleb128 217
	.uleb128 0x17
	.string	"BUILT_IN_EXPL"
	.sleb128 218
	.uleb128 0x17
	.string	"BUILT_IN_LOGL"
	.sleb128 219
	.uleb128 0x17
	.string	"BUILT_IN_INF"
	.sleb128 220
	.uleb128 0x17
	.string	"BUILT_IN_INFF"
	.sleb128 221
	.uleb128 0x17
	.string	"BUILT_IN_INFL"
	.sleb128 222
	.uleb128 0x17
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 223
	.uleb128 0x17
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 224
	.uleb128 0x17
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 225
	.uleb128 0x17
	.string	"BUILT_IN_NAN"
	.sleb128 226
	.uleb128 0x17
	.string	"BUILT_IN_NANF"
	.sleb128 227
	.uleb128 0x17
	.string	"BUILT_IN_NANL"
	.sleb128 228
	.uleb128 0x17
	.string	"BUILT_IN_NANS"
	.sleb128 229
	.uleb128 0x17
	.string	"BUILT_IN_NANSF"
	.sleb128 230
	.uleb128 0x17
	.string	"BUILT_IN_NANSL"
	.sleb128 231
	.uleb128 0x17
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 232
	.uleb128 0x17
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 233
	.uleb128 0x17
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 234
	.uleb128 0x17
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 235
	.uleb128 0x17
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 236
	.uleb128 0x17
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 237
	.uleb128 0x17
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 238
	.uleb128 0x17
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 239
	.uleb128 0x17
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 240
	.uleb128 0x17
	.string	"BUILT_IN_APPLY"
	.sleb128 241
	.uleb128 0x17
	.string	"BUILT_IN_RETURN"
	.sleb128 242
	.uleb128 0x17
	.string	"BUILT_IN_SETJMP"
	.sleb128 243
	.uleb128 0x17
	.string	"BUILT_IN_LONGJMP"
	.sleb128 244
	.uleb128 0x17
	.string	"BUILT_IN_TRAP"
	.sleb128 245
	.uleb128 0x17
	.string	"BUILT_IN_PREFETCH"
	.sleb128 246
	.uleb128 0x17
	.string	"BUILT_IN_PRINTF"
	.sleb128 247
	.uleb128 0x17
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 248
	.uleb128 0x17
	.string	"BUILT_IN_PUTS"
	.sleb128 249
	.uleb128 0x17
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 250
	.uleb128 0x17
	.string	"BUILT_IN_SPRINTF"
	.sleb128 251
	.uleb128 0x17
	.string	"BUILT_IN_SCANF"
	.sleb128 252
	.uleb128 0x17
	.string	"BUILT_IN_SSCANF"
	.sleb128 253
	.uleb128 0x17
	.string	"BUILT_IN_VPRINTF"
	.sleb128 254
	.uleb128 0x17
	.string	"BUILT_IN_VSCANF"
	.sleb128 255
	.uleb128 0x17
	.string	"BUILT_IN_VSSCANF"
	.sleb128 256
	.uleb128 0x17
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 257
	.uleb128 0x17
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 258
	.uleb128 0x17
	.string	"BUILT_IN_FPUTC"
	.sleb128 259
	.uleb128 0x17
	.string	"BUILT_IN_FPUTS"
	.sleb128 260
	.uleb128 0x17
	.string	"BUILT_IN_FWRITE"
	.sleb128 261
	.uleb128 0x17
	.string	"BUILT_IN_FPRINTF"
	.sleb128 262
	.uleb128 0x17
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 263
	.uleb128 0x17
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 264
	.uleb128 0x17
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 265
	.uleb128 0x17
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 266
	.uleb128 0x17
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 267
	.uleb128 0x17
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 268
	.uleb128 0x17
	.string	"BUILT_IN_ISGREATER"
	.sleb128 269
	.uleb128 0x17
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 270
	.uleb128 0x17
	.string	"BUILT_IN_ISLESS"
	.sleb128 271
	.uleb128 0x17
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 272
	.uleb128 0x17
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 273
	.uleb128 0x17
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 274
	.uleb128 0x17
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 275
	.uleb128 0x17
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 276
	.uleb128 0x17
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 277
	.uleb128 0x17
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 278
	.uleb128 0x17
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 279
	.uleb128 0x17
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 280
	.uleb128 0x17
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 281
	.uleb128 0x17
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 282
	.uleb128 0x17
	.string	"BUILT_IN_VA_START"
	.sleb128 283
	.uleb128 0x17
	.string	"BUILT_IN_STDARG_START"
	.sleb128 284
	.uleb128 0x17
	.string	"BUILT_IN_VA_END"
	.sleb128 285
	.uleb128 0x17
	.string	"BUILT_IN_VA_COPY"
	.sleb128 286
	.uleb128 0x17
	.string	"BUILT_IN_EXPECT"
	.sleb128 287
	.uleb128 0x17
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 288
	.uleb128 0x17
	.string	"BUILT_IN_NEW"
	.sleb128 289
	.uleb128 0x17
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 290
	.uleb128 0x17
	.string	"BUILT_IN_DELETE"
	.sleb128 291
	.uleb128 0x17
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 292
	.uleb128 0x17
	.string	"BUILT_IN_ABORT"
	.sleb128 293
	.uleb128 0x17
	.string	"BUILT_IN_EXIT"
	.sleb128 294
	.uleb128 0x17
	.string	"BUILT_IN__EXIT"
	.sleb128 295
	.uleb128 0x17
	.string	"BUILT_IN__EXIT2"
	.sleb128 296
	.uleb128 0x17
	.string	"END_BUILTINS"
	.sleb128 297
	.byte	0x0
	.uleb128 0x4
	.long	0x3c7c
	.string	"tree_common"
	.byte	0x10
	.byte	0x7
	.byte	0x8e
	.uleb128 0x6
	.string	"chain"
	.byte	0x7
	.byte	0x8f
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type"
	.byte	0x7
	.byte	0x90
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x7
	.byte	0x92
	.long	0x176f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"side_effects_flag"
	.byte	0x7
	.byte	0x94
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"constant_flag"
	.byte	0x7
	.byte	0x95
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"addressable_flag"
	.byte	0x7
	.byte	0x96
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"volatile_flag"
	.byte	0x7
	.byte	0x97
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"readonly_flag"
	.byte	0x7
	.byte	0x98
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unsigned_flag"
	.byte	0x7
	.byte	0x99
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"asm_written_flag"
	.byte	0x7
	.byte	0x9a
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unused_0"
	.byte	0x7
	.byte	0x9b
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"used_flag"
	.byte	0x7
	.byte	0x9d
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"nothrow_flag"
	.byte	0x7
	.byte	0x9e
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"static_flag"
	.byte	0x7
	.byte	0x9f
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"public_flag"
	.byte	0x7
	.byte	0xa0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"private_flag"
	.byte	0x7
	.byte	0xa1
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"protected_flag"
	.byte	0x7
	.byte	0xa2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"bounded_flag"
	.byte	0x7
	.byte	0xa3
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"deprecated_flag"
	.byte	0x7
	.byte	0xa4
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x7
	.byte	0xa6
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x7
	.byte	0xa7
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF10
	.byte	0x7
	.byte	0xa8
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF11
	.byte	0x7
	.byte	0xa9
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x7
	.byte	0xaa
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF13
	.byte	0x7
	.byte	0xab
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF14
	.byte	0x7
	.byte	0xac
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unused_1"
	.byte	0x7
	.byte	0xad
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"sbuf"
	.byte	0x7
	.byte	0xaf
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"sdram"
	.byte	0x7
	.byte	0xb0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v1buf"
	.byte	0x7
	.byte	0xb1
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v2buf"
	.byte	0x7
	.byte	0xb2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v4buf"
	.byte	0x7
	.byte	0xb3
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x3cb8
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x7
	.value	0x2f6
	.uleb128 0xd
	.string	"low"
	.byte	0x7
	.value	0x2f7
	.long	0x46a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"high"
	.byte	0x7
	.value	0x2f8
	.long	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x3d00
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x7
	.value	0x2ef
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x7
	.value	0x2f0
	.long	0x399e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x7
	.value	0x2f1
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"int_cst"
	.byte	0x7
	.value	0x2f9
	.long	0x3c7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x3d4e
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x7
	.value	0x30b
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x7
	.value	0x30c
	.long	0x399e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x7
	.value	0x30d
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real_cst_ptr"
	.byte	0x7
	.value	0x30e
	.long	0x3da7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x3da7
	.string	"real_value"
	.byte	0x18
	.byte	0x7
	.value	0x305
	.uleb128 0x5
	.string	"class"
	.byte	0x8
	.byte	0x37
	.long	0x6c55
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"sign"
	.byte	0x8
	.byte	0x39
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"exp"
	.byte	0x8
	.byte	0x3a
	.long	0x2e4
	.byte	0x4
	.byte	0x1d
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sig"
	.byte	0x8
	.byte	0x3b
	.long	0x6c9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3d4e
	.uleb128 0xc
	.long	0x3e14
	.string	"tree_string"
	.byte	0x20
	.byte	0x7
	.value	0x31f
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x7
	.value	0x320
	.long	0x399e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x7
	.value	0x321
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"length"
	.byte	0x7
	.value	0x322
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"pointer"
	.byte	0x7
	.value	0x323
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"st"
	.byte	0x7
	.value	0x325
	.long	0x3e14
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x20e1
	.uleb128 0xc
	.long	0x3e6f
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x7
	.value	0x32e
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x7
	.value	0x32f
	.long	0x399e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x7
	.value	0x330
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real"
	.byte	0x7
	.value	0x331
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"imag"
	.byte	0x7
	.value	0x332
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xc
	.long	0x3eb7
	.string	"tree_vector"
	.byte	0x18
	.byte	0x7
	.value	0x340
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x7
	.value	0x341
	.long	0x399e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x7
	.value	0x342
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"elements"
	.byte	0x7
	.value	0x343
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x13
	.long	0x3ef5
	.long	.LASF15
	.byte	0xc
	.byte	0x9
	.byte	0x19
	.uleb128 0x6
	.string	"str"
	.byte	0x9
	.byte	0x1c
	.long	0x74f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0x9
	.byte	0x1d
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"hash_value"
	.byte	0x9
	.byte	0x1e
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x3f2c
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x7
	.value	0x35f
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x7
	.value	0x360
	.long	0x399e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"id"
	.byte	0x7
	.value	0x361
	.long	0x3eb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x3f73
	.string	"tree_list"
	.byte	0x18
	.byte	0x7
	.value	0x369
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x7
	.value	0x36a
	.long	0x399e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"purpose"
	.byte	0x7
	.value	0x36b
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"value"
	.byte	0x7
	.value	0x36c
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x3fb4
	.string	"tree_vec"
	.byte	0x18
	.byte	0x7
	.value	0x377
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x7
	.value	0x378
	.long	0x399e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"length"
	.byte	0x7
	.value	0x379
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"a"
	.byte	0x7
	.value	0x37a
	.long	0x3fb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x3fc4
	.long	0x1e5
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x4010
	.string	"tree_exp"
	.byte	0x18
	.byte	0x7
	.value	0x3bd
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x7
	.value	0x3be
	.long	0x399e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"complexity"
	.byte	0x7
	.value	0x3bf
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"operands"
	.byte	0x7
	.value	0x3c2
	.long	0x3fb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x4100
	.string	"tree_block"
	.byte	0x2c
	.byte	0x7
	.value	0x3f3
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x7
	.value	0x3f4
	.long	0x399e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"handler_block_flag"
	.byte	0x7
	.value	0x3f6
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x21
	.long	.LASF16
	.byte	0x7
	.value	0x3f7
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.string	"block_num"
	.byte	0x7
	.value	0x3f8
	.long	0x3bd
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"vars"
	.byte	0x7
	.value	0x3fa
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"subblocks"
	.byte	0x7
	.value	0x3fb
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"supercontext"
	.byte	0x7
	.value	0x3fc
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1f
	.long	.LASF17
	.byte	0x7
	.value	0x3fd
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"fragment_origin"
	.byte	0x7
	.value	0x3fe
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"fragment_chain"
	.byte	0x7
	.value	0x3ff
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x22
	.long	0x4147
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x7
	.value	0x562
	.uleb128 0x9
	.string	"address"
	.byte	0x7
	.value	0x563
	.long	0x2e4
	.uleb128 0x9
	.string	"pointer"
	.byte	0x7
	.value	0x564
	.long	0x4c2
	.uleb128 0x9
	.string	"die"
	.byte	0x7
	.value	0x565
	.long	0x4154
	.byte	0x0
	.uleb128 0x1c
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4147
	.uleb128 0xc
	.long	0x44ac
	.string	"tree_type"
	.byte	0x74
	.byte	0x7
	.value	0x53f
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x7
	.value	0x540
	.long	0x399e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"values"
	.byte	0x7
	.value	0x541
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"size"
	.byte	0x7
	.value	0x542
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1f
	.long	.LASF18
	.byte	0x7
	.value	0x543
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1f
	.long	.LASF19
	.byte	0x7
	.value	0x544
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"uid"
	.byte	0x7
	.value	0x545
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"precision"
	.byte	0x7
	.value	0x547
	.long	0x3bd
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"mode"
	.byte	0x7
	.value	0x548
	.long	0x7f6
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"string_flag"
	.byte	0x7
	.value	0x54a
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"no_force_blk_flag"
	.byte	0x7
	.value	0x54b
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"needs_constructing_flag"
	.byte	0x7
	.value	0x54c
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"transparent_union_flag"
	.byte	0x7
	.value	0x54d
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"packed_flag"
	.byte	0x7
	.value	0x54e
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"restrict_flag"
	.byte	0x7
	.value	0x54f
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF20
	.byte	0x7
	.value	0x550
	.long	0x3bd
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF8
	.byte	0x7
	.value	0x552
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF9
	.byte	0x7
	.value	0x553
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF10
	.byte	0x7
	.value	0x554
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF11
	.byte	0x7
	.value	0x555
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF12
	.byte	0x7
	.value	0x556
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF13
	.byte	0x7
	.value	0x557
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF14
	.byte	0x7
	.value	0x558
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF21
	.byte	0x7
	.value	0x559
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"defer_expansion"
	.byte	0x7
	.value	0x55c
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"align"
	.byte	0x7
	.value	0x55f
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"pointer_to"
	.byte	0x7
	.value	0x560
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"reference_to"
	.byte	0x7
	.value	0x561
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"symtab"
	.byte	0x7
	.value	0x566
	.long	0x4100
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x1f
	.long	.LASF22
	.byte	0x7
	.value	0x568
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"minval"
	.byte	0x7
	.value	0x569
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"maxval"
	.byte	0x7
	.value	0x56a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"next_variant"
	.byte	0x7
	.value	0x56b
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"main_variant"
	.byte	0x7
	.value	0x56c
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"binfo"
	.byte	0x7
	.value	0x56d
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"context"
	.byte	0x7
	.value	0x56e
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"alias_set"
	.byte	0x7
	.value	0x56f
	.long	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1f
	.long	.LASF23
	.byte	0x7
	.value	0x571
	.long	0x44b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"ty_idx"
	.byte	0x7
	.value	0x573
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"field_ids_used"
	.byte	0x7
	.value	0x574
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"dst_id"
	.byte	0x7
	.value	0x575
	.long	0x20a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x1c
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x44ac
	.uleb128 0xc
	.long	0x4503
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x7
	.value	0x7f0
	.uleb128 0x20
	.string	"align"
	.byte	0x7
	.value	0x7f1
	.long	0x3bd
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"off_align"
	.byte	0x7
	.value	0x7f2
	.long	0x3bd
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x22
	.long	0x4538
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x7
	.value	0x7e7
	.uleb128 0x9
	.string	"f"
	.byte	0x7
	.value	0x7ea
	.long	0x2140
	.uleb128 0x9
	.string	"i"
	.byte	0x7
	.value	0x7ed
	.long	0x459
	.uleb128 0x9
	.string	"a"
	.byte	0x7
	.value	0x7f3
	.long	0x44be
	.byte	0x0
	.uleb128 0x22
	.long	0x4577
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x7
	.value	0x808
	.uleb128 0x9
	.string	"f"
	.byte	0x7
	.value	0x809
	.long	0x4f2f
	.uleb128 0x9
	.string	"r"
	.byte	0x7
	.value	0x80a
	.long	0x9c
	.uleb128 0x9
	.string	"t"
	.byte	0x7
	.value	0x80b
	.long	0x1e5
	.uleb128 0x9
	.string	"i"
	.byte	0x7
	.value	0x80c
	.long	0x2e4
	.byte	0x0
	.uleb128 0x23
	.long	0x4f2f
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x1f
	.uleb128 0x6
	.string	"eh"
	.byte	0xb
	.byte	0xb5
	.long	0x68dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0xb
	.byte	0xb6
	.long	0x68f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0xb
	.byte	0xb7
	.long	0x68f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0xb
	.byte	0xb8
	.long	0x68fd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0xb
	.byte	0xb9
	.long	0x6913
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1d
	.long	.LASF22
	.byte	0xb
	.byte	0xbe
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"decl"
	.byte	0xb
	.byte	0xc1
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0xb
	.byte	0xc4
	.long	0x4f2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0xb
	.byte	0xc9
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.long	.LASF24
	.byte	0xb
	.byte	0xce
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0xb
	.byte	0xd3
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0xb
	.byte	0xd7
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0xb
	.byte	0xdb
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0xb
	.byte	0xdf
	.long	0x3db
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0xb
	.byte	0xe5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0xb
	.byte	0xe8
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0xb
	.byte	0xec
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0xb
	.byte	0xf0
	.long	0x6930
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0xb
	.byte	0xf3
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0xb
	.byte	0xf8
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xb
	.byte	0xfe
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xb
	.value	0x102
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xb
	.value	0x107
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"x_cleanup_label"
	.byte	0xb
	.value	0x10d
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.string	"x_return_label"
	.byte	0xb
	.value	0x112
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.string	"computed_goto_common_label"
	.byte	0xb
	.value	0x115
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"computed_goto_common_reg"
	.byte	0xb
	.value	0x116
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"x_save_expr_regs"
	.byte	0xb
	.value	0x11a
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"x_stack_slot_list"
	.byte	0xb
	.value	0x11e
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.string	"x_rtl_expr_chain"
	.byte	0xb
	.value	0x121
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"x_tail_recursion_label"
	.byte	0xb
	.value	0x125
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.string	"x_tail_recursion_reentry"
	.byte	0xb
	.value	0x128
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.string	"x_arg_pointer_save_area"
	.byte	0xb
	.value	0x12e
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"x_clobber_return_insn"
	.byte	0xb
	.value	0x133
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"x_frame_offset"
	.byte	0xb
	.value	0x138
	.long	0x459
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"x_context_display"
	.byte	0xb
	.value	0x13d
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"x_trampoline_list"
	.byte	0xb
	.value	0x146
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"x_parm_birth_insn"
	.byte	0xb
	.value	0x149
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"x_last_parm_insn"
	.byte	0xb
	.value	0x14d
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"x_max_parm_reg"
	.byte	0xb
	.value	0x151
	.long	0x3bd
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"x_parm_reg_stack_loc"
	.byte	0xb
	.value	0x157
	.long	0x1725
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0xb
	.value	0x15a
	.long	0x6942
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"x_temp_slot_level"
	.byte	0xb
	.value	0x15d
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"x_var_temp_slot_level"
	.byte	0xb
	.value	0x160
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"x_target_temp_slot_level"
	.byte	0xb
	.value	0x166
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"fixup_var_refs_queue"
	.byte	0xb
	.value	0x16a
	.long	0x65e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"inlinable"
	.byte	0xb
	.value	0x16d
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"no_debugging_symbols"
	.byte	0xb
	.value	0x16e
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xd
	.string	"original_arg_vector"
	.byte	0xb
	.value	0x16f
	.long	0x19d
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"original_decl_initial"
	.byte	0xb
	.value	0x170
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.string	"inl_last_parm_insn"
	.byte	0xb
	.value	0x173
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.string	"inl_max_label_num"
	.byte	0xb
	.value	0x175
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"funcdef_no"
	.byte	0xb
	.value	0x178
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.string	"machine"
	.byte	0xb
	.value	0x17d
	.long	0x695b
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.string	"stack_alignment_needed"
	.byte	0xb
	.value	0x17f
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.string	"preferred_stack_boundary"
	.byte	0xb
	.value	0x181
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xd
	.string	"language"
	.byte	0xb
	.value	0x184
	.long	0x6975
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.string	"epilogue_delay_list"
	.byte	0xb
	.value	0x18a
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x20
	.string	"returns_struct"
	.byte	0xb
	.value	0x190
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"returns_pcc_struct"
	.byte	0xb
	.value	0x194
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"returns_pointer"
	.byte	0xb
	.value	0x197
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"needs_context"
	.byte	0xb
	.value	0x19a
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_setjmp"
	.byte	0xb
	.value	0x19d
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_longjmp"
	.byte	0xb
	.value	0x1a0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_alloca"
	.byte	0xb
	.value	0x1a4
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_eh_return"
	.byte	0xb
	.value	0x1a7
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"has_nonlocal_label"
	.byte	0xb
	.value	0x1ab
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"has_nonlocal_goto"
	.byte	0xb
	.value	0x1af
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"contains_functions"
	.byte	0xb
	.value	0x1b2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"has_computed_jump"
	.byte	0xb
	.value	0x1b5
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"is_thunk"
	.byte	0xb
	.value	0x1ba
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"all_throwers_are_sibcalls"
	.byte	0xb
	.value	0x1c1
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"instrument_entry_exit"
	.byte	0xb
	.value	0x1c5
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"arc_profile"
	.byte	0xb
	.value	0x1c8
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"profile"
	.byte	0xb
	.value	0x1cb
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"limit_stack"
	.byte	0xb
	.value	0x1cf
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"stdarg"
	.byte	0xb
	.value	0x1d2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"x_whole_function_mode_p"
	.byte	0xb
	.value	0x1d8
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xb
	.value	0x1e1
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"uses_const_pool"
	.byte	0xb
	.value	0x1e4
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"uses_pic_offset_table"
	.byte	0xb
	.value	0x1e7
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"uses_eh_lsda"
	.byte	0xb
	.value	0x1ea
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"arg_pointer_save_area_init"
	.byte	0xb
	.value	0x1ed
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.long	.LASF25
	.byte	0xb
	.value	0x1fa
	.long	0x6867
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"max_jumptable_ents"
	.byte	0xb
	.value	0x1fe
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4577
	.uleb128 0x24
	.long	0x4f6d
	.byte	0x4
	.byte	0x7
	.value	0x81e
	.uleb128 0x9
	.string	"st"
	.byte	0x7
	.value	0x81f
	.long	0x3e14
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x7
	.value	0x820
	.long	0x2091
	.uleb128 0x9
	.string	"field_id"
	.byte	0x7
	.value	0x821
	.long	0x3bd
	.byte	0x0
	.uleb128 0x24
	.long	0x4f83
	.byte	0x4
	.byte	0x7
	.value	0x823
	.uleb128 0x9
	.string	"st2"
	.byte	0x7
	.value	0x824
	.long	0x3e14
	.byte	0x0
	.uleb128 0xc
	.long	0x56bf
	.string	"tree_decl"
	.byte	0x94
	.byte	0x7
	.value	0x7a0
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x7
	.value	0x7a1
	.long	0x399e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"locus"
	.byte	0x7
	.value	0x7a2
	.long	0x175d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"uid"
	.byte	0x7
	.value	0x7a3
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"size"
	.byte	0x7
	.value	0x7a4
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x20
	.string	"mode"
	.byte	0x7
	.value	0x7a5
	.long	0x7f6
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"external_flag"
	.byte	0x7
	.value	0x7a7
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"nonlocal_flag"
	.byte	0x7
	.value	0x7a8
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"regdecl_flag"
	.byte	0x7
	.value	0x7a9
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"inline_flag"
	.byte	0x7
	.value	0x7aa
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"bit_field_flag"
	.byte	0x7
	.value	0x7ab
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"virtual_flag"
	.byte	0x7
	.value	0x7ac
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"ignored_flag"
	.byte	0x7
	.value	0x7ad
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.long	.LASF16
	.byte	0x7
	.value	0x7ae
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"sbuf_flag"
	.byte	0x7
	.value	0x7b2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"sdram_flag"
	.byte	0x7
	.value	0x7b3
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"v1buf_flag"
	.byte	0x7
	.value	0x7b4
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"v2buf_flag"
	.byte	0x7
	.value	0x7b5
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"v4buf_flag"
	.byte	0x7
	.value	0x7b6
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"in_system_header_flag"
	.byte	0x7
	.value	0x7ba
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"common_flag"
	.byte	0x7
	.value	0x7bb
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"defer_output"
	.byte	0x7
	.value	0x7bc
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"transparent_union"
	.byte	0x7
	.value	0x7bd
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"static_ctor_flag"
	.byte	0x7
	.value	0x7be
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"static_dtor_flag"
	.byte	0x7
	.value	0x7bf
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"artificial_flag"
	.byte	0x7
	.value	0x7c0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"weak_flag"
	.byte	0x7
	.value	0x7c1
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"non_addr_const_p"
	.byte	0x7
	.value	0x7c3
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"no_instrument_function_entry_exit"
	.byte	0x7
	.value	0x7c4
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"comdat_flag"
	.byte	0x7
	.value	0x7c5
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"malloc_flag"
	.byte	0x7
	.value	0x7c6
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"no_limit_stack"
	.byte	0x7
	.value	0x7c7
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF7
	.byte	0x7
	.value	0x7c8
	.long	0x20f0
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"pure_flag"
	.byte	0x7
	.value	0x7c9
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF20
	.byte	0x7
	.value	0x7cb
	.long	0x3bd
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"non_addressable"
	.byte	0x7
	.value	0x7cc
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF21
	.byte	0x7
	.value	0x7cd
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"uninlinable"
	.byte	0x7
	.value	0x7ce
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"thread_local_flag"
	.byte	0x7
	.value	0x7cf
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"inlined_function_flag"
	.byte	0x7
	.value	0x7d0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"noinline_attrib"
	.byte	0x7
	.value	0x7d2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF8
	.byte	0x7
	.value	0x7d5
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF9
	.byte	0x7
	.value	0x7d6
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF10
	.byte	0x7
	.value	0x7d7
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF11
	.byte	0x7
	.value	0x7d8
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF12
	.byte	0x7
	.value	0x7d9
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF13
	.byte	0x7
	.value	0x7da
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF14
	.byte	0x7
	.value	0x7db
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"lang_flag_7"
	.byte	0x7
	.value	0x7dc
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"syscall_linkage_flag"
	.byte	0x7
	.value	0x7df
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"widen_retval_flag"
	.byte	0x7
	.value	0x7e0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"promote_static"
	.byte	0x7
	.value	0x7e3
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"always_inline_attrib"
	.byte	0x7
	.value	0x7e4
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"u1"
	.byte	0x7
	.value	0x7f4
	.long	0x4503
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1f
	.long	.LASF18
	.byte	0x7
	.value	0x7f6
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1f
	.long	.LASF22
	.byte	0x7
	.value	0x7f7
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"context"
	.byte	0x7
	.value	0x7f8
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"arguments"
	.byte	0x7
	.value	0x7f9
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"result"
	.byte	0x7
	.value	0x7fa
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"initial"
	.byte	0x7
	.value	0x7fb
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1f
	.long	.LASF17
	.byte	0x7
	.value	0x7fc
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"assembler_name"
	.byte	0x7
	.value	0x7fd
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"section_name"
	.byte	0x7
	.value	0x7fe
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1f
	.long	.LASF19
	.byte	0x7
	.value	0x7ff
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"rtl"
	.byte	0x7
	.value	0x800
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"live_range_rtl"
	.byte	0x7
	.value	0x801
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"u2"
	.byte	0x7
	.value	0x80d
	.long	0x4538
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"saved_tree"
	.byte	0x7
	.value	0x810
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"inlined_fns"
	.byte	0x7
	.value	0x814
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"vindex"
	.byte	0x7
	.value	0x816
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"pointer_alias_set"
	.byte	0x7
	.value	0x817
	.long	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x1f
	.long	.LASF23
	.byte	0x7
	.value	0x819
	.long	0x56cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x20
	.string	"symtab_idx"
	.byte	0x7
	.value	0x81b
	.long	0x3bd
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x20
	.string	"label_defined"
	.byte	0x7
	.value	0x81c
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"sgi_u1"
	.byte	0x7
	.value	0x822
	.long	0x4f35
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.string	"sgi_u2"
	.byte	0x7
	.value	0x825
	.long	0x4f6d
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.string	"decl_dst_id"
	.byte	0x7
	.value	0x826
	.long	0x20a2
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.string	"sl_model_name"
	.byte	0x7
	.value	0x82a
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0x1c
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x56bf
	.uleb128 0x16
	.long	0x5922
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xd
	.byte	0x1e
	.uleb128 0x17
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x17
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x17
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x17
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x17
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x17
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x17
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x17
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x17
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x17
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x17
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x17
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x17
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x17
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x17
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x17
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x17
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x17
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x17
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x17
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x17
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x17
	.string	"ordered_cons_b"
	.sleb128 21
	.uleb128 0x17
	.string	"ordered_cons_e"
	.sleb128 22
	.uleb128 0x17
	.string	"options_dir"
	.sleb128 23
	.uleb128 0x17
	.string	"exec_freq_dir"
	.sleb128 24
	.uleb128 0x17
	.string	"sl2_sections_cons_b"
	.sleb128 25
	.uleb128 0x17
	.string	"sl2_minor_sections_cons_b"
	.sleb128 26
	.uleb128 0x17
	.string	"sl2_sections_cons_e"
	.sleb128 27
	.uleb128 0x17
	.string	"sl2_section_cons_b"
	.sleb128 28
	.uleb128 0x17
	.string	"sl2_section_cons_e"
	.sleb128 29
	.uleb128 0x17
	.string	"sl2_minor_section_cons_b"
	.sleb128 30
	.uleb128 0x17
	.string	"sl2_minor_section_cons_e"
	.sleb128 31
	.byte	0x0
	.uleb128 0xc
	.long	0x5971
	.string	"tree_omp"
	.byte	0x18
	.byte	0x7
	.value	0x832
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x7
	.value	0x833
	.long	0x399e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"choice"
	.byte	0x7
	.value	0x834
	.long	0x56d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"omp_clause_list"
	.byte	0x7
	.value	0x835
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x5a2c
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x7
	.value	0x9db
	.uleb128 0x1f
	.long	.LASF22
	.byte	0x7
	.value	0x9de
	.long	0x5a2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"min_length"
	.byte	0x7
	.value	0x9e0
	.long	0x7e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"max_length"
	.byte	0x7
	.value	0x9e3
	.long	0x7e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"decl_required"
	.byte	0x7
	.value	0x9eb
	.long	0x5a31
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"type_required"
	.byte	0x7
	.value	0x9ee
	.long	0x5a31
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xd
	.string	"function_type_required"
	.byte	0x7
	.value	0x9f3
	.long	0x5a31
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.string	"handler"
	.byte	0x7
	.value	0xa02
	.long	0x5a6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x2d1
	.uleb128 0xa
	.long	0x5a36
	.uleb128 0xb
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x25
	.long	0x5a63
	.byte	0x1
	.long	0x1e5
	.uleb128 0x26
	.long	0x5a63
	.uleb128 0x26
	.long	0x1e5
	.uleb128 0x26
	.long	0x1e5
	.uleb128 0x26
	.long	0x2e4
	.uleb128 0x26
	.long	0x5a69
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e5
	.uleb128 0x3
	.byte	0x4
	.long	0x5a36
	.uleb128 0xa
	.long	0x5a74
	.uleb128 0x3
	.byte	0x4
	.long	0x5a3f
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x6
	.byte	0x1d
	.long	0x428
	.uleb128 0x4
	.long	0x5ae5
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x6
	.byte	0x34
	.uleb128 0x6
	.string	"next"
	.byte	0x6
	.byte	0x35
	.long	0x5ae5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x6
	.byte	0x36
	.long	0x5ae5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x6
	.byte	0x37
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x6
	.byte	0x38
	.long	0x5aeb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5a8d
	.uleb128 0xf
	.long	0x5afb
	.long	0x5a7a
	.uleb128 0x10
	.long	0x3d4
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x6
	.byte	0x39
	.long	0x5a8d
	.uleb128 0x3
	.byte	0x4
	.long	0x5afb
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x6
	.byte	0x43
	.long	0x1567
	.uleb128 0x4
	.long	0x5b7f
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0xe
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0xe
	.byte	0x21
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0xe
	.byte	0x22
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0xe
	.byte	0x23
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0xe
	.byte	0x24
	.long	0x5b7f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	0x5b8f
	.long	0x46a
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xe
	.byte	0x25
	.long	0x5b9e
	.uleb128 0x3
	.byte	0x4
	.long	0x5b25
	.uleb128 0x4
	.long	0x5bda
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0x10
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0x10
	.byte	0x32
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0x10
	.byte	0x36
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x16
	.long	0x5d75
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0x10
	.byte	0x3c
	.uleb128 0x17
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x17
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x17
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x17
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x17
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x17
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x17
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x17
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x17
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x17
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x17
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x17
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x17
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x17
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x17
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x17
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x17
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x17
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x17
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x17
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x17
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x7
	.long	0x5e71
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x10
	.byte	0x55
	.uleb128 0x1b
	.string	"c"
	.byte	0x10
	.byte	0x56
	.long	0x7bd
	.uleb128 0x1b
	.string	"uc"
	.byte	0x10
	.byte	0x58
	.long	0x5e71
	.uleb128 0x1b
	.string	"s"
	.byte	0x10
	.byte	0x5a
	.long	0x5e81
	.uleb128 0x1b
	.string	"us"
	.byte	0x10
	.byte	0x5c
	.long	0x5e91
	.uleb128 0x1b
	.string	"i"
	.byte	0x10
	.byte	0x5e
	.long	0x5ea1
	.uleb128 0x1b
	.string	"u"
	.byte	0x10
	.byte	0x60
	.long	0x5eb1
	.uleb128 0x1b
	.string	"l"
	.byte	0x10
	.byte	0x62
	.long	0x5ec1
	.uleb128 0x1b
	.string	"ul"
	.byte	0x10
	.byte	0x64
	.long	0x5ed1
	.uleb128 0x1b
	.string	"hint"
	.byte	0x10
	.byte	0x66
	.long	0x5ee1
	.uleb128 0x1b
	.string	"uhint"
	.byte	0x10
	.byte	0x68
	.long	0x5b7f
	.uleb128 0x1b
	.string	"generic"
	.byte	0x10
	.byte	0x6a
	.long	0x5ef1
	.uleb128 0x1b
	.string	"cptr"
	.byte	0x10
	.byte	0x6c
	.long	0x5f01
	.uleb128 0x1b
	.string	"rtx"
	.byte	0x10
	.byte	0x6e
	.long	0x5f11
	.uleb128 0x1b
	.string	"rtvec"
	.byte	0x10
	.byte	0x70
	.long	0x5f21
	.uleb128 0x1b
	.string	"tree"
	.byte	0x10
	.byte	0x72
	.long	0x5f31
	.uleb128 0x1b
	.string	"bitmap"
	.byte	0x10
	.byte	0x74
	.long	0x5f41
	.uleb128 0x1b
	.string	"reg"
	.byte	0x10
	.byte	0x76
	.long	0x5f51
	.uleb128 0x1b
	.string	"const_equiv"
	.byte	0x10
	.byte	0x78
	.long	0x604d
	.uleb128 0x1b
	.string	"bb"
	.byte	0x10
	.byte	0x7a
	.long	0x605d
	.uleb128 0x1b
	.string	"te"
	.byte	0x10
	.byte	0x7c
	.long	0x606d
	.byte	0x0
	.uleb128 0xf
	.long	0x5e81
	.long	0x401
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5e91
	.long	0x44c
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5ea1
	.long	0x412
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5eb1
	.long	0x2e4
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5ec1
	.long	0x3bd
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5ed1
	.long	0x4a3
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5ee1
	.long	0x428
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5ef1
	.long	0x459
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5f01
	.long	0x4c0
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5f11
	.long	0x4c2
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5f21
	.long	0xa7
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5f31
	.long	0x1aa
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5f41
	.long	0x1f1
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5f51
	.long	0x1567
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5f61
	.long	0x6047
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x6047
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0x10
	.byte	0x76
	.uleb128 0x6
	.string	"first_uid"
	.byte	0x12
	.byte	0x31
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last_uid"
	.byte	0x12
	.byte	0x32
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"last_note_uid"
	.byte	0x12
	.byte	0x33
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sets"
	.byte	0x12
	.byte	0x36
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"refs"
	.byte	0x12
	.byte	0x39
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"freq"
	.byte	0x12
	.byte	0x3a
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"deaths"
	.byte	0x12
	.byte	0x3b
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"live_length"
	.byte	0x12
	.byte	0x3c
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"calls_crossed"
	.byte	0x12
	.byte	0x3d
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.long	.LASF26
	.byte	0x12
	.byte	0x3e
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"changes_mode"
	.byte	0x12
	.byte	0x3f
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5f61
	.uleb128 0xf
	.long	0x605d
	.long	0x5ba4
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x606d
	.long	0x16ea
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x607d
	.long	0x6088
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x607d
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x10
	.byte	0x7e
	.long	0x5d75
	.uleb128 0x4
	.long	0x6115
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x10
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0x10
	.byte	0x82
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0x10
	.byte	0x83
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0x10
	.byte	0x85
	.long	0x5bda
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF22
	.byte	0x10
	.byte	0x86
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0x10
	.byte	0x87
	.long	0x608e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x10
	.byte	0x8a
	.long	0x6128
	.uleb128 0x3
	.byte	0x4
	.long	0x60a1
	.uleb128 0x2
	.string	"regset"
	.byte	0x2
	.byte	0x22
	.long	0x5b17
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x2
	.byte	0x75
	.long	0x459
	.uleb128 0x4
	.long	0x61ee
	.string	"edge_def"
	.byte	0x28
	.byte	0x2
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x2
	.byte	0x7a
	.long	0x61ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x2
	.byte	0x7a
	.long	0x61ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x2
	.byte	0x7d
	.long	0x16ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x2
	.byte	0x7d
	.long	0x16ea
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x2
	.byte	0x80
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x2
	.byte	0x83
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1d
	.long	.LASF6
	.byte	0x2
	.byte	0x85
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1d
	.long	.LASF27
	.byte	0x2
	.byte	0x86
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x2
	.byte	0x87
	.long	0x613c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x614d
	.uleb128 0x2
	.string	"edge"
	.byte	0x2
	.byte	0x89
	.long	0x61ee
	.uleb128 0x4
	.long	0x6470
	.string	"loop"
	.byte	0x80
	.byte	0x2
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0x2
	.value	0x176
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"header"
	.byte	0x2
	.value	0x179
	.long	0x6476
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0x2
	.value	0x17c
	.long	0x6476
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0x2
	.value	0x17f
	.long	0x6476
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0x2
	.value	0x184
	.long	0x6499
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0x2
	.value	0x187
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"first"
	.byte	0x2
	.value	0x18b
	.long	0x6476
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0x2
	.value	0x18f
	.long	0x6476
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0x2
	.value	0x192
	.long	0x5b8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"num_nodes"
	.byte	0x2
	.value	0x195
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0x2
	.value	0x198
	.long	0x6499
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"num_entries"
	.byte	0x2
	.value	0x19b
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0x2
	.value	0x19e
	.long	0x6499
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"num_exits"
	.byte	0x2
	.value	0x1a1
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0x2
	.value	0x1a4
	.long	0x5b8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0x2
	.value	0x1a7
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0x2
	.value	0x1aa
	.long	0x649f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0x2
	.value	0x1ae
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0x2
	.value	0x1b1
	.long	0x6470
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0x2
	.value	0x1b4
	.long	0x6470
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"next"
	.byte	0x2
	.value	0x1b7
	.long	0x6470
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0x2
	.value	0x1ba
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0x2
	.value	0x1bd
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"vtop"
	.byte	0x2
	.value	0x1c3
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0x2
	.value	0x1c7
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0x2
	.value	0x1ca
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0x2
	.value	0x1cd
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0x2
	.value	0x1d1
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0x2
	.value	0x1d4
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0x2
	.value	0x1d7
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0x2
	.value	0x1e2
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"exit_count"
	.byte	0x2
	.value	0x1e6
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6200
	.uleb128 0x1a
	.long	.LASF26
	.byte	0x2
	.byte	0xe6
	.long	0x16ea
	.uleb128 0x27
	.long	.LASF28
	.byte	0x2
	.value	0x170
	.long	0x648d
	.uleb128 0x3
	.byte	0x4
	.long	0x6493
	.uleb128 0x28
	.long	.LASF28
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x61f4
	.uleb128 0x3
	.byte	0x4
	.long	0x6470
	.uleb128 0xc
	.long	0x64eb
	.string	"cfg"
	.byte	0xc
	.byte	0x2
	.value	0x201
	.uleb128 0xd
	.string	"dom"
	.byte	0x2
	.value	0x203
	.long	0x6481
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"dfs_order"
	.byte	0x2
	.value	0x206
	.long	0x7e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"rc_order"
	.byte	0x2
	.value	0x20a
	.long	0x7e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x657d
	.string	"loops"
	.byte	0x24
	.byte	0x2
	.value	0x1ec
	.uleb128 0xd
	.string	"num"
	.byte	0x2
	.value	0x1ee
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"levels"
	.byte	0x2
	.value	0x1f1
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"array"
	.byte	0x2
	.value	0x1f5
	.long	0x6470
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"parray"
	.byte	0x2
	.value	0x1fa
	.long	0x649f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"tree_root"
	.byte	0x2
	.value	0x1fd
	.long	0x6470
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"cfg"
	.byte	0x2
	.value	0x20b
	.long	0x64a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"shared_headers"
	.byte	0x2
	.value	0x20e
	.long	0x5b8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x4
	.long	0x65e3
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xb
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0xb
	.byte	0x18
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0xb
	.byte	0x19
	.long	0x7f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0xb
	.byte	0x1a
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0xb
	.byte	0x1b
	.long	0x65e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x657d
	.uleb128 0x13
	.long	0x6632
	.long	.LASF29
	.byte	0x10
	.byte	0xb
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0xb
	.byte	0x26
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0xb
	.byte	0x27
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.long	.LASF30
	.byte	0xb
	.byte	0x28
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0xb
	.byte	0x29
	.long	0x6632
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x65e9
	.uleb128 0x4
	.long	0x6787
	.string	"emit_status"
	.byte	0x34
	.byte	0xb
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0xb
	.byte	0x3a
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0xb
	.byte	0x3d
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0xb
	.byte	0x44
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0xb
	.byte	0x45
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1d
	.long	.LASF30
	.byte	0xb
	.byte	0x4a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1d
	.long	.LASF29
	.byte	0xb
	.byte	0x50
	.long	0x6632
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0xb
	.byte	0x54
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0xb
	.byte	0x58
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0xb
	.byte	0x59
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0xb
	.byte	0x5f
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0xb
	.byte	0x65
	.long	0x75a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0xb
	.byte	0x69
	.long	0x5a63
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0xb
	.byte	0x70
	.long	0x1725
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x6867
	.string	"expr_status"
	.byte	0x1c
	.byte	0xb
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0xb
	.byte	0x80
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0xb
	.byte	0x91
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0xb
	.byte	0x97
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0xb
	.byte	0x9c
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0xb
	.byte	0x9f
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0xb
	.byte	0xa2
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0xb
	.byte	0xa5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x29
	.long	0x68d1
	.long	.LASF25
	.byte	0x4
	.byte	0xb
	.value	0x1f1
	.uleb128 0x17
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x17
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x17
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1c
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x68d1
	.uleb128 0x1c
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x68e3
	.uleb128 0x3
	.byte	0x4
	.long	0x6787
	.uleb128 0x3
	.byte	0x4
	.long	0x6638
	.uleb128 0x1c
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6903
	.uleb128 0x1c
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6919
	.uleb128 0x1c
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6936
	.uleb128 0x1c
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6948
	.uleb128 0x1c
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6961
	.uleb128 0x16
	.long	0x6b6d
	.string	"br_predictor"
	.byte	0x4
	.byte	0xf
	.byte	0x18
	.uleb128 0x17
	.string	"PRED_COMBINED"
	.sleb128 0
	.uleb128 0x17
	.string	"PRED_DS_THEORY"
	.sleb128 1
	.uleb128 0x17
	.string	"PRED_FIRST_MATCH"
	.sleb128 2
	.uleb128 0x17
	.string	"PRED_NO_PREDICTION"
	.sleb128 3
	.uleb128 0x17
	.string	"PRED_UNCONDITIONAL"
	.sleb128 4
	.uleb128 0x17
	.string	"PRED_LOOP_ITERATIONS"
	.sleb128 5
	.uleb128 0x17
	.string	"PRED_BUILTIN_EXPECT"
	.sleb128 6
	.uleb128 0x17
	.string	"PRED_CONTINUE"
	.sleb128 7
	.uleb128 0x17
	.string	"PRED_NORETURN"
	.sleb128 8
	.uleb128 0x17
	.string	"PRED_LOOP_BRANCH"
	.sleb128 9
	.uleb128 0x17
	.string	"PRED_LOOP_EXIT"
	.sleb128 10
	.uleb128 0x17
	.string	"PRED_LOOP_CONDITION"
	.sleb128 11
	.uleb128 0x17
	.string	"PRED_LOOP_PRECONDITIONING"
	.sleb128 12
	.uleb128 0x17
	.string	"PRED_LOOP_HEADER"
	.sleb128 13
	.uleb128 0x17
	.string	"PRED_POINTER"
	.sleb128 14
	.uleb128 0x17
	.string	"PRED_OPCODE_POSITIVE"
	.sleb128 15
	.uleb128 0x17
	.string	"PRED_OPCODE_NONEQUAL"
	.sleb128 16
	.uleb128 0x17
	.string	"PRED_FPOPCODE"
	.sleb128 17
	.uleb128 0x17
	.string	"PRED_CALL"
	.sleb128 18
	.uleb128 0x17
	.string	"PRED_EARLY_RETURN"
	.sleb128 19
	.uleb128 0x17
	.string	"PRED_GOTO"
	.sleb128 20
	.uleb128 0x17
	.string	"PRED_CONST_RETURN"
	.sleb128 21
	.uleb128 0x17
	.string	"PRED_NEGATIVE_RETURN"
	.sleb128 22
	.uleb128 0x17
	.string	"PRED_NULL_RETURN"
	.sleb128 23
	.uleb128 0x17
	.string	"END_PREDICTORS"
	.sleb128 24
	.byte	0x0
	.uleb128 0x16
	.long	0x6b95
	.string	"prediction"
	.byte	0x4
	.byte	0xf
	.byte	0x20
	.uleb128 0x17
	.string	"NOT_TAKEN"
	.sleb128 0
	.uleb128 0x17
	.string	"TAKEN"
	.sleb128 1
	.byte	0x0
	.uleb128 0x13
	.long	0x6c55
	.long	.LASF31
	.byte	0x18
	.byte	0x18
	.byte	0x19
	.uleb128 0x6
	.string	"count_instrumented_edges"
	.byte	0x18
	.byte	0x1d
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"count_edges_instrumented_now"
	.byte	0x18
	.byte	0x22
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"current_function_cfg_checksum"
	.byte	0x18
	.byte	0x27
	.long	0x4a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"max_counter_in_program"
	.byte	0x18
	.byte	0x2c
	.long	0x613c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"count_profiles_merged"
	.byte	0x18
	.byte	0x30
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x16
	.long	0x6c9b
	.string	"real_value_class"
	.byte	0x4
	.byte	0x8
	.byte	0x24
	.uleb128 0x17
	.string	"rvc_zero"
	.sleb128 0
	.uleb128 0x17
	.string	"rvc_normal"
	.sleb128 1
	.uleb128 0x17
	.string	"rvc_inf"
	.sleb128 2
	.uleb128 0x17
	.string	"rvc_nan"
	.sleb128 3
	.byte	0x0
	.uleb128 0xf
	.long	0x6cab
	.long	0x428
	.uleb128 0x10
	.long	0x3d4
	.byte	0x4
	.byte	0x0
	.uleb128 0x13
	.long	0x6ce8
	.long	.LASF32
	.byte	0xc
	.byte	0x19
	.byte	0x2d
	.uleb128 0x6
	.string	"option"
	.byte	0x19
	.byte	0x30
	.long	0x5a2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"value"
	.byte	0x19
	.byte	0x32
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"help"
	.byte	0x19
	.byte	0x34
	.long	0x5a2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF32
	.byte	0x19
	.byte	0x35
	.long	0x6cab
	.uleb128 0x4
	.long	0x6d3b
	.string	"asm_int_op"
	.byte	0x10
	.byte	0x1a
	.byte	0x3a
	.uleb128 0x6
	.string	"hi"
	.byte	0x1a
	.byte	0x3b
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"si"
	.byte	0x1a
	.byte	0x3c
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"di"
	.byte	0x1a
	.byte	0x3d
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"ti"
	.byte	0x1a
	.byte	0x3e
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x6f71
	.string	"asm_out"
	.byte	0x70
	.byte	0x1a
	.byte	0x33
	.uleb128 0x6
	.string	"open_paren"
	.byte	0x1a
	.byte	0x35
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"close_paren"
	.byte	0x1a
	.byte	0x35
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"byte_op"
	.byte	0x1a
	.byte	0x38
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"aligned_op"
	.byte	0x1a
	.byte	0x3f
	.long	0x6cf3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"unaligned_op"
	.byte	0x1a
	.byte	0x3f
	.long	0x6cf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"integer"
	.byte	0x1a
	.byte	0x46
	.long	0x6f8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"globalize_label"
	.byte	0x1a
	.byte	0x49
	.long	0x6fa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"visibility"
	.byte	0x1a
	.byte	0x4d
	.long	0x6fbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"function_prologue"
	.byte	0x1a
	.byte	0x50
	.long	0x6fd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"function_end_prologue"
	.byte	0x1a
	.byte	0x53
	.long	0x6fe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"function_begin_epilogue"
	.byte	0x1a
	.byte	0x56
	.long	0x6fe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"function_epilogue"
	.byte	0x1a
	.byte	0x59
	.long	0x6fd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"named_section"
	.byte	0x1a
	.byte	0x5d
	.long	0x6fff
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"exception_section"
	.byte	0x1a
	.byte	0x60
	.long	0x7f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"eh_frame_section"
	.byte	0x1a
	.byte	0x63
	.long	0x7f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.string	"select_section"
	.byte	0x1a
	.byte	0x6a
	.long	0x701b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"select_rtx_section"
	.byte	0x1a
	.byte	0x6e
	.long	0x7037
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.string	"unique_section"
	.byte	0x1a
	.byte	0x73
	.long	0x6fbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.string	"constructor"
	.byte	0x1a
	.byte	0x76
	.long	0x704e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.string	"destructor"
	.byte	0x1a
	.byte	0x79
	.long	0x704e
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x6
	.string	"output_mi_thunk"
	.byte	0x1a
	.byte	0x80
	.long	0x7074
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x6
	.string	"can_output_mi_thunk"
	.byte	0x1a
	.byte	0x8b
	.long	0x7099
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x25
	.long	0x6f8b
	.byte	0x1
	.long	0x5a36
	.uleb128 0x26
	.long	0x9c
	.uleb128 0x26
	.long	0x3bd
	.uleb128 0x26
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f71
	.uleb128 0x2a
	.long	0x6fa2
	.byte	0x1
	.uleb128 0x26
	.long	0x6fa2
	.uleb128 0x26
	.long	0x2d1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c8
	.uleb128 0x3
	.byte	0x4
	.long	0x6f91
	.uleb128 0x2a
	.long	0x6fbf
	.byte	0x1
	.uleb128 0x26
	.long	0x1e5
	.uleb128 0x26
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6fae
	.uleb128 0x2a
	.long	0x6fd6
	.byte	0x1
	.uleb128 0x26
	.long	0x6fa2
	.uleb128 0x26
	.long	0x459
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6fc5
	.uleb128 0x2a
	.long	0x6fe8
	.byte	0x1
	.uleb128 0x26
	.long	0x6fa2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6fdc
	.uleb128 0x2a
	.long	0x6fff
	.byte	0x1
	.uleb128 0x26
	.long	0x2d1
	.uleb128 0x26
	.long	0x3bd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6fee
	.uleb128 0x2a
	.long	0x701b
	.byte	0x1
	.uleb128 0x26
	.long	0x1e5
	.uleb128 0x26
	.long	0x2e4
	.uleb128 0x26
	.long	0x46a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7005
	.uleb128 0x2a
	.long	0x7037
	.byte	0x1
	.uleb128 0x26
	.long	0x7f6
	.uleb128 0x26
	.long	0x9c
	.uleb128 0x26
	.long	0x46a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7021
	.uleb128 0x2a
	.long	0x704e
	.byte	0x1
	.uleb128 0x26
	.long	0x9c
	.uleb128 0x26
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x703d
	.uleb128 0x2a
	.long	0x7074
	.byte	0x1
	.uleb128 0x26
	.long	0x6fa2
	.uleb128 0x26
	.long	0x1e5
	.uleb128 0x26
	.long	0x459
	.uleb128 0x26
	.long	0x459
	.uleb128 0x26
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7054
	.uleb128 0x25
	.long	0x7099
	.byte	0x1
	.long	0x5a36
	.uleb128 0x26
	.long	0x1e5
	.uleb128 0x26
	.long	0x459
	.uleb128 0x26
	.long	0x459
	.uleb128 0x26
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x707a
	.uleb128 0x4
	.long	0x725a
	.string	"sched"
	.byte	0x40
	.byte	0x1a
	.byte	0x93
	.uleb128 0x6
	.string	"adjust_cost"
	.byte	0x1a
	.byte	0x97
	.long	0x7279
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"adjust_priority"
	.byte	0x1a
	.byte	0x9b
	.long	0x7294
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"issue_rate"
	.byte	0x1a
	.byte	0xa0
	.long	0x72a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"variable_issue"
	.byte	0x1a
	.byte	0xa4
	.long	0x72c5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"md_init"
	.byte	0x1a
	.byte	0xa7
	.long	0x72e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"md_finish"
	.byte	0x1a
	.byte	0xaa
	.long	0x72f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"reorder"
	.byte	0x1a
	.byte	0xae
	.long	0x7322
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"reorder2"
	.byte	0x1a
	.byte	0xaf
	.long	0x7322
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"use_dfa_pipeline_interface"
	.byte	0x1a
	.byte	0xb4
	.long	0x72a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"init_dfa_pre_cycle_insn"
	.byte	0x1a
	.byte	0xc2
	.long	0x7f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"dfa_pre_cycle_insn"
	.byte	0x1a
	.byte	0xc3
	.long	0x732e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"init_dfa_post_cycle_insn"
	.byte	0x1a
	.byte	0xc4
	.long	0x7f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"dfa_post_cycle_insn"
	.byte	0x1a
	.byte	0xc5
	.long	0x732e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x1a
	.byte	0xcd
	.long	0x72a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"init_dfa_bubbles"
	.byte	0x1a
	.byte	0xd8
	.long	0x7f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"dfa_bubble"
	.byte	0x1a
	.byte	0xd9
	.long	0x7344
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x25
	.long	0x7279
	.byte	0x1
	.long	0x2e4
	.uleb128 0x26
	.long	0x9c
	.uleb128 0x26
	.long	0x9c
	.uleb128 0x26
	.long	0x9c
	.uleb128 0x26
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x725a
	.uleb128 0x25
	.long	0x7294
	.byte	0x1
	.long	0x2e4
	.uleb128 0x26
	.long	0x9c
	.uleb128 0x26
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x727f
	.uleb128 0x2b
	.byte	0x1
	.long	0x2e4
	.uleb128 0x3
	.byte	0x4
	.long	0x729a
	.uleb128 0x25
	.long	0x72c5
	.byte	0x1
	.long	0x2e4
	.uleb128 0x26
	.long	0x6fa2
	.uleb128 0x26
	.long	0x2e4
	.uleb128 0x26
	.long	0x9c
	.uleb128 0x26
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x72a6
	.uleb128 0x2a
	.long	0x72e1
	.byte	0x1
	.uleb128 0x26
	.long	0x6fa2
	.uleb128 0x26
	.long	0x2e4
	.uleb128 0x26
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x72cb
	.uleb128 0x2a
	.long	0x72f8
	.byte	0x1
	.uleb128 0x26
	.long	0x6fa2
	.uleb128 0x26
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x72e7
	.uleb128 0x25
	.long	0x7322
	.byte	0x1
	.long	0x2e4
	.uleb128 0x26
	.long	0x6fa2
	.uleb128 0x26
	.long	0x2e4
	.uleb128 0x26
	.long	0x1725
	.uleb128 0x26
	.long	0x7e8
	.uleb128 0x26
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x72fe
	.uleb128 0x2b
	.byte	0x1
	.long	0x9c
	.uleb128 0x3
	.byte	0x4
	.long	0x7328
	.uleb128 0x25
	.long	0x7344
	.byte	0x1
	.long	0x9c
	.uleb128 0x26
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7334
	.uleb128 0x4
	.long	0x7633
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x1a
	.byte	0x30
	.uleb128 0x6
	.string	"asm_out"
	.byte	0x1a
	.byte	0x8f
	.long	0x6d3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sched"
	.byte	0x1a
	.byte	0xda
	.long	0x709f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x6
	.string	"merge_decl_attributes"
	.byte	0x1a
	.byte	0xdd
	.long	0x7648
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x6
	.string	"merge_type_attributes"
	.byte	0x1a
	.byte	0xe0
	.long	0x7648
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x6
	.string	"attribute_table"
	.byte	0x1a
	.byte	0xe4
	.long	0x764e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x6
	.string	"comp_type_attributes"
	.byte	0x1a
	.byte	0xe9
	.long	0x766e
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x6
	.string	"set_default_type_attributes"
	.byte	0x1a
	.byte	0xec
	.long	0x7680
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x6
	.string	"insert_attributes"
	.byte	0x1a
	.byte	0xef
	.long	0x7697
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x6
	.string	"function_attribute_inlinable_p"
	.byte	0x1a
	.byte	0xf3
	.long	0x76ad
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x6
	.string	"ms_bitfield_layout_p"
	.byte	0x1a
	.byte	0xf7
	.long	0x76ad
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x6
	.string	"init_builtins"
	.byte	0x1a
	.byte	0xfa
	.long	0x7f0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x6
	.string	"expand_builtin"
	.byte	0x1a
	.byte	0xfd
	.long	0x76d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"section_type_flags"
	.byte	0x1a
	.value	0x103
	.long	0x76f7
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"cannot_modify_jumps_p"
	.byte	0x1a
	.value	0x107
	.long	0x7703
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"cannot_force_const_mem"
	.byte	0x1a
	.value	0x10a
	.long	0x7719
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"in_small_data_p"
	.byte	0x1a
	.value	0x10d
	.long	0x76ad
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"binds_local_p"
	.byte	0x1a
	.value	0x111
	.long	0x76ad
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"encode_section_info"
	.byte	0x1a
	.value	0x115
	.long	0x6fbf
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"strip_name_encoding"
	.byte	0x1a
	.value	0x118
	.long	0x772f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"have_named_sections"
	.byte	0x1a
	.value	0x11d
	.long	0x5a36
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"have_ctors_dtors"
	.byte	0x1a
	.value	0x121
	.long	0x5a36
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xd
	.string	"have_tls"
	.byte	0x1a
	.value	0x124
	.long	0x5a36
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xd
	.string	"have_srodata_section"
	.byte	0x1a
	.value	0x127
	.long	0x5a36
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xd
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x1a
	.value	0x12a
	.long	0x5a36
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x25
	.long	0x7648
	.byte	0x1
	.long	0x1e5
	.uleb128 0x26
	.long	0x1e5
	.uleb128 0x26
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7633
	.uleb128 0x3
	.byte	0x4
	.long	0x7654
	.uleb128 0xa
	.long	0x5971
	.uleb128 0x25
	.long	0x766e
	.byte	0x1
	.long	0x2e4
	.uleb128 0x26
	.long	0x1e5
	.uleb128 0x26
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7659
	.uleb128 0x2a
	.long	0x7680
	.byte	0x1
	.uleb128 0x26
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7674
	.uleb128 0x2a
	.long	0x7697
	.byte	0x1
	.uleb128 0x26
	.long	0x1e5
	.uleb128 0x26
	.long	0x5a63
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7686
	.uleb128 0x25
	.long	0x76ad
	.byte	0x1
	.long	0x5a36
	.uleb128 0x26
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x769d
	.uleb128 0x25
	.long	0x76d7
	.byte	0x1
	.long	0x9c
	.uleb128 0x26
	.long	0x1e5
	.uleb128 0x26
	.long	0x9c
	.uleb128 0x26
	.long	0x9c
	.uleb128 0x26
	.long	0x7f6
	.uleb128 0x26
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x76b3
	.uleb128 0x25
	.long	0x76f7
	.byte	0x1
	.long	0x3bd
	.uleb128 0x26
	.long	0x1e5
	.uleb128 0x26
	.long	0x2d1
	.uleb128 0x26
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x76dd
	.uleb128 0x2b
	.byte	0x1
	.long	0x5a36
	.uleb128 0x3
	.byte	0x4
	.long	0x76fd
	.uleb128 0x25
	.long	0x7719
	.byte	0x1
	.long	0x5a36
	.uleb128 0x26
	.long	0x9c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7709
	.uleb128 0x25
	.long	0x772f
	.byte	0x1
	.long	0x2d1
	.uleb128 0x26
	.long	0x2d1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x771f
	.uleb128 0x13
	.long	0x7770
	.long	.LASF33
	.byte	0xc
	.byte	0x1
	.byte	0x65
	.uleb128 0x1d
	.long	.LASF22
	.byte	0x1
	.byte	0x66
	.long	0x5a2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"hitrate"
	.byte	0x1
	.byte	0x67
	.long	0x7e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.long	.LASF6
	.byte	0x1
	.byte	0x69
	.long	0x7e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2c
	.long	0x77a6
	.byte	0x1
	.string	"maybe_hot_bb_p"
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.long	0x5a36
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2d
	.string	"bb"
	.byte	0x1
	.byte	0x82
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2c
	.long	0x77e0
	.byte	0x1
	.string	"probably_cold_bb_p"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.long	0x5a36
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2d
	.string	"bb"
	.byte	0x1
	.byte	0x93
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2c
	.long	0x7824
	.byte	0x1
	.string	"probably_never_executed_bb_p"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.long	0x5a36
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2d
	.string	"bb"
	.byte	0x1
	.byte	0xa3
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x7876
	.string	"predicted_by_p"
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.long	0x5a36
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2d
	.string	"bb"
	.byte	0x1
	.byte	0xb1
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF34
	.byte	0x1
	.byte	0xb2
	.long	0x697b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"note"
	.byte	0x1
	.byte	0xb4
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x31
	.long	0x78d3
	.byte	0x1
	.string	"predict_insn"
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2f
	.long	.LASF35
	.byte	0x1
	.byte	0xc0
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF34
	.byte	0x1
	.byte	0xc2
	.long	0x697b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.byte	0xc1
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF36
	.long	0x84e7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13871
	.byte	0x0
	.uleb128 0x31
	.long	0x7934
	.byte	0x1
	.string	"predict_insn_def"
	.byte	0x1
	.byte	0xd8
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x2f
	.long	.LASF35
	.byte	0x1
	.byte	0xd5
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF34
	.byte	0x1
	.byte	0xd6
	.long	0x697b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"taken"
	.byte	0x1
	.byte	0xd7
	.long	0x6b6d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF27
	.byte	0x1
	.byte	0xd9
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0x798d
	.byte	0x1
	.string	"predict_edge"
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2d
	.string	"e"
	.byte	0x1
	.byte	0xe5
	.long	0x61f4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF34
	.byte	0x1
	.byte	0xe7
	.long	0x697b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.byte	0xe6
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF37
	.byte	0x1
	.byte	0xe9
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x79c7
	.string	"can_predict_insn_p"
	.byte	0x1
	.byte	0xfe
	.byte	0x1
	.long	0x5a36
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2f
	.long	.LASF35
	.byte	0x1
	.byte	0xfd
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x34
	.long	0x7a2b
	.byte	0x1
	.string	"predict_edge_def"
	.byte	0x1
	.value	0x10b
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.value	0x108
	.long	0x61f4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF34
	.byte	0x1
	.value	0x109
	.long	0x697b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"taken"
	.byte	0x1
	.value	0x10a
	.long	0x6b6d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF27
	.byte	0x1
	.value	0x10c
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x7a79
	.byte	0x1
	.string	"invert_br_probabilities"
	.byte	0x1
	.value	0x11a
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x36
	.long	.LASF35
	.byte	0x1
	.value	0x119
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"note"
	.byte	0x1
	.value	0x11b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x39
	.long	0x7ae8
	.string	"dump_prediction"
	.byte	0x1
	.value	0x12d
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x36
	.long	.LASF34
	.byte	0x1
	.value	0x129
	.long	0x697b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF27
	.byte	0x1
	.value	0x12a
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"bb"
	.byte	0x1
	.value	0x12b
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.string	"used"
	.byte	0x1
	.value	0x12c
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.string	"e"
	.byte	0x1
	.value	0x12e
	.long	0x61f4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x39
	.long	0x7c4d
	.string	"combine_predictions_for_insn"
	.byte	0x1
	.value	0x150
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x36
	.long	.LASF35
	.byte	0x1
	.value	0x14e
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"bb"
	.byte	0x1
	.value	0x14f
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"prob_note"
	.byte	0x1
	.value	0x151
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.string	"pnote"
	.byte	0x1
	.value	0x152
	.long	0x1725
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.string	"note"
	.byte	0x1
	.value	0x153
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"best_probability"
	.byte	0x1
	.value	0x154
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.string	"best_predictor"
	.byte	0x1
	.value	0x155
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.string	"combined_probability"
	.byte	0x1
	.value	0x156
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"d"
	.byte	0x1
	.value	0x157
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"first_match"
	.byte	0x1
	.value	0x158
	.long	0x5a36
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x38
	.string	"found"
	.byte	0x1
	.value	0x159
	.long	0x5a36
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3a
	.long	0x7c24
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x37
	.long	.LASF34
	.byte	0x1
	.value	0x165
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	.LASF27
	.byte	0x1
	.value	0x166
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x3b
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x37
	.long	.LASF34
	.byte	0x1
	.value	0x190
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x37
	.long	.LASF27
	.byte	0x1
	.value	0x191
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x7db6
	.byte	0x1
	.string	"estimate_probability"
	.byte	0x1
	.value	0x1b5
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x35
	.string	"loops_info"
	.byte	0x1
	.value	0x1b4
	.long	0x7db6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF38
	.byte	0x1
	.value	0x1b6
	.long	0x6481
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x37
	.long	.LASF39
	.byte	0x1
	.value	0x1b6
	.long	0x6481
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x38
	.string	"bb"
	.byte	0x1
	.value	0x1b7
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x1b8
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3a
	.long	0x7d51
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x38
	.string	"bb"
	.byte	0x1
	.value	0x1c2
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"bbs"
	.byte	0x1
	.value	0x1c2
	.long	0x7dbc
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.string	"j"
	.byte	0x1
	.value	0x1c3
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.string	"exits"
	.byte	0x1
	.value	0x1c4
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"loop"
	.byte	0x1
	.value	0x1c5
	.long	0x6470
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x38
	.string	"header_found"
	.byte	0x1
	.value	0x1cd
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"e"
	.byte	0x1
	.value	0x1ce
	.long	0x61f4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x37
	.long	.LASF37
	.byte	0x1
	.value	0x1f5
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"cond"
	.byte	0x1
	.value	0x1f6
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"earliest"
	.byte	0x1
	.value	0x1f6
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x38
	.string	"e"
	.byte	0x1
	.value	0x1f7
	.long	0x61f4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x37
	.long	.LASF35
	.byte	0x1
	.value	0x210
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x64eb
	.uleb128 0x3
	.byte	0x4
	.long	0x6476
	.uleb128 0x34
	.long	0x7e42
	.byte	0x1
	.string	"expected_value_to_br_prob"
	.byte	0x1
	.value	0x290
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x37
	.long	.LASF35
	.byte	0x1
	.value	0x291
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"cond"
	.byte	0x1
	.value	0x291
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"ev"
	.byte	0x1
	.value	0x291
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"ev_reg"
	.byte	0x1
	.value	0x291
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x32
	.long	.LASF36
	.long	0x84d2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14424
	.byte	0x0
	.uleb128 0x3c
	.long	0x7e7d
	.string	"last_basic_block_p"
	.byte	0x1
	.value	0x2d8
	.byte	0x1
	.long	0x5a36
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x35
	.string	"bb"
	.byte	0x1
	.value	0x2d7
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x39
	.long	0x7f6d
	.string	"process_note_prediction"
	.byte	0x1
	.value	0x2f0
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x35
	.string	"bb"
	.byte	0x1
	.value	0x2ea
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"heads"
	.byte	0x1
	.value	0x2eb
	.long	0x7e8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF38
	.byte	0x1
	.value	0x2ec
	.long	0x6481
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF39
	.byte	0x1
	.value	0x2ed
	.long	0x6481
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.string	"pred"
	.byte	0x1
	.value	0x2ee
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x36
	.long	.LASF6
	.byte	0x1
	.value	0x2ef
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x38
	.string	"e"
	.byte	0x1
	.value	0x2f1
	.long	0x61f4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"y"
	.byte	0x1
	.value	0x2f2
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"taken"
	.byte	0x1
	.value	0x2f3
	.long	0x5a36
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x3b
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x38
	.string	"ai"
	.byte	0x1
	.value	0x2fc
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"next_ai"
	.byte	0x1
	.value	0x2fd
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"head"
	.byte	0x1
	.value	0x2fe
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x8062
	.string	"process_note_predictions"
	.byte	0x1
	.value	0x32c
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x35
	.string	"bb"
	.byte	0x1
	.value	0x328
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"heads"
	.byte	0x1
	.value	0x329
	.long	0x7e8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF38
	.byte	0x1
	.value	0x32a
	.long	0x6481
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF39
	.byte	0x1
	.value	0x32b
	.long	0x6481
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x37
	.long	.LASF35
	.byte	0x1
	.value	0x32d
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"e"
	.byte	0x1
	.value	0x32e
	.long	0x61f4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"contained_noreturn_call"
	.byte	0x1
	.value	0x331
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"was_bb_head"
	.byte	0x1
	.value	0x332
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"noreturn_block"
	.byte	0x1
	.value	0x333
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x38
	.string	"alg"
	.byte	0x1
	.value	0x348
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x80d1
	.byte	0x1
	.string	"note_prediction_to_br_prob"
	.byte	0x1
	.value	0x366
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x38
	.string	"bb"
	.byte	0x1
	.value	0x367
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x37
	.long	.LASF39
	.byte	0x1
	.value	0x368
	.long	0x6481
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF38
	.byte	0x1
	.value	0x368
	.long	0x6481
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"heads"
	.byte	0x1
	.value	0x369
	.long	0x7e8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x81e2
	.string	"propagate_freq"
	.byte	0x1
	.value	0x3a8
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x35
	.string	"loop"
	.byte	0x1
	.value	0x3a7
	.long	0x6470
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"head"
	.byte	0x1
	.value	0x3a9
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"bb"
	.byte	0x1
	.value	0x3aa
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"last"
	.byte	0x1
	.value	0x3ab
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"e"
	.byte	0x1
	.value	0x3ac
	.long	0x61f4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"nextbb"
	.byte	0x1
	.value	0x3ad
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3a
	.long	0x8171
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x38
	.string	"count"
	.byte	0x1
	.value	0x3b5
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3b
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x38
	.string	"cyclic_probability"
	.byte	0x1
	.value	0x3c7
	.long	0x3d4e
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.long	.LASF5
	.byte	0x1
	.value	0x3c7
	.long	0x3d4e
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3a
	.long	0x81c6
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x38
	.string	"tmp"
	.byte	0x1
	.value	0x3e1
	.long	0x3d4e
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0x0
	.uleb128 0x3b
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x38
	.string	"tmp"
	.byte	0x1
	.value	0x406
	.long	0x3d4e
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x8269
	.string	"estimate_loops_at_level"
	.byte	0x1
	.value	0x42c
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x35
	.string	"first_loop"
	.byte	0x1
	.value	0x42b
	.long	0x6470
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"loop"
	.byte	0x1
	.value	0x42d
	.long	0x6470
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3b
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x38
	.string	"e"
	.byte	0x1
	.value	0x431
	.long	0x61f4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"bbs"
	.byte	0x1
	.value	0x432
	.long	0x7dbc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x433
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x82b2
	.string	"counts_to_freqs"
	.byte	0x1
	.value	0x44a
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x38
	.string	"count_max"
	.byte	0x1
	.value	0x44b
	.long	0x459
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"bb"
	.byte	0x1
	.value	0x44c
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x3d
	.long	0x8352
	.byte	0x1
	.string	"expensive_function_p"
	.byte	0x1
	.value	0x45d
	.byte	0x1
	.long	0x5a36
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x35
	.string	"threshold"
	.byte	0x1
	.value	0x45c
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"sum"
	.byte	0x1
	.value	0x45e
	.long	0x3bd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"bb"
	.byte	0x1
	.value	0x45f
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"limit"
	.byte	0x1
	.value	0x460
	.long	0x3bd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3a
	.long	0x8341
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x37
	.long	.LASF35
	.byte	0x1
	.value	0x471
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	.LASF36
	.long	0x84bd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14897
	.byte	0x0
	.uleb128 0x39
	.long	0x8445
	.string	"estimate_bb_frequencies"
	.byte	0x1
	.value	0x485
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x35
	.string	"loops"
	.byte	0x1
	.value	0x484
	.long	0x7db6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"bb"
	.byte	0x1
	.value	0x486
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"freq_max"
	.byte	0x1
	.value	0x487
	.long	0x3d4e
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.string	"double_mode"
	.byte	0x1
	.value	0x488
	.long	0x7f6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3a
	.long	0x840f
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x37
	.long	.LASF37
	.byte	0x1
	.value	0x49c
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x38
	.string	"nedges"
	.byte	0x1
	.value	0x4a3
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"e"
	.byte	0x1
	.value	0x4a4
	.long	0x61f4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x842a
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x38
	.string	"e"
	.byte	0x1
	.value	0x4b9
	.long	0x61f4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3b
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x38
	.string	"tmp"
	.byte	0x1
	.value	0x4d5
	.long	0x3d4e
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x8484
	.string	"compute_function_frequency"
	.byte	0x1
	.value	0x4e8
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x38
	.string	"bb"
	.byte	0x1
	.value	0x4e9
	.long	0x6476
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3e
	.string	"choose_function_section"
	.byte	0x1
	.value	0x4fe
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0xf
	.long	0x84bd
	.long	0x2dc
	.uleb128 0x10
	.long	0x3d4
	.byte	0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x84ad
	.uleb128 0xf
	.long	0x84d2
	.long	0x2dc
	.uleb128 0x10
	.long	0x3d4
	.byte	0x19
	.byte	0x0
	.uleb128 0xa
	.long	0x84c2
	.uleb128 0xf
	.long	0x84e7
	.long	0x2dc
	.uleb128 0x10
	.long	0x3d4
	.byte	0xc
	.byte	0x0
	.uleb128 0xa
	.long	0x84d7
	.uleb128 0x30
	.string	"real_zero"
	.byte	0x1
	.byte	0x44
	.long	0x3d4e
	.byte	0x5
	.byte	0x3
	.long	real_zero
	.uleb128 0x30
	.string	"real_one"
	.byte	0x1
	.byte	0x44
	.long	0x3d4e
	.byte	0x5
	.byte	0x3
	.long	real_one
	.uleb128 0x30
	.string	"real_almost_one"
	.byte	0x1
	.byte	0x44
	.long	0x3d4e
	.byte	0x5
	.byte	0x3
	.long	real_almost_one
	.uleb128 0x30
	.string	"real_br_prob_base"
	.byte	0x1
	.byte	0x44
	.long	0x3d4e
	.byte	0x5
	.byte	0x3
	.long	real_br_prob_base
	.uleb128 0x30
	.string	"real_inv_br_prob_base"
	.byte	0x1
	.byte	0x45
	.long	0x3d4e
	.byte	0x5
	.byte	0x3
	.long	real_inv_br_prob_base
	.uleb128 0x30
	.string	"real_one_half"
	.byte	0x1
	.byte	0x45
	.long	0x3d4e
	.byte	0x5
	.byte	0x3
	.long	real_one_half
	.uleb128 0x30
	.string	"real_bb_freq_max"
	.byte	0x1
	.byte	0x45
	.long	0x3d4e
	.byte	0x5
	.byte	0x3
	.long	real_bb_freq_max
	.uleb128 0xf
	.long	0x85c1
	.long	0x7735
	.uleb128 0x10
	.long	0x3d4
	.byte	0x18
	.byte	0x0
	.uleb128 0x33
	.long	.LASF33
	.byte	0x1
	.byte	0x75
	.long	0x85d2
	.byte	0x5
	.byte	0x3
	.long	predictor_info
	.uleb128 0xa
	.long	0x85b1
	.uleb128 0xf
	.long	0x85e7
	.long	0xa3f
	.uleb128 0x10
	.long	0x3d4
	.byte	0x35
	.byte	0x0
	.uleb128 0x3f
	.long	.LASF3
	.byte	0x5
	.byte	0x34
	.long	0x85f4
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x85d7
	.uleb128 0xf
	.long	0x8609
	.long	0x2dc
	.uleb128 0x10
	.long	0x3d4
	.byte	0xa2
	.byte	0x0
	.uleb128 0x40
	.string	"rtx_class"
	.byte	0x3
	.byte	0x45
	.long	0x861c
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x85f9
	.uleb128 0xf
	.long	0x8631
	.long	0x9c
	.uleb128 0x10
	.long	0x3d4
	.byte	0x80
	.byte	0x0
	.uleb128 0x41
	.string	"const_int_rtx"
	.byte	0x3
	.value	0x6a4
	.long	0x8621
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"const_true_rtx"
	.byte	0x3
	.value	0x6aa
	.long	0x9c
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x8672
	.long	0x1e5
	.uleb128 0x10
	.long	0x3d4
	.byte	0x3a
	.byte	0x0
	.uleb128 0x41
	.string	"global_trees"
	.byte	0x7
	.value	0x8b5
	.long	0x8662
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"current_function_decl"
	.byte	0x7
	.value	0xbc8
	.long	0x1e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"last_basic_block"
	.byte	0x2
	.byte	0xf6
	.long	0x2e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"basic_block_info"
	.byte	0x2
	.byte	0xfe
	.long	0x6115
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x86ed
	.long	0x156d
	.uleb128 0x10
	.long	0x3d4
	.byte	0x1
	.byte	0x0
	.uleb128 0x41
	.string	"entry_exit_blocks"
	.byte	0x2
	.value	0x139
	.long	0x86dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"flag_branch_probabilities"
	.byte	0x13
	.byte	0xd4
	.long	0x2e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"flag_reorder_functions"
	.byte	0x13
	.byte	0xdc
	.long	0x2e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"flag_guess_branch_prob"
	.byte	0x13
	.value	0x24e
	.long	0x2e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"rtl_dump_file"
	.byte	0x14
	.value	0x1b8
	.long	0x6fa2
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"cfun"
	.byte	0xb
	.value	0x202
	.long	0x4f2f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.long	.LASF31
	.byte	0x18
	.byte	0x34
	.long	0x6b95
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"compiler_params"
	.byte	0x19
	.byte	0x3a
	.long	0x87ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6ce8
	.uleb128 0x41
	.string	"targetm"
	.byte	0x1a
	.value	0x12d
	.long	0x734a
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x16
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
	.uleb128 0x28
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x37
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x130
	.value	0x2
	.long	.Ldebug_info0
	.long	0x87d3
	.long	0x7770
	.string	"maybe_hot_bb_p"
	.long	0x77a6
	.string	"probably_cold_bb_p"
	.long	0x77e0
	.string	"probably_never_executed_bb_p"
	.long	0x7876
	.string	"predict_insn"
	.long	0x78d3
	.string	"predict_insn_def"
	.long	0x7934
	.string	"predict_edge"
	.long	0x79c7
	.string	"predict_edge_def"
	.long	0x7a2b
	.string	"invert_br_probabilities"
	.long	0x7c4d
	.string	"estimate_probability"
	.long	0x7dc2
	.string	"expected_value_to_br_prob"
	.long	0x8062
	.string	"note_prediction_to_br_prob"
	.long	0x82b2
	.string	"expensive_function_p"
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
.LASF22:
	.string	"name"
.LASF5:
	.string	"frequency"
.LASF8:
	.string	"lang_flag_0"
.LASF9:
	.string	"lang_flag_1"
.LASF10:
	.string	"lang_flag_2"
.LASF14:
	.string	"lang_flag_6"
.LASF39:
	.string	"post_dominators"
.LASF4:
	.string	"mem_attrs"
.LASF34:
	.string	"predictor"
.LASF37:
	.string	"last_insn"
.LASF0:
	.string	"common"
.LASF23:
	.string	"lang_specific"
.LASF30:
	.string	"sequence_rtl_expr"
.LASF29:
	.string	"sequence_stack"
.LASF25:
	.string	"function_frequency"
.LASF11:
	.string	"lang_flag_3"
.LASF13:
	.string	"lang_flag_5"
.LASF28:
	.string	"dominance_info"
.LASF1:
	.string	"unsigned int"
.LASF17:
	.string	"abstract_origin"
.LASF3:
	.string	"mode_class"
.LASF20:
	.string	"pointer_depth"
.LASF21:
	.string	"user_align"
.LASF18:
	.string	"size_unit"
.LASF27:
	.string	"probability"
.LASF24:
	.string	"args_size"
.LASF35:
	.string	"insn"
.LASF12:
	.string	"lang_flag_4"
.LASF38:
	.string	"dominators"
.LASF16:
	.string	"abstract_flag"
.LASF33:
	.string	"predictor_info"
.LASF32:
	.string	"param_info"
.LASF15:
	.string	"ht_identifier"
.LASF31:
	.string	"profile_info"
.LASF7:
	.string	"built_in_class"
.LASF26:
	.string	"basic_block"
.LASF6:
	.string	"flags"
.LASF36:
	.string	"__FUNCTION__"
.LASF2:
	.string	"_IO_FILE"
.LASF19:
	.string	"attributes"
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
