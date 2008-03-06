	.file	"integrate.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	inlining
	.comm	inlining,4,4
.globl get_label_from_map
	.type	get_label_from_map, @function
get_label_from_map:
.LFB15:
	.file 1 "../../../kg++fe/gnu/integrate.c"
	.loc 1 114 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%esi
.LCFI2:
	pushl	%ebx
.LCFI3:
	subl	$16, %esp
.LCFI4:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 115 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 117 0
	cmpl	$0, -12(%ebp)
	jne	.L2
	.loc 1 118 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	call	gen_label_rtx@PLT
	movl	%eax, (%esi)
	movl	(%esi), %eax
	movl	%eax, -12(%ebp)
.L2:
	.loc 1 120 0
	movl	-12(%ebp), %eax
	.loc 1 121 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE15:
	.size	get_label_from_map, .-get_label_from_map
.globl function_attribute_inlinable_p
	.type	function_attribute_inlinable_p, @function
function_attribute_inlinable_p:
.LFB16:
	.loc 1 128 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%ebx
.LCFI7:
	subl	$36, %esp
.LCFI8:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 129 0
	movl	targetm@GOT(%ebx), %eax
	movl	184(%eax), %eax
	testl	%eax, %eax
	je	.L6
.LBB2:
	.loc 1 133 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L8
.L9:
.LBB3:
	.loc 1 135 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 138 0
	movl	$0, -8(%ebp)
	jmp	.L10
.L11:
	.loc 1 139 0
	movl	targetm@GOT(%ebx), %eax
	movl	184(%eax), %ecx
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	is_attribute_p@PLT
	testl	%eax, %eax
	je	.L12
	.loc 1 140 0
	movl	targetm@GOT(%ebx), %eax
	movl	200(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	jmp	.L14
.L12:
	.loc 1 138 0
	addl	$1, -8(%ebp)
.L10:
	movl	targetm@GOT(%ebx), %eax
	movl	184(%eax), %ecx
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L11
.LBE3:
	.loc 1 133 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L8:
	cmpl	$0, -16(%ebp)
	jne	.L9
.L6:
.LBE2:
	.loc 1 144 0
	movl	$1, -24(%ebp)
.L14:
	movl	-24(%ebp), %eax
	.loc 1 145 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	function_attribute_inlinable_p, .-function_attribute_inlinable_p
	.section	.rodata
.LC0:
	.string	"function cannot be inline"
	.align 4
.LC1:
	.string	"varargs function cannot be inline"
	.align 4
.LC2:
	.string	"function using alloca cannot be inline"
	.align 4
.LC3:
	.string	"function using setjmp cannot be inline"
	.align 4
.LC4:
	.string	"function uses __builtin_eh_return"
	.align 4
.LC5:
	.string	"function with nested functions cannot be inline"
	.align 4
.LC6:
	.string	"function with label addresses used in initializers cannot inline"
	.align 4
.LC7:
	.string	"function too large to be inline"
	.align 4
.LC8:
	.string	"inline functions not supported for this return value type"
	.align 4
.LC9:
	.string	"function with varying-size return value cannot be inline"
	.align 4
.LC10:
	.string	"function with varying-size parameter cannot be inline"
	.align 4
.LC11:
	.string	"function with transparent unit parameter cannot be inline"
	.align 4
.LC12:
	.string	"function with computed jump cannot inline"
	.align 4
.LC13:
	.string	"function with nonlocal goto cannot be inline"
	.align 4
.LC14:
	.string	"function with target specific attribute(s) cannot be inlined"
	.text
.globl function_cannot_inline_p
	.type	function_cannot_inline_p, @function
function_cannot_inline_p:
.LFB17:
	.loc 1 155 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	pushl	%esi
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$64, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 157 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	tree_last@PLT
	movl	%eax, -28(%ebp)
	.loc 1 168 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L18
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$60, %eax
	movl	4(%eax), %esi
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	sall	$3, %eax
	addl	%eax, %esi
	movl	%esi, -56(%ebp)
	jmp	.L20
.L18:
	movl	optimize_size@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L21
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	(%eax,%edx), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	$1, %eax
	movl	%eax, -52(%ebp)
	jmp	.L23
.L21:
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	sall	$3, %eax
	addl	$64, %eax
	movl	%eax, -52(%ebp)
.L23:
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
.L20:
	movl	-56(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 170 0
	movl	$0, -20(%ebp)
	.loc 1 173 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L24
	.loc 1 174 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L24:
	.loc 1 177 0
	cmpl	$0, -28(%ebp)
	je	.L27
	movl	-28(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	%eax, %edx
	je	.L27
	.loc 1 178 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L27:
	.loc 1 180 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L30
	.loc 1 181 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L30:
	.loc 1 183 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L32
	.loc 1 184 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L32:
	.loc 1 186 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L34
	.loc 1 187 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L34:
	.loc 1 189 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	297(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L36
	.loc 1 190 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L36:
	.loc 1 192 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L38
	.loc 1 193 0
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L38:
	.loc 1 196 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	je	.L40
	.loc 1 197 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	124(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L40:
	.loc 1 200 0
	call	get_max_uid@PLT
	movl	%eax, %ecx
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cmpl	%eax, %ecx
	jle	.L42
	.loc 1 201 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L42:
	.loc 1 217 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L44
	.loc 1 218 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L44:
	.loc 1 221 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L46
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	testl	%edx, %edx
	jns	.L46
	.loc 1 223 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L46:
	.loc 1 227 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L49
.L50:
	.loc 1 229 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	testl	%edx, %edx
	jns	.L51
	.loc 1 230 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L51:
	.loc 1 231 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L53
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L53
	.loc 1 233 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L53:
	.loc 1 227 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L49:
	cmpl	$0, -16(%ebp)
	jne	.L50
	.loc 1 236 0
	call	get_max_uid@PLT
	cmpl	-24(%ebp), %eax
	jle	.L57
	.loc 1 238 0
	movl	$0, -20(%ebp)
	call	get_first_nonparm_insn@PLT
	movl	%eax, -32(%ebp)
	.loc 1 239 0
	jmp	.L59
.L60:
	.loc 1 241 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L61
	.loc 1 242 0
	addl	$1, -20(%ebp)
.L61:
	.loc 1 240 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
.L59:
	.loc 1 239 0
	cmpl	$0, -32(%ebp)
	je	.L63
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jl	.L60
.L63:
	.loc 1 244 0
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jl	.L57
	.loc 1 245 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L57:
	.loc 1 251 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	297(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L66
	.loc 1 252 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L66:
	.loc 1 255 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	297(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L68
	.loc 1 256 0
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L68:
	.loc 1 259 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L70
.LBB4:
	.loc 1 261 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L72
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L74
.L72:
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	movl	%eax, -44(%ebp)
.L74:
	movl	-44(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 262 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L70
	.loc 1 263 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L70:
.LBE4:
	.loc 1 269 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	function_attribute_inlinable_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L76
	.loc 1 270 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L76:
	.loc 1 272 0
	movl	$0, -48(%ebp)
.L26:
	movl	-48(%ebp), %eax
	.loc 1 273 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE17:
	.size	function_cannot_inline_p, .-function_cannot_inline_p
	.type	initialize_for_inline, @function
initialize_for_inline:
.LFB18:
	.loc 1 289 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	pushl	%edi
.LCFI16:
	pushl	%ebx
.LCFI17:
	subl	$48, %esp
.LCFI18:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 295 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	parmdecl_map@GOTOFF(%ebx), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 296 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	movl	%eax, (%esp)
	call	rtvec_alloc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 298 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	$0, -32(%ebp)
	.loc 1 299 0
	jmp	.L80
.L81:
.LBB5:
	.loc 1 302 0
	movl	-24(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L82
	movl	-24(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L84
.L82:
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-24(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -44(%ebp)
.L84:
	movl	-44(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 307 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L85
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L85
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L85
	.loc 1 309 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L85:
	.loc 1 311 0
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%edx,%ecx,4)
	.loc 1 313 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L89
	.loc 1 314 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	parmdecl_map@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L91
.L89:
	.loc 1 315 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$75, %ax
	jne	.L91
.LBB6:
	.loc 1 317 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_realpart@PLT
	movl	%eax, -16(%ebp)
	.loc 1 318 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_imagpart@PLT
	movl	%eax, -12(%ebp)
	.loc 1 320 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L93
	.loc 1 321 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	parmdecl_map@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
.L93:
	.loc 1 322 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L91
	.loc 1 323 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	parmdecl_map@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
.L91:
.LBE6:
	.loc 1 328 0
	movl	-24(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$16, %eax
	movb	%al, 9(%edx)
.LBE5:
	.loc 1 300 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	addl	$1, -32(%ebp)
.L80:
	.loc 1 299 0
	cmpl	$0, -24(%ebp)
	jne	.L81
	.loc 1 331 0
	movl	-28(%ebp), %eax
	.loc 1 332 0
	addl	$48, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE18:
	.size	initialize_for_inline, .-initialize_for_inline
.globl copy_decl_for_inlining
	.type	copy_decl_for_inlining, @function
copy_decl_for_inlining:
.LFB19:
	.loc 1 343 0
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	pushl	%ebx
.LCFI21:
	subl	$36, %esp
.LCFI22:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 347 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L99
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$37, %al
	jne	.L101
.L99:
.LBB7:
	.loc 1 350 0
	movl	$0, -8(%ebp)
	.loc 1 353 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L102
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L102
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L105
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L102
.L105:
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L102
	.loc 1 358 0
	movl	$1, -8(%ebp)
	.loc 1 359 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 353 0
	jmp	.L108
.L102:
	.loc 1 362 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L108:
	.loc 1 366 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$35, (%esp)
	call	build_decl@PLT
	movl	%eax, -16(%ebp)
	.loc 1 367 0
	cmpl	$0, -8(%ebp)
	jne	.L109
	.loc 1 369 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	-16(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	9(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 370 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	-16(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	9(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 371 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	-16(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	9(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	jmp	.L112
.L109:
	.loc 1 375 0
	movl	-16(%ebp), %edx
	movzbl	9(%edx), %eax
	andl	$-5, %eax
	movb	%al, 9(%edx)
	.loc 1 376 0
	movl	-16(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$16, %eax
	movb	%al, 9(%edx)
	.loc 1 377 0
	movl	-16(%ebp), %edx
	movzbl	9(%edx), %eax
	andl	$-9, %eax
	movb	%al, 9(%edx)
	.loc 1 347 0
	jmp	.L112
.L101:
.LBE7:
	.loc 1 382 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -16(%ebp)
	.loc 1 384 0
	movl	-16(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$127, %eax
	movb	%al, 33(%edx)
	.loc 1 385 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	76(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 390 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$32, %al
	jne	.L112
	.loc 1 391 0
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %edx
	andl	$-5, %edx
	movb	%dl, 9(%eax)
.L112:
	.loc 1 396 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L114
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L116
.L114:
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L116:
	movl	-16(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 88(%eax)
	.loc 1 399 0
	movl	-16(%ebp), %eax
	movl	$0, 104(%eax)
	.loc 1 402 0
	movl	-16(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 405 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L117
	.loc 1 408 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L117
	.loc 1 412 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L117
	.loc 1 419 0
	movl	-16(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 56(%edx)
.L117:
	.loc 1 421 0
	movl	-16(%ebp), %eax
	.loc 1 422 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	copy_decl_for_inlining, .-copy_decl_for_inlining
	.section	.rodata
	.type	__FUNCTION__.14805, @object
	.size	__FUNCTION__.14805, 16
__FUNCTION__.14805:
	.string	"save_for_inline"
	.align 4
.LC15:
	.string	"../../../kg++fe/gnu/integrate.c"
	.text
.globl save_for_inline
	.type	save_for_inline, @function
save_for_inline:
.LFB20:
	.loc 1 446 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	pushl	%esi
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$32, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 456 0
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L123
	.loc 1 457 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, parmdecl_map@GOTOFF(%ebx)
.L123:
	.loc 1 461 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	156(%eax), %eax
	testl	%eax, %eax
	jne	.L125
	.loc 1 463 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	gen_label_rtx@PLT
	movl	%eax, 156(%esi)
	.loc 1 464 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	156(%eax), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
.L125:
	.loc 1 467 0
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L127
	.loc 1 468 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	initialize_for_inline
	movl	%eax, -16(%ebp)
	jmp	.L129
.L127:
	.loc 1 470 0
	movl	$0, -16(%ebp)
.L129:
	.loc 1 475 0
	call	get_insns@PLT
	movl	%eax, -20(%ebp)
	jmp	.L130
.L131:
	.loc 1 476 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L132
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	jne	.L132
	.loc 1 477 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L132:
	.loc 1 475 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L130:
	cmpl	$0, -20(%ebp)
	jne	.L131
	.loc 1 483 0
	call	get_insns@PLT
	movl	%eax, -20(%ebp)
	.loc 1 484 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L136
	.loc 1 485 0
	leal	__FUNCTION__.14805@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$485, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L136:
	.loc 1 487 0
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L138
	.loc 1 490 0
	call	get_first_nonparm_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 498 0
	movl	$0, in_nonparm_insns@GOTOFF(%ebx)
	.loc 1 499 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	save_parm_insns
	.loc 1 501 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	max_label_num@PLT
	movl	%eax, 268(%esi)
	.loc 1 502 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	216(%eax), %eax
	movl	%eax, 264(%edx)
	.loc 1 503 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 256(%edx)
.L138:
	.loc 1 505 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 260(%edx)
	.loc 1 506 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 252(%edx)
	.loc 1 507 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 112(%eax)
	.loc 1 510 0
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L142
	.loc 1 511 0
	movl	parmdecl_map@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L142:
	.loc 1 512 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE20:
	.size	save_for_inline, .-save_for_inline
	.type	save_parm_insns, @function
save_parm_insns:
.LFB21:
	.loc 1 524 0
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
	.loc 1 525 0
	cmpl	$0, 8(%ebp)
	je	.L156
	.loc 1 528 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	jmp	.L146
.L147:
	.loc 1 530 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L148
	.loc 1 531 0
	movl	$1, in_nonparm_insns@GOTOFF(%ebx)
.L148:
	.loc 1 533 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L150
	.loc 1 536 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	leal	note_modified_parmregs@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 541 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L150
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$151, %ax
	jne	.L150
.LBB8:
	.loc 1 546 0
	movl	$0, -8(%ebp)
	jmp	.L154
.L155:
	.loc 1 547 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	save_parm_insns
	.loc 1 546 0
	addl	$1, -8(%ebp)
.L154:
	cmpl	$2, -8(%ebp)
	jle	.L155
.L150:
.LBE8:
	.loc 1 528 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L146:
	cmpl	$0, 8(%ebp)
	jne	.L147
.L156:
	.loc 1 552 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	save_parm_insns, .-save_parm_insns
	.type	note_modified_parmregs, @function
note_modified_parmregs:
.LFB22:
	.loc 1 561 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 562 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L164
	movl	in_nonparm_insns@GOTOFF(%ecx), %eax
	testl	%eax, %eax
	je	.L164
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cfun@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	cmpl	%eax, %edx
	jae	.L164
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L164
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	parmdecl_map@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L164
	.loc 1 566 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	parmdecl_map@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movzbl	9(%edx), %eax
	andl	$-17, %eax
	movb	%al, 9(%edx)
.L164:
	.loc 1 567 0
	popl	%ebp
	ret
.LFE22:
	.size	note_modified_parmregs, .-note_modified_parmregs
	.type	process_reg_param, @function
process_reg_param:
.LFB23:
	.loc 1 594 0
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
	.loc 1 595 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L166
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L168
.L166:
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L169
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L169
	movl	16(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L168
.L169:
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L172
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L172
.L168:
.LBB9:
	.loc 1 601 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, -16(%ebp)
	.loc 1 602 0
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	-16(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	3(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 603 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L174
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L174
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L174
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L174
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L174
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L174
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L174
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L174
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L183
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L183
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L183
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L183
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$180, %eax
	ja	.L183
.L174:
.LBB10:
	.loc 1 604 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L188
.LBB11:
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 36(%eax)
	cmpl	$0, -8(%ebp)
	je	.L188
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L188:
.LBE11:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	leal	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	movl	-12(%ebp), %eax
	movl	$-1, 4(%eax)
.L183:
.LBE10:
	.loc 1 605 0
	movl	-16(%ebp), %eax
	movl	%eax, 16(%ebp)
.L172:
.LBE9:
	.loc 1 607 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 608 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	process_reg_param, .-process_reg_param
	.type	compare_blocks, @function
compare_blocks:
.LFB24:
	.loc 1 618 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	subl	$24, %esp
.LCFI40:
	.loc 1 619 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 620 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 621 0
	movl	-16(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 622 0
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 624 0
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jne	.L193
	.loc 1 625 0
	movl	$0, -24(%ebp)
	jmp	.L195
.L193:
	.loc 1 626 0
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jae	.L196
	movl	$-1, -20(%ebp)
	jmp	.L198
.L196:
	movl	$1, -20(%ebp)
.L198:
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L195:
	movl	-24(%ebp), %eax
	.loc 1 627 0
	leave
	ret
.LFE24:
	.size	compare_blocks, .-compare_blocks
	.type	find_block, @function
find_block:
.LFB25:
	.loc 1 636 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	subl	$24, %esp
.LCFI43:
	.loc 1 637 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 638 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 639 0
	movl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 640 0
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 642 0
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jne	.L201
	.loc 1 643 0
	movl	$0, -24(%ebp)
	jmp	.L203
.L201:
	.loc 1 644 0
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jae	.L204
	movl	$-1, -20(%ebp)
	jmp	.L206
.L204:
	movl	$1, -20(%ebp)
.L206:
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L203:
	movl	-24(%ebp), %eax
	.loc 1 645 0
	leave
	ret
.LFE25:
	.size	find_block, .-find_block
	.section	.rodata
	.type	__FUNCTION__.15076, @object
	.size	__FUNCTION__.15076, 23
__FUNCTION__.15076:
	.string	"expand_inline_function"
.LC16:
	.string	"block_map"
.LC17:
	.string	"expand_inline_function"
	.text
.globl expand_inline_function
	.type	expand_inline_function, @function
expand_inline_function:
.LFB26:
	.loc 1 668 0
	pushl	%ebp
.LCFI44:
	movl	%esp, %ebp
.LCFI45:
	pushl	%edi
.LCFI46:
	pushl	%esi
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$268, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 670 0
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	%eax, -184(%ebp)
	.loc 1 672 0
	movl	-184(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -168(%ebp)
	.loc 1 675 0
	movl	-184(%ebp), %eax
	movl	264(%eax), %eax
	testl	%eax, %eax
	je	.L209
	movl	-184(%ebp), %eax
	movl	264(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -264(%ebp)
	jmp	.L211
.L209:
	movl	-168(%ebp), %eax
	movl	%eax, -264(%ebp)
.L211:
	movl	-264(%ebp), %edx
	movl	%edx, -164(%ebp)
	.loc 1 680 0
	movl	-184(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -144(%ebp)
	.loc 1 681 0
	movl	-184(%ebp), %eax
	movl	268(%eax), %eax
	movl	%eax, -140(%ebp)
	.loc 1 684 0
	movl	$0, -192(%ebp)
	.loc 1 686 0
	movl	$0, -128(%ebp)
	.loc 1 687 0
	movl	-184(%ebp), %eax
	movl	256(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 688 0
	movl	$0, -120(%ebp)
	.loc 1 694 0
	movl	$0, -108(%ebp)
	.loc 1 697 0
	movl	-184(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	addl	$3, %eax
	movl	%eax, -152(%ebp)
	.loc 1 698 0
	cmpl	$175, -152(%ebp)
	jg	.L212
	.loc 1 699 0
	leal	__FUNCTION__.15076@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$699, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L212:
	.loc 1 703 0
	movl	-184(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 705 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	movl	%eax, -136(%ebp)
	.loc 1 707 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	284(%eax), %edx
	movl	-184(%ebp), %eax
	movl	284(%eax), %eax
	cmpl	%eax, %edx
	jge	.L214
	.loc 1 708 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-184(%ebp), %eax
	movl	284(%eax), %eax
	movl	%eax, 284(%edx)
.L214:
	.loc 1 714 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -180(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -176(%ebp)
	.loc 1 715 0
	jmp	.L216
.L217:
.LBB12:
	.loc 1 721 0
	cmpl	$0, -176(%ebp)
	jne	.L218
	.loc 1 722 0
	movl	$-1, -260(%ebp)
	jmp	.L220
.L218:
	.loc 1 724 0
	movl	-176(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -104(%ebp)
	.loc 1 725 0
	movl	-180(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -100(%ebp)
	.loc 1 727 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-104(%ebp), %eax
	je	.L221
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	cmpl	-100(%ebp), %eax
	jne	.L221
	cmpl	$52, -100(%ebp)
	jne	.L224
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	-180(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	cmpl	%eax, %edx
	je	.L224
.L221:
	.loc 1 735 0
	movl	$-1, -260(%ebp)
	jmp	.L220
.L224:
.LBE12:
	.loc 1 716 0
	movl	-180(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -180(%ebp)
	movl	-176(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -176(%ebp)
.L216:
	.loc 1 715 0
	cmpl	$0, -180(%ebp)
	jne	.L217
	.loc 1 740 0
	jmp	.L227
.L228:
	.loc 1 741 0
	movl	-176(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %ecx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-176(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 740 0
	movl	-176(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -176(%ebp)
.L227:
	cmpl	$0, -176(%ebp)
	jne	.L228
	.loc 1 747 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -156(%ebp)
	.loc 1 748 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -160(%ebp)
	.loc 1 750 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -180(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -176(%ebp)
	movl	$0, -148(%ebp)
	.loc 1 751 0
	jmp	.L230
.L231:
.LBB13:
	.loc 1 756 0
	movl	-176(%ebp), %eax
	movl	20(%eax), %edx
	movl	-180(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -96(%ebp)
	.loc 1 758 0
	movl	-180(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -92(%ebp)
	.loc 1 759 0
	movl	$0, -88(%ebp)
	.loc 1 761 0
	movl	-148(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-160(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 762 0
	movl	-148(%ebp), %edx
	movl	-124(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	%eax, -132(%ebp)
	.loc 1 768 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L232
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L232
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$180, %eax
	jbe	.L232
.LBB14:
	.loc 1 771 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	assign_temp@PLT
	movl	%eax, -84(%ebp)
	.loc 1 773 0
	movl	$0, 8(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	store_expr@PLT
	.loc 1 774 0
	movl	-148(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-156(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 775 0
	movl	$1, -88(%ebp)
	.loc 1 768 0
	jmp	.L236
.L232:
.LBE14:
	.loc 1 777 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L237
	.loc 1 779 0
	movl	-132(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	cmpl	%eax, %edx
	je	.L239
.LBB15:
	.loc 1 781 0
	movl	-180(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -200(%ebp)
	.loc 1 782 0
	movl	-180(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	.loc 1 784 0
	movl	-180(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	leal	-200(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	promote_mode@PLT
	movl	%eax, -80(%ebp)
	.loc 1 787 0
	movl	-132(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-80(%ebp), %eax
	je	.L241
	.loc 1 788 0
	leal	__FUNCTION__.15076@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$788, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L241:
	.loc 1 792 0
	movl	-148(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-156(%ebp), %esi
	movl	-200(%ebp), %edi
	movl	$3, 12(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, %edx
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%edi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_modes@PLT
	movl	%eax, (%esi)
	jmp	.L236
.L239:
.LBE15:
	.loc 1 799 0
	movl	-148(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-156(%ebp), %esi
	movl	$3, 12(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, (%esi)
	jmp	.L236
.L237:
	.loc 1 802 0
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	$0, (%eax)
.L236:
	.loc 1 804 0
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L244
	movl	-180(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L246
	cmpl	$0, 16(%ebp)
	je	.L248
	cmpl	$0, -88(%ebp)
	jne	.L248
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L251
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L251
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L248
.L251:
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L246
.L248:
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L244
.L246:
	.loc 1 825 0
	movl	-148(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-156(%ebp), %esi
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	(%eax), %edx
	movl	-132(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, (%esi)
.L244:
	.loc 1 827 0
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L254
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L254
	movl	-180(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L257
	movl	-180(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L254
.L257:
	.loc 1 829 0
	movl	-180(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mark_reg_pointer@PLT
.L254:
.LBE13:
	.loc 1 752 0
	movl	-180(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -180(%ebp)
	movl	-176(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -176(%ebp)
	addl	$1, -148(%ebp)
.L230:
	.loc 1 751 0
	cmpl	$0, -180(%ebp)
	jne	.L231
	.loc 1 835 0
	movl	$328, 4(%esp)
	movl	$1, (%esp)
	call	xcalloc@PLT
	movl	%eax, -128(%ebp)
	.loc 1 836 0
	movl	-128(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 838 0
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$14, 4(%esp)
	movl	$10, (%esp)
	call	varray_init@PLT
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 839 0
	movl	-152(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 844 0
	movl	-140(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -108(%ebp)
	.loc 1 846 0
	movl	-128(%ebp), %edx
	movl	-108(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 847 0
	movl	-128(%ebp), %eax
	movl	$0, 60(%eax)
	.loc 1 849 0
	movl	-184(%ebp), %eax
	movl	12(%eax), %eax
	movl	24(%eax), %eax
	addl	$1, %eax
	movl	%eax, -116(%ebp)
	.loc 1 850 0
	movl	-116(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 851 0
	movl	-128(%ebp), %eax
	movl	$0, 28(%eax)
	.loc 1 852 0
	movl	-128(%ebp), %edx
	movl	-116(%ebp), %eax
	movl	%eax, 32(%edx)
	.loc 1 854 0
	movl	-128(%ebp), %eax
	movl	$1, (%eax)
	.loc 1 855 0
	movl	-128(%ebp), %eax
	movl	$0, 320(%eax)
	.loc 1 856 0
	movl	-128(%ebp), %eax
	movl	$0, 324(%eax)
	.loc 1 871 0
	call	max_reg_num@PLT
	movl	%eax, %ecx
	addl	-152(%ebp), %ecx
	movl	-136(%ebp), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	subl	$166, %eax
	movl	%eax, %edx
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$17, 4(%esp)
	movl	%edx, (%esp)
	call	varray_init@PLT
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 877 0
	movl	-128(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 882 0
	call	get_last_insn@PLT
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 883 0
	movl	-128(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L260
	.loc 1 884 0
	movl	$-99, 4(%esp)
	movl	$0, (%esp)
	call	emit_note@PLT
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	%edx, 8(%eax)
.L260:
	.loc 1 886 0
	movl	-184(%ebp), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %edx
	movl	-128(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 887 0
	movl	-184(%ebp), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-128(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 891 0
	movl	-184(%ebp), %eax
	movl	44(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	cmpl	%eax, %edx
	jle	.L262
	.loc 1 892 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-184(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 44(%edx)
.L262:
	.loc 1 896 0
	movl	-184(%ebp), %eax
	movzbl	298(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L264
	.loc 1 897 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	298(%edx), %eax
	orl	$64, %eax
	movb	%al, 298(%edx)
.L264:
	.loc 1 900 0
	movl	-184(%ebp), %eax
	movzbl	296(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L266
	.loc 1 901 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_static_chain@PLT
	movl	%eax, -120(%ebp)
.L266:
	.loc 1 903 0
	movl	-168(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L268
	movl	-168(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jle	.L268
.LBB16:
	.loc 1 907 0
	movl	-168(%ebp), %eax
	movl	44(%eax), %edx
	movl	-168(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_note@PLT
	movl	%eax, -76(%ebp)
	.loc 1 908 0
	cmpl	$0, -76(%ebp)
	je	.L268
	.loc 1 909 0
	movl	-76(%ebp), %eax
	movzbl	3(%eax), %edx
	orl	$64, %edx
	movb	%dl, 3(%eax)
.L268:
.LBE16:
	.loc 1 925 0
	movl	$0, -148(%ebp)
	jmp	.L272
.L273:
.LBB17:
	.loc 1 927 0
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 929 0
	movl	-148(%ebp), %edx
	movl	-124(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	%eax, -132(%ebp)
	.loc 1 932 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L274
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L274
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$180, %eax
	jbe	.L274
	.loc 1 942 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L278
	.loc 1 944 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_addr_to_reg@PLT
	movl	%eax, -196(%ebp)
	.loc 1 945 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L280
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L280
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L280
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L280
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L280
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L280
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L280
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L280
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L289
	movl	-72(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L289
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L289
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L289
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$180, %eax
	ja	.L289
.L280:
.LBB18:
	.loc 1 946 0
	movl	-196(%ebp), %eax
	movl	4(%eax), %edx
	movl	-128(%ebp), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L294
.LBB19:
	movl	-128(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -64(%ebp)
	movl	-196(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	-128(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	%edx, 36(%eax)
	cmpl	$0, -64(%ebp)
	je	.L294
	movl	-128(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L294:
.LBE19:
	movl	-128(%ebp), %eax
	movl	36(%eax), %eax
	leal	16(%eax), %edx
	movl	-196(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -68(%ebp)
	movl	-68(%ebp), %edx
	movl	-72(%ebp), %eax
	movl	%eax, (%edx)
	movl	-68(%ebp), %eax
	movl	$-1, 4(%eax)
.L289:
.LBE18:
	.loc 1 947 0
	movl	-196(%ebp), %eax
	movl	%eax, -72(%ebp)
.L278:
	.loc 1 949 0
	movl	-128(%ebp), %eax
	movl	16(%eax), %edx
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 932 0
	jmp	.L297
.L274:
	.loc 1 951 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L298
	.loc 1 961 0
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L297
	.loc 1 962 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %edx
	movl	$0, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	jmp	.L297
.L298:
	.loc 1 964 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L302
	.loc 1 965 0
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	process_reg_param
	jmp	.L297
.L302:
	.loc 1 966 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$75, %ax
	jne	.L304
.LBB20:
	.loc 1 968 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_realpart@PLT
	movl	%eax, -60(%ebp)
	.loc 1 969 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_imagpart@PLT
	movl	%eax, -56(%ebp)
	.loc 1 970 0
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_realpart@PLT
	movl	%eax, -52(%ebp)
	.loc 1 971 0
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_imagpart@PLT
	movl	%eax, -48(%ebp)
	.loc 1 973 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	process_reg_param
	.loc 1 974 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	process_reg_param
	jmp	.L297
.L304:
.LBE20:
	.loc 1 977 0
	leal	__FUNCTION__.15076@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$977, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L297:
.LBE17:
	.loc 1 925 0
	addl	$1, -148(%ebp)
.L272:
	movl	-148(%ebp), %eax
	cmpl	-136(%ebp), %eax
	jl	.L273
	.loc 1 983 0
	movl	inlining@GOTOFF(%ebx), %eax
	movl	%eax, -188(%ebp)
	.loc 1 984 0
	movl	-184(%ebp), %eax
	movl	%eax, inlining@GOTOFF(%ebx)
	.loc 1 988 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -180(%ebp)
	movl	$0, -148(%ebp)
	.loc 1 989 0
	jmp	.L307
.L308:
	.loc 1 991 0
	movl	-148(%ebp), %edx
	movl	-124(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	%eax, -132(%ebp)
	.loc 1 993 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L309
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L311
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$180, %eax
	ja	.L309
.L311:
.LBB21:
	.loc 1 999 0
	movl	-180(%ebp), %eax
	movl	20(%eax), %edx
	movl	-180(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_note@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1000 0
	cmpl	$0, -44(%ebp)
	je	.L313
	.loc 1 1001 0
	movl	-44(%ebp), %eax
	movzbl	3(%eax), %edx
	orl	$64, %edx
	movb	%dl, 3(%eax)
.L313:
	.loc 1 1005 0
	movl	$1, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -196(%ebp)
	.loc 1 1006 0
	movl	$1, 12(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	-196(%ebp), %eax
	movl	%eax, (%esp)
	call	subst_constants
	.loc 1 1007 0
	call	apply_change_group@PLT
	.loc 1 1008 0
	movl	-196(%ebp), %eax
	movl	4(%eax), %edx
	movl	-196(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	memory_address_p@PLT
	testl	%eax, %eax
	jne	.L315
	.loc 1 1009 0
	movl	-196(%ebp), %eax
	movl	4(%eax), %eax
	movl	-196(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	change_address@PLT
	movl	%eax, -196(%ebp)
.L315:
	.loc 1 1010 0
	movl	-196(%ebp), %edx
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-160(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	store_expr@PLT
.L309:
.LBE21:
	.loc 1 989 0
	movl	-180(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -180(%ebp)
	addl	$1, -148(%ebp)
.L307:
	cmpl	$0, -180(%ebp)
	jne	.L308
	.loc 1 1020 0
	movl	-128(%ebp), %eax
	movl	$0, 44(%eax)
	.loc 1 1021 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L318
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L320
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	movl	%eax, -252(%ebp)
	jmp	.L322
.L320:
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	movl	%eax, -252(%ebp)
.L322:
	movl	-252(%ebp), %eax
	movl	%eax, -256(%ebp)
	jmp	.L323
.L318:
	movl	$0, -256(%ebp)
.L323:
	movl	-256(%ebp), %edx
	movl	%edx, -132(%ebp)
	.loc 1 1024 0
	movl	24(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	testb	%al, %al
	je	.L324
	.loc 1 1027 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L326
	.loc 1 1029 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L328
	.loc 1 1031 0
	movl	$1, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -196(%ebp)
	.loc 1 1032 0
	movl	$1, 12(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	-196(%ebp), %eax
	movl	%eax, (%esp)
	call	subst_constants
	.loc 1 1033 0
	call	apply_change_group@PLT
	.loc 1 1034 0
	movl	-196(%ebp), %eax
	movl	%eax, 16(%ebp)
	jmp	.L324
.L328:
	.loc 1 1038 0
	cmpl	$0, 28(%ebp)
	je	.L331
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, (%esp)
	call	aggregate_value_p@PLT
	testl	%eax, %eax
	jne	.L333
.L331:
	.loc 1 1040 0
	leal	__FUNCTION__.15076@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1040, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L333:
	.loc 1 1052 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L334
	.loc 1 1054 0
	movl	$0, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -196(%ebp)
	.loc 1 1055 0
	movl	-196(%ebp), %eax
	movl	%eax, -248(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L336
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L336
	movl	$5, -244(%ebp)
	jmp	.L339
.L336:
	movl	$4, -244(%ebp)
.L339:
	movl	-248(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-244(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -196(%ebp)
	.loc 1 1062 0
	movl	-196(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L340
	movl	-196(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$180, %eax
	ja	.L340
	.loc 1 1064 0
	movl	-196(%ebp), %edx
	movl	%edx, -240(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L343
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L343
	movl	$5, -236(%ebp)
	jmp	.L346
.L343:
	movl	$4, -236(%ebp)
.L346:
	movl	-240(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-236(%ebp), %edx
	movl	%edx, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, -196(%ebp)
.L340:
	.loc 1 1065 0
	movl	-128(%ebp), %eax
	movl	16(%eax), %edx
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-196(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1067 0
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L347
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L347
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L347
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L347
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L347
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L347
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L347
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L347
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	je	.L347
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L324
	movl	28(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	jne	.L324
	movl	28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L324
.L347:
.LBB22:
	.loc 1 1075 0
	movl	-196(%ebp), %eax
	movl	4(%eax), %edx
	movl	-128(%ebp), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L360
.LBB23:
	movl	-128(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	movl	-196(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	-128(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	%edx, 36(%eax)
	cmpl	$0, -36(%ebp)
	je	.L360
	movl	-128(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L360:
.LBE23:
	movl	-128(%ebp), %eax
	movl	36(%eax), %eax
	leal	16(%eax), %edx
	movl	-196(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%eax, (%edx)
	movl	-40(%ebp), %eax
	movl	$-1, 4(%eax)
	jmp	.L324
.L334:
.LBE22:
	.loc 1 1081 0
	movl	$1, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -196(%ebp)
	.loc 1 1082 0
	movl	$0, 12(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	-196(%ebp), %eax
	movl	%eax, (%esp)
	call	subst_constants
	.loc 1 1083 0
	call	apply_change_group@PLT
	.loc 1 1084 0
	movl	-196(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_move_insn@PLT
	jmp	.L324
.L326:
	.loc 1 1088 0
	cmpl	$0, 20(%ebp)
	jne	.L324
	.loc 1 1093 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L364
.LBB24:
	.loc 1 1099 0
	movl	24(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1105 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L366
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	movl	%eax, -232(%ebp)
	jmp	.L368
.L366:
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	movl	%eax, -232(%ebp)
.L368:
	movl	-232(%ebp), %edx
	movzbl	2(%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1111 0
	cmpl	$0, 16(%ebp)
	je	.L369
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L369
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-32(%ebp), %eax
	je	.L372
.L369:
	.loc 1 1117 0
	cmpl	$52, -32(%ebp)
	jne	.L373
	.loc 1 1119 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L375
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	movl	%eax, -228(%ebp)
	jmp	.L377
.L375:
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	movl	%eax, -228(%ebp)
.L377:
	movl	-228(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$71, %ax
	jne	.L378
	.loc 1 1121 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L380
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	movl	%eax, -224(%ebp)
	jmp	.L382
.L380:
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	movl	%eax, -224(%ebp)
.L382:
	movl	-224(%ebp), %edx
	movzbl	2(%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1122 0
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L373
.L378:
	.loc 1 1125 0
	leal	__FUNCTION__.15076@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1125, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L373:
	.loc 1 1128 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 16(%ebp)
.L372:
	.loc 1 1134 0
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	je	.L383
	.loc 1 1138 0
	movl	-28(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -220(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L385
	movl	$64, -216(%ebp)
	jmp	.L387
.L385:
	movl	$32, -216(%ebp)
.L387:
	movl	-216(%ebp), %eax
	cmpl	%eax, -220(%ebp)
	jle	.L388
	.loc 1 1140 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L390
	movl	-28(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$32, %ax
	jbe	.L390
	movl	-32(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$32, %ax
	ja	.L390
	.loc 1 1143 0
	leal	__FUNCTION__.15076@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1143, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L390:
	.loc 1 1144 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1145 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, 16(%ebp)
	jmp	.L395
.L388:
	.loc 1 1148 0
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -24(%ebp)
	jmp	.L395
.L383:
	.loc 1 1151 0
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L395:
	.loc 1 1155 0
	movl	-132(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L396
	.loc 1 1156 0
	movl	-128(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 44(%edx)
	jmp	.L324
.L396:
	.loc 1 1158 0
	movl	-128(%ebp), %eax
	movl	16(%eax), %edx
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L324
.L364:
.LBE24:
	.loc 1 1160 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$75, %ax
	jne	.L399
.LBB25:
	.loc 1 1162 0
	movl	24(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1164 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L401
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	movl	%eax, -212(%ebp)
	jmp	.L403
.L401:
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	104(%eax), %eax
	movl	%eax, -212(%ebp)
.L403:
	movl	-212(%ebp), %edx
	movzbl	2(%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1166 0
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L404
	.loc 1 1167 0
	leal	__FUNCTION__.15076@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1167, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L404:
	.loc 1 1168 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L406
	movl	-132(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L408
.L406:
	.loc 1 1170 0
	leal	__FUNCTION__.15076@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1170, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L408:
	.loc 1 1175 0
	cmpl	$0, 16(%ebp)
	je	.L409
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L409
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-20(%ebp), %eax
	je	.L412
.L409:
	.loc 1 1177 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 16(%ebp)
.L412:
	.loc 1 1179 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$75, %ax
	je	.L413
	.loc 1 1180 0
	leal	__FUNCTION__.15076@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1180, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L413:
	.loc 1 1182 0
	movl	-128(%ebp), %eax
	movl	16(%eax), %edx
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 1183 0
	movl	-128(%ebp), %eax
	movl	16(%eax), %edx
	movl	-132(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%edx)
	jmp	.L324
.L399:
.LBE25:
	.loc 1 1186 0
	leal	__FUNCTION__.15076@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1186, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L324:
	.loc 1 1189 0
	movl	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	get_exception_pointer@PLT
	movl	%eax, -196(%ebp)
	.loc 1 1190 0
	movl	-196(%ebp), %eax
	testl	%eax, %eax
	je	.L415
	.loc 1 1191 0
	movl	-128(%ebp), %eax
	movl	16(%eax), %edx
	movl	-196(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	get_exception_pointer@PLT
	movl	%eax, (%esi)
.L415:
	.loc 1 1195 0
	movl	-144(%ebp), %edx
	movl	-140(%ebp), %eax
	subl	%edx, %eax
	leal	0(,%eax,4), %ecx
	movl	-128(%ebp), %eax
	movl	20(%eax), %edx
	movl	-144(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edi
	cld
	movl	$0, %eax
	rep
	stosb
	.loc 1 1202 0
	movl	inline_function_decl@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1203 0
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	integrate_parm_decls
	.loc 1 1204 0
	movl	-184(%ebp), %eax
	movl	260(%eax), %edx
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	integrate_decl_tree
	movl	%eax, -172(%ebp)
	.loc 1 1205 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L417
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -208(%ebp)
	jmp	.L419
.L417:
	movl	8(%ebp), %eax
	movl	%eax, -208(%ebp)
.L419:
	movl	-172(%ebp), %eax
	movl	-208(%ebp), %edx
	movl	%edx, 32(%eax)
	.loc 1 1206 0
	movl	inline_function_decl@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 1210 0
	movl	-172(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	expand_start_bindings_and_block@PLT
	.loc 1 1214 0
	movl	-128(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %ecx
	movl	-128(%ebp), %eax
	movl	12(%eax), %eax
	leal	16(%eax), %edx
	leal	compare_blocks@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	qsort@PLT
	.loc 1 1220 0
	call	emit_queue@PLT
	.loc 1 1223 0
	call	do_pending_stack_adjust@PLT
	.loc 1 1227 0
	movl	-128(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1233 0
	movl	-184(%ebp), %eax
	movzbl	296(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L420
	.loc 1 1234 0
	movl	$0, 8(%esp)
	leal	-192(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	emit_stack_save@PLT
.L420:
	.loc 1 1237 0
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	setup_initial_hard_reg_value_integration
	.loc 1 1240 0
	movl	-120(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_insn_list
	.loc 1 1246 0
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	duplicate_eh_regions@PLT
	movl	%eax, -112(%ebp)
	.loc 1 1249 0
	movl	-112(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_insn_notes
	.loc 1 1252 0
	movl	-128(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L422
	.loc 1 1253 0
	movl	-128(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
.L422:
	.loc 1 1256 0
	movl	-184(%ebp), %eax
	movzbl	296(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L424
	.loc 1 1257 0
	movl	-192(%ebp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	emit_stack_restore@PLT
.L424:
	.loc 1 1259 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	298(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L426
	.loc 1 1264 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	228(%eax), %edx
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	jmp	.L428
.L426:
	.loc 1 1267 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	68(%eax), %eax
	movl	(%eax), %edx
	movl	-172(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1269 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	68(%eax), %edx
	movl	-172(%ebp), %eax
	movl	%eax, (%edx)
.L428:
	.loc 1 1277 0
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	$0, (%esp)
	call	expand_end_bindings@PLT
	.loc 1 1285 0
	movl	flag_test_coverage@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L429
	.loc 1 1286 0
	movl	$-84, 4(%esp)
	movl	$0, (%esp)
	call	emit_note@PLT
.L429:
	.loc 1 1288 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_line_note@PLT
	.loc 1 1292 0
	cmpl	$0, 16(%ebp)
	je	.L431
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	cmpb	$104, %al
	jne	.L431
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	aggregate_value_p@PLT
	testl	%eax, %eax
	jne	.L431
	.loc 1 1295 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	copy_blkmode_from_reg@PLT
	movl	%eax, 16(%ebp)
.L431:
	.loc 1 1297 0
	cmpl	$0, 28(%ebp)
	je	.L435
	.loc 1 1299 0
	movl	24(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	memory_address@PLT
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, 16(%ebp)
	.loc 1 1302 0
	movl	$1, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
.L435:
	.loc 1 1306 0
	cmpl	$0, -108(%ebp)
	je	.L437
	.loc 1 1307 0
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L437:
	.loc 1 1308 0
	movl	-128(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L439
	movl	-128(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-128(%ebp), %eax
	movl	$0, 36(%eax)
.L439:
	.loc 1 1309 0
	movl	-128(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1310 0
	movl	-128(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1311 0
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1312 0
	movl	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1313 0
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1315 0
	movl	-188(%ebp), %eax
	movl	%eax, inlining@GOTOFF(%ebx)
	.loc 1 1317 0
	movl	16(%ebp), %eax
	movl	%eax, -260(%ebp)
.L220:
	movl	-260(%ebp), %eax
	.loc 1 1318 0
	addl	$268, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE26:
	.size	expand_inline_function, .-expand_inline_function
	.section	.rodata
	.type	__FUNCTION__.15908, @object
	.size	__FUNCTION__.15908, 15
__FUNCTION__.15908:
	.string	"copy_insn_list"
	.text
	.type	copy_insn_list, @function
copy_insn_list:
.LFB27:
	.loc 1 1334 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%esi
.LCFI52:
	pushl	%ebx
.LCFI53:
	addl	$-128, %esp
.LCFI54:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1341 0
	movl	$0, -44(%ebp)
	.loc 1 1348 0
	movl	8(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L443
.L444:
.LBB26:
	.loc 1 1352 0
	movl	12(%ebp), %eax
	movl	$0, 48(%eax)
	.loc 1 1354 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$42, %eax
	movl	%eax, -108(%ebp)
	cmpl	$5, -108(%ebp)
	ja	.L445
	movl	-108(%ebp), %eax
	sall	$2, %eax
	movl	.L452@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L452:
	.long	.L446@GOTOFF
	.long	.L447@GOTOFF
	.long	.L448@GOTOFF
	.long	.L449@GOTOFF
	.long	.L450@GOTOFF
	.long	.L451@GOTOFF
	.text
.L446:
	.loc 1 1357 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1358 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L453
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L455
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L457
.L455:
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -100(%ebp)
.L457:
	movl	-100(%ebp), %eax
	movl	%eax, -104(%ebp)
	jmp	.L458
.L453:
	movl	$0, -104(%ebp)
.L458:
	movl	-104(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1359 0
	movl	$0, -40(%ebp)
	.loc 1 1360 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L459
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L459
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L462
.L459:
	.loc 1 1369 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	.L463
	cmpl	$0, -32(%ebp)
	je	.L463
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L463
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L463
	.loc 1 1374 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	volatile_refs_p@PLT
	testl	%eax, %eax
	je	.L468
.LBB27:
	.loc 1 1380 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1382 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L470
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L472
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L474
.L472:
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -92(%ebp)
.L474:
	movl	-92(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L475
.L470:
	movl	$0, -96(%ebp)
.L475:
	movl	-96(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1383 0
	cmpl	$0, -28(%ebp)
	jne	.L476
	.loc 1 1384 0
	leal	__FUNCTION__.15908@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1384, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L476:
	.loc 1 1386 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L481
.L468:
.LBE27:
	.loc 1 1391 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L462
	movl	-52(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L462
	.loc 1 1393 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1369 0
	jmp	.L481
.L463:
	.loc 1 1399 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	.L482
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L482
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L482
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L462
.L482:
	.loc 1 1421 0
	cmpl	$0, 16(%ebp)
	je	.L486
	cmpl	$0, -32(%ebp)
	je	.L486
	movl	static_chain_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L486
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L486
	movl	static_chain_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L486
	.loc 1 1428 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	static_chain_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1435 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1421 0
	jmp	.L481
.L486:
	.loc 1 1439 0
	cmpl	$0, 16(%ebp)
	je	.L492
	cmpl	$0, -32(%ebp)
	je	.L492
	movl	static_chain_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L462
	cmpl	$0, -44(%ebp)
	je	.L492
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L462
.L492:
	.loc 1 1449 0
	cmpl	$0, 16(%ebp)
	je	.L497
	cmpl	$0, -32(%ebp)
	je	.L497
	movl	static_chain_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L500
	cmpl	$0, -44(%ebp)
	je	.L497
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L497
.L500:
.LBB28:
	.loc 1 1456 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1458 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1459 0
	movl	static_chain_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L481
	.loc 1 1460 0
	movl	$0, 16(%ebp)
	.loc 1 1449 0
	jmp	.L481
.L497:
.LBE28:
	.loc 1 1470 0
	cmpl	$0, -32(%ebp)
	je	.L505
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L505
.LBB29:
	.loc 1 1474 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1475 0
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,8), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1478 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L508
	.loc 1 1479 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L510
.L508:
	.loc 1 1480 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L511
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L511
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L511
	.loc 1 1483 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 1480 0
	jmp	.L510
.L511:
	.loc 1 1485 0
	leal	__FUNCTION__.15908@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1485, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L510:
	.loc 1 1487 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L515
	.loc 1 1488 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L517
.L515:
	.loc 1 1490 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	negl	%edx
	adcl	$0, %ecx
	negl	%ecx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -48(%ebp)
.L517:
	.loc 1 1494 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_move_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1470 0
	jmp	.L481
.L505:
.LBE29:
	.loc 1 1498 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -40(%ebp)
.L481:
	.loc 1 1525 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	try_constants@PLT
	.loc 1 1527 0
	movl	-52(%ebp), %eax
	movl	36(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 1528 0
	jmp	.L462
.L447:
	.loc 1 1531 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L518
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	returnjump_p@PLT
	testl	%eax, %eax
	je	.L518
	.loc 1 1533 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L521
	.loc 1 1534 0
	call	gen_label_rtx@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 60(%eax)
.L521:
	.loc 1 1535 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1531 0
	jmp	.L523
.L518:
	.loc 1 1538 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -36(%ebp)
.L523:
	.loc 1 1540 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1547 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	try_constants@PLT
	.loc 1 1548 0
	movl	-52(%ebp), %eax
	movl	36(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 1552 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L462
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	je	.L462
	movl	12(%ebp), %eax
	movl	316(%eax), %eax
	testl	%eax, %eax
	je	.L462
	.loc 1 1561 0
	movl	12(%ebp), %eax
	movl	316(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L528
	.loc 1 1563 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 1564 0
	movl	$0, -40(%ebp)
	jmp	.L462
.L528:
	.loc 1 1570 0
	call	emit_barrier@PLT
	.loc 1 1572 0
	jmp	.L462
.L448:
	.loc 1 1578 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$151, %ax
	jne	.L530
.LBB30:
	.loc 1 1583 0
	movl	$0, -56(%ebp)
	jmp	.L532
.L533:
.LBB31:
	.loc 1 1587 0
	movl	-56(%ebp), %eax
	movl	$0, -76(%ebp,%eax,4)
	.loc 1 1588 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %edx
	movl	-56(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1589 0
	cmpl	$0, -16(%ebp)
	je	.L534
	.loc 1 1591 0
	call	start_sequence@PLT
	.loc 1 1592 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_insn_list
	.loc 1 1593 0
	movl	-56(%ebp), %esi
	call	get_insns@PLT
	movl	%eax, -76(%ebp,%esi,4)
	.loc 1 1594 0
	call	end_sequence@PLT
.L534:
.LBE31:
	.loc 1 1583 0
	addl	$1, -56(%ebp)
.L532:
	cmpl	$2, -56(%ebp)
	jle	.L533
	.loc 1 1600 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	28(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1603 0
	movl	-68(%ebp), %edx
	movl	-72(%ebp), %ecx
	movl	-76(%ebp), %esi
	movl	-20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$0, 4(%esp)
	movl	$151, (%esp)
	call	gen_rtx_fmt_uuuu@PLT
	movl	%eax, (%esp)
	call	emit_call_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1608 0
	jmp	.L462
.L530:
.LBE30:
	.loc 1 1611 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1612 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_call_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1614 0
	movl	-52(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	movl	-40(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	3(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 3(%edx)
	.loc 1 1615 0
	movl	-52(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	-40(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	3(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 1616 0
	movl	-52(%ebp), %eax
	movl	36(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 1621 0
	movl	-52(%ebp), %eax
	movl	76(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 1630 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	try_constants@PLT
	.loc 1 1633 0
	movl	$0, -56(%ebp)
	jmp	.L537
.L538:
	.loc 1 1634 0
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	-56(%ebp), %eax
	movl	$0, 16(%edx,%eax,8)
	.loc 1 1633 0
	addl	$1, -56(%ebp)
.L537:
	cmpl	$175, -56(%ebp)
	jle	.L538
	.loc 1 1635 0
	jmp	.L462
.L450:
	.loc 1 1638 0
	movl	-52(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_label_from_map@PLT
	movl	%eax, (%esp)
	call	emit_label@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1640 0
	movl	-52(%ebp), %eax
	movl	60(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 1641 0
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 1642 0
	jmp	.L462
.L449:
	.loc 1 1645 0
	call	emit_barrier@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1646 0
	jmp	.L462
.L451:
	.loc 1 1649 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-88, %eax
	jne	.L540
	.loc 1 1651 0
	movl	-52(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_label_from_map@PLT
	movl	%eax, (%esp)
	call	emit_label@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1653 0
	movl	-52(%ebp), %eax
	movl	36(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 1654 0
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 1655 0
	jmp	.L462
.L540:
	.loc 1 1664 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-91, %eax
	je	.L542
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-87, %eax
	je	.L542
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-99, %eax
	je	.L542
	.loc 1 1668 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %edx
	movl	-52(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_note@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1670 0
	cmpl	$0, -40(%ebp)
	je	.L546
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-98, %eax
	je	.L548
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-97, %eax
	jne	.L546
.L548:
	movl	-52(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L546
.LBB32:
	.loc 1 1677 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	leal	16(%eax), %ecx
	movl	-52(%ebp), %eax
	movl	36(%eax), %esi
	leal	find_block@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$4, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	call	bsearch@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1684 0
	cmpl	$0, -12(%ebp)
	jne	.L551
	.loc 1 1685 0
	leal	__FUNCTION__.15908@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1685, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L551:
	.loc 1 1687 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 1670 0
	jmp	.L462
.L546:
.LBE32:
	.loc 1 1689 0
	cmpl	$0, -40(%ebp)
	je	.L462
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-82, %eax
	jne	.L462
	.loc 1 1691 0
	movl	-52(%ebp), %eax
	movl	36(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 1664 0
	jmp	.L462
.L542:
	.loc 1 1696 0
	movl	$0, -40(%ebp)
	.loc 1 1697 0
	jmp	.L462
.L445:
	.loc 1 1700 0
	leal	__FUNCTION__.15908@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1700, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L462:
	.loc 1 1703 0
	cmpl	$0, -40(%ebp)
	je	.L557
	.loc 1 1704 0
	movl	-40(%ebp), %eax
	movzbl	3(%eax), %edx
	orl	$64, %edx
	movb	%dl, 3(%eax)
.L557:
	.loc 1 1706 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%edx)
.LBE26:
	.loc 1 1348 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
.L443:
	cmpl	$0, -52(%ebp)
	jne	.L444
	.loc 1 1708 0
	subl	$-128, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE27:
	.size	copy_insn_list, .-copy_insn_list
	.type	copy_insn_notes, @function
copy_insn_notes:
.LFB28:
	.loc 1 1719 0
	pushl	%ebp
.LCFI55:
	movl	%esp, %ebp
.LCFI56:
	pushl	%edi
.LCFI57:
	pushl	%esi
.LCFI58:
	pushl	%ebx
.LCFI59:
	subl	$76, %esp
.LCFI60:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1722 0
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 1723 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L562
.L563:
	.loc 1 1725 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L564
	.loc 1 1728 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1729 0
	cmpl	$0, -28(%ebp)
	je	.L564
	.loc 1 1732 0
	movl	-32(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L567
.LBB33:
	.loc 1 1734 0
	movl	-32(%ebp), %eax
	movl	68(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1738 0
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	subst_constants
	.loc 1 1739 0
	call	apply_change_group@PLT
	.loc 1 1740 0
	movl	-36(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 1744 0
	jmp	.L569
.L570:
	.loc 1 1746 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1747 0
	movl	-36(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$13, %al
	jne	.L571
	.loc 1 1748 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	jmp	.L573
.L571:
	.loc 1 1749 0
	movl	-36(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$22, %al
	jne	.L573
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -60(%ebp)
	cmpl	$0, -60(%ebp)
	js	.L573
	cmpl	$0, -60(%ebp)
	jg	.L576
	cmpl	$0, -64(%ebp)
	jbe	.L573
.L576:
	.loc 1 1751 0
	movl	-36(%ebp), %ecx
	movl	%ecx, -52(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	16(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	-52(%ebp), %edx
	movl	%eax, 4(%edx)
.L573:
	.loc 1 1744 0
	movl	-24(%ebp), %eax
	movl	%eax, -36(%ebp)
.L569:
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	jne	.L570
.L567:
.LBE33:
	.loc 1 1756 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L577
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$151, %ax
	jne	.L577
.LBB34:
	.loc 1 1760 0
	movl	$0, -20(%ebp)
	jmp	.L580
.L581:
	.loc 1 1761 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,8), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_insn_notes
	.loc 1 1760 0
	addl	$1, -20(%ebp)
.L580:
	cmpl	$2, -20(%ebp)
	jle	.L581
.L577:
.LBE34:
	.loc 1 1764 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L564
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$63, %ax
	jne	.L564
	.loc 1 1766 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %edx
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	addl	16(%ebp), %eax
	movl	%eax, 4(%edx)
.L564:
	.loc 1 1723 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
.L562:
	cmpl	$0, -32(%ebp)
	jne	.L563
	.loc 1 1768 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE28:
	.size	copy_insn_notes, .-copy_insn_notes
	.type	integrate_parm_decls, @function
integrate_parm_decls:
.LFB29:
	.loc 1 1778 0
	pushl	%ebp
.LCFI61:
	movl	%esp, %ebp
.LCFI62:
	pushl	%ebx
.LCFI63:
	subl	$36, %esp
.LCFI64:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1782 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
	jmp	.L587
.L588:
.LBB35:
	.loc 1 1785 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_decl_for_inlining@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1787 0
	movl	-12(%ebp), %edx
	movl	16(%ebp), %eax
	movl	4(%eax,%edx,4), %edx
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1796 0
	movl	$1, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	subst_constants
	.loc 1 1797 0
	call	apply_change_group@PLT
	.loc 1 1798 0
	movl	-20(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 104(%eax)
.LBE35:
	.loc 1 1782 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	addl	$1, -12(%ebp)
.L587:
	cmpl	$0, -16(%ebp)
	jne	.L588
	.loc 1 1800 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	integrate_parm_decls, .-integrate_parm_decls
	.type	integrate_decl_tree, @function
integrate_decl_tree:
.LFB30:
	.loc 1 1813 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	pushl	%esi
.LCFI67:
	pushl	%ebx
.LCFI68:
	subl	$64, %esp
.LCFI69:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1818 0
	movl	$5, (%esp)
	call	make_node@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1819 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L592
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	leal	(%eax,%eax), %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 12(%eax)
.L592:
	movl	12(%ebp), %eax
	movl	12(%eax), %esi
	movl	12(%ebp), %eax
	movl	12(%eax), %ecx
	movl	4(%ecx), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
	.loc 1 1820 0
	movl	-20(%ebp), %eax
	addl	$20, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1822 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L594
.L595:
.LBB36:
	.loc 1 1826 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_decl_for_inlining@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1828 0
	movl	-24(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L596
.LBB37:
	.loc 1 1832 0
	movl	-24(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L598
	movl	-24(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L600
.L598:
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-24(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -48(%ebp)
.L600:
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 104(%eax)
	.loc 1 1838 0
	movl	-12(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L601
	movl	-12(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L603
.L601:
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-12(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -44(%ebp)
.L603:
	movl	-44(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1839 0
	movl	$1, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	subst_constants
	.loc 1 1840 0
	movl	-28(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 104(%eax)
	.loc 1 1842 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L604
	.loc 1 1843 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L606
.L604:
	.loc 1 1844 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$75, %ax
	jne	.L606
	.loc 1 1846 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1847 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %edx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
.L606:
	.loc 1 1850 0
	call	apply_change_group@PLT
.L596:
.LBE37:
	.loc 1 1855 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1856 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.LBE36:
	.loc 1 1822 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L594:
	cmpl	$0, -24(%ebp)
	jne	.L595
	.loc 1 1859 0
	movl	-20(%ebp), %eax
	addl	$24, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1860 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L609
.L610:
	.loc 1 1862 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	integrate_decl_tree
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1863 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 1864 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1860 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L609:
	cmpl	$0, -24(%ebp)
	jne	.L610
	.loc 1 1867 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	movl	-20(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	10(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 10(%edx)
	.loc 1 1868 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 32(%edx)
	.loc 1 1870 0
	movl	-20(%ebp), %eax
	.loc 1 1871 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE30:
	.size	integrate_decl_tree, .-integrate_decl_tree
	.section	.rodata
	.type	__FUNCTION__.16453, @object
	.size	__FUNCTION__.16453, 24
__FUNCTION__.16453:
	.string	"copy_rtx_and_substitute"
	.text
.globl copy_rtx_and_substitute
	.type	copy_rtx_and_substitute, @function
copy_rtx_and_substitute:
.LFB31:
	.loc 1 1893 0
	pushl	%ebp
.LCFI70:
	movl	%esp, %ebp
.LCFI71:
	pushl	%edi
.LCFI72:
	pushl	%esi
.LCFI73:
	pushl	%ebx
.LCFI74:
	subl	$252, %esp
.LCFI75:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1901 0
	cmpl	$0, 8(%ebp)
	jne	.L614
	.loc 1 1902 0
	movl	$0, -224(%ebp)
	jmp	.L616
.L614:
	.loc 1 1904 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -108(%ebp)
	.loc 1 1905 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -104(%ebp)
	.loc 1 1907 0
	movl	-108(%ebp), %eax
	subl	$46, %eax
	movl	%eax, -228(%ebp)
	cmpl	$34, -228(%ebp)
	ja	.L617
	movl	-228(%ebp), %eax
	sall	$2, %eax
	movl	.L633@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L633:
	.long	.L618@GOTOFF
	.long	.L619@GOTOFF
	.long	.L617@GOTOFF
	.long	.L617@GOTOFF
	.long	.L617@GOTOFF
	.long	.L620@GOTOFF
	.long	.L617@GOTOFF
	.long	.L617@GOTOFF
	.long	.L617@GOTOFF
	.long	.L617@GOTOFF
	.long	.L617@GOTOFF
	.long	.L621@GOTOFF
	.long	.L622@GOTOFF
	.long	.L622@GOTOFF
	.long	.L623@GOTOFF
	.long	.L617@GOTOFF
	.long	.L617@GOTOFF
	.long	.L617@GOTOFF
	.long	.L624@GOTOFF
	.long	.L625@GOTOFF
	.long	.L624@GOTOFF
	.long	.L617@GOTOFF
	.long	.L626@GOTOFF
	.long	.L624@GOTOFF
	.long	.L617@GOTOFF
	.long	.L627@GOTOFF
	.long	.L617@GOTOFF
	.long	.L628@GOTOFF
	.long	.L617@GOTOFF
	.long	.L617@GOTOFF
	.long	.L629@GOTOFF
	.long	.L630@GOTOFF
	.long	.L631@GOTOFF
	.long	.L624@GOTOFF
	.long	.L632@GOTOFF
	.text
.L627:
	.loc 1 1914 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 1915 0
	cmpl	$180, -96(%ebp)
	jle	.L634
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L636
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	112(%eax), %eax
	movl	120(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L636
.L634:
	.loc 1 1921 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L638
	.loc 1 1922 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -224(%ebp)
	jmp	.L616
.L638:
	.loc 1 1932 0
	cmpl	$177, -96(%ebp)
	jne	.L640
.LBB38:
	.loc 1 1935 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	112(%eax), %eax
	movl	%eax, (%esp)
	call	get_func_frame_size@PLT
	movl	%eax, -84(%ebp)
	.loc 1 1948 0
	call	start_sequence@PLT
	.loc 1 1949 0
	movl	-84(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$1, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$52, (%esp)
	call	assign_stack_temp@PLT
	movl	%eax, -92(%ebp)
	.loc 1 1950 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 1957 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	%edx, -220(%ebp)
	movl	$0, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -216(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L642
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L642
	movl	$5, -212(%ebp)
	jmp	.L645
.L642:
	movl	$4, -212(%ebp)
.L645:
	movl	-216(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-212(%ebp), %ecx
	movl	%ecx, (%esp)
	call	force_reg@PLT
	movl	%eax, -120(%ebp)
	movl	-120(%ebp), %eax
	movl	-220(%ebp), %edx
	movl	%eax, (%edx)
	.loc 1 1961 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L646
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L646
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L649
.L646:
	movl	$64, -208(%ebp)
	jmp	.L650
.L649:
	movl	$128, -208(%ebp)
.L650:
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	-208(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	mark_reg_pointer@PLT
.LBB39:
	.loc 1 1964 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L651
.LBB40:
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 36(%eax)
	cmpl	$0, -76(%ebp)
	je	.L651
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L651:
.LBE40:
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	leal	16(%eax), %edx
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -80(%ebp)
	movl	-80(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%eax, (%edx)
	movl	-80(%ebp), %eax
	movl	$-1, 4(%eax)
.LBE39:
	.loc 1 1966 0
	call	get_insns@PLT
	movl	%eax, -88(%ebp)
	.loc 1 1967 0
	call	end_sequence@PLT
	.loc 1 1968 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	.loc 1 1969 0
	movl	-120(%ebp), %eax
	movl	%eax, -224(%ebp)
	jmp	.L616
.L640:
.LBE38:
	.loc 1 1971 0
	cmpl	$176, -96(%ebp)
	je	.L654
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L656
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	112(%eax), %eax
	movl	120(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L656
.L654:
.LBB41:
	.loc 1 1979 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	112(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 1981 0
	call	start_sequence@PLT
	.loc 1 1982 0
	movl	-64(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$1, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$52, (%esp)
	call	assign_stack_temp@PLT
	movl	%eax, -72(%ebp)
	.loc 1 1983 0
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 1990 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	%edx, -204(%ebp)
	movl	$0, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -200(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L658
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L658
	movl	$5, -196(%ebp)
	jmp	.L661
.L658:
	movl	$4, -196(%ebp)
.L661:
	movl	-200(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-196(%ebp), %ecx
	movl	%ecx, (%esp)
	call	force_reg@PLT
	movl	%eax, -120(%ebp)
	movl	-120(%ebp), %eax
	movl	-204(%ebp), %edx
	movl	%eax, (%edx)
	.loc 1 1994 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L662
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L662
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L665
.L662:
	movl	$64, -192(%ebp)
	jmp	.L666
.L665:
	movl	$128, -192(%ebp)
.L666:
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	-192(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	mark_reg_pointer@PLT
.LBB42:
	.loc 1 1997 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L667
.LBB43:
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 36(%eax)
	cmpl	$0, -56(%ebp)
	je	.L667
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L667:
.LBE43:
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	leal	16(%eax), %edx
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %edx
	movl	-72(%ebp), %eax
	movl	%eax, (%edx)
	movl	-60(%ebp), %eax
	movl	$-1, 4(%eax)
.LBE42:
	.loc 1 1999 0
	call	get_insns@PLT
	movl	%eax, -68(%ebp)
	.loc 1 2000 0
	call	end_sequence@PLT
	.loc 1 2001 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	.loc 1 2002 0
	movl	-120(%ebp), %eax
	movl	%eax, -224(%ebp)
	jmp	.L616
.L656:
.LBE41:
	.loc 1 2004 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L670
	.loc 1 2009 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	.L672
	.loc 1 2011 0
	movl	rtx_equal_function_value_matters@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L674
	.loc 1 2016 0
	movl	-96(%ebp), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -224(%ebp)
	jmp	.L616
.L674:
	.loc 1 2020 0
	movl	8(%ebp), %edx
	movl	%edx, -224(%ebp)
	jmp	.L616
.L672:
	.loc 1 2022 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L676
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-104(%ebp), %eax
	je	.L676
	.loc 1 2024 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -224(%ebp)
	jmp	.L616
.L676:
	.loc 1 2026 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -224(%ebp)
	jmp	.L616
.L670:
	.loc 1 2045 0
	movl	8(%ebp), %ecx
	movl	%ecx, -224(%ebp)
	jmp	.L616
.L636:
	.loc 1 2049 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L679
	.loc 1 2051 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, (%esi)
	.loc 1 2052 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	3(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 2053 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	3(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 2054 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	3(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 2057 0
	movl	12(%ebp), %eax
	movl	68(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L679
	.loc 1 2058 0
	movl	12(%ebp), %eax
	movl	64(%eax), %edx
	movl	-96(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	mark_reg_pointer@PLT
.L679:
	.loc 1 2061 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -224(%ebp)
	jmp	.L616
.L628:
	.loc 1 2064 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -124(%ebp)
	.loc 1 2065 0
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	simplify_gen_subreg@PLT
	movl	%eax, -224(%ebp)
	jmp	.L616
.L632:
	.loc 1 2070 0
	movl	8(%ebp), %eax
	movl	20(%eax), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%esi, 16(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$80, (%esp)
	call	gen_rtx_fmt_eit@PLT
	movl	%eax, -124(%ebp)
	.loc 1 2074 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 2075 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L682
	.loc 1 2076 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L684
.L682:
	.loc 1 2077 0
	cmpl	$180, -96(%ebp)
	jle	.L684
	.loc 1 2079 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 2080 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	-120(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, (%esi)
	.loc 1 2081 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-120(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	3(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 2082 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-120(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	3(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 2083 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-120(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	3(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 2095 0
	movl	12(%ebp), %eax
	movl	68(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L686
	movl	12(%ebp), %eax
	movl	68(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L686
	.loc 1 2097 0
	movl	12(%ebp), %eax
	movl	64(%eax), %edx
	movl	-96(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %ecx
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	mark_reg_pointer@PLT
.L686:
	.loc 1 2099 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -96(%ebp)
.L684:
	.loc 1 2101 0
	movl	-96(%ebp), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2102 0
	movl	-124(%ebp), %eax
	movl	%eax, -224(%ebp)
	jmp	.L616
.L622:
	.loc 1 2110 0
	cmpl	$59, -108(%ebp)
	sete	%al
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -124(%ebp)
	.loc 1 2111 0
	movl	-124(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L689
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L689
	.loc 1 2112 0
	movl	-124(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -124(%ebp)
.L689:
	.loc 1 2113 0
	movl	-124(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -224(%ebp)
	jmp	.L616
.L619:
	.loc 1 2118 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-88, %eax
	jne	.L617
.L618:
	.loc 1 2123 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_label_from_map@PLT
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	3(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 2125 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_label_from_map@PLT
	movl	%eax, -224(%ebp)
	jmp	.L616
.L630:
	.loc 1 2128 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L692
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -188(%ebp)
	jmp	.L694
.L692:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_label_from_map@PLT
	movl	%eax, -188(%ebp)
.L694:
	movl	-188(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$77, (%esp)
	call	gen_rtx_fmt_u00@PLT
	movl	%eax, -124(%ebp)
	.loc 1 2134 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	-124(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	3(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 2139 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L695
	movl	-124(%ebp), %eax
	movl	4(%eax), %eax
	movl	52(%eax), %esi
	call	get_first_label_num@PLT
	cmpl	%eax, %esi
	jl	.L697
	movl	-124(%ebp), %eax
	movl	4(%eax), %eax
	movl	52(%eax), %esi
	call	max_label_num@PLT
	cmpl	%eax, %esi
	jl	.L695
.L697:
	movl	$1, -184(%ebp)
	jmp	.L699
.L695:
	movl	$0, -184(%ebp)
.L699:
	movzbl	-184(%ebp), %eax
	andl	$1, %eax
	movl	-124(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	3(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 2148 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L700
	movl	-124(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L700
	.loc 1 2149 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	132(%edx), %eax
	addl	$1, %eax
	movl	%eax, 132(%edx)
.L700:
	.loc 1 2151 0
	movl	-124(%ebp), %ecx
	movl	%ecx, -224(%ebp)
	jmp	.L616
.L624:
	.loc 1 2157 0
	movl	8(%ebp), %eax
	movl	%eax, -224(%ebp)
	jmp	.L616
.L631:
	.loc 1 2163 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L703
.LBB44:
	.loc 1 2165 0
	movl	inlining@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L705
	movl	inlining@GOTOFF(%ebx), %edx
	movl	%edx, -180(%ebp)
	jmp	.L707
.L705:
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -180(%ebp)
.L707:
	movl	-180(%ebp), %ecx
	movl	%ecx, -52(%ebp)
	.loc 1 2166 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pool_constant_for_function@PLT
	movl	%eax, -48(%ebp)
	.loc 1 2167 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pool_mode_for_function@PLT
	movl	%eax, -44(%ebp)
	.loc 1 2168 0
	movl	inlining@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L708
.LBB45:
	.loc 1 2172 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	force_const_mem@PLT
	movl	%eax, -40(%ebp)
	.loc 1 2190 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2196 0
	movl	-40(%ebp), %eax
	movl	%eax, -224(%ebp)
	jmp	.L616
.L708:
.LBE45:
	.loc 1 2198 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L703
	.loc 1 2199 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	force_const_mem@PLT
	movl	4(%eax), %eax
	movl	%eax, -224(%ebp)
	jmp	.L616
.L703:
.LBE44:
	.loc 1 2205 0
	movl	8(%ebp), %edx
	movl	%edx, -224(%ebp)
	jmp	.L616
.L625:
	.loc 1 2211 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	jne	.L711
.LBB46:
	.loc 1 2215 0
	movl	8(%ebp), %edx
	addl	$4, %edx
	leal	-160(%ebp), %ecx
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
	.loc 1 2216 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 24(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	movl	-156(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 20(%esp)
	call	const_double_from_real_value@PLT
	movl	%eax, -224(%ebp)
	jmp	.L616
.L711:
.LBE46:
	.loc 1 2219 0
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	movl	16(%eax), %edi
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	immed_double_const@PLT
	movl	%eax, -224(%ebp)
	jmp	.L616
.L626:
	.loc 1 2225 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L617
	.loc 1 2226 0
	leal	__FUNCTION__.16453@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2226, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L620:
	.loc 1 2234 0
	movl	12(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	jne	.L617
	.loc 1 2236 0
	movl	$51, (%esp)
	call	rtx_alloc@PLT
	movl	%eax, -124(%ebp)
	.loc 1 2237 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	-124(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	3(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 2238 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	-124(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 2239 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2240 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2242 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 2243 0
	movl	12(%ebp), %eax
	movl	52(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 2244 0
	movl	12(%ebp), %eax
	movl	56(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 2246 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 2247 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 2248 0
	movl	-124(%ebp), %ecx
	movl	%ecx, -224(%ebp)
	jmp	.L616
.L623:
.LBB47:
	.loc 1 2264 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2266 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	-36(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	3(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	-36(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	3(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	shrb	$7, %al
	movl	-36(%ebp), %edx
	movl	%eax, %ecx
	sall	$7, %ecx
	movzbl	3(%edx), %eax
	andl	$127, %eax
	orl	%ecx, %eax
	movb	%al, 3(%edx)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	-36(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	3(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	-36(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	3(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	movl	-36(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	3(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 3(%edx)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2268 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%edx, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$60, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -224(%ebp)
	jmp	.L616
.L621:
.LBE47:
	.loc 1 2285 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	je	.L717
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	.L719
.L717:
.LBB48:
	.loc 1 2293 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	.loc 1 2294 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2295 0
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,8), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2297 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L720
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -176(%ebp)
	movl	%ecx, -172(%ebp)
	jmp	.L722
.L720:
	movl	$0, -176(%ebp)
	movl	$0, -172(%ebp)
.L722:
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	.loc 1 2300 0
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -224(%ebp)
	jmp	.L616
.L719:
.LBE48:
	.loc 1 2309 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -224(%ebp)
	jmp	.L616
.L629:
	.loc 1 2315 0
	movl	inlining@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L723
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L723
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L723
.LBB49:
	.loc 1 2320 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	inlining@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_pool_mode_for_function@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2322 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	inlining@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_pool_constant_for_function@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2324 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2332 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L727
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L727
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L727
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L727
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L727
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L727
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L727
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L727
	.loc 1 2333 0
	movl	-20(%ebp), %edx
	movl	%edx, -224(%ebp)
	jmp	.L616
.L727:
	.loc 1 2335 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	force_const_mem@PLT
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	%eax, -224(%ebp)
	jmp	.L616
.L723:
.LBE49:
	.loc 1 2338 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -124(%ebp)
	.loc 1 2340 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	-124(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	3(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	-124(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	3(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$7, %al
	movl	-124(%ebp), %edx
	movl	%eax, %ecx
	sall	$7, %ecx
	movzbl	3(%edx), %eax
	andl	$127, %eax
	orl	%ecx, %eax
	movb	%al, 3(%edx)
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	-124(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	3(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	-124(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	3(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	movl	-124(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	3(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 3(%edx)
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2345 0
	movl	inlining@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L736
	cmpl	$0, 16(%ebp)
	jne	.L736
	.loc 1 2346 0
	movl	-124(%ebp), %eax
	movzbl	3(%eax), %edx
	andl	$-5, %edx
	movb	%dl, 3(%eax)
.L736:
	.loc 1 2350 0
	movl	inlining@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L739
	movl	-124(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L739
	movl	-124(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L739
	movl	-124(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L743
	movl	-124(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -168(%ebp)
	jmp	.L745
.L743:
	movl	$0, -168(%ebp)
.L745:
	movl	-168(%ebp), %ecx
	movzbl	8(%ecx), %eax
	cmpb	$42, %al
	jne	.L739
	movl	-124(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L747
	movl	-124(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -164(%ebp)
	jmp	.L749
.L747:
	movl	$0, -164(%ebp)
.L749:
	movl	-164(%ebp), %edx
	movl	20(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L739
	.loc 1 2353 0
	movl	$0, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_expr@PLT
.L739:
	.loc 1 2355 0
	movl	-124(%ebp), %ecx
	movl	%ecx, -224(%ebp)
	jmp	.L616
.L617:
	.loc 1 2361 0
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_alloc@PLT
	movl	%eax, -124(%ebp)
	.loc 1 2362 0
	movl	-104(%ebp), %eax
	movl	%eax, %edx
	movl	-124(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 2363 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	-124(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	3(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 2364 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	-124(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	3(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 2365 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	-124(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	3(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 2367 0
	movl	-124(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -100(%ebp)
	.loc 1 2369 0
	movl	$0, -116(%ebp)
	jmp	.L751
.L752:
	.loc 1 2371 0
	movl	-100(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	$1, -100(%ebp)
	subl	$48, %eax
	movl	%eax, -232(%ebp)
	cmpl	$71, -232(%ebp)
	ja	.L753
	movl	-232(%ebp), %eax
	sall	$2, %eax
	movl	.L762@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L762:
	.long	.L754@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L755@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L756@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L757@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L753@GOTOFF
	.long	.L758@GOTOFF
	.long	.L759@GOTOFF
	.long	.L760@GOTOFF
	.long	.L753@GOTOFF
	.long	.L761@GOTOFF
	.text
.L754:
	.loc 1 2375 0
	movl	-116(%ebp), %esi
	movl	-116(%ebp), %edx
	movl	8(%ebp), %eax
	leal	4(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-124(%ebp), %ecx
	movl	%eax, 4(%ecx,%esi,8)
	movl	%edx, 8(%ecx,%esi,8)
	.loc 1 2376 0
	jmp	.L763
.L756:
	.loc 1 2379 0
	movl	-116(%ebp), %esi
	movl	-116(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, %edx
	movl	-124(%ebp), %eax
	movl	%edx, 4(%eax,%esi,8)
	.loc 1 2381 0
	jmp	.L763
.L760:
	.loc 1 2386 0
	movl	-116(%ebp), %esi
	movl	12(%ebp), %eax
	movl	24(%eax), %ecx
	movl	-116(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 4(%eax,%esi,8)
	.loc 1 2387 0
	jmp	.L763
.L755:
	.loc 1 2390 0
	movl	-116(%ebp), %ecx
	movl	-116(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 4(%eax,%ecx,8)
	.loc 1 2391 0
	movl	-116(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	testl	%eax, %eax
	je	.L763
	movl	-116(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L763
	.loc 1 2393 0
	movl	-116(%ebp), %esi
	movl	-116(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	rtvec_alloc@PLT
	movl	%eax, %edx
	movl	-124(%ebp), %eax
	movl	%edx, 4(%eax,%esi,8)
	.loc 1 2394 0
	movl	$0, -112(%ebp)
	jmp	.L767
.L768:
	.loc 1 2395 0
	movl	-116(%ebp), %edx
	movl	-124(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	-112(%ebp), %edi
	movl	-116(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-112(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, 4(%esi,%edi,4)
	.loc 1 2394 0
	addl	$1, -112(%ebp)
.L767:
	movl	-116(%ebp), %edx
	movl	-124(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-112(%ebp), %eax
	jg	.L768
	.loc 1 2399 0
	jmp	.L763
.L761:
	.loc 1 2402 0
	movl	-116(%ebp), %esi
	movl	-116(%ebp), %edx
	movl	8(%ebp), %eax
	leal	4(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-124(%ebp), %ecx
	movl	%eax, 4(%ecx,%esi,8)
	movl	%edx, 8(%ecx,%esi,8)
	.loc 1 2403 0
	jmp	.L763
.L757:
	.loc 1 2406 0
	movl	-116(%ebp), %ecx
	movl	-116(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 4(%eax,%ecx,8)
	.loc 1 2407 0
	jmp	.L763
.L758:
	.loc 1 2410 0
	movl	-116(%ebp), %ecx
	movl	-116(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 4(%eax,%ecx,8)
	.loc 1 2411 0
	jmp	.L763
.L759:
	.loc 1 2414 0
	movl	-116(%ebp), %ecx
	movl	-116(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 4(%eax,%ecx,8)
	.loc 1 2415 0
	jmp	.L763
.L753:
	.loc 1 2418 0
	leal	__FUNCTION__.16453@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2418, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L763:
	.loc 1 2369 0
	addl	$1, -116(%ebp)
.L751:
	movl	-124(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-116(%ebp), %eax
	jg	.L752
	.loc 1 2422 0
	cmpl	$51, -108(%ebp)
	jne	.L770
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L770
	.loc 1 2424 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 48(%eax)
	.loc 1 2425 0
	movl	-124(%ebp), %eax
	movl	28(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 2426 0
	movl	-124(%ebp), %eax
	movl	36(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 56(%eax)
.L770:
	.loc 1 2430 0
	movl	-124(%ebp), %eax
	movl	%eax, -224(%ebp)
.L616:
	movl	-224(%ebp), %eax
	.loc 1 2431 0
	addl	$252, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE31:
	.size	copy_rtx_and_substitute, .-copy_rtx_and_substitute
.globl try_constants
	.type	try_constants, @function
try_constants:
.LFB32:
	.loc 1 2439 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	pushl	%ebx
.LCFI78:
	subl	$52, %esp
.LCFI79:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2442 0
	movl	12(%ebp), %eax
	movl	$0, 72(%eax)
	.loc 1 2448 0
	movl	8(%ebp), %edx
	addl	$44, %edx
	movl	$1, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	subst_constants
	.loc 1 2449 0
	call	apply_change_group@PLT
	.loc 1 2450 0
	movl	8(%ebp), %edx
	addl	$44, %edx
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	subst_constants
	.loc 1 2451 0
	call	apply_change_group@PLT
	.loc 1 2454 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	leal	mark_stores@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 2455 0
	movl	12(%ebp), %eax
	movl	$0, 316(%eax)
	.loc 1 2461 0
	movl	$0, -24(%ebp)
	jmp	.L775
.L776:
	.loc 1 2463 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	76(%eax,%edx,8), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L777
.LBB50:
	.loc 1 2465 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	76(%eax,%edx,8), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2467 0
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L779
.LBB51:
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 36(%eax)
	cmpl	$0, -16(%ebp)
	je	.L779
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L779:
.LBE51:
	.loc 1 2468 0
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L782
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	80(%eax,%edx,8), %ecx
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%edx,%eax,8), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L788
.L782:
.LBB52:
	.loc 1 2474 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	76(%eax,%edx,8), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L785
.LBB53:
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	76(%eax,%edx,8), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 36(%eax)
	cmpl	$0, -8(%ebp)
	je	.L785
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L785:
.LBE53:
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	leal	16(%eax), %ecx
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	76(%eax,%edx,8), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	80(%eax,%edx,8), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	movl	12(%ebp), %eax
	movl	40(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L788
.L777:
.LBE52:
.LBE50:
	.loc 1 2477 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	76(%eax,%edx,8), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L788
	.loc 1 2478 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	80(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%edx, 316(%eax)
.L788:
	.loc 1 2461 0
	addl	$1, -24(%ebp)
.L775:
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	-24(%ebp), %eax
	jg	.L776
	.loc 1 2484 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	try_constants, .-try_constants
	.section	.rodata
	.type	__FUNCTION__.17319, @object
	.size	__FUNCTION__.17319, 16
__FUNCTION__.17319:
	.string	"subst_constants"
	.text
	.type	subst_constants, @function
subst_constants:
.LFB33:
	.loc 1 2507 0
	pushl	%ebp
.LCFI80:
	movl	%esp, %ebp
.LCFI81:
	pushl	%edi
.LCFI82:
	pushl	%esi
.LCFI83:
	pushl	%ebx
.LCFI84:
	subl	$156, %esp
.LCFI85:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2508 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 2512 0
	call	num_validated_changes@PLT
	movl	%eax, -76(%ebp)
	.loc 1 2513 0
	movl	$0, -72(%ebp)
	.loc 1 2514 0
	movl	$54, -68(%ebp)
	.loc 1 2516 0
	movl	-96(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -84(%ebp)
	.loc 1 2518 0
	movl	-84(%ebp), %eax
	subl	$25, %eax
	movl	%eax, -128(%ebp)
	cmpl	$53, -128(%ebp)
	ja	.L793
	movl	-128(%ebp), %eax
	sall	$2, %eax
	movl	.L800@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L800:
	.long	.L940@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L795@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L793@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L793@GOTOFF
	.long	.L797@GOTOFF
	.long	.L793@GOTOFF
	.long	.L798@GOTOFF
	.long	.L793@GOTOFF
	.long	.L793@GOTOFF
	.long	.L799@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.text
.L796:
	.loc 1 2541 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L940
	.loc 1 2542 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	leal	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	subst_constants
	.loc 1 2543 0
	jmp	.L940
.L797:
	.loc 1 2548 0
	cmpl	$0, 20(%ebp)
	jne	.L940
.LBB54:
	.loc 1 2550 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 2553 0
	cmpl	$175, -64(%ebp)
	jg	.L806
	movl	-96(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L940
.L806:
	movl	-64(%ebp), %edx
	movl	16(%ebp), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L940
	movl	16(%ebp), %eax
	movl	36(%eax), %eax
	leal	16(%eax), %edx
	movl	-64(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L940
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	%eax, %edx
	jb	.L940
	.loc 1 2558 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 2560 0
	jmp	.L940
.L798:
.LBE54:
	.loc 1 2568 0
	cmpl	$0, 20(%ebp)
	jne	.L793
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L793
.LBB55:
	.loc 1 2570 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -100(%ebp)
	.loc 1 2571 0
	movl	$0, -56(%ebp)
	.loc 1 2578 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	subst_constants
	.loc 1 2579 0
	movl	-96(%ebp), %eax
	movl	12(%eax), %edx
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	-100(%ebp), %esi
	movl	-96(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	simplify_gen_subreg@PLT
	movl	%eax, -56(%ebp)
	.loc 1 2583 0
	cmpl	$0, -56(%ebp)
	je	.L814
	.loc 1 2584 0
	movl	$1, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	jmp	.L940
.L814:
	.loc 1 2586 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	cancel_changes@PLT
	.loc 1 2588 0
	jmp	.L940
.L799:
.LBE55:
	.loc 1 2593 0
	movl	-96(%ebp), %eax
	addl	$4, %eax
	movl	$0, 12(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	subst_constants
	.loc 1 2596 0
	cmpl	$0, 20(%ebp)
	jne	.L940
	cmpl	$0, 12(%ebp)
	je	.L940
	call	num_validated_changes@PLT
	cmpl	-76(%ebp), %eax
	je	.L940
	movl	-96(%ebp), %eax
	movl	4(%eax), %edx
	movl	-96(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	memory_address_p@PLT
	testl	%eax, %eax
	jne	.L940
	.loc 1 2598 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	cancel_changes@PLT
	.loc 1 2599 0
	jmp	.L940
.L795:
.LBB56:
	.loc 1 2606 0
	movl	-96(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -52(%ebp)
	.loc 1 2607 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2609 0
	movl	$0, -36(%ebp)
	.loc 1 2614 0
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$84, %ax
	jne	.L822
	.loc 1 2616 0
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2617 0
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$4, %eax
	jne	.L822
	.loc 1 2623 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	.loc 1 2624 0
	cmpl	$0, -36(%ebp)
	jne	.L822
	.loc 1 2625 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
.L822:
	.loc 1 2629 0
	movl	-96(%ebp), %edx
	addl	$12, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	subst_constants
	.loc 1 2630 0
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2632 0
	jmp	.L826
.L827:
	.loc 1 2636 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	jne	.L828
	.loc 1 2638 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	leal	12(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	subst_constants
	.loc 1 2639 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	leal	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	subst_constants
.L828:
	.loc 1 2641 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, -52(%ebp)
.L826:
	.loc 1 2632 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L827
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L827
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L827
	.loc 1 2645 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L833
	.loc 1 2646 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	leal	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	subst_constants
.L833:
	.loc 1 2652 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L835
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -124(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L837
	movl	$8, -120(%ebp)
	jmp	.L839
.L837:
	movl	$4, -120(%ebp)
.L839:
	movl	-120(%ebp), %eax
	cmpl	%eax, -124(%ebp)
	jg	.L835
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -116(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L841
	movl	$8, -112(%ebp)
	jmp	.L843
.L841:
	movl	$4, -112(%ebp)
.L843:
	movl	-112(%ebp), %eax
	cmpl	%eax, -116(%ebp)
	jg	.L835
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	ja	.L835
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_lowpart_if_possible@PLT
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L835
	.loc 1 2659 0
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
.L835:
	.loc 1 2662 0
	movl	16(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	$29, %eax
	jg	.L940
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L849
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L849
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L849
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L849
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L849
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L849
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L849
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L849
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L858
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$176, %eax
	je	.L849
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$177, %eax
	je	.L849
.L858:
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L861
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L861
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$176, %eax
	je	.L864
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$177, %eax
	jne	.L861
.L864:
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L849
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L849
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L849
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L849
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L849
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L849
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L849
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L849
.L861:
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$84, %ax
	je	.L849
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-48(%ebp), %eax
	jne	.L940
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-44(%ebp), %eax
	je	.L849
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	je	.L849
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L940
.L849:
.LBB57:
	.loc 1 2683 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2684 0
	movl	16(%ebp), %eax
	movl	72(%eax), %ecx
	movl	16(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 80(%edx,%ecx,8)
	.loc 1 2685 0
	movl	16(%ebp), %eax
	movl	72(%eax), %ecx
	movl	16(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 76(%edx,%ecx,8)
	leal	1(%ecx), %edx
	movl	16(%ebp), %eax
	movl	%edx, 72(%eax)
	.loc 1 2686 0
	cmpl	$0, -36(%ebp)
	je	.L940
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$84, %ax
	jne	.L940
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$4, %eax
	jne	.L940
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L940
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L940
	.loc 1 2696 0
	movl	16(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 320(%edx)
	.loc 1 2697 0
	movl	16(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 324(%edx)
	.loc 1 2701 0
	jmp	.L940
.L793:
.LBE57:
.LBE56:
	.loc 1 2707 0
	movl	-84(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -80(%ebp)
	.loc 1 2710 0
	movl	-80(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L882
	.loc 1 2711 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -68(%ebp)
.L882:
	.loc 1 2713 0
	movl	$0, -92(%ebp)
	jmp	.L884
.L885:
	.loc 1 2715 0
	movl	-80(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	$1, -80(%ebp)
	subl	$48, %eax
	movl	%eax, -132(%ebp)
	cmpl	$71, -132(%ebp)
	ja	.L886
	movl	-132(%ebp), %eax
	sall	$2, %eax
	movl	.L891@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L891:
	.long	.L892@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L892@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L889@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L890@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L892@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L892@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L886@GOTOFF
	.long	.L892@GOTOFF
	.long	.L892@GOTOFF
	.long	.L892@GOTOFF
	.long	.L886@GOTOFF
	.long	.L892@GOTOFF
	.text
.L890:
	.loc 1 2721 0
	movl	-92(%ebp), %eax
	movl	-96(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L892
	.loc 1 2722 0
	movl	-92(%ebp), %eax
	sall	$3, %eax
	addl	-96(%ebp), %eax
	leal	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	subst_constants
	.loc 1 2723 0
	jmp	.L892
.L889:
	.loc 1 2735 0
	movl	-92(%ebp), %eax
	movl	-96(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L892
	movl	-92(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L892
	.loc 1 2736 0
	movl	$0, -88(%ebp)
	jmp	.L898
.L899:
	.loc 1 2737 0
	movl	-92(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	leal	4(%eax), %edx
	movl	-88(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	subst_constants
	.loc 1 2736 0
	addl	$1, -88(%ebp)
.L898:
	movl	-92(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-88(%ebp), %eax
	jg	.L899
	.loc 1 2739 0
	jmp	.L892
.L886:
	.loc 1 2742 0
	leal	__FUNCTION__.17319@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2742, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L892:
	.loc 1 2713 0
	addl	$1, -92(%ebp)
.L884:
	movl	-84(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-92(%ebp), %eax
	jg	.L885
	.loc 1 2748 0
	cmpl	$0, 20(%ebp)
	jne	.L901
	movl	-84(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$99, %al
	je	.L903
	cmpl	$112, -84(%ebp)
	je	.L903
	cmpl	$113, -84(%ebp)
	jne	.L901
.L903:
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L906
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L906
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L906
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L906
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L906
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L906
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L906
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L901
.L906:
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L901
.LBB58:
	.loc 1 2752 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2753 0
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	movl	-96(%ebp), %edx
	addl	$4, %edx
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 2754 0
	movl	-96(%ebp), %edx
	addl	$12, %edx
	movl	$1, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
.L901:
.LBE58:
	.loc 1 2758 0
	cmpl	$0, 20(%ebp)
	jne	.L915
	.loc 1 2759 0
	movl	-84(%ebp), %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$49, %eax
	movl	%eax, -136(%ebp)
	cmpl	$50, -136(%ebp)
	ja	.L915
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	.L921@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L921:
	.long	.L917@GOTOFF
	.long	.L918@GOTOFF
	.long	.L919@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L920@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L915@GOTOFF
	.long	.L919@GOTOFF
	.long	.L918@GOTOFF
	.text
.L917:
	.loc 1 2762 0
	cmpl	$54, -68(%ebp)
	jne	.L922
	.loc 1 2763 0
	leal	__FUNCTION__.17319@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2763, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L922:
	.loc 1 2764 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-96(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-68(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_unary_operation@PLT
	movl	%eax, -72(%ebp)
	.loc 1 2766 0
	jmp	.L915
.L920:
.LBB59:
	.loc 1 2770 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 2772 0
	cmpl	$0, -24(%ebp)
	jne	.L924
	.loc 1 2773 0
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
.L924:
	.loc 1 2774 0
	movl	-96(%ebp), %eax
	movl	12(%eax), %edx
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_relational_operation@PLT
	movl	%eax, -72(%ebp)
	.loc 1 2792 0
	jmp	.L915
.L918:
.LBE59:
	.loc 1 2797 0
	movl	-96(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-96(%ebp), %eax
	movl	4(%eax), %edx
	movl	-96(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_binary_operation@PLT
	movl	%eax, -72(%ebp)
	.loc 1 2799 0
	jmp	.L915
.L919:
	.loc 1 2803 0
	cmpl	$54, -68(%ebp)
	jne	.L926
	.loc 1 2804 0
	leal	__FUNCTION__.17319@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2804, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L926:
	.loc 1 2806 0
	cmpl	$82, -84(%ebp)
	jne	.L928
.LBB60:
	.loc 1 2808 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2810 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L928
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L928
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L928
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	320(%eax), %eax
	cmpl	%eax, %edx
	jne	.L928
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L928
.LBB61:
	.loc 1 2822 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %ecx
	movl	16(%ebp), %eax
	movl	324(%eax), %esi
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	simplify_relational_operation@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2824 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L935
	.loc 1 2825 0
	movl	-96(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L928
.L935:
	.loc 1 2826 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L928
	.loc 1 2827 0
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -72(%ebp)
.L928:
.LBE61:
.LBE60:
	.loc 1 2830 0
	cmpl	$0, -72(%ebp)
	jne	.L915
	.loc 1 2831 0
	movl	-96(%ebp), %eax
	movl	20(%eax), %edx
	movl	-96(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-96(%ebp), %eax
	movl	4(%eax), %esi
	movl	-96(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edi
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_ternary_operation@PLT
	movl	%eax, -72(%ebp)
.L915:
	.loc 1 2837 0
	cmpl	$0, -72(%ebp)
	je	.L940
	.loc 1 2838 0
	movl	$1, 12(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
.L940:
	.loc 1 2839 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	subst_constants, .-subst_constants
	.type	mark_stores, @function
mark_stores:
.LFB34:
	.loc 1 2849 0
	pushl	%ebp
.LCFI86:
	movl	%esp, %ebp
.LCFI87:
	pushl	%esi
.LCFI88:
	pushl	%ebx
.LCFI89:
	subl	$64, %esp
.LCFI90:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2850 0
	movl	$-1, -28(%ebp)
	.loc 1 2851 0
	movl	$0, -24(%ebp)
	.loc 1 2856 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L942
	.loc 1 2857 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	jmp	.L944
.L942:
	.loc 1 2858 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L944
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L944
	.loc 1 2860 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2861 0
	cmpl	$175, -28(%ebp)
	jg	.L947
	.loc 1 2862 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -28(%ebp)
.L947:
	.loc 1 2866 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
.L944:
	.loc 1 2869 0
	cmpl	$0, -28(%ebp)
	js	.L960
.LBB62:
	.loc 1 2871 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2873 0
	cmpl	$175, -20(%ebp)
	ja	.L951
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-20(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -44(%ebp)
	jmp	.L953
.L951:
	movl	-20(%ebp), %eax
	movl	%eax, -44(%ebp)
.L953:
	movl	-44(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2878 0
	cmpl	$176, -20(%ebp)
	je	.L960
	cmpl	$177, -20(%ebp)
	je	.L960
	.loc 1 2880 0
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L956
.L957:
	.loc 1 2881 0
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jbe	.L958
	.loc 1 2882 0
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	$0, 16(%edx,%eax,8)
.L958:
	.loc 1 2880 0
	addl	$1, -12(%ebp)
.L956:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jbe	.L957
.L960:
.LBE62:
	.loc 1 2884 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE34:
	.size	mark_stores, .-mark_stores
	.type	set_block_origin_self, @function
set_block_origin_self:
.LFB35:
	.loc 1 2899 0
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	pushl	%ebx
.LCFI93:
	subl	$20, %esp
.LCFI94:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2900 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L969
	.loc 1 2902 0
	movl	8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 32(%edx)
.LBB63:
	.loc 1 2907 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2908 0
	jmp	.L964
.L965:
	.loc 1 2910 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	set_decl_origin_self@PLT
	.loc 1 2909 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L964:
	.loc 1 2908 0
	cmpl	$0, -12(%ebp)
	jne	.L965
.LBE63:
.LBB64:
	.loc 1 2916 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2917 0
	jmp	.L967
.L968:
	.loc 1 2919 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_block_origin_self
	.loc 1 2918 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L967:
	.loc 1 2917 0
	cmpl	$0, -8(%ebp)
	jne	.L968
.L969:
.LBE64:
	.loc 1 2922 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	set_block_origin_self, .-set_block_origin_self
.globl set_decl_origin_self
	.type	set_decl_origin_self, @function
set_decl_origin_self:
.LFB36:
	.loc 1 2938 0
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
	.loc 1 2939 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	jne	.L979
	.loc 1 2941 0
	movl	8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 88(%edx)
	.loc 1 2942 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L979
.LBB65:
	.loc 1 2946 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L974
.L975:
	.loc 1 2947 0
	movl	-8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 88(%edx)
	.loc 1 2946 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L974:
	cmpl	$0, -8(%ebp)
	jne	.L975
	.loc 1 2948 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L979
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L979
	.loc 1 2950 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	call	set_block_origin_self
.L979:
.LBE65:
	.loc 1 2953 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	set_decl_origin_self, .-set_decl_origin_self
	.type	set_block_abstract_flags, @function
set_block_abstract_flags:
.LFB37:
	.loc 1 2964 0
	pushl	%ebp
.LCFI99:
	movl	%esp, %ebp
.LCFI100:
	pushl	%ebx
.LCFI101:
	subl	$36, %esp
.LCFI102:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2968 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	16(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 16(%ecx)
	.loc 1 2970 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2971 0
	jmp	.L981
.L982:
	.loc 1 2973 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	set_decl_abstract_flags@PLT
	.loc 1 2972 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L981:
	.loc 1 2971 0
	cmpl	$0, -12(%ebp)
	jne	.L982
	.loc 1 2975 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2976 0
	jmp	.L984
.L985:
	.loc 1 2978 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_block_abstract_flags
	.loc 1 2977 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L984:
	.loc 1 2976 0
	cmpl	$0, -8(%ebp)
	jne	.L985
	.loc 1 2979 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	set_block_abstract_flags, .-set_block_abstract_flags
.globl set_decl_abstract_flags
	.type	set_decl_abstract_flags, @function
set_decl_abstract_flags:
.LFB38:
	.loc 1 2991 0
	pushl	%ebp
.LCFI103:
	movl	%esp, %ebp
.LCFI104:
	pushl	%ebx
.LCFI105:
	subl	$36, %esp
.LCFI106:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2992 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	sall	$7, %ecx
	movzbl	33(%edx), %eax
	andl	$127, %eax
	orl	%ecx, %eax
	movb	%al, 33(%edx)
	.loc 1 2993 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L996
.LBB66:
	.loc 1 2997 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L991
.L992:
	.loc 1 2998 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	movl	-8(%ebp), %edx
	movl	%eax, %ecx
	sall	$7, %ecx
	movzbl	33(%edx), %eax
	andl	$127, %eax
	orl	%ecx, %eax
	movb	%al, 33(%edx)
	.loc 1 2997 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L991:
	cmpl	$0, -8(%ebp)
	jne	.L992
	.loc 1 2999 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L996
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L996
	.loc 1 3001 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	set_block_abstract_flags
.L996:
.LBE66:
	.loc 1 3003 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	set_decl_abstract_flags, .-set_decl_abstract_flags
.globl output_inline_function
	.type	output_inline_function, @function
output_inline_function:
.LFB39:
	.loc 1 3014 0
	pushl	%ebp
.LCFI107:
	movl	%esp, %ebp
.LCFI108:
	pushl	%ebx
.LCFI109:
	subl	$36, %esp
.LCFI110:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3015 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3016 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3017 0
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3019 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, old_cfun@GOTOFF(%ebx)
	.loc 1 3020 0
	movl	cfun@GOT(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3021 0
	movl	current_function_decl@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3023 0
	movl	-8(%ebp), %eax
	movl	268(%eax), %eax
	movl	%eax, (%esp)
	call	set_new_last_label_num@PLT
	.loc 1 3026 0
	movl	8(%ebp), %edx
	movzbl	34(%edx), %eax
	andl	$127, %eax
	movb	%al, 34(%edx)
	.loc 1 3029 0
	movl	-8(%ebp), %eax
	movl	252(%eax), %eax
	testl	%eax, %eax
	je	.L998
	.loc 1 3031 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 3032 0
	movl	debug_hooks@GOT(%ebx), %edx
	movl	do_nothing_debug_hooks@GOT(%ebx), %eax
	movl	%eax, (%edx)
.L998:
	.loc 1 3037 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 3038 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 3043 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rest_of_compilation@PLT
	.loc 1 3044 0
	movl	8(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$-9, %eax
	movb	%al, 33(%edx)
	.loc 1 3046 0
	movl	old_cfun@GOTOFF(%ebx), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 3047 0
	movl	old_cfun@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1000
	movl	old_cfun@GOTOFF(%ebx), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1002
.L1000:
	movl	$0, -24(%ebp)
.L1002:
	movl	current_function_decl@GOT(%ebx), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 3048 0
	movl	write_symbols@GOT(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3049 0
	movl	debug_hooks@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3050 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	output_inline_function, .-output_inline_function
.globl get_hard_reg_initial_reg
	.type	get_hard_reg_initial_reg, @function
get_hard_reg_initial_reg:
.LFB40:
	.loc 1 3060 0
	pushl	%ebp
.LCFI111:
	movl	%esp, %ebp
.LCFI112:
	pushl	%ebx
.LCFI113:
	subl	$36, %esp
.LCFI114:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3061 0
	movl	8(%ebp), %eax
	movl	128(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3064 0
	cmpl	$0, -12(%ebp)
	jne	.L1005
	.loc 1 3065 0
	movl	$0, -24(%ebp)
	jmp	.L1007
.L1005:
	.loc 1 3067 0
	movl	$0, -8(%ebp)
	jmp	.L1008
.L1009:
	.loc 1 3068 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1010
	.loc 1 3069 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1007
.L1010:
	.loc 1 3067 0
	addl	$1, -8(%ebp)
.L1008:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L1009
	.loc 1 3071 0
	movl	$0, -24(%ebp)
.L1007:
	movl	-24(%ebp), %eax
	.loc 1 3072 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	get_hard_reg_initial_reg, .-get_hard_reg_initial_reg
.globl has_func_hard_reg_initial_val
	.type	has_func_hard_reg_initial_val, @function
has_func_hard_reg_initial_val:
.LFB41:
	.loc 1 3078 0
	pushl	%ebp
.LCFI115:
	movl	%esp, %ebp
.LCFI116:
	pushl	%ebx
.LCFI117:
	subl	$36, %esp
.LCFI118:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3079 0
	movl	8(%ebp), %eax
	movl	128(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3082 0
	cmpl	$0, -12(%ebp)
	jne	.L1015
	.loc 1 3083 0
	movl	$0, -24(%ebp)
	jmp	.L1017
.L1015:
	.loc 1 3085 0
	movl	$0, -8(%ebp)
	jmp	.L1018
.L1019:
	.loc 1 3086 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1020
	.loc 1 3087 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1017
.L1020:
	.loc 1 3085 0
	addl	$1, -8(%ebp)
.L1018:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L1019
	.loc 1 3089 0
	movl	$0, -24(%ebp)
.L1017:
	movl	-24(%ebp), %eax
	.loc 1 3090 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	has_func_hard_reg_initial_val, .-has_func_hard_reg_initial_val
.globl get_func_hard_reg_initial_val
	.type	get_func_hard_reg_initial_val, @function
get_func_hard_reg_initial_val:
.LFB42:
	.loc 1 3096 0
	pushl	%ebp
.LCFI119:
	movl	%esp, %ebp
.LCFI120:
	pushl	%esi
.LCFI121:
	pushl	%ebx
.LCFI122:
	subl	$32, %esp
.LCFI123:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3097 0
	movl	8(%ebp), %eax
	movl	128(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3098 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	has_func_hard_reg_initial_val@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3100 0
	cmpl	$0, -12(%ebp)
	je	.L1025
	.loc 1 3101 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1027
.L1025:
	.loc 1 3103 0
	cmpl	$0, -16(%ebp)
	jne	.L1028
	.loc 1 3105 0
	movl	$12, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 128(%eax)
	.loc 1 3106 0
	movl	8(%ebp), %eax
	movl	128(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3107 0
	movl	-16(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 3108 0
	movl	-16(%ebp), %eax
	movl	$5, 4(%eax)
	.loc 1 3109 0
	movl	$40, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
.L1028:
	.loc 1 3112 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jl	.L1030
	.loc 1 3114 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	leal	5(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 3115 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	leal	0(,%eax,8), %edx
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	ggc_realloc@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
.L1030:
	.loc 1 3121 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	sall	$3, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3122 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %esi
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 4(%esi)
	.loc 1 3124 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	%edx, %eax
	sall	$3, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	addl	$1, %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
.L1027:
	movl	-28(%ebp), %eax
	.loc 1 3125 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE42:
	.size	get_func_hard_reg_initial_val, .-get_func_hard_reg_initial_val
.globl get_hard_reg_initial_val
	.type	get_hard_reg_initial_val, @function
get_hard_reg_initial_val:
.LFB43:
	.loc 1 3131 0
	pushl	%ebp
.LCFI124:
	movl	%esp, %ebp
.LCFI125:
	pushl	%ebx
.LCFI126:
	subl	$20, %esp
.LCFI127:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3132 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	get_func_hard_reg_initial_val@PLT
	.loc 1 3133 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	get_hard_reg_initial_val, .-get_hard_reg_initial_val
.globl has_hard_reg_initial_val
	.type	has_hard_reg_initial_val, @function
has_hard_reg_initial_val:
.LFB44:
	.loc 1 3139 0
	pushl	%ebp
.LCFI128:
	movl	%esp, %ebp
.LCFI129:
	pushl	%ebx
.LCFI130:
	subl	$20, %esp
.LCFI131:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3140 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	has_func_hard_reg_initial_val@PLT
	.loc 1 3141 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	has_hard_reg_initial_val, .-has_hard_reg_initial_val
	.type	setup_initial_hard_reg_value_integration, @function
setup_initial_hard_reg_value_integration:
.LFB45:
	.loc 1 3147 0
	pushl	%ebp
.LCFI132:
	movl	%esp, %ebp
.LCFI133:
	pushl	%esi
.LCFI134:
	pushl	%ebx
.LCFI135:
	subl	$32, %esp
.LCFI136:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3148 0
	movl	8(%ebp), %eax
	movl	128(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3151 0
	cmpl	$0, -16(%ebp)
	je	.L1042
	.loc 1 3154 0
	movl	$0, -12(%ebp)
	jmp	.L1040
.L1041:
	.loc 1 3155 0
	movl	12(%ebp), %eax
	movl	16(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %esi
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	get_func_hard_reg_initial_val@PLT
	movl	%eax, (%esi)
	.loc 1 3154 0
	addl	$1, -12(%ebp)
.L1040:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L1041
.L1042:
	.loc 1 3157 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE45:
	.size	setup_initial_hard_reg_value_integration, .-setup_initial_hard_reg_value_integration
.globl emit_initial_value_sets
	.type	emit_initial_value_sets, @function
emit_initial_value_sets:
.LFB46:
	.loc 1 3162 0
	pushl	%ebp
.LCFI137:
	movl	%esp, %ebp
.LCFI138:
	pushl	%ebx
.LCFI139:
	subl	$36, %esp
.LCFI140:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3163 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	128(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3167 0
	cmpl	$0, -16(%ebp)
	je	.L1049
	.loc 1 3170 0
	call	start_sequence@PLT
	.loc 1 3171 0
	movl	$0, -12(%ebp)
	jmp	.L1046
.L1047:
	.loc 1 3172 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 3171 0
	addl	$1, -12(%ebp)
.L1046:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L1047
	.loc 1 3173 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3174 0
	call	end_sequence@PLT
	.loc 1 3176 0
	call	get_insns@PLT
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
.L1049:
	.loc 1 3177 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	emit_initial_value_sets, .-emit_initial_value_sets
.globl allocate_initial_values
	.type	allocate_initial_values, @function
allocate_initial_values:
.LFB47:
	.loc 1 3184 0
	pushl	%ebp
.LCFI141:
	movl	%esp, %ebp
.LCFI142:
	.loc 1 3211 0
	popl	%ebp
	ret
.LFE47:
	.size	allocate_initial_values, .-allocate_initial_values
.globl gt_ggc_mx_initial_value_struct
	.type	gt_ggc_mx_initial_value_struct, @function
gt_ggc_mx_initial_value_struct:
.LFB48:
	.file 2 "../../../kg++fe/gnu/MIPS/gt-integrate.h"
	.loc 2 26 0
	pushl	%ebp
.LCFI143:
	movl	%esp, %ebp
.LCFI144:
	pushl	%ebx
.LCFI145:
	subl	$20, %esp
.LCFI146:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 27 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 28 0
	cmpl	$0, -12(%ebp)
	je	.L1064
	cmpl	$1, -12(%ebp)
	je	.L1064
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L1064
	.loc 2 30 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L1064
.LBB67:
	.loc 2 32 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	.loc 2 33 0
	movl	$0, -8(%ebp)
	jmp	.L1058
.L1059:
	.loc 2 34 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1060
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L1060:
	.loc 2 35 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1062
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L1062:
	.loc 2 33 0
	addl	$1, -8(%ebp)
.L1058:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	ja	.L1059
.L1064:
.LBE67:
	.loc 2 39 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	gt_ggc_mx_initial_value_struct, .-gt_ggc_mx_initial_value_struct
.globl gt_ggc_r_gt_integrate_h
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	gt_ggc_r_gt_integrate_h, @object
	.size	gt_ggc_r_gt_integrate_h, 32
gt_ggc_r_gt_integrate_h:
	.long	old_cfun
	.long	1
	.long	4
	.long	gt_ggc_mx_function
	.long	0
	.long	0
	.long	0
	.long	0
	.local	parmdecl_map
	.comm	parmdecl_map,4,4
	.local	in_nonparm_insns
	.comm	in_nonparm_insns,4,4
	.local	old_cfun
	.comm	old_cfun,4,4
	.comm	global_const_equiv_varray,4,4
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
	.long	.LCFI4-.LCFI1
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI5-.LFB16
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
	.byte	0x86
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
	.long	.LCFI14-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI18-.LCFI15
	.byte	0x83
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
	.long	.LCFI19-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI22-.LCFI20
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
	.long	.LCFI23-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI27-.LCFI24
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
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI34-.LFB23
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI38-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI41-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI44-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI49-.LCFI45
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI50-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI54-.LCFI51
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI55-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI60-.LCFI56
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI61-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI62-.LCFI61
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI64-.LCFI62
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
	.long	.LCFI65-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI66-.LCFI65
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI69-.LCFI66
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI75-.LCFI71
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI76-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI79-.LCFI77
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
	.long	.LCFI80-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI85-.LCFI81
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI86-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI87-.LCFI86
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI90-.LCFI87
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI91-.LFB35
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
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI95-.LFB36
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
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI99-.LFB37
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
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI103-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI104-.LCFI103
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI106-.LCFI104
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
	.long	.LCFI107-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI108-.LCFI107
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI110-.LCFI108
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI111-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI112-.LCFI111
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI114-.LCFI112
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI115-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI116-.LCFI115
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI118-.LCFI116
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI119-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI120-.LCFI119
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI123-.LCFI120
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI124-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI125-.LCFI124
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI127-.LCFI125
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI128-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI129-.LCFI128
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI131-.LCFI129
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI132-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI133-.LCFI132
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI136-.LCFI133
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI137-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI138-.LCFI137
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI140-.LCFI138
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI141-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI142-.LCFI141
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI143-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI144-.LCFI143
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI146-.LCFI144
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE66:
	.file 3 "../../../kg++fe/gnu/MIPS/config.h"
	.file 4 "../../../kg++fe/gnu/rtl.h"
	.file 5 "../../../kg++fe/gnu/machmode.h"
	.file 6 "../../../kg++fe/gnu/bitmap.h"
	.file 7 "../../../kg++fe/gnu/tree.h"
	.file 8 "../../../kg++fe/gnu/real.h"
	.file 9 "../../../kg++fe/gnu/hashtable.h"
	.file 10 "../../../kg++fe/gnu/location.h"
	.file 11 "../../../kg++fe/gnu/function.h"
	.file 12 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 13 "../../../kg++fe/omp_types.h"
	.file 14 "../../../kg++fe/gnu/basic-block.h"
	.file 15 "../../../kg++fe/gnu/sbitmap.h"
	.file 16 "../../../kg++fe/gnu/integrate.h"
	.file 17 "../../../kg++fe/gnu/varray.h"
	.file 18 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 19 "../../../kg++fe/gnu/regs.h"
	.file 20 "../../../kg++fe/gnu/flags.h"
	.file 21 "../../../kg++fe/gnu/debug.h"
	.file 22 "../../../kg++fe/gnu/params.h"
	.file 23 "../../../kg++fe/gnu/target.h"
	.file 24 "/usr/include/stdio.h"
	.file 25 "/usr/include/libio.h"
	.file 26 "/usr/include/bits/types.h"
	.file 27 "../../../kg++fe/gnu/langhooks.h"
	.file 28 "../../../kg++fe/gnu/ggc.h"
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
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
	.long	.LCFI19-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI19-.Ltext0
	.long	.LCFI20-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI20-.Ltext0
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
	.long	.LCFI41-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI41-.Ltext0
	.long	.LCFI42-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI42-.Ltext0
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
	.long	.LCFI44-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI44-.Ltext0
	.long	.LCFI45-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI45-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
	.long	.LCFI55-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI55-.Ltext0
	.long	.LCFI56-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI56-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
	.long	.LCFI61-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI61-.Ltext0
	.long	.LCFI62-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI62-.Ltext0
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
	.long	.LCFI65-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI65-.Ltext0
	.long	.LCFI66-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI66-.Ltext0
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
	.long	.LCFI76-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI76-.Ltext0
	.long	.LCFI77-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI77-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
	.long	.LCFI80-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI80-.Ltext0
	.long	.LCFI81-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI81-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
	.long	.LCFI86-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI86-.Ltext0
	.long	.LCFI87-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI87-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
	.long	.LCFI103-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI103-.Ltext0
	.long	.LCFI104-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI104-.Ltext0
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
	.long	.LCFI107-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI107-.Ltext0
	.long	.LCFI108-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI108-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
	.long	.LCFI111-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI111-.Ltext0
	.long	.LCFI112-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI112-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
	.long	.LCFI115-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI115-.Ltext0
	.long	.LCFI116-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI116-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
	.long	.LCFI119-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI119-.Ltext0
	.long	.LCFI120-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI120-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
	.long	.LCFI124-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI124-.Ltext0
	.long	.LCFI125-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI125-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
	.long	.LCFI128-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI128-.Ltext0
	.long	.LCFI129-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI129-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI132-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI132-.Ltext0
	.long	.LCFI133-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI133-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
	.long	.LCFI137-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI137-.Ltext0
	.long	.LCFI138-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI138-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
	.long	.LCFI141-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI141-.Ltext0
	.long	.LCFI142-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI142-.Ltext0
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
	.long	.LCFI143-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI143-.Ltext0
	.long	.LCFI144-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI144-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xa7dd
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/integrate.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x3
	.byte	0xc
	.long	0xa9
	.uleb128 0x3
	.byte	0x4
	.long	0xaf
	.uleb128 0x4
	.long	0x19e
	.string	"rtx_def"
	.byte	0xc
	.byte	0x3
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x4
	.byte	0x84
	.long	0xb29
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.long	.LASF0
	.byte	0x4
	.byte	0x87
	.long	0x831
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x4
	.byte	0x8e
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x4
	.byte	0x91
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x4
	.byte	0x99
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x4
	.byte	0xa2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x4
	.byte	0xb4
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x4
	.byte	0xbb
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x4
	.byte	0xc0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x4
	.byte	0xc9
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"fld"
	.byte	0x4
	.byte	0xce
	.long	0x1744
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x3
	.byte	0xe
	.long	0x1ab
	.uleb128 0x3
	.byte	0x4
	.long	0x1b1
	.uleb128 0x4
	.long	0x1e6
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x3
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x4
	.byte	0xf2
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x4
	.byte	0xf3
	.long	0x1754
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x3
	.byte	0x10
	.long	0x1f2
	.uleb128 0x3
	.byte	0x4
	.long	0x1f8
	.uleb128 0x8
	.long	0x2d1
	.string	"tree_node"
	.byte	0xa0
	.byte	0x3
	.byte	0xf
	.uleb128 0x9
	.long	.LASF1
	.byte	0x7
	.value	0x887
	.long	0x3e26
	.uleb128 0xa
	.string	"int_cst"
	.byte	0x7
	.value	0x888
	.long	0x4145
	.uleb128 0xa
	.string	"real_cst"
	.byte	0x7
	.value	0x889
	.long	0x418d
	.uleb128 0xa
	.string	"vector"
	.byte	0x7
	.value	0x88a
	.long	0x42fc
	.uleb128 0xa
	.string	"string"
	.byte	0x7
	.value	0x88b
	.long	0x423a
	.uleb128 0xa
	.string	"complex"
	.byte	0x7
	.value	0x88c
	.long	0x42a7
	.uleb128 0xa
	.string	"identifier"
	.byte	0x7
	.value	0x88d
	.long	0x4382
	.uleb128 0x9
	.long	.LASF2
	.byte	0x7
	.value	0x88e
	.long	0x53ed
	.uleb128 0xa
	.string	"type"
	.byte	0x7
	.value	0x88f
	.long	0x45e7
	.uleb128 0xa
	.string	"list"
	.byte	0x7
	.value	0x890
	.long	0x43b9
	.uleb128 0xa
	.string	"vec"
	.byte	0x7
	.value	0x891
	.long	0x4400
	.uleb128 0xa
	.string	"exp"
	.byte	0x7
	.value	0x892
	.long	0x4451
	.uleb128 0xa
	.string	"block"
	.byte	0x7
	.value	0x893
	.long	0x449d
	.uleb128 0xa
	.string	"omp"
	.byte	0x7
	.value	0x895
	.long	0x5dc4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d7
	.uleb128 0xb
	.long	0x2dc
	.uleb128 0xc
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xc
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	0x3bd
	.string	"mips_args"
	.byte	0x40
	.byte	0xc
	.value	0xaaa
	.uleb128 0xe
	.string	"gp_reg_found"
	.byte	0xc
	.value	0xaad
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"arg_number"
	.byte	0xc
	.value	0xab0
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"num_gprs"
	.byte	0xc
	.value	0xab5
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"num_fprs"
	.byte	0xc
	.value	0xab8
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"stack_words"
	.byte	0xc
	.value	0xabb
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"fp_code"
	.byte	0xc
	.value	0xac8
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"prototype"
	.byte	0xc
	.value	0xacb
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"num_adjusts"
	.byte	0xc
	.value	0xad3
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"adjust"
	.byte	0xc
	.value	0xad4
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xf
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0x10
	.long	0x3d4
	.long	0x9e
	.uleb128 0x11
	.long	0x3d4
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0x12
	.string	"CUMULATIVE_ARGS"
	.byte	0xc
	.value	0xad5
	.long	0x2eb
	.uleb128 0x2
	.string	"size_t"
	.byte	0x12
	.byte	0xd6
	.long	0x3bd
	.uleb128 0xc
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xc
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0xc
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0xc
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0xc
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0xc
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0xc
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x1a
	.byte	0x3b
	.long	0x459
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x1a
	.byte	0x90
	.long	0x4a3
	.uleb128 0xc
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x1a
	.byte	0x91
	.long	0x484
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2dc
	.uleb128 0x2
	.string	"FILE"
	.byte	0x18
	.byte	0x2e
	.long	0x4d4
	.uleb128 0x14
	.long	0x74f
	.long	.LASF4
	.byte	0x94
	.byte	0x18
	.byte	0x2e
	.uleb128 0xe
	.string	"_flags"
	.byte	0x19
	.value	0x10c
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_IO_read_ptr"
	.byte	0x19
	.value	0x111
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_IO_read_end"
	.byte	0x19
	.value	0x112
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"_IO_read_base"
	.byte	0x19
	.value	0x113
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"_IO_write_base"
	.byte	0x19
	.value	0x114
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_IO_write_ptr"
	.byte	0x19
	.value	0x115
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"_IO_write_end"
	.byte	0x19
	.value	0x116
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"_IO_buf_base"
	.byte	0x19
	.value	0x117
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"_IO_buf_end"
	.byte	0x19
	.value	0x118
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"_IO_save_base"
	.byte	0x19
	.value	0x11a
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"_IO_backup_base"
	.byte	0x19
	.value	0x11b
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"_IO_save_end"
	.byte	0x19
	.value	0x11c
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_markers"
	.byte	0x19
	.value	0x11e
	.long	0x7c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_chain"
	.byte	0x19
	.value	0x120
	.long	0x7c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"_fileno"
	.byte	0x19
	.value	0x122
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_flags2"
	.byte	0x19
	.value	0x126
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"_old_offset"
	.byte	0x19
	.value	0x128
	.long	0x494
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"_cur_column"
	.byte	0x19
	.value	0x12c
	.long	0x412
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"_vtable_offset"
	.byte	0x19
	.value	0x12d
	.long	0x43d
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xe
	.string	"_shortbuf"
	.byte	0x19
	.value	0x12e
	.long	0x7cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xe
	.string	"_lock"
	.byte	0x19
	.value	0x132
	.long	0x7df
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"_offset"
	.byte	0x19
	.value	0x13b
	.long	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"__pad1"
	.byte	0x19
	.value	0x144
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"__pad2"
	.byte	0x19
	.value	0x145
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"__pad3"
	.byte	0x19
	.value	0x146
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"__pad4"
	.byte	0x19
	.value	0x147
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"__pad5"
	.byte	0x19
	.value	0x148
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"_mode"
	.byte	0x19
	.value	0x14a
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"_unused2"
	.byte	0x19
	.value	0x14c
	.long	0x7e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x755
	.uleb128 0xb
	.long	0x401
	.uleb128 0x3
	.byte	0x4
	.long	0x401
	.uleb128 0x3
	.byte	0x4
	.long	0x766
	.uleb128 0x15
	.long	0x772
	.byte	0x1
	.uleb128 0x16
	.long	0x4c0
	.byte	0x0
	.uleb128 0x17
	.string	"_IO_lock_t"
	.byte	0x19
	.byte	0xb0
	.uleb128 0x4
	.long	0x7c3
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x19
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0x19
	.byte	0xb7
	.long	0x7c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0x19
	.byte	0xb8
	.long	0x7c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0x19
	.byte	0xbc
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x780
	.uleb128 0x3
	.byte	0x4
	.long	0x4d4
	.uleb128 0x10
	.long	0x7df
	.long	0x2dc
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x772
	.uleb128 0x10
	.long	0x7f5
	.long	0x2dc
	.uleb128 0x11
	.long	0x3d4
	.byte	0x27
	.byte	0x0
	.uleb128 0x10
	.long	0x805
	.long	0x2dc
	.uleb128 0x11
	.long	0x3d4
	.byte	0x17
	.byte	0x0
	.uleb128 0xb
	.long	0x2e4
	.uleb128 0x3
	.byte	0x4
	.long	0x2e4
	.uleb128 0x3
	.byte	0x4
	.long	0x816
	.uleb128 0x18
	.uleb128 0x3
	.byte	0x4
	.long	0x81d
	.uleb128 0x15
	.long	0x829
	.byte	0x1
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x829
	.uleb128 0x1a
	.long	0xa7a
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.uleb128 0x1b
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x1b
	.string	"BImode"
	.sleb128 1
	.uleb128 0x1b
	.string	"QImode"
	.sleb128 2
	.uleb128 0x1b
	.string	"HImode"
	.sleb128 3
	.uleb128 0x1b
	.string	"SImode"
	.sleb128 4
	.uleb128 0x1b
	.string	"DImode"
	.sleb128 5
	.uleb128 0x1b
	.string	"TImode"
	.sleb128 6
	.uleb128 0x1b
	.string	"OImode"
	.sleb128 7
	.uleb128 0x1b
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x1b
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x1b
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x1b
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x1b
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x1b
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x1b
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x1b
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x1b
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x1b
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x1b
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x1b
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x1b
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x1b
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x1b
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x1b
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x1b
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x1b
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x1b
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x1b
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x1b
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x1b
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x1b
	.string	"COImode"
	.sleb128 30
	.uleb128 0x1b
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x1b
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x1b
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x1b
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x1b
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x1b
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x1b
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x1b
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x1b
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x1b
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x1b
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x1b
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x1b
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x1b
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x1b
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x1b
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x1b
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x1b
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x1b
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x1b
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x1b
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x1b
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x1b
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x1b
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x1c
	.long	0xb29
	.long	.LASF5
	.byte	0x4
	.byte	0x5
	.byte	0x2c
	.uleb128 0x1b
	.string	"MODE_RANDOM"
	.sleb128 0
	.uleb128 0x1b
	.string	"MODE_INT"
	.sleb128 1
	.uleb128 0x1b
	.string	"MODE_FLOAT"
	.sleb128 2
	.uleb128 0x1b
	.string	"MODE_PARTIAL_INT"
	.sleb128 3
	.uleb128 0x1b
	.string	"MODE_CC"
	.sleb128 4
	.uleb128 0x1b
	.string	"MODE_COMPLEX_INT"
	.sleb128 5
	.uleb128 0x1b
	.string	"MODE_COMPLEX_FLOAT"
	.sleb128 6
	.uleb128 0x1b
	.string	"MODE_VECTOR_INT"
	.sleb128 7
	.uleb128 0x1b
	.string	"MODE_VECTOR_FLOAT"
	.sleb128 8
	.uleb128 0x1b
	.string	"MAX_MODE_CLASS"
	.sleb128 9
	.byte	0x0
	.uleb128 0x1a
	.long	0x12f8
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
	.byte	0x29
	.uleb128 0x1b
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x1b
	.string	"NIL"
	.sleb128 1
	.uleb128 0x1b
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x1b
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x1b
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x1b
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x1b
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x1b
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x1b
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x1b
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x1b
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x1b
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x1b
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x1b
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x1b
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x1b
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x1b
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x1b
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x1b
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x1b
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x1b
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x1b
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x1b
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x1b
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x1b
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x1b
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x1b
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x1b
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x1b
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x1b
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x1b
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x1b
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x1b
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x1b
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x1b
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x1b
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x1b
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x1b
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x1b
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x1b
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x1b
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x1b
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x1b
	.string	"INSN"
	.sleb128 42
	.uleb128 0x1b
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x1b
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x1b
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x1b
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x1b
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x1b
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x1b
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x1b
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x1b
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x1b
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x1b
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x1b
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x1b
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x1b
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x1b
	.string	"SET"
	.sleb128 57
	.uleb128 0x1b
	.string	"USE"
	.sleb128 58
	.uleb128 0x1b
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x1b
	.string	"CALL"
	.sleb128 60
	.uleb128 0x1b
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x1b
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x1b
	.string	"RESX"
	.sleb128 63
	.uleb128 0x1b
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x1b
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x1b
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x1b
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x1b
	.string	"CONST"
	.sleb128 68
	.uleb128 0x1b
	.string	"PC"
	.sleb128 69
	.uleb128 0x1b
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x1b
	.string	"REG"
	.sleb128 71
	.uleb128 0x1b
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x1b
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x1b
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x1b
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x1b
	.string	"MEM"
	.sleb128 76
	.uleb128 0x1b
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x1b
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x1b
	.string	"CC0"
	.sleb128 79
	.uleb128 0x1b
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x1b
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x1b
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x1b
	.string	"COND"
	.sleb128 83
	.uleb128 0x1b
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x1b
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x1b
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x1b
	.string	"NEG"
	.sleb128 87
	.uleb128 0x1b
	.string	"MULT"
	.sleb128 88
	.uleb128 0x1b
	.string	"DIV"
	.sleb128 89
	.uleb128 0x1b
	.string	"MOD"
	.sleb128 90
	.uleb128 0x1b
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x1b
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x1b
	.string	"AND"
	.sleb128 93
	.uleb128 0x1b
	.string	"IOR"
	.sleb128 94
	.uleb128 0x1b
	.string	"XOR"
	.sleb128 95
	.uleb128 0x1b
	.string	"NOT"
	.sleb128 96
	.uleb128 0x1b
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x1b
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x1b
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x1b
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x1b
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x1b
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x1b
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x1b
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x1b
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x1b
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x1b
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x1b
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x1b
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x1b
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x1b
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x1b
	.string	"NE"
	.sleb128 112
	.uleb128 0x1b
	.string	"EQ"
	.sleb128 113
	.uleb128 0x1b
	.string	"GE"
	.sleb128 114
	.uleb128 0x1b
	.string	"GT"
	.sleb128 115
	.uleb128 0x1b
	.string	"LE"
	.sleb128 116
	.uleb128 0x1b
	.string	"LT"
	.sleb128 117
	.uleb128 0x1b
	.string	"GEU"
	.sleb128 118
	.uleb128 0x1b
	.string	"GTU"
	.sleb128 119
	.uleb128 0x1b
	.string	"LEU"
	.sleb128 120
	.uleb128 0x1b
	.string	"LTU"
	.sleb128 121
	.uleb128 0x1b
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x1b
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x1b
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x1b
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x1b
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x1b
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x1b
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x1b
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x1b
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x1b
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x1b
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x1b
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x1b
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x1b
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x1b
	.string	"FIX"
	.sleb128 136
	.uleb128 0x1b
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x1b
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x1b
	.string	"ABS"
	.sleb128 139
	.uleb128 0x1b
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x1b
	.string	"FFS"
	.sleb128 141
	.uleb128 0x1b
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x1b
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x1b
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x1b
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x1b
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x1b
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x1b
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x1b
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x1b
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x1b
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x1b
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x1b
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x1b
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x1b
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x1b
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x1b
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x1b
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x1b
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x1b
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x1b
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x1b
	.string	"PHI"
	.sleb128 162
	.uleb128 0x1b
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x1d
	.long	0x13d2
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x49
	.long	0x3bd
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x4
	.byte	0x4b
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x4
	.byte	0x4c
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x4
	.byte	0x4e
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x4
	.byte	0x50
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x4
	.byte	0x52
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x4
	.byte	0x55
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x4
	.byte	0x57
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
	.byte	0x4
	.byte	0x58
	.long	0x12f8
	.uleb128 0x14
	.long	0x1445
	.long	.LASF6
	.byte	0x18
	.byte	0x4
	.byte	0x62
	.uleb128 0x7
	.string	"alias"
	.byte	0x4
	.byte	0x63
	.long	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x4
	.byte	0x64
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x4
	.byte	0x65
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x4
	.byte	0x66
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x4
	.byte	0x67
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1f
	.long	.LASF6
	.byte	0x4
	.byte	0x68
	.long	0x13ed
	.uleb128 0x8
	.long	0x1522
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x6d
	.uleb128 0x20
	.string	"rtwint"
	.byte	0x4
	.byte	0x6e
	.long	0x459
	.uleb128 0x20
	.string	"rtint"
	.byte	0x4
	.byte	0x6f
	.long	0x2e4
	.uleb128 0x20
	.string	"rtuint"
	.byte	0x4
	.byte	0x70
	.long	0x3bd
	.uleb128 0x20
	.string	"rtstr"
	.byte	0x4
	.byte	0x71
	.long	0x2d1
	.uleb128 0x20
	.string	"rtx"
	.byte	0x4
	.byte	0x72
	.long	0x9e
	.uleb128 0x20
	.string	"rtvec"
	.byte	0x4
	.byte	0x73
	.long	0x19e
	.uleb128 0x20
	.string	"rttype"
	.byte	0x4
	.byte	0x74
	.long	0x831
	.uleb128 0x20
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x75
	.long	0x13d2
	.uleb128 0x20
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x76
	.long	0x1536
	.uleb128 0x20
	.string	"rtbit"
	.byte	0x4
	.byte	0x77
	.long	0x159e
	.uleb128 0x20
	.string	"rttree"
	.byte	0x4
	.byte	0x78
	.long	0x1e6
	.uleb128 0x20
	.string	"bb"
	.byte	0x4
	.byte	0x79
	.long	0x1729
	.uleb128 0x20
	.string	"rtmem"
	.byte	0x4
	.byte	0x7a
	.long	0x172f
	.byte	0x0
	.uleb128 0x21
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1522
	.uleb128 0x4
	.long	0x159e
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x4
	.byte	0x77
	.uleb128 0x7
	.string	"first"
	.byte	0x6
	.byte	0x3d
	.long	0x654c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x6
	.byte	0x3e
	.long	0x654c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x6
	.byte	0x3f
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
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
	.long	0x153c
	.uleb128 0x4
	.long	0x1729
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x4
	.byte	0x79
	.uleb128 0x7
	.string	"head"
	.byte	0xe
	.byte	0xb5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0xe
	.byte	0xb5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0xe
	.byte	0xb8
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0xe
	.byte	0xb9
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0xe
	.byte	0xbc
	.long	0x669c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0xe
	.byte	0xbc
	.long	0x669c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0xe
	.byte	0xc1
	.long	0x65ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0xe
	.byte	0xc5
	.long	0x65ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0xe
	.byte	0xcb
	.long	0x65ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0xe
	.byte	0xcd
	.long	0x65ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0xe
	.byte	0xd0
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"index"
	.byte	0xe
	.byte	0xd3
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0xe
	.byte	0xd6
	.long	0x1729
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0xe
	.byte	0xd6
	.long	0x1729
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0xe
	.byte	0xd9
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0xe
	.byte	0xdc
	.long	0x690f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0xe
	.byte	0xdf
	.long	0x65dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0xe
	.byte	0xe2
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"flags"
	.byte	0xe
	.byte	0xe5
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x15a4
	.uleb128 0x3
	.byte	0x4
	.long	0x1445
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x7c
	.long	0x1450
	.uleb128 0x10
	.long	0x1754
	.long	0x1735
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1764
	.long	0x9e
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9e
	.uleb128 0x4
	.long	0x179c
	.string	"location_s"
	.byte	0x8
	.byte	0xa
	.byte	0x1c
	.uleb128 0x7
	.string	"file"
	.byte	0xa
	.byte	0x1e
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
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
	.long	0x176a
	.uleb128 0x1a
	.long	0x20d0
	.string	"tree_code"
	.byte	0x4
	.byte	0x7
	.byte	0x25
	.uleb128 0x1b
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x1b
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x1b
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x1b
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x1b
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x1b
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x1b
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x1b
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x1b
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x1b
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x1b
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x1b
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x1b
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x1b
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x1b
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x1b
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x1b
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x1b
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x1b
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x1b
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x1b
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x1b
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x1b
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x1b
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x1b
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x1b
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x1b
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x1b
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x1b
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x1b
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x1b
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x1b
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x1b
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x1b
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x1b
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x1b
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x1b
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x1b
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x1b
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x1b
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x1b
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x1b
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x1b
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x1b
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x1b
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x1b
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x1b
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x1b
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x1b
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x1b
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x1b
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x1b
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x1b
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x1b
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x1b
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x1b
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x1b
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x1b
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x1b
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x1b
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x1b
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x1b
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x1b
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x1b
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x1b
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x1b
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x1b
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x1b
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x1b
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x1b
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x1b
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x1b
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x1b
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x1b
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x1b
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x1b
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x1b
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x1b
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x1b
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x1b
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x1b
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x1b
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x1b
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x1b
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x1b
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x1b
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x1b
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x1b
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x1b
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x1b
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x1b
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x1b
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x1b
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x1b
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x1b
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x1b
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x1b
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x1b
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x1b
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x1b
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x1b
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x1b
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x1b
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x1b
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x1b
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x1b
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x1b
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x1b
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x1b
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x1b
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x1b
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x1b
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x1b
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x1b
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x1b
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x1b
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x1b
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x1b
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x1b
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x1b
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x1b
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x1b
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x1b
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x1b
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x1b
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x1b
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x1b
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x1b
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x1b
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x1b
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x1b
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x1b
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x1b
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x1b
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x1b
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x1b
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x1b
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x1b
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x1b
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x1b
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x1b
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x1b
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x1b
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x1b
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x1b
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x1b
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x1b
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x1b
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x1b
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x1b
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x1b
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x1b
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x7
	.byte	0x2f
	.long	0x3bd
	.uleb128 0x4
	.long	0x211d
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x7
	.byte	0x30
	.uleb128 0x7
	.string	"block"
	.byte	0x7
	.byte	0x30
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x7
	.byte	0x30
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x7
	.byte	0x34
	.long	0x2127
	.uleb128 0x21
	.string	"st"
	.byte	0x1
	.uleb128 0x1c
	.long	0x217c
	.long	.LASF9
	.byte	0x4
	.byte	0x7
	.byte	0x58
	.uleb128 0x1b
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x1b
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x1b
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x1b
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x1a
	.long	0x3e26
	.string	"built_in_function"
	.byte	0x4
	.byte	0x7
	.byte	0x67
	.uleb128 0x1b
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x1b
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x1b
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x1b
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x1b
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x1b
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x1b
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x1b
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x1b
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x1b
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x1b
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x1b
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x1b
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x1b
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x1b
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x1b
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x1b
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x1b
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x1b
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x1b
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x1b
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x1b
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x1b
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x1b
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x1b
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x1b
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x1b
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x1b
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x1b
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x1b
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x1b
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x1b
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x1b
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x1b
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x1b
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x1b
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x1b
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x1b
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x1b
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x1b
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x1b
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x1b
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x1b
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x1b
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x1b
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x1b
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x1b
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x1b
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x1b
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x1b
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x1b
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x1b
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x1b
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x1b
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x1b
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x1b
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x1b
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x1b
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x1b
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x1b
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x1b
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x1b
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x1b
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x1b
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x1b
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x1b
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x1b
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x1b
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x1b
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x1b
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x1b
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x1b
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x1b
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x1b
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x1b
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x1b
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x1b
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x1b
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x1b
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x1b
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x1b
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x1b
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x1b
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x1b
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x1b
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x1b
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x1b
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x1b
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x1b
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x1b
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x1b
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x1b
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x1b
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x1b
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x1b
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x1b
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x1b
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x1b
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x1b
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x1b
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x1b
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x1b
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x1b
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x1b
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x1b
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x1b
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x1b
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x1b
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x1b
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x1b
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x1b
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x1b
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x1b
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x1b
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x1b
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x1b
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x1b
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x1b
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x1b
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x1b
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x1b
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x1b
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x1b
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x1b
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x1b
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x1b
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x1b
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x1b
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x1b
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x1b
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x1b
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x1b
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x1b
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x1b
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x1b
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x1b
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x1b
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x1b
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x1b
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x1b
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x1b
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x1b
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x1b
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x1b
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x1b
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x1b
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x1b
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x1b
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x1b
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x1b
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x1b
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x1b
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x1b
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x1b
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x1b
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x1b
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x1b
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x1b
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x1b
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x1b
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x1b
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x1b
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x1b
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x1b
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x1b
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x1b
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x1b
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x1b
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x1b
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x1b
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x1b
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x1b
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x1b
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x1b
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x1b
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x1b
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x1b
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x1b
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x1b
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x1b
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x1b
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x1b
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x1b
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x1b
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x1b
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x1b
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x1b
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x1b
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x1b
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x1b
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x1b
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x1b
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x1b
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x1b
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x1b
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x1b
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x1b
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x1b
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x1b
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x1b
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x1b
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x1b
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x1b
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x1b
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x1b
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x1b
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x1b
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x1b
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x1b
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x1b
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x1b
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x1b
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x1b
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x1b
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x1b
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x1b
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x1b
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x1b
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x1b
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x1b
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x1b
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x1b
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x1b
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x1b
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x1b
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x1b
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x1b
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x1b
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x1b
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x1b
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x1b
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x1b
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x1b
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x1b
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x1b
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x1b
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x1b
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x1b
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x1b
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x1b
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x1b
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x1b
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x1b
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x1b
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x1b
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x1b
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x1b
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x4109
	.string	"tree_common"
	.byte	0x10
	.byte	0x7
	.byte	0x8c
	.uleb128 0x7
	.string	"chain"
	.byte	0x7
	.byte	0x8d
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type"
	.byte	0x7
	.byte	0x8e
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x7
	.byte	0x90
	.long	0x17ae
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
	.byte	0x93
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
	.byte	0x94
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
	.byte	0x95
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
	.byte	0x96
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
	.byte	0x97
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
	.byte	0x98
	.long	0x3bd
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
	.byte	0x9f
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
	.byte	0xa0
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
	.byte	0xa1
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
	.byte	0xa2
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
	.byte	0xa3
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
	.byte	0xa4
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
	.byte	0xa5
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
	.byte	0xa6
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF10
	.byte	0x7
	.byte	0xa8
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF11
	.byte	0x7
	.byte	0xa9
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF12
	.byte	0x7
	.byte	0xaa
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF13
	.byte	0x7
	.byte	0xab
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF14
	.byte	0x7
	.byte	0xac
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF15
	.byte	0x7
	.byte	0xad
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF16
	.byte	0x7
	.byte	0xae
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF17
	.byte	0x7
	.byte	0xb0
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
	.byte	0xb5
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
	.byte	0xb6
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
	.byte	0xb7
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
	.byte	0xb8
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
	.byte	0xb9
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x4145
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x7
	.value	0x30a
	.uleb128 0xe
	.string	"low"
	.byte	0x7
	.value	0x30b
	.long	0x46a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"high"
	.byte	0x7
	.value	0x30c
	.long	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x418d
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x7
	.value	0x303
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x304
	.long	0x3e26
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x7
	.value	0x305
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"int_cst"
	.byte	0x7
	.value	0x30d
	.long	0x4109
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x41db
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x7
	.value	0x31f
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x320
	.long	0x3e26
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x7
	.value	0x321
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real_cst_ptr"
	.byte	0x7
	.value	0x322
	.long	0x4234
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x4234
	.string	"real_value"
	.byte	0x18
	.byte	0x7
	.value	0x319
	.uleb128 0x5
	.string	"class"
	.byte	0x8
	.byte	0x35
	.long	0x6e89
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"sign"
	.byte	0x8
	.byte	0x37
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
	.byte	0x38
	.long	0x2e4
	.byte	0x4
	.byte	0x1d
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"sig"
	.byte	0x8
	.byte	0x39
	.long	0x6ecf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x41db
	.uleb128 0xd
	.long	0x42a1
	.string	"tree_string"
	.byte	0x20
	.byte	0x7
	.value	0x333
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x334
	.long	0x3e26
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x7
	.value	0x335
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"length"
	.byte	0x7
	.value	0x336
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"pointer"
	.byte	0x7
	.value	0x337
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"st"
	.byte	0x7
	.value	0x339
	.long	0x42a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x211d
	.uleb128 0xd
	.long	0x42fc
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x7
	.value	0x342
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x343
	.long	0x3e26
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x7
	.value	0x344
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real"
	.byte	0x7
	.value	0x345
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"imag"
	.byte	0x7
	.value	0x346
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xd
	.long	0x4344
	.string	"tree_vector"
	.byte	0x18
	.byte	0x7
	.value	0x355
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x356
	.long	0x3e26
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x7
	.value	0x357
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"elements"
	.byte	0x7
	.value	0x358
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x14
	.long	0x4382
	.long	.LASF18
	.byte	0xc
	.byte	0x9
	.byte	0x19
	.uleb128 0x7
	.string	"str"
	.byte	0x9
	.byte	0x1c
	.long	0x74f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"len"
	.byte	0x9
	.byte	0x1d
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"hash_value"
	.byte	0x9
	.byte	0x1e
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x43b9
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x7
	.value	0x376
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x377
	.long	0x3e26
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"id"
	.byte	0x7
	.value	0x378
	.long	0x4344
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	0x4400
	.string	"tree_list"
	.byte	0x18
	.byte	0x7
	.value	0x380
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x381
	.long	0x3e26
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"purpose"
	.byte	0x7
	.value	0x382
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"value"
	.byte	0x7
	.value	0x383
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x4441
	.string	"tree_vec"
	.byte	0x18
	.byte	0x7
	.value	0x38e
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x38f
	.long	0x3e26
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"length"
	.byte	0x7
	.value	0x390
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"a"
	.byte	0x7
	.value	0x391
	.long	0x4441
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x10
	.long	0x4451
	.long	0x1e6
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x449d
	.string	"tree_exp"
	.byte	0x18
	.byte	0x7
	.value	0x3d4
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x3d5
	.long	0x3e26
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"complexity"
	.byte	0x7
	.value	0x3d6
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"operands"
	.byte	0x7
	.value	0x3d9
	.long	0x4441
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x458d
	.string	"tree_block"
	.byte	0x2c
	.byte	0x7
	.value	0x40a
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x40b
	.long	0x3e26
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.string	"handler_block_flag"
	.byte	0x7
	.value	0x40d
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x24
	.long	.LASF19
	.byte	0x7
	.value	0x40e
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.string	"block_num"
	.byte	0x7
	.value	0x40f
	.long	0x3bd
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"vars"
	.byte	0x7
	.value	0x411
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"subblocks"
	.byte	0x7
	.value	0x412
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"supercontext"
	.byte	0x7
	.value	0x413
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x22
	.long	.LASF20
	.byte	0x7
	.value	0x414
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"fragment_origin"
	.byte	0x7
	.value	0x415
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"fragment_chain"
	.byte	0x7
	.value	0x416
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x25
	.long	0x45d4
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x7
	.value	0x570
	.uleb128 0xa
	.string	"address"
	.byte	0x7
	.value	0x571
	.long	0x2e4
	.uleb128 0xa
	.string	"pointer"
	.byte	0x7
	.value	0x572
	.long	0x4c2
	.uleb128 0xa
	.string	"die"
	.byte	0x7
	.value	0x573
	.long	0x45e1
	.byte	0x0
	.uleb128 0x21
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x45d4
	.uleb128 0xd
	.long	0x4932
	.string	"tree_type"
	.byte	0x74
	.byte	0x7
	.value	0x551
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x552
	.long	0x3e26
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"values"
	.byte	0x7
	.value	0x553
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x22
	.long	.LASF8
	.byte	0x7
	.value	0x554
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x22
	.long	.LASF21
	.byte	0x7
	.value	0x555
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x22
	.long	.LASF22
	.byte	0x7
	.value	0x556
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"uid"
	.byte	0x7
	.value	0x557
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"precision"
	.byte	0x7
	.value	0x559
	.long	0x3bd
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF0
	.byte	0x7
	.value	0x55a
	.long	0x831
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"string_flag"
	.byte	0x7
	.value	0x55c
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"no_force_blk_flag"
	.byte	0x7
	.value	0x55d
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"needs_constructing_flag"
	.byte	0x7
	.value	0x55e
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"transparent_union_flag"
	.byte	0x7
	.value	0x55f
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"packed_flag"
	.byte	0x7
	.value	0x560
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"restrict_flag"
	.byte	0x7
	.value	0x561
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF23
	.byte	0x7
	.value	0x562
	.long	0x3bd
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF10
	.byte	0x7
	.value	0x564
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF11
	.byte	0x7
	.value	0x565
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF12
	.byte	0x7
	.value	0x566
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF13
	.byte	0x7
	.value	0x567
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF14
	.byte	0x7
	.value	0x568
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF15
	.byte	0x7
	.value	0x569
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF16
	.byte	0x7
	.value	0x56a
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF24
	.byte	0x7
	.value	0x56b
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"align"
	.byte	0x7
	.value	0x56d
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"pointer_to"
	.byte	0x7
	.value	0x56e
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"reference_to"
	.byte	0x7
	.value	0x56f
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"symtab"
	.byte	0x7
	.value	0x574
	.long	0x458d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x22
	.long	.LASF25
	.byte	0x7
	.value	0x576
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"minval"
	.byte	0x7
	.value	0x577
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"maxval"
	.byte	0x7
	.value	0x578
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"next_variant"
	.byte	0x7
	.value	0x579
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"main_variant"
	.byte	0x7
	.value	0x57a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"binfo"
	.byte	0x7
	.value	0x57b
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"context"
	.byte	0x7
	.value	0x57c
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"alias_set"
	.byte	0x7
	.value	0x57d
	.long	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x22
	.long	.LASF26
	.byte	0x7
	.value	0x57f
	.long	0x493e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"ty_idx"
	.byte	0x7
	.value	0x581
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"field_ids_used"
	.byte	0x7
	.value	0x582
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"dst_id"
	.byte	0x7
	.value	0x583
	.long	0x20e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"extra_methods"
	.byte	0x7
	.value	0x58a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x21
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4932
	.uleb128 0xd
	.long	0x4989
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x7
	.value	0x817
	.uleb128 0x23
	.string	"align"
	.byte	0x7
	.value	0x818
	.long	0x3bd
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.string	"off_align"
	.byte	0x7
	.value	0x819
	.long	0x3bd
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x49be
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x7
	.value	0x80e
	.uleb128 0xa
	.string	"f"
	.byte	0x7
	.value	0x811
	.long	0x217c
	.uleb128 0xa
	.string	"i"
	.byte	0x7
	.value	0x814
	.long	0x459
	.uleb128 0xa
	.string	"a"
	.byte	0x7
	.value	0x81a
	.long	0x4944
	.byte	0x0
	.uleb128 0x25
	.long	0x49fd
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x7
	.value	0x837
	.uleb128 0xa
	.string	"f"
	.byte	0x7
	.value	0x838
	.long	0x53af
	.uleb128 0xa
	.string	"r"
	.byte	0x7
	.value	0x839
	.long	0x9e
	.uleb128 0xa
	.string	"t"
	.byte	0x7
	.value	0x83a
	.long	0x1e6
	.uleb128 0xa
	.string	"i"
	.byte	0x7
	.value	0x83b
	.long	0x2e4
	.byte	0x0
	.uleb128 0x26
	.long	0x53af
	.long	.LASF27
	.value	0x134
	.byte	0x4
	.byte	0x19
	.uleb128 0x7
	.string	"eh"
	.byte	0xb
	.byte	0xb5
	.long	0x721b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0xb
	.byte	0xb6
	.long	0x722f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0xb
	.byte	0xb7
	.long	0x7235
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0xb
	.byte	0xb8
	.long	0x723b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0xb
	.byte	0xb9
	.long	0x7251
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF25
	.byte	0xb
	.byte	0xbe
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1e
	.long	.LASF2
	.byte	0xb
	.byte	0xc1
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"outer"
	.byte	0xb
	.byte	0xc4
	.long	0x53af
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0xb
	.byte	0xc9
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.long	.LASF28
	.byte	0xb
	.byte	0xce
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0xb
	.byte	0xd3
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0xb
	.byte	0xd7
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"arg_offset_rtx"
	.byte	0xb
	.byte	0xdb
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"args_info"
	.byte	0xb
	.byte	0xdf
	.long	0x3db
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"return_rtx"
	.byte	0xb
	.byte	0xe5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"internal_arg_pointer"
	.byte	0xb
	.byte	0xe8
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"cannot_inline"
	.byte	0xb
	.byte	0xec
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0xb
	.byte	0xf0
	.long	0x729a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0xb
	.byte	0xf3
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"x_nonlocal_labels"
	.byte	0xb
	.byte	0xf8
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xb
	.byte	0xfe
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xb
	.value	0x102
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xb
	.value	0x107
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"x_cleanup_label"
	.byte	0xb
	.value	0x10d
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xe
	.string	"x_return_label"
	.byte	0xb
	.value	0x112
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xe
	.string	"computed_goto_common_label"
	.byte	0xb
	.value	0x115
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"computed_goto_common_reg"
	.byte	0xb
	.value	0x116
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xe
	.string	"x_save_expr_regs"
	.byte	0xb
	.value	0x11a
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xe
	.string	"x_stack_slot_list"
	.byte	0xb
	.value	0x11e
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xe
	.string	"x_rtl_expr_chain"
	.byte	0xb
	.value	0x121
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xe
	.string	"x_tail_recursion_label"
	.byte	0xb
	.value	0x125
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xe
	.string	"x_tail_recursion_reentry"
	.byte	0xb
	.value	0x128
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xe
	.string	"x_arg_pointer_save_area"
	.byte	0xb
	.value	0x12e
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xe
	.string	"x_clobber_return_insn"
	.byte	0xb
	.value	0x133
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xe
	.string	"x_frame_offset"
	.byte	0xb
	.value	0x138
	.long	0x459
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xe
	.string	"x_context_display"
	.byte	0xb
	.value	0x13d
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xe
	.string	"x_trampoline_list"
	.byte	0xb
	.value	0x146
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"x_parm_birth_insn"
	.byte	0xb
	.value	0x149
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"x_last_parm_insn"
	.byte	0xb
	.value	0x14d
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"x_max_parm_reg"
	.byte	0xb
	.value	0x151
	.long	0x3bd
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"x_parm_reg_stack_loc"
	.byte	0xb
	.value	0x157
	.long	0x1764
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"x_temp_slots"
	.byte	0xb
	.value	0x15a
	.long	0x72ac
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"x_temp_slot_level"
	.byte	0xb
	.value	0x15d
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"x_var_temp_slot_level"
	.byte	0xb
	.value	0x160
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"x_target_temp_slot_level"
	.byte	0xb
	.value	0x166
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"fixup_var_refs_queue"
	.byte	0xb
	.value	0x16a
	.long	0x6f3e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"inlinable"
	.byte	0xb
	.value	0x16d
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xe
	.string	"no_debugging_symbols"
	.byte	0xb
	.value	0x16e
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xe
	.string	"original_arg_vector"
	.byte	0xb
	.value	0x16f
	.long	0x19e
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xe
	.string	"original_decl_initial"
	.byte	0xb
	.value	0x170
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xe
	.string	"inl_last_parm_insn"
	.byte	0xb
	.value	0x173
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xe
	.string	"inl_max_label_num"
	.byte	0xb
	.value	0x175
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xe
	.string	"funcdef_no"
	.byte	0xb
	.value	0x178
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xe
	.string	"machine"
	.byte	0xb
	.value	0x17d
	.long	0x72c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xe
	.string	"stack_alignment_needed"
	.byte	0xb
	.value	0x17f
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xe
	.string	"preferred_stack_boundary"
	.byte	0xb
	.value	0x181
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xe
	.string	"language"
	.byte	0xb
	.value	0x184
	.long	0x72df
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xe
	.string	"epilogue_delay_list"
	.byte	0xb
	.value	0x18a
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x22
	.long	.LASF29
	.byte	0xb
	.value	0x1fa
	.long	0x71a5
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xe
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
	.long	0x49fd
	.uleb128 0x27
	.long	0x53ed
	.byte	0x4
	.byte	0x7
	.value	0x84e
	.uleb128 0xa
	.string	"st"
	.byte	0x7
	.value	0x84f
	.long	0x42a1
	.uleb128 0xa
	.string	"label_idx"
	.byte	0x7
	.value	0x850
	.long	0x20d0
	.uleb128 0xa
	.string	"field_id"
	.byte	0x7
	.value	0x851
	.long	0x3bd
	.byte	0x0
	.uleb128 0xd
	.long	0x5b34
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x7
	.value	0x7c5
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x7c6
	.long	0x3e26
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"locus"
	.byte	0x7
	.value	0x7c7
	.long	0x179c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"uid"
	.byte	0x7
	.value	0x7c8
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x22
	.long	.LASF8
	.byte	0x7
	.value	0x7c9
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x24
	.long	.LASF0
	.byte	0x7
	.value	0x7ca
	.long	0x831
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"external_flag"
	.byte	0x7
	.value	0x7cc
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"nonlocal_flag"
	.byte	0x7
	.value	0x7cd
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"regdecl_flag"
	.byte	0x7
	.value	0x7ce
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"inline_flag"
	.byte	0x7
	.value	0x7cf
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"bit_field_flag"
	.byte	0x7
	.value	0x7d0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"virtual_flag"
	.byte	0x7
	.value	0x7d1
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"ignored_flag"
	.byte	0x7
	.value	0x7d2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.long	.LASF19
	.byte	0x7
	.value	0x7d3
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"sbuf_flag"
	.byte	0x7
	.value	0x7d7
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"sdram_flag"
	.byte	0x7
	.value	0x7d8
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"v1buf_flag"
	.byte	0x7
	.value	0x7d9
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"v2buf_flag"
	.byte	0x7
	.value	0x7da
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"v4buf_flag"
	.byte	0x7
	.value	0x7db
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"in_system_header_flag"
	.byte	0x7
	.value	0x7df
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"common_flag"
	.byte	0x7
	.value	0x7e0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"defer_output"
	.byte	0x7
	.value	0x7e1
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"transparent_union"
	.byte	0x7
	.value	0x7e2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"static_ctor_flag"
	.byte	0x7
	.value	0x7e3
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"static_dtor_flag"
	.byte	0x7
	.value	0x7e4
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"artificial_flag"
	.byte	0x7
	.value	0x7e5
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"weak_flag"
	.byte	0x7
	.value	0x7e6
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"non_addr_const_p"
	.byte	0x7
	.value	0x7e8
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"no_instrument_function_entry_exit"
	.byte	0x7
	.value	0x7e9
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"comdat_flag"
	.byte	0x7
	.value	0x7ea
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"malloc_flag"
	.byte	0x7
	.value	0x7eb
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"no_limit_stack"
	.byte	0x7
	.value	0x7ec
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF9
	.byte	0x7
	.value	0x7ed
	.long	0x212c
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"pure_flag"
	.byte	0x7
	.value	0x7ee
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF23
	.byte	0x7
	.value	0x7f0
	.long	0x3bd
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"non_addressable"
	.byte	0x7
	.value	0x7f1
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF24
	.byte	0x7
	.value	0x7f2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"uninlinable"
	.byte	0x7
	.value	0x7f3
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"thread_local_flag"
	.byte	0x7
	.value	0x7f4
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"inlined_function_flag"
	.byte	0x7
	.value	0x7f5
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"threadprivate_flag"
	.byte	0x7
	.value	0x7f7
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF10
	.byte	0x7
	.value	0x7fa
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF11
	.byte	0x7
	.value	0x7fb
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF12
	.byte	0x7
	.value	0x7fc
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF13
	.byte	0x7
	.value	0x7fd
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF14
	.byte	0x7
	.value	0x7fe
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF15
	.byte	0x7
	.value	0x7ff
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF16
	.byte	0x7
	.value	0x800
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF17
	.byte	0x7
	.value	0x801
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"syscall_linkage_flag"
	.byte	0x7
	.value	0x804
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"widen_retval_flag"
	.byte	0x7
	.value	0x805
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"emitted_by_gxx"
	.byte	0x7
	.value	0x808
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"u1"
	.byte	0x7
	.value	0x81b
	.long	0x4989
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x22
	.long	.LASF21
	.byte	0x7
	.value	0x81d
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x22
	.long	.LASF25
	.byte	0x7
	.value	0x81e
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"context"
	.byte	0x7
	.value	0x81f
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"arguments"
	.byte	0x7
	.value	0x820
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"result"
	.byte	0x7
	.value	0x821
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"initial"
	.byte	0x7
	.value	0x822
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"initial_2"
	.byte	0x7
	.value	0x824
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"alias_target"
	.byte	0x7
	.value	0x825
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"thunk_delta"
	.byte	0x7
	.value	0x829
	.long	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x22
	.long	.LASF20
	.byte	0x7
	.value	0x82b
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"assembler_name"
	.byte	0x7
	.value	0x82c
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"section_name"
	.byte	0x7
	.value	0x82d
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x22
	.long	.LASF22
	.byte	0x7
	.value	0x82e
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"rtl"
	.byte	0x7
	.value	0x82f
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"live_range_rtl"
	.byte	0x7
	.value	0x830
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"u2"
	.byte	0x7
	.value	0x83c
	.long	0x49be
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"saved_tree"
	.byte	0x7
	.value	0x83f
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"inlined_fns"
	.byte	0x7
	.value	0x843
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"vindex"
	.byte	0x7
	.value	0x845
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"pointer_alias_set"
	.byte	0x7
	.value	0x846
	.long	0x459
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x22
	.long	.LASF26
	.byte	0x7
	.value	0x848
	.long	0x5b40
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x23
	.string	"symtab_idx"
	.byte	0x7
	.value	0x84b
	.long	0x3bd
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x23
	.string	"label_defined"
	.byte	0x7
	.value	0x84c
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"sgi_u1"
	.byte	0x7
	.value	0x852
	.long	0x53b5
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"decl_dst_id"
	.byte	0x7
	.value	0x858
	.long	0x20e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"sl_model_name"
	.byte	0x7
	.value	0x85c
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0x21
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5b34
	.uleb128 0x1a
	.long	0x5dc4
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xd
	.byte	0x1d
	.uleb128 0x1b
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x1b
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x1b
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x1b
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x1b
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x1b
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x1b
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x1b
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x1b
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x1b
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x1b
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x1b
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x1b
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x1b
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x1b
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x1b
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x1b
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x1b
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x1b
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x1b
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x1b
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x1b
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x1b
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x1b
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x1b
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x1b
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x1b
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x1b
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x1b
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x1b
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x1b
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x1b
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x1b
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x1b
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x1b
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0xd
	.long	0x5e13
	.string	"tree_omp"
	.byte	0x18
	.byte	0x7
	.value	0x864
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x865
	.long	0x3e26
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"choice"
	.byte	0x7
	.value	0x866
	.long	0x5b46
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"omp_clause_list"
	.byte	0x7
	.value	0x867
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x5ece
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x7
	.value	0xa1d
	.uleb128 0x22
	.long	.LASF25
	.byte	0x7
	.value	0xa20
	.long	0x5ece
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"min_length"
	.byte	0x7
	.value	0xa22
	.long	0x805
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"max_length"
	.byte	0x7
	.value	0xa25
	.long	0x805
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"decl_required"
	.byte	0x7
	.value	0xa2d
	.long	0x5ed3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"type_required"
	.byte	0x7
	.value	0xa30
	.long	0x5ed3
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xe
	.string	"function_type_required"
	.byte	0x7
	.value	0xa35
	.long	0x5ed3
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"handler"
	.byte	0x7
	.value	0xa44
	.long	0x5f11
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xb
	.long	0x2d1
	.uleb128 0xb
	.long	0x5ed8
	.uleb128 0xc
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x28
	.long	0x5f05
	.byte	0x1
	.long	0x1e6
	.uleb128 0x16
	.long	0x5f05
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x2e4
	.uleb128 0x16
	.long	0x5f0b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e6
	.uleb128 0x3
	.byte	0x4
	.long	0x5ed8
	.uleb128 0xb
	.long	0x5f16
	.uleb128 0x3
	.byte	0x4
	.long	0x5ee1
	.uleb128 0x4
	.long	0x5f52
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0x11
	.byte	0x24
	.uleb128 0x7
	.string	"rtx"
	.byte	0x11
	.byte	0x32
	.long	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"age"
	.byte	0x11
	.byte	0x36
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1a
	.long	0x60ed
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0x11
	.byte	0x3c
	.uleb128 0x1b
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x1b
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x1b
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x1b
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x1b
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x1b
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x1b
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x1b
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x1b
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x1b
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x1b
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x1b
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x1b
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x1b
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x1b
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x1b
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x1b
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x1b
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x1b
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x1b
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x1b
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x8
	.long	0x61e9
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x11
	.byte	0x55
	.uleb128 0x20
	.string	"c"
	.byte	0x11
	.byte	0x56
	.long	0x7cf
	.uleb128 0x20
	.string	"uc"
	.byte	0x11
	.byte	0x58
	.long	0x61e9
	.uleb128 0x20
	.string	"s"
	.byte	0x11
	.byte	0x5a
	.long	0x61f9
	.uleb128 0x20
	.string	"us"
	.byte	0x11
	.byte	0x5c
	.long	0x6209
	.uleb128 0x20
	.string	"i"
	.byte	0x11
	.byte	0x5e
	.long	0x6219
	.uleb128 0x20
	.string	"u"
	.byte	0x11
	.byte	0x60
	.long	0x6229
	.uleb128 0x20
	.string	"l"
	.byte	0x11
	.byte	0x62
	.long	0x6239
	.uleb128 0x20
	.string	"ul"
	.byte	0x11
	.byte	0x64
	.long	0x6249
	.uleb128 0x20
	.string	"hint"
	.byte	0x11
	.byte	0x66
	.long	0x6259
	.uleb128 0x20
	.string	"uhint"
	.byte	0x11
	.byte	0x68
	.long	0x6269
	.uleb128 0x20
	.string	"generic"
	.byte	0x11
	.byte	0x6a
	.long	0x6279
	.uleb128 0x20
	.string	"cptr"
	.byte	0x11
	.byte	0x6c
	.long	0x6289
	.uleb128 0x20
	.string	"rtx"
	.byte	0x11
	.byte	0x6e
	.long	0x6299
	.uleb128 0x20
	.string	"rtvec"
	.byte	0x11
	.byte	0x70
	.long	0x62a9
	.uleb128 0x20
	.string	"tree"
	.byte	0x11
	.byte	0x72
	.long	0x62b9
	.uleb128 0x20
	.string	"bitmap"
	.byte	0x11
	.byte	0x74
	.long	0x62c9
	.uleb128 0x20
	.string	"reg"
	.byte	0x11
	.byte	0x76
	.long	0x62d9
	.uleb128 0x20
	.string	"const_equiv"
	.byte	0x11
	.byte	0x78
	.long	0x63d5
	.uleb128 0x20
	.string	"bb"
	.byte	0x11
	.byte	0x7a
	.long	0x63e5
	.uleb128 0x20
	.string	"te"
	.byte	0x11
	.byte	0x7c
	.long	0x63f5
	.byte	0x0
	.uleb128 0x10
	.long	0x61f9
	.long	0x401
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6209
	.long	0x44c
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6219
	.long	0x412
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6229
	.long	0x2e4
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6239
	.long	0x3bd
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6249
	.long	0x4a3
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6259
	.long	0x428
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6269
	.long	0x459
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6279
	.long	0x46a
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6289
	.long	0x4c0
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6299
	.long	0x4c2
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x62a9
	.long	0xa9
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x62b9
	.long	0x1ab
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x62c9
	.long	0x1f2
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x62d9
	.long	0x159e
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x62e9
	.long	0x63cf
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x63cf
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0x11
	.byte	0x76
	.uleb128 0x7
	.string	"first_uid"
	.byte	0x13
	.byte	0x31
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last_uid"
	.byte	0x13
	.byte	0x32
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"last_note_uid"
	.byte	0x13
	.byte	0x33
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"sets"
	.byte	0x13
	.byte	0x36
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"refs"
	.byte	0x13
	.byte	0x39
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"freq"
	.byte	0x13
	.byte	0x3a
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"deaths"
	.byte	0x13
	.byte	0x3b
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"live_length"
	.byte	0x13
	.byte	0x3c
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"calls_crossed"
	.byte	0x13
	.byte	0x3d
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.long	.LASF30
	.byte	0x13
	.byte	0x3e
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"changes_mode"
	.byte	0x13
	.byte	0x3f
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x62e9
	.uleb128 0x10
	.long	0x63e5
	.long	0x5f1c
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x63f5
	.long	0x1729
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6405
	.long	0x6410
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6405
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x11
	.byte	0x7e
	.long	0x60ed
	.uleb128 0x4
	.long	0x649d
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x11
	.byte	0x81
	.uleb128 0x7
	.string	"num_elements"
	.byte	0x11
	.byte	0x82
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elements_used"
	.byte	0x11
	.byte	0x83
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type"
	.byte	0x11
	.byte	0x85
	.long	0x5f52
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF25
	.byte	0x11
	.byte	0x86
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"data"
	.byte	0x11
	.byte	0x87
	.long	0x6416
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x11
	.byte	0x8a
	.long	0x64b0
	.uleb128 0x3
	.byte	0x4
	.long	0x6429
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x6
	.byte	0x1d
	.long	0x428
	.uleb128 0x4
	.long	0x6520
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x6
	.byte	0x34
	.uleb128 0x1e
	.long	.LASF31
	.byte	0x6
	.byte	0x35
	.long	0x6520
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x6
	.byte	0x36
	.long	0x6520
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x6
	.byte	0x37
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x6
	.byte	0x38
	.long	0x6526
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x64c9
	.uleb128 0x10
	.long	0x6536
	.long	0x64b6
	.uleb128 0x11
	.long	0x3d4
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x6
	.byte	0x39
	.long	0x64c9
	.uleb128 0x3
	.byte	0x4
	.long	0x6536
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x6
	.byte	0x43
	.long	0x159e
	.uleb128 0x4
	.long	0x65b9
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0xf
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0xf
	.byte	0x21
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF8
	.byte	0xf
	.byte	0x22
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0xf
	.byte	0x23
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0xf
	.byte	0x24
	.long	0x6269
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xf
	.byte	0x25
	.long	0x65c8
	.uleb128 0x3
	.byte	0x4
	.long	0x6560
	.uleb128 0x2
	.string	"regset"
	.byte	0xe
	.byte	0x22
	.long	0x6552
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0xe
	.byte	0x75
	.long	0x459
	.uleb128 0x4
	.long	0x6696
	.string	"edge_def"
	.byte	0x28
	.byte	0xe
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0xe
	.byte	0x7a
	.long	0x6696
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0xe
	.byte	0x7a
	.long	0x6696
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0xe
	.byte	0x7d
	.long	0x1729
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"dest"
	.byte	0xe
	.byte	0x7d
	.long	0x1729
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1e
	.long	.LASF32
	.byte	0xe
	.byte	0x80
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0xe
	.byte	0x83
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"flags"
	.byte	0xe
	.byte	0x85
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0xe
	.byte	0x86
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"count"
	.byte	0xe
	.byte	0x87
	.long	0x65dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x65ed
	.uleb128 0x2
	.string	"edge"
	.byte	0xe
	.byte	0x89
	.long	0x6696
	.uleb128 0x4
	.long	0x690f
	.string	"loop"
	.byte	0x80
	.byte	0xe
	.byte	0xdc
	.uleb128 0xe
	.string	"num"
	.byte	0xe
	.value	0x176
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"header"
	.byte	0xe
	.value	0x179
	.long	0x6915
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"latch"
	.byte	0xe
	.value	0x17c
	.long	0x6915
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"pre_header"
	.byte	0xe
	.value	0x17f
	.long	0x6915
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"pre_header_edges"
	.byte	0xe
	.value	0x184
	.long	0x6920
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"num_pre_header_edges"
	.byte	0xe
	.value	0x187
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"first"
	.byte	0xe
	.value	0x18b
	.long	0x6915
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"last"
	.byte	0xe
	.value	0x18f
	.long	0x6915
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"nodes"
	.byte	0xe
	.value	0x192
	.long	0x65b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"num_nodes"
	.byte	0xe
	.value	0x195
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"entry_edges"
	.byte	0xe
	.value	0x198
	.long	0x6920
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x22
	.long	.LASF33
	.byte	0xe
	.value	0x19b
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"exit_edges"
	.byte	0xe
	.value	0x19e
	.long	0x6920
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"num_exits"
	.byte	0xe
	.value	0x1a1
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"exits_doms"
	.byte	0xe
	.value	0x1a4
	.long	0x65b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"depth"
	.byte	0xe
	.value	0x1a7
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"pred"
	.byte	0xe
	.value	0x1aa
	.long	0x6926
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"level"
	.byte	0xe
	.value	0x1ae
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"outer"
	.byte	0xe
	.value	0x1b1
	.long	0x690f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"inner"
	.byte	0xe
	.value	0x1b4
	.long	0x690f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x22
	.long	.LASF31
	.byte	0xe
	.value	0x1b7
	.long	0x690f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"invalid"
	.byte	0xe
	.value	0x1ba
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"aux"
	.byte	0xe
	.value	0x1bd
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"vtop"
	.byte	0xe
	.value	0x1c3
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"cont"
	.byte	0xe
	.value	0x1c7
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"start"
	.byte	0xe
	.value	0x1ca
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"end"
	.byte	0xe
	.value	0x1cd
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"top"
	.byte	0xe
	.value	0x1d1
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"scan_start"
	.byte	0xe
	.value	0x1d4
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"sink"
	.byte	0xe
	.value	0x1d7
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"exit_labels"
	.byte	0xe
	.value	0x1e2
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"exit_count"
	.byte	0xe
	.value	0x1e6
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x66a8
	.uleb128 0x1f
	.long	.LASF30
	.byte	0xe
	.byte	0xe6
	.long	0x1729
	.uleb128 0x3
	.byte	0x4
	.long	0x669c
	.uleb128 0x3
	.byte	0x4
	.long	0x690f
	.uleb128 0x1a
	.long	0x69b6
	.string	"debug_info_type"
	.byte	0x4
	.byte	0x14
	.byte	0x21
	.uleb128 0x1b
	.string	"NO_DEBUG"
	.sleb128 0
	.uleb128 0x1b
	.string	"DBX_DEBUG"
	.sleb128 1
	.uleb128 0x1b
	.string	"SDB_DEBUG"
	.sleb128 2
	.uleb128 0x1b
	.string	"DWARF_DEBUG"
	.sleb128 3
	.uleb128 0x1b
	.string	"DWARF2_DEBUG"
	.sleb128 4
	.uleb128 0x1b
	.string	"XCOFF_DEBUG"
	.sleb128 5
	.uleb128 0x1b
	.string	"VMS_DEBUG"
	.sleb128 6
	.uleb128 0x1b
	.string	"VMS_AND_DWARF2_DEBUG"
	.sleb128 7
	.byte	0x0
	.uleb128 0x4
	.long	0x6b99
	.string	"gcc_debug_hooks"
	.byte	0x50
	.byte	0x15
	.byte	0x19
	.uleb128 0x7
	.string	"init"
	.byte	0x15
	.byte	0x1c
	.long	0x6ba5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"finish"
	.byte	0x15
	.byte	0x1f
	.long	0x6ba5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"define"
	.byte	0x15
	.byte	0x22
	.long	0x6bbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"undef"
	.byte	0x15
	.byte	0x25
	.long	0x6bbc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"start_source_file"
	.byte	0x15
	.byte	0x29
	.long	0x6bbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"end_source_file"
	.byte	0x15
	.byte	0x2d
	.long	0x6bce
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"begin_block"
	.byte	0x15
	.byte	0x31
	.long	0x6be5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"end_block"
	.byte	0x15
	.byte	0x34
	.long	0x6be5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"ignore_block"
	.byte	0x15
	.byte	0x3b
	.long	0x6bfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"source_line"
	.byte	0x15
	.byte	0x3e
	.long	0x6bbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"begin_prologue"
	.byte	0x15
	.byte	0x43
	.long	0x6bbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"end_prologue"
	.byte	0x15
	.byte	0x47
	.long	0x6bbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"end_epilogue"
	.byte	0x15
	.byte	0x4a
	.long	0x6bbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"begin_function"
	.byte	0x15
	.byte	0x4d
	.long	0x6c0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"end_function"
	.byte	0x15
	.byte	0x50
	.long	0x6bce
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"function_decl"
	.byte	0x15
	.byte	0x56
	.long	0x6c0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"global_decl"
	.byte	0x15
	.byte	0x5a
	.long	0x6c0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"deferred_inline_function"
	.byte	0x15
	.byte	0x5e
	.long	0x6c0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"outlining_inline_function"
	.byte	0x15
	.byte	0x63
	.long	0x6c0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"label"
	.byte	0x15
	.byte	0x67
	.long	0x6c1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x15
	.long	0x6ba5
	.byte	0x1
	.uleb128 0x16
	.long	0x2d1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6b99
	.uleb128 0x15
	.long	0x6bbc
	.byte	0x1
	.uleb128 0x16
	.long	0x3bd
	.uleb128 0x16
	.long	0x2d1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6bab
	.uleb128 0x15
	.long	0x6bce
	.byte	0x1
	.uleb128 0x16
	.long	0x3bd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6bc2
	.uleb128 0x15
	.long	0x6be5
	.byte	0x1
	.uleb128 0x16
	.long	0x3bd
	.uleb128 0x16
	.long	0x3bd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6bd4
	.uleb128 0x28
	.long	0x6bfb
	.byte	0x1
	.long	0x5ed8
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6beb
	.uleb128 0x15
	.long	0x6c0d
	.byte	0x1
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6c01
	.uleb128 0x15
	.long	0x6c1f
	.byte	0x1
	.uleb128 0x16
	.long	0x9e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6c13
	.uleb128 0x4
	.long	0x6c59
	.string	"equiv_table"
	.byte	0x8
	.byte	0x10
	.byte	0x6f
	.uleb128 0x7
	.string	"dest"
	.byte	0x10
	.byte	0x70
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"equiv"
	.byte	0x10
	.byte	0x71
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x29
	.long	0x6e79
	.string	"inline_remap"
	.value	0x148
	.byte	0x10
	.byte	0x24
	.uleb128 0x7
	.string	"integrating"
	.byte	0x10
	.byte	0x28
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF34
	.byte	0x10
	.byte	0x2a
	.long	0x1f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"insns_at_start"
	.byte	0x10
	.byte	0x2c
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"block_map"
	.byte	0x10
	.byte	0x2e
	.long	0x649d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"reg_map"
	.byte	0x10
	.byte	0x31
	.long	0x1764
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"label_map"
	.byte	0x10
	.byte	0x38
	.long	0x1764
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"insn_map"
	.byte	0x10
	.byte	0x3e
	.long	0x1764
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"min_insnno"
	.byte	0x10
	.byte	0x3f
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"max_insnno"
	.byte	0x10
	.byte	0x3f
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"const_equiv_varray"
	.byte	0x10
	.byte	0x4e
	.long	0x649d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"const_age"
	.byte	0x10
	.byte	0x55
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"inline_target"
	.byte	0x10
	.byte	0x58
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"orig_asm_operands_vector"
	.byte	0x10
	.byte	0x5c
	.long	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"copy_asm_operands_vector"
	.byte	0x10
	.byte	0x60
	.long	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"copy_asm_constraints_vector"
	.byte	0x10
	.byte	0x62
	.long	0x19e
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"local_return_label"
	.byte	0x10
	.byte	0x65
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1e
	.long	.LASF35
	.byte	0x10
	.byte	0x68
	.long	0x75a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x1e
	.long	.LASF36
	.byte	0x10
	.byte	0x69
	.long	0x1764
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"num_sets"
	.byte	0x10
	.byte	0x6d
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"equiv_sets"
	.byte	0x10
	.byte	0x72
	.long	0x6e79
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.string	"last_pc_value"
	.byte	0x10
	.byte	0x75
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x7
	.string	"compare_src"
	.byte	0x10
	.byte	0x7c
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x1e
	.long	.LASF37
	.byte	0x10
	.byte	0x7d
	.long	0x831
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.byte	0x0
	.uleb128 0x10
	.long	0x6e89
	.long	0x6c25
	.uleb128 0x11
	.long	0x3d4
	.byte	0x1d
	.byte	0x0
	.uleb128 0x1a
	.long	0x6ecf
	.string	"real_value_class"
	.byte	0x4
	.byte	0x8
	.byte	0x22
	.uleb128 0x1b
	.string	"rvc_zero"
	.sleb128 0
	.uleb128 0x1b
	.string	"rvc_normal"
	.sleb128 1
	.uleb128 0x1b
	.string	"rvc_inf"
	.sleb128 2
	.uleb128 0x1b
	.string	"rvc_nan"
	.sleb128 3
	.byte	0x0
	.uleb128 0x10
	.long	0x6edf
	.long	0x428
	.uleb128 0x11
	.long	0x3d4
	.byte	0x4
	.byte	0x0
	.uleb128 0x4
	.long	0x6f3e
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xb
	.byte	0x17
	.uleb128 0x7
	.string	"modified"
	.byte	0xb
	.byte	0x18
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"promoted_mode"
	.byte	0xb
	.byte	0x19
	.long	0x831
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.long	.LASF38
	.byte	0xb
	.byte	0x1a
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF31
	.byte	0xb
	.byte	0x1b
	.long	0x6f3e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6edf
	.uleb128 0x14
	.long	0x6f8c
	.long	.LASF39
	.byte	0x10
	.byte	0xb
	.byte	0x24
	.uleb128 0x7
	.string	"first"
	.byte	0xb
	.byte	0x26
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last"
	.byte	0xb
	.byte	0x27
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.long	.LASF40
	.byte	0xb
	.byte	0x28
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF31
	.byte	0xb
	.byte	0x29
	.long	0x6f8c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f44
	.uleb128 0x4
	.long	0x70c5
	.string	"emit_status"
	.byte	0x34
	.byte	0xb
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0xb
	.byte	0x3a
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0xb
	.byte	0x3d
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_insn"
	.byte	0xb
	.byte	0x44
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_insn"
	.byte	0xb
	.byte	0x45
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1e
	.long	.LASF40
	.byte	0xb
	.byte	0x4a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF39
	.byte	0xb
	.byte	0x50
	.long	0x6f8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0xb
	.byte	0x54
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0xb
	.byte	0x58
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0xb
	.byte	0x59
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0xb
	.byte	0x5f
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF35
	.byte	0xb
	.byte	0x65
	.long	0x75a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0xb
	.byte	0x69
	.long	0x5f05
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x1e
	.long	.LASF36
	.byte	0xb
	.byte	0x70
	.long	0x1764
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x71a5
	.string	"expr_status"
	.byte	0x1c
	.byte	0xb
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0xb
	.byte	0x80
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0xb
	.byte	0x91
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0xb
	.byte	0x97
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_saveregs_value"
	.byte	0xb
	.byte	0x9c
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_apply_args_value"
	.byte	0xb
	.byte	0x9f
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x_forced_labels"
	.byte	0xb
	.byte	0xa2
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_pending_chain"
	.byte	0xb
	.byte	0xa5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2a
	.long	0x720f
	.long	.LASF29
	.byte	0x4
	.byte	0xb
	.value	0x1f1
	.uleb128 0x1b
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x1b
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x1b
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x21
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x720f
	.uleb128 0x21
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x7221
	.uleb128 0x3
	.byte	0x4
	.long	0x70c5
	.uleb128 0x3
	.byte	0x4
	.long	0x6f92
	.uleb128 0x21
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x7241
	.uleb128 0x14
	.long	0x729a
	.long	.LASF41
	.byte	0xc
	.byte	0xb
	.byte	0xf0
	.uleb128 0x1e
	.long	.LASF33
	.byte	0x1
	.byte	0x46
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"max_entries"
	.byte	0x1
	.byte	0x47
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"entries"
	.byte	0x1
	.byte	0x48
	.long	0x892e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7257
	.uleb128 0x21
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x72a0
	.uleb128 0x21
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x72b2
	.uleb128 0x21
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x72cb
	.uleb128 0x14
	.long	0x7322
	.long	.LASF42
	.byte	0xc
	.byte	0x16
	.byte	0x2d
	.uleb128 0x7
	.string	"option"
	.byte	0x16
	.byte	0x30
	.long	0x5ece
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"value"
	.byte	0x16
	.byte	0x32
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"help"
	.byte	0x16
	.byte	0x34
	.long	0x5ece
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1f
	.long	.LASF42
	.byte	0x16
	.byte	0x35
	.long	0x72e5
	.uleb128 0x4
	.long	0x737f
	.string	"ggc_root_tab"
	.byte	0x10
	.byte	0x1c
	.byte	0x32
	.uleb128 0x7
	.string	"base"
	.byte	0x1c
	.byte	0x33
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"nelt"
	.byte	0x1c
	.byte	0x34
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"stride"
	.byte	0x1c
	.byte	0x35
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"cb"
	.byte	0x1c
	.byte	0x36
	.long	0x760
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x73c7
	.string	"asm_int_op"
	.byte	0x10
	.byte	0x17
	.byte	0x3a
	.uleb128 0x7
	.string	"hi"
	.byte	0x17
	.byte	0x3b
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"si"
	.byte	0x17
	.byte	0x3c
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"di"
	.byte	0x17
	.byte	0x3d
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"ti"
	.byte	0x17
	.byte	0x3e
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x75fd
	.string	"asm_out"
	.byte	0x70
	.byte	0x17
	.byte	0x33
	.uleb128 0x7
	.string	"open_paren"
	.byte	0x17
	.byte	0x35
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"close_paren"
	.byte	0x17
	.byte	0x35
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"byte_op"
	.byte	0x17
	.byte	0x38
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"aligned_op"
	.byte	0x17
	.byte	0x3f
	.long	0x737f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"unaligned_op"
	.byte	0x17
	.byte	0x3f
	.long	0x737f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"integer"
	.byte	0x17
	.byte	0x46
	.long	0x7617
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"globalize_label"
	.byte	0x17
	.byte	0x49
	.long	0x7634
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"visibility"
	.byte	0x17
	.byte	0x4d
	.long	0x764b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"function_prologue"
	.byte	0x17
	.byte	0x50
	.long	0x7662
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"function_end_prologue"
	.byte	0x17
	.byte	0x53
	.long	0x7674
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"function_begin_epilogue"
	.byte	0x17
	.byte	0x56
	.long	0x7674
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"function_epilogue"
	.byte	0x17
	.byte	0x59
	.long	0x7662
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"named_section"
	.byte	0x17
	.byte	0x5d
	.long	0x768b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"exception_section"
	.byte	0x17
	.byte	0x60
	.long	0x82b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.string	"eh_frame_section"
	.byte	0x17
	.byte	0x63
	.long	0x82b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x7
	.string	"select_section"
	.byte	0x17
	.byte	0x6a
	.long	0x76a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.string	"select_rtx_section"
	.byte	0x17
	.byte	0x6e
	.long	0x76c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.string	"unique_section"
	.byte	0x17
	.byte	0x73
	.long	0x764b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x7
	.string	"constructor"
	.byte	0x17
	.byte	0x76
	.long	0x76da
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x7
	.string	"destructor"
	.byte	0x17
	.byte	0x79
	.long	0x76da
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x7
	.string	"output_mi_thunk"
	.byte	0x17
	.byte	0x80
	.long	0x7700
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x7
	.string	"can_output_mi_thunk"
	.byte	0x17
	.byte	0x8b
	.long	0x7725
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x28
	.long	0x7617
	.byte	0x1
	.long	0x5ed8
	.uleb128 0x16
	.long	0x9e
	.uleb128 0x16
	.long	0x3bd
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x75fd
	.uleb128 0x15
	.long	0x762e
	.byte	0x1
	.uleb128 0x16
	.long	0x762e
	.uleb128 0x16
	.long	0x2d1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c8
	.uleb128 0x3
	.byte	0x4
	.long	0x761d
	.uleb128 0x15
	.long	0x764b
	.byte	0x1
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x763a
	.uleb128 0x15
	.long	0x7662
	.byte	0x1
	.uleb128 0x16
	.long	0x762e
	.uleb128 0x16
	.long	0x459
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7651
	.uleb128 0x15
	.long	0x7674
	.byte	0x1
	.uleb128 0x16
	.long	0x762e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7668
	.uleb128 0x15
	.long	0x768b
	.byte	0x1
	.uleb128 0x16
	.long	0x2d1
	.uleb128 0x16
	.long	0x3bd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x767a
	.uleb128 0x15
	.long	0x76a7
	.byte	0x1
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x2e4
	.uleb128 0x16
	.long	0x46a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7691
	.uleb128 0x15
	.long	0x76c3
	.byte	0x1
	.uleb128 0x16
	.long	0x831
	.uleb128 0x16
	.long	0x9e
	.uleb128 0x16
	.long	0x46a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x76ad
	.uleb128 0x15
	.long	0x76da
	.byte	0x1
	.uleb128 0x16
	.long	0x9e
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x76c9
	.uleb128 0x15
	.long	0x7700
	.byte	0x1
	.uleb128 0x16
	.long	0x762e
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x459
	.uleb128 0x16
	.long	0x459
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x76e0
	.uleb128 0x28
	.long	0x7725
	.byte	0x1
	.long	0x5ed8
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x459
	.uleb128 0x16
	.long	0x459
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7706
	.uleb128 0x4
	.long	0x78e6
	.string	"sched"
	.byte	0x40
	.byte	0x17
	.byte	0x93
	.uleb128 0x7
	.string	"adjust_cost"
	.byte	0x17
	.byte	0x97
	.long	0x7905
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"adjust_priority"
	.byte	0x17
	.byte	0x9b
	.long	0x7920
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"issue_rate"
	.byte	0x17
	.byte	0xa0
	.long	0x792c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"variable_issue"
	.byte	0x17
	.byte	0xa4
	.long	0x7951
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"md_init"
	.byte	0x17
	.byte	0xa7
	.long	0x796d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"md_finish"
	.byte	0x17
	.byte	0xaa
	.long	0x7984
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"reorder"
	.byte	0x17
	.byte	0xae
	.long	0x79ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"reorder2"
	.byte	0x17
	.byte	0xaf
	.long	0x79ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"use_dfa_pipeline_interface"
	.byte	0x17
	.byte	0xb4
	.long	0x792c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"init_dfa_pre_cycle_insn"
	.byte	0x17
	.byte	0xc2
	.long	0x82b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"dfa_pre_cycle_insn"
	.byte	0x17
	.byte	0xc3
	.long	0x79ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"init_dfa_post_cycle_insn"
	.byte	0x17
	.byte	0xc4
	.long	0x82b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"dfa_post_cycle_insn"
	.byte	0x17
	.byte	0xc5
	.long	0x79ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x17
	.byte	0xcd
	.long	0x792c
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"init_dfa_bubbles"
	.byte	0x17
	.byte	0xd8
	.long	0x82b
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"dfa_bubble"
	.byte	0x17
	.byte	0xd9
	.long	0x79d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x28
	.long	0x7905
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x9e
	.uleb128 0x16
	.long	0x9e
	.uleb128 0x16
	.long	0x9e
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x78e6
	.uleb128 0x28
	.long	0x7920
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x9e
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x790b
	.uleb128 0x2b
	.byte	0x1
	.long	0x2e4
	.uleb128 0x3
	.byte	0x4
	.long	0x7926
	.uleb128 0x28
	.long	0x7951
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x762e
	.uleb128 0x16
	.long	0x2e4
	.uleb128 0x16
	.long	0x9e
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7932
	.uleb128 0x15
	.long	0x796d
	.byte	0x1
	.uleb128 0x16
	.long	0x762e
	.uleb128 0x16
	.long	0x2e4
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7957
	.uleb128 0x15
	.long	0x7984
	.byte	0x1
	.uleb128 0x16
	.long	0x762e
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7973
	.uleb128 0x28
	.long	0x79ae
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x762e
	.uleb128 0x16
	.long	0x2e4
	.uleb128 0x16
	.long	0x1764
	.uleb128 0x16
	.long	0x80a
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x798a
	.uleb128 0x2b
	.byte	0x1
	.long	0x9e
	.uleb128 0x3
	.byte	0x4
	.long	0x79b4
	.uleb128 0x28
	.long	0x79d0
	.byte	0x1
	.long	0x9e
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x79c0
	.uleb128 0x4
	.long	0x7c98
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x17
	.byte	0x30
	.uleb128 0x7
	.string	"asm_out"
	.byte	0x17
	.byte	0x8f
	.long	0x73c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"sched"
	.byte	0x17
	.byte	0xda
	.long	0x772b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x7
	.string	"merge_decl_attributes"
	.byte	0x17
	.byte	0xdd
	.long	0x7cad
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x7
	.string	"merge_type_attributes"
	.byte	0x17
	.byte	0xe0
	.long	0x7cad
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x1e
	.long	.LASF43
	.byte	0x17
	.byte	0xe4
	.long	0x7cb3
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x7
	.string	"comp_type_attributes"
	.byte	0x17
	.byte	0xe9
	.long	0x7cd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x7
	.string	"set_default_type_attributes"
	.byte	0x17
	.byte	0xec
	.long	0x6c0d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x7
	.string	"insert_attributes"
	.byte	0x17
	.byte	0xef
	.long	0x7cea
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x1e
	.long	.LASF44
	.byte	0x17
	.byte	0xf3
	.long	0x6bfb
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x7
	.string	"ms_bitfield_layout_p"
	.byte	0x17
	.byte	0xf7
	.long	0x6bfb
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x7
	.string	"init_builtins"
	.byte	0x17
	.byte	0xfa
	.long	0x82b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x7
	.string	"expand_builtin"
	.byte	0x17
	.byte	0xfd
	.long	0x7d14
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"section_type_flags"
	.byte	0x17
	.value	0x103
	.long	0x7d34
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"cannot_modify_jumps_p"
	.byte	0x17
	.value	0x107
	.long	0x7d40
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"cannot_force_const_mem"
	.byte	0x17
	.value	0x10a
	.long	0x7d56
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"in_small_data_p"
	.byte	0x17
	.value	0x10d
	.long	0x6bfb
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"binds_local_p"
	.byte	0x17
	.value	0x111
	.long	0x6bfb
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"encode_section_info"
	.byte	0x17
	.value	0x115
	.long	0x764b
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"strip_name_encoding"
	.byte	0x17
	.value	0x118
	.long	0x7d6c
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"have_named_sections"
	.byte	0x17
	.value	0x11d
	.long	0x5ed8
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"have_ctors_dtors"
	.byte	0x17
	.value	0x121
	.long	0x5ed8
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xe
	.string	"have_tls"
	.byte	0x17
	.value	0x124
	.long	0x5ed8
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xe
	.string	"have_srodata_section"
	.byte	0x17
	.value	0x127
	.long	0x5ed8
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xe
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x17
	.value	0x12a
	.long	0x5ed8
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x28
	.long	0x7cad
	.byte	0x1
	.long	0x1e6
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7c98
	.uleb128 0x3
	.byte	0x4
	.long	0x7cb9
	.uleb128 0xb
	.long	0x5e13
	.uleb128 0x28
	.long	0x7cd3
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7cbe
	.uleb128 0x15
	.long	0x7cea
	.byte	0x1
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x5f05
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7cd9
	.uleb128 0x28
	.long	0x7d14
	.byte	0x1
	.long	0x9e
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x9e
	.uleb128 0x16
	.long	0x9e
	.uleb128 0x16
	.long	0x831
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7cf0
	.uleb128 0x28
	.long	0x7d34
	.byte	0x1
	.long	0x3bd
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x2d1
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7d1a
	.uleb128 0x2b
	.byte	0x1
	.long	0x5ed8
	.uleb128 0x3
	.byte	0x4
	.long	0x7d3a
	.uleb128 0x28
	.long	0x7d56
	.byte	0x1
	.long	0x5ed8
	.uleb128 0x16
	.long	0x9e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7d46
	.uleb128 0x28
	.long	0x7d6c
	.byte	0x1
	.long	0x2d1
	.uleb128 0x16
	.long	0x2d1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7d5c
	.uleb128 0x2
	.string	"lang_print_tree_hook"
	.byte	0x1b
	.byte	0x1d
	.long	0x7d8e
	.uleb128 0x3
	.byte	0x4
	.long	0x7d94
	.uleb128 0x15
	.long	0x7daa
	.byte	0x1
	.uleb128 0x16
	.long	0x762e
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x4
	.long	0x7f30
	.string	"lang_hooks_for_tree_inlining"
	.byte	0x30
	.byte	0x1b
	.byte	0x23
	.uleb128 0x7
	.string	"walk_subtrees"
	.byte	0x1b
	.byte	0x24
	.long	0x7f7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"cannot_inline_tree_fn"
	.byte	0x1b
	.byte	0x29
	.long	0x7f90
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"disregard_inline_limits"
	.byte	0x1b
	.byte	0x2a
	.long	0x7fa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"add_pending_fn_decls"
	.byte	0x1b
	.byte	0x2b
	.long	0x7fc1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"tree_chain_matters_p"
	.byte	0x1b
	.byte	0x2d
	.long	0x7fa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"auto_var_in_fn_p"
	.byte	0x1b
	.byte	0x2e
	.long	0x7fdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"copy_res_decl_for_inlining"
	.byte	0x1b
	.byte	0x2f
	.long	0x800b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"anon_aggr_type_p"
	.byte	0x1b
	.byte	0x34
	.long	0x7fa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"var_mod_type_p"
	.byte	0x1b
	.byte	0x35
	.long	0x8021
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"start_inlining"
	.byte	0x1b
	.byte	0x36
	.long	0x7fa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"end_inlining"
	.byte	0x1b
	.byte	0x37
	.long	0x8033
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"convert_parm_for_inlining"
	.byte	0x1b
	.byte	0x38
	.long	0x8053
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x28
	.long	0x7f54
	.byte	0x1
	.long	0x1f2
	.uleb128 0x16
	.long	0x7f54
	.uleb128 0x16
	.long	0x80a
	.uleb128 0x16
	.long	0x7f5a
	.uleb128 0x16
	.long	0x4c0
	.uleb128 0x16
	.long	0x4c0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f2
	.uleb128 0x3
	.byte	0x4
	.long	0x7f60
	.uleb128 0x28
	.long	0x7f7a
	.byte	0x1
	.long	0x1f2
	.uleb128 0x16
	.long	0x7f54
	.uleb128 0x16
	.long	0x80a
	.uleb128 0x16
	.long	0x4c0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f30
	.uleb128 0x28
	.long	0x7f90
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x7f54
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f80
	.uleb128 0x28
	.long	0x7fa6
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x1f2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f96
	.uleb128 0x28
	.long	0x7fc1
	.byte	0x1
	.long	0x1f2
	.uleb128 0x16
	.long	0x4c0
	.uleb128 0x16
	.long	0x1f2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7fac
	.uleb128 0x28
	.long	0x7fdc
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x1f2
	.uleb128 0x16
	.long	0x1f2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7fc7
	.uleb128 0x28
	.long	0x800b
	.byte	0x1
	.long	0x1f2
	.uleb128 0x16
	.long	0x1f2
	.uleb128 0x16
	.long	0x1f2
	.uleb128 0x16
	.long	0x1f2
	.uleb128 0x16
	.long	0x4c0
	.uleb128 0x16
	.long	0x80a
	.uleb128 0x16
	.long	0x4c0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7fe2
	.uleb128 0x28
	.long	0x8021
	.byte	0x1
	.long	0x5ed8
	.uleb128 0x16
	.long	0x1f2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8011
	.uleb128 0x15
	.long	0x8033
	.byte	0x1
	.uleb128 0x16
	.long	0x1f2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8027
	.uleb128 0x28
	.long	0x8053
	.byte	0x1
	.long	0x1f2
	.uleb128 0x16
	.long	0x1f2
	.uleb128 0x16
	.long	0x1f2
	.uleb128 0x16
	.long	0x1f2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8039
	.uleb128 0x4
	.long	0x80c8
	.string	"lang_hooks_for_functions"
	.byte	0x10
	.byte	0x1b
	.byte	0x40
	.uleb128 0x7
	.string	"init"
	.byte	0x1b
	.byte	0x42
	.long	0x80d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"final"
	.byte	0x1b
	.byte	0x45
	.long	0x80d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"enter_nested"
	.byte	0x1b
	.byte	0x48
	.long	0x80d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"leave_nested"
	.byte	0x1b
	.byte	0x4b
	.long	0x80d4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x15
	.long	0x80d4
	.byte	0x1
	.uleb128 0x16
	.long	0x53af
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x80c8
	.uleb128 0x4
	.long	0x8125
	.string	"lang_hooks_for_tree_dump"
	.byte	0x8
	.byte	0x1b
	.byte	0x51
	.uleb128 0x7
	.string	"dump_tree"
	.byte	0x1b
	.byte	0x54
	.long	0x813a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_quals"
	.byte	0x1b
	.byte	0x57
	.long	0x8150
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x28
	.long	0x813a
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x4c0
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8125
	.uleb128 0x28
	.long	0x8150
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8140
	.uleb128 0x4
	.long	0x8243
	.string	"lang_hooks_for_types"
	.byte	0x20
	.byte	0x1b
	.byte	0x5d
	.uleb128 0x7
	.string	"make_type"
	.byte	0x1b
	.byte	0x60
	.long	0x8253
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_for_mode"
	.byte	0x1b
	.byte	0x64
	.long	0x826e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type_for_size"
	.byte	0x1b
	.byte	0x68
	.long	0x8289
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"unsigned_type"
	.byte	0x1b
	.byte	0x6c
	.long	0x829f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"signed_type"
	.byte	0x1b
	.byte	0x70
	.long	0x829f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"signed_or_unsigned_type"
	.byte	0x1b
	.byte	0x74
	.long	0x82ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"type_promotes_to"
	.byte	0x1b
	.byte	0x7a
	.long	0x829f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"incomplete_type_error"
	.byte	0x1b
	.byte	0x80
	.long	0x82d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x28
	.long	0x8253
	.byte	0x1
	.long	0x1e6
	.uleb128 0x16
	.long	0x17ae
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8243
	.uleb128 0x28
	.long	0x826e
	.byte	0x1
	.long	0x1e6
	.uleb128 0x16
	.long	0x831
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8259
	.uleb128 0x28
	.long	0x8289
	.byte	0x1
	.long	0x1e6
	.uleb128 0x16
	.long	0x3bd
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8274
	.uleb128 0x28
	.long	0x829f
	.byte	0x1
	.long	0x1e6
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x828f
	.uleb128 0x28
	.long	0x82ba
	.byte	0x1
	.long	0x1e6
	.uleb128 0x16
	.long	0x2e4
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x82a5
	.uleb128 0x15
	.long	0x82d1
	.byte	0x1
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x82c0
	.uleb128 0x4
	.long	0x83dd
	.string	"lang_hooks_for_decls"
	.byte	0x28
	.byte	0x1b
	.byte	0x86
	.uleb128 0x7
	.string	"pushlevel"
	.byte	0x1b
	.byte	0x89
	.long	0x817
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"poplevel"
	.byte	0x1b
	.byte	0x90
	.long	0x83f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"global_bindings_p"
	.byte	0x1b
	.byte	0x94
	.long	0x792c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"insert_block"
	.byte	0x1b
	.byte	0x99
	.long	0x6c0d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"set_block"
	.byte	0x1b
	.byte	0x9c
	.long	0x6c0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"pushdecl"
	.byte	0x1b
	.byte	0xa2
	.long	0x829f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"getdecls"
	.byte	0x1b
	.byte	0xa5
	.long	0x8403
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"warn_unused_global"
	.byte	0x1b
	.byte	0xa9
	.long	0x6bfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"final_write_globals"
	.byte	0x1b
	.byte	0xad
	.long	0x82b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"ok_for_sibcall"
	.byte	0x1b
	.byte	0xb0
	.long	0x6bfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x28
	.long	0x83f7
	.byte	0x1
	.long	0x1e6
	.uleb128 0x16
	.long	0x2e4
	.uleb128 0x16
	.long	0x2e4
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x83dd
	.uleb128 0x2b
	.byte	0x1
	.long	0x1e6
	.uleb128 0x3
	.byte	0x4
	.long	0x83fd
	.uleb128 0x26
	.long	0x882e
	.long	.LASF45
	.value	0x120
	.byte	0x1b
	.byte	0xb6
	.uleb128 0x1e
	.long	.LASF25
	.byte	0x1b
	.byte	0xb8
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"identifier_size"
	.byte	0x1b
	.byte	0xbc
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"init_options"
	.byte	0x1b
	.byte	0xc0
	.long	0x82b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"decode_option"
	.byte	0x1b
	.byte	0xca
	.long	0x8849
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"post_options"
	.byte	0x1b
	.byte	0xd6
	.long	0x7d40
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"init"
	.byte	0x1b
	.byte	0xde
	.long	0x7d6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"finish"
	.byte	0x1b
	.byte	0xe1
	.long	0x82b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"parse_file"
	.byte	0x1b
	.byte	0xe5
	.long	0x817
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"clear_binding_stack"
	.byte	0x1b
	.byte	0xe8
	.long	0x82b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"get_alias_set"
	.byte	0x1b
	.byte	0xec
	.long	0x885f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"expand_constant"
	.byte	0x1b
	.byte	0xf1
	.long	0x829f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"expand_expr"
	.byte	0x1b
	.byte	0xf5
	.long	0x8884
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"truthvalue_conversion"
	.byte	0x1b
	.value	0x102
	.long	0x829f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"insert_default_attributes"
	.byte	0x1b
	.value	0x106
	.long	0x6c0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"safe_from_p"
	.byte	0x1b
	.value	0x10f
	.long	0x889f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"finish_incomplete_decl"
	.byte	0x1b
	.value	0x113
	.long	0x6c0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"unsafe_for_reeval"
	.byte	0x1b
	.value	0x118
	.long	0x8150
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"mark_addressable"
	.byte	0x1b
	.value	0x11d
	.long	0x6bfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"staticp"
	.byte	0x1b
	.value	0x120
	.long	0x8150
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"dup_lang_specific_decl"
	.byte	0x1b
	.value	0x124
	.long	0x6c0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"unsave_expr_now"
	.byte	0x1b
	.value	0x129
	.long	0x829f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"maybe_build_cleanup"
	.byte	0x1b
	.value	0x12d
	.long	0x829f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"set_decl_assembler_name"
	.byte	0x1b
	.value	0x134
	.long	0x6c0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"can_use_bit_fields_p"
	.byte	0x1b
	.value	0x138
	.long	0x7d40
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"honor_readonly"
	.byte	0x1b
	.value	0x13b
	.long	0x5ed8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"print_statistics"
	.byte	0x1b
	.value	0x13f
	.long	0x82b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"print_xnode"
	.byte	0x1b
	.value	0x143
	.long	0x7d72
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"print_decl"
	.byte	0x1b
	.value	0x147
	.long	0x7d72
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"print_type"
	.byte	0x1b
	.value	0x148
	.long	0x7d72
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"print_identifier"
	.byte	0x1b
	.value	0x149
	.long	0x7d72
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"decl_printable_name"
	.byte	0x1b
	.value	0x151
	.long	0x88ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"print_error_function"
	.byte	0x1b
	.value	0x154
	.long	0x88ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"expr_size"
	.byte	0x1b
	.value	0x15b
	.long	0x829f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x22
	.long	.LASF43
	.byte	0x1b
	.value	0x162
	.long	0x7cb3
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xe
	.string	"common_attribute_table"
	.byte	0x1b
	.value	0x163
	.long	0x7cb3
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xe
	.string	"format_attribute_table"
	.byte	0x1b
	.value	0x164
	.long	0x7cb3
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x22
	.long	.LASF27
	.byte	0x1b
	.value	0x167
	.long	0x8059
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"tree_inlining"
	.byte	0x1b
	.value	0x169
	.long	0x7daa
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"tree_dump"
	.byte	0x1b
	.value	0x16b
	.long	0x80da
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"decls"
	.byte	0x1b
	.value	0x16d
	.long	0x82d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"types"
	.byte	0x1b
	.value	0x16f
	.long	0x8156
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0x0
	.uleb128 0x28
	.long	0x8843
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x2e4
	.uleb128 0x16
	.long	0x8843
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c2
	.uleb128 0x3
	.byte	0x4
	.long	0x882e
	.uleb128 0x28
	.long	0x885f
	.byte	0x1
	.long	0x459
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x884f
	.uleb128 0x28
	.long	0x8884
	.byte	0x1
	.long	0x9e
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x9e
	.uleb128 0x16
	.long	0x831
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8865
	.uleb128 0x28
	.long	0x889f
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x9e
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x888a
	.uleb128 0x28
	.long	0x88ba
	.byte	0x1
	.long	0x2d1
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x88a5
	.uleb128 0x15
	.long	0x88d1
	.byte	0x1
	.uleb128 0x16
	.long	0x88d1
	.uleb128 0x16
	.long	0x2d1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x88d7
	.uleb128 0x21
	.string	"diagnostic_context"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x88c0
	.uleb128 0x14
	.long	0x8923
	.long	.LASF46
	.byte	0x8
	.byte	0x1
	.byte	0x41
	.uleb128 0x7
	.string	"hard_reg"
	.byte	0x1
	.byte	0x42
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"pseudo"
	.byte	0x1
	.byte	0x43
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1f
	.long	.LASF46
	.byte	0x1
	.byte	0x44
	.long	0x88f2
	.uleb128 0x3
	.byte	0x4
	.long	0x8923
	.uleb128 0x2c
	.long	0x8987
	.byte	0x1
	.string	"get_label_from_map"
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.long	0x9e
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2d
	.string	"map"
	.byte	0x1
	.byte	0x70
	.long	0x8987
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.byte	0x71
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.byte	0x73
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6c59
	.uleb128 0x2f
	.long	0x89f3
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.long	0x5ed8
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x30
	.long	.LASF34
	.byte	0x1
	.byte	0x7f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2e
	.string	"a"
	.byte	0x1
	.byte	0x83
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x32
	.long	.LASF25
	.byte	0x1
	.byte	0x87
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0x88
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x8aa2
	.byte	0x1
	.string	"function_cannot_inline_p"
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.long	0x2d1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x30
	.long	.LASF34
	.byte	0x1
	.byte	0x9a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF47
	.byte	0x1
	.byte	0x9c
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"last"
	.byte	0x1
	.byte	0x9d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.string	"max_insns"
	.byte	0x1
	.byte	0xa5
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"ninsns"
	.byte	0x1
	.byte	0xaa
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.string	"parms"
	.byte	0x1
	.byte	0xab
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x33
	.string	"result"
	.byte	0x1
	.value	0x105
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x8b51
	.string	"initialize_for_inline"
	.byte	0x1
	.value	0x121
	.byte	0x1
	.long	0x19e
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x35
	.long	.LASF34
	.byte	0x1
	.value	0x120
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x122
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF48
	.byte	0x1
	.value	0x123
	.long	0x19e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"parms"
	.byte	0x1
	.value	0x124
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x12e
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x33
	.string	"preal"
	.byte	0x1
	.value	0x13d
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"pimag"
	.byte	0x1
	.value	0x13e
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x8bee
	.byte	0x1
	.string	"copy_decl_for_inlining"
	.byte	0x1
	.value	0x157
	.byte	0x1
	.long	0x1f2
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x35
	.long	.LASF2
	.byte	0x1
	.value	0x154
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"from_fn"
	.byte	0x1
	.value	0x155
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"to_fn"
	.byte	0x1
	.value	0x156
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF49
	.byte	0x1
	.value	0x158
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x33
	.string	"type"
	.byte	0x1
	.value	0x15d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.long	.LASF50
	.byte	0x1
	.value	0x15e
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x8c64
	.byte	0x1
	.string	"save_for_inline"
	.byte	0x1
	.value	0x1be
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x35
	.long	.LASF34
	.byte	0x1
	.value	0x1bd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF47
	.byte	0x1
	.value	0x1bf
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"argvec"
	.byte	0x1
	.value	0x1c0
	.long	0x19e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	.LASF51
	.byte	0x1
	.value	0x1c1
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3a
	.long	.LASF52
	.long	0xa3e1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14805
	.byte	0x0
	.uleb128 0x3b
	.long	0x8cbf
	.string	"save_parm_insns"
	.byte	0x1
	.value	0x20c
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x35
	.long	.LASF47
	.byte	0x1
	.value	0x20a
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF51
	.byte	0x1
	.value	0x20b
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x220
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x8d18
	.string	"note_modified_parmregs"
	.byte	0x1
	.value	0x231
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x38
	.string	"reg"
	.byte	0x1
	.value	0x22e
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"x"
	.byte	0x1
	.value	0x22f
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"data"
	.byte	0x1
	.value	0x230
	.long	0x4c0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x3b
	.long	0x8db6
	.string	"process_reg_param"
	.byte	0x1
	.value	0x252
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x38
	.string	"map"
	.byte	0x1
	.value	0x250
	.long	0x8987
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"loc"
	.byte	0x1
	.value	0x251
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF49
	.byte	0x1
	.value	0x251
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x36
	.long	.LASF53
	.byte	0x1
	.value	0x259
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x25c
	.long	0x8db6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x36
	.long	.LASF54
	.byte	0x1
	.value	0x25c
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5f1c
	.uleb128 0x34
	.long	0x8e39
	.string	"compare_blocks"
	.byte	0x1
	.value	0x26a
	.byte	0x1
	.long	0x2e4
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x38
	.string	"v1"
	.byte	0x1
	.value	0x268
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"v2"
	.byte	0x1
	.value	0x269
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"b1"
	.byte	0x1
	.value	0x26b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"b2"
	.byte	0x1
	.value	0x26c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"p1"
	.byte	0x1
	.value	0x26d
	.long	0x4c2
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.string	"p2"
	.byte	0x1
	.value	0x26e
	.long	0x4c2
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x34
	.long	0x8eb2
	.string	"find_block"
	.byte	0x1
	.value	0x27c
	.byte	0x1
	.long	0x2e4
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x38
	.string	"v1"
	.byte	0x1
	.value	0x27a
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"v2"
	.byte	0x1
	.value	0x27b
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"b1"
	.byte	0x1
	.value	0x27d
	.long	0x8eb2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"b2"
	.byte	0x1
	.value	0x27e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"p1"
	.byte	0x1
	.value	0x27f
	.long	0x4c2
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.string	"p2"
	.byte	0x1
	.value	0x280
	.long	0x4c2
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8eb8
	.uleb128 0xb
	.long	0x1f8
	.uleb128 0x37
	.long	0x9386
	.byte	0x1
	.string	"expand_inline_function"
	.byte	0x1
	.value	0x29c
	.byte	0x1
	.long	0x9e
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x35
	.long	.LASF34
	.byte	0x1
	.value	0x297
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"parms"
	.byte	0x1
	.value	0x297
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"target"
	.byte	0x1
	.value	0x298
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"ignore"
	.byte	0x1
	.value	0x299
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.string	"type"
	.byte	0x1
	.value	0x29a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x38
	.string	"structure_value_addr"
	.byte	0x1
	.value	0x29b
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x33
	.string	"inlining_previous"
	.byte	0x1
	.value	0x29d
	.long	0x53af
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x33
	.string	"inl_f"
	.byte	0x1
	.value	0x29e
	.long	0x53af
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x33
	.string	"formal"
	.byte	0x1
	.value	0x29f
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x33
	.string	"actual"
	.byte	0x1
	.value	0x29f
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x33
	.string	"block"
	.byte	0x1
	.value	0x29f
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x33
	.string	"parm_insns"
	.byte	0x1
	.value	0x2a0
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x36
	.long	.LASF32
	.byte	0x1
	.value	0x2a1
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x33
	.string	"arg_trees"
	.byte	0x1
	.value	0x2a4
	.long	0x5f05
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x33
	.string	"arg_vals"
	.byte	0x1
	.value	0x2a5
	.long	0x1764
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x33
	.string	"max_regno"
	.byte	0x1
	.value	0x2a6
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x2a7
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x33
	.string	"min_labelno"
	.byte	0x1
	.value	0x2a8
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x33
	.string	"max_labelno"
	.byte	0x1
	.value	0x2a9
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x33
	.string	"nargs"
	.byte	0x1
	.value	0x2aa
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x33
	.string	"loc"
	.byte	0x1
	.value	0x2ab
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x33
	.string	"stack_save"
	.byte	0x1
	.value	0x2ac
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x36
	.long	.LASF53
	.byte	0x1
	.value	0x2ad
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x33
	.string	"map"
	.byte	0x1
	.value	0x2ae
	.long	0x8987
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x36
	.long	.LASF48
	.byte	0x1
	.value	0x2af
	.long	0x19e
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x36
	.long	.LASF55
	.byte	0x1
	.value	0x2b0
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x33
	.string	"inl_max_uid"
	.byte	0x1
	.value	0x2b1
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x36
	.long	.LASF56
	.byte	0x1
	.value	0x2b2
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.string	"real_label_map"
	.byte	0x1
	.value	0x2b6
	.long	0x1764
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x3c
	.long	0x915a
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x33
	.string	"arg"
	.byte	0x1
	.value	0x2ce
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x2cf
	.long	0x831
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x0
	.uleb128 0x3c
	.long	0x91e9
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x33
	.string	"arg"
	.byte	0x1
	.value	0x2f4
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x2f6
	.long	0x831
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x36
	.long	.LASF50
	.byte	0x1
	.value	0x2f7
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3c
	.long	0x91bc
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x33
	.string	"stack_slot"
	.byte	0x1
	.value	0x303
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.uleb128 0x31
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x36
	.long	.LASF38
	.byte	0x1
	.value	0x30d
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x33
	.string	"pmode"
	.byte	0x1
	.value	0x30e
	.long	0x831
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x9208
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x33
	.string	"note"
	.byte	0x1
	.value	0x38a
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x3c
	.long	0x92b5
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x36
	.long	.LASF49
	.byte	0x1
	.value	0x39f
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3c
	.long	0x925b
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x3b2
	.long	0x8db6
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x31
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x36
	.long	.LASF54
	.byte	0x1
	.value	0x3b2
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x33
	.string	"locreal"
	.byte	0x1
	.value	0x3c8
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"locimag"
	.byte	0x1
	.value	0x3c9
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"copyreal"
	.byte	0x1
	.value	0x3ca
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"copyimag"
	.byte	0x1
	.value	0x3cb
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x92d3
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x33
	.string	"note"
	.byte	0x1
	.value	0x3e6
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x3c
	.long	0x9307
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x433
	.long	0x8db6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x36
	.long	.LASF54
	.byte	0x1
	.value	0x433
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x9349
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x36
	.long	.LASF57
	.byte	0x1
	.value	0x44b
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF58
	.byte	0x1
	.value	0x450
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"reg_to_map"
	.byte	0x1
	.value	0x452
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x3c
	.long	0x9375
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x36
	.long	.LASF57
	.byte	0x1
	.value	0x48a
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.long	.LASF58
	.byte	0x1
	.value	0x48b
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x3a
	.long	.LASF52
	.long	0xa3dc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15076
	.byte	0x0
	.uleb128 0x3b
	.long	0x9544
	.string	"copy_insn_list"
	.byte	0x1
	.value	0x536
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x533
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"map"
	.byte	0x1
	.value	0x534
	.long	0x8987
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF55
	.byte	0x1
	.value	0x535
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x537
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF47
	.byte	0x1
	.value	0x538
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x36
	.long	.LASF53
	.byte	0x1
	.value	0x539
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"static_chain_mem"
	.byte	0x1
	.value	0x53d
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3c
	.long	0x9533
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x36
	.long	.LASF49
	.byte	0x1
	.value	0x546
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"pattern"
	.byte	0x1
	.value	0x546
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"set"
	.byte	0x1
	.value	0x546
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3c
	.long	0x947d
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x33
	.string	"new_set"
	.byte	0x1
	.value	0x560
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x3c
	.long	0x949e
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x33
	.string	"newdest"
	.byte	0x1
	.value	0x5b0
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x3c
	.long	0x94bc
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x36
	.long	.LASF7
	.byte	0x1
	.value	0x5c1
	.long	0x459
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x3c
	.long	0x950e
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x33
	.string	"sequence"
	.byte	0x1
	.value	0x62c
	.long	0x9544
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.string	"tail_label"
	.byte	0x1
	.value	0x62d
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x33
	.string	"seq"
	.byte	0x1
	.value	0x631
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x33
	.string	"mapped_block_p"
	.byte	0x1
	.value	0x68b
	.long	0x5f05
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	.LASF52
	.long	0xa3c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15908
	.byte	0x0
	.uleb128 0x10
	.long	0x9554
	.long	0x9e
	.uleb128 0x11
	.long	0x3d4
	.byte	0x2
	.byte	0x0
	.uleb128 0x3b
	.long	0x960e
	.string	"copy_insn_notes"
	.byte	0x1
	.value	0x6b7
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x6b4
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"map"
	.byte	0x1
	.value	0x6b5
	.long	0x8987
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF56
	.byte	0x1
	.value	0x6b6
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF47
	.byte	0x1
	.value	0x6b8
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"new_insn"
	.byte	0x1
	.value	0x6b8
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3c
	.long	0x95f6
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x36
	.long	.LASF31
	.byte	0x1
	.value	0x6c6
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"note"
	.byte	0x1
	.value	0x6c6
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x31
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x6df
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x96b5
	.string	"integrate_parm_decls"
	.byte	0x1
	.value	0x6f2
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x38
	.string	"args"
	.byte	0x1
	.value	0x6ef
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"map"
	.byte	0x1
	.value	0x6f0
	.long	0x8987
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF48
	.byte	0x1
	.value	0x6f1
	.long	0x19e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"tail"
	.byte	0x1
	.value	0x6f3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x6f4
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x6f8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.string	"new_decl_rtl"
	.byte	0x1
	.value	0x6fa
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x9760
	.string	"integrate_decl_tree"
	.byte	0x1
	.value	0x715
	.byte	0x1
	.long	0x1e6
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x38
	.string	"let"
	.byte	0x1
	.value	0x713
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"map"
	.byte	0x1
	.value	0x714
	.long	0x8987
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x716
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"new_block"
	.byte	0x1
	.value	0x717
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.long	.LASF31
	.byte	0x1
	.value	0x718
	.long	0x5f05
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x33
	.string	"d"
	.byte	0x1
	.value	0x720
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x33
	.string	"r"
	.byte	0x1
	.value	0x726
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x9a37
	.byte	0x1
	.string	"copy_rtx_and_substitute"
	.byte	0x1
	.value	0x765
	.byte	0x1
	.long	0x9e
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x38
	.string	"orig"
	.byte	0x1
	.value	0x762
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"map"
	.byte	0x1
	.value	0x763
	.long	0x8987
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"for_lhs"
	.byte	0x1
	.value	0x764
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF49
	.byte	0x1
	.value	0x766
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x36
	.long	.LASF53
	.byte	0x1
	.value	0x766
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x767
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x767
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.string	"code"
	.byte	0x1
	.value	0x768
	.long	0xb29
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x769
	.long	0x831
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x36
	.long	.LASF59
	.byte	0x1
	.value	0x76a
	.long	0x2d1
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0x76b
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3c
	.long	0x98b1
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x33
	.string	"loc"
	.byte	0x1
	.value	0x78e
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x33
	.string	"seq"
	.byte	0x1
	.value	0x78e
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x36
	.long	.LASF8
	.byte	0x1
	.value	0x78f
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x31
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x7ac
	.long	0x8db6
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x36
	.long	.LASF54
	.byte	0x1
	.value	0x7ac
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x9920
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x33
	.string	"loc"
	.byte	0x1
	.value	0x7ba
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.string	"seq"
	.byte	0x1
	.value	0x7ba
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x36
	.long	.LASF8
	.byte	0x1
	.value	0x7bb
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x7cd
	.long	0x8db6
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x36
	.long	.LASF54
	.byte	0x1
	.value	0x7cd
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x9972
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x33
	.string	"f"
	.byte	0x1
	.value	0x875
	.long	0x53af
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x36
	.long	.LASF61
	.byte	0x1
	.value	0x876
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF62
	.byte	0x1
	.value	0x877
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x36
	.long	.LASF53
	.byte	0x1
	.value	0x87a
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x998e
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x33
	.string	"d"
	.byte	0x1
	.value	0x8a5
	.long	0x41db
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.byte	0x0
	.uleb128 0x3c
	.long	0x99ab
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x36
	.long	.LASF49
	.byte	0x1
	.value	0x8d5
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x3c
	.long	0x99fa
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x33
	.string	"equiv_reg"
	.byte	0x1
	.value	0x8f1
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"equiv_loc"
	.byte	0x1
	.value	0x8f2
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"loc_offset"
	.byte	0x1
	.value	0x8f3
	.long	0x459
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.byte	0x0
	.uleb128 0x3c
	.long	0x9a26
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x36
	.long	.LASF62
	.byte	0x1
	.value	0x90f
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF61
	.byte	0x1
	.value	0x911
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x3a
	.long	.LASF52
	.long	0xa3b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16453
	.byte	0x0
	.uleb128 0x39
	.long	0x9aed
	.byte	0x1
	.string	"try_constants"
	.byte	0x1
	.value	0x987
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x35
	.long	.LASF47
	.byte	0x1
	.value	0x985
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"map"
	.byte	0x1
	.value	0x986
	.long	0x8987
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x988
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0x9a1
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3c
	.long	0x9abb
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x36
	.long	.LASF54
	.byte	0x1
	.value	0x9a3
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x31
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x9aa
	.long	0x8db6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x36
	.long	.LASF54
	.byte	0x1
	.value	0x9aa
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x9d37
	.string	"subst_constants"
	.byte	0x1
	.value	0x9cb
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x38
	.string	"loc"
	.byte	0x1
	.value	0x9c7
	.long	0x1764
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF47
	.byte	0x1
	.value	0x9c8
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"map"
	.byte	0x1
	.value	0x9c9
	.long	0x8987
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"memonly"
	.byte	0x1
	.value	0x9ca
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x9cc
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x9cd
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x9cd
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x33
	.string	"code"
	.byte	0x1
	.value	0x9ce
	.long	0xb29
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x36
	.long	.LASF59
	.byte	0x1
	.value	0x9cf
	.long	0x2d1
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.string	"num_changes"
	.byte	0x1
	.value	0x9d0
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.string	"new"
	.byte	0x1
	.value	0x9d1
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.string	"op0_mode"
	.byte	0x1
	.value	0x9d2
	.long	0x831
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3c
	.long	0x9c06
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0x9f6
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x9f7
	.long	0x8db6
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x3c
	.long	0x9c35
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x33
	.string	"inner"
	.byte	0x1
	.value	0xa0a
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x33
	.string	"new"
	.byte	0x1
	.value	0xa0b
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x3c
	.long	0x9cb2
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x33
	.string	"dest_loc"
	.byte	0x1
	.value	0xa2e
	.long	0x1764
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"dest"
	.byte	0x1
	.value	0xa2f
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"src"
	.byte	0x1
	.value	0xa30
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"tem"
	.byte	0x1
	.value	0xa30
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF37
	.byte	0x1
	.value	0xa31
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x33
	.string	"src_copy"
	.byte	0x1
	.value	0xa7b
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x9ccf
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x33
	.string	"tem"
	.byte	0x1
	.value	0xac0
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x3c
	.long	0x9cf0
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x33
	.string	"op_mode"
	.byte	0x1
	.value	0xad2
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x3c
	.long	0x9d26
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x33
	.string	"op0"
	.byte	0x1
	.value	0xaf8
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x36
	.long	.LASF53
	.byte	0x1
	.value	0xb02
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	.LASF52
	.long	0xa3ad
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17319
	.byte	0x0
	.uleb128 0x3b
	.long	0x9de1
	.string	"mark_stores"
	.byte	0x1
	.value	0xb21
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x38
	.string	"dest"
	.byte	0x1
	.value	0xb1e
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"x"
	.byte	0x1
	.value	0xb1f
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"data"
	.byte	0x1
	.value	0xb20
	.long	0x4c0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0xb22
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0xb23
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x33
	.string	"uregno"
	.byte	0x1
	.value	0xb37
	.long	0x3bd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"last_reg"
	.byte	0x1
	.value	0xb38
	.long	0x3bd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xb3a
	.long	0x3bd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x9e53
	.string	"set_block_origin_self"
	.byte	0x1
	.value	0xb53
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x38
	.string	"stmt"
	.byte	0x1
	.value	0xb52
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3c
	.long	0x9e39
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x36
	.long	.LASF63
	.byte	0x1
	.value	0xb59
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x31
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x36
	.long	.LASF64
	.byte	0x1
	.value	0xb62
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x9ea7
	.byte	0x1
	.string	"set_decl_origin_self"
	.byte	0x1
	.value	0xb7a
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x35
	.long	.LASF2
	.byte	0x1
	.value	0xb79
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x33
	.string	"arg"
	.byte	0x1
	.value	0xb80
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x9f17
	.string	"set_block_abstract_flags"
	.byte	0x1
	.value	0xb94
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x38
	.string	"stmt"
	.byte	0x1
	.value	0xb92
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"setting"
	.byte	0x1
	.value	0xb93
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF63
	.byte	0x1
	.value	0xb95
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.long	.LASF64
	.byte	0x1
	.value	0xb96
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x9f81
	.byte	0x1
	.string	"set_decl_abstract_flags"
	.byte	0x1
	.value	0xbaf
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x35
	.long	.LASF2
	.byte	0x1
	.value	0xbad
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"setting"
	.byte	0x1
	.value	0xbae
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x33
	.string	"arg"
	.byte	0x1
	.value	0xbb3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xa003
	.byte	0x1
	.string	"output_inline_function"
	.byte	0x1
	.value	0xbc6
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x35
	.long	.LASF34
	.byte	0x1
	.value	0xbc5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"old_write_symbols"
	.byte	0x1
	.value	0xbc7
	.long	0x692c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"old_debug_hooks"
	.byte	0x1
	.value	0xbc8
	.long	0xa003
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"f"
	.byte	0x1
	.value	0xbc9
	.long	0x53af
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.long	0xa008
	.uleb128 0x3
	.byte	0x4
	.long	0xa00e
	.uleb128 0xb
	.long	0x69b6
	.uleb128 0x37
	.long	0xa081
	.byte	0x1
	.string	"get_hard_reg_initial_reg"
	.byte	0x1
	.value	0xbf4
	.byte	0x1
	.long	0x9e
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x38
	.string	"fun"
	.byte	0x1
	.value	0xbf2
	.long	0x53af
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"reg"
	.byte	0x1
	.value	0xbf3
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"ivs"
	.byte	0x1
	.value	0xbf5
	.long	0x729a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xbf6
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0xa0f4
	.byte	0x1
	.string	"has_func_hard_reg_initial_val"
	.byte	0x1
	.value	0xc06
	.byte	0x1
	.long	0x9e
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x38
	.string	"fun"
	.byte	0x1
	.value	0xc04
	.long	0x53af
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"reg"
	.byte	0x1
	.value	0xc05
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"ivs"
	.byte	0x1
	.value	0xc07
	.long	0x729a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xc08
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0xa168
	.byte	0x1
	.string	"get_func_hard_reg_initial_val"
	.byte	0x1
	.value	0xc18
	.byte	0x1
	.long	0x9e
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x38
	.string	"fun"
	.byte	0x1
	.value	0xc16
	.long	0x53af
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"reg"
	.byte	0x1
	.value	0xc17
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"ivs"
	.byte	0x1
	.value	0xc19
	.long	0x729a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"rv"
	.byte	0x1
	.value	0xc1a
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x37
	.long	0xa1ba
	.byte	0x1
	.string	"get_hard_reg_initial_val"
	.byte	0x1
	.value	0xc3b
	.byte	0x1
	.long	0x9e
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0xc39
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF60
	.byte	0x1
	.value	0xc3a
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x37
	.long	0xa20c
	.byte	0x1
	.string	"has_hard_reg_initial_val"
	.byte	0x1
	.value	0xc43
	.byte	0x1
	.long	0x9e
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0xc41
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF60
	.byte	0x1
	.value	0xc42
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3b
	.long	0xa289
	.string	"setup_initial_hard_reg_value_integration"
	.byte	0x1
	.value	0xc4b
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x38
	.string	"inl_f"
	.byte	0x1
	.value	0xc49
	.long	0x53af
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"remap"
	.byte	0x1
	.value	0xc4a
	.long	0x8987
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"ivs"
	.byte	0x1
	.value	0xc4c
	.long	0x729a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xc4d
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x39
	.long	0xa2e3
	.byte	0x1
	.string	"emit_initial_value_sets"
	.byte	0x1
	.value	0xc5a
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x33
	.string	"ivs"
	.byte	0x1
	.value	0xc5b
	.long	0x729a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xc5c
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"seq"
	.byte	0x1
	.value	0xc5d
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xa332
	.byte	0x1
	.string	"allocate_initial_values"
	.byte	0x1
	.value	0xc70
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x38
	.string	"reg_equiv_memory_loc"
	.byte	0x1
	.value	0xc6f
	.long	0x1764
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x3d
	.long	0xa398
	.byte	0x1
	.string	"gt_ggc_mx_initial_value_struct"
	.byte	0x2
	.byte	0x1a
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x2d
	.string	"x_p"
	.byte	0x2
	.byte	0x19
	.long	0x4c0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"x"
	.byte	0x2
	.byte	0x1b
	.long	0xa398
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x2e
	.string	"i1"
	.byte	0x2
	.byte	0x1f
	.long	0x3f3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x729a
	.uleb128 0x10
	.long	0xa3ad
	.long	0x2dc
	.uleb128 0x11
	.long	0x3d4
	.byte	0xf
	.byte	0x0
	.uleb128 0xb
	.long	0xa39d
	.uleb128 0xb
	.long	0x7f5
	.uleb128 0x10
	.long	0xa3c7
	.long	0x2dc
	.uleb128 0x11
	.long	0x3d4
	.byte	0xe
	.byte	0x0
	.uleb128 0xb
	.long	0xa3b7
	.uleb128 0x10
	.long	0xa3dc
	.long	0x2dc
	.uleb128 0x11
	.long	0x3d4
	.byte	0x16
	.byte	0x0
	.uleb128 0xb
	.long	0xa3cc
	.uleb128 0xb
	.long	0xa39d
	.uleb128 0x2e
	.string	"inlining"
	.byte	0x1
	.byte	0x67
	.long	0x53af
	.byte	0x5
	.byte	0x3
	.long	inlining
	.uleb128 0x33
	.string	"parmdecl_map"
	.byte	0x1
	.value	0x116
	.long	0x5f05
	.byte	0x5
	.byte	0x3
	.long	parmdecl_map
	.uleb128 0x33
	.string	"in_nonparm_insns"
	.byte	0x1
	.value	0x119
	.long	0x2e4
	.byte	0x5
	.byte	0x3
	.long	in_nonparm_insns
	.uleb128 0x33
	.string	"old_cfun"
	.byte	0x1
	.value	0xbc1
	.long	0x53af
	.byte	0x5
	.byte	0x3
	.long	old_cfun
	.uleb128 0x3e
	.string	"target_flags"
	.byte	0xc
	.byte	0x21
	.long	0x2e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"mips_abi"
	.byte	0xc
	.value	0x3ca
	.long	0x2e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xa486
	.long	0xa7a
	.uleb128 0x11
	.long	0x3d4
	.byte	0x35
	.byte	0x0
	.uleb128 0x40
	.long	.LASF5
	.byte	0x5
	.byte	0x34
	.long	0xa493
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xa476
	.uleb128 0x10
	.long	0xa4a8
	.long	0x401
	.uleb128 0x11
	.long	0x3d4
	.byte	0x35
	.byte	0x0
	.uleb128 0x3e
	.string	"mode_size"
	.byte	0x5
	.byte	0x59
	.long	0xa4bb
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xa498
	.uleb128 0x10
	.long	0xa4d0
	.long	0x412
	.uleb128 0x11
	.long	0x3d4
	.byte	0x35
	.byte	0x0
	.uleb128 0x3e
	.string	"mode_bitsize"
	.byte	0x5
	.byte	0x69
	.long	0xa4e6
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xa4c0
	.uleb128 0x10
	.long	0xa4fb
	.long	0x401
	.uleb128 0x11
	.long	0x3d4
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3e
	.string	"rtx_length"
	.byte	0x4
	.byte	0x36
	.long	0xa50f
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xa4eb
	.uleb128 0x10
	.long	0xa524
	.long	0x2d1
	.uleb128 0x11
	.long	0x3d4
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3e
	.string	"rtx_format"
	.byte	0x4
	.byte	0x3c
	.long	0xa538
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xa514
	.uleb128 0x10
	.long	0xa54d
	.long	0x2dc
	.uleb128 0x11
	.long	0x3d4
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3e
	.string	"rtx_class"
	.byte	0x4
	.byte	0x3f
	.long	0xa560
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xa53d
	.uleb128 0x3f
	.string	"rtx_equal_function_value_matters"
	.byte	0x4
	.value	0x53b
	.long	0x2e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xa5a0
	.long	0x9e
	.uleb128 0x11
	.long	0x3d4
	.byte	0x80
	.byte	0x0
	.uleb128 0x3f
	.string	"const_int_rtx"
	.byte	0x4
	.value	0x69e
	.long	0xa590
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xa5c8
	.long	0x9e
	.uleb128 0x11
	.long	0x3d4
	.byte	0xa
	.byte	0x0
	.uleb128 0x3f
	.string	"global_rtl"
	.byte	0x4
	.value	0x6df
	.long	0xa5b8
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"static_chain_incoming_rtx"
	.byte	0x4
	.value	0x6f1
	.long	0x9e
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xa611
	.long	0x1e6
	.uleb128 0x11
	.long	0x3d4
	.byte	0x3f
	.byte	0x0
	.uleb128 0x3f
	.string	"global_trees"
	.byte	0x7
	.value	0x8ee
	.long	0xa601
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"input_filename"
	.byte	0x7
	.value	0xbf6
	.long	0x2d1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"lineno"
	.byte	0x7
	.value	0xbf9
	.long	0x2e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"current_function_decl"
	.byte	0x7
	.value	0xc07
	.long	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"write_symbols"
	.byte	0x14
	.byte	0x2e
	.long	0x692c
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"optimize_size"
	.byte	0x14
	.byte	0x45
	.long	0x2e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"flag_test_coverage"
	.byte	0x14
	.byte	0xce
	.long	0x2e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"flag_no_inline"
	.byte	0x14
	.value	0x198
	.long	0x2e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"debug_hooks"
	.byte	0x15
	.byte	0x6a
	.long	0xa008
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"do_nothing_debug_hooks"
	.byte	0x15
	.byte	0x7f
	.long	0xa00e
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"global_const_equiv_varray"
	.byte	0x1
	.value	0x23d
	.long	0x649d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	global_const_equiv_varray
	.uleb128 0x3f
	.string	"cfun"
	.byte	0xb
	.value	0x202
	.long	0x53af
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"inline_function_decl"
	.byte	0xb
	.value	0x245
	.long	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"compiler_params"
	.byte	0x16
	.byte	0x3a
	.long	0xa77a
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x7322
	.uleb128 0x3f
	.string	"targetm"
	.byte	0x17
	.value	0x12d
	.long	0x79d6
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.long	.LASF45
	.byte	0x1b
	.value	0x176
	.long	0xa7a0
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x8409
	.uleb128 0x10
	.long	0xa7b5
	.long	0x732d
	.uleb128 0x11
	.long	0x3d4
	.byte	0x1
	.byte	0x0
	.uleb128 0x43
	.string	"gt_ggc_r_gt_integrate_h"
	.byte	0x2
	.byte	0x2b
	.long	0xa7db
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_r_gt_integrate_h
	.uleb128 0xb
	.long	0xa7a5
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
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
	.long	0x25d
	.value	0x2
	.long	.Ldebug_info0
	.long	0xa7e1
	.long	0x8934
	.string	"get_label_from_map"
	.long	0x898d
	.string	"function_attribute_inlinable_p"
	.long	0x89f3
	.string	"function_cannot_inline_p"
	.long	0x8b51
	.string	"copy_decl_for_inlining"
	.long	0x8bee
	.string	"save_for_inline"
	.long	0x8ebd
	.string	"expand_inline_function"
	.long	0x9760
	.string	"copy_rtx_and_substitute"
	.long	0x9a37
	.string	"try_constants"
	.long	0x9e53
	.string	"set_decl_origin_self"
	.long	0x9f17
	.string	"set_decl_abstract_flags"
	.long	0x9f81
	.string	"output_inline_function"
	.long	0xa013
	.string	"get_hard_reg_initial_reg"
	.long	0xa081
	.string	"has_func_hard_reg_initial_val"
	.long	0xa0f4
	.string	"get_func_hard_reg_initial_val"
	.long	0xa168
	.string	"get_hard_reg_initial_val"
	.long	0xa1ba
	.string	"has_hard_reg_initial_val"
	.long	0xa289
	.string	"emit_initial_value_sets"
	.long	0xa2e3
	.string	"allocate_initial_values"
	.long	0xa332
	.string	"gt_ggc_mx_initial_value_struct"
	.long	0xa70a
	.string	"global_const_equiv_varray"
	.long	0xa7b5
	.string	"gt_ggc_r_gt_integrate_h"
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
.LASF50:
	.string	"invisiref"
.LASF60:
	.string	"regno"
.LASF25:
	.string	"name"
.LASF61:
	.string	"constant"
.LASF34:
	.string	"fndecl"
.LASF10:
	.string	"lang_flag_0"
.LASF11:
	.string	"lang_flag_1"
.LASF12:
	.string	"lang_flag_2"
.LASF16:
	.string	"lang_flag_6"
.LASF17:
	.string	"lang_flag_7"
.LASF51:
	.string	"first_nonparm_insn"
.LASF8:
	.string	"size"
.LASF6:
	.string	"mem_attrs"
.LASF54:
	.string	"is_global"
.LASF37:
	.string	"compare_mode"
.LASF1:
	.string	"common"
.LASF26:
	.string	"lang_specific"
.LASF40:
	.string	"sequence_rtl_expr"
.LASF55:
	.string	"static_chain_value"
.LASF39:
	.string	"sequence_stack"
.LASF29:
	.string	"function_frequency"
.LASF13:
	.string	"lang_flag_3"
.LASF27:
	.string	"function"
.LASF35:
	.string	"regno_pointer_align"
.LASF31:
	.string	"next"
.LASF3:
	.string	"unsigned int"
.LASF63:
	.string	"local_decl"
.LASF20:
	.string	"abstract_origin"
.LASF5:
	.string	"mode_class"
.LASF23:
	.string	"pointer_depth"
.LASF64:
	.string	"subblock"
.LASF24:
	.string	"user_align"
.LASF33:
	.string	"num_entries"
.LASF44:
	.string	"function_attribute_inlinable_p"
.LASF45:
	.string	"lang_hooks"
.LASF21:
	.string	"size_unit"
.LASF58:
	.string	"arriving_mode"
.LASF43:
	.string	"attribute_table"
.LASF53:
	.string	"temp"
.LASF28:
	.string	"args_size"
.LASF49:
	.string	"copy"
.LASF47:
	.string	"insn"
.LASF59:
	.string	"format_ptr"
.LASF32:
	.string	"insns"
.LASF14:
	.string	"lang_flag_4"
.LASF15:
	.string	"lang_flag_5"
.LASF19:
	.string	"abstract_flag"
.LASF46:
	.string	"initial_value_pair"
.LASF42:
	.string	"param_info"
.LASF38:
	.string	"unsignedp"
.LASF18:
	.string	"ht_identifier"
.LASF7:
	.string	"offset"
.LASF52:
	.string	"__FUNCTION__"
.LASF9:
	.string	"built_in_class"
.LASF30:
	.string	"basic_block"
.LASF48:
	.string	"arg_vector"
.LASF36:
	.string	"x_regno_reg_rtx"
.LASF0:
	.string	"mode"
.LASF62:
	.string	"const_mode"
.LASF57:
	.string	"departing_mode"
.LASF4:
	.string	"_IO_FILE"
.LASF41:
	.string	"initial_value_struct"
.LASF22:
	.string	"attributes"
.LASF2:
	.string	"decl"
.LASF56:
	.string	"eh_region_offset"
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
