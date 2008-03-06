	.file	"sched-deps.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	deps_may_trap_p, @function
deps_may_trap_p:
.LFB15:
	.file 1 "../../../kg++fe/gnu/sched-deps.c"
	.loc 1 101 0
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
	.loc 1 102 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 104 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_known_value@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2
	.loc 1 107 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_known_value@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L2:
	.loc 1 108 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_addr_can_trap_p@PLT
	.loc 1 109 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	deps_may_trap_p, .-deps_may_trap_p
.globl find_insn_list
	.type	find_insn_list, @function
find_insn_list:
.LFB16:
	.loc 1 118 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	subl	$4, %esp
.LCFI6:
	.loc 1 119 0
	jmp	.L8
.L9:
	.loc 1 121 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L10
	.loc 1 122 0
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L12
.L10:
	.loc 1 123 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%ebp)
.L8:
	.loc 1 119 0
	cmpl	$0, 12(%ebp)
	jne	.L9
	.loc 1 125 0
	movl	$0, -4(%ebp)
.L12:
	movl	-4(%ebp), %eax
	.loc 1 126 0
	leave
	ret
.LFE16:
	.size	find_insn_list, .-find_insn_list
	.type	get_condition, @function
get_condition:
.LFB17:
	.loc 1 133 0
	pushl	%ebp
.LCFI7:
	movl	%esp, %ebp
.LCFI8:
	pushl	%edi
.LCFI9:
	pushl	%esi
.LCFI10:
	pushl	%ebx
.LCFI11:
	subl	$44, %esp
.LCFI12:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 134 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 137 0
	cmpl	$0, -20(%ebp)
	jne	.L16
	.loc 1 138 0
	movl	$0, -36(%ebp)
	jmp	.L18
.L16:
	.loc 1 139 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$48, %ax
	jne	.L19
	.loc 1 140 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L18
.L19:
	.loc 1 141 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L21
	.loc 1 142 0
	movl	$0, -36(%ebp)
	jmp	.L18
.L21:
	.loc 1 143 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L23
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L25
.L23:
	.loc 1 144 0
	movl	$0, -36(%ebp)
	jmp	.L18
.L25:
	.loc 1 145 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	je	.L26
	.loc 1 146 0
	movl	$0, -36(%ebp)
	jmp	.L18
.L26:
	.loc 1 147 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 148 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 149 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L28
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L28
	.loc 1 151 0
	movl	-16(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L18
.L28:
	.loc 1 152 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L31
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L31
	.loc 1 154 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %edi
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	reverse_condition@PLT
	movl	%edi, 12(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -36(%ebp)
	jmp	.L18
.L31:
	.loc 1 157 0
	movl	$0, -36(%ebp)
.L18:
	movl	-36(%ebp), %eax
	.loc 1 158 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE17:
	.size	get_condition, .-get_condition
	.type	conditions_mutex_p, @function
conditions_mutex_p:
.LFB18:
	.loc 1 165 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	pushl	%esi
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$16, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 166 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L36
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L36
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %esi
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	reverse_condition@PLT
	cmpl	%eax, %esi
	jne	.L36
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L36
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L36
	.loc 1 171 0
	movl	$1, -12(%ebp)
	jmp	.L42
.L36:
	.loc 1 172 0
	movl	$0, -12(%ebp)
.L42:
	movl	-12(%ebp), %eax
	.loc 1 173 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE18:
	.size	conditions_mutex_p, .-conditions_mutex_p
	.section	.rodata
	.type	__FUNCTION__.10573, @object
	.size	__FUNCTION__.10573, 15
__FUNCTION__.10573:
	.string	"add_dependence"
	.align 4
.LC0:
	.string	"../../../kg++fe/gnu/sched-deps.c"
	.text
.globl add_dependence
	.type	add_dependence, @function
add_dependence:
.LFB19:
	.loc 1 185 0
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
	subl	$188, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 191 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L45
	.loc 1 192 0
	movl	$0, -180(%ebp)
	jmp	.L47
.L45:
	.loc 1 197 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L48
	.loc 1 198 0
	movl	$0, -180(%ebp)
	jmp	.L47
.L48:
	.loc 1 205 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L50
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L50
	.loc 1 207 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_condition
	movl	%eax, -32(%ebp)
	.loc 1 208 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_condition
	movl	%eax, -28(%ebp)
	.loc 1 209 0
	cmpl	$0, -32(%ebp)
	je	.L50
	cmpl	$0, -28(%ebp)
	je	.L50
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	conditions_mutex_p
	testl	%eax, %eax
	je	.L50
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	modified_in_p@PLT
	testl	%eax, %eax
	jne	.L50
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	modified_in_p@PLT
	testl	%eax, %eax
	jne	.L50
	.loc 1 217 0
	movl	$0, -180(%ebp)
	jmp	.L47
.L50:
	.loc 1 225 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 226 0
	cmpl	$0, -40(%ebp)
	je	.L58
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L58
	movl	-40(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L58
	.loc 1 237 0
	jmp	.L62
.L63:
.LBB2:
	.loc 1 240 0
	movl	-24(%ebp), %eax
	movl	%eax, -40(%ebp)
.L62:
	.loc 1 237 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L64
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L64
	movl	-24(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L63
.L64:
	.loc 1 243 0
	movl	8(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jne	.L67
	.loc 1 244 0
	movl	$0, -180(%ebp)
	jmp	.L47
.L67:
	.loc 1 248 0
	movl	-40(%ebp), %eax
	movl	%eax, 12(%ebp)
.L58:
.LBE2:
	.loc 1 251 0
	movl	$1, -36(%ebp)
	.loc 1 268 0
	movl	true_dependency_cache@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L69
.LBB3:
	.loc 1 270 0
	movl	$0, -20(%ebp)
	.loc 1 272 0
	movl	anti_dependency_cache@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L71
	movl	output_dependency_cache@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L73
.L71:
	.loc 1 273 0
	leal	__FUNCTION__.10573@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$273, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L73:
	.loc 1 274 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	true_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L122
	movl	%edi, %esi
	xorl	%edi, %edi
.L122:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	jne	.L74
	.loc 1 277 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	anti_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L121
	movl	%edi, %esi
	xorl	%edi, %edi
.L121:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L76
	.loc 1 279 0
	movl	$14, -20(%ebp)
	jmp	.L74
.L76:
	.loc 1 280 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	output_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L120
	movl	%edi, %esi
	xorl	%edi, %edi
.L120:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L78
	.loc 1 282 0
	movl	$15, -20(%ebp)
	jmp	.L74
.L78:
	.loc 1 284 0
	movl	$0, -36(%ebp)
.L74:
	.loc 1 285 0
	cmpl	$0, -36(%ebp)
	je	.L69
	movl	16(%ebp), %edx
	movl	-20(%ebp), %eax
	cmpl	%eax, %edx
	jl	.L69
	.loc 1 286 0
	movl	$0, -180(%ebp)
	jmp	.L47
.L69:
.LBE3:
	.loc 1 291 0
	cmpl	$0, -36(%ebp)
	je	.L82
	.loc 1 292 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L84
.L85:
	.loc 1 293 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L86
	.loc 1 298 0
	movl	true_dependency_cache@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L88
	.loc 1 300 0
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$14, %al
	jne	.L90
	.loc 1 301 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	anti_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -176(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -172(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	anti_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -168(%ebp)
	movl	%edi, -164(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L119
	movl	%eax, %edx
	xorl	%eax, %eax
.L119:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-168(%ebp), %eax
	andl	%esi, %eax
	movl	-164(%ebp), %edx
	andl	%edi, %edx
	movl	-172(%ebp), %edi
	movl	-176(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	jmp	.L88
.L90:
	.loc 1 303 0
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$15, %al
	jne	.L92
	movl	output_dependency_cache@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L92
	.loc 1 305 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	output_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -160(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -156(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	output_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -152(%ebp)
	movl	%edi, -148(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L118
	movl	%eax, %edx
	xorl	%eax, %eax
.L118:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-152(%ebp), %eax
	andl	%esi, %eax
	movl	-148(%ebp), %edx
	andl	%edi, %edx
	movl	-156(%ebp), %edi
	movl	-160(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 303 0
	jmp	.L88
.L92:
	.loc 1 308 0
	leal	__FUNCTION__.10573@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$308, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L88:
	.loc 1 314 0
	movl	16(%ebp), %edx
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	jge	.L95
	.loc 1 315 0
	movl	16(%ebp), %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movb	%dl, 2(%eax)
.L95:
	.loc 1 320 0
	movl	true_dependency_cache@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L97
	.loc 1 322 0
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L99
	.loc 1 323 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	true_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -144(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -140(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	true_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -136(%ebp)
	movl	%edi, -132(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L117
	movl	%esi, %edi
	xorl	%esi, %esi
.L117:
	movl	-136(%ebp), %eax
	orl	%esi, %eax
	movl	-132(%ebp), %edx
	orl	%edi, %edx
	movl	-140(%ebp), %edi
	movl	-144(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	jmp	.L97
.L99:
	.loc 1 325 0
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$14, %al
	jne	.L101
	.loc 1 326 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	anti_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -128(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -124(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	anti_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -120(%ebp)
	movl	%edi, -116(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L116
	movl	%esi, %edi
	xorl	%esi, %esi
.L116:
	movl	-120(%ebp), %eax
	orl	%esi, %eax
	movl	-116(%ebp), %edx
	orl	%edi, %edx
	movl	-124(%ebp), %edi
	movl	-128(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	jmp	.L97
.L101:
	.loc 1 328 0
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$15, %al
	jne	.L97
	.loc 1 329 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	output_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -112(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -108(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	output_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L115
	movl	%esi, %edi
	xorl	%esi, %esi
.L115:
	movl	-104(%ebp), %eax
	orl	%esi, %eax
	movl	-100(%ebp), %edx
	orl	%edi, %edx
	movl	-108(%ebp), %edi
	movl	-112(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L97:
	.loc 1 333 0
	movl	$0, -180(%ebp)
	jmp	.L47
.L86:
	.loc 1 292 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -44(%ebp)
.L84:
	cmpl	$0, -44(%ebp)
	jne	.L85
.L82:
	.loc 1 337 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, -44(%ebp)
	.loc 1 338 0
	movl	8(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 60(%edx)
	.loc 1 341 0
	movl	16(%ebp), %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 346 0
	movl	true_dependency_cache@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L104
	.loc 1 348 0
	cmpl	$0, 16(%ebp)
	jne	.L106
	.loc 1 349 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	true_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -92(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	true_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L114
	movl	%esi, %edi
	xorl	%esi, %esi
.L114:
	movl	-88(%ebp), %eax
	orl	%esi, %eax
	movl	-84(%ebp), %edx
	orl	%edi, %edx
	movl	-92(%ebp), %edi
	movl	-96(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	jmp	.L104
.L106:
	.loc 1 350 0
	cmpl	$14, 16(%ebp)
	jne	.L108
	.loc 1 351 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	anti_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -76(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	anti_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L113
	movl	%esi, %edi
	xorl	%esi, %esi
.L113:
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	-76(%ebp), %edi
	movl	-80(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	jmp	.L104
.L108:
	.loc 1 352 0
	cmpl	$15, 16(%ebp)
	jne	.L104
	.loc 1 353 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	output_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -60(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	output_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L112
	movl	%esi, %edi
	xorl	%esi, %esi
.L112:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-60(%ebp), %edi
	movl	-64(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L104:
	.loc 1 356 0
	movl	$1, -180(%ebp)
.L47:
	movl	-180(%ebp), %eax
	.loc 1 357 0
	addl	$188, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	add_dependence, .-add_dependence
	.type	add_dependence_list, @function
add_dependence_list:
.LFB20:
	.loc 1 365 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$20, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 366 0
	jmp	.L124
.L125:
	.loc 1 367 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence@PLT
	.loc 1 366 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%ebp)
.L124:
	cmpl	$0, 12(%ebp)
	jne	.L125
	.loc 1 368 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	add_dependence_list, .-add_dependence_list
	.type	add_dependence_list_and_free, @function
add_dependence_list_and_free:
.LFB21:
	.loc 1 377 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$36, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 379 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	jmp	.L129
.L130:
	.loc 1 381 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 382 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence@PLT
	.loc 1 383 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_node@PLT
	.loc 1 379 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L129:
	cmpl	$0, -12(%ebp)
	jne	.L130
	.loc 1 385 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	add_dependence_list_and_free, .-add_dependence_list_and_free
	.section	.rodata
	.type	__FUNCTION__.11220, @object
	.size	__FUNCTION__.11220, 18
__FUNCTION__.11220:
	.string	"remove_dependence"
	.text
	.type	remove_dependence, @function
remove_dependence:
.LFB22:
	.loc 1 394 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	pushl	%edi
.LCFI34:
	pushl	%esi
.LCFI35:
	pushl	%ebx
.LCFI36:
	subl	$92, %esp
.LCFI37:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 396 0
	movl	$0, -20(%ebp)
	.loc 1 398 0
	movl	$0, -32(%ebp)
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L134
.L135:
	.loc 1 400 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 401 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L136
	.loc 1 403 0
	cmpl	$0, -32(%ebp)
	je	.L138
	.loc 1 404 0
	movl	-32(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%edx)
	jmp	.L140
.L138:
	.loc 1 406 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 60(%edx)
.L140:
	.loc 1 411 0
	movl	true_dependency_cache@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L141
	.loc 1 413 0
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L143
	.loc 1 414 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	true_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -76(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	true_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L155
	movl	%eax, %edx
	xorl	%eax, %eax
.L155:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-72(%ebp), %eax
	andl	%esi, %eax
	movl	-68(%ebp), %edx
	andl	%edi, %edx
	movl	-76(%ebp), %edi
	movl	-80(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	jmp	.L141
.L143:
	.loc 1 416 0
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$14, %al
	jne	.L145
	.loc 1 417 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	anti_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -60(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	anti_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L154
	movl	%eax, %edx
	xorl	%eax, %eax
.L154:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-56(%ebp), %eax
	andl	%esi, %eax
	movl	-52(%ebp), %edx
	andl	%edi, %edx
	movl	-60(%ebp), %edi
	movl	-64(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	jmp	.L141
.L145:
	.loc 1 419 0
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$15, %al
	jne	.L141
	.loc 1 420 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	output_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -44(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	output_dependency_cache@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L153
	movl	%eax, %edx
	xorl	%eax, %eax
.L153:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-40(%ebp), %eax
	andl	%esi, %eax
	movl	-36(%ebp), %edx
	andl	%edi, %edx
	movl	-44(%ebp), %edi
	movl	-48(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L141:
	.loc 1 425 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_node@PLT
	.loc 1 427 0
	movl	$1, -20(%ebp)
	jmp	.L148
.L136:
	.loc 1 430 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
.L148:
	.loc 1 398 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L134:
	cmpl	$0, -28(%ebp)
	jne	.L135
	.loc 1 433 0
	cmpl	$0, -20(%ebp)
	jne	.L152
	.loc 1 434 0
	leal	__FUNCTION__.11220@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$434, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L152:
	.loc 1 436 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	remove_dependence, .-remove_dependence
	.type	group_leader, @function
group_leader:
.LFB23:
	.loc 1 444 0
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
.L157:
	.loc 1 449 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 450 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, 8(%ebp)
	.loc 1 452 0
	cmpl	$0, 8(%ebp)
	je	.L158
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L158
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L157
.L158:
	.loc 1 454 0
	movl	-8(%ebp), %eax
	.loc 1 455 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	group_leader, .-group_leader
	.type	set_sched_group_p, @function
set_sched_group_p:
.LFB24:
	.loc 1 463 0
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
	.loc 1 466 0
	movl	8(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$16, %eax
	movb	%al, 3(%edx)
	.loc 1 471 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 478 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_insn_list@PLT
	testl	%eax, %eax
	je	.L163
	.loc 1 479 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_dependence
.L163:
	.loc 1 481 0
	movl	-8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L165
.L166:
	.loc 1 482 0
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence@PLT
	.loc 1 481 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L165:
	cmpl	$0, -12(%ebp)
	jne	.L166
	.loc 1 483 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	set_sched_group_p, .-set_sched_group_p
.globl add_insn_mem_dependence
	.type	add_insn_mem_dependence, @function
add_insn_mem_dependence:
.LFB25:
	.loc 1 504 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$36, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 507 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, -8(%ebp)
	.loc 1 508 0
	movl	12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 510 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	48(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L170
	.loc 1 512 0
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	shallow_copy_rtx@PLT
	movl	%eax, 24(%ebp)
	.loc 1 513 0
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	cselib_subst_to_values@PLT
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%edx, 4(%eax)
.L170:
	.loc 1 515 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	alloc_EXPR_LIST@PLT
	movl	%eax, -8(%ebp)
	.loc 1 516 0
	movl	16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 518 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 519 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	add_insn_mem_dependence, .-add_insn_mem_dependence
	.type	flush_pending_lists, @function
flush_pending_lists:
.LFB26:
	.loc 1 530 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%ebx
.LCFI52:
	subl	$20, %esp
.LCFI53:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 531 0
	cmpl	$0, 20(%ebp)
	je	.L174
	.loc 1 533 0
	movl	8(%ebp), %eax
	movl	$14, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list_and_free
	.loc 1 535 0
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	free_EXPR_LIST_list@PLT
.L174:
	.loc 1 538 0
	cmpl	$0, 16(%ebp)
	je	.L176
	movl	$14, -12(%ebp)
	jmp	.L178
.L176:
	movl	$15, -12(%ebp)
.L178:
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	-12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list_and_free
	.loc 1 540 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, (%esp)
	call	free_EXPR_LIST_list@PLT
	.loc 1 541 0
	movl	8(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 543 0
	cmpl	$0, 16(%ebp)
	je	.L179
	movl	$14, -8(%ebp)
	jmp	.L181
.L179:
	movl	$15, -8(%ebp)
.L181:
	movl	8(%ebp), %eax
	addl	$24, %eax
	movl	-8(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list_and_free
	.loc 1 545 0
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 546 0
	movl	8(%ebp), %eax
	movl	$1, 20(%eax)
	.loc 1 547 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	flush_pending_lists, .-flush_pending_lists
	.section	.rodata
	.type	__FUNCTION__.11490, @object
	.size	__FUNCTION__.11490, 16
__FUNCTION__.11490:
	.string	"sched_analyze_1"
	.text
	.type	sched_analyze_1, @function
sched_analyze_1:
.LFB27:
	.loc 1 558 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	pushl	%ebx
.LCFI56:
	subl	$68, %esp
.LCFI57:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 560 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 561 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	.loc 1 563 0
	cmpl	$0, -32(%ebp)
	je	.L252
	.loc 1 566 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L195
.LBB4:
	.loc 1 570 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	jmp	.L188
.L189:
	.loc 1 571 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L190
	.loc 1 572 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$59, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_1
.L190:
	.loc 1 570 0
	subl	$1, -24(%ebp)
.L188:
	cmpl	$0, -24(%ebp)
	jns	.L189
	.loc 1 577 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L252
	.loc 1 578 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_2
	.loc 1 579 0
	jmp	.L252
.L196:
.LBE4:
	.loc 1 585 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L197
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	jne	.L199
.L197:
	.loc 1 588 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_2
	.loc 1 589 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_2
.L199:
	.loc 1 591 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L195:
	.loc 1 582 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L196
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L196
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L196
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L196
	.loc 1 594 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L204
	.loc 1 596 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 600 0
	cmpl	$175, -36(%ebp)
	jg	.L206
.LBB5:
	.loc 1 602 0
	movl	-32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -20(%ebp)
	.loc 1 603 0
	cmpl	$57, -28(%ebp)
	jne	.L214
	.loc 1 605 0
	jmp	.L210
.L211:
	.loc 1 606 0
	movl	-20(%ebp), %eax
	addl	-36(%ebp), %eax
	movl	reg_pending_sets@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
.L210:
	.loc 1 605 0
	subl	$1, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jns	.L211
	jmp	.L230
.L215:
	.loc 1 611 0
	movl	-20(%ebp), %eax
	addl	-36(%ebp), %eax
	movl	reg_pending_clobbers@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
.L214:
	.loc 1 610 0
	subl	$1, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jns	.L215
	jmp	.L230
.L206:
.LBE5:
	.loc 1 617 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	-36(%ebp), %eax
	jg	.L217
	.loc 1 619 0
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L230
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L230
	.loc 1 621 0
	leal	__FUNCTION__.11490@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$621, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L217:
	.loc 1 625 0
	cmpl	$57, -28(%ebp)
	jne	.L222
	.loc 1 626 0
	movl	reg_pending_sets@GOTOFF(%ebx), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	jmp	.L224
.L222:
	.loc 1 628 0
	movl	reg_pending_clobbers@GOTOFF(%ebx), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
.L224:
	.loc 1 633 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L225
	movl	reg_known_equiv_p@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L225
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_known_value@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L225
	.loc 1 636 0
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_known_value@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_2
.L225:
	.loc 1 640 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L230
	.loc 1 641 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$14, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list
	jmp	.L230
.L204:
	.loc 1 644 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L230
.LBB6:
	.loc 1 647 0
	movl	-32(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 649 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	48(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L232
	.loc 1 651 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	shallow_copy_rtx@PLT
	movl	%eax, -16(%ebp)
	.loc 1 652 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L234
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L234
	movl	$5, -40(%ebp)
	jmp	.L237
.L234:
	movl	$4, -40(%ebp)
.L237:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	$1, 8(%esp)
	movl	-40(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cselib_lookup@PLT
	.loc 1 653 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	cselib_subst_to_values@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 4(%eax)
.L232:
	.loc 1 656 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$96, %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jle	.L238
	.loc 1 663 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flush_pending_lists
	jmp	.L240
.L238:
.LBB7:
	.loc 1 669 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 670 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 671 0
	jmp	.L241
.L242:
	.loc 1 673 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	anti_dependence@PLT
	testl	%eax, %eax
	je	.L243
	.loc 1 674 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$14, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence@PLT
.L243:
	.loc 1 676 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 677 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L241:
	.loc 1 671 0
	cmpl	$0, -12(%ebp)
	jne	.L242
	.loc 1 680 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 681 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 682 0
	jmp	.L246
.L247:
	.loc 1 684 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_dependence@PLT
	testl	%eax, %eax
	je	.L248
	.loc 1 685 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$15, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence@PLT
.L248:
	.loc 1 687 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 688 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L246:
	.loc 1 682 0
	cmpl	$0, -12(%ebp)
	jne	.L247
	.loc 1 691 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	$14, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list
	.loc 1 694 0
	movl	8(%ebp), %edx
	addl	$12, %edx
	movl	8(%ebp), %ecx
	addl	$8, %ecx
	movl	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_insn_mem_dependence@PLT
.L240:
.LBE7:
	.loc 1 697 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_2
.L230:
.LBE6:
	.loc 1 701 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L252
	.loc 1 702 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_2
.L252:
	.loc 1 703 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	sched_analyze_1, .-sched_analyze_1
	.section	.rodata
	.type	__FUNCTION__.11672, @object
	.size	__FUNCTION__.11672, 16
__FUNCTION__.11672:
	.string	"sched_analyze_2"
	.text
	.type	sched_analyze_2, @function
sched_analyze_2:
.LFB28:
	.loc 1 712 0
	pushl	%ebp
.LCFI58:
	movl	%esp, %ebp
.LCFI59:
	pushl	%ebx
.LCFI60:
	subl	$84, %esp
.LCFI61:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 718 0
	cmpl	$0, 12(%ebp)
	je	.L319
	.loc 1 721 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -36(%ebp)
	.loc 1 723 0
	movl	-36(%ebp), %eax
	subl	$50, %eax
	movl	%eax, -60(%ebp)
	cmpl	$61, -60(%ebp)
	ja	.L256
	movl	-60(%ebp), %eax
	sall	$2, %eax
	movl	.L264@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L264:
	.long	.L257@GOTOFF
	.long	.L257@GOTOFF
	.long	.L256@GOTOFF
	.long	.L257@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L258@GOTOFF
	.long	.L256@GOTOFF
	.long	.L319@GOTOFF
	.long	.L319@GOTOFF
	.long	.L319@GOTOFF
	.long	.L256@GOTOFF
	.long	.L319@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L260@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L261@GOTOFF
	.long	.L319@GOTOFF
	.long	.L319@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L256@GOTOFF
	.long	.L262@GOTOFF
	.long	.L262@GOTOFF
	.long	.L262@GOTOFF
	.long	.L262@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.text
.L260:
.LBB8:
	.loc 1 745 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 746 0
	cmpl	$175, -28(%ebp)
	jg	.L265
.LBB9:
	.loc 1 748 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -24(%ebp)
	.loc 1 749 0
	jmp	.L267
.L268:
	.loc 1 750 0
	movl	-24(%ebp), %eax
	addl	-28(%ebp), %eax
	movl	reg_pending_uses@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
.L267:
	.loc 1 749 0
	subl	$1, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jns	.L268
	jmp	.L319
.L265:
.LBE9:
	.loc 1 755 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	-28(%ebp), %eax
	jg	.L271
	.loc 1 757 0
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L319
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L319
	.loc 1 759 0
	leal	__FUNCTION__.11672@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$759, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L271:
	.loc 1 763 0
	movl	reg_pending_uses@GOTOFF(%ebx), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 768 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L276
	movl	reg_known_equiv_p@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L276
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_known_value@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L276
	.loc 1 771 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_known_value@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_2
.L276:
	.loc 1 776 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L319
	.loc 1 777 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 780 0
	jmp	.L319
.L261:
.LBE8:
.LBB10:
	.loc 1 788 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 790 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	48(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L281
	.loc 1 792 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	shallow_copy_rtx@PLT
	movl	%eax, -8(%ebp)
	.loc 1 793 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L283
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L283
	movl	$5, -56(%ebp)
	jmp	.L286
.L283:
	movl	$4, -56(%ebp)
.L286:
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$1, 8(%esp)
	movl	-56(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cselib_lookup@PLT
	.loc 1 794 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	cselib_subst_to_values@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
.L281:
	.loc 1 796 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 797 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 798 0
	jmp	.L287
.L288:
	.loc 1 800 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	read_dependence@PLT
	testl	%eax, %eax
	je	.L289
	.loc 1 801 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	$14, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence@PLT
.L289:
	.loc 1 803 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 804 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L287:
	.loc 1 798 0
	cmpl	$0, -16(%ebp)
	jne	.L288
	.loc 1 807 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 808 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 809 0
	jmp	.L292
.L293:
	.loc 1 811 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	rtx_varies_p@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	true_dependence@PLT
	testl	%eax, %eax
	je	.L294
	.loc 1 813 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence@PLT
.L294:
	.loc 1 815 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 816 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L292:
	.loc 1 809 0
	cmpl	$0, -16(%ebp)
	jne	.L293
	.loc 1 819 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L297
.L298:
	.loc 1 820 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L299
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	deps_may_trap_p
	testl	%eax, %eax
	je	.L301
.L299:
	.loc 1 822 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	$14, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence@PLT
.L301:
	.loc 1 819 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L297:
	cmpl	$0, -20(%ebp)
	jne	.L298
	.loc 1 826 0
	movl	8(%ebp), %edx
	addl	$4, %edx
	movl	8(%ebp), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_insn_mem_dependence@PLT
	.loc 1 830 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_2
	.loc 1 831 0
	jmp	.L319
.L258:
.LBE10:
	.loc 1 836 0
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flush_pending_lists
	.loc 1 837 0
	jmp	.L256
.L257:
	.loc 1 850 0
	cmpl	$51, -36(%ebp)
	jne	.L303
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L305
.L303:
	.loc 1 851 0
	movb	$1, reg_pending_barrier@GOTOFF(%ebx)
.L305:
	.loc 1 858 0
	cmpl	$51, -36(%ebp)
	jne	.L256
	.loc 1 860 0
	movl	$0, -40(%ebp)
	jmp	.L308
.L309:
	.loc 1 861 0
	movl	12(%ebp), %eax
	movl	28(%eax), %edx
	movl	-40(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_2
	.loc 1 860 0
	addl	$1, -40(%ebp)
.L308:
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	cmpl	-40(%ebp), %eax
	jg	.L309
	.loc 1 862 0
	jmp	.L319
.L262:
	.loc 1 877 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_2
	.loc 1 878 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_1
	.loc 1 879 0
	jmp	.L319
.L263:
	.loc 1 884 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_2
	.loc 1 885 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_2
	.loc 1 886 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_1
	.loc 1 887 0
	jmp	.L319
.L256:
	.loc 1 894 0
	movl	-36(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -32(%ebp)
	.loc 1 895 0
	movl	-36(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -44(%ebp)
	jmp	.L311
.L312:
	.loc 1 897 0
	movl	-44(%ebp), %eax
	addl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L313
	.loc 1 898 0
	movl	-44(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_2
	jmp	.L315
.L313:
	.loc 1 899 0
	movl	-44(%ebp), %eax
	addl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L315
	.loc 1 900 0
	movl	$0, -40(%ebp)
	jmp	.L317
.L318:
	.loc 1 901 0
	movl	-44(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-40(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_2
	.loc 1 900 0
	addl	$1, -40(%ebp)
.L317:
	movl	-44(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-40(%ebp), %eax
	jg	.L318
.L315:
	.loc 1 895 0
	subl	$1, -44(%ebp)
.L311:
	cmpl	$0, -44(%ebp)
	jns	.L312
.L319:
	.loc 1 903 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	sched_analyze_2, .-sched_analyze_2
	.type	sched_analyze_insn, @function
sched_analyze_insn:
.LFB29:
	.loc 1 912 0
	pushl	%ebp
.LCFI62:
	movl	%esp, %ebp
.LCFI63:
	pushl	%ebx
.LCFI64:
	subl	$356, %esp
.LCFI65:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 913 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -284(%ebp)
	.loc 1 917 0
	cmpl	$48, -284(%ebp)
	jne	.L321
	.loc 1 919 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_2
	.loc 1 923 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 924 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -284(%ebp)
.L321:
	.loc 1 926 0
	cmpl	$57, -284(%ebp)
	je	.L323
	cmpl	$59, -284(%ebp)
	jne	.L325
.L323:
	.loc 1 928 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_1
	.loc 1 933 0
	cmpl	$59, -284(%ebp)
	jne	.L328
	.loc 1 934 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$15, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list
	.loc 1 926 0
	jmp	.L328
.L325:
	.loc 1 936 0
	cmpl	$49, -284(%ebp)
	jne	.L329
.LBB11:
	.loc 1 939 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -272(%ebp)
	jmp	.L331
.L332:
.LBB12:
	.loc 1 941 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-272(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -268(%ebp)
	.loc 1 942 0
	movl	-268(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -284(%ebp)
	.loc 1 944 0
	cmpl	$48, -284(%ebp)
	jne	.L333
	.loc 1 946 0
	movl	-268(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_2
	.loc 1 947 0
	movl	-268(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -268(%ebp)
	.loc 1 948 0
	movl	-268(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -284(%ebp)
.L333:
	.loc 1 950 0
	cmpl	$57, -284(%ebp)
	je	.L335
	cmpl	$59, -284(%ebp)
	jne	.L337
.L335:
	.loc 1 951 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-268(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_1
	.loc 1 950 0
	jmp	.L338
.L337:
	.loc 1 953 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-268(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_2
.L338:
.LBE12:
	.loc 1 939 0
	subl	$1, -272(%ebp)
.L331:
	cmpl	$0, -272(%ebp)
	jns	.L332
	jmp	.L328
.L329:
.LBE11:
	.loc 1 957 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_2
.L328:
	.loc 1 960 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L340
	.loc 1 962 0
	movl	16(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -280(%ebp)
	jmp	.L342
.L343:
	.loc 1 964 0
	movl	-280(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L344
	.loc 1 965 0
	movl	-280(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_1
	jmp	.L346
.L344:
	.loc 1 967 0
	movl	-280(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_2
.L346:
	.loc 1 962 0
	movl	-280(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -280(%ebp)
.L342:
	cmpl	$0, -280(%ebp)
	jne	.L343
	.loc 1 969 0
	movl	$0, 8(%esp)
	movl	$27, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L340
	.loc 1 970 0
	movb	$1, reg_pending_barrier@GOTOFF(%ebx)
.L340:
	.loc 1 973 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L349
.LBB13:
	.loc 1 976 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -264(%ebp)
	.loc 1 977 0
	cmpl	$0, -264(%ebp)
	je	.L351
	movl	-264(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L351
	.loc 1 978 0
	movb	$1, reg_pending_barrier@GOTOFF(%ebx)
	.loc 1 977 0
	jmp	.L349
.L351:
.LBB14:
	.loc 1 983 0
	movl	$1, 4(%esp)
	leal	-300(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	.loc 1 984 0
	movl	$1, 4(%esp)
	leal	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	.loc 1 986 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	28(%eax), %ecx
	movl	8(%ebp), %edx
	addl	$68, %edx
	leal	-316(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-300(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
	.loc 1 988 0
	movl	reg_pending_uses@GOTOFF(%ebx), %edx
	movl	reg_pending_uses@GOTOFF(%ebx), %ecx
	movl	$2, 12(%esp)
	leal	-300(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	bitmap_operation@PLT
	.loc 1 989 0
	movl	reg_pending_sets@GOTOFF(%ebx), %edx
	movl	reg_pending_sets@GOTOFF(%ebx), %ecx
	movl	$2, 12(%esp)
	leal	-316(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	bitmap_operation@PLT
	.loc 1 991 0
	leal	-300(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 992 0
	leal	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 998 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -260(%ebp)
	.loc 1 999 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -256(%ebp)
	.loc 1 1000 0
	jmp	.L354
.L355:
	.loc 1 1002 0
	movl	-260(%ebp), %eax
	movl	4(%eax), %eax
	movl	$15, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence@PLT
	.loc 1 1003 0
	movl	-260(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -260(%ebp)
	.loc 1 1004 0
	movl	-256(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -256(%ebp)
.L354:
	.loc 1 1000 0
	cmpl	$0, -260(%ebp)
	jne	.L355
	.loc 1 1007 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -260(%ebp)
	.loc 1 1008 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -256(%ebp)
	.loc 1 1009 0
	jmp	.L357
.L358:
	.loc 1 1011 0
	movl	-256(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L359
	.loc 1 1012 0
	movl	-260(%ebp), %eax
	movl	4(%eax), %eax
	movl	$15, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence@PLT
.L359:
	.loc 1 1013 0
	movl	-260(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -260(%ebp)
	.loc 1 1014 0
	movl	-256(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -256(%ebp)
.L357:
	.loc 1 1009 0
	cmpl	$0, -260(%ebp)
	jne	.L358
	.loc 1 1017 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	$14, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list
.L349:
.LBE14:
.LBE13:
	.loc 1 1026 0
	cmpl	$0, 20(%ebp)
	je	.L362
.LBB15:
	.loc 1 1033 0
	movl	20(%ebp), %eax
	movl	%eax, -252(%ebp)
	.loc 1 1034 0
	jmp	.L364
.L365:
	.loc 1 1036 0
	movl	-252(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-96, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L366
	movl	-252(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-95, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L366
	movl	-252(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-86, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L366
	movl	-252(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-85, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L370
.L366:
	.loc 1 1040 0
	movb	$1, reg_pending_barrier@GOTOFF(%ebx)
.L370:
	.loc 1 1042 0
	movl	-252(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -252(%ebp)
.L364:
	.loc 1 1034 0
	movl	-252(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L365
	.loc 1 1044 0
	movl	16(%ebp), %eax
	movl	68(%eax), %edx
	movl	-252(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1045 0
	movl	16(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 68(%edx)
.L362:
.LBE15:
	.loc 1 1051 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	testb	%al, %al
	je	.L372
	.loc 1 1052 0
	movb	$1, reg_pending_barrier@GOTOFF(%ebx)
.L372:
	.loc 1 1055 0
	movzbl	reg_pending_barrier@GOTOFF(%ebx), %eax
	testb	%al, %al
	je	.L374
	.loc 1 1057 0
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$48, %ax
	jne	.L376
.LBB16:
	.loc 1 1059 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -248(%ebp)
	movl	$0, -244(%ebp)
	movl	$0, -240(%ebp)
	movl	$0, -236(%ebp)
	jmp	.L378
.L379:
	movl	-248(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -248(%ebp)
.L378:
	cmpl	$0, -248(%ebp)
	je	.L380
	movl	-248(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-244(%ebp), %eax
	jb	.L379
.L380:
	cmpl	$0, -248(%ebp)
	je	.L385
	movl	-248(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-244(%ebp), %eax
	je	.L385
	movl	$0, -240(%ebp)
	movl	$0, -236(%ebp)
	jmp	.L385
.L388:
.LBB17:
	movl	-236(%ebp), %eax
	movl	-248(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -232(%ebp)
	cmpl	$0, -232(%ebp)
	je	.L389
	jmp	.L391
.L392:
.LBB18:
	movl	-240(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -228(%ebp)
	movl	-228(%ebp), %eax
	andl	-232(%ebp), %eax
	testl	%eax, %eax
	je	.L393
	movl	-228(%ebp), %eax
	notl	%eax
	andl	%eax, -232(%ebp)
	movl	-248(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-236(%ebp), %eax
	sall	$5, %eax
	addl	-240(%ebp), %eax
	movl	%eax, -276(%ebp)
.LBB19:
	movl	8(%ebp), %eax
	movl	48(%eax), %ecx
	movl	-276(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -224(%ebp)
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	$14, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list
	movl	-224(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list
	movl	-224(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list
.LBE19:
	cmpl	$0, -232(%ebp)
	je	.L389
.L393:
.LBE18:
	addl	$1, -240(%ebp)
.L391:
	cmpl	$31, -240(%ebp)
	jbe	.L392
.L389:
	movl	$0, -240(%ebp)
.LBE17:
	addl	$1, -236(%ebp)
.L387:
	cmpl	$3, -236(%ebp)
	jbe	.L388
	movl	$0, -236(%ebp)
	movl	-248(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -248(%ebp)
.L385:
	cmpl	$0, -248(%ebp)
	jne	.L387
	jmp	.L397
.L376:
.LBE16:
.LBB20:
	.loc 1 1069 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -220(%ebp)
	movl	$0, -216(%ebp)
	movl	$0, -212(%ebp)
	movl	$0, -208(%ebp)
	jmp	.L398
.L399:
	movl	-220(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -220(%ebp)
.L398:
	cmpl	$0, -220(%ebp)
	je	.L400
	movl	-220(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-216(%ebp), %eax
	jb	.L399
.L400:
	cmpl	$0, -220(%ebp)
	je	.L405
	movl	-220(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-216(%ebp), %eax
	je	.L405
	movl	$0, -212(%ebp)
	movl	$0, -208(%ebp)
	jmp	.L405
.L408:
.LBB21:
	movl	-208(%ebp), %eax
	movl	-220(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -204(%ebp)
	cmpl	$0, -204(%ebp)
	je	.L409
	jmp	.L411
.L412:
.LBB22:
	movl	-212(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -200(%ebp)
	movl	-200(%ebp), %eax
	andl	-204(%ebp), %eax
	testl	%eax, %eax
	je	.L413
	movl	-200(%ebp), %eax
	notl	%eax
	andl	%eax, -204(%ebp)
	movl	-220(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-208(%ebp), %eax
	sall	$5, %eax
	addl	-212(%ebp), %eax
	movl	%eax, -276(%ebp)
.LBB23:
	movl	8(%ebp), %eax
	movl	48(%eax), %ecx
	movl	-276(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -196(%ebp)
	movl	-196(%ebp), %eax
	movl	$14, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list_and_free
	movl	-196(%ebp), %eax
	addl	$4, %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list_and_free
	movl	-196(%ebp), %eax
	addl	$8, %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list_and_free
	movl	-196(%ebp), %eax
	movl	$0, 12(%eax)
	movl	-196(%ebp), %eax
	movl	$0, 16(%eax)
.LBE23:
	cmpl	$0, -204(%ebp)
	je	.L409
.L413:
.LBE22:
	addl	$1, -212(%ebp)
.L411:
	cmpl	$31, -212(%ebp)
	jbe	.L412
.L409:
	movl	$0, -212(%ebp)
.LBE21:
	addl	$1, -208(%ebp)
.L407:
	cmpl	$3, -208(%ebp)
	jbe	.L408
	movl	$0, -208(%ebp)
	movl	-220(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -220(%ebp)
.L405:
	cmpl	$0, -220(%ebp)
	jne	.L407
.L397:
.LBE20:
	.loc 1 1081 0
	movl	$0, -276(%ebp)
	jmp	.L416
.L417:
.LBB24:
	.loc 1 1083 0
	movl	8(%ebp), %eax
	movl	48(%eax), %ecx
	movl	-276(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -192(%ebp)
	.loc 1 1084 0
	movl	-192(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, %edx
	movl	-192(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1085 0
	movl	8(%ebp), %edx
	addl	$52, %edx
	movl	-276(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
.LBE24:
	.loc 1 1081 0
	addl	$1, -276(%ebp)
.L416:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	-276(%ebp), %eax
	jg	.L417
	.loc 1 1088 0
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flush_pending_lists
	.loc 1 1089 0
	movl	8(%ebp), %eax
	addl	$68, %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 1090 0
	movb	$0, reg_pending_barrier@GOTOFF(%ebx)
	jmp	.L419
.L374:
	.loc 1 1096 0
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$48, %ax
	jne	.L420
.LBB25:
	.loc 1 1098 0
	movl	reg_pending_uses@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -188(%ebp)
	movl	$0, -184(%ebp)
	movl	$0, -180(%ebp)
	movl	$0, -176(%ebp)
	jmp	.L422
.L423:
	movl	-188(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -188(%ebp)
.L422:
	cmpl	$0, -188(%ebp)
	je	.L424
	movl	-188(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-184(%ebp), %eax
	jb	.L423
.L424:
	cmpl	$0, -188(%ebp)
	je	.L429
	movl	-188(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-184(%ebp), %eax
	je	.L429
	movl	$0, -180(%ebp)
	movl	$0, -176(%ebp)
	jmp	.L429
.L432:
.LBB26:
	movl	-176(%ebp), %eax
	movl	-188(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -172(%ebp)
	cmpl	$0, -172(%ebp)
	je	.L433
	jmp	.L435
.L436:
.LBB27:
	movl	-180(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -168(%ebp)
	movl	-168(%ebp), %eax
	andl	-172(%ebp), %eax
	testl	%eax, %eax
	je	.L437
	movl	-168(%ebp), %eax
	notl	%eax
	andl	%eax, -172(%ebp)
	movl	-188(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-176(%ebp), %eax
	sall	$5, %eax
	addl	-180(%ebp), %eax
	movl	%eax, -276(%ebp)
.LBB28:
	movl	8(%ebp), %eax
	movl	48(%eax), %ecx
	movl	-276(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -164(%ebp)
	movl	-164(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list
	movl	-164(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list
	movl	-164(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, %edx
	movl	-164(%ebp), %eax
	movl	%edx, (%eax)
	movl	-164(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-164(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE28:
	cmpl	$0, -172(%ebp)
	je	.L433
.L437:
.LBE27:
	addl	$1, -180(%ebp)
.L435:
	cmpl	$31, -180(%ebp)
	jbe	.L436
.L433:
	movl	$0, -180(%ebp)
.LBE26:
	addl	$1, -176(%ebp)
.L431:
	cmpl	$3, -176(%ebp)
	jbe	.L432
	movl	$0, -176(%ebp)
	movl	-188(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -188(%ebp)
.L429:
	cmpl	$0, -188(%ebp)
	jne	.L431
.LBE25:
.LBB29:
	.loc 1 1106 0
	movl	reg_pending_clobbers@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -160(%ebp)
	movl	$0, -156(%ebp)
	movl	$0, -152(%ebp)
	movl	$0, -148(%ebp)
	jmp	.L441
.L442:
	movl	-160(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -160(%ebp)
.L441:
	cmpl	$0, -160(%ebp)
	je	.L443
	movl	-160(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-156(%ebp), %eax
	jb	.L442
.L443:
	cmpl	$0, -160(%ebp)
	je	.L448
	movl	-160(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-156(%ebp), %eax
	je	.L448
	movl	$0, -152(%ebp)
	movl	$0, -148(%ebp)
	jmp	.L448
.L451:
.LBB30:
	movl	-148(%ebp), %eax
	movl	-160(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -144(%ebp)
	cmpl	$0, -144(%ebp)
	je	.L452
	jmp	.L454
.L455:
.LBB31:
	movl	-152(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -140(%ebp)
	movl	-140(%ebp), %eax
	andl	-144(%ebp), %eax
	testl	%eax, %eax
	je	.L456
	movl	-140(%ebp), %eax
	notl	%eax
	andl	%eax, -144(%ebp)
	movl	-160(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-148(%ebp), %eax
	sall	$5, %eax
	addl	-152(%ebp), %eax
	movl	%eax, -276(%ebp)
.LBB32:
	movl	8(%ebp), %eax
	movl	48(%eax), %ecx
	movl	-276(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -136(%ebp)
	movl	-136(%ebp), %eax
	movl	4(%eax), %eax
	movl	$15, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list
	movl	-136(%ebp), %eax
	movl	(%eax), %eax
	movl	$14, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list
	movl	-136(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, %edx
	movl	-136(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-136(%ebp), %eax
	movl	16(%eax), %eax
	leal	1(%eax), %edx
	movl	-136(%ebp), %eax
	movl	%edx, 16(%eax)
.LBE32:
	cmpl	$0, -144(%ebp)
	je	.L452
.L456:
.LBE31:
	addl	$1, -152(%ebp)
.L454:
	cmpl	$31, -152(%ebp)
	jbe	.L455
.L452:
	movl	$0, -152(%ebp)
.LBE30:
	addl	$1, -148(%ebp)
.L450:
	cmpl	$3, -148(%ebp)
	jbe	.L451
	movl	$0, -148(%ebp)
	movl	-160(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -160(%ebp)
.L448:
	cmpl	$0, -160(%ebp)
	jne	.L450
.LBE29:
.LBB33:
	.loc 1 1114 0
	movl	reg_pending_sets@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -132(%ebp)
	movl	$0, -128(%ebp)
	movl	$0, -124(%ebp)
	movl	$0, -120(%ebp)
	jmp	.L460
.L461:
	movl	-132(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -132(%ebp)
.L460:
	cmpl	$0, -132(%ebp)
	je	.L462
	movl	-132(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-128(%ebp), %eax
	jb	.L461
.L462:
	cmpl	$0, -132(%ebp)
	je	.L467
	movl	-132(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-128(%ebp), %eax
	je	.L467
	movl	$0, -124(%ebp)
	movl	$0, -120(%ebp)
	jmp	.L467
.L470:
.LBB34:
	movl	-120(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -116(%ebp)
	cmpl	$0, -116(%ebp)
	je	.L471
	jmp	.L473
.L474:
.LBB35:
	movl	-124(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -112(%ebp)
	movl	-112(%ebp), %eax
	andl	-116(%ebp), %eax
	testl	%eax, %eax
	je	.L475
	movl	-112(%ebp), %eax
	notl	%eax
	andl	%eax, -116(%ebp)
	movl	-132(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-120(%ebp), %eax
	sall	$5, %eax
	addl	-124(%ebp), %eax
	movl	%eax, -276(%ebp)
.LBB36:
	movl	8(%ebp), %eax
	movl	48(%eax), %ecx
	movl	-276(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -108(%ebp)
	movl	-108(%ebp), %eax
	movl	4(%eax), %eax
	movl	$15, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list
	movl	-108(%ebp), %eax
	movl	8(%eax), %eax
	movl	$15, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list
	movl	-108(%ebp), %eax
	movl	(%eax), %eax
	movl	$14, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list
	movl	-108(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, %edx
	movl	-108(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %edx
	addl	$68, %edx
	movl	-276(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
.LBE36:
	cmpl	$0, -116(%ebp)
	je	.L471
.L475:
.LBE35:
	addl	$1, -124(%ebp)
.L473:
	cmpl	$31, -124(%ebp)
	jbe	.L474
.L471:
	movl	$0, -124(%ebp)
.LBE34:
	addl	$1, -120(%ebp)
.L469:
	cmpl	$3, -120(%ebp)
	jbe	.L470
	movl	$0, -120(%ebp)
	movl	-132(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -132(%ebp)
.L467:
	cmpl	$0, -132(%ebp)
	jne	.L469
	jmp	.L479
.L420:
.LBE33:
.LBB37:
	.loc 1 1126 0
	movl	reg_pending_uses@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -104(%ebp)
	movl	$0, -100(%ebp)
	movl	$0, -96(%ebp)
	movl	$0, -92(%ebp)
	jmp	.L480
.L481:
	movl	-104(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -104(%ebp)
.L480:
	cmpl	$0, -104(%ebp)
	je	.L482
	movl	-104(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-100(%ebp), %eax
	jb	.L481
.L482:
	cmpl	$0, -104(%ebp)
	je	.L487
	movl	-104(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-100(%ebp), %eax
	je	.L487
	movl	$0, -96(%ebp)
	movl	$0, -92(%ebp)
	jmp	.L487
.L490:
.LBB38:
	movl	-92(%ebp), %eax
	movl	-104(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -88(%ebp)
	cmpl	$0, -88(%ebp)
	je	.L491
	jmp	.L493
.L494:
.LBB39:
	movl	-96(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %eax
	andl	-88(%ebp), %eax
	testl	%eax, %eax
	je	.L495
	movl	-84(%ebp), %eax
	notl	%eax
	andl	%eax, -88(%ebp)
	movl	-104(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-92(%ebp), %eax
	sall	$5, %eax
	addl	-96(%ebp), %eax
	movl	%eax, -276(%ebp)
.LBB40:
	movl	8(%ebp), %eax
	movl	48(%eax), %ecx
	movl	-276(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -80(%ebp)
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list
	movl	-80(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list
	movl	-80(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
.LBE40:
	cmpl	$0, -88(%ebp)
	je	.L491
.L495:
.LBE39:
	addl	$1, -96(%ebp)
.L493:
	cmpl	$31, -96(%ebp)
	jbe	.L494
.L491:
	movl	$0, -96(%ebp)
.LBE38:
	addl	$1, -92(%ebp)
.L489:
	cmpl	$3, -92(%ebp)
	jbe	.L490
	movl	$0, -92(%ebp)
	movl	-104(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -104(%ebp)
.L487:
	cmpl	$0, -104(%ebp)
	jne	.L489
.LBE37:
.LBB41:
	.loc 1 1134 0
	movl	reg_pending_clobbers@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	movl	$0, -64(%ebp)
	jmp	.L499
.L500:
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
.L499:
	cmpl	$0, -76(%ebp)
	je	.L501
	movl	-76(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-72(%ebp), %eax
	jb	.L500
.L501:
	cmpl	$0, -76(%ebp)
	je	.L506
	movl	-76(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-72(%ebp), %eax
	je	.L506
	movl	$0, -68(%ebp)
	movl	$0, -64(%ebp)
	jmp	.L506
.L509:
.LBB42:
	movl	-64(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -60(%ebp)
	cmpl	$0, -60(%ebp)
	je	.L510
	jmp	.L512
.L513:
.LBB43:
	movl	-68(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	andl	-60(%ebp), %eax
	testl	%eax, %eax
	je	.L514
	movl	-56(%ebp), %eax
	notl	%eax
	andl	%eax, -60(%ebp)
	movl	-76(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-64(%ebp), %eax
	sall	$5, %eax
	addl	-68(%ebp), %eax
	movl	%eax, -276(%ebp)
.LBB44:
	movl	8(%ebp), %eax
	movl	48(%eax), %ecx
	movl	-276(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	movl	12(%eax), %edx
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$96, %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jg	.L516
	movl	-52(%ebp), %eax
	movl	16(%eax), %edx
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$96, %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jle	.L518
.L516:
	movl	-52(%ebp), %eax
	addl	$4, %eax
	movl	$15, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list_and_free
	movl	-52(%ebp), %eax
	movl	$14, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list_and_free
	movl	-52(%ebp), %eax
	addl	$8, %eax
	movl	$15, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list_and_free
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-52(%ebp), %eax
	movl	$0, 16(%eax)
	movl	-52(%ebp), %eax
	movl	$0, 12(%eax)
	jmp	.L519
.L518:
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	$15, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	$14, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list
.L519:
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	leal	1(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	-52(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%edx, 8(%eax)
.LBE44:
	cmpl	$0, -60(%ebp)
	je	.L510
.L514:
.LBE43:
	addl	$1, -68(%ebp)
.L512:
	cmpl	$31, -68(%ebp)
	jbe	.L513
.L510:
	movl	$0, -68(%ebp)
.LBE42:
	addl	$1, -64(%ebp)
.L508:
	cmpl	$3, -64(%ebp)
	jbe	.L509
	movl	$0, -64(%ebp)
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
.L506:
	cmpl	$0, -76(%ebp)
	jne	.L508
.LBE41:
.LBB45:
	.loc 1 1158 0
	movl	reg_pending_sets@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	jmp	.L522
.L523:
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L522:
	cmpl	$0, -48(%ebp)
	je	.L524
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-44(%ebp), %eax
	jb	.L523
.L524:
	cmpl	$0, -48(%ebp)
	je	.L529
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-44(%ebp), %eax
	je	.L529
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	jmp	.L529
.L532:
.LBB46:
	movl	-36(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L533
	jmp	.L535
.L536:
.LBB47:
	movl	-40(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	andl	-32(%ebp), %eax
	testl	%eax, %eax
	je	.L537
	movl	-28(%ebp), %eax
	notl	%eax
	andl	%eax, -32(%ebp)
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-36(%ebp), %eax
	sall	$5, %eax
	addl	-40(%ebp), %eax
	movl	%eax, -276(%ebp)
.LBB48:
	movl	8(%ebp), %eax
	movl	48(%eax), %ecx
	movl	-276(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	$4, %eax
	movl	$15, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list_and_free
	movl	-24(%ebp), %eax
	addl	$8, %eax
	movl	$15, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list_and_free
	movl	-24(%ebp), %eax
	movl	$14, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list_and_free
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-24(%ebp), %eax
	movl	$0, 12(%eax)
	movl	-24(%ebp), %eax
	movl	$0, 16(%eax)
	movl	8(%ebp), %edx
	addl	$68, %edx
	movl	-276(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_clear_bit@PLT
.LBE48:
	cmpl	$0, -32(%ebp)
	je	.L533
.L537:
.LBE47:
	addl	$1, -40(%ebp)
.L535:
	cmpl	$31, -40(%ebp)
	jbe	.L536
.L533:
	movl	$0, -40(%ebp)
.LBE46:
	addl	$1, -36(%ebp)
.L531:
	cmpl	$3, -36(%ebp)
	jbe	.L532
	movl	$0, -36(%ebp)
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L529:
	cmpl	$0, -48(%ebp)
	jne	.L531
.L479:
.LBE45:
	.loc 1 1174 0
	movl	reg_pending_uses@GOTOFF(%ebx), %eax
	movl	8(%ebp), %edx
	addl	$52, %edx
	movl	8(%ebp), %ecx
	addl	$52, %ecx
	movl	$2, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	bitmap_operation@PLT
	.loc 1 1175 0
	movl	reg_pending_clobbers@GOTOFF(%ebx), %eax
	movl	8(%ebp), %edx
	addl	$52, %edx
	movl	8(%ebp), %ecx
	addl	$52, %ecx
	movl	$2, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	bitmap_operation@PLT
	.loc 1 1176 0
	movl	reg_pending_sets@GOTOFF(%ebx), %eax
	movl	8(%ebp), %edx
	addl	$52, %edx
	movl	8(%ebp), %ecx
	addl	$52, %ecx
	movl	$2, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	bitmap_operation@PLT
.L419:
	.loc 1 1178 0
	movl	reg_pending_uses@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 1179 0
	movl	reg_pending_clobbers@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 1180 0
	movl	reg_pending_sets@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 1186 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L540
	.loc 1 1188 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_sched_group_p
	.loc 1 1189 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movzbl	38(%edx), %eax
	orl	$1, %eax
	movb	%al, 38(%edx)
.L540:
	.loc 1 1201 0
	movl	8(%ebp), %eax
	movzbl	36(%eax), %eax
	testb	%al, %al
	je	.L560
.LBB49:
	.loc 1 1203 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L544
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L546
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -328(%ebp)
	jmp	.L548
.L546:
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -328(%ebp)
.L548:
	movl	-328(%ebp), %eax
	movl	%eax, -332(%ebp)
	jmp	.L549
.L544:
	movl	$0, -332(%ebp)
.L549:
	movl	-332(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1206 0
	cmpl	$0, -16(%ebp)
	je	.L550
	.loc 1 1209 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1210 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L552
	.loc 1 1211 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L552:
	.loc 1 1212 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L550
	.loc 1 1213 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1217 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1218 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L555
	.loc 1 1219 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L555:
	.loc 1 1220 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L550
	.loc 1 1221 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1225 0
	cmpl	$175, -12(%ebp)
	jle	.L558
	cmpl	$175, -8(%ebp)
	jg	.L550
.L558:
	.loc 1 1228 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_sched_group_p
	.loc 1 1229 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movzbl	38(%edx), %eax
	orl	$1, %eax
	movb	%al, 38(%edx)
	.loc 1 1225 0
	jmp	.L560
.L550:
	.loc 1 1234 0
	movl	8(%ebp), %eax
	movb	$0, 36(%eax)
.L560:
.LBE49:
	.loc 1 1237 0
	addl	$356, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	sched_analyze_insn, .-sched_analyze_insn
	.section	.rodata
	.type	__FUNCTION__.12491, @object
	.size	__FUNCTION__.12491, 14
__FUNCTION__.12491:
	.string	"sched_analyze"
	.text
.globl sched_analyze
	.type	sched_analyze, @function
sched_analyze:
.LFB30:
	.loc 1 1246 0
	pushl	%ebp
.LCFI66:
	movl	%esp, %ebp
.LCFI67:
	pushl	%ebx
.LCFI68:
	subl	$68, %esp
.LCFI69:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1248 0
	movl	$0, -32(%ebp)
	.loc 1 1250 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	48(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L562
	.loc 1 1251 0
	call	cselib_init@PLT
.L562:
	.loc 1 1253 0
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
.L564:
.LBB50:
	.loc 1 1257 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	je	.L565
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L567
.L565:
	.loc 1 1260 0
	movl	-36(%ebp), %eax
	addl	$60, %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_list@PLT
	.loc 1 1264 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L568
	.loc 1 1267 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$96, %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	setg	%cl
	addl	$1, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	testb	%cl, %cl
	je	.L570
	.loc 1 1268 0
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flush_pending_lists
	jmp	.L568
.L570:
	.loc 1 1270 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
.L568:
	.loc 1 1273 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_insn
	.loc 1 1274 0
	movl	$0, -32(%ebp)
	.loc 1 1257 0
	jmp	.L572
.L567:
	.loc 1 1276 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L572
.LBB51:
	.loc 1 1280 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movzbl	38(%edx), %eax
	orl	$1, %eax
	movb	%al, 38(%edx)
	.loc 1 1283 0
	movl	-36(%ebp), %eax
	addl	$60, %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_list@PLT
	.loc 1 1285 0
	movl	$0, 8(%esp)
	movl	$27, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L574
	.loc 1 1289 0
	movb	$1, reg_pending_barrier@GOTOFF(%ebx)
	jmp	.L576
.L574:
	.loc 1 1293 0
	movl	$0, -12(%ebp)
	jmp	.L577
.L578:
	.loc 1 1295 0
	movl	-12(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L579
	.loc 1 1297 0
	movl	reg_pending_sets@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1298 0
	movl	reg_pending_uses@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	jmp	.L581
.L579:
	.loc 1 1304 0
	movl	-12(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	regs_invalidated_by_call@GOT(%ebx), %eax
	leal	(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-12(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L633
	movl	%edx, %eax
	xorl	%edx, %edx
.L633:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L582
	.loc 1 1306 0
	movl	reg_pending_clobbers@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	jmp	.L581
.L582:
	.loc 1 1310 0
	movl	-12(%ebp), %eax
	movl	fixed_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L584
	.loc 1 1311 0
	movl	reg_pending_uses@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	jmp	.L581
.L584:
	.loc 1 1317 0
	cmpl	$1, -12(%ebp)
	je	.L586
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L588
	movl	$17, -48(%ebp)
	jmp	.L590
.L588:
	movl	$30, -48(%ebp)
.L590:
	movl	-48(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	.L581
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L586
	movl	frame_pointer_needed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L581
.L586:
	.loc 1 1320 0
	movl	reg_pending_uses@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
.L581:
	.loc 1 1293 0
	addl	$1, -12(%ebp)
.L577:
	cmpl	$175, -12(%ebp)
	jle	.L578
.L576:
	.loc 1 1325 0
	movl	8(%ebp), %eax
	addl	$32, %eax
	movl	$14, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence_list_and_free
	.loc 1 1328 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze_insn
	.loc 1 1329 0
	movl	$0, -32(%ebp)
	.loc 1 1335 0
	movl	-36(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flush_pending_lists
	.loc 1 1338 0
	movl	8(%ebp), %eax
	addl	$28, %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_list@PLT
	.loc 1 1339 0
	movl	$0, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 1343 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L572
	.loc 1 1344 0
	movl	8(%ebp), %eax
	movb	$1, 36(%eax)
.L572:
.LBE51:
	.loc 1 1350 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L594
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	je	.L596
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-95, %eax
	je	.L596
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-86, %eax
	je	.L596
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-85, %eax
	jne	.L594
.L596:
.LBB52:
	.loc 1 1358 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-86, %eax
	je	.L600
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-85, %eax
	jne	.L602
.L600:
	.loc 1 1360 0
	movl	-36(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1358 0
	jmp	.L603
.L602:
	.loc 1 1362 0
	movl	$0, 4(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -8(%ebp)
.L603:
	.loc 1 1364 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$23, (%esp)
	call	alloc_EXPR_LIST@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1367 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$23, (%esp)
	call	alloc_EXPR_LIST@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1370 0
	movl	-36(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	-32(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	3(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
.L594:
.LBE52:
	.loc 1 1373 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	48(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L604
	.loc 1 1374 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	cselib_process_insn@PLT
.L604:
	.loc 1 1387 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L606
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	.L606
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L606
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L606
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L606
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L606
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L606
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L606
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L615
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L617
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L619
.L617:
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -40(%ebp)
.L619:
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L620
.L615:
	movl	$0, -44(%ebp)
.L620:
	movl	-44(%ebp), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L606
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L606
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L606
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L606
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L606
	.loc 1 1408 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
.L606:
	.loc 1 1412 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L626
	.loc 1 1413 0
	movl	8(%ebp), %eax
	movl	$0, 40(%eax)
.L626:
	.loc 1 1415 0
	movl	-36(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L628
	.loc 1 1417 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	48(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L632
	.loc 1 1418 0
	call	cselib_finish@PLT
	jmp	.L632
.L628:
.LBE50:
	.loc 1 1253 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1421 0
	jmp	.L564
.L632:
	.loc 1 1423 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	sched_analyze, .-sched_analyze
.globl add_forward_dependence
	.type	add_forward_dependence, @function
add_forward_dependence:
.LFB31:
	.loc 1 1434 0
	pushl	%ebp
.LCFI70:
	movl	%esp, %ebp
.LCFI71:
	pushl	%ebx
.LCFI72:
	subl	$36, %esp
.LCFI73:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1457 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1459 0
	movl	16(%ebp), %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 1461 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1462 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	addl	$1, %eax
	movl	%eax, 16(%ecx)
	.loc 1 1463 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	add_forward_dependence, .-add_forward_dependence
.globl compute_forward_dependences
	.type	compute_forward_dependences, @function
compute_forward_dependences:
.LFB32:
	.loc 1 1472 0
	pushl	%ebp
.LCFI74:
	movl	%esp, %ebp
.LCFI75:
	pushl	%esi
.LCFI76:
	pushl	%ebx
.LCFI77:
	subl	$32, %esp
.LCFI78:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1476 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1477 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L637
.L638:
	.loc 1 1479 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L639
	.loc 1 1482 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	group_leader
	movl	%eax, -20(%ebp)
	.loc 1 1484 0
	movl	-20(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L641
.L642:
	.loc 1 1485 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	group_leader
	movl	%eax, %edx
	movl	%esi, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_forward_dependence@PLT
	.loc 1 1484 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L641:
	cmpl	$0, -16(%ebp)
	jne	.L642
.L639:
	.loc 1 1477 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L637:
	movl	-20(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	.L638
	.loc 1 1488 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE32:
	.size	compute_forward_dependences, .-compute_forward_dependences
.globl init_deps
	.type	init_deps, @function
init_deps:
.LFB33:
	.loc 1 1496 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	pushl	%ebx
.LCFI81:
	subl	$36, %esp
.LCFI82:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1497 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L646
	call	max_reg_num@PLT
	movl	%eax, -24(%ebp)
	jmp	.L648
.L646:
	movl	$176, -24(%ebp)
.L648:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1499 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 44(%edx)
	.loc 1 1500 0
	movl	-8(%ebp), %eax
	movl	$20, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 48(%eax)
	.loc 1 1502 0
	movl	8(%ebp), %eax
	addl	$52, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	.loc 1 1503 0
	movl	8(%ebp), %eax
	addl	$68, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	.loc 1 1505 0
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1506 0
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 1507 0
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 1508 0
	movl	8(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 1509 0
	movl	8(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 1510 0
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 1511 0
	movl	8(%ebp), %eax
	movl	$0, 24(%eax)
	.loc 1 1512 0
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
	.loc 1 1513 0
	movl	8(%ebp), %eax
	movl	$0, 32(%eax)
	.loc 1 1514 0
	movl	8(%ebp), %eax
	movb	$0, 36(%eax)
	.loc 1 1515 0
	movl	8(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 1516 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	init_deps, .-init_deps
.globl free_deps
	.type	free_deps, @function
free_deps:
.LFB34:
	.loc 1 1523 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	pushl	%ebx
.LCFI85:
	subl	$36, %esp
.LCFI86:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1526 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_list@PLT
	.loc 1 1527 0
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	free_EXPR_LIST_list@PLT
	.loc 1 1528 0
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_list@PLT
	.loc 1 1529 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, (%esp)
	call	free_EXPR_LIST_list@PLT
	.loc 1 1530 0
	movl	8(%ebp), %eax
	addl	$24, %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_list@PLT
.LBB53:
	.loc 1 1535 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L651
.L652:
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L651:
	cmpl	$0, -32(%ebp)
	je	.L653
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-28(%ebp), %eax
	jb	.L652
.L653:
	cmpl	$0, -32(%ebp)
	je	.L658
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L658
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L658
.L661:
.LBB54:
	movl	-20(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L662
	jmp	.L664
.L665:
.LBB55:
	movl	-24(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	andl	-16(%ebp), %eax
	testl	%eax, %eax
	je	.L666
	movl	-12(%ebp), %eax
	notl	%eax
	andl	%eax, -16(%ebp)
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	sall	$5, %eax
	addl	-24(%ebp), %eax
	movl	%eax, -36(%ebp)
.LBB56:
	movl	8(%ebp), %eax
	movl	48(%eax), %ecx
	movl	-36(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L668
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_list@PLT
.L668:
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L670
	movl	-8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_list@PLT
.L670:
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L672
	movl	-8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_list@PLT
.L672:
.LBE56:
	cmpl	$0, -16(%ebp)
	je	.L662
.L666:
.LBE55:
	addl	$1, -24(%ebp)
.L664:
	cmpl	$31, -24(%ebp)
	jbe	.L665
.L662:
	movl	$0, -24(%ebp)
.LBE54:
	addl	$1, -20(%ebp)
.L660:
	cmpl	$3, -20(%ebp)
	jbe	.L661
	movl	$0, -20(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L658:
	cmpl	$0, -32(%ebp)
	jne	.L660
.LBE53:
	.loc 1 1545 0
	movl	8(%ebp), %eax
	addl	$52, %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 1546 0
	movl	8(%ebp), %eax
	addl	$68, %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 1548 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1549 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	free_deps, .-free_deps
.globl init_dependency_caches
	.type	init_dependency_caches, @function
init_dependency_caches:
.LFB35:
	.loc 1 1558 0
	pushl	%ebp
.LCFI87:
	movl	%esp, %ebp
.LCFI88:
	pushl	%ebx
.LCFI89:
	subl	$20, %esp
.LCFI90:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1565 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	cmpl	$500, %eax
	jle	.L680
	.loc 1 1567 0
	movl	8(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, true_dependency_cache@GOTOFF(%ebx)
	.loc 1 1568 0
	movl	8(%ebp), %eax
	movl	true_dependency_cache@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 1569 0
	movl	8(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, anti_dependency_cache@GOTOFF(%ebx)
	.loc 1 1570 0
	movl	8(%ebp), %eax
	movl	anti_dependency_cache@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 1571 0
	movl	8(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, output_dependency_cache@GOTOFF(%ebx)
	.loc 1 1572 0
	movl	8(%ebp), %eax
	movl	output_dependency_cache@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
.L680:
	.loc 1 1578 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	init_dependency_caches, .-init_dependency_caches
.globl free_dependency_caches
	.type	free_dependency_caches, @function
free_dependency_caches:
.LFB36:
	.loc 1 1584 0
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	pushl	%ebx
.LCFI93:
	subl	$4, %esp
.LCFI94:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1585 0
	movl	true_dependency_cache@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L684
	.loc 1 1587 0
	movl	true_dependency_cache@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1588 0
	movl	$0, true_dependency_cache@GOTOFF(%ebx)
	.loc 1 1589 0
	movl	anti_dependency_cache@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1590 0
	movl	$0, anti_dependency_cache@GOTOFF(%ebx)
	.loc 1 1591 0
	movl	output_dependency_cache@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1592 0
	movl	$0, output_dependency_cache@GOTOFF(%ebx)
.L684:
	.loc 1 1598 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	free_dependency_caches, .-free_dependency_caches
.globl init_deps_global
	.type	init_deps_global, @function
init_deps_global:
.LFB37:
	.loc 1 1605 0
	pushl	%ebp
.LCFI95:
	movl	%esp, %ebp
.LCFI96:
	pushl	%ebx
.LCFI97:
	subl	$20, %esp
.LCFI98:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1606 0
	movl	$1, 4(%esp)
	leal	reg_pending_sets_head@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, reg_pending_sets@GOTOFF(%ebx)
	.loc 1 1607 0
	movl	$1, 4(%esp)
	leal	reg_pending_clobbers_head@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, reg_pending_clobbers@GOTOFF(%ebx)
	.loc 1 1608 0
	movl	$1, 4(%esp)
	leal	reg_pending_uses_head@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, reg_pending_uses@GOTOFF(%ebx)
	.loc 1 1609 0
	movb	$0, reg_pending_barrier@GOTOFF(%ebx)
	.loc 1 1610 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	init_deps_global, .-init_deps_global
.globl finish_deps_global
	.type	finish_deps_global, @function
finish_deps_global:
.LFB38:
	.loc 1 1616 0
	pushl	%ebp
.LCFI99:
	movl	%esp, %ebp
.LCFI100:
	pushl	%ebx
.LCFI101:
	subl	$4, %esp
.LCFI102:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1617 0
	movl	reg_pending_sets@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L688
	movl	reg_pending_sets@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	$0, reg_pending_sets@GOTOFF(%ebx)
.L688:
	.loc 1 1618 0
	movl	reg_pending_clobbers@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L690
	movl	reg_pending_clobbers@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	$0, reg_pending_clobbers@GOTOFF(%ebx)
.L690:
	.loc 1 1619 0
	movl	reg_pending_uses@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L694
	movl	reg_pending_uses@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	$0, reg_pending_uses@GOTOFF(%ebx)
.L694:
	.loc 1 1620 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	finish_deps_global, .-finish_deps_global
	.local	reg_pending_sets_head
	.comm	reg_pending_sets_head,16,4
	.local	reg_pending_clobbers_head
	.comm	reg_pending_clobbers_head,16,4
	.local	reg_pending_uses_head
	.comm	reg_pending_uses_head,16,4
	.local	reg_pending_sets
	.comm	reg_pending_sets,4,4
	.local	reg_pending_clobbers
	.comm	reg_pending_clobbers,4,4
	.local	reg_pending_uses
	.comm	reg_pending_uses,4,4
	.local	reg_pending_barrier
	.comm	reg_pending_barrier,1,1
	.local	true_dependency_cache
	.comm	true_dependency_cache,4,4
	.local	anti_dependency_cache
	.comm	anti_dependency_cache,4,4
	.local	output_dependency_cache
	.comm	output_dependency_cache,4,4
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
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI7-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI12-.LCFI8
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
	.long	.LCFI17-.LCFI14
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI18-.LFB19
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
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI24-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI27-.LCFI25
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
	.long	.LCFI28-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI31-.LCFI29
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
	.long	.LCFI37-.LCFI33
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI38-.LFB23
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI42-.LFB24
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI46-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI49-.LCFI47
	.byte	0x83
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
	.long	.LCFI50-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI53-.LCFI51
	.byte	0x83
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
	.long	.LCFI54-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI57-.LCFI55
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
	.long	.LCFI58-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI59-.LCFI58
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI61-.LCFI59
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
	.long	.LCFI62-.LFB29
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
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI66-.LFB30
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI70-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI73-.LCFI71
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
	.long	.LCFI74-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI78-.LCFI75
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI79-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI80-.LCFI79
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI82-.LCFI80
	.byte	0x83
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
	.long	.LCFI83-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI86-.LCFI84
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
	.long	.LCFI87-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI90-.LCFI88
	.byte	0x83
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
	.long	.LCFI91-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI92-.LCFI91
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI94-.LCFI92
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
	.long	.LCFI95-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI96-.LCFI95
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI98-.LCFI96
	.byte	0x83
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
	.long	.LCFI99-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI100-.LCFI99
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI102-.LCFI100
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE46:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/rtl.h"
	.file 4 "../../../kg++fe/gnu/machmode.h"
	.file 5 "../../../kg++fe/gnu/cselib.h"
	.file 6 "../../../kg++fe/gnu/varray.h"
	.file 7 "../../../kg++fe/gnu/bitmap.h"
	.file 8 "../../../kg++fe/gnu/basic-block.h"
	.file 9 "../../../kg++fe/gnu/sbitmap.h"
	.file 10 "../../../kg++fe/gnu/sched-int.h"
	.file 11 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 12 "../../../kg++fe/gnu/hard-reg-set.h"
	.file 13 "../../../kg++fe/gnu/regs.h"
	.file 14 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 15 "../../../kg++fe/gnu/flags.h"
	.file 16 "../../../kg++fe/gnu/params.h"
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
	.long	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI7-.Ltext0
	.long	.LCFI8-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI8-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
	.long	.LCFI28-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI28-.Ltext0
	.long	.LCFI29-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI29-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
	.long	.LCFI50-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI50-.Ltext0
	.long	.LCFI51-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI51-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
	.long	.LCFI54-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI54-.Ltext0
	.long	.LCFI55-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI55-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
	.long	.LCFI58-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI58-.Ltext0
	.long	.LCFI59-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI59-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI74-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI74-.Ltext0
	.long	.LCFI75-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI75-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
	.long	.LCFI79-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI79-.Ltext0
	.long	.LCFI80-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI80-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
	.long	.LCFI83-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI83-.Ltext0
	.long	.LCFI84-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI84-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
	.long	.LCFI87-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI87-.Ltext0
	.long	.LCFI88-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI88-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
	.long	.LCFI91-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI91-.Ltext0
	.long	.LCFI92-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI92-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI95-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI95-.Ltext0
	.long	.LCFI96-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI96-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
	.long	.LCFI99-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI99-.Ltext0
	.long	.LCFI100-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI100-.Ltext0
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x3a2d
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/sched-deps.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xaa
	.uleb128 0x3
	.byte	0x4
	.long	0xb0
	.uleb128 0x4
	.long	0x1a0
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x84
	.long	0x52c
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
	.long	0x2e3
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x1191
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1ad
	.uleb128 0x3
	.byte	0x4
	.long	0x1b3
	.uleb128 0x4
	.long	0x1e8
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x3
	.byte	0xf2
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf3
	.long	0x11a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1f4
	.uleb128 0x3
	.byte	0x4
	.long	0x1fa
	.uleb128 0x7
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x20c
	.uleb128 0x8
	.long	0x211
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
	.uleb128 0x2
	.string	"size_t"
	.byte	0xe
	.byte	0xd6
	.long	0x220
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
	.uleb128 0x3
	.byte	0x4
	.long	0x211
	.uleb128 0xc
	.long	0x2e3
	.long	0x211
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x52c
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.uleb128 0xf
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0xf
	.string	"BImode"
	.sleb128 1
	.uleb128 0xf
	.string	"QImode"
	.sleb128 2
	.uleb128 0xf
	.string	"HImode"
	.sleb128 3
	.uleb128 0xf
	.string	"SImode"
	.sleb128 4
	.uleb128 0xf
	.string	"DImode"
	.sleb128 5
	.uleb128 0xf
	.string	"TImode"
	.sleb128 6
	.uleb128 0xf
	.string	"OImode"
	.sleb128 7
	.uleb128 0xf
	.string	"PQImode"
	.sleb128 8
	.uleb128 0xf
	.string	"PHImode"
	.sleb128 9
	.uleb128 0xf
	.string	"PSImode"
	.sleb128 10
	.uleb128 0xf
	.string	"PDImode"
	.sleb128 11
	.uleb128 0xf
	.string	"QFmode"
	.sleb128 12
	.uleb128 0xf
	.string	"HFmode"
	.sleb128 13
	.uleb128 0xf
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0xf
	.string	"SFmode"
	.sleb128 15
	.uleb128 0xf
	.string	"DFmode"
	.sleb128 16
	.uleb128 0xf
	.string	"XFmode"
	.sleb128 17
	.uleb128 0xf
	.string	"TFmode"
	.sleb128 18
	.uleb128 0xf
	.string	"QCmode"
	.sleb128 19
	.uleb128 0xf
	.string	"HCmode"
	.sleb128 20
	.uleb128 0xf
	.string	"SCmode"
	.sleb128 21
	.uleb128 0xf
	.string	"DCmode"
	.sleb128 22
	.uleb128 0xf
	.string	"XCmode"
	.sleb128 23
	.uleb128 0xf
	.string	"TCmode"
	.sleb128 24
	.uleb128 0xf
	.string	"CQImode"
	.sleb128 25
	.uleb128 0xf
	.string	"CHImode"
	.sleb128 26
	.uleb128 0xf
	.string	"CSImode"
	.sleb128 27
	.uleb128 0xf
	.string	"CDImode"
	.sleb128 28
	.uleb128 0xf
	.string	"CTImode"
	.sleb128 29
	.uleb128 0xf
	.string	"COImode"
	.sleb128 30
	.uleb128 0xf
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0xf
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0xf
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0xf
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0xf
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0xf
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0xf
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0xf
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0xf
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0xf
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0xf
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0xf
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0xf
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0xf
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0xf
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0xf
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0xf
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0xf
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0xf
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0xf
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0xf
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0xf
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0xf
	.string	"CCmode"
	.sleb128 53
	.uleb128 0xf
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0xe
	.long	0xcfb
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x29
	.uleb128 0xf
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0xf
	.string	"NIL"
	.sleb128 1
	.uleb128 0xf
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0xf
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0xf
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0xf
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0xf
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0xf
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0xf
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0xf
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0xf
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0xf
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0xf
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0xf
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0xf
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0xf
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0xf
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0xf
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0xf
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0xf
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0xf
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0xf
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0xf
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0xf
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0xf
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0xf
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0xf
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0xf
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0xf
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0xf
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0xf
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0xf
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0xf
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0xf
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0xf
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0xf
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0xf
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0xf
	.string	"ATTR"
	.sleb128 37
	.uleb128 0xf
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0xf
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0xf
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0xf
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0xf
	.string	"INSN"
	.sleb128 42
	.uleb128 0xf
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0xf
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0xf
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0xf
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0xf
	.string	"NOTE"
	.sleb128 47
	.uleb128 0xf
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0xf
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0xf
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0xf
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0xf
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0xf
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0xf
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0xf
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0xf
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0xf
	.string	"SET"
	.sleb128 57
	.uleb128 0xf
	.string	"USE"
	.sleb128 58
	.uleb128 0xf
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0xf
	.string	"CALL"
	.sleb128 60
	.uleb128 0xf
	.string	"RETURN"
	.sleb128 61
	.uleb128 0xf
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0xf
	.string	"RESX"
	.sleb128 63
	.uleb128 0xf
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0xf
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0xf
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0xf
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0xf
	.string	"CONST"
	.sleb128 68
	.uleb128 0xf
	.string	"PC"
	.sleb128 69
	.uleb128 0xf
	.string	"VALUE"
	.sleb128 70
	.uleb128 0xf
	.string	"REG"
	.sleb128 71
	.uleb128 0xf
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0xf
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0xf
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0xf
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0xf
	.string	"MEM"
	.sleb128 76
	.uleb128 0xf
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0xf
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0xf
	.string	"CC0"
	.sleb128 79
	.uleb128 0xf
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0xf
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0xf
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0xf
	.string	"COND"
	.sleb128 83
	.uleb128 0xf
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0xf
	.string	"PLUS"
	.sleb128 85
	.uleb128 0xf
	.string	"MINUS"
	.sleb128 86
	.uleb128 0xf
	.string	"NEG"
	.sleb128 87
	.uleb128 0xf
	.string	"MULT"
	.sleb128 88
	.uleb128 0xf
	.string	"DIV"
	.sleb128 89
	.uleb128 0xf
	.string	"MOD"
	.sleb128 90
	.uleb128 0xf
	.string	"UDIV"
	.sleb128 91
	.uleb128 0xf
	.string	"UMOD"
	.sleb128 92
	.uleb128 0xf
	.string	"AND"
	.sleb128 93
	.uleb128 0xf
	.string	"IOR"
	.sleb128 94
	.uleb128 0xf
	.string	"XOR"
	.sleb128 95
	.uleb128 0xf
	.string	"NOT"
	.sleb128 96
	.uleb128 0xf
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0xf
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0xf
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0xf
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0xf
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0xf
	.string	"SMIN"
	.sleb128 102
	.uleb128 0xf
	.string	"SMAX"
	.sleb128 103
	.uleb128 0xf
	.string	"UMIN"
	.sleb128 104
	.uleb128 0xf
	.string	"UMAX"
	.sleb128 105
	.uleb128 0xf
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0xf
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0xf
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0xf
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0xf
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0xf
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0xf
	.string	"NE"
	.sleb128 112
	.uleb128 0xf
	.string	"EQ"
	.sleb128 113
	.uleb128 0xf
	.string	"GE"
	.sleb128 114
	.uleb128 0xf
	.string	"GT"
	.sleb128 115
	.uleb128 0xf
	.string	"LE"
	.sleb128 116
	.uleb128 0xf
	.string	"LT"
	.sleb128 117
	.uleb128 0xf
	.string	"GEU"
	.sleb128 118
	.uleb128 0xf
	.string	"GTU"
	.sleb128 119
	.uleb128 0xf
	.string	"LEU"
	.sleb128 120
	.uleb128 0xf
	.string	"LTU"
	.sleb128 121
	.uleb128 0xf
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0xf
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0xf
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0xf
	.string	"UNGE"
	.sleb128 125
	.uleb128 0xf
	.string	"UNGT"
	.sleb128 126
	.uleb128 0xf
	.string	"UNLE"
	.sleb128 127
	.uleb128 0xf
	.string	"UNLT"
	.sleb128 128
	.uleb128 0xf
	.string	"LTGT"
	.sleb128 129
	.uleb128 0xf
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0xf
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0xf
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0xf
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0xf
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0xf
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0xf
	.string	"FIX"
	.sleb128 136
	.uleb128 0xf
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0xf
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0xf
	.string	"ABS"
	.sleb128 139
	.uleb128 0xf
	.string	"SQRT"
	.sleb128 140
	.uleb128 0xf
	.string	"FFS"
	.sleb128 141
	.uleb128 0xf
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0xf
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0xf
	.string	"HIGH"
	.sleb128 144
	.uleb128 0xf
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0xf
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0xf
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0xf
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0xf
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0xf
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0xf
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0xf
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0xf
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0xf
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0xf
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0xf
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0xf
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0xf
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0xf
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0xf
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0xf
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0xf
	.string	"PHI"
	.sleb128 162
	.uleb128 0xf
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x10
	.long	0xdd5
	.byte	0x4
	.byte	0x3
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x49
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0x220
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
	.long	0xcfb
	.uleb128 0x11
	.long	0xe4c
	.long	.LASF1
	.byte	0x18
	.byte	0x3
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x63
	.long	0x294
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x64
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x65
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x66
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x67
	.long	0x220
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x12
	.long	.LASF1
	.byte	0x3
	.byte	0x68
	.long	0xdf0
	.uleb128 0x13
	.long	0xf29
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x6d
	.uleb128 0x14
	.string	"rtwint"
	.byte	0x3
	.byte	0x6e
	.long	0x294
	.uleb128 0x14
	.string	"rtint"
	.byte	0x3
	.byte	0x6f
	.long	0x219
	.uleb128 0x14
	.string	"rtuint"
	.byte	0x3
	.byte	0x70
	.long	0x220
	.uleb128 0x14
	.string	"rtstr"
	.byte	0x3
	.byte	0x71
	.long	0x206
	.uleb128 0x14
	.string	"rtx"
	.byte	0x3
	.byte	0x72
	.long	0x9f
	.uleb128 0x14
	.string	"rtvec"
	.byte	0x3
	.byte	0x73
	.long	0x1a0
	.uleb128 0x14
	.string	"rttype"
	.byte	0x3
	.byte	0x74
	.long	0x2e3
	.uleb128 0x14
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x75
	.long	0xdd5
	.uleb128 0x14
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x76
	.long	0xf83
	.uleb128 0x14
	.string	"rtbit"
	.byte	0x3
	.byte	0x77
	.long	0xfeb
	.uleb128 0x14
	.string	"rttree"
	.byte	0x3
	.byte	0x78
	.long	0x1e8
	.uleb128 0x14
	.string	"bb"
	.byte	0x3
	.byte	0x79
	.long	0x1176
	.uleb128 0x14
	.string	"rtmem"
	.byte	0x3
	.byte	0x7a
	.long	0x117c
	.byte	0x0
	.uleb128 0x4
	.long	0xf83
	.string	"cselib_val_struct"
	.byte	0x10
	.byte	0x3
	.byte	0x76
	.uleb128 0x6
	.string	"value"
	.byte	0x5
	.byte	0x1a
	.long	0x220
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"u"
	.byte	0x5
	.byte	0x21
	.long	0x23f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"locs"
	.byte	0x5
	.byte	0x25
	.long	0x248c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"addr_list"
	.byte	0x5
	.byte	0x28
	.long	0x19ff
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xf29
	.uleb128 0x4
	.long	0xfeb
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x77
	.uleb128 0x6
	.string	"first"
	.byte	0x7
	.byte	0x3d
	.long	0x1452
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x7
	.byte	0x3e
	.long	0x1452
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x7
	.byte	0x3f
	.long	0x220
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x7
	.byte	0x40
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xf89
	.uleb128 0x4
	.long	0x1176
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x79
	.uleb128 0x6
	.string	"head"
	.byte	0x8
	.byte	0xb5
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x8
	.byte	0xb5
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x8
	.byte	0xb8
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x8
	.byte	0xb9
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x8
	.byte	0xbc
	.long	0x1b89
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x8
	.byte	0xbc
	.long	0x1b89
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x8
	.byte	0xc1
	.long	0x1ab9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x8
	.byte	0xc5
	.long	0x1ab9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x8
	.byte	0xcb
	.long	0x1ab9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x8
	.byte	0xcd
	.long	0x1ab9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x8
	.byte	0xd0
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x8
	.byte	0xd3
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x8
	.byte	0xd6
	.long	0x1176
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x8
	.byte	0xd6
	.long	0x1176
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x8
	.byte	0xd9
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x8
	.byte	0xdc
	.long	0x1e04
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x8
	.byte	0xdf
	.long	0x1ac7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x8
	.byte	0xe2
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0x8
	.byte	0xe5
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xff1
	.uleb128 0x3
	.byte	0x4
	.long	0xe4c
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x7c
	.long	0xe57
	.uleb128 0xc
	.long	0x11a1
	.long	0x1182
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x11b1
	.long	0x9f
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.long	0x1379
	.string	"reg_note"
	.byte	0x4
	.byte	0x3
	.value	0x25d
	.uleb128 0xf
	.string	"REG_DEAD"
	.sleb128 1
	.uleb128 0xf
	.string	"REG_INC"
	.sleb128 2
	.uleb128 0xf
	.string	"REG_EQUIV"
	.sleb128 3
	.uleb128 0xf
	.string	"REG_EQUAL"
	.sleb128 4
	.uleb128 0xf
	.string	"REG_WAS_0"
	.sleb128 5
	.uleb128 0xf
	.string	"REG_RETVAL"
	.sleb128 6
	.uleb128 0xf
	.string	"REG_LIBCALL"
	.sleb128 7
	.uleb128 0xf
	.string	"REG_NONNEG"
	.sleb128 8
	.uleb128 0xf
	.string	"REG_NO_CONFLICT"
	.sleb128 9
	.uleb128 0xf
	.string	"REG_UNUSED"
	.sleb128 10
	.uleb128 0xf
	.string	"REG_CC_SETTER"
	.sleb128 11
	.uleb128 0xf
	.string	"REG_CC_USER"
	.sleb128 12
	.uleb128 0xf
	.string	"REG_LABEL"
	.sleb128 13
	.uleb128 0xf
	.string	"REG_DEP_ANTI"
	.sleb128 14
	.uleb128 0xf
	.string	"REG_DEP_OUTPUT"
	.sleb128 15
	.uleb128 0xf
	.string	"REG_BR_PROB"
	.sleb128 16
	.uleb128 0xf
	.string	"REG_NOALIAS"
	.sleb128 17
	.uleb128 0xf
	.string	"REG_SAVE_AREA"
	.sleb128 18
	.uleb128 0xf
	.string	"REG_BR_PRED"
	.sleb128 19
	.uleb128 0xf
	.string	"REG_FRAME_RELATED_EXPR"
	.sleb128 20
	.uleb128 0xf
	.string	"REG_EH_CONTEXT"
	.sleb128 21
	.uleb128 0xf
	.string	"REG_EH_REGION"
	.sleb128 22
	.uleb128 0xf
	.string	"REG_SAVE_NOTE"
	.sleb128 23
	.uleb128 0xf
	.string	"REG_MAYBE_DEAD"
	.sleb128 24
	.uleb128 0xf
	.string	"REG_NORETURN"
	.sleb128 25
	.uleb128 0xf
	.string	"REG_NON_LOCAL_GOTO"
	.sleb128 26
	.uleb128 0xf
	.string	"REG_SETJMP"
	.sleb128 27
	.uleb128 0xf
	.string	"REG_ALWAYS_RETURN"
	.sleb128 28
	.uleb128 0xf
	.string	"REG_VTABLE_REF"
	.sleb128 29
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9f
	.uleb128 0x2
	.string	"HARD_REG_ELT_TYPE"
	.byte	0xc
	.byte	0x29
	.long	0x2a5
	.uleb128 0x2
	.string	"HARD_REG_SET"
	.byte	0xc
	.byte	0x34
	.long	0x13ac
	.uleb128 0xc
	.long	0x13bc
	.long	0x137f
	.uleb128 0xd
	.long	0x227
	.byte	0x2
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x7
	.byte	0x1d
	.long	0x263
	.uleb128 0x4
	.long	0x1426
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x7
	.byte	0x34
	.uleb128 0x16
	.long	.LASF2
	.byte	0x7
	.byte	0x35
	.long	0x1426
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x7
	.byte	0x36
	.long	0x1426
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x7
	.byte	0x37
	.long	0x220
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x7
	.byte	0x38
	.long	0x142c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x13cf
	.uleb128 0xc
	.long	0x143c
	.long	0x13bc
	.uleb128 0xd
	.long	0x227
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x7
	.byte	0x39
	.long	0x13cf
	.uleb128 0x3
	.byte	0x4
	.long	0x143c
	.uleb128 0x2
	.string	"bitmap_head"
	.byte	0x7
	.byte	0x42
	.long	0xf89
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x7
	.byte	0x43
	.long	0xfeb
	.uleb128 0x4
	.long	0x14d3
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x9
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x9
	.byte	0x21
	.long	0x220
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x9
	.byte	0x22
	.long	0x220
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0x9
	.byte	0x23
	.long	0x220
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x9
	.byte	0x24
	.long	0x14d3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x14e3
	.long	0x2a5
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x9
	.byte	0x25
	.long	0x14f2
	.uleb128 0x3
	.byte	0x4
	.long	0x1479
	.uleb128 0x4
	.long	0x152e
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0x6
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0x6
	.byte	0x32
	.long	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0x6
	.byte	0x36
	.long	0x220
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xe
	.long	0x16c9
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0x6
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
	.uleb128 0x13
	.long	0x17c5
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x6
	.byte	0x55
	.uleb128 0x14
	.string	"c"
	.byte	0x6
	.byte	0x56
	.long	0x2d3
	.uleb128 0x14
	.string	"uc"
	.byte	0x6
	.byte	0x58
	.long	0x17c5
	.uleb128 0x14
	.string	"s"
	.byte	0x6
	.byte	0x5a
	.long	0x17d5
	.uleb128 0x14
	.string	"us"
	.byte	0x6
	.byte	0x5c
	.long	0x17e5
	.uleb128 0x14
	.string	"i"
	.byte	0x6
	.byte	0x5e
	.long	0x17f5
	.uleb128 0x14
	.string	"u"
	.byte	0x6
	.byte	0x60
	.long	0x1805
	.uleb128 0x14
	.string	"l"
	.byte	0x6
	.byte	0x62
	.long	0x1815
	.uleb128 0x14
	.string	"ul"
	.byte	0x6
	.byte	0x64
	.long	0x1825
	.uleb128 0x14
	.string	"hint"
	.byte	0x6
	.byte	0x66
	.long	0x1835
	.uleb128 0x14
	.string	"uhint"
	.byte	0x6
	.byte	0x68
	.long	0x14d3
	.uleb128 0x14
	.string	"generic"
	.byte	0x6
	.byte	0x6a
	.long	0x1845
	.uleb128 0x14
	.string	"cptr"
	.byte	0x6
	.byte	0x6c
	.long	0x1855
	.uleb128 0x14
	.string	"rtx"
	.byte	0x6
	.byte	0x6e
	.long	0x1865
	.uleb128 0x14
	.string	"rtvec"
	.byte	0x6
	.byte	0x70
	.long	0x1875
	.uleb128 0x14
	.string	"tree"
	.byte	0x6
	.byte	0x72
	.long	0x1885
	.uleb128 0x14
	.string	"bitmap"
	.byte	0x6
	.byte	0x74
	.long	0x1895
	.uleb128 0x14
	.string	"reg"
	.byte	0x6
	.byte	0x76
	.long	0x18a5
	.uleb128 0x14
	.string	"const_equiv"
	.byte	0x6
	.byte	0x78
	.long	0x19a1
	.uleb128 0x14
	.string	"bb"
	.byte	0x6
	.byte	0x7a
	.long	0x19b1
	.uleb128 0x14
	.string	"te"
	.byte	0x6
	.byte	0x7c
	.long	0x19c1
	.byte	0x0
	.uleb128 0xc
	.long	0x17d5
	.long	0x23c
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x17e5
	.long	0x287
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x17f5
	.long	0x24d
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x1805
	.long	0x219
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x1815
	.long	0x220
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x1825
	.long	0x2bf
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x1835
	.long	0x263
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x1845
	.long	0x294
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x1855
	.long	0x2cb
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x1865
	.long	0x2cd
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x1875
	.long	0xaa
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x1885
	.long	0x1ad
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x1895
	.long	0x1f4
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x18a5
	.long	0xfeb
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x18b5
	.long	0x199b
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x199b
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0x6
	.byte	0x76
	.uleb128 0x6
	.string	"first_uid"
	.byte	0xd
	.byte	0x31
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last_uid"
	.byte	0xd
	.byte	0x32
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"last_note_uid"
	.byte	0xd
	.byte	0x33
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sets"
	.byte	0xd
	.byte	0x36
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"refs"
	.byte	0xd
	.byte	0x39
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"freq"
	.byte	0xd
	.byte	0x3a
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"deaths"
	.byte	0xd
	.byte	0x3b
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"live_length"
	.byte	0xd
	.byte	0x3c
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"calls_crossed"
	.byte	0xd
	.byte	0x3d
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.long	.LASF3
	.byte	0xd
	.byte	0x3e
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"changes_mode"
	.byte	0xd
	.byte	0x3f
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x18b5
	.uleb128 0xc
	.long	0x19b1
	.long	0x14f8
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x19c1
	.long	0x1176
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x19d1
	.long	0x19ff
	.uleb128 0xd
	.long	0x227
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x19ff
	.string	"elt_list"
	.byte	0x8
	.byte	0x6
	.byte	0x7c
	.uleb128 0x16
	.long	.LASF2
	.byte	0x5
	.byte	0x3b
	.long	0x19ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elt"
	.byte	0x5
	.byte	0x3c
	.long	0x24a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x19d1
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x6
	.byte	0x7e
	.long	0x16c9
	.uleb128 0x4
	.long	0x1a8d
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x6
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0x6
	.byte	0x82
	.long	0x22e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0x6
	.byte	0x83
	.long	0x22e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0x6
	.byte	0x85
	.long	0x152e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"name"
	.byte	0x6
	.byte	0x86
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0x6
	.byte	0x87
	.long	0x1a05
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x6
	.byte	0x8a
	.long	0x1aa0
	.uleb128 0x3
	.byte	0x4
	.long	0x1a18
	.uleb128 0x2
	.string	"regset_head"
	.byte	0x8
	.byte	0x20
	.long	0x1458
	.uleb128 0x2
	.string	"regset"
	.byte	0x8
	.byte	0x22
	.long	0x146b
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x8
	.byte	0x75
	.long	0x294
	.uleb128 0x4
	.long	0x1b83
	.string	"edge_def"
	.byte	0x28
	.byte	0x8
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x8
	.byte	0x7a
	.long	0x1b83
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x8
	.byte	0x7a
	.long	0x1b83
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x8
	.byte	0x7d
	.long	0x1176
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x8
	.byte	0x7d
	.long	0x1176
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x8
	.byte	0x80
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x8
	.byte	0x83
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0x8
	.byte	0x85
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x8
	.byte	0x86
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x8
	.byte	0x87
	.long	0x1ac7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1ad8
	.uleb128 0x2
	.string	"edge"
	.byte	0x8
	.byte	0x89
	.long	0x1b83
	.uleb128 0x4
	.long	0x1e04
	.string	"loop"
	.byte	0x80
	.byte	0x8
	.byte	0xdc
	.uleb128 0x17
	.string	"num"
	.byte	0x8
	.value	0x176
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.string	"header"
	.byte	0x8
	.value	0x179
	.long	0x1e0a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"latch"
	.byte	0x8
	.value	0x17c
	.long	0x1e0a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"pre_header"
	.byte	0x8
	.value	0x17f
	.long	0x1e0a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.string	"pre_header_edges"
	.byte	0x8
	.value	0x184
	.long	0x1e15
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.string	"num_pre_header_edges"
	.byte	0x8
	.value	0x187
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.string	"first"
	.byte	0x8
	.value	0x18b
	.long	0x1e0a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.string	"last"
	.byte	0x8
	.value	0x18f
	.long	0x1e0a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x17
	.string	"nodes"
	.byte	0x8
	.value	0x192
	.long	0x14e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.string	"num_nodes"
	.byte	0x8
	.value	0x195
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x17
	.string	"entry_edges"
	.byte	0x8
	.value	0x198
	.long	0x1e15
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x17
	.string	"num_entries"
	.byte	0x8
	.value	0x19b
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x17
	.string	"exit_edges"
	.byte	0x8
	.value	0x19e
	.long	0x1e15
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x17
	.string	"num_exits"
	.byte	0x8
	.value	0x1a1
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x17
	.string	"exits_doms"
	.byte	0x8
	.value	0x1a4
	.long	0x14e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x17
	.string	"depth"
	.byte	0x8
	.value	0x1a7
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x17
	.string	"pred"
	.byte	0x8
	.value	0x1aa
	.long	0x1e1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x17
	.string	"level"
	.byte	0x8
	.value	0x1ae
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x17
	.string	"outer"
	.byte	0x8
	.value	0x1b1
	.long	0x1e04
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x17
	.string	"inner"
	.byte	0x8
	.value	0x1b4
	.long	0x1e04
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x18
	.long	.LASF2
	.byte	0x8
	.value	0x1b7
	.long	0x1e04
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x17
	.string	"invalid"
	.byte	0x8
	.value	0x1ba
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x17
	.string	"aux"
	.byte	0x8
	.value	0x1bd
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x17
	.string	"vtop"
	.byte	0x8
	.value	0x1c3
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x17
	.string	"cont"
	.byte	0x8
	.value	0x1c7
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x17
	.string	"start"
	.byte	0x8
	.value	0x1ca
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x17
	.string	"end"
	.byte	0x8
	.value	0x1cd
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x17
	.string	"top"
	.byte	0x8
	.value	0x1d1
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x17
	.string	"scan_start"
	.byte	0x8
	.value	0x1d4
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x17
	.string	"sink"
	.byte	0x8
	.value	0x1d7
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x17
	.string	"exit_labels"
	.byte	0x8
	.value	0x1e2
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x17
	.string	"exit_count"
	.byte	0x8
	.value	0x1e6
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1b95
	.uleb128 0x12
	.long	.LASF3
	.byte	0x8
	.byte	0xe6
	.long	0x1176
	.uleb128 0x3
	.byte	0x4
	.long	0x1b89
	.uleb128 0x3
	.byte	0x4
	.long	0x1e04
	.uleb128 0x8
	.long	0x206
	.uleb128 0x19
	.long	0x1e36
	.byte	0x1
	.long	0x219
	.uleb128 0x1a
	.long	0x9f
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e26
	.uleb128 0x19
	.long	0x1e51
	.byte	0x1
	.long	0x219
	.uleb128 0x1a
	.long	0x9f
	.uleb128 0x1a
	.long	0x9f
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e3c
	.uleb128 0x4
	.long	0x1eca
	.string	"deps_reg"
	.byte	0x14
	.byte	0xa
	.byte	0x68
	.uleb128 0x6
	.string	"uses"
	.byte	0xa
	.byte	0x69
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sets"
	.byte	0xa
	.byte	0x6a
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"clobbers"
	.byte	0xa
	.byte	0x6b
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"uses_length"
	.byte	0xa
	.byte	0x6c
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"clobbers_length"
	.byte	0xa
	.byte	0x6d
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x11
	.long	0x2085
	.long	.LASF4
	.byte	0x54
	.byte	0xa
	.byte	0x1f
	.uleb128 0x6
	.string	"pending_read_insns"
	.byte	0xa
	.byte	0x2a
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"pending_read_mems"
	.byte	0xa
	.byte	0x2d
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"pending_write_insns"
	.byte	0xa
	.byte	0x30
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"pending_write_mems"
	.byte	0xa
	.byte	0x33
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pending_lists_length"
	.byte	0xa
	.byte	0x39
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"pending_flush_length"
	.byte	0xa
	.byte	0x3d
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"last_pending_memory_flush"
	.byte	0xa
	.byte	0x48
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"last_function_call"
	.byte	0xa
	.byte	0x4d
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"sched_before_next_call"
	.byte	0xa
	.byte	0x53
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"in_post_call_group_p"
	.byte	0xa
	.byte	0x57
	.long	0x2085
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"libcall_block_tail_insn"
	.byte	0xa
	.byte	0x5d
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"max_reg"
	.byte	0xa
	.byte	0x61
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x16
	.long	.LASF5
	.byte	0xa
	.byte	0x6e
	.long	0x208e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"reg_last_in_use"
	.byte	0xa
	.byte	0x72
	.long	0x1aa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"reg_conditional_sets"
	.byte	0xa
	.byte	0x75
	.long	0x1aa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0x0
	.uleb128 0x9
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x3
	.byte	0x4
	.long	0x1e57
	.uleb128 0x4
	.long	0x21fa
	.string	"sched_info"
	.byte	0x34
	.byte	0xa
	.byte	0x7e
	.uleb128 0x6
	.string	"init_ready_list"
	.byte	0xa
	.byte	0x81
	.long	0x2219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"can_schedule_ready_p"
	.byte	0xa
	.byte	0x84
	.long	0x1e36
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"schedule_more_p"
	.byte	0xa
	.byte	0x86
	.long	0x2225
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"new_ready"
	.byte	0xa
	.byte	0x8a
	.long	0x1e36
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"rank"
	.byte	0xa
	.byte	0x8e
	.long	0x1e51
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"print_insn"
	.byte	0xa
	.byte	0x93
	.long	0x2240
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"contributes_to_priority"
	.byte	0xa
	.byte	0x96
	.long	0x1e51
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"compute_jump_reg_dependencies"
	.byte	0xa
	.byte	0x9a
	.long	0x2261
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"prev_head"
	.byte	0xa
	.byte	0x9d
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.long	.LASF6
	.byte	0xa
	.byte	0x9d
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"head"
	.byte	0xa
	.byte	0xa1
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"tail"
	.byte	0xa
	.byte	0xa1
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5
	.string	"queue_must_finish_empty"
	.byte	0xa
	.byte	0xa4
	.long	0x220
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"use_cselib"
	.byte	0xa
	.byte	0xa9
	.long	0x220
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x1b
	.long	0x2206
	.byte	0x1
	.uleb128 0x1a
	.long	0x2206
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x220c
	.uleb128 0x1c
	.string	"ready_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x21fa
	.uleb128 0x1d
	.byte	0x1
	.long	0x219
	.uleb128 0x3
	.byte	0x4
	.long	0x221f
	.uleb128 0x19
	.long	0x2240
	.byte	0x1
	.long	0x206
	.uleb128 0x1a
	.long	0x9f
	.uleb128 0x1a
	.long	0x219
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x222b
	.uleb128 0x1b
	.long	0x2261
	.byte	0x1
	.uleb128 0x1a
	.long	0x9f
	.uleb128 0x1a
	.long	0x1ab9
	.uleb128 0x1a
	.long	0x1ab9
	.uleb128 0x1a
	.long	0x1ab9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2246
	.uleb128 0x4
	.long	0x23b0
	.string	"haifa_insn_data"
	.byte	0x28
	.byte	0xa
	.byte	0xb2
	.uleb128 0x6
	.string	"depend"
	.byte	0xa
	.byte	0xb5
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line_note"
	.byte	0xa
	.byte	0xb9
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"luid"
	.byte	0xa
	.byte	0xbc
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"priority"
	.byte	0xa
	.byte	0xbf
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"dep_count"
	.byte	0xa
	.byte	0xc4
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"blockage"
	.byte	0xa
	.byte	0xc8
	.long	0x220
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"ref_count"
	.byte	0xa
	.byte	0xcb
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"tick"
	.byte	0xa
	.byte	0xcf
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"cost"
	.byte	0xa
	.byte	0xd1
	.long	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"units"
	.byte	0xa
	.byte	0xd5
	.long	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x6
	.string	"reg_weight"
	.byte	0xa
	.byte	0xd9
	.long	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"cant_move"
	.byte	0xa
	.byte	0xdc
	.long	0x220
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"fed_by_spec_load"
	.byte	0xa
	.byte	0xe0
	.long	0x220
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"is_load_insn"
	.byte	0xa
	.byte	0xe1
	.long	0x220
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"priority_known"
	.byte	0xa
	.byte	0xe4
	.long	0x220
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x11
	.long	0x23ed
	.long	.LASF7
	.byte	0xc
	.byte	0x10
	.byte	0x2d
	.uleb128 0x6
	.string	"option"
	.byte	0x10
	.byte	0x30
	.long	0x1e21
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"value"
	.byte	0x10
	.byte	0x32
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"help"
	.byte	0x10
	.byte	0x34
	.long	0x1e21
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x12
	.long	.LASF7
	.byte	0x10
	.byte	0x35
	.long	0x23b0
	.uleb128 0x13
	.long	0x242e
	.string	"cselib_val_u"
	.byte	0x4
	.byte	0x5
	.byte	0x1c
	.uleb128 0x14
	.string	"val_rtx"
	.byte	0x5
	.byte	0x1e
	.long	0x9f
	.uleb128 0x14
	.string	"next_free"
	.byte	0x5
	.byte	0x20
	.long	0xf83
	.byte	0x0
	.uleb128 0x4
	.long	0x248c
	.string	"elt_loc_list"
	.byte	0x10
	.byte	0x5
	.byte	0x25
	.uleb128 0x16
	.long	.LASF2
	.byte	0x5
	.byte	0x2f
	.long	0x248c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"loc"
	.byte	0x5
	.byte	0x31
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"setting_insn"
	.byte	0x5
	.byte	0x33
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"in_libcall"
	.byte	0x5
	.byte	0x35
	.long	0x2085
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x242e
	.uleb128 0x2
	.string	"cselib_val"
	.byte	0x5
	.byte	0x29
	.long	0xf29
	.uleb128 0x3
	.byte	0x4
	.long	0x2492
	.uleb128 0x1e
	.long	0x24f0
	.string	"deps_may_trap_p"
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.long	0x219
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x1f
	.string	"mem"
	.byte	0x1
	.byte	0x64
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"addr"
	.byte	0x1
	.byte	0x66
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x21
	.long	0x2536
	.byte	0x1
	.string	"find_insn_list"
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.long	0x9f
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x22
	.long	.LASF8
	.byte	0x1
	.byte	0x74
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"list"
	.byte	0x1
	.byte	0x75
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x1e
	.long	0x2588
	.string	"get_condition"
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.long	0x9f
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x22
	.long	.LASF8
	.byte	0x1
	.byte	0x84
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"pat"
	.byte	0x1
	.byte	0x86
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.string	"cond"
	.byte	0x1
	.byte	0x87
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1e
	.long	0x25d4
	.string	"conditions_mutex_p"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.long	0x219
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x1f
	.string	"cond1"
	.byte	0x1
	.byte	0xa4
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"cond2"
	.byte	0x1
	.byte	0xa4
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x21
	.long	0x26d0
	.byte	0x1
	.string	"add_dependence"
	.byte	0x1
	.byte	0xb9
	.byte	0x1
	.long	0x219
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x22
	.long	.LASF8
	.byte	0x1
	.byte	0xb6
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"elem"
	.byte	0x1
	.byte	0xb7
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.long	.LASF9
	.byte	0x1
	.byte	0xb8
	.long	0x11b1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.long	.LASF10
	.byte	0x1
	.byte	0xba
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.long	.LASF2
	.byte	0x1
	.byte	0xba
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.string	"present_p"
	.byte	0x1
	.byte	0xbb
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.string	"cond1"
	.byte	0x1
	.byte	0xbc
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.string	"cond2"
	.byte	0x1
	.byte	0xbc
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.long	0x2695
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x20
	.string	"nnext"
	.byte	0x1
	.byte	0xec
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x24
	.long	0x26bf
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x25
	.string	"present_dep_type"
	.byte	0x1
	.value	0x10e
	.long	0x11b1
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x26
	.long	.LASF11
	.long	0x36cb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10573
	.byte	0x0
	.uleb128 0x27
	.long	0x2728
	.string	"add_dependence_list"
	.byte	0x1
	.value	0x16d
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x28
	.long	.LASF8
	.byte	0x1
	.value	0x16b
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"list"
	.byte	0x1
	.value	0x16b
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF9
	.byte	0x1
	.value	0x16c
	.long	0x11b1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x27
	.long	0x27a9
	.string	"add_dependence_list_and_free"
	.byte	0x1
	.value	0x179
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x28
	.long	.LASF8
	.byte	0x1
	.value	0x176
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"listp"
	.byte	0x1
	.value	0x177
	.long	0x1379
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF9
	.byte	0x1
	.value	0x178
	.long	0x11b1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"list"
	.byte	0x1
	.value	0x17a
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF2
	.byte	0x1
	.value	0x17a
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x27
	.long	0x283f
	.string	"remove_dependence"
	.byte	0x1
	.value	0x18a
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x28
	.long	.LASF8
	.byte	0x1
	.value	0x188
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"elem"
	.byte	0x1
	.value	0x189
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"prev"
	.byte	0x1
	.value	0x18b
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x18b
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF2
	.byte	0x1
	.value	0x18b
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"found"
	.byte	0x1
	.value	0x18c
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LASF11
	.long	0x36b6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11220
	.byte	0x0
	.uleb128 0x2b
	.long	0x2885
	.string	"group_leader"
	.byte	0x1
	.value	0x1bc
	.byte	0x1
	.long	0x9f
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x28
	.long	.LASF8
	.byte	0x1
	.value	0x1bb
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"prev"
	.byte	0x1
	.value	0x1bd
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x27
	.long	0x28db
	.string	"set_sched_group_p"
	.byte	0x1
	.value	0x1cf
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x28
	.long	.LASF8
	.byte	0x1
	.value	0x1ce
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x1d0
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.string	"prev"
	.byte	0x1
	.value	0x1d0
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x296f
	.byte	0x1
	.string	"add_insn_mem_dependence"
	.byte	0x1
	.value	0x1f8
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x28
	.long	.LASF4
	.byte	0x1
	.value	0x1f6
	.long	0x296f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"insn_list"
	.byte	0x1
	.value	0x1f7
	.long	0x1379
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"mem_list"
	.byte	0x1
	.value	0x1f7
	.long	0x1379
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.long	.LASF8
	.byte	0x1
	.value	0x1f7
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x29
	.string	"mem"
	.byte	0x1
	.value	0x1f7
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x1f9
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1eca
	.uleb128 0x27
	.long	0x29e6
	.string	"flush_pending_lists"
	.byte	0x1
	.value	0x212
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x28
	.long	.LASF4
	.byte	0x1
	.value	0x20f
	.long	0x296f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF8
	.byte	0x1
	.value	0x210
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"for_read"
	.byte	0x1
	.value	0x211
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"for_write"
	.byte	0x1
	.value	0x211
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x27
	.long	0x2af1
	.string	"sched_analyze_1"
	.byte	0x1
	.value	0x22e
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x28
	.long	.LASF4
	.byte	0x1
	.value	0x22b
	.long	0x296f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x22c
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF8
	.byte	0x1
	.value	0x22d
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"regno"
	.byte	0x1
	.value	0x22f
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.string	"dest"
	.byte	0x1
	.value	0x230
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"code"
	.byte	0x1
	.value	0x231
	.long	0x52c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.long	0x2a82
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x238
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x24
	.long	0x2a9d
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x25a
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x24
	.long	0x2ae0
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.value	0x287
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2a
	.long	.LASF12
	.byte	0x1
	.value	0x29b
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF13
	.byte	0x1
	.value	0x29b
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LASF11
	.long	0x36a1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11490
	.byte	0x0
	.uleb128 0x27
	.long	0x2c07
	.string	"sched_analyze_2"
	.byte	0x1
	.value	0x2c8
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x28
	.long	.LASF4
	.byte	0x1
	.value	0x2c5
	.long	0x296f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x2c6
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF8
	.byte	0x1
	.value	0x2c7
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x2c9
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x2ca
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"code"
	.byte	0x1
	.value	0x2cb
	.long	0x52c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.string	"fmt"
	.byte	0x1
	.value	0x2cc
	.long	0x206
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	0x2bb0
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x25
	.string	"regno"
	.byte	0x1
	.value	0x2e9
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x2ec
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x2bf6
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x25
	.string	"u"
	.byte	0x1
	.value	0x312
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF12
	.byte	0x1
	.value	0x313
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF13
	.byte	0x1
	.value	0x313
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.value	0x314
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x26
	.long	.LASF11
	.long	0x369c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11672
	.byte	0x0
	.uleb128 0x27
	.long	0x32be
	.string	"sched_analyze_insn"
	.byte	0x1
	.value	0x390
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x28
	.long	.LASF4
	.byte	0x1
	.value	0x38d
	.long	0x296f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x38e
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF8
	.byte	0x1
	.value	0x38e
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.long	.LASF14
	.byte	0x1
	.value	0x38f
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.string	"code"
	.byte	0x1
	.value	0x391
	.long	0x52c
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x392
	.long	0x9f
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x393
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x2e
	.string	"end_call_group"
	.byte	0x1
	.value	0x4d1
	.long	.L550
	.uleb128 0x24
	.long	0x2ce5
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x3aa
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2d
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x25
	.string	"sub"
	.byte	0x1
	.value	0x3ad
	.long	0x9f
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x2d57
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2a
	.long	.LASF2
	.byte	0x1
	.value	0x3cf
	.long	0x9f
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2d
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2a
	.long	.LASF12
	.byte	0x1
	.value	0x3d5
	.long	0x9f
	.byte	0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x2a
	.long	.LASF13
	.byte	0x1
	.value	0x3d5
	.long	0x9f
	.byte	0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x25
	.string	"tmp_uses"
	.byte	0x1
	.value	0x3d6
	.long	0x1aa6
	.byte	0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x25
	.string	"tmp_sets"
	.byte	0x1
	.value	0x3d6
	.long	0x1aa6
	.byte	0x3
	.byte	0x91
	.sleb128 -324
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x2d75
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x404
	.long	0x9f
	.byte	0x3
	.byte	0x91
	.sleb128 -260
	.byte	0x0
	.uleb128 0x24
	.long	0x2e11
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2a
	.long	.LASF15
	.byte	0x1
	.value	0x423
	.long	0x1452
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x423
	.long	0x220
	.byte	0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.value	0x423
	.long	0x220
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x423
	.long	0x220
	.byte	0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x2d
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x423
	.long	0x13bc
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2d
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x423
	.long	0x13bc
	.byte	0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x2d
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x423
	.long	0x208e
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x2ead
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x2a
	.long	.LASF15
	.byte	0x1
	.value	0x42d
	.long	0x1452
	.byte	0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x42d
	.long	0x220
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.value	0x42d
	.long	0x220
	.byte	0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x42d
	.long	0x220
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2d
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x42d
	.long	0x13bc
	.byte	0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x2d
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x42d
	.long	0x13bc
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2d
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x42d
	.long	0x208e
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x2ecb
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x43b
	.long	0x208e
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.byte	0x0
	.uleb128 0x24
	.long	0x2f67
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x2a
	.long	.LASF15
	.byte	0x1
	.value	0x44a
	.long	0x1452
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x44a
	.long	0x220
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.value	0x44a
	.long	0x220
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x44a
	.long	0x220
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2d
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x44a
	.long	0x13bc
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2d
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x44a
	.long	0x13bc
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2d
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x44a
	.long	0x208e
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x3003
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x2a
	.long	.LASF15
	.byte	0x1
	.value	0x452
	.long	0x1452
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x452
	.long	0x220
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.value	0x452
	.long	0x220
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x452
	.long	0x220
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2d
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x452
	.long	0x13bc
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2d
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x452
	.long	0x13bc
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2d
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x452
	.long	0x208e
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x309f
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x2a
	.long	.LASF15
	.byte	0x1
	.value	0x45a
	.long	0x1452
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x45a
	.long	0x220
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.value	0x45a
	.long	0x220
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x45a
	.long	0x220
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2d
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x45a
	.long	0x13bc
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2d
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x45a
	.long	0x13bc
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x45a
	.long	0x208e
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x313b
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x2a
	.long	.LASF15
	.byte	0x1
	.value	0x466
	.long	0x1452
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x466
	.long	0x220
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.value	0x466
	.long	0x220
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x466
	.long	0x220
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2d
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x466
	.long	0x13bc
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x466
	.long	0x13bc
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2d
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x466
	.long	0x208e
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x31d5
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x2a
	.long	.LASF15
	.byte	0x1
	.value	0x46e
	.long	0x1452
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x46e
	.long	0x220
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.value	0x46e
	.long	0x220
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x46e
	.long	0x220
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x46e
	.long	0x13bc
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x46e
	.long	0x13bc
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x46e
	.long	0x208e
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x326a
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x2a
	.long	.LASF15
	.byte	0x1
	.value	0x486
	.long	0x1452
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x486
	.long	0x220
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.value	0x486
	.long	0x220
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x486
	.long	0x220
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x486
	.long	0x13bc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x486
	.long	0x13bc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x486
	.long	0x208e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x25
	.string	"tmp"
	.byte	0x1
	.value	0x4b3
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.string	"set"
	.byte	0x1
	.value	0x4b3
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"src_regno"
	.byte	0x1
	.value	0x4b4
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.string	"dest_regno"
	.byte	0x1
	.value	0x4b4
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x33c8
	.byte	0x1
	.string	"sched_analyze"
	.byte	0x1
	.value	0x4de
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x28
	.long	.LASF4
	.byte	0x1
	.value	0x4dc
	.long	0x296f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"head"
	.byte	0x1
	.value	0x4dd
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"tail"
	.byte	0x1
	.value	0x4dd
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF8
	.byte	0x1
	.value	0x4df
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x4e0
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	0x33b7
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x4e7
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"end_seq"
	.byte	0x1
	.value	0x4e7
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"r0"
	.byte	0x1
	.value	0x4e7
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.string	"set"
	.byte	0x1
	.value	0x4e7
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	0x3396
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x4fe
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x25
	.string	"rtx_region"
	.byte	0x1
	.value	0x54c
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LASF11
	.long	0x3687
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12491
	.byte	0x0
	.uleb128 0x2c
	.long	0x3437
	.byte	0x1
	.string	"add_forward_dependence"
	.byte	0x1
	.value	0x59a
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x29
	.string	"from"
	.byte	0x1
	.value	0x597
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"to"
	.byte	0x1
	.value	0x598
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF9
	.byte	0x1
	.value	0x599
	.long	0x11b1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"new_link"
	.byte	0x1
	.value	0x59b
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x34b7
	.byte	0x1
	.string	"compute_forward_dependences"
	.byte	0x1
	.value	0x5c0
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x29
	.string	"head"
	.byte	0x1
	.value	0x5bf
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"tail"
	.byte	0x1
	.value	0x5bf
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF8
	.byte	0x1
	.value	0x5c1
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x5c1
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF6
	.byte	0x1
	.value	0x5c2
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2c
	.long	0x34fa
	.byte	0x1
	.string	"init_deps"
	.byte	0x1
	.value	0x5d8
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x28
	.long	.LASF4
	.byte	0x1
	.value	0x5d7
	.long	0x296f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"max_reg"
	.byte	0x1
	.value	0x5d9
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x35c8
	.byte	0x1
	.string	"free_deps"
	.byte	0x1
	.value	0x5f3
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x28
	.long	.LASF4
	.byte	0x1
	.value	0x5f2
	.long	0x296f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x5f4
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x2a
	.long	.LASF15
	.byte	0x1
	.value	0x5ff
	.long	0x1452
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x5ff
	.long	0x220
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.value	0x5ff
	.long	0x220
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x5ff
	.long	0x220
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x5ff
	.long	0x13bc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x5ff
	.long	0x13bc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x5ff
	.long	0x208e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x3606
	.byte	0x1
	.string	"init_dependency_caches"
	.byte	0x1
	.value	0x616
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x29
	.string	"luid"
	.byte	0x1
	.value	0x615
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.byte	0x1
	.string	"free_dependency_caches"
	.byte	0x1
	.value	0x630
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x2f
	.byte	0x1
	.string	"init_deps_global"
	.byte	0x1
	.value	0x645
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x2f
	.byte	0x1
	.string	"finish_deps_global"
	.byte	0x1
	.value	0x650
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0xc
	.long	0x3687
	.long	0x211
	.uleb128 0xd
	.long	0x227
	.byte	0xd
	.byte	0x0
	.uleb128 0x8
	.long	0x3677
	.uleb128 0xc
	.long	0x369c
	.long	0x211
	.uleb128 0xd
	.long	0x227
	.byte	0xf
	.byte	0x0
	.uleb128 0x8
	.long	0x368c
	.uleb128 0x8
	.long	0x368c
	.uleb128 0xc
	.long	0x36b6
	.long	0x211
	.uleb128 0xd
	.long	0x227
	.byte	0x11
	.byte	0x0
	.uleb128 0x8
	.long	0x36a6
	.uleb128 0xc
	.long	0x36cb
	.long	0x211
	.uleb128 0xd
	.long	0x227
	.byte	0xe
	.byte	0x0
	.uleb128 0x8
	.long	0x36bb
	.uleb128 0x20
	.string	"reg_pending_sets_head"
	.byte	0x1
	.byte	0x2f
	.long	0x1aa6
	.byte	0x5
	.byte	0x3
	.long	reg_pending_sets_head
	.uleb128 0x20
	.string	"reg_pending_clobbers_head"
	.byte	0x1
	.byte	0x30
	.long	0x1aa6
	.byte	0x5
	.byte	0x3
	.long	reg_pending_clobbers_head
	.uleb128 0x20
	.string	"reg_pending_uses_head"
	.byte	0x1
	.byte	0x31
	.long	0x1aa6
	.byte	0x5
	.byte	0x3
	.long	reg_pending_uses_head
	.uleb128 0x20
	.string	"reg_pending_sets"
	.byte	0x1
	.byte	0x33
	.long	0x1ab9
	.byte	0x5
	.byte	0x3
	.long	reg_pending_sets
	.uleb128 0x20
	.string	"reg_pending_clobbers"
	.byte	0x1
	.byte	0x34
	.long	0x1ab9
	.byte	0x5
	.byte	0x3
	.long	reg_pending_clobbers
	.uleb128 0x20
	.string	"reg_pending_uses"
	.byte	0x1
	.byte	0x35
	.long	0x1ab9
	.byte	0x5
	.byte	0x3
	.long	reg_pending_uses
	.uleb128 0x20
	.string	"reg_pending_barrier"
	.byte	0x1
	.byte	0x36
	.long	0x2085
	.byte	0x5
	.byte	0x3
	.long	reg_pending_barrier
	.uleb128 0x20
	.string	"true_dependency_cache"
	.byte	0x1
	.byte	0x45
	.long	0x37df
	.byte	0x5
	.byte	0x3
	.long	true_dependency_cache
	.uleb128 0x3
	.byte	0x4
	.long	0x14e3
	.uleb128 0x20
	.string	"anti_dependency_cache"
	.byte	0x1
	.byte	0x46
	.long	0x37df
	.byte	0x5
	.byte	0x3
	.long	anti_dependency_cache
	.uleb128 0x20
	.string	"output_dependency_cache"
	.byte	0x1
	.byte	0x47
	.long	0x37df
	.byte	0x5
	.byte	0x3
	.long	output_dependency_cache
	.uleb128 0x30
	.string	"target_flags"
	.byte	0xb
	.byte	0x21
	.long	0x219
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0x3853
	.long	0x23c
	.uleb128 0xd
	.long	0x227
	.byte	0xa2
	.byte	0x0
	.uleb128 0x30
	.string	"rtx_length"
	.byte	0x3
	.byte	0x36
	.long	0x3867
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x3843
	.uleb128 0xc
	.long	0x387c
	.long	0x206
	.uleb128 0xd
	.long	0x227
	.byte	0xa2
	.byte	0x0
	.uleb128 0x30
	.string	"rtx_format"
	.byte	0x3
	.byte	0x3c
	.long	0x3890
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x386c
	.uleb128 0xc
	.long	0x38a5
	.long	0x211
	.uleb128 0xd
	.long	0x227
	.byte	0xa2
	.byte	0x0
	.uleb128 0x30
	.string	"rtx_class"
	.byte	0x3
	.byte	0x3f
	.long	0x38b8
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x3895
	.uleb128 0xc
	.long	0x38cd
	.long	0x9f
	.uleb128 0xd
	.long	0x227
	.byte	0xa
	.byte	0x0
	.uleb128 0x31
	.string	"global_rtl"
	.byte	0x3
	.value	0x6df
	.long	0x38bd
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"reload_completed"
	.byte	0x3
	.value	0x75d
	.long	0x219
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0x390d
	.long	0x211
	.uleb128 0xd
	.long	0x227
	.byte	0xaf
	.byte	0x0
	.uleb128 0x31
	.string	"fixed_regs"
	.byte	0xc
	.value	0x18b
	.long	0x38fd
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"global_regs"
	.byte	0xc
	.value	0x1b4
	.long	0x38fd
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"regs_invalidated_by_call"
	.byte	0xc
	.value	0x1bd
	.long	0x1398
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"n_basic_blocks"
	.byte	0x8
	.byte	0xf2
	.long	0x219
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"reg_n_info"
	.byte	0xd
	.byte	0x43
	.long	0x1a8d
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"frame_pointer_needed"
	.byte	0xf
	.value	0x26a
	.long	0x219
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"current_sched_info"
	.byte	0xa
	.byte	0xac
	.long	0x39c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2094
	.uleb128 0x30
	.string	"h_i_d"
	.byte	0xa
	.byte	0xe7
	.long	0x39d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2267
	.uleb128 0x30
	.string	"compiler_params"
	.byte	0x10
	.byte	0x3a
	.long	0x39f6
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x23ed
	.uleb128 0x30
	.string	"reg_known_equiv_p"
	.byte	0x1
	.byte	0x2c
	.long	0x2cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"reg_known_value"
	.byte	0x1
	.byte	0x2d
	.long	0x1379
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.long	0x11b
	.value	0x2
	.long	.Ldebug_info0
	.long	0x3a31
	.long	0x24f0
	.string	"find_insn_list"
	.long	0x25d4
	.string	"add_dependence"
	.long	0x28db
	.string	"add_insn_mem_dependence"
	.long	0x32be
	.string	"sched_analyze"
	.long	0x33c8
	.string	"add_forward_dependence"
	.long	0x3437
	.string	"compute_forward_dependences"
	.long	0x34b7
	.string	"init_deps"
	.long	0x34fa
	.string	"free_deps"
	.long	0x35c8
	.string	"init_dependency_caches"
	.long	0x3606
	.string	"free_dependency_caches"
	.long	0x362f
	.string	"init_deps_global"
	.long	0x3652
	.string	"finish_deps_global"
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
	.string	"next"
.LASF5:
	.string	"reg_last"
.LASF7:
	.string	"param_info"
.LASF12:
	.string	"pending"
.LASF3:
	.string	"basic_block"
.LASF10:
	.string	"link"
.LASF18:
	.string	"word_num_"
.LASF1:
	.string	"mem_attrs"
.LASF15:
	.string	"ptr_"
.LASF9:
	.string	"dep_type"
.LASF16:
	.string	"indx_"
.LASF8:
	.string	"insn"
.LASF11:
	.string	"__FUNCTION__"
.LASF20:
	.string	"mask_"
.LASF14:
	.string	"loop_notes"
.LASF13:
	.string	"pending_mem"
.LASF4:
	.string	"deps"
.LASF19:
	.string	"word_"
.LASF6:
	.string	"next_tail"
.LASF17:
	.string	"bit_num_"
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
