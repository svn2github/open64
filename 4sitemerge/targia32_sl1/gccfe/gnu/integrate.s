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
	.file 1 "../../../kgccfe/gnu/integrate.c"
	.loc 1 118 0
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
	.loc 1 119 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 121 0
	cmpl	$0, -12(%ebp)
	jne	.L2
	.loc 1 122 0
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
	.loc 1 124 0
	movl	-12(%ebp), %eax
	.loc 1 125 0
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
	.loc 1 132 0
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
	.loc 1 133 0
	movl	targetm@GOT(%ebx), %eax
	movl	184(%eax), %eax
	testl	%eax, %eax
	je	.L6
.LBB2:
	.loc 1 137 0
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L8
.L9:
.LBB3:
	.loc 1 139 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 142 0
	movl	$0, -8(%ebp)
	jmp	.L10
.L11:
	.loc 1 143 0
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
	.loc 1 144 0
	movl	targetm@GOT(%ebx), %eax
	movl	200(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	jmp	.L14
.L12:
	.loc 1 142 0
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
	.loc 1 137 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L8:
	cmpl	$0, -16(%ebp)
	jne	.L9
.L6:
.LBE2:
	.loc 1 148 0
	movl	$1, -24(%ebp)
.L14:
	movl	-24(%ebp), %eax
	.loc 1 149 0
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
	.loc 1 159 0
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
	.loc 1 161 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	tree_last@PLT
	movl	%eax, -28(%ebp)
	.loc 1 172 0
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
	.loc 1 174 0
	movl	$0, -20(%ebp)
	.loc 1 177 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L24
	.loc 1 178 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L24:
	.loc 1 181 0
	cmpl	$0, -28(%ebp)
	je	.L27
	movl	-28(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	%eax, %edx
	je	.L27
	.loc 1 182 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L27:
	.loc 1 184 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L30
	.loc 1 185 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L30:
	.loc 1 187 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L32
	.loc 1 188 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L32:
	.loc 1 190 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L34
	.loc 1 191 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L34:
	.loc 1 193 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	297(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L36
	.loc 1 194 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L36:
	.loc 1 196 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L38
	.loc 1 197 0
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L38:
	.loc 1 200 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	je	.L40
	.loc 1 201 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	124(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L40:
	.loc 1 204 0
	call	get_max_uid@PLT
	movl	%eax, %ecx
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cmpl	%eax, %ecx
	jle	.L42
	.loc 1 205 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L42:
	.loc 1 221 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L44
	.loc 1 222 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L44:
	.loc 1 225 0
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
	.loc 1 227 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L46:
	.loc 1 231 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L49
.L50:
	.loc 1 233 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	testl	%edx, %edx
	jns	.L51
	.loc 1 234 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L51:
	.loc 1 235 0
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
	.loc 1 237 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L53:
	.loc 1 231 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L49:
	cmpl	$0, -16(%ebp)
	jne	.L50
	.loc 1 240 0
	call	get_max_uid@PLT
	cmpl	-24(%ebp), %eax
	jle	.L57
	.loc 1 242 0
	movl	$0, -20(%ebp)
	call	get_first_nonparm_insn@PLT
	movl	%eax, -32(%ebp)
	.loc 1 243 0
	jmp	.L59
.L60:
	.loc 1 245 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L61
	.loc 1 246 0
	addl	$1, -20(%ebp)
.L61:
	.loc 1 244 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
.L59:
	.loc 1 243 0
	cmpl	$0, -32(%ebp)
	je	.L63
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jl	.L60
.L63:
	.loc 1 248 0
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jl	.L57
	.loc 1 249 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L57:
	.loc 1 255 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	297(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L66
	.loc 1 256 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L66:
	.loc 1 259 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	297(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L68
	.loc 1 260 0
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L68:
	.loc 1 263 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L70
.LBB4:
	.loc 1 265 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L72
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
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
	movl	88(%eax), %eax
	movl	%eax, -44(%ebp)
.L74:
	movl	-44(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 266 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L70
	.loc 1 267 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L70:
.LBE4:
	.loc 1 273 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	function_attribute_inlinable_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L76
	.loc 1 274 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L26
.L76:
	.loc 1 276 0
	movl	$0, -48(%ebp)
.L26:
	movl	-48(%ebp), %eax
	.loc 1 277 0
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
	.loc 1 293 0
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
	.loc 1 299 0
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
	.loc 1 300 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	movl	%eax, (%esp)
	call	rtvec_alloc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 302 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	$0, -32(%ebp)
	.loc 1 303 0
	jmp	.L80
.L81:
.LBB5:
	.loc 1 306 0
	movl	-24(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L82
	movl	-24(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L84
.L82:
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-24(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -44(%ebp)
.L84:
	movl	-44(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 311 0
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
	.loc 1 313 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L85:
	.loc 1 315 0
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%edx,%ecx,4)
	.loc 1 317 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L89
	.loc 1 318 0
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
	.loc 1 319 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$75, %ax
	jne	.L91
.LBB6:
	.loc 1 321 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_realpart@PLT
	movl	%eax, -16(%ebp)
	.loc 1 322 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_imagpart@PLT
	movl	%eax, -12(%ebp)
	.loc 1 324 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L93
	.loc 1 325 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	parmdecl_map@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
.L93:
	.loc 1 326 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L91
	.loc 1 327 0
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
	.loc 1 332 0
	movl	-24(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$16, %eax
	movb	%al, 9(%edx)
.LBE5:
	.loc 1 304 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	addl	$1, -32(%ebp)
.L80:
	.loc 1 303 0
	cmpl	$0, -24(%ebp)
	jne	.L81
	.loc 1 335 0
	movl	-28(%ebp), %eax
	.loc 1 336 0
	addl	$48, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE18:
	.size	initialize_for_inline, .-initialize_for_inline
	.local	ret_var_uniqified.14679
	.comm	ret_var_uniqified.14679,256,32
	.local	ret_var_uniquifier.14678
	.comm	ret_var_uniquifier.14678,4,4
	.section	.rodata
.LC15:
	.string	"__KEY__RV__%d"
	.text
.globl copy_decl_for_inlining
	.type	copy_decl_for_inlining, @function
copy_decl_for_inlining:
.LFB19:
	.loc 1 347 0
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
	.loc 1 355 0
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
	.loc 1 358 0
	movl	$0, -8(%ebp)
	.loc 1 361 0
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
	.loc 1 366 0
	movl	$1, -8(%ebp)
	.loc 1 367 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 361 0
	jmp	.L108
.L102:
	.loc 1 370 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L108:
	.loc 1 375 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$37, %al
	jne	.L109
	.loc 1 380 0
	movl	ret_var_uniquifier.14678@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	addl	$1, %eax
	movl	%eax, ret_var_uniquifier.14678@GOTOFF(%ebx)
	movl	%edx, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	ret_var_uniqified.14679@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 381 0
	leal	ret_var_uniqified.14679@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$35, (%esp)
	call	build_decl@PLT
	movl	%eax, -16(%ebp)
	jmp	.L111
.L109:
	.loc 1 383 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$35, (%esp)
	call	build_decl@PLT
	movl	%eax, -16(%ebp)
.L111:
	.loc 1 388 0
	cmpl	$0, -8(%ebp)
	jne	.L112
	.loc 1 390 0
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
	.loc 1 391 0
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
	.loc 1 392 0
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
	jmp	.L115
.L112:
	.loc 1 396 0
	movl	-16(%ebp), %edx
	movzbl	9(%edx), %eax
	andl	$-5, %eax
	movb	%al, 9(%edx)
	.loc 1 397 0
	movl	-16(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$16, %eax
	movb	%al, 9(%edx)
	.loc 1 398 0
	movl	-16(%ebp), %edx
	movzbl	9(%edx), %eax
	andl	$-9, %eax
	movb	%al, 9(%edx)
	.loc 1 355 0
	jmp	.L115
.L101:
.LBE7:
	.loc 1 403 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -16(%ebp)
	.loc 1 405 0
	movl	-16(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$127, %eax
	movb	%al, 33(%edx)
	.loc 1 406 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	76(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 411 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$32, %al
	jne	.L115
	.loc 1 412 0
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %edx
	andl	$-5, %edx
	movb	%dl, 9(%eax)
.L115:
	.loc 1 417 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L117
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L119
.L117:
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L119:
	movl	-16(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 72(%eax)
	.loc 1 420 0
	movl	-16(%ebp), %eax
	movl	$0, 88(%eax)
	.loc 1 423 0
	movl	-16(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 426 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L120
	.loc 1 429 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L120
	.loc 1 433 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L120
	.loc 1 440 0
	movl	-16(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 56(%edx)
.L120:
	.loc 1 442 0
	movl	-16(%ebp), %eax
	.loc 1 443 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	copy_decl_for_inlining, .-copy_decl_for_inlining
	.section	.rodata
	.type	__FUNCTION__.14753, @object
	.size	__FUNCTION__.14753, 16
__FUNCTION__.14753:
	.string	"save_for_inline"
	.align 4
.LC16:
	.string	"../../../kgccfe/gnu/integrate.c"
	.text
.globl save_for_inline
	.type	save_for_inline, @function
save_for_inline:
.LFB20:
	.loc 1 467 0
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
	.loc 1 477 0
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L126
	.loc 1 478 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, parmdecl_map@GOTOFF(%ebx)
.L126:
	.loc 1 482 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	156(%eax), %eax
	testl	%eax, %eax
	jne	.L128
	.loc 1 484 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	gen_label_rtx@PLT
	movl	%eax, 156(%esi)
	.loc 1 485 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	156(%eax), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
.L128:
	.loc 1 488 0
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L130
	.loc 1 489 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	initialize_for_inline
	movl	%eax, -16(%ebp)
	jmp	.L132
.L130:
	.loc 1 491 0
	movl	$0, -16(%ebp)
.L132:
	.loc 1 496 0
	call	get_insns@PLT
	movl	%eax, -20(%ebp)
	jmp	.L133
.L134:
	.loc 1 497 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L135
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	jne	.L135
	.loc 1 498 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L135:
	.loc 1 496 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L133:
	cmpl	$0, -20(%ebp)
	jne	.L134
	.loc 1 504 0
	call	get_insns@PLT
	movl	%eax, -20(%ebp)
	.loc 1 505 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L139
	.loc 1 506 0
	leal	__FUNCTION__.14753@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$506, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L139:
	.loc 1 508 0
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L141
	.loc 1 511 0
	call	get_first_nonparm_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 519 0
	movl	$0, in_nonparm_insns@GOTOFF(%ebx)
	.loc 1 520 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	save_parm_insns
	.loc 1 522 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	max_label_num@PLT
	movl	%eax, 268(%esi)
	.loc 1 523 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	216(%eax), %eax
	movl	%eax, 264(%edx)
	.loc 1 524 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 256(%edx)
.L141:
	.loc 1 526 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 260(%edx)
	.loc 1 527 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 252(%edx)
	.loc 1 528 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 96(%eax)
	.loc 1 531 0
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L145
	.loc 1 532 0
	movl	parmdecl_map@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L145:
	.loc 1 533 0
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
	.loc 1 545 0
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
	.loc 1 546 0
	cmpl	$0, 8(%ebp)
	je	.L159
	.loc 1 549 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	jmp	.L149
.L150:
	.loc 1 551 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L151
	.loc 1 552 0
	movl	$1, in_nonparm_insns@GOTOFF(%ebx)
.L151:
	.loc 1 554 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L153
	.loc 1 557 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	leal	note_modified_parmregs@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 562 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L153
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$151, %ax
	jne	.L153
.LBB8:
	.loc 1 567 0
	movl	$0, -8(%ebp)
	jmp	.L157
.L158:
	.loc 1 568 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	save_parm_insns
	.loc 1 567 0
	addl	$1, -8(%ebp)
.L157:
	cmpl	$2, -8(%ebp)
	jle	.L158
.L153:
.LBE8:
	.loc 1 549 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L149:
	cmpl	$0, 8(%ebp)
	jne	.L150
.L159:
	.loc 1 573 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	save_parm_insns, .-save_parm_insns
	.type	note_modified_parmregs, @function
note_modified_parmregs:
.LFB22:
	.loc 1 582 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 583 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L167
	movl	in_nonparm_insns@GOTOFF(%ecx), %eax
	testl	%eax, %eax
	je	.L167
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cfun@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	cmpl	%eax, %edx
	jae	.L167
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L167
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	parmdecl_map@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L167
	.loc 1 587 0
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
.L167:
	.loc 1 588 0
	popl	%ebp
	ret
.LFE22:
	.size	note_modified_parmregs, .-note_modified_parmregs
	.type	process_reg_param, @function
process_reg_param:
.LFB23:
	.loc 1 615 0
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
	.loc 1 616 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L169
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L171
.L169:
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L172
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L172
	movl	16(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L171
.L172:
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L175
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L175
.L171:
.LBB9:
	.loc 1 622 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, -16(%ebp)
	.loc 1 623 0
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
	.loc 1 624 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L177
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L177
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L177
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L177
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L177
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L177
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L177
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L177
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L186
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L186
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L186
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L186
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$180, %eax
	ja	.L186
.L177:
.LBB10:
	.loc 1 625 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L191
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
	je	.L191
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L191:
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
.L186:
.LBE10:
	.loc 1 626 0
	movl	-16(%ebp), %eax
	movl	%eax, 16(%ebp)
.L175:
.LBE9:
	.loc 1 628 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 629 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	process_reg_param, .-process_reg_param
	.type	compare_blocks, @function
compare_blocks:
.LFB24:
	.loc 1 639 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	subl	$24, %esp
.LCFI40:
	.loc 1 640 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 641 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 642 0
	movl	-16(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 643 0
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 645 0
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jne	.L196
	.loc 1 646 0
	movl	$0, -24(%ebp)
	jmp	.L198
.L196:
	.loc 1 647 0
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jae	.L199
	movl	$-1, -20(%ebp)
	jmp	.L201
.L199:
	movl	$1, -20(%ebp)
.L201:
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L198:
	movl	-24(%ebp), %eax
	.loc 1 648 0
	leave
	ret
.LFE24:
	.size	compare_blocks, .-compare_blocks
	.type	find_block, @function
find_block:
.LFB25:
	.loc 1 657 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	subl	$24, %esp
.LCFI43:
	.loc 1 658 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 659 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 660 0
	movl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 661 0
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 663 0
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jne	.L204
	.loc 1 664 0
	movl	$0, -24(%ebp)
	jmp	.L206
.L204:
	.loc 1 665 0
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jae	.L207
	movl	$-1, -20(%ebp)
	jmp	.L209
.L207:
	movl	$1, -20(%ebp)
.L209:
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L206:
	movl	-24(%ebp), %eax
	.loc 1 666 0
	leave
	ret
.LFE25:
	.size	find_block, .-find_block
	.section	.rodata
	.type	__FUNCTION__.15024, @object
	.size	__FUNCTION__.15024, 23
__FUNCTION__.15024:
	.string	"expand_inline_function"
.LC17:
	.string	"block_map"
.LC18:
	.string	"expand_inline_function"
	.text
.globl expand_inline_function
	.type	expand_inline_function, @function
expand_inline_function:
.LFB26:
	.loc 1 689 0
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
	.loc 1 691 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, -184(%ebp)
	.loc 1 693 0
	movl	-184(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -168(%ebp)
	.loc 1 696 0
	movl	-184(%ebp), %eax
	movl	264(%eax), %eax
	testl	%eax, %eax
	je	.L212
	movl	-184(%ebp), %eax
	movl	264(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -264(%ebp)
	jmp	.L214
.L212:
	movl	-168(%ebp), %eax
	movl	%eax, -264(%ebp)
.L214:
	movl	-264(%ebp), %edx
	movl	%edx, -164(%ebp)
	.loc 1 701 0
	movl	-184(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -144(%ebp)
	.loc 1 702 0
	movl	-184(%ebp), %eax
	movl	268(%eax), %eax
	movl	%eax, -140(%ebp)
	.loc 1 705 0
	movl	$0, -192(%ebp)
	.loc 1 707 0
	movl	$0, -128(%ebp)
	.loc 1 708 0
	movl	-184(%ebp), %eax
	movl	256(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 709 0
	movl	$0, -120(%ebp)
	.loc 1 715 0
	movl	$0, -108(%ebp)
	.loc 1 718 0
	movl	-184(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	addl	$3, %eax
	movl	%eax, -152(%ebp)
	.loc 1 719 0
	cmpl	$175, -152(%ebp)
	jg	.L215
	.loc 1 720 0
	leal	__FUNCTION__.15024@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$720, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L215:
	.loc 1 724 0
	movl	-184(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 726 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	movl	%eax, -136(%ebp)
	.loc 1 728 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	284(%eax), %edx
	movl	-184(%ebp), %eax
	movl	284(%eax), %eax
	cmpl	%eax, %edx
	jge	.L217
	.loc 1 729 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-184(%ebp), %eax
	movl	284(%eax), %eax
	movl	%eax, 284(%edx)
.L217:
	.loc 1 735 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -180(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -176(%ebp)
	.loc 1 736 0
	jmp	.L219
.L220:
.LBB12:
	.loc 1 742 0
	cmpl	$0, -176(%ebp)
	jne	.L221
	.loc 1 743 0
	movl	$-1, -260(%ebp)
	jmp	.L223
.L221:
	.loc 1 745 0
	movl	-176(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -104(%ebp)
	.loc 1 746 0
	movl	-180(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -100(%ebp)
	.loc 1 748 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-104(%ebp), %eax
	je	.L224
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	cmpl	-100(%ebp), %eax
	jne	.L224
	cmpl	$52, -100(%ebp)
	jne	.L227
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	-180(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	cmpl	%eax, %edx
	je	.L227
.L224:
	.loc 1 756 0
	movl	$-1, -260(%ebp)
	jmp	.L223
.L227:
.LBE12:
	.loc 1 737 0
	movl	-180(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -180(%ebp)
	movl	-176(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -176(%ebp)
.L219:
	.loc 1 736 0
	cmpl	$0, -180(%ebp)
	jne	.L220
	.loc 1 761 0
	jmp	.L230
.L231:
	.loc 1 762 0
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
	.loc 1 761 0
	movl	-176(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -176(%ebp)
.L230:
	cmpl	$0, -176(%ebp)
	jne	.L231
	.loc 1 768 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -156(%ebp)
	.loc 1 769 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -160(%ebp)
	.loc 1 771 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -180(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -176(%ebp)
	movl	$0, -148(%ebp)
	.loc 1 772 0
	jmp	.L233
.L234:
.LBB13:
	.loc 1 777 0
	movl	-176(%ebp), %eax
	movl	20(%eax), %edx
	movl	-180(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -96(%ebp)
	.loc 1 779 0
	movl	-180(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -92(%ebp)
	.loc 1 780 0
	movl	$0, -88(%ebp)
	.loc 1 782 0
	movl	-148(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-160(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 783 0
	movl	-148(%ebp), %edx
	movl	-124(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	%eax, -132(%ebp)
	.loc 1 789 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L235
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L235
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$180, %eax
	jbe	.L235
.LBB14:
	.loc 1 792 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	assign_temp@PLT
	movl	%eax, -84(%ebp)
	.loc 1 794 0
	movl	$0, 8(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	store_expr@PLT
	.loc 1 795 0
	movl	-148(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-156(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 796 0
	movl	$1, -88(%ebp)
	.loc 1 789 0
	jmp	.L239
.L235:
.LBE14:
	.loc 1 798 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L240
	.loc 1 800 0
	movl	-132(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	cmpl	%eax, %edx
	je	.L242
.LBB15:
	.loc 1 802 0
	movl	-180(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -200(%ebp)
	.loc 1 803 0
	movl	-180(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	.loc 1 805 0
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
	.loc 1 808 0
	movl	-132(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-80(%ebp), %eax
	je	.L244
	.loc 1 809 0
	leal	__FUNCTION__.15024@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$809, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L244:
	.loc 1 813 0
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
	jmp	.L239
.L242:
.LBE15:
	.loc 1 820 0
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
	jmp	.L239
.L240:
	.loc 1 823 0
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	$0, (%eax)
.L239:
	.loc 1 825 0
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L247
	movl	-180(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L249
	cmpl	$0, 16(%ebp)
	je	.L251
	cmpl	$0, -88(%ebp)
	jne	.L251
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L254
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L254
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L251
.L254:
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L249
.L251:
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L247
.L249:
	.loc 1 846 0
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
.L247:
	.loc 1 848 0
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L257
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L257
	movl	-180(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L260
	movl	-180(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L257
.L260:
	.loc 1 850 0
	movl	-180(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mark_reg_pointer@PLT
.L257:
.LBE13:
	.loc 1 773 0
	movl	-180(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -180(%ebp)
	movl	-176(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -176(%ebp)
	addl	$1, -148(%ebp)
.L233:
	.loc 1 772 0
	cmpl	$0, -180(%ebp)
	jne	.L234
	.loc 1 856 0
	movl	$328, 4(%esp)
	movl	$1, (%esp)
	call	xcalloc@PLT
	movl	%eax, -128(%ebp)
	.loc 1 857 0
	movl	-128(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 859 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$14, 4(%esp)
	movl	$10, (%esp)
	call	varray_init@PLT
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 860 0
	movl	-152(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 865 0
	movl	-140(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -108(%ebp)
	.loc 1 867 0
	movl	-128(%ebp), %edx
	movl	-108(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 868 0
	movl	-128(%ebp), %eax
	movl	$0, 60(%eax)
	.loc 1 870 0
	movl	-184(%ebp), %eax
	movl	12(%eax), %eax
	movl	24(%eax), %eax
	addl	$1, %eax
	movl	%eax, -116(%ebp)
	.loc 1 871 0
	movl	-116(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 872 0
	movl	-128(%ebp), %eax
	movl	$0, 28(%eax)
	.loc 1 873 0
	movl	-128(%ebp), %edx
	movl	-116(%ebp), %eax
	movl	%eax, 32(%edx)
	.loc 1 875 0
	movl	-128(%ebp), %eax
	movl	$1, (%eax)
	.loc 1 876 0
	movl	-128(%ebp), %eax
	movl	$0, 320(%eax)
	.loc 1 877 0
	movl	-128(%ebp), %eax
	movl	$0, 324(%eax)
	.loc 1 892 0
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
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$17, 4(%esp)
	movl	%edx, (%esp)
	call	varray_init@PLT
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 898 0
	movl	-128(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 903 0
	call	get_last_insn@PLT
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 904 0
	movl	-128(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L263
	.loc 1 905 0
	movl	$-99, 4(%esp)
	movl	$0, (%esp)
	call	emit_note@PLT
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	%edx, 8(%eax)
.L263:
	.loc 1 907 0
	movl	-184(%ebp), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %edx
	movl	-128(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 908 0
	movl	-184(%ebp), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-128(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 912 0
	movl	-184(%ebp), %eax
	movl	44(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	cmpl	%eax, %edx
	jle	.L265
	.loc 1 913 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-184(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 44(%edx)
.L265:
	.loc 1 917 0
	movl	-184(%ebp), %eax
	movzbl	298(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L267
	.loc 1 918 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	298(%edx), %eax
	orl	$64, %eax
	movb	%al, 298(%edx)
.L267:
	.loc 1 921 0
	movl	-184(%ebp), %eax
	movzbl	296(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L269
	.loc 1 922 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_static_chain@PLT
	movl	%eax, -120(%ebp)
.L269:
	.loc 1 924 0
	movl	-168(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L271
	movl	-168(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jle	.L271
.LBB16:
	.loc 1 928 0
	movl	-168(%ebp), %eax
	movl	44(%eax), %edx
	movl	-168(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_note@PLT
	movl	%eax, -76(%ebp)
	.loc 1 929 0
	cmpl	$0, -76(%ebp)
	je	.L271
	.loc 1 930 0
	movl	-76(%ebp), %eax
	movzbl	3(%eax), %edx
	orl	$64, %edx
	movb	%dl, 3(%eax)
.L271:
.LBE16:
	.loc 1 946 0
	movl	$0, -148(%ebp)
	jmp	.L275
.L276:
.LBB17:
	.loc 1 948 0
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 950 0
	movl	-148(%ebp), %edx
	movl	-124(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	%eax, -132(%ebp)
	.loc 1 953 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L277
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L277
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$180, %eax
	jbe	.L277
	.loc 1 963 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L281
	.loc 1 965 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_addr_to_reg@PLT
	movl	%eax, -196(%ebp)
	.loc 1 966 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L283
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L283
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L283
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L283
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L283
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L283
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L283
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L283
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L292
	movl	-72(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L292
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L292
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L292
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$180, %eax
	ja	.L292
.L283:
.LBB18:
	.loc 1 967 0
	movl	-196(%ebp), %eax
	movl	4(%eax), %edx
	movl	-128(%ebp), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L297
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
	je	.L297
	movl	-128(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L297:
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
.L292:
.LBE18:
	.loc 1 968 0
	movl	-196(%ebp), %eax
	movl	%eax, -72(%ebp)
.L281:
	.loc 1 970 0
	movl	-128(%ebp), %eax
	movl	16(%eax), %edx
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 953 0
	jmp	.L300
.L277:
	.loc 1 972 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L301
	.loc 1 982 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L300
	.loc 1 983 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %edx
	movl	$0, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	jmp	.L300
.L301:
	.loc 1 985 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L305
	.loc 1 986 0
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	process_reg_param
	jmp	.L300
.L305:
	.loc 1 987 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$75, %ax
	jne	.L307
.LBB20:
	.loc 1 989 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_realpart@PLT
	movl	%eax, -60(%ebp)
	.loc 1 990 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_imagpart@PLT
	movl	%eax, -56(%ebp)
	.loc 1 991 0
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_realpart@PLT
	movl	%eax, -52(%ebp)
	.loc 1 992 0
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_imagpart@PLT
	movl	%eax, -48(%ebp)
	.loc 1 994 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	process_reg_param
	.loc 1 995 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	process_reg_param
	jmp	.L300
.L307:
.LBE20:
	.loc 1 998 0
	leal	__FUNCTION__.15024@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$998, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L300:
.LBE17:
	.loc 1 946 0
	addl	$1, -148(%ebp)
.L275:
	movl	-148(%ebp), %eax
	cmpl	-136(%ebp), %eax
	jl	.L276
	.loc 1 1004 0
	movl	inlining@GOTOFF(%ebx), %eax
	movl	%eax, -188(%ebp)
	.loc 1 1005 0
	movl	-184(%ebp), %eax
	movl	%eax, inlining@GOTOFF(%ebx)
	.loc 1 1009 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -180(%ebp)
	movl	$0, -148(%ebp)
	.loc 1 1010 0
	jmp	.L310
.L311:
	.loc 1 1012 0
	movl	-148(%ebp), %edx
	movl	-124(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	%eax, -132(%ebp)
	.loc 1 1014 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L312
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L314
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$180, %eax
	ja	.L312
.L314:
.LBB21:
	.loc 1 1020 0
	movl	-180(%ebp), %eax
	movl	20(%eax), %edx
	movl	-180(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_note@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1021 0
	cmpl	$0, -44(%ebp)
	je	.L316
	.loc 1 1022 0
	movl	-44(%ebp), %eax
	movzbl	3(%eax), %edx
	orl	$64, %edx
	movb	%dl, 3(%eax)
.L316:
	.loc 1 1026 0
	movl	$1, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -196(%ebp)
	.loc 1 1027 0
	movl	$1, 12(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	-196(%ebp), %eax
	movl	%eax, (%esp)
	call	subst_constants
	.loc 1 1028 0
	call	apply_change_group@PLT
	.loc 1 1029 0
	movl	-196(%ebp), %eax
	movl	4(%eax), %edx
	movl	-196(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	memory_address_p@PLT
	testl	%eax, %eax
	jne	.L318
	.loc 1 1030 0
	movl	-196(%ebp), %eax
	movl	4(%eax), %eax
	movl	-196(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	change_address@PLT
	movl	%eax, -196(%ebp)
.L318:
	.loc 1 1031 0
	movl	-196(%ebp), %edx
	movl	-148(%ebp), %eax
	sall	$2, %eax
	addl	-160(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	store_expr@PLT
.L312:
.LBE21:
	.loc 1 1010 0
	movl	-180(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -180(%ebp)
	addl	$1, -148(%ebp)
.L310:
	cmpl	$0, -180(%ebp)
	jne	.L311
	.loc 1 1041 0
	movl	-128(%ebp), %eax
	movl	$0, 44(%eax)
	.loc 1 1042 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L321
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L323
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -252(%ebp)
	jmp	.L325
.L323:
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -252(%ebp)
.L325:
	movl	-252(%ebp), %eax
	movl	%eax, -256(%ebp)
	jmp	.L326
.L321:
	movl	$0, -256(%ebp)
.L326:
	movl	-256(%ebp), %edx
	movl	%edx, -132(%ebp)
	.loc 1 1045 0
	movl	24(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	testb	%al, %al
	je	.L327
	.loc 1 1048 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L329
	.loc 1 1050 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L331
	.loc 1 1052 0
	movl	$1, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -196(%ebp)
	.loc 1 1053 0
	movl	$1, 12(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	-196(%ebp), %eax
	movl	%eax, (%esp)
	call	subst_constants
	.loc 1 1054 0
	call	apply_change_group@PLT
	.loc 1 1055 0
	movl	-196(%ebp), %eax
	movl	%eax, 16(%ebp)
	jmp	.L327
.L331:
	.loc 1 1059 0
	cmpl	$0, 28(%ebp)
	je	.L334
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, (%esp)
	call	aggregate_value_p@PLT
	testl	%eax, %eax
	jne	.L336
.L334:
	.loc 1 1061 0
	leal	__FUNCTION__.15024@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1061, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L336:
	.loc 1 1073 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L337
	.loc 1 1075 0
	movl	$0, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -196(%ebp)
	.loc 1 1076 0
	movl	-196(%ebp), %eax
	movl	%eax, -248(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L339
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L339
	movl	$5, -244(%ebp)
	jmp	.L342
.L339:
	movl	$4, -244(%ebp)
.L342:
	movl	-248(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-244(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -196(%ebp)
	.loc 1 1083 0
	movl	-196(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L343
	movl	-196(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$180, %eax
	ja	.L343
	.loc 1 1085 0
	movl	-196(%ebp), %edx
	movl	%edx, -240(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L346
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L346
	movl	$5, -236(%ebp)
	jmp	.L349
.L346:
	movl	$4, -236(%ebp)
.L349:
	movl	-240(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-236(%ebp), %edx
	movl	%edx, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, -196(%ebp)
.L343:
	.loc 1 1086 0
	movl	-128(%ebp), %eax
	movl	16(%eax), %edx
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-196(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1088 0
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L350
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L350
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L350
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L350
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L350
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L350
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L350
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L350
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	je	.L350
	movl	28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L327
	movl	28(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	jne	.L327
	movl	28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L327
.L350:
.LBB22:
	.loc 1 1096 0
	movl	-196(%ebp), %eax
	movl	4(%eax), %edx
	movl	-128(%ebp), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L363
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
	je	.L363
	movl	-128(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L363:
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
	jmp	.L327
.L337:
.LBE22:
	.loc 1 1102 0
	movl	$1, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -196(%ebp)
	.loc 1 1103 0
	movl	$0, 12(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	-196(%ebp), %eax
	movl	%eax, (%esp)
	call	subst_constants
	.loc 1 1104 0
	call	apply_change_group@PLT
	.loc 1 1105 0
	movl	-196(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_move_insn@PLT
	jmp	.L327
.L329:
	.loc 1 1109 0
	cmpl	$0, 20(%ebp)
	jne	.L327
	.loc 1 1114 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L367
.LBB24:
	.loc 1 1120 0
	movl	24(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1126 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L369
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -232(%ebp)
	jmp	.L371
.L369:
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -232(%ebp)
.L371:
	movl	-232(%ebp), %edx
	movzbl	2(%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1132 0
	cmpl	$0, 16(%ebp)
	je	.L372
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L372
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-32(%ebp), %eax
	je	.L375
.L372:
	.loc 1 1138 0
	cmpl	$52, -32(%ebp)
	jne	.L376
	.loc 1 1140 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L378
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -228(%ebp)
	jmp	.L380
.L378:
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -228(%ebp)
.L380:
	movl	-228(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$71, %ax
	jne	.L381
	.loc 1 1142 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L383
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -224(%ebp)
	jmp	.L385
.L383:
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -224(%ebp)
.L385:
	movl	-224(%ebp), %edx
	movzbl	2(%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1143 0
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L376
.L381:
	.loc 1 1146 0
	leal	__FUNCTION__.15024@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1146, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L376:
	.loc 1 1149 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 16(%ebp)
.L375:
	.loc 1 1155 0
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	je	.L386
	.loc 1 1159 0
	movl	-28(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -220(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L388
	movl	$64, -216(%ebp)
	jmp	.L390
.L388:
	movl	$32, -216(%ebp)
.L390:
	movl	-216(%ebp), %eax
	cmpl	%eax, -220(%ebp)
	jle	.L391
	.loc 1 1161 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L393
	movl	-28(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$32, %ax
	jbe	.L393
	movl	-32(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$32, %ax
	ja	.L393
	.loc 1 1164 0
	leal	__FUNCTION__.15024@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1164, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L393:
	.loc 1 1165 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1166 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, 16(%ebp)
	jmp	.L398
.L391:
	.loc 1 1169 0
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -24(%ebp)
	jmp	.L398
.L386:
	.loc 1 1172 0
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L398:
	.loc 1 1176 0
	movl	-132(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L399
	.loc 1 1177 0
	movl	-128(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 44(%edx)
	jmp	.L327
.L399:
	.loc 1 1179 0
	movl	-128(%ebp), %eax
	movl	16(%eax), %edx
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L327
.L367:
.LBE24:
	.loc 1 1181 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$75, %ax
	jne	.L402
.LBB25:
	.loc 1 1183 0
	movl	24(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1185 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L404
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -212(%ebp)
	jmp	.L406
.L404:
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -212(%ebp)
.L406:
	movl	-212(%ebp), %edx
	movzbl	2(%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1187 0
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L407
	.loc 1 1188 0
	leal	__FUNCTION__.15024@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1188, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L407:
	.loc 1 1189 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L409
	movl	-132(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L411
.L409:
	.loc 1 1191 0
	leal	__FUNCTION__.15024@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1191, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L411:
	.loc 1 1196 0
	cmpl	$0, 16(%ebp)
	je	.L412
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L412
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-20(%ebp), %eax
	je	.L415
.L412:
	.loc 1 1198 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 16(%ebp)
.L415:
	.loc 1 1200 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$75, %ax
	je	.L416
	.loc 1 1201 0
	leal	__FUNCTION__.15024@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1201, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L416:
	.loc 1 1203 0
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
	.loc 1 1204 0
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
	jmp	.L327
.L402:
.LBE25:
	.loc 1 1207 0
	leal	__FUNCTION__.15024@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1207, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L327:
	.loc 1 1210 0
	movl	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	get_exception_pointer@PLT
	movl	%eax, -196(%ebp)
	.loc 1 1211 0
	movl	-196(%ebp), %eax
	testl	%eax, %eax
	je	.L418
	.loc 1 1212 0
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
.L418:
	.loc 1 1216 0
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
	.loc 1 1223 0
	movl	inline_function_decl@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1224 0
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	integrate_parm_decls
	.loc 1 1225 0
	movl	-184(%ebp), %eax
	movl	260(%eax), %edx
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	integrate_decl_tree
	movl	%eax, -172(%ebp)
	.loc 1 1226 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L420
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -208(%ebp)
	jmp	.L422
.L420:
	movl	8(%ebp), %eax
	movl	%eax, -208(%ebp)
.L422:
	movl	-172(%ebp), %eax
	movl	-208(%ebp), %edx
	movl	%edx, 32(%eax)
	.loc 1 1227 0
	movl	inline_function_decl@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 1231 0
	movl	-172(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	expand_start_bindings_and_block@PLT
	.loc 1 1235 0
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
	.loc 1 1241 0
	call	emit_queue@PLT
	.loc 1 1244 0
	call	do_pending_stack_adjust@PLT
	.loc 1 1248 0
	movl	-128(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1254 0
	movl	-184(%ebp), %eax
	movzbl	296(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L423
	.loc 1 1255 0
	movl	$0, 8(%esp)
	leal	-192(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	emit_stack_save@PLT
.L423:
	.loc 1 1258 0
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	setup_initial_hard_reg_value_integration
	.loc 1 1261 0
	movl	-120(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_insn_list
	.loc 1 1267 0
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	duplicate_eh_regions@PLT
	movl	%eax, -112(%ebp)
	.loc 1 1270 0
	movl	-112(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_insn_notes
	.loc 1 1273 0
	movl	-128(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L425
	.loc 1 1274 0
	movl	-128(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
.L425:
	.loc 1 1277 0
	movl	-184(%ebp), %eax
	movzbl	296(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L427
	.loc 1 1278 0
	movl	-192(%ebp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	emit_stack_restore@PLT
.L427:
	.loc 1 1280 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	298(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L429
	.loc 1 1285 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	228(%eax), %edx
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	jmp	.L431
.L429:
	.loc 1 1288 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	68(%eax), %eax
	movl	(%eax), %edx
	movl	-172(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1290 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	68(%eax), %edx
	movl	-172(%ebp), %eax
	movl	%eax, (%edx)
.L431:
	.loc 1 1298 0
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	$0, (%esp)
	call	expand_end_bindings@PLT
	.loc 1 1306 0
	movl	flag_test_coverage@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L432
	.loc 1 1307 0
	movl	$-84, 4(%esp)
	movl	$0, (%esp)
	call	emit_note@PLT
.L432:
	.loc 1 1309 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_line_note@PLT
	.loc 1 1313 0
	cmpl	$0, 16(%ebp)
	je	.L434
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	cmpb	$104, %al
	jne	.L434
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	aggregate_value_p@PLT
	testl	%eax, %eax
	jne	.L434
	.loc 1 1316 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	copy_blkmode_from_reg@PLT
	movl	%eax, 16(%ebp)
.L434:
	.loc 1 1318 0
	cmpl	$0, 28(%ebp)
	je	.L438
	.loc 1 1320 0
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
	.loc 1 1323 0
	movl	$1, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
.L438:
	.loc 1 1327 0
	cmpl	$0, -108(%ebp)
	je	.L440
	.loc 1 1328 0
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L440:
	.loc 1 1329 0
	movl	-128(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L442
	movl	-128(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-128(%ebp), %eax
	movl	$0, 36(%eax)
.L442:
	.loc 1 1330 0
	movl	-128(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1331 0
	movl	-128(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1332 0
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1333 0
	movl	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1334 0
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1336 0
	movl	-188(%ebp), %eax
	movl	%eax, inlining@GOTOFF(%ebx)
	.loc 1 1338 0
	movl	16(%ebp), %eax
	movl	%eax, -260(%ebp)
.L223:
	movl	-260(%ebp), %eax
	.loc 1 1339 0
	addl	$268, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE26:
	.size	expand_inline_function, .-expand_inline_function
	.section	.rodata
	.type	__FUNCTION__.15856, @object
	.size	__FUNCTION__.15856, 15
__FUNCTION__.15856:
	.string	"copy_insn_list"
	.text
	.type	copy_insn_list, @function
copy_insn_list:
.LFB27:
	.loc 1 1355 0
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
	.loc 1 1362 0
	movl	$0, -44(%ebp)
	.loc 1 1369 0
	movl	8(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L446
.L447:
.LBB26:
	.loc 1 1373 0
	movl	12(%ebp), %eax
	movl	$0, 48(%eax)
	.loc 1 1375 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$42, %eax
	movl	%eax, -108(%ebp)
	cmpl	$5, -108(%ebp)
	ja	.L448
	movl	-108(%ebp), %eax
	sall	$2, %eax
	movl	.L455@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L455:
	.long	.L449@GOTOFF
	.long	.L450@GOTOFF
	.long	.L451@GOTOFF
	.long	.L452@GOTOFF
	.long	.L453@GOTOFF
	.long	.L454@GOTOFF
	.text
.L449:
	.loc 1 1378 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1379 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L456
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L458
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L460
.L458:
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -100(%ebp)
.L460:
	movl	-100(%ebp), %eax
	movl	%eax, -104(%ebp)
	jmp	.L461
.L456:
	movl	$0, -104(%ebp)
.L461:
	movl	-104(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1380 0
	movl	$0, -40(%ebp)
	.loc 1 1381 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L462
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L462
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L465
.L462:
	.loc 1 1390 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	.L466
	cmpl	$0, -32(%ebp)
	je	.L466
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L466
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L466
	.loc 1 1395 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	volatile_refs_p@PLT
	testl	%eax, %eax
	je	.L471
.LBB27:
	.loc 1 1401 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1403 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L473
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L475
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L477
.L475:
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -92(%ebp)
.L477:
	movl	-92(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L478
.L473:
	movl	$0, -96(%ebp)
.L478:
	movl	-96(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1404 0
	cmpl	$0, -28(%ebp)
	jne	.L479
	.loc 1 1405 0
	leal	__FUNCTION__.15856@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1405, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L479:
	.loc 1 1407 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L484
.L471:
.LBE27:
	.loc 1 1412 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L465
	movl	-52(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L465
	.loc 1 1414 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1390 0
	jmp	.L484
.L466:
	.loc 1 1420 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	.L485
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L485
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L485
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L465
.L485:
	.loc 1 1442 0
	cmpl	$0, 16(%ebp)
	je	.L489
	cmpl	$0, -32(%ebp)
	je	.L489
	movl	static_chain_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L489
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L489
	movl	static_chain_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L489
	.loc 1 1449 0
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
	.loc 1 1456 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1442 0
	jmp	.L484
.L489:
	.loc 1 1460 0
	cmpl	$0, 16(%ebp)
	je	.L495
	cmpl	$0, -32(%ebp)
	je	.L495
	movl	static_chain_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L465
	cmpl	$0, -44(%ebp)
	je	.L495
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L465
.L495:
	.loc 1 1470 0
	cmpl	$0, 16(%ebp)
	je	.L500
	cmpl	$0, -32(%ebp)
	je	.L500
	movl	static_chain_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L503
	cmpl	$0, -44(%ebp)
	je	.L500
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L500
.L503:
.LBB28:
	.loc 1 1477 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1479 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1480 0
	movl	static_chain_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L484
	.loc 1 1481 0
	movl	$0, 16(%ebp)
	.loc 1 1470 0
	jmp	.L484
.L500:
.LBE28:
	.loc 1 1491 0
	cmpl	$0, -32(%ebp)
	je	.L508
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L508
.LBB29:
	.loc 1 1495 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1496 0
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,8), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1499 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L511
	.loc 1 1500 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L513
.L511:
	.loc 1 1501 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L514
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L514
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L514
	.loc 1 1504 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 1501 0
	jmp	.L513
.L514:
	.loc 1 1506 0
	leal	__FUNCTION__.15856@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1506, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L513:
	.loc 1 1508 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L518
	.loc 1 1509 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L520
.L518:
	.loc 1 1511 0
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
.L520:
	.loc 1 1515 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_move_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1491 0
	jmp	.L484
.L508:
.LBE29:
	.loc 1 1519 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -40(%ebp)
.L484:
	.loc 1 1546 0
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
	.loc 1 1549 0
	jmp	.L465
.L450:
	.loc 1 1552 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L521
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	returnjump_p@PLT
	testl	%eax, %eax
	je	.L521
	.loc 1 1554 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L524
	.loc 1 1555 0
	call	gen_label_rtx@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 60(%eax)
.L524:
	.loc 1 1556 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1552 0
	jmp	.L526
.L521:
	.loc 1 1559 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -36(%ebp)
.L526:
	.loc 1 1561 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1568 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	try_constants@PLT
	.loc 1 1569 0
	movl	-52(%ebp), %eax
	movl	36(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 1573 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L465
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	je	.L465
	movl	12(%ebp), %eax
	movl	316(%eax), %eax
	testl	%eax, %eax
	je	.L465
	.loc 1 1582 0
	movl	12(%ebp), %eax
	movl	316(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L531
	.loc 1 1584 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 1585 0
	movl	$0, -40(%ebp)
	jmp	.L465
.L531:
	.loc 1 1591 0
	call	emit_barrier@PLT
	.loc 1 1593 0
	jmp	.L465
.L451:
	.loc 1 1599 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$151, %ax
	jne	.L533
.LBB30:
	.loc 1 1604 0
	movl	$0, -56(%ebp)
	jmp	.L535
.L536:
.LBB31:
	.loc 1 1608 0
	movl	-56(%ebp), %eax
	movl	$0, -76(%ebp,%eax,4)
	.loc 1 1609 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %edx
	movl	-56(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1610 0
	cmpl	$0, -16(%ebp)
	je	.L537
	.loc 1 1612 0
	call	start_sequence@PLT
	.loc 1 1613 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_insn_list
	.loc 1 1614 0
	movl	-56(%ebp), %esi
	call	get_insns@PLT
	movl	%eax, -76(%ebp,%esi,4)
	.loc 1 1615 0
	call	end_sequence@PLT
.L537:
.LBE31:
	.loc 1 1604 0
	addl	$1, -56(%ebp)
.L535:
	cmpl	$2, -56(%ebp)
	jle	.L536
	.loc 1 1621 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	28(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1624 0
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
	.loc 1 1629 0
	jmp	.L465
.L533:
.LBE30:
	.loc 1 1632 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1633 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_call_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1635 0
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
	.loc 1 1636 0
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
	.loc 1 1637 0
	movl	-52(%ebp), %eax
	movl	36(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 1642 0
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
	.loc 1 1651 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	try_constants@PLT
	.loc 1 1654 0
	movl	$0, -56(%ebp)
	jmp	.L540
.L541:
	.loc 1 1655 0
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	-56(%ebp), %eax
	movl	$0, 16(%edx,%eax,8)
	.loc 1 1654 0
	addl	$1, -56(%ebp)
.L540:
	cmpl	$175, -56(%ebp)
	jle	.L541
	.loc 1 1656 0
	jmp	.L465
.L453:
	.loc 1 1659 0
	movl	-52(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_label_from_map@PLT
	movl	%eax, (%esp)
	call	emit_label@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1661 0
	movl	-52(%ebp), %eax
	movl	60(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 1662 0
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 1663 0
	jmp	.L465
.L452:
	.loc 1 1666 0
	call	emit_barrier@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1667 0
	jmp	.L465
.L454:
	.loc 1 1670 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-88, %eax
	jne	.L543
	.loc 1 1672 0
	movl	-52(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_label_from_map@PLT
	movl	%eax, (%esp)
	call	emit_label@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1674 0
	movl	-52(%ebp), %eax
	movl	36(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 1675 0
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 1676 0
	jmp	.L465
.L543:
	.loc 1 1685 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-91, %eax
	je	.L545
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-87, %eax
	je	.L545
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-99, %eax
	je	.L545
	.loc 1 1689 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %edx
	movl	-52(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_note@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1691 0
	cmpl	$0, -40(%ebp)
	je	.L549
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-98, %eax
	je	.L551
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-97, %eax
	jne	.L549
.L551:
	movl	-52(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L549
.LBB32:
	.loc 1 1698 0
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
	.loc 1 1705 0
	cmpl	$0, -12(%ebp)
	jne	.L554
	.loc 1 1706 0
	leal	__FUNCTION__.15856@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1706, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L554:
	.loc 1 1708 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 1691 0
	jmp	.L465
.L549:
.LBE32:
	.loc 1 1710 0
	cmpl	$0, -40(%ebp)
	je	.L465
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-82, %eax
	jne	.L465
	.loc 1 1712 0
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
	.loc 1 1685 0
	jmp	.L465
.L545:
	.loc 1 1717 0
	movl	$0, -40(%ebp)
	.loc 1 1718 0
	jmp	.L465
.L448:
	.loc 1 1721 0
	leal	__FUNCTION__.15856@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1721, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L465:
	.loc 1 1724 0
	cmpl	$0, -40(%ebp)
	je	.L560
	.loc 1 1725 0
	movl	-40(%ebp), %eax
	movzbl	3(%eax), %edx
	orl	$64, %edx
	movb	%dl, 3(%eax)
.L560:
	.loc 1 1727 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%edx)
.LBE26:
	.loc 1 1369 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
.L446:
	cmpl	$0, -52(%ebp)
	jne	.L447
	.loc 1 1729 0
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
	.loc 1 1740 0
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
	.loc 1 1743 0
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 1744 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L565
.L566:
	.loc 1 1746 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L567
	.loc 1 1749 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1750 0
	cmpl	$0, -28(%ebp)
	je	.L567
	.loc 1 1753 0
	movl	-32(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L570
.LBB33:
	.loc 1 1755 0
	movl	-32(%ebp), %eax
	movl	68(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1759 0
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	subst_constants
	.loc 1 1760 0
	call	apply_change_group@PLT
	.loc 1 1761 0
	movl	-36(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 1765 0
	jmp	.L572
.L573:
	.loc 1 1767 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1768 0
	movl	-36(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$13, %al
	jne	.L574
	.loc 1 1769 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	jmp	.L576
.L574:
	.loc 1 1770 0
	movl	-36(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$22, %al
	jne	.L576
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -60(%ebp)
	cmpl	$0, -60(%ebp)
	js	.L576
	cmpl	$0, -60(%ebp)
	jg	.L579
	cmpl	$0, -64(%ebp)
	jbe	.L576
.L579:
	.loc 1 1772 0
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
.L576:
	.loc 1 1765 0
	movl	-24(%ebp), %eax
	movl	%eax, -36(%ebp)
.L572:
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	jne	.L573
.L570:
.LBE33:
	.loc 1 1777 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L580
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$151, %ax
	jne	.L580
.LBB34:
	.loc 1 1781 0
	movl	$0, -20(%ebp)
	jmp	.L583
.L584:
	.loc 1 1782 0
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
	.loc 1 1781 0
	addl	$1, -20(%ebp)
.L583:
	cmpl	$2, -20(%ebp)
	jle	.L584
.L580:
.LBE34:
	.loc 1 1785 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L567
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$63, %ax
	jne	.L567
	.loc 1 1787 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %edx
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	addl	16(%ebp), %eax
	movl	%eax, 4(%edx)
.L567:
	.loc 1 1744 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
.L565:
	cmpl	$0, -32(%ebp)
	jne	.L566
	.loc 1 1789 0
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
	.loc 1 1799 0
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
	.loc 1 1803 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
	jmp	.L590
.L591:
.LBB35:
	.loc 1 1806 0
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
	.loc 1 1808 0
	movl	-12(%ebp), %edx
	movl	16(%ebp), %eax
	movl	4(%eax,%edx,4), %edx
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1817 0
	movl	$1, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	subst_constants
	.loc 1 1818 0
	call	apply_change_group@PLT
	.loc 1 1819 0
	movl	-20(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 88(%eax)
.LBE35:
	.loc 1 1803 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	addl	$1, -12(%ebp)
.L590:
	cmpl	$0, -16(%ebp)
	jne	.L591
	.loc 1 1821 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	integrate_parm_decls, .-integrate_parm_decls
	.type	integrate_decl_tree, @function
integrate_decl_tree:
.LFB30:
	.loc 1 1834 0
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
	.loc 1 1839 0
	movl	$5, (%esp)
	call	make_node@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1840 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L595
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
.L595:
	movl	12(%ebp), %eax
	movl	12(%eax), %esi
	movl	12(%ebp), %eax
	movl	12(%eax), %ecx
	movl	4(%ecx), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
	.loc 1 1841 0
	movl	-20(%ebp), %eax
	addl	$20, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1843 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L597
.L598:
.LBB36:
	.loc 1 1847 0
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
	.loc 1 1849 0
	movl	-24(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L599
.LBB37:
	.loc 1 1853 0
	movl	-24(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L601
	movl	-24(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L603
.L601:
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-24(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -48(%ebp)
.L603:
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 88(%eax)
	.loc 1 1859 0
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L604
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L606
.L604:
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -44(%ebp)
.L606:
	movl	-44(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1860 0
	movl	$1, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	subst_constants
	.loc 1 1861 0
	movl	-28(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 88(%eax)
	.loc 1 1863 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L607
	.loc 1 1864 0
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
	jmp	.L609
.L607:
	.loc 1 1865 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$75, %ax
	jne	.L609
	.loc 1 1867 0
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
	.loc 1 1868 0
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
.L609:
	.loc 1 1871 0
	call	apply_change_group@PLT
.L599:
.LBE37:
	.loc 1 1876 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1877 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.LBE36:
	.loc 1 1843 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L597:
	cmpl	$0, -24(%ebp)
	jne	.L598
	.loc 1 1880 0
	movl	-20(%ebp), %eax
	addl	$24, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1881 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L612
.L613:
	.loc 1 1883 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	integrate_decl_tree
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1884 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 1885 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1881 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L612:
	cmpl	$0, -24(%ebp)
	jne	.L613
	.loc 1 1888 0
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
	.loc 1 1889 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 32(%edx)
	.loc 1 1891 0
	movl	-20(%ebp), %eax
	.loc 1 1892 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE30:
	.size	integrate_decl_tree, .-integrate_decl_tree
	.section	.rodata
	.type	__FUNCTION__.16401, @object
	.size	__FUNCTION__.16401, 24
__FUNCTION__.16401:
	.string	"copy_rtx_and_substitute"
	.text
.globl copy_rtx_and_substitute
	.type	copy_rtx_and_substitute, @function
copy_rtx_and_substitute:
.LFB31:
	.loc 1 1914 0
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
	.loc 1 1922 0
	cmpl	$0, 8(%ebp)
	jne	.L617
	.loc 1 1923 0
	movl	$0, -224(%ebp)
	jmp	.L619
.L617:
	.loc 1 1925 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -108(%ebp)
	.loc 1 1926 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -104(%ebp)
	.loc 1 1928 0
	movl	-108(%ebp), %eax
	subl	$46, %eax
	movl	%eax, -228(%ebp)
	cmpl	$34, -228(%ebp)
	ja	.L620
	movl	-228(%ebp), %eax
	sall	$2, %eax
	movl	.L636@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L636:
	.long	.L621@GOTOFF
	.long	.L622@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L623@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L624@GOTOFF
	.long	.L625@GOTOFF
	.long	.L625@GOTOFF
	.long	.L626@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L627@GOTOFF
	.long	.L628@GOTOFF
	.long	.L627@GOTOFF
	.long	.L620@GOTOFF
	.long	.L629@GOTOFF
	.long	.L627@GOTOFF
	.long	.L620@GOTOFF
	.long	.L630@GOTOFF
	.long	.L620@GOTOFF
	.long	.L631@GOTOFF
	.long	.L620@GOTOFF
	.long	.L620@GOTOFF
	.long	.L632@GOTOFF
	.long	.L633@GOTOFF
	.long	.L634@GOTOFF
	.long	.L627@GOTOFF
	.long	.L635@GOTOFF
	.text
.L630:
	.loc 1 1935 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 1936 0
	cmpl	$180, -96(%ebp)
	jle	.L637
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L639
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	96(%eax), %eax
	movl	120(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L639
.L637:
	.loc 1 1942 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L641
	.loc 1 1943 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -224(%ebp)
	jmp	.L619
.L641:
	.loc 1 1953 0
	cmpl	$177, -96(%ebp)
	jne	.L643
.LBB38:
	.loc 1 1956 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	96(%eax), %eax
	movl	%eax, (%esp)
	call	get_func_frame_size@PLT
	movl	%eax, -84(%ebp)
	.loc 1 1969 0
	call	start_sequence@PLT
	.loc 1 1970 0
	movl	-84(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$1, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$52, (%esp)
	call	assign_stack_temp@PLT
	movl	%eax, -92(%ebp)
	.loc 1 1971 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 1978 0
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
	je	.L645
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L645
	movl	$5, -212(%ebp)
	jmp	.L648
.L645:
	movl	$4, -212(%ebp)
.L648:
	movl	-216(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-212(%ebp), %ecx
	movl	%ecx, (%esp)
	call	force_reg@PLT
	movl	%eax, -120(%ebp)
	movl	-120(%ebp), %eax
	movl	-220(%ebp), %edx
	movl	%eax, (%edx)
	.loc 1 1982 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L649
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L649
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L652
.L649:
	movl	$64, -208(%ebp)
	jmp	.L653
.L652:
	movl	$128, -208(%ebp)
.L653:
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
	.loc 1 1985 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L654
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
	je	.L654
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L654:
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
	.loc 1 1987 0
	call	get_insns@PLT
	movl	%eax, -88(%ebp)
	.loc 1 1988 0
	call	end_sequence@PLT
	.loc 1 1989 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	.loc 1 1990 0
	movl	-120(%ebp), %eax
	movl	%eax, -224(%ebp)
	jmp	.L619
.L643:
.LBE38:
	.loc 1 1992 0
	cmpl	$176, -96(%ebp)
	je	.L657
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L659
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	96(%eax), %eax
	movl	120(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L659
.L657:
.LBB41:
	.loc 1 2000 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	96(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 2002 0
	call	start_sequence@PLT
	.loc 1 2003 0
	movl	-64(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$1, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$52, (%esp)
	call	assign_stack_temp@PLT
	movl	%eax, -72(%ebp)
	.loc 1 2004 0
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 2011 0
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
	je	.L661
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L661
	movl	$5, -196(%ebp)
	jmp	.L664
.L661:
	movl	$4, -196(%ebp)
.L664:
	movl	-200(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-196(%ebp), %ecx
	movl	%ecx, (%esp)
	call	force_reg@PLT
	movl	%eax, -120(%ebp)
	movl	-120(%ebp), %eax
	movl	-204(%ebp), %edx
	movl	%eax, (%edx)
	.loc 1 2015 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L665
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L665
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L668
.L665:
	movl	$64, -192(%ebp)
	jmp	.L669
.L668:
	movl	$128, -192(%ebp)
.L669:
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
	.loc 1 2018 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L670
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
	je	.L670
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L670:
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
	.loc 1 2020 0
	call	get_insns@PLT
	movl	%eax, -68(%ebp)
	.loc 1 2021 0
	call	end_sequence@PLT
	.loc 1 2022 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	.loc 1 2023 0
	movl	-120(%ebp), %eax
	movl	%eax, -224(%ebp)
	jmp	.L619
.L659:
.LBE41:
	.loc 1 2025 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L673
	.loc 1 2030 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	.L675
	.loc 1 2032 0
	movl	rtx_equal_function_value_matters@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L677
	.loc 1 2037 0
	movl	-96(%ebp), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -224(%ebp)
	jmp	.L619
.L677:
	.loc 1 2041 0
	movl	8(%ebp), %edx
	movl	%edx, -224(%ebp)
	jmp	.L619
.L675:
	.loc 1 2043 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L679
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-104(%ebp), %eax
	je	.L679
	.loc 1 2045 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -224(%ebp)
	jmp	.L619
.L679:
	.loc 1 2047 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -224(%ebp)
	jmp	.L619
.L673:
	.loc 1 2066 0
	movl	8(%ebp), %ecx
	movl	%ecx, -224(%ebp)
	jmp	.L619
.L639:
	.loc 1 2070 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L682
	.loc 1 2072 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, (%esi)
	.loc 1 2073 0
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
	.loc 1 2074 0
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
	.loc 1 2075 0
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
	.loc 1 2078 0
	movl	12(%ebp), %eax
	movl	68(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L682
	.loc 1 2079 0
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
.L682:
	.loc 1 2082 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -224(%ebp)
	jmp	.L619
.L631:
	.loc 1 2085 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -124(%ebp)
	.loc 1 2086 0
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
	jmp	.L619
.L635:
	.loc 1 2091 0
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
	.loc 1 2095 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 2096 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L685
	.loc 1 2097 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L687
.L685:
	.loc 1 2098 0
	cmpl	$180, -96(%ebp)
	jle	.L687
	.loc 1 2100 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 2101 0
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
	.loc 1 2102 0
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
	.loc 1 2103 0
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
	.loc 1 2104 0
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
	.loc 1 2116 0
	movl	12(%ebp), %eax
	movl	68(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L689
	movl	12(%ebp), %eax
	movl	68(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L689
	.loc 1 2118 0
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
.L689:
	.loc 1 2120 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -96(%ebp)
.L687:
	.loc 1 2122 0
	movl	-96(%ebp), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2123 0
	movl	-124(%ebp), %eax
	movl	%eax, -224(%ebp)
	jmp	.L619
.L625:
	.loc 1 2131 0
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
	.loc 1 2132 0
	movl	-124(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L692
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L692
	.loc 1 2133 0
	movl	-124(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -124(%ebp)
.L692:
	.loc 1 2134 0
	movl	-124(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -224(%ebp)
	jmp	.L619
.L622:
	.loc 1 2139 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-88, %eax
	jne	.L620
.L621:
	.loc 1 2144 0
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
	.loc 1 2146 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_label_from_map@PLT
	movl	%eax, -224(%ebp)
	jmp	.L619
.L633:
	.loc 1 2149 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L695
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -188(%ebp)
	jmp	.L697
.L695:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_label_from_map@PLT
	movl	%eax, -188(%ebp)
.L697:
	movl	-188(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$77, (%esp)
	call	gen_rtx_fmt_u00@PLT
	movl	%eax, -124(%ebp)
	.loc 1 2155 0
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
	.loc 1 2160 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L698
	movl	-124(%ebp), %eax
	movl	4(%eax), %eax
	movl	52(%eax), %esi
	call	get_first_label_num@PLT
	cmpl	%eax, %esi
	jl	.L700
	movl	-124(%ebp), %eax
	movl	4(%eax), %eax
	movl	52(%eax), %esi
	call	max_label_num@PLT
	cmpl	%eax, %esi
	jl	.L698
.L700:
	movl	$1, -184(%ebp)
	jmp	.L702
.L698:
	movl	$0, -184(%ebp)
.L702:
	movzbl	-184(%ebp), %eax
	andl	$1, %eax
	movl	-124(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	3(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 2169 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L703
	movl	-124(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L703
	.loc 1 2170 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	132(%edx), %eax
	addl	$1, %eax
	movl	%eax, 132(%edx)
.L703:
	.loc 1 2172 0
	movl	-124(%ebp), %ecx
	movl	%ecx, -224(%ebp)
	jmp	.L619
.L627:
	.loc 1 2178 0
	movl	8(%ebp), %eax
	movl	%eax, -224(%ebp)
	jmp	.L619
.L634:
	.loc 1 2184 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L706
.LBB44:
	.loc 1 2186 0
	movl	inlining@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L708
	movl	inlining@GOTOFF(%ebx), %edx
	movl	%edx, -180(%ebp)
	jmp	.L710
.L708:
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -180(%ebp)
.L710:
	movl	-180(%ebp), %ecx
	movl	%ecx, -52(%ebp)
	.loc 1 2187 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pool_constant_for_function@PLT
	movl	%eax, -48(%ebp)
	.loc 1 2188 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pool_mode_for_function@PLT
	movl	%eax, -44(%ebp)
	.loc 1 2189 0
	movl	inlining@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L711
.LBB45:
	.loc 1 2193 0
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
	.loc 1 2211 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2217 0
	movl	-40(%ebp), %eax
	movl	%eax, -224(%ebp)
	jmp	.L619
.L711:
.LBE45:
	.loc 1 2219 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L706
	.loc 1 2220 0
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
	jmp	.L619
.L706:
.LBE44:
	.loc 1 2226 0
	movl	8(%ebp), %edx
	movl	%edx, -224(%ebp)
	jmp	.L619
.L628:
	.loc 1 2232 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	jne	.L714
.LBB46:
	.loc 1 2236 0
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
	.loc 1 2237 0
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
	jmp	.L619
.L714:
.LBE46:
	.loc 1 2240 0
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
	jmp	.L619
.L629:
	.loc 1 2246 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L620
	.loc 1 2247 0
	leal	__FUNCTION__.16401@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2247, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L623:
	.loc 1 2255 0
	movl	12(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	jne	.L620
	.loc 1 2257 0
	movl	$51, (%esp)
	call	rtx_alloc@PLT
	movl	%eax, -124(%ebp)
	.loc 1 2258 0
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
	.loc 1 2259 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	-124(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 2260 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2261 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2263 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 2264 0
	movl	12(%ebp), %eax
	movl	52(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 2265 0
	movl	12(%ebp), %eax
	movl	56(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 2267 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 2268 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 2269 0
	movl	-124(%ebp), %ecx
	movl	%ecx, -224(%ebp)
	jmp	.L619
.L626:
.LBB47:
	.loc 1 2285 0
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
	.loc 1 2287 0
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
	.loc 1 2289 0
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
	jmp	.L619
.L624:
.LBE47:
	.loc 1 2306 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	je	.L720
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	.L722
.L720:
.LBB48:
	.loc 1 2314 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	.loc 1 2315 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2316 0
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,8), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2318 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L723
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -176(%ebp)
	movl	%ecx, -172(%ebp)
	jmp	.L725
.L723:
	movl	$0, -176(%ebp)
	movl	$0, -172(%ebp)
.L725:
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	.loc 1 2321 0
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
	jmp	.L619
.L722:
.LBE48:
	.loc 1 2330 0
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
	jmp	.L619
.L632:
	.loc 1 2336 0
	movl	inlining@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L726
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L726
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L726
.LBB49:
	.loc 1 2341 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	inlining@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_pool_mode_for_function@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2343 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	inlining@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_pool_constant_for_function@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2345 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2353 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L730
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L730
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L730
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L730
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L730
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L730
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L730
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L730
	.loc 1 2354 0
	movl	-20(%ebp), %edx
	movl	%edx, -224(%ebp)
	jmp	.L619
.L730:
	.loc 1 2356 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	force_const_mem@PLT
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	%eax, -224(%ebp)
	jmp	.L619
.L726:
.LBE49:
	.loc 1 2359 0
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
	.loc 1 2361 0
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
	.loc 1 2366 0
	movl	inlining@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L739
	cmpl	$0, 16(%ebp)
	jne	.L739
	.loc 1 2367 0
	movl	-124(%ebp), %eax
	movzbl	3(%eax), %edx
	andl	$-5, %edx
	movb	%dl, 3(%eax)
.L739:
	.loc 1 2371 0
	movl	inlining@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L742
	movl	-124(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L742
	movl	-124(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L742
	movl	-124(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L746
	movl	-124(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -168(%ebp)
	jmp	.L748
.L746:
	movl	$0, -168(%ebp)
.L748:
	movl	-168(%ebp), %ecx
	movzbl	8(%ecx), %eax
	cmpb	$42, %al
	jne	.L742
	movl	-124(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L750
	movl	-124(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -164(%ebp)
	jmp	.L752
.L750:
	movl	$0, -164(%ebp)
.L752:
	movl	-164(%ebp), %edx
	movl	20(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L742
	.loc 1 2374 0
	movl	$0, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_expr@PLT
.L742:
	.loc 1 2376 0
	movl	-124(%ebp), %ecx
	movl	%ecx, -224(%ebp)
	jmp	.L619
.L620:
	.loc 1 2382 0
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_alloc@PLT
	movl	%eax, -124(%ebp)
	.loc 1 2383 0
	movl	-104(%ebp), %eax
	movl	%eax, %edx
	movl	-124(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 2384 0
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
	.loc 1 2385 0
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
	.loc 1 2386 0
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
	.loc 1 2388 0
	movl	-124(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -100(%ebp)
	.loc 1 2390 0
	movl	$0, -116(%ebp)
	jmp	.L754
.L755:
	.loc 1 2392 0
	movl	-100(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	$1, -100(%ebp)
	subl	$48, %eax
	movl	%eax, -232(%ebp)
	cmpl	$71, -232(%ebp)
	ja	.L756
	movl	-232(%ebp), %eax
	sall	$2, %eax
	movl	.L765@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L765:
	.long	.L757@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L758@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L759@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L760@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L756@GOTOFF
	.long	.L761@GOTOFF
	.long	.L762@GOTOFF
	.long	.L763@GOTOFF
	.long	.L756@GOTOFF
	.long	.L764@GOTOFF
	.text
.L757:
	.loc 1 2396 0
	movl	-116(%ebp), %esi
	movl	-116(%ebp), %edx
	movl	8(%ebp), %eax
	leal	4(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-124(%ebp), %ecx
	movl	%eax, 4(%ecx,%esi,8)
	movl	%edx, 8(%ecx,%esi,8)
	.loc 1 2397 0
	jmp	.L766
.L759:
	.loc 1 2400 0
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
	.loc 1 2402 0
	jmp	.L766
.L763:
	.loc 1 2407 0
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
	.loc 1 2408 0
	jmp	.L766
.L758:
	.loc 1 2411 0
	movl	-116(%ebp), %ecx
	movl	-116(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 4(%eax,%ecx,8)
	.loc 1 2412 0
	movl	-116(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	testl	%eax, %eax
	je	.L766
	movl	-116(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L766
	.loc 1 2414 0
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
	.loc 1 2415 0
	movl	$0, -112(%ebp)
	jmp	.L770
.L771:
	.loc 1 2416 0
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
	.loc 1 2415 0
	addl	$1, -112(%ebp)
.L770:
	movl	-116(%ebp), %edx
	movl	-124(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-112(%ebp), %eax
	jg	.L771
	.loc 1 2420 0
	jmp	.L766
.L764:
	.loc 1 2423 0
	movl	-116(%ebp), %esi
	movl	-116(%ebp), %edx
	movl	8(%ebp), %eax
	leal	4(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-124(%ebp), %ecx
	movl	%eax, 4(%ecx,%esi,8)
	movl	%edx, 8(%ecx,%esi,8)
	.loc 1 2424 0
	jmp	.L766
.L760:
	.loc 1 2427 0
	movl	-116(%ebp), %ecx
	movl	-116(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 4(%eax,%ecx,8)
	.loc 1 2428 0
	jmp	.L766
.L761:
	.loc 1 2431 0
	movl	-116(%ebp), %ecx
	movl	-116(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 4(%eax,%ecx,8)
	.loc 1 2432 0
	jmp	.L766
.L762:
	.loc 1 2435 0
	movl	-116(%ebp), %ecx
	movl	-116(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-124(%ebp), %eax
	movl	%edx, 4(%eax,%ecx,8)
	.loc 1 2436 0
	jmp	.L766
.L756:
	.loc 1 2439 0
	leal	__FUNCTION__.16401@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2439, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L766:
	.loc 1 2390 0
	addl	$1, -116(%ebp)
.L754:
	movl	-124(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-116(%ebp), %eax
	jg	.L755
	.loc 1 2443 0
	cmpl	$51, -108(%ebp)
	jne	.L773
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L773
	.loc 1 2445 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 48(%eax)
	.loc 1 2446 0
	movl	-124(%ebp), %eax
	movl	28(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 2447 0
	movl	-124(%ebp), %eax
	movl	36(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 56(%eax)
.L773:
	.loc 1 2451 0
	movl	-124(%ebp), %eax
	movl	%eax, -224(%ebp)
.L619:
	movl	-224(%ebp), %eax
	.loc 1 2452 0
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
	.loc 1 2460 0
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
	.loc 1 2463 0
	movl	12(%ebp), %eax
	movl	$0, 72(%eax)
	.loc 1 2469 0
	movl	8(%ebp), %edx
	addl	$44, %edx
	movl	$1, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	subst_constants
	.loc 1 2470 0
	call	apply_change_group@PLT
	.loc 1 2471 0
	movl	8(%ebp), %edx
	addl	$44, %edx
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	subst_constants
	.loc 1 2472 0
	call	apply_change_group@PLT
	.loc 1 2475 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	leal	mark_stores@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 2476 0
	movl	12(%ebp), %eax
	movl	$0, 316(%eax)
	.loc 1 2482 0
	movl	$0, -24(%ebp)
	jmp	.L778
.L779:
	.loc 1 2484 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	76(%eax,%edx,8), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L780
.LBB50:
	.loc 1 2486 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	76(%eax,%edx,8), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2488 0
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L782
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
	je	.L782
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L782:
.LBE51:
	.loc 1 2489 0
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L785
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
	jne	.L791
.L785:
.LBB52:
	.loc 1 2495 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	76(%eax,%edx,8), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L788
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
	je	.L788
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L788:
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
	jmp	.L791
.L780:
.LBE52:
.LBE50:
	.loc 1 2498 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	76(%eax,%edx,8), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L791
	.loc 1 2499 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	80(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%edx, 316(%eax)
.L791:
	.loc 1 2482 0
	addl	$1, -24(%ebp)
.L778:
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	-24(%ebp), %eax
	jg	.L779
	.loc 1 2505 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	try_constants, .-try_constants
	.section	.rodata
	.type	__FUNCTION__.17267, @object
	.size	__FUNCTION__.17267, 16
__FUNCTION__.17267:
	.string	"subst_constants"
	.text
	.type	subst_constants, @function
subst_constants:
.LFB33:
	.loc 1 2528 0
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
	.loc 1 2529 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 2533 0
	call	num_validated_changes@PLT
	movl	%eax, -76(%ebp)
	.loc 1 2534 0
	movl	$0, -72(%ebp)
	.loc 1 2535 0
	movl	$54, -68(%ebp)
	.loc 1 2537 0
	movl	-96(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -84(%ebp)
	.loc 1 2539 0
	movl	-84(%ebp), %eax
	subl	$25, %eax
	movl	%eax, -128(%ebp)
	cmpl	$53, -128(%ebp)
	ja	.L796
	movl	-128(%ebp), %eax
	sall	$2, %eax
	movl	.L803@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L803:
	.long	.L943@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L798@GOTOFF
	.long	.L799@GOTOFF
	.long	.L799@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L943@GOTOFF
	.long	.L943@GOTOFF
	.long	.L943@GOTOFF
	.long	.L796@GOTOFF
	.long	.L943@GOTOFF
	.long	.L943@GOTOFF
	.long	.L796@GOTOFF
	.long	.L800@GOTOFF
	.long	.L796@GOTOFF
	.long	.L801@GOTOFF
	.long	.L796@GOTOFF
	.long	.L796@GOTOFF
	.long	.L802@GOTOFF
	.long	.L943@GOTOFF
	.long	.L943@GOTOFF
	.text
.L799:
	.loc 1 2562 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L943
	.loc 1 2563 0
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
	.loc 1 2564 0
	jmp	.L943
.L800:
	.loc 1 2569 0
	cmpl	$0, 20(%ebp)
	jne	.L943
.LBB54:
	.loc 1 2571 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 2574 0
	cmpl	$175, -64(%ebp)
	jg	.L809
	movl	-96(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L943
.L809:
	movl	-64(%ebp), %edx
	movl	16(%ebp), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L943
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
	je	.L943
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	%eax, %edx
	jb	.L943
	.loc 1 2579 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 2581 0
	jmp	.L943
.L801:
.LBE54:
	.loc 1 2589 0
	cmpl	$0, 20(%ebp)
	jne	.L796
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L796
.LBB55:
	.loc 1 2591 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -100(%ebp)
	.loc 1 2592 0
	movl	$0, -56(%ebp)
	.loc 1 2599 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	subst_constants
	.loc 1 2600 0
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
	.loc 1 2604 0
	cmpl	$0, -56(%ebp)
	je	.L817
	.loc 1 2605 0
	movl	$1, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	jmp	.L943
.L817:
	.loc 1 2607 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	cancel_changes@PLT
	.loc 1 2609 0
	jmp	.L943
.L802:
.LBE55:
	.loc 1 2614 0
	movl	-96(%ebp), %eax
	addl	$4, %eax
	movl	$0, 12(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	subst_constants
	.loc 1 2617 0
	cmpl	$0, 20(%ebp)
	jne	.L943
	cmpl	$0, 12(%ebp)
	je	.L943
	call	num_validated_changes@PLT
	cmpl	-76(%ebp), %eax
	je	.L943
	movl	-96(%ebp), %eax
	movl	4(%eax), %edx
	movl	-96(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	memory_address_p@PLT
	testl	%eax, %eax
	jne	.L943
	.loc 1 2619 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	cancel_changes@PLT
	.loc 1 2620 0
	jmp	.L943
.L798:
.LBB56:
	.loc 1 2627 0
	movl	-96(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -52(%ebp)
	.loc 1 2628 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2630 0
	movl	$0, -36(%ebp)
	.loc 1 2635 0
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$84, %ax
	jne	.L825
	.loc 1 2637 0
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2638 0
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$4, %eax
	jne	.L825
	.loc 1 2644 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	.loc 1 2645 0
	cmpl	$0, -36(%ebp)
	jne	.L825
	.loc 1 2646 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
.L825:
	.loc 1 2650 0
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
	.loc 1 2651 0
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2653 0
	jmp	.L829
.L830:
	.loc 1 2657 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	jne	.L831
	.loc 1 2659 0
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
	.loc 1 2660 0
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
.L831:
	.loc 1 2662 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, -52(%ebp)
.L829:
	.loc 1 2653 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L830
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L830
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L830
	.loc 1 2666 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L836
	.loc 1 2667 0
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
.L836:
	.loc 1 2673 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L838
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
	je	.L840
	movl	$8, -120(%ebp)
	jmp	.L842
.L840:
	movl	$4, -120(%ebp)
.L842:
	movl	-120(%ebp), %eax
	cmpl	%eax, -124(%ebp)
	jg	.L838
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
	je	.L844
	movl	$8, -112(%ebp)
	jmp	.L846
.L844:
	movl	$4, -112(%ebp)
.L846:
	movl	-112(%ebp), %eax
	cmpl	%eax, -116(%ebp)
	jg	.L838
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
	ja	.L838
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
	je	.L838
	.loc 1 2680 0
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
.L838:
	.loc 1 2683 0
	movl	16(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	$29, %eax
	jg	.L943
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L852
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L852
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L852
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L852
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L852
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L852
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L852
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L852
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L861
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$176, %eax
	je	.L852
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$177, %eax
	je	.L852
.L861:
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L864
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L864
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$176, %eax
	je	.L867
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$177, %eax
	jne	.L864
.L867:
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L852
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L852
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L852
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L852
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L852
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L852
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L852
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L852
.L864:
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$84, %ax
	je	.L852
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-48(%ebp), %eax
	jne	.L943
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-44(%ebp), %eax
	je	.L852
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	je	.L852
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L943
.L852:
.LBB57:
	.loc 1 2704 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2705 0
	movl	16(%ebp), %eax
	movl	72(%eax), %ecx
	movl	16(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 80(%edx,%ecx,8)
	.loc 1 2706 0
	movl	16(%ebp), %eax
	movl	72(%eax), %ecx
	movl	16(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 76(%edx,%ecx,8)
	leal	1(%ecx), %edx
	movl	16(%ebp), %eax
	movl	%edx, 72(%eax)
	.loc 1 2707 0
	cmpl	$0, -36(%ebp)
	je	.L943
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$84, %ax
	jne	.L943
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$4, %eax
	jne	.L943
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L943
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L943
	.loc 1 2717 0
	movl	16(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 320(%edx)
	.loc 1 2718 0
	movl	16(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 324(%edx)
	.loc 1 2722 0
	jmp	.L943
.L796:
.LBE57:
.LBE56:
	.loc 1 2728 0
	movl	-84(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -80(%ebp)
	.loc 1 2731 0
	movl	-80(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L885
	.loc 1 2732 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -68(%ebp)
.L885:
	.loc 1 2734 0
	movl	$0, -92(%ebp)
	jmp	.L887
.L888:
	.loc 1 2736 0
	movl	-80(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	$1, -80(%ebp)
	subl	$48, %eax
	movl	%eax, -132(%ebp)
	cmpl	$71, -132(%ebp)
	ja	.L889
	movl	-132(%ebp), %eax
	sall	$2, %eax
	movl	.L894@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L894:
	.long	.L895@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L895@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L892@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L893@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L895@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L895@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L889@GOTOFF
	.long	.L895@GOTOFF
	.long	.L895@GOTOFF
	.long	.L895@GOTOFF
	.long	.L889@GOTOFF
	.long	.L895@GOTOFF
	.text
.L893:
	.loc 1 2742 0
	movl	-92(%ebp), %eax
	movl	-96(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L895
	.loc 1 2743 0
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
	.loc 1 2744 0
	jmp	.L895
.L892:
	.loc 1 2756 0
	movl	-92(%ebp), %eax
	movl	-96(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L895
	movl	-92(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L895
	.loc 1 2757 0
	movl	$0, -88(%ebp)
	jmp	.L901
.L902:
	.loc 1 2758 0
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
	.loc 1 2757 0
	addl	$1, -88(%ebp)
.L901:
	movl	-92(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-88(%ebp), %eax
	jg	.L902
	.loc 1 2760 0
	jmp	.L895
.L889:
	.loc 1 2763 0
	leal	__FUNCTION__.17267@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2763, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L895:
	.loc 1 2734 0
	addl	$1, -92(%ebp)
.L887:
	movl	-84(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-92(%ebp), %eax
	jg	.L888
	.loc 1 2769 0
	cmpl	$0, 20(%ebp)
	jne	.L904
	movl	-84(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$99, %al
	je	.L906
	cmpl	$112, -84(%ebp)
	je	.L906
	cmpl	$113, -84(%ebp)
	jne	.L904
.L906:
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L909
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L909
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L909
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L909
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L909
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L909
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L909
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L904
.L909:
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L904
.LBB58:
	.loc 1 2773 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2774 0
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
	.loc 1 2775 0
	movl	-96(%ebp), %edx
	addl	$12, %edx
	movl	$1, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
.L904:
.LBE58:
	.loc 1 2779 0
	cmpl	$0, 20(%ebp)
	jne	.L918
	.loc 1 2780 0
	movl	-84(%ebp), %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$49, %eax
	movl	%eax, -136(%ebp)
	cmpl	$50, -136(%ebp)
	ja	.L918
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	.L924@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L924:
	.long	.L920@GOTOFF
	.long	.L921@GOTOFF
	.long	.L922@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L923@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L918@GOTOFF
	.long	.L922@GOTOFF
	.long	.L921@GOTOFF
	.text
.L920:
	.loc 1 2783 0
	cmpl	$54, -68(%ebp)
	jne	.L925
	.loc 1 2784 0
	leal	__FUNCTION__.17267@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2784, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L925:
	.loc 1 2785 0
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
	.loc 1 2787 0
	jmp	.L918
.L923:
.LBB59:
	.loc 1 2791 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 2793 0
	cmpl	$0, -24(%ebp)
	jne	.L927
	.loc 1 2794 0
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
.L927:
	.loc 1 2795 0
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
	.loc 1 2813 0
	jmp	.L918
.L921:
.LBE59:
	.loc 1 2818 0
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
	.loc 1 2820 0
	jmp	.L918
.L922:
	.loc 1 2824 0
	cmpl	$54, -68(%ebp)
	jne	.L929
	.loc 1 2825 0
	leal	__FUNCTION__.17267@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2825, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L929:
	.loc 1 2827 0
	cmpl	$82, -84(%ebp)
	jne	.L931
.LBB60:
	.loc 1 2829 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2831 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L931
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L931
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L931
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	320(%eax), %eax
	cmpl	%eax, %edx
	jne	.L931
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L931
.LBB61:
	.loc 1 2843 0
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
	.loc 1 2845 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L938
	.loc 1 2846 0
	movl	-96(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L931
.L938:
	.loc 1 2847 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L931
	.loc 1 2848 0
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -72(%ebp)
.L931:
.LBE61:
.LBE60:
	.loc 1 2851 0
	cmpl	$0, -72(%ebp)
	jne	.L918
	.loc 1 2852 0
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
.L918:
	.loc 1 2858 0
	cmpl	$0, -72(%ebp)
	je	.L943
	.loc 1 2859 0
	movl	$1, 12(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
.L943:
	.loc 1 2860 0
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
	.loc 1 2870 0
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
	.loc 1 2871 0
	movl	$-1, -28(%ebp)
	.loc 1 2872 0
	movl	$0, -24(%ebp)
	.loc 1 2877 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L945
	.loc 1 2878 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	jmp	.L947
.L945:
	.loc 1 2879 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L947
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L947
	.loc 1 2881 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2882 0
	cmpl	$175, -28(%ebp)
	jg	.L950
	.loc 1 2883 0
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
.L950:
	.loc 1 2887 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
.L947:
	.loc 1 2890 0
	cmpl	$0, -28(%ebp)
	js	.L963
.LBB62:
	.loc 1 2892 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2894 0
	cmpl	$175, -20(%ebp)
	ja	.L954
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-20(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -44(%ebp)
	jmp	.L956
.L954:
	movl	-20(%ebp), %eax
	movl	%eax, -44(%ebp)
.L956:
	movl	-44(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2899 0
	cmpl	$176, -20(%ebp)
	je	.L963
	cmpl	$177, -20(%ebp)
	je	.L963
	.loc 1 2901 0
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L959
.L960:
	.loc 1 2902 0
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jbe	.L961
	.loc 1 2903 0
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	$0, 16(%edx,%eax,8)
.L961:
	.loc 1 2901 0
	addl	$1, -12(%ebp)
.L959:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jbe	.L960
.L963:
.LBE62:
	.loc 1 2905 0
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
	.loc 1 2920 0
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
	.loc 1 2921 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L972
	.loc 1 2923 0
	movl	8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 32(%edx)
.LBB63:
	.loc 1 2928 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2929 0
	jmp	.L967
.L968:
	.loc 1 2931 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	set_decl_origin_self@PLT
	.loc 1 2930 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L967:
	.loc 1 2929 0
	cmpl	$0, -12(%ebp)
	jne	.L968
.LBE63:
.LBB64:
	.loc 1 2937 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2938 0
	jmp	.L970
.L971:
	.loc 1 2940 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_block_origin_self
	.loc 1 2939 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L970:
	.loc 1 2938 0
	cmpl	$0, -8(%ebp)
	jne	.L971
.L972:
.LBE64:
	.loc 1 2943 0
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
	.loc 1 2959 0
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
	.loc 1 2960 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	jne	.L982
	.loc 1 2962 0
	movl	8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 72(%edx)
	.loc 1 2963 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L982
.LBB65:
	.loc 1 2967 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L977
.L978:
	.loc 1 2968 0
	movl	-8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 72(%edx)
	.loc 1 2967 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L977:
	cmpl	$0, -8(%ebp)
	jne	.L978
	.loc 1 2969 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L982
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L982
	.loc 1 2971 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	call	set_block_origin_self
.L982:
.LBE65:
	.loc 1 2974 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	set_decl_origin_self, .-set_decl_origin_self
	.type	set_block_abstract_flags, @function
set_block_abstract_flags:
.LFB37:
	.loc 1 2985 0
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
	.loc 1 2989 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	16(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 16(%ecx)
	.loc 1 2991 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2992 0
	jmp	.L984
.L985:
	.loc 1 2994 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	set_decl_abstract_flags@PLT
	.loc 1 2993 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L984:
	.loc 1 2992 0
	cmpl	$0, -12(%ebp)
	jne	.L985
	.loc 1 2996 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2997 0
	jmp	.L987
.L988:
	.loc 1 2999 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_block_abstract_flags
	.loc 1 2998 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L987:
	.loc 1 2997 0
	cmpl	$0, -8(%ebp)
	jne	.L988
	.loc 1 3000 0
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
	.loc 1 3012 0
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
	.loc 1 3013 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	sall	$7, %ecx
	movzbl	33(%edx), %eax
	andl	$127, %eax
	orl	%ecx, %eax
	movb	%al, 33(%edx)
	.loc 1 3014 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L999
.LBB66:
	.loc 1 3018 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L994
.L995:
	.loc 1 3019 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	movl	-8(%ebp), %edx
	movl	%eax, %ecx
	sall	$7, %ecx
	movzbl	33(%edx), %eax
	andl	$127, %eax
	orl	%ecx, %eax
	movb	%al, 33(%edx)
	.loc 1 3018 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L994:
	cmpl	$0, -8(%ebp)
	jne	.L995
	.loc 1 3020 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L999
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L999
	.loc 1 3022 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	set_block_abstract_flags
.L999:
.LBE66:
	.loc 1 3024 0
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
	.loc 1 3035 0
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
	.loc 1 3036 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3037 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3038 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3040 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, old_cfun@GOTOFF(%ebx)
	.loc 1 3041 0
	movl	cfun@GOT(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3042 0
	movl	current_function_decl@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3044 0
	movl	-8(%ebp), %eax
	movl	268(%eax), %eax
	movl	%eax, (%esp)
	call	set_new_last_label_num@PLT
	.loc 1 3047 0
	movl	8(%ebp), %edx
	movzbl	34(%edx), %eax
	andl	$127, %eax
	movb	%al, 34(%edx)
	.loc 1 3050 0
	movl	-8(%ebp), %eax
	movl	252(%eax), %eax
	testl	%eax, %eax
	je	.L1001
	.loc 1 3052 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 3053 0
	movl	debug_hooks@GOT(%ebx), %edx
	movl	do_nothing_debug_hooks@GOT(%ebx), %eax
	movl	%eax, (%edx)
.L1001:
	.loc 1 3058 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 3059 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 3064 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rest_of_compilation@PLT
	.loc 1 3065 0
	movl	8(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$-9, %eax
	movb	%al, 33(%edx)
	.loc 1 3067 0
	movl	old_cfun@GOTOFF(%ebx), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 3068 0
	movl	old_cfun@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1003
	movl	old_cfun@GOTOFF(%ebx), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1005
.L1003:
	movl	$0, -24(%ebp)
.L1005:
	movl	current_function_decl@GOT(%ebx), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 3069 0
	movl	write_symbols@GOT(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3070 0
	movl	debug_hooks@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3071 0
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
	.loc 1 3081 0
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
	.loc 1 3082 0
	movl	8(%ebp), %eax
	movl	128(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3085 0
	cmpl	$0, -12(%ebp)
	jne	.L1008
	.loc 1 3086 0
	movl	$0, -24(%ebp)
	jmp	.L1010
.L1008:
	.loc 1 3088 0
	movl	$0, -8(%ebp)
	jmp	.L1011
.L1012:
	.loc 1 3089 0
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
	je	.L1013
	.loc 1 3090 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1010
.L1013:
	.loc 1 3088 0
	addl	$1, -8(%ebp)
.L1011:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L1012
	.loc 1 3092 0
	movl	$0, -24(%ebp)
.L1010:
	movl	-24(%ebp), %eax
	.loc 1 3093 0
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
	.loc 1 3099 0
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
	.loc 1 3100 0
	movl	8(%ebp), %eax
	movl	128(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3103 0
	cmpl	$0, -12(%ebp)
	jne	.L1018
	.loc 1 3104 0
	movl	$0, -24(%ebp)
	jmp	.L1020
.L1018:
	.loc 1 3106 0
	movl	$0, -8(%ebp)
	jmp	.L1021
.L1022:
	.loc 1 3107 0
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
	je	.L1023
	.loc 1 3108 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1020
.L1023:
	.loc 1 3106 0
	addl	$1, -8(%ebp)
.L1021:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L1022
	.loc 1 3110 0
	movl	$0, -24(%ebp)
.L1020:
	movl	-24(%ebp), %eax
	.loc 1 3111 0
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
	.loc 1 3117 0
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
	.loc 1 3118 0
	movl	8(%ebp), %eax
	movl	128(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3119 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	has_func_hard_reg_initial_val@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3121 0
	cmpl	$0, -12(%ebp)
	je	.L1028
	.loc 1 3122 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1030
.L1028:
	.loc 1 3124 0
	cmpl	$0, -16(%ebp)
	jne	.L1031
	.loc 1 3126 0
	movl	$12, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 128(%eax)
	.loc 1 3127 0
	movl	8(%ebp), %eax
	movl	128(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3128 0
	movl	-16(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 3129 0
	movl	-16(%ebp), %eax
	movl	$5, 4(%eax)
	.loc 1 3130 0
	movl	$40, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
.L1031:
	.loc 1 3133 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jl	.L1033
	.loc 1 3135 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	leal	5(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 3136 0
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
.L1033:
	.loc 1 3142 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	sall	$3, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3143 0
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
	.loc 1 3145 0
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
.L1030:
	movl	-28(%ebp), %eax
	.loc 1 3146 0
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
	.loc 1 3152 0
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
	.loc 1 3153 0
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
	.loc 1 3154 0
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
	.loc 1 3160 0
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
	.loc 1 3161 0
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
	.loc 1 3162 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	has_hard_reg_initial_val, .-has_hard_reg_initial_val
	.type	setup_initial_hard_reg_value_integration, @function
setup_initial_hard_reg_value_integration:
.LFB45:
	.loc 1 3168 0
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
	.loc 1 3169 0
	movl	8(%ebp), %eax
	movl	128(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3172 0
	cmpl	$0, -16(%ebp)
	je	.L1045
	.loc 1 3175 0
	movl	$0, -12(%ebp)
	jmp	.L1043
.L1044:
	.loc 1 3176 0
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
	.loc 1 3175 0
	addl	$1, -12(%ebp)
.L1043:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L1044
.L1045:
	.loc 1 3178 0
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
	.loc 1 3183 0
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
	.loc 1 3184 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	128(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3188 0
	cmpl	$0, -16(%ebp)
	je	.L1052
	.loc 1 3191 0
	call	start_sequence@PLT
	.loc 1 3192 0
	movl	$0, -12(%ebp)
	jmp	.L1049
.L1050:
	.loc 1 3193 0
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
	.loc 1 3192 0
	addl	$1, -12(%ebp)
.L1049:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L1050
	.loc 1 3194 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3195 0
	call	end_sequence@PLT
	.loc 1 3197 0
	call	get_insns@PLT
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
.L1052:
	.loc 1 3198 0
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
	.loc 1 3205 0
	pushl	%ebp
.LCFI141:
	movl	%esp, %ebp
.LCFI142:
	.loc 1 3232 0
	popl	%ebp
	ret
.LFE47:
	.size	allocate_initial_values, .-allocate_initial_values
.globl gt_ggc_mx_initial_value_struct
	.type	gt_ggc_mx_initial_value_struct, @function
gt_ggc_mx_initial_value_struct:
.LFB48:
	.file 2 "../../../kgccfe/gnu/MIPS/gt-integrate.h"
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
	je	.L1067
	cmpl	$1, -12(%ebp)
	je	.L1067
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L1067
	.loc 2 30 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L1067
.LBB67:
	.loc 2 32 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	.loc 2 33 0
	movl	$0, -8(%ebp)
	jmp	.L1061
.L1062:
	.loc 2 34 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1063
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L1063:
	.loc 2 35 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1065
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L1065:
	.loc 2 33 0
	addl	$1, -8(%ebp)
.L1061:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	ja	.L1062
.L1067:
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
	.file 3 "../../../kgccfe/gnu/MIPS/config.h"
	.file 4 "../../../kgccfe/gnu/rtl.h"
	.file 5 "../../../kgccfe/gnu/machmode.h"
	.file 6 "../../../kgccfe/gnu/bitmap.h"
	.file 7 "../../../kgccfe/gnu/tree.h"
	.file 8 "../../../kgccfe/gnu/real.h"
	.file 9 "../../../kgccfe/gnu/hashtable.h"
	.file 10 "../../../kgccfe/gnu/location.h"
	.file 11 "../../../kgccfe/gnu/function.h"
	.file 12 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 13 "../../../kgccfe/omp_types.h"
	.file 14 "../../../kgccfe/gnu/basic-block.h"
	.file 15 "../../../kgccfe/gnu/sbitmap.h"
	.file 16 "../../../kgccfe/gnu/integrate.h"
	.file 17 "../../../kgccfe/gnu/varray.h"
	.file 18 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 19 "../../../kgccfe/gnu/regs.h"
	.file 20 "../../../kgccfe/gnu/flags.h"
	.file 21 "../../../kgccfe/gnu/debug.h"
	.file 22 "../../../kgccfe/gnu/params.h"
	.file 23 "../../../kgccfe/gnu/target.h"
	.file 24 "/usr/include/stdio.h"
	.file 25 "/usr/include/libio.h"
	.file 26 "/usr/include/bits/types.h"
	.file 27 "../../../kgccfe/gnu/langhooks.h"
	.file 28 "../../../kgccfe/gnu/ggc.h"
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
	.long	0xa3c2
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/integrate.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
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
	.byte	0x8a
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
	.byte	0x8d
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
	.byte	0xcf
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
	.byte	0xd4
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
	.byte	0xf8
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x4
	.byte	0xf9
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
	.byte	0x94
	.byte	0x3
	.byte	0xf
	.uleb128 0x9
	.long	.LASF1
	.byte	0x7
	.value	0x855
	.long	0x39da
	.uleb128 0xa
	.string	"int_cst"
	.byte	0x7
	.value	0x856
	.long	0x3cf4
	.uleb128 0xa
	.string	"real_cst"
	.byte	0x7
	.value	0x857
	.long	0x3d3c
	.uleb128 0xa
	.string	"vector"
	.byte	0x7
	.value	0x858
	.long	0x3eab
	.uleb128 0xa
	.string	"string"
	.byte	0x7
	.value	0x859
	.long	0x3de9
	.uleb128 0xa
	.string	"complex"
	.byte	0x7
	.value	0x85a
	.long	0x3e56
	.uleb128 0xa
	.string	"identifier"
	.byte	0x7
	.value	0x85b
	.long	0x3f31
	.uleb128 0x9
	.long	.LASF2
	.byte	0x7
	.value	0x85c
	.long	0x4fb7
	.uleb128 0xa
	.string	"type"
	.byte	0x7
	.value	0x85d
	.long	0x4196
	.uleb128 0xa
	.string	"list"
	.byte	0x7
	.value	0x85e
	.long	0x3f68
	.uleb128 0xa
	.string	"vec"
	.byte	0x7
	.value	0x85f
	.long	0x3faf
	.uleb128 0xa
	.string	"exp"
	.byte	0x7
	.value	0x860
	.long	0x4000
	.uleb128 0xa
	.string	"block"
	.byte	0x7
	.value	0x861
	.long	0x404c
	.uleb128 0xa
	.string	"omp"
	.byte	0x7
	.value	0x863
	.long	0x5954
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
	.byte	0x2f
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
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
	.byte	0x5e
	.long	0x12f8
	.uleb128 0x14
	.long	0x1445
	.long	.LASF6
	.byte	0x18
	.byte	0x4
	.byte	0x68
	.uleb128 0x7
	.string	"alias"
	.byte	0x4
	.byte	0x69
	.long	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x4
	.byte	0x6a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x4
	.byte	0x6b
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x4
	.byte	0x6c
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x4
	.byte	0x6d
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1f
	.long	.LASF6
	.byte	0x4
	.byte	0x6e
	.long	0x13ed
	.uleb128 0x8
	.long	0x1522
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x73
	.uleb128 0x20
	.string	"rtwint"
	.byte	0x4
	.byte	0x74
	.long	0x459
	.uleb128 0x20
	.string	"rtint"
	.byte	0x4
	.byte	0x75
	.long	0x2e4
	.uleb128 0x20
	.string	"rtuint"
	.byte	0x4
	.byte	0x76
	.long	0x3bd
	.uleb128 0x20
	.string	"rtstr"
	.byte	0x4
	.byte	0x77
	.long	0x2d1
	.uleb128 0x20
	.string	"rtx"
	.byte	0x4
	.byte	0x78
	.long	0x9e
	.uleb128 0x20
	.string	"rtvec"
	.byte	0x4
	.byte	0x79
	.long	0x19e
	.uleb128 0x20
	.string	"rttype"
	.byte	0x4
	.byte	0x7a
	.long	0x831
	.uleb128 0x20
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x7b
	.long	0x13d2
	.uleb128 0x20
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x7c
	.long	0x1536
	.uleb128 0x20
	.string	"rtbit"
	.byte	0x4
	.byte	0x7d
	.long	0x159e
	.uleb128 0x20
	.string	"rttree"
	.byte	0x4
	.byte	0x7e
	.long	0x1e6
	.uleb128 0x20
	.string	"bb"
	.byte	0x4
	.byte	0x7f
	.long	0x1729
	.uleb128 0x20
	.string	"rtmem"
	.byte	0x4
	.byte	0x80
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
	.byte	0x7d
	.uleb128 0x7
	.string	"first"
	.byte	0x6
	.byte	0x3d
	.long	0x60dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x6
	.byte	0x3e
	.long	0x60dc
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
	.byte	0x7f
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
	.long	0x622c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0xe
	.byte	0xbc
	.long	0x622c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0xe
	.byte	0xc1
	.long	0x615e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0xe
	.byte	0xc5
	.long	0x615e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0xe
	.byte	0xcb
	.long	0x615e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0xe
	.byte	0xcd
	.long	0x615e
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
	.long	0x649f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0xe
	.byte	0xdf
	.long	0x616c
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
	.byte	0x82
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
	.byte	0x27
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
	.byte	0x31
	.long	0x3bd
	.uleb128 0x4
	.long	0x211d
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x7
	.byte	0x32
	.uleb128 0x7
	.string	"block"
	.byte	0x7
	.byte	0x32
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF7
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
	.long	0x2127
	.uleb128 0x21
	.string	"st"
	.byte	0x1
	.uleb128 0x1c
	.long	0x217c
	.long	.LASF9
	.byte	0x4
	.byte	0x7
	.byte	0x5a
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
	.long	0x39da
	.string	"built_in_function"
	.byte	0x4
	.byte	0x7
	.byte	0x69
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
	.string	"BUILT_IN_FLOOR"
	.sleb128 48
	.uleb128 0x1b
	.string	"BUILT_IN_FLOORF"
	.sleb128 49
	.uleb128 0x1b
	.string	"BUILT_IN_FLOORL"
	.sleb128 50
	.uleb128 0x1b
	.string	"BUILT_IN_POW"
	.sleb128 51
	.uleb128 0x1b
	.string	"BUILT_IN_TAN"
	.sleb128 52
	.uleb128 0x1b
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 53
	.uleb128 0x1b
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 54
	.uleb128 0x1b
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 55
	.uleb128 0x1b
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 56
	.uleb128 0x1b
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 57
	.uleb128 0x1b
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 58
	.uleb128 0x1b
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 59
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MAC"
	.sleb128 60
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MACN"
	.sleb128 61
	.uleb128 0x1b
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 62
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 63
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 64
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MULA"
	.sleb128 65
	.uleb128 0x1b
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 66
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 67
	.uleb128 0x1b
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 68
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MACD"
	.sleb128 69
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 70
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 71
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 72
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 73
	.uleb128 0x1b
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 74
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 75
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 76
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 77
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 78
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 79
	.uleb128 0x1b
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 80
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 81
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 82
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 83
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 84
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 85
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 86
	.uleb128 0x1b
	.string	"BUILD_IN_C3_PTR"
	.sleb128 87
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 88
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 89
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 90
	.uleb128 0x1b
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 91
	.uleb128 0x1b
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 92
	.uleb128 0x1b
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 93
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 94
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 95
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 96
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 97
	.uleb128 0x1b
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 98
	.uleb128 0x1b
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 99
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DADD"
	.sleb128 100
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 101
	.uleb128 0x1b
	.string	"BUILD_IN_C3_FFT"
	.sleb128 102
	.uleb128 0x1b
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 103
	.uleb128 0x1b
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 104
	.uleb128 0x1b
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 105
	.uleb128 0x1b
	.string	"BUILD_IN_EXTRACT"
	.sleb128 106
	.uleb128 0x1b
	.string	"BUILD_IN_C3_BITR"
	.sleb128 107
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 108
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 109
	.uleb128 0x1b
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 110
	.uleb128 0x1b
	.string	"BUILD_IN_C3_STORE"
	.sleb128 111
	.uleb128 0x1b
	.string	"BUILD_IN_C3_REVB"
	.sleb128 112
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 113
	.uleb128 0x1b
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 114
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 115
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 116
	.uleb128 0x1b
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 117
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 118
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 119
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 120
	.uleb128 0x1b
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 121
	.uleb128 0x1b
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 122
	.uleb128 0x1b
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 123
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 124
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 125
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 126
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 127
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 128
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 129
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 130
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 131
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 132
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 133
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 134
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 135
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 136
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 137
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 138
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 139
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 140
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 141
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 142
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 143
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 144
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 145
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 146
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 147
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 148
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 149
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VRND"
	.sleb128 150
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 151
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 152
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 153
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 154
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 155
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 156
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 157
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SAD"
	.sleb128 158
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 159
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SATD"
	.sleb128 160
	.uleb128 0x1b
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 161
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 162
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BCST"
	.sleb128 163
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 164
	.uleb128 0x1b
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 165
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 166
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 167
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 168
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 169
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MULS"
	.sleb128 170
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MADS"
	.sleb128 171
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 172
	.uleb128 0x1b
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 173
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MOV"
	.sleb128 174
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 175
	.uleb128 0x1b
	.string	"BUILT_IN_C2_CLP"
	.sleb128 176
	.uleb128 0x1b
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 177
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 178
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 179
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 180
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 181
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 182
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BOP"
	.sleb128 183
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 184
	.uleb128 0x1b
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 185
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 186
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 187
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 188
	.uleb128 0x1b
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 189
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MED"
	.sleb128 190
	.uleb128 0x1b
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 191
	.uleb128 0x1b
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 192
	.uleb128 0x1b
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 193
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 194
	.uleb128 0x1b
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 195
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 196
	.uleb128 0x1b
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 197
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 198
	.uleb128 0x1b
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 199
	.uleb128 0x1b
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 200
	.uleb128 0x1b
	.string	"BUILT_IN_C2_FORK"
	.sleb128 201
	.uleb128 0x1b
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 202
	.uleb128 0x1b
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 203
	.uleb128 0x1b
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 204
	.uleb128 0x1b
	.string	"BUILT_IN_SQRT"
	.sleb128 205
	.uleb128 0x1b
	.string	"BUILT_IN_SIN"
	.sleb128 206
	.uleb128 0x1b
	.string	"BUILT_IN_COS"
	.sleb128 207
	.uleb128 0x1b
	.string	"BUILT_IN_EXP"
	.sleb128 208
	.uleb128 0x1b
	.string	"BUILT_IN_LOG"
	.sleb128 209
	.uleb128 0x1b
	.string	"BUILT_IN_SQRTF"
	.sleb128 210
	.uleb128 0x1b
	.string	"BUILT_IN_SINF"
	.sleb128 211
	.uleb128 0x1b
	.string	"BUILT_IN_COSF"
	.sleb128 212
	.uleb128 0x1b
	.string	"BUILT_IN_EXPF"
	.sleb128 213
	.uleb128 0x1b
	.string	"BUILT_IN_LOGF"
	.sleb128 214
	.uleb128 0x1b
	.string	"BUILT_IN_SQRTL"
	.sleb128 215
	.uleb128 0x1b
	.string	"BUILT_IN_SINL"
	.sleb128 216
	.uleb128 0x1b
	.string	"BUILT_IN_COSL"
	.sleb128 217
	.uleb128 0x1b
	.string	"BUILT_IN_EXPL"
	.sleb128 218
	.uleb128 0x1b
	.string	"BUILT_IN_LOGL"
	.sleb128 219
	.uleb128 0x1b
	.string	"BUILT_IN_INF"
	.sleb128 220
	.uleb128 0x1b
	.string	"BUILT_IN_INFF"
	.sleb128 221
	.uleb128 0x1b
	.string	"BUILT_IN_INFL"
	.sleb128 222
	.uleb128 0x1b
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 223
	.uleb128 0x1b
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 224
	.uleb128 0x1b
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 225
	.uleb128 0x1b
	.string	"BUILT_IN_NAN"
	.sleb128 226
	.uleb128 0x1b
	.string	"BUILT_IN_NANF"
	.sleb128 227
	.uleb128 0x1b
	.string	"BUILT_IN_NANL"
	.sleb128 228
	.uleb128 0x1b
	.string	"BUILT_IN_NANS"
	.sleb128 229
	.uleb128 0x1b
	.string	"BUILT_IN_NANSF"
	.sleb128 230
	.uleb128 0x1b
	.string	"BUILT_IN_NANSL"
	.sleb128 231
	.uleb128 0x1b
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 232
	.uleb128 0x1b
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 233
	.uleb128 0x1b
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 234
	.uleb128 0x1b
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 235
	.uleb128 0x1b
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 236
	.uleb128 0x1b
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 237
	.uleb128 0x1b
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 238
	.uleb128 0x1b
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 239
	.uleb128 0x1b
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 240
	.uleb128 0x1b
	.string	"BUILT_IN_APPLY"
	.sleb128 241
	.uleb128 0x1b
	.string	"BUILT_IN_RETURN"
	.sleb128 242
	.uleb128 0x1b
	.string	"BUILT_IN_SETJMP"
	.sleb128 243
	.uleb128 0x1b
	.string	"BUILT_IN_LONGJMP"
	.sleb128 244
	.uleb128 0x1b
	.string	"BUILT_IN_TRAP"
	.sleb128 245
	.uleb128 0x1b
	.string	"BUILT_IN_PREFETCH"
	.sleb128 246
	.uleb128 0x1b
	.string	"BUILT_IN_PRINTF"
	.sleb128 247
	.uleb128 0x1b
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 248
	.uleb128 0x1b
	.string	"BUILT_IN_PUTS"
	.sleb128 249
	.uleb128 0x1b
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 250
	.uleb128 0x1b
	.string	"BUILT_IN_SPRINTF"
	.sleb128 251
	.uleb128 0x1b
	.string	"BUILT_IN_SCANF"
	.sleb128 252
	.uleb128 0x1b
	.string	"BUILT_IN_SSCANF"
	.sleb128 253
	.uleb128 0x1b
	.string	"BUILT_IN_VPRINTF"
	.sleb128 254
	.uleb128 0x1b
	.string	"BUILT_IN_VSCANF"
	.sleb128 255
	.uleb128 0x1b
	.string	"BUILT_IN_VSSCANF"
	.sleb128 256
	.uleb128 0x1b
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 257
	.uleb128 0x1b
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 258
	.uleb128 0x1b
	.string	"BUILT_IN_FPUTC"
	.sleb128 259
	.uleb128 0x1b
	.string	"BUILT_IN_FPUTS"
	.sleb128 260
	.uleb128 0x1b
	.string	"BUILT_IN_FWRITE"
	.sleb128 261
	.uleb128 0x1b
	.string	"BUILT_IN_FPRINTF"
	.sleb128 262
	.uleb128 0x1b
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 263
	.uleb128 0x1b
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 264
	.uleb128 0x1b
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 265
	.uleb128 0x1b
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 266
	.uleb128 0x1b
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 267
	.uleb128 0x1b
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 268
	.uleb128 0x1b
	.string	"BUILT_IN_ISGREATER"
	.sleb128 269
	.uleb128 0x1b
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 270
	.uleb128 0x1b
	.string	"BUILT_IN_ISLESS"
	.sleb128 271
	.uleb128 0x1b
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 272
	.uleb128 0x1b
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 273
	.uleb128 0x1b
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 274
	.uleb128 0x1b
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 275
	.uleb128 0x1b
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 276
	.uleb128 0x1b
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 277
	.uleb128 0x1b
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 278
	.uleb128 0x1b
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 279
	.uleb128 0x1b
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 280
	.uleb128 0x1b
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 281
	.uleb128 0x1b
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 282
	.uleb128 0x1b
	.string	"BUILT_IN_VA_START"
	.sleb128 283
	.uleb128 0x1b
	.string	"BUILT_IN_STDARG_START"
	.sleb128 284
	.uleb128 0x1b
	.string	"BUILT_IN_VA_END"
	.sleb128 285
	.uleb128 0x1b
	.string	"BUILT_IN_VA_COPY"
	.sleb128 286
	.uleb128 0x1b
	.string	"BUILT_IN_EXPECT"
	.sleb128 287
	.uleb128 0x1b
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 288
	.uleb128 0x1b
	.string	"BUILT_IN_NEW"
	.sleb128 289
	.uleb128 0x1b
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 290
	.uleb128 0x1b
	.string	"BUILT_IN_DELETE"
	.sleb128 291
	.uleb128 0x1b
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 292
	.uleb128 0x1b
	.string	"BUILT_IN_ABORT"
	.sleb128 293
	.uleb128 0x1b
	.string	"BUILT_IN_EXIT"
	.sleb128 294
	.uleb128 0x1b
	.string	"BUILT_IN__EXIT"
	.sleb128 295
	.uleb128 0x1b
	.string	"BUILT_IN__EXIT2"
	.sleb128 296
	.uleb128 0x1b
	.string	"END_BUILTINS"
	.sleb128 297
	.byte	0x0
	.uleb128 0x4
	.long	0x3cb8
	.string	"tree_common"
	.byte	0x10
	.byte	0x7
	.byte	0x8e
	.uleb128 0x7
	.string	"chain"
	.byte	0x7
	.byte	0x8f
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type"
	.byte	0x7
	.byte	0x90
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x7
	.byte	0x92
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
	.uleb128 0x6
	.long	.LASF10
	.byte	0x7
	.byte	0xa6
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
	.byte	0xa7
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
	.byte	0xa8
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
	.byte	0xa9
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
	.byte	0xaa
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
	.byte	0xab
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
	.uleb128 0xd
	.long	0x3cf4
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x7
	.value	0x2f6
	.uleb128 0xe
	.string	"low"
	.byte	0x7
	.value	0x2f7
	.long	0x46a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"high"
	.byte	0x7
	.value	0x2f8
	.long	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x3d3c
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x7
	.value	0x2ef
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x2f0
	.long	0x39da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x7
	.value	0x2f1
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"int_cst"
	.byte	0x7
	.value	0x2f9
	.long	0x3cb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x3d8a
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x7
	.value	0x30b
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x30c
	.long	0x39da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x7
	.value	0x30d
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real_cst_ptr"
	.byte	0x7
	.value	0x30e
	.long	0x3de3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x3de3
	.string	"real_value"
	.byte	0x18
	.byte	0x7
	.value	0x305
	.uleb128 0x5
	.string	"class"
	.byte	0x8
	.byte	0x37
	.long	0x6a19
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
	.uleb128 0x7
	.string	"sig"
	.byte	0x8
	.byte	0x3b
	.long	0x6a5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3d8a
	.uleb128 0xd
	.long	0x3e50
	.string	"tree_string"
	.byte	0x20
	.byte	0x7
	.value	0x31f
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x320
	.long	0x39da
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
	.string	"length"
	.byte	0x7
	.value	0x322
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"pointer"
	.byte	0x7
	.value	0x323
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"st"
	.byte	0x7
	.value	0x325
	.long	0x3e50
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x211d
	.uleb128 0xd
	.long	0x3eab
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x7
	.value	0x32e
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x32f
	.long	0x39da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x7
	.value	0x330
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real"
	.byte	0x7
	.value	0x331
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"imag"
	.byte	0x7
	.value	0x332
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xd
	.long	0x3ef3
	.string	"tree_vector"
	.byte	0x18
	.byte	0x7
	.value	0x340
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x341
	.long	0x39da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x7
	.value	0x342
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"elements"
	.byte	0x7
	.value	0x343
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x14
	.long	0x3f31
	.long	.LASF17
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
	.long	0x3f68
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x7
	.value	0x35f
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x360
	.long	0x39da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"id"
	.byte	0x7
	.value	0x361
	.long	0x3ef3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	0x3faf
	.string	"tree_list"
	.byte	0x18
	.byte	0x7
	.value	0x369
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x36a
	.long	0x39da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"purpose"
	.byte	0x7
	.value	0x36b
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"value"
	.byte	0x7
	.value	0x36c
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x3ff0
	.string	"tree_vec"
	.byte	0x18
	.byte	0x7
	.value	0x377
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x378
	.long	0x39da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"length"
	.byte	0x7
	.value	0x379
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"a"
	.byte	0x7
	.value	0x37a
	.long	0x3ff0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x10
	.long	0x4000
	.long	0x1e6
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x404c
	.string	"tree_exp"
	.byte	0x18
	.byte	0x7
	.value	0x3bd
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x3be
	.long	0x39da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"complexity"
	.byte	0x7
	.value	0x3bf
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"operands"
	.byte	0x7
	.value	0x3c2
	.long	0x3ff0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x413c
	.string	"tree_block"
	.byte	0x2c
	.byte	0x7
	.value	0x3f3
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x3f4
	.long	0x39da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
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
	.uleb128 0x24
	.long	.LASF18
	.byte	0x7
	.value	0x3f7
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
	.value	0x3f8
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
	.value	0x3fa
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"subblocks"
	.byte	0x7
	.value	0x3fb
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"supercontext"
	.byte	0x7
	.value	0x3fc
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x22
	.long	.LASF19
	.byte	0x7
	.value	0x3fd
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"fragment_origin"
	.byte	0x7
	.value	0x3fe
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"fragment_chain"
	.byte	0x7
	.value	0x3ff
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x25
	.long	0x4183
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x7
	.value	0x562
	.uleb128 0xa
	.string	"address"
	.byte	0x7
	.value	0x563
	.long	0x2e4
	.uleb128 0xa
	.string	"pointer"
	.byte	0x7
	.value	0x564
	.long	0x4c2
	.uleb128 0xa
	.string	"die"
	.byte	0x7
	.value	0x565
	.long	0x4190
	.byte	0x0
	.uleb128 0x21
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4183
	.uleb128 0xd
	.long	0x44e6
	.string	"tree_type"
	.byte	0x74
	.byte	0x7
	.value	0x53f
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x540
	.long	0x39da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"values"
	.byte	0x7
	.value	0x541
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x22
	.long	.LASF8
	.byte	0x7
	.value	0x542
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x22
	.long	.LASF20
	.byte	0x7
	.value	0x543
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x22
	.long	.LASF21
	.byte	0x7
	.value	0x544
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"uid"
	.byte	0x7
	.value	0x545
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
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
	.uleb128 0x24
	.long	.LASF0
	.byte	0x7
	.value	0x548
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
	.value	0x54a
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
	.value	0x54b
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
	.value	0x54c
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
	.value	0x54d
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
	.value	0x54e
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
	.value	0x54f
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF22
	.byte	0x7
	.value	0x550
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
	.value	0x552
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
	.value	0x553
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
	.value	0x554
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
	.value	0x555
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
	.value	0x556
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
	.value	0x557
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
	.value	0x558
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF23
	.byte	0x7
	.value	0x559
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
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
	.uleb128 0xe
	.string	"align"
	.byte	0x7
	.value	0x55f
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"pointer_to"
	.byte	0x7
	.value	0x560
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"reference_to"
	.byte	0x7
	.value	0x561
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"symtab"
	.byte	0x7
	.value	0x566
	.long	0x413c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x22
	.long	.LASF24
	.byte	0x7
	.value	0x568
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"minval"
	.byte	0x7
	.value	0x569
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"maxval"
	.byte	0x7
	.value	0x56a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"next_variant"
	.byte	0x7
	.value	0x56b
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"main_variant"
	.byte	0x7
	.value	0x56c
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"binfo"
	.byte	0x7
	.value	0x56d
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"context"
	.byte	0x7
	.value	0x56e
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"alias_set"
	.byte	0x7
	.value	0x56f
	.long	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x22
	.long	.LASF25
	.byte	0x7
	.value	0x571
	.long	0x44f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"ty_idx"
	.byte	0x7
	.value	0x573
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"field_ids_used"
	.byte	0x7
	.value	0x574
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"dst_id"
	.byte	0x7
	.value	0x575
	.long	0x20e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x21
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x44e6
	.uleb128 0xd
	.long	0x453d
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x7
	.value	0x7f0
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x25
	.long	0x4572
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x7
	.value	0x7e7
	.uleb128 0xa
	.string	"f"
	.byte	0x7
	.value	0x7ea
	.long	0x217c
	.uleb128 0xa
	.string	"i"
	.byte	0x7
	.value	0x7ed
	.long	0x459
	.uleb128 0xa
	.string	"a"
	.byte	0x7
	.value	0x7f3
	.long	0x44f8
	.byte	0x0
	.uleb128 0x25
	.long	0x45b1
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x7
	.value	0x808
	.uleb128 0xa
	.string	"f"
	.byte	0x7
	.value	0x809
	.long	0x4f63
	.uleb128 0xa
	.string	"r"
	.byte	0x7
	.value	0x80a
	.long	0x9e
	.uleb128 0xa
	.string	"t"
	.byte	0x7
	.value	0x80b
	.long	0x1e6
	.uleb128 0xa
	.string	"i"
	.byte	0x7
	.value	0x80c
	.long	0x2e4
	.byte	0x0
	.uleb128 0x26
	.long	0x4f63
	.long	.LASF26
	.value	0x134
	.byte	0x4
	.byte	0x1f
	.uleb128 0x7
	.string	"eh"
	.byte	0xb
	.byte	0xb5
	.long	0x6dab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0xb
	.byte	0xb6
	.long	0x6dbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0xb
	.byte	0xb7
	.long	0x6dc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0xb
	.byte	0xb8
	.long	0x6dcb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0xb
	.byte	0xb9
	.long	0x6de1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF24
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
	.long	0x4f63
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
	.long	.LASF27
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
	.long	0x6e2a
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
	.long	0x6e3c
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
	.long	0x6ace
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
	.long	0x6e55
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
	.long	0x6e6f
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
	.long	.LASF28
	.byte	0xb
	.value	0x1fa
	.long	0x6d35
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
	.long	0x45b1
	.uleb128 0x27
	.long	0x4fa1
	.byte	0x4
	.byte	0x7
	.value	0x81e
	.uleb128 0xa
	.string	"st"
	.byte	0x7
	.value	0x81f
	.long	0x3e50
	.uleb128 0xa
	.string	"label_idx"
	.byte	0x7
	.value	0x820
	.long	0x20d0
	.uleb128 0xa
	.string	"field_id"
	.byte	0x7
	.value	0x821
	.long	0x3bd
	.byte	0x0
	.uleb128 0x27
	.long	0x4fb7
	.byte	0x4
	.byte	0x7
	.value	0x823
	.uleb128 0xa
	.string	"st2"
	.byte	0x7
	.value	0x824
	.long	0x3e50
	.byte	0x0
	.uleb128 0xd
	.long	0x56f1
	.string	"tree_decl"
	.byte	0x94
	.byte	0x7
	.value	0x7a0
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x7a1
	.long	0x39da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"locus"
	.byte	0x7
	.value	0x7a2
	.long	0x179c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"uid"
	.byte	0x7
	.value	0x7a3
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x22
	.long	.LASF8
	.byte	0x7
	.value	0x7a4
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x24
	.long	.LASF0
	.byte	0x7
	.value	0x7a5
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
	.value	0x7a7
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
	.value	0x7a8
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
	.value	0x7a9
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
	.value	0x7aa
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
	.value	0x7ab
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
	.value	0x7ac
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
	.value	0x7ad
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.long	.LASF18
	.byte	0x7
	.value	0x7ae
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
	.value	0x7b2
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
	.value	0x7b3
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
	.value	0x7b4
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
	.value	0x7b5
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
	.value	0x7b6
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
	.value	0x7ba
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
	.value	0x7bb
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
	.value	0x7bc
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
	.value	0x7bd
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
	.value	0x7be
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
	.value	0x7bf
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
	.value	0x7c0
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
	.value	0x7c1
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
	.value	0x7c3
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
	.value	0x7c4
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
	.value	0x7c5
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
	.value	0x7c6
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
	.value	0x7c7
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
	.value	0x7c8
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
	.value	0x7c9
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF22
	.byte	0x7
	.value	0x7cb
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
	.value	0x7cc
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF23
	.byte	0x7
	.value	0x7cd
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
	.value	0x7ce
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
	.value	0x7cf
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
	.value	0x7d0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
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
	.uleb128 0x24
	.long	.LASF10
	.byte	0x7
	.value	0x7d5
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
	.value	0x7d6
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
	.value	0x7d7
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
	.value	0x7d8
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
	.value	0x7d9
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
	.value	0x7da
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
	.value	0x7db
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0xe
	.string	"u1"
	.byte	0x7
	.value	0x7f4
	.long	0x453d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x22
	.long	.LASF20
	.byte	0x7
	.value	0x7f6
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x22
	.long	.LASF24
	.byte	0x7
	.value	0x7f7
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"context"
	.byte	0x7
	.value	0x7f8
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"arguments"
	.byte	0x7
	.value	0x7f9
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"result"
	.byte	0x7
	.value	0x7fa
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"initial"
	.byte	0x7
	.value	0x7fb
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x22
	.long	.LASF19
	.byte	0x7
	.value	0x7fc
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"assembler_name"
	.byte	0x7
	.value	0x7fd
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"section_name"
	.byte	0x7
	.value	0x7fe
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x22
	.long	.LASF21
	.byte	0x7
	.value	0x7ff
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"rtl"
	.byte	0x7
	.value	0x800
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"live_range_rtl"
	.byte	0x7
	.value	0x801
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"u2"
	.byte	0x7
	.value	0x80d
	.long	0x4572
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"saved_tree"
	.byte	0x7
	.value	0x810
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"inlined_fns"
	.byte	0x7
	.value	0x814
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"vindex"
	.byte	0x7
	.value	0x816
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"pointer_alias_set"
	.byte	0x7
	.value	0x817
	.long	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x22
	.long	.LASF25
	.byte	0x7
	.value	0x819
	.long	0x56fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0xe
	.string	"sgi_u1"
	.byte	0x7
	.value	0x822
	.long	0x4f69
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xe
	.string	"sgi_u2"
	.byte	0x7
	.value	0x825
	.long	0x4fa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xe
	.string	"decl_dst_id"
	.byte	0x7
	.value	0x826
	.long	0x20e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xe
	.string	"sl_model_name"
	.byte	0x7
	.value	0x82a
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0x21
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x56f1
	.uleb128 0x1a
	.long	0x5954
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xd
	.byte	0x1e
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
	.string	"ordered_cons_b"
	.sleb128 21
	.uleb128 0x1b
	.string	"ordered_cons_e"
	.sleb128 22
	.uleb128 0x1b
	.string	"options_dir"
	.sleb128 23
	.uleb128 0x1b
	.string	"exec_freq_dir"
	.sleb128 24
	.uleb128 0x1b
	.string	"sl2_sections_cons_b"
	.sleb128 25
	.uleb128 0x1b
	.string	"sl2_minor_sections_cons_b"
	.sleb128 26
	.uleb128 0x1b
	.string	"sl2_sections_cons_e"
	.sleb128 27
	.uleb128 0x1b
	.string	"sl2_section_cons_b"
	.sleb128 28
	.uleb128 0x1b
	.string	"sl2_section_cons_e"
	.sleb128 29
	.uleb128 0x1b
	.string	"sl2_minor_section_cons_b"
	.sleb128 30
	.uleb128 0x1b
	.string	"sl2_minor_section_cons_e"
	.sleb128 31
	.byte	0x0
	.uleb128 0xd
	.long	0x59a3
	.string	"tree_omp"
	.byte	0x18
	.byte	0x7
	.value	0x832
	.uleb128 0x22
	.long	.LASF1
	.byte	0x7
	.value	0x833
	.long	0x39da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"choice"
	.byte	0x7
	.value	0x834
	.long	0x5703
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"omp_clause_list"
	.byte	0x7
	.value	0x835
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x5a5e
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x7
	.value	0x9db
	.uleb128 0x22
	.long	.LASF24
	.byte	0x7
	.value	0x9de
	.long	0x5a5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"min_length"
	.byte	0x7
	.value	0x9e0
	.long	0x805
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"max_length"
	.byte	0x7
	.value	0x9e3
	.long	0x805
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"decl_required"
	.byte	0x7
	.value	0x9eb
	.long	0x5a63
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"type_required"
	.byte	0x7
	.value	0x9ee
	.long	0x5a63
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xe
	.string	"function_type_required"
	.byte	0x7
	.value	0x9f3
	.long	0x5a63
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"handler"
	.byte	0x7
	.value	0xa02
	.long	0x5aa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xb
	.long	0x2d1
	.uleb128 0xb
	.long	0x5a68
	.uleb128 0xc
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x28
	.long	0x5a95
	.byte	0x1
	.long	0x1e6
	.uleb128 0x16
	.long	0x5a95
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x2e4
	.uleb128 0x16
	.long	0x5a9b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e6
	.uleb128 0x3
	.byte	0x4
	.long	0x5a68
	.uleb128 0xb
	.long	0x5aa6
	.uleb128 0x3
	.byte	0x4
	.long	0x5a71
	.uleb128 0x4
	.long	0x5ae2
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
	.long	0x5c7d
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
	.long	0x5d79
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
	.long	0x5d79
	.uleb128 0x20
	.string	"s"
	.byte	0x11
	.byte	0x5a
	.long	0x5d89
	.uleb128 0x20
	.string	"us"
	.byte	0x11
	.byte	0x5c
	.long	0x5d99
	.uleb128 0x20
	.string	"i"
	.byte	0x11
	.byte	0x5e
	.long	0x5da9
	.uleb128 0x20
	.string	"u"
	.byte	0x11
	.byte	0x60
	.long	0x5db9
	.uleb128 0x20
	.string	"l"
	.byte	0x11
	.byte	0x62
	.long	0x5dc9
	.uleb128 0x20
	.string	"ul"
	.byte	0x11
	.byte	0x64
	.long	0x5dd9
	.uleb128 0x20
	.string	"hint"
	.byte	0x11
	.byte	0x66
	.long	0x5de9
	.uleb128 0x20
	.string	"uhint"
	.byte	0x11
	.byte	0x68
	.long	0x5df9
	.uleb128 0x20
	.string	"generic"
	.byte	0x11
	.byte	0x6a
	.long	0x5e09
	.uleb128 0x20
	.string	"cptr"
	.byte	0x11
	.byte	0x6c
	.long	0x5e19
	.uleb128 0x20
	.string	"rtx"
	.byte	0x11
	.byte	0x6e
	.long	0x5e29
	.uleb128 0x20
	.string	"rtvec"
	.byte	0x11
	.byte	0x70
	.long	0x5e39
	.uleb128 0x20
	.string	"tree"
	.byte	0x11
	.byte	0x72
	.long	0x5e49
	.uleb128 0x20
	.string	"bitmap"
	.byte	0x11
	.byte	0x74
	.long	0x5e59
	.uleb128 0x20
	.string	"reg"
	.byte	0x11
	.byte	0x76
	.long	0x5e69
	.uleb128 0x20
	.string	"const_equiv"
	.byte	0x11
	.byte	0x78
	.long	0x5f65
	.uleb128 0x20
	.string	"bb"
	.byte	0x11
	.byte	0x7a
	.long	0x5f75
	.uleb128 0x20
	.string	"te"
	.byte	0x11
	.byte	0x7c
	.long	0x5f85
	.byte	0x0
	.uleb128 0x10
	.long	0x5d89
	.long	0x401
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5d99
	.long	0x44c
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5da9
	.long	0x412
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5db9
	.long	0x2e4
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5dc9
	.long	0x3bd
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5dd9
	.long	0x4a3
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5de9
	.long	0x428
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5df9
	.long	0x459
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5e09
	.long	0x46a
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5e19
	.long	0x4c0
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5e29
	.long	0x4c2
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5e39
	.long	0xa9
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5e49
	.long	0x1ab
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5e59
	.long	0x1f2
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5e69
	.long	0x159e
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5e79
	.long	0x5f5f
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x5f5f
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
	.long	.LASF29
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
	.long	0x5e79
	.uleb128 0x10
	.long	0x5f75
	.long	0x5aac
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5f85
	.long	0x1729
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5f95
	.long	0x5fa0
	.uleb128 0x11
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5f95
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x11
	.byte	0x7e
	.long	0x5c7d
	.uleb128 0x4
	.long	0x602d
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
	.long	0x5ae2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF24
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
	.long	0x5fa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x11
	.byte	0x8a
	.long	0x6040
	.uleb128 0x3
	.byte	0x4
	.long	0x5fb9
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x6
	.byte	0x1d
	.long	0x428
	.uleb128 0x4
	.long	0x60b0
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x6
	.byte	0x34
	.uleb128 0x1e
	.long	.LASF30
	.byte	0x6
	.byte	0x35
	.long	0x60b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x6
	.byte	0x36
	.long	0x60b0
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
	.long	0x60b6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6059
	.uleb128 0x10
	.long	0x60c6
	.long	0x6046
	.uleb128 0x11
	.long	0x3d4
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x6
	.byte	0x39
	.long	0x6059
	.uleb128 0x3
	.byte	0x4
	.long	0x60c6
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x6
	.byte	0x43
	.long	0x159e
	.uleb128 0x4
	.long	0x6149
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
	.long	0x5df9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xf
	.byte	0x25
	.long	0x6158
	.uleb128 0x3
	.byte	0x4
	.long	0x60f0
	.uleb128 0x2
	.string	"regset"
	.byte	0xe
	.byte	0x22
	.long	0x60e2
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0xe
	.byte	0x75
	.long	0x459
	.uleb128 0x4
	.long	0x6226
	.string	"edge_def"
	.byte	0x28
	.byte	0xe
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0xe
	.byte	0x7a
	.long	0x6226
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0xe
	.byte	0x7a
	.long	0x6226
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
	.long	.LASF31
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
	.long	0x616c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x617d
	.uleb128 0x2
	.string	"edge"
	.byte	0xe
	.byte	0x89
	.long	0x6226
	.uleb128 0x4
	.long	0x649f
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
	.long	0x64a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"latch"
	.byte	0xe
	.value	0x17c
	.long	0x64a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"pre_header"
	.byte	0xe
	.value	0x17f
	.long	0x64a5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"pre_header_edges"
	.byte	0xe
	.value	0x184
	.long	0x64b0
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
	.long	0x64a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"last"
	.byte	0xe
	.value	0x18f
	.long	0x64a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"nodes"
	.byte	0xe
	.value	0x192
	.long	0x6149
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
	.long	0x64b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x22
	.long	.LASF32
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
	.long	0x64b0
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
	.long	0x6149
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
	.long	0x64b6
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
	.long	0x649f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"inner"
	.byte	0xe
	.value	0x1b4
	.long	0x649f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x22
	.long	.LASF30
	.byte	0xe
	.value	0x1b7
	.long	0x649f
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
	.long	0x6238
	.uleb128 0x1f
	.long	.LASF29
	.byte	0xe
	.byte	0xe6
	.long	0x1729
	.uleb128 0x3
	.byte	0x4
	.long	0x622c
	.uleb128 0x3
	.byte	0x4
	.long	0x649f
	.uleb128 0x1a
	.long	0x6546
	.string	"debug_info_type"
	.byte	0x4
	.byte	0x14
	.byte	0x23
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
	.long	0x6729
	.string	"gcc_debug_hooks"
	.byte	0x50
	.byte	0x15
	.byte	0x19
	.uleb128 0x7
	.string	"init"
	.byte	0x15
	.byte	0x1c
	.long	0x6735
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"finish"
	.byte	0x15
	.byte	0x1f
	.long	0x6735
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"define"
	.byte	0x15
	.byte	0x22
	.long	0x674c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"undef"
	.byte	0x15
	.byte	0x25
	.long	0x674c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"start_source_file"
	.byte	0x15
	.byte	0x29
	.long	0x674c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"end_source_file"
	.byte	0x15
	.byte	0x2d
	.long	0x675e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"begin_block"
	.byte	0x15
	.byte	0x31
	.long	0x6775
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"end_block"
	.byte	0x15
	.byte	0x34
	.long	0x6775
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"ignore_block"
	.byte	0x15
	.byte	0x3b
	.long	0x678b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"source_line"
	.byte	0x15
	.byte	0x3e
	.long	0x674c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"begin_prologue"
	.byte	0x15
	.byte	0x43
	.long	0x674c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"end_prologue"
	.byte	0x15
	.byte	0x47
	.long	0x674c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"end_epilogue"
	.byte	0x15
	.byte	0x4a
	.long	0x674c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"begin_function"
	.byte	0x15
	.byte	0x4d
	.long	0x679d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"end_function"
	.byte	0x15
	.byte	0x50
	.long	0x675e
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"function_decl"
	.byte	0x15
	.byte	0x56
	.long	0x679d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"global_decl"
	.byte	0x15
	.byte	0x5a
	.long	0x679d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"deferred_inline_function"
	.byte	0x15
	.byte	0x5e
	.long	0x679d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"outlining_inline_function"
	.byte	0x15
	.byte	0x63
	.long	0x679d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"label"
	.byte	0x15
	.byte	0x67
	.long	0x67af
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x15
	.long	0x6735
	.byte	0x1
	.uleb128 0x16
	.long	0x2d1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6729
	.uleb128 0x15
	.long	0x674c
	.byte	0x1
	.uleb128 0x16
	.long	0x3bd
	.uleb128 0x16
	.long	0x2d1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x673b
	.uleb128 0x15
	.long	0x675e
	.byte	0x1
	.uleb128 0x16
	.long	0x3bd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6752
	.uleb128 0x15
	.long	0x6775
	.byte	0x1
	.uleb128 0x16
	.long	0x3bd
	.uleb128 0x16
	.long	0x3bd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6764
	.uleb128 0x28
	.long	0x678b
	.byte	0x1
	.long	0x5a68
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x677b
	.uleb128 0x15
	.long	0x679d
	.byte	0x1
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6791
	.uleb128 0x15
	.long	0x67af
	.byte	0x1
	.uleb128 0x16
	.long	0x9e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x67a3
	.uleb128 0x4
	.long	0x67e9
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
	.long	0x6a09
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
	.long	.LASF33
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
	.long	0x602d
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
	.long	0x602d
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
	.long	.LASF34
	.byte	0x10
	.byte	0x68
	.long	0x75a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x1e
	.long	.LASF35
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
	.long	0x6a09
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
	.long	.LASF36
	.byte	0x10
	.byte	0x7d
	.long	0x831
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.byte	0x0
	.uleb128 0x10
	.long	0x6a19
	.long	0x67b5
	.uleb128 0x11
	.long	0x3d4
	.byte	0x1d
	.byte	0x0
	.uleb128 0x1a
	.long	0x6a5f
	.string	"real_value_class"
	.byte	0x4
	.byte	0x8
	.byte	0x24
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
	.long	0x6a6f
	.long	0x428
	.uleb128 0x11
	.long	0x3d4
	.byte	0x4
	.byte	0x0
	.uleb128 0x4
	.long	0x6ace
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
	.long	.LASF37
	.byte	0xb
	.byte	0x1a
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF30
	.byte	0xb
	.byte	0x1b
	.long	0x6ace
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6a6f
	.uleb128 0x14
	.long	0x6b1c
	.long	.LASF38
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
	.long	.LASF39
	.byte	0xb
	.byte	0x28
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF30
	.byte	0xb
	.byte	0x29
	.long	0x6b1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ad4
	.uleb128 0x4
	.long	0x6c55
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
	.long	.LASF39
	.byte	0xb
	.byte	0x4a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF38
	.byte	0xb
	.byte	0x50
	.long	0x6b1c
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
	.long	.LASF34
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
	.long	0x5a95
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x1e
	.long	.LASF35
	.byte	0xb
	.byte	0x70
	.long	0x1764
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x6d35
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
	.long	0x6d9f
	.long	.LASF28
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
	.long	0x6d9f
	.uleb128 0x21
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6db1
	.uleb128 0x3
	.byte	0x4
	.long	0x6c55
	.uleb128 0x3
	.byte	0x4
	.long	0x6b22
	.uleb128 0x21
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6dd1
	.uleb128 0x14
	.long	0x6e2a
	.long	.LASF40
	.byte	0xc
	.byte	0xb
	.byte	0xf0
	.uleb128 0x1e
	.long	.LASF32
	.byte	0x1
	.byte	0x4a
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"max_entries"
	.byte	0x1
	.byte	0x4b
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"entries"
	.byte	0x1
	.byte	0x4c
	.long	0x84be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6de7
	.uleb128 0x21
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6e30
	.uleb128 0x21
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6e42
	.uleb128 0x21
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6e5b
	.uleb128 0x14
	.long	0x6eb2
	.long	.LASF41
	.byte	0xc
	.byte	0x16
	.byte	0x2d
	.uleb128 0x7
	.string	"option"
	.byte	0x16
	.byte	0x30
	.long	0x5a5e
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
	.long	0x5a5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1f
	.long	.LASF41
	.byte	0x16
	.byte	0x35
	.long	0x6e75
	.uleb128 0x4
	.long	0x6f0f
	.string	"ggc_root_tab"
	.byte	0x10
	.byte	0x1c
	.byte	0x34
	.uleb128 0x7
	.string	"base"
	.byte	0x1c
	.byte	0x35
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"nelt"
	.byte	0x1c
	.byte	0x36
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"stride"
	.byte	0x1c
	.byte	0x37
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"cb"
	.byte	0x1c
	.byte	0x38
	.long	0x760
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x6f57
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
	.long	0x718d
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
	.long	0x6f0f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"unaligned_op"
	.byte	0x17
	.byte	0x3f
	.long	0x6f0f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"integer"
	.byte	0x17
	.byte	0x46
	.long	0x71a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"globalize_label"
	.byte	0x17
	.byte	0x49
	.long	0x71c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"visibility"
	.byte	0x17
	.byte	0x4d
	.long	0x71db
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"function_prologue"
	.byte	0x17
	.byte	0x50
	.long	0x71f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"function_end_prologue"
	.byte	0x17
	.byte	0x53
	.long	0x7204
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"function_begin_epilogue"
	.byte	0x17
	.byte	0x56
	.long	0x7204
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"function_epilogue"
	.byte	0x17
	.byte	0x59
	.long	0x71f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"named_section"
	.byte	0x17
	.byte	0x5d
	.long	0x721b
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
	.long	0x7237
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.string	"select_rtx_section"
	.byte	0x17
	.byte	0x6e
	.long	0x7253
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.string	"unique_section"
	.byte	0x17
	.byte	0x73
	.long	0x71db
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x7
	.string	"constructor"
	.byte	0x17
	.byte	0x76
	.long	0x726a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x7
	.string	"destructor"
	.byte	0x17
	.byte	0x79
	.long	0x726a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x7
	.string	"output_mi_thunk"
	.byte	0x17
	.byte	0x80
	.long	0x7290
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x7
	.string	"can_output_mi_thunk"
	.byte	0x17
	.byte	0x8b
	.long	0x72b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x28
	.long	0x71a7
	.byte	0x1
	.long	0x5a68
	.uleb128 0x16
	.long	0x9e
	.uleb128 0x16
	.long	0x3bd
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x718d
	.uleb128 0x15
	.long	0x71be
	.byte	0x1
	.uleb128 0x16
	.long	0x71be
	.uleb128 0x16
	.long	0x2d1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c8
	.uleb128 0x3
	.byte	0x4
	.long	0x71ad
	.uleb128 0x15
	.long	0x71db
	.byte	0x1
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x71ca
	.uleb128 0x15
	.long	0x71f2
	.byte	0x1
	.uleb128 0x16
	.long	0x71be
	.uleb128 0x16
	.long	0x459
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x71e1
	.uleb128 0x15
	.long	0x7204
	.byte	0x1
	.uleb128 0x16
	.long	0x71be
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x71f8
	.uleb128 0x15
	.long	0x721b
	.byte	0x1
	.uleb128 0x16
	.long	0x2d1
	.uleb128 0x16
	.long	0x3bd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x720a
	.uleb128 0x15
	.long	0x7237
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
	.long	0x7221
	.uleb128 0x15
	.long	0x7253
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
	.long	0x723d
	.uleb128 0x15
	.long	0x726a
	.byte	0x1
	.uleb128 0x16
	.long	0x9e
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7259
	.uleb128 0x15
	.long	0x7290
	.byte	0x1
	.uleb128 0x16
	.long	0x71be
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
	.long	0x7270
	.uleb128 0x28
	.long	0x72b5
	.byte	0x1
	.long	0x5a68
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
	.long	0x7296
	.uleb128 0x4
	.long	0x7476
	.string	"sched"
	.byte	0x40
	.byte	0x17
	.byte	0x93
	.uleb128 0x7
	.string	"adjust_cost"
	.byte	0x17
	.byte	0x97
	.long	0x7495
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"adjust_priority"
	.byte	0x17
	.byte	0x9b
	.long	0x74b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"issue_rate"
	.byte	0x17
	.byte	0xa0
	.long	0x74bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"variable_issue"
	.byte	0x17
	.byte	0xa4
	.long	0x74e1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"md_init"
	.byte	0x17
	.byte	0xa7
	.long	0x74fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"md_finish"
	.byte	0x17
	.byte	0xaa
	.long	0x7514
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"reorder"
	.byte	0x17
	.byte	0xae
	.long	0x753e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"reorder2"
	.byte	0x17
	.byte	0xaf
	.long	0x753e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"use_dfa_pipeline_interface"
	.byte	0x17
	.byte	0xb4
	.long	0x74bc
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
	.long	0x754a
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
	.long	0x754a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x17
	.byte	0xcd
	.long	0x74bc
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
	.long	0x7560
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x28
	.long	0x7495
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
	.long	0x7476
	.uleb128 0x28
	.long	0x74b0
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x9e
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x749b
	.uleb128 0x2b
	.byte	0x1
	.long	0x2e4
	.uleb128 0x3
	.byte	0x4
	.long	0x74b6
	.uleb128 0x28
	.long	0x74e1
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x71be
	.uleb128 0x16
	.long	0x2e4
	.uleb128 0x16
	.long	0x9e
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x74c2
	.uleb128 0x15
	.long	0x74fd
	.byte	0x1
	.uleb128 0x16
	.long	0x71be
	.uleb128 0x16
	.long	0x2e4
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x74e7
	.uleb128 0x15
	.long	0x7514
	.byte	0x1
	.uleb128 0x16
	.long	0x71be
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7503
	.uleb128 0x28
	.long	0x753e
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x71be
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
	.long	0x751a
	.uleb128 0x2b
	.byte	0x1
	.long	0x9e
	.uleb128 0x3
	.byte	0x4
	.long	0x7544
	.uleb128 0x28
	.long	0x7560
	.byte	0x1
	.long	0x9e
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7550
	.uleb128 0x4
	.long	0x7828
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x17
	.byte	0x30
	.uleb128 0x7
	.string	"asm_out"
	.byte	0x17
	.byte	0x8f
	.long	0x6f57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"sched"
	.byte	0x17
	.byte	0xda
	.long	0x72bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x7
	.string	"merge_decl_attributes"
	.byte	0x17
	.byte	0xdd
	.long	0x783d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x7
	.string	"merge_type_attributes"
	.byte	0x17
	.byte	0xe0
	.long	0x783d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x1e
	.long	.LASF42
	.byte	0x17
	.byte	0xe4
	.long	0x7843
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x7
	.string	"comp_type_attributes"
	.byte	0x17
	.byte	0xe9
	.long	0x7863
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x7
	.string	"set_default_type_attributes"
	.byte	0x17
	.byte	0xec
	.long	0x679d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x7
	.string	"insert_attributes"
	.byte	0x17
	.byte	0xef
	.long	0x787a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x1e
	.long	.LASF43
	.byte	0x17
	.byte	0xf3
	.long	0x678b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x7
	.string	"ms_bitfield_layout_p"
	.byte	0x17
	.byte	0xf7
	.long	0x678b
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
	.long	0x78a4
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"section_type_flags"
	.byte	0x17
	.value	0x103
	.long	0x78c4
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"cannot_modify_jumps_p"
	.byte	0x17
	.value	0x107
	.long	0x78d0
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"cannot_force_const_mem"
	.byte	0x17
	.value	0x10a
	.long	0x78e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"in_small_data_p"
	.byte	0x17
	.value	0x10d
	.long	0x678b
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"binds_local_p"
	.byte	0x17
	.value	0x111
	.long	0x678b
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"encode_section_info"
	.byte	0x17
	.value	0x115
	.long	0x71db
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"strip_name_encoding"
	.byte	0x17
	.value	0x118
	.long	0x78fc
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"have_named_sections"
	.byte	0x17
	.value	0x11d
	.long	0x5a68
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"have_ctors_dtors"
	.byte	0x17
	.value	0x121
	.long	0x5a68
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xe
	.string	"have_tls"
	.byte	0x17
	.value	0x124
	.long	0x5a68
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xe
	.string	"have_srodata_section"
	.byte	0x17
	.value	0x127
	.long	0x5a68
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xe
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x17
	.value	0x12a
	.long	0x5a68
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x28
	.long	0x783d
	.byte	0x1
	.long	0x1e6
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7828
	.uleb128 0x3
	.byte	0x4
	.long	0x7849
	.uleb128 0xb
	.long	0x59a3
	.uleb128 0x28
	.long	0x7863
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x784e
	.uleb128 0x15
	.long	0x787a
	.byte	0x1
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x5a95
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7869
	.uleb128 0x28
	.long	0x78a4
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
	.long	0x7880
	.uleb128 0x28
	.long	0x78c4
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
	.long	0x78aa
	.uleb128 0x2b
	.byte	0x1
	.long	0x5a68
	.uleb128 0x3
	.byte	0x4
	.long	0x78ca
	.uleb128 0x28
	.long	0x78e6
	.byte	0x1
	.long	0x5a68
	.uleb128 0x16
	.long	0x9e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x78d6
	.uleb128 0x28
	.long	0x78fc
	.byte	0x1
	.long	0x2d1
	.uleb128 0x16
	.long	0x2d1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x78ec
	.uleb128 0x2
	.string	"lang_print_tree_hook"
	.byte	0x1b
	.byte	0x1d
	.long	0x791e
	.uleb128 0x3
	.byte	0x4
	.long	0x7924
	.uleb128 0x15
	.long	0x793a
	.byte	0x1
	.uleb128 0x16
	.long	0x71be
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x4
	.long	0x7ac0
	.string	"lang_hooks_for_tree_inlining"
	.byte	0x30
	.byte	0x1b
	.byte	0x23
	.uleb128 0x7
	.string	"walk_subtrees"
	.byte	0x1b
	.byte	0x24
	.long	0x7b0a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"cannot_inline_tree_fn"
	.byte	0x1b
	.byte	0x29
	.long	0x7b20
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"disregard_inline_limits"
	.byte	0x1b
	.byte	0x2a
	.long	0x7b36
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"add_pending_fn_decls"
	.byte	0x1b
	.byte	0x2b
	.long	0x7b51
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"tree_chain_matters_p"
	.byte	0x1b
	.byte	0x2d
	.long	0x7b36
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"auto_var_in_fn_p"
	.byte	0x1b
	.byte	0x2e
	.long	0x7b6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"copy_res_decl_for_inlining"
	.byte	0x1b
	.byte	0x2f
	.long	0x7b9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"anon_aggr_type_p"
	.byte	0x1b
	.byte	0x34
	.long	0x7b36
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"var_mod_type_p"
	.byte	0x1b
	.byte	0x35
	.long	0x7bb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"start_inlining"
	.byte	0x1b
	.byte	0x36
	.long	0x7b36
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"end_inlining"
	.byte	0x1b
	.byte	0x37
	.long	0x7bc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"convert_parm_for_inlining"
	.byte	0x1b
	.byte	0x38
	.long	0x7be3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x28
	.long	0x7ae4
	.byte	0x1
	.long	0x1f2
	.uleb128 0x16
	.long	0x7ae4
	.uleb128 0x16
	.long	0x80a
	.uleb128 0x16
	.long	0x7aea
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
	.long	0x7af0
	.uleb128 0x28
	.long	0x7b0a
	.byte	0x1
	.long	0x1f2
	.uleb128 0x16
	.long	0x7ae4
	.uleb128 0x16
	.long	0x80a
	.uleb128 0x16
	.long	0x4c0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ac0
	.uleb128 0x28
	.long	0x7b20
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x7ae4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b10
	.uleb128 0x28
	.long	0x7b36
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x1f2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b26
	.uleb128 0x28
	.long	0x7b51
	.byte	0x1
	.long	0x1f2
	.uleb128 0x16
	.long	0x4c0
	.uleb128 0x16
	.long	0x1f2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b3c
	.uleb128 0x28
	.long	0x7b6c
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x1f2
	.uleb128 0x16
	.long	0x1f2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b57
	.uleb128 0x28
	.long	0x7b9b
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
	.long	0x7b72
	.uleb128 0x28
	.long	0x7bb1
	.byte	0x1
	.long	0x5a68
	.uleb128 0x16
	.long	0x1f2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ba1
	.uleb128 0x15
	.long	0x7bc3
	.byte	0x1
	.uleb128 0x16
	.long	0x1f2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7bb7
	.uleb128 0x28
	.long	0x7be3
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
	.long	0x7bc9
	.uleb128 0x4
	.long	0x7c58
	.string	"lang_hooks_for_functions"
	.byte	0x10
	.byte	0x1b
	.byte	0x40
	.uleb128 0x7
	.string	"init"
	.byte	0x1b
	.byte	0x42
	.long	0x7c64
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"final"
	.byte	0x1b
	.byte	0x45
	.long	0x7c64
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"enter_nested"
	.byte	0x1b
	.byte	0x48
	.long	0x7c64
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"leave_nested"
	.byte	0x1b
	.byte	0x4b
	.long	0x7c64
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x15
	.long	0x7c64
	.byte	0x1
	.uleb128 0x16
	.long	0x4f63
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7c58
	.uleb128 0x4
	.long	0x7cb5
	.string	"lang_hooks_for_tree_dump"
	.byte	0x8
	.byte	0x1b
	.byte	0x51
	.uleb128 0x7
	.string	"dump_tree"
	.byte	0x1b
	.byte	0x54
	.long	0x7cca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_quals"
	.byte	0x1b
	.byte	0x57
	.long	0x7ce0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x28
	.long	0x7cca
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x4c0
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7cb5
	.uleb128 0x28
	.long	0x7ce0
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7cd0
	.uleb128 0x4
	.long	0x7dd3
	.string	"lang_hooks_for_types"
	.byte	0x20
	.byte	0x1b
	.byte	0x5d
	.uleb128 0x7
	.string	"make_type"
	.byte	0x1b
	.byte	0x60
	.long	0x7de3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_for_mode"
	.byte	0x1b
	.byte	0x64
	.long	0x7dfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type_for_size"
	.byte	0x1b
	.byte	0x68
	.long	0x7e19
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"unsigned_type"
	.byte	0x1b
	.byte	0x6c
	.long	0x7e2f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"signed_type"
	.byte	0x1b
	.byte	0x70
	.long	0x7e2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"signed_or_unsigned_type"
	.byte	0x1b
	.byte	0x74
	.long	0x7e4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"type_promotes_to"
	.byte	0x1b
	.byte	0x7a
	.long	0x7e2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"incomplete_type_error"
	.byte	0x1b
	.byte	0x80
	.long	0x7e61
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x28
	.long	0x7de3
	.byte	0x1
	.long	0x1e6
	.uleb128 0x16
	.long	0x17ae
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7dd3
	.uleb128 0x28
	.long	0x7dfe
	.byte	0x1
	.long	0x1e6
	.uleb128 0x16
	.long	0x831
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7de9
	.uleb128 0x28
	.long	0x7e19
	.byte	0x1
	.long	0x1e6
	.uleb128 0x16
	.long	0x3bd
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7e04
	.uleb128 0x28
	.long	0x7e2f
	.byte	0x1
	.long	0x1e6
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7e1f
	.uleb128 0x28
	.long	0x7e4a
	.byte	0x1
	.long	0x1e6
	.uleb128 0x16
	.long	0x2e4
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7e35
	.uleb128 0x15
	.long	0x7e61
	.byte	0x1
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7e50
	.uleb128 0x4
	.long	0x7f6d
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
	.long	0x7f87
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"global_bindings_p"
	.byte	0x1b
	.byte	0x94
	.long	0x74bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"insert_block"
	.byte	0x1b
	.byte	0x99
	.long	0x679d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"set_block"
	.byte	0x1b
	.byte	0x9c
	.long	0x679d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"pushdecl"
	.byte	0x1b
	.byte	0xa2
	.long	0x7e2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"getdecls"
	.byte	0x1b
	.byte	0xa5
	.long	0x7f93
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"warn_unused_global"
	.byte	0x1b
	.byte	0xa9
	.long	0x678b
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
	.long	0x678b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x28
	.long	0x7f87
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
	.long	0x7f6d
	.uleb128 0x2b
	.byte	0x1
	.long	0x1e6
	.uleb128 0x3
	.byte	0x4
	.long	0x7f8d
	.uleb128 0x26
	.long	0x83be
	.long	.LASF44
	.value	0x120
	.byte	0x1b
	.byte	0xb6
	.uleb128 0x1e
	.long	.LASF24
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
	.long	0x83d9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"post_options"
	.byte	0x1b
	.byte	0xd6
	.long	0x78d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"init"
	.byte	0x1b
	.byte	0xde
	.long	0x78fc
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
	.long	0x83ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"expand_constant"
	.byte	0x1b
	.byte	0xf1
	.long	0x7e2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"expand_expr"
	.byte	0x1b
	.byte	0xf5
	.long	0x8414
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"truthvalue_conversion"
	.byte	0x1b
	.value	0x102
	.long	0x7e2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"insert_default_attributes"
	.byte	0x1b
	.value	0x106
	.long	0x679d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"safe_from_p"
	.byte	0x1b
	.value	0x10f
	.long	0x842f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"finish_incomplete_decl"
	.byte	0x1b
	.value	0x113
	.long	0x679d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"unsafe_for_reeval"
	.byte	0x1b
	.value	0x118
	.long	0x7ce0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"mark_addressable"
	.byte	0x1b
	.value	0x11d
	.long	0x678b
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"staticp"
	.byte	0x1b
	.value	0x120
	.long	0x7ce0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"dup_lang_specific_decl"
	.byte	0x1b
	.value	0x124
	.long	0x679d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"unsave_expr_now"
	.byte	0x1b
	.value	0x129
	.long	0x7e2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"maybe_build_cleanup"
	.byte	0x1b
	.value	0x12d
	.long	0x7e2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"set_decl_assembler_name"
	.byte	0x1b
	.value	0x134
	.long	0x679d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"can_use_bit_fields_p"
	.byte	0x1b
	.value	0x138
	.long	0x78d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"honor_readonly"
	.byte	0x1b
	.value	0x13b
	.long	0x5a68
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
	.long	0x7902
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"print_decl"
	.byte	0x1b
	.value	0x147
	.long	0x7902
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"print_type"
	.byte	0x1b
	.value	0x148
	.long	0x7902
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"print_identifier"
	.byte	0x1b
	.value	0x149
	.long	0x7902
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"decl_printable_name"
	.byte	0x1b
	.value	0x151
	.long	0x844a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"print_error_function"
	.byte	0x1b
	.value	0x154
	.long	0x847c
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"expr_size"
	.byte	0x1b
	.value	0x15b
	.long	0x7e2f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x22
	.long	.LASF42
	.byte	0x1b
	.value	0x162
	.long	0x7843
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xe
	.string	"common_attribute_table"
	.byte	0x1b
	.value	0x163
	.long	0x7843
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xe
	.string	"format_attribute_table"
	.byte	0x1b
	.value	0x164
	.long	0x7843
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x22
	.long	.LASF26
	.byte	0x1b
	.value	0x167
	.long	0x7be9
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"tree_inlining"
	.byte	0x1b
	.value	0x169
	.long	0x793a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"tree_dump"
	.byte	0x1b
	.value	0x16b
	.long	0x7c6a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"decls"
	.byte	0x1b
	.value	0x16d
	.long	0x7e67
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"types"
	.byte	0x1b
	.value	0x16f
	.long	0x7ce6
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0x0
	.uleb128 0x28
	.long	0x83d3
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x2e4
	.uleb128 0x16
	.long	0x83d3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c2
	.uleb128 0x3
	.byte	0x4
	.long	0x83be
	.uleb128 0x28
	.long	0x83ef
	.byte	0x1
	.long	0x459
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x83df
	.uleb128 0x28
	.long	0x8414
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
	.long	0x83f5
	.uleb128 0x28
	.long	0x842f
	.byte	0x1
	.long	0x2e4
	.uleb128 0x16
	.long	0x9e
	.uleb128 0x16
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x841a
	.uleb128 0x28
	.long	0x844a
	.byte	0x1
	.long	0x2d1
	.uleb128 0x16
	.long	0x1e6
	.uleb128 0x16
	.long	0x2e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8435
	.uleb128 0x15
	.long	0x8461
	.byte	0x1
	.uleb128 0x16
	.long	0x8461
	.uleb128 0x16
	.long	0x2d1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8467
	.uleb128 0x21
	.string	"diagnostic_context"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x8450
	.uleb128 0x14
	.long	0x84b3
	.long	.LASF45
	.byte	0x8
	.byte	0x1
	.byte	0x45
	.uleb128 0x7
	.string	"hard_reg"
	.byte	0x1
	.byte	0x46
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"pseudo"
	.byte	0x1
	.byte	0x47
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1f
	.long	.LASF45
	.byte	0x1
	.byte	0x48
	.long	0x8482
	.uleb128 0x3
	.byte	0x4
	.long	0x84b3
	.uleb128 0x2c
	.long	0x8517
	.byte	0x1
	.string	"get_label_from_map"
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.long	0x9e
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2d
	.string	"map"
	.byte	0x1
	.byte	0x74
	.long	0x8517
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.byte	0x75
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.byte	0x77
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x67e9
	.uleb128 0x2f
	.long	0x8583
	.byte	0x1
	.long	.LASF43
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.long	0x5a68
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x30
	.long	.LASF33
	.byte	0x1
	.byte	0x83
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
	.byte	0x87
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x32
	.long	.LASF24
	.byte	0x1
	.byte	0x8b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0x8c
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x8632
	.byte	0x1
	.string	"function_cannot_inline_p"
	.byte	0x1
	.byte	0x9f
	.byte	0x1
	.long	0x2d1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x30
	.long	.LASF33
	.byte	0x1
	.byte	0x9e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF46
	.byte	0x1
	.byte	0xa0
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"last"
	.byte	0x1
	.byte	0xa1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.string	"max_insns"
	.byte	0x1
	.byte	0xa9
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"ninsns"
	.byte	0x1
	.byte	0xae
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.string	"parms"
	.byte	0x1
	.byte	0xaf
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
	.value	0x109
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x86e1
	.string	"initialize_for_inline"
	.byte	0x1
	.value	0x125
	.byte	0x1
	.long	0x19e
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x35
	.long	.LASF33
	.byte	0x1
	.value	0x124
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x126
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF47
	.byte	0x1
	.value	0x127
	.long	0x19e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"parms"
	.byte	0x1
	.value	0x128
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
	.value	0x132
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
	.value	0x141
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"pimag"
	.byte	0x1
	.value	0x142
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x87c3
	.byte	0x1
	.string	"copy_decl_for_inlining"
	.byte	0x1
	.value	0x15b
	.byte	0x1
	.long	0x1f2
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x35
	.long	.LASF2
	.byte	0x1
	.value	0x158
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"from_fn"
	.byte	0x1
	.value	0x159
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"to_fn"
	.byte	0x1
	.value	0x15a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF48
	.byte	0x1
	.value	0x15c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.long	0x8781
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x33
	.string	"type"
	.byte	0x1
	.value	0x165
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.long	.LASF49
	.byte	0x1
	.value	0x166
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.string	"ret_var_uniquifier"
	.byte	0x1
	.value	0x15e
	.long	0x3bd
	.byte	0x5
	.byte	0x3
	.long	ret_var_uniquifier.14678
	.uleb128 0x33
	.string	"ret_var_uniqified"
	.byte	0x1
	.value	0x15f
	.long	0x9fbb
	.byte	0x5
	.byte	0x3
	.long	ret_var_uniqified.14679
	.byte	0x0
	.uleb128 0x3a
	.long	0x8839
	.byte	0x1
	.string	"save_for_inline"
	.byte	0x1
	.value	0x1d3
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x35
	.long	.LASF33
	.byte	0x1
	.value	0x1d2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF46
	.byte	0x1
	.value	0x1d4
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"argvec"
	.byte	0x1
	.value	0x1d5
	.long	0x19e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	.LASF50
	.byte	0x1
	.value	0x1d6
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.long	.LASF51
	.long	0x9fb6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14753
	.byte	0x0
	.uleb128 0x3c
	.long	0x8894
	.string	"save_parm_insns"
	.byte	0x1
	.value	0x221
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x35
	.long	.LASF46
	.byte	0x1
	.value	0x21f
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF50
	.byte	0x1
	.value	0x220
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
	.value	0x235
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x88ed
	.string	"note_modified_parmregs"
	.byte	0x1
	.value	0x246
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x38
	.string	"reg"
	.byte	0x1
	.value	0x243
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"x"
	.byte	0x1
	.value	0x244
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"data"
	.byte	0x1
	.value	0x245
	.long	0x4c0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x3c
	.long	0x898b
	.string	"process_reg_param"
	.byte	0x1
	.value	0x267
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x38
	.string	"map"
	.byte	0x1
	.value	0x265
	.long	0x8517
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"loc"
	.byte	0x1
	.value	0x266
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF48
	.byte	0x1
	.value	0x266
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x36
	.long	.LASF52
	.byte	0x1
	.value	0x26e
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
	.value	0x271
	.long	0x898b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x36
	.long	.LASF53
	.byte	0x1
	.value	0x271
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
	.long	0x5aac
	.uleb128 0x34
	.long	0x8a0e
	.string	"compare_blocks"
	.byte	0x1
	.value	0x27f
	.byte	0x1
	.long	0x2e4
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x38
	.string	"v1"
	.byte	0x1
	.value	0x27d
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"v2"
	.byte	0x1
	.value	0x27e
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"b1"
	.byte	0x1
	.value	0x280
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"b2"
	.byte	0x1
	.value	0x281
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"p1"
	.byte	0x1
	.value	0x282
	.long	0x4c2
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.string	"p2"
	.byte	0x1
	.value	0x283
	.long	0x4c2
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x34
	.long	0x8a87
	.string	"find_block"
	.byte	0x1
	.value	0x291
	.byte	0x1
	.long	0x2e4
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x38
	.string	"v1"
	.byte	0x1
	.value	0x28f
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"v2"
	.byte	0x1
	.value	0x290
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"b1"
	.byte	0x1
	.value	0x292
	.long	0x8a87
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"b2"
	.byte	0x1
	.value	0x293
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"p1"
	.byte	0x1
	.value	0x294
	.long	0x4c2
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.string	"p2"
	.byte	0x1
	.value	0x295
	.long	0x4c2
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8a8d
	.uleb128 0xb
	.long	0x1f8
	.uleb128 0x37
	.long	0x8f5b
	.byte	0x1
	.string	"expand_inline_function"
	.byte	0x1
	.value	0x2b1
	.byte	0x1
	.long	0x9e
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x35
	.long	.LASF33
	.byte	0x1
	.value	0x2ac
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"parms"
	.byte	0x1
	.value	0x2ac
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"target"
	.byte	0x1
	.value	0x2ad
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"ignore"
	.byte	0x1
	.value	0x2ae
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.string	"type"
	.byte	0x1
	.value	0x2af
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x38
	.string	"structure_value_addr"
	.byte	0x1
	.value	0x2b0
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x33
	.string	"inlining_previous"
	.byte	0x1
	.value	0x2b2
	.long	0x4f63
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x33
	.string	"inl_f"
	.byte	0x1
	.value	0x2b3
	.long	0x4f63
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x33
	.string	"formal"
	.byte	0x1
	.value	0x2b4
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x33
	.string	"actual"
	.byte	0x1
	.value	0x2b4
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x33
	.string	"block"
	.byte	0x1
	.value	0x2b4
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x33
	.string	"parm_insns"
	.byte	0x1
	.value	0x2b5
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x36
	.long	.LASF31
	.byte	0x1
	.value	0x2b6
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x33
	.string	"arg_trees"
	.byte	0x1
	.value	0x2b9
	.long	0x5a95
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x33
	.string	"arg_vals"
	.byte	0x1
	.value	0x2ba
	.long	0x1764
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x33
	.string	"max_regno"
	.byte	0x1
	.value	0x2bb
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x2bc
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x33
	.string	"min_labelno"
	.byte	0x1
	.value	0x2bd
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x33
	.string	"max_labelno"
	.byte	0x1
	.value	0x2be
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x33
	.string	"nargs"
	.byte	0x1
	.value	0x2bf
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x33
	.string	"loc"
	.byte	0x1
	.value	0x2c0
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x33
	.string	"stack_save"
	.byte	0x1
	.value	0x2c1
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x36
	.long	.LASF52
	.byte	0x1
	.value	0x2c2
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x33
	.string	"map"
	.byte	0x1
	.value	0x2c3
	.long	0x8517
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x36
	.long	.LASF47
	.byte	0x1
	.value	0x2c4
	.long	0x19e
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x36
	.long	.LASF54
	.byte	0x1
	.value	0x2c5
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x33
	.string	"inl_max_uid"
	.byte	0x1
	.value	0x2c6
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x36
	.long	.LASF55
	.byte	0x1
	.value	0x2c7
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.string	"real_label_map"
	.byte	0x1
	.value	0x2cb
	.long	0x1764
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x39
	.long	0x8d2f
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x33
	.string	"arg"
	.byte	0x1
	.value	0x2e3
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x2e4
	.long	0x831
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x0
	.uleb128 0x39
	.long	0x8dbe
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x33
	.string	"arg"
	.byte	0x1
	.value	0x309
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x30b
	.long	0x831
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x36
	.long	.LASF49
	.byte	0x1
	.value	0x30c
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x39
	.long	0x8d91
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x33
	.string	"stack_slot"
	.byte	0x1
	.value	0x318
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.uleb128 0x31
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x36
	.long	.LASF37
	.byte	0x1
	.value	0x322
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x33
	.string	"pmode"
	.byte	0x1
	.value	0x323
	.long	0x831
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x8ddd
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x33
	.string	"note"
	.byte	0x1
	.value	0x39f
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x39
	.long	0x8e8a
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x36
	.long	.LASF48
	.byte	0x1
	.value	0x3b4
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x39
	.long	0x8e30
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x3c7
	.long	0x898b
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x31
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x36
	.long	.LASF53
	.byte	0x1
	.value	0x3c7
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
	.value	0x3dd
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"locimag"
	.byte	0x1
	.value	0x3de
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"copyreal"
	.byte	0x1
	.value	0x3df
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"copyimag"
	.byte	0x1
	.value	0x3e0
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x8ea8
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x33
	.string	"note"
	.byte	0x1
	.value	0x3fb
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x39
	.long	0x8edc
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x448
	.long	0x898b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x36
	.long	.LASF53
	.byte	0x1
	.value	0x448
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x8f1e
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x36
	.long	.LASF56
	.byte	0x1
	.value	0x460
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF57
	.byte	0x1
	.value	0x465
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"reg_to_map"
	.byte	0x1
	.value	0x467
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x39
	.long	0x8f4a
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x36
	.long	.LASF56
	.byte	0x1
	.value	0x49f
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.long	.LASF57
	.byte	0x1
	.value	0x4a0
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x3b
	.long	.LASF51
	.long	0x9fb1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15024
	.byte	0x0
	.uleb128 0x3c
	.long	0x9119
	.string	"copy_insn_list"
	.byte	0x1
	.value	0x54b
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x35
	.long	.LASF31
	.byte	0x1
	.value	0x548
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"map"
	.byte	0x1
	.value	0x549
	.long	0x8517
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF54
	.byte	0x1
	.value	0x54a
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x54c
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF46
	.byte	0x1
	.value	0x54d
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x36
	.long	.LASF52
	.byte	0x1
	.value	0x54e
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"static_chain_mem"
	.byte	0x1
	.value	0x552
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x39
	.long	0x9108
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x36
	.long	.LASF48
	.byte	0x1
	.value	0x55b
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"pattern"
	.byte	0x1
	.value	0x55b
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"set"
	.byte	0x1
	.value	0x55b
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x39
	.long	0x9052
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x33
	.string	"new_set"
	.byte	0x1
	.value	0x575
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x39
	.long	0x9073
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x33
	.string	"newdest"
	.byte	0x1
	.value	0x5c5
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x39
	.long	0x9091
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x36
	.long	.LASF7
	.byte	0x1
	.value	0x5d6
	.long	0x459
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x39
	.long	0x90e3
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x33
	.string	"sequence"
	.byte	0x1
	.value	0x641
	.long	0x9119
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.string	"tail_label"
	.byte	0x1
	.value	0x642
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
	.value	0x646
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
	.value	0x6a0
	.long	0x5a95
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	.LASF51
	.long	0x9f9c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15856
	.byte	0x0
	.uleb128 0x10
	.long	0x9129
	.long	0x9e
	.uleb128 0x11
	.long	0x3d4
	.byte	0x2
	.byte	0x0
	.uleb128 0x3c
	.long	0x91e3
	.string	"copy_insn_notes"
	.byte	0x1
	.value	0x6cc
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x35
	.long	.LASF31
	.byte	0x1
	.value	0x6c9
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"map"
	.byte	0x1
	.value	0x6ca
	.long	0x8517
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF55
	.byte	0x1
	.value	0x6cb
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF46
	.byte	0x1
	.value	0x6cd
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"new_insn"
	.byte	0x1
	.value	0x6cd
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x39
	.long	0x91cb
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x36
	.long	.LASF30
	.byte	0x1
	.value	0x6db
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"note"
	.byte	0x1
	.value	0x6db
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
	.value	0x6f4
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x928a
	.string	"integrate_parm_decls"
	.byte	0x1
	.value	0x707
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x38
	.string	"args"
	.byte	0x1
	.value	0x704
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"map"
	.byte	0x1
	.value	0x705
	.long	0x8517
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF47
	.byte	0x1
	.value	0x706
	.long	0x19e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"tail"
	.byte	0x1
	.value	0x708
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x709
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
	.value	0x70d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.string	"new_decl_rtl"
	.byte	0x1
	.value	0x70f
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x9335
	.string	"integrate_decl_tree"
	.byte	0x1
	.value	0x72a
	.byte	0x1
	.long	0x1e6
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x38
	.string	"let"
	.byte	0x1
	.value	0x728
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"map"
	.byte	0x1
	.value	0x729
	.long	0x8517
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x72b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"new_block"
	.byte	0x1
	.value	0x72c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.long	.LASF30
	.byte	0x1
	.value	0x72d
	.long	0x5a95
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x33
	.string	"d"
	.byte	0x1
	.value	0x735
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
	.value	0x73b
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x960c
	.byte	0x1
	.string	"copy_rtx_and_substitute"
	.byte	0x1
	.value	0x77a
	.byte	0x1
	.long	0x9e
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x38
	.string	"orig"
	.byte	0x1
	.value	0x777
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"map"
	.byte	0x1
	.value	0x778
	.long	0x8517
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"for_lhs"
	.byte	0x1
	.value	0x779
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF48
	.byte	0x1
	.value	0x77b
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x36
	.long	.LASF52
	.byte	0x1
	.value	0x77b
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x77c
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x77c
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.string	"code"
	.byte	0x1
	.value	0x77d
	.long	0xb29
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x77e
	.long	0x831
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x36
	.long	.LASF58
	.byte	0x1
	.value	0x77f
	.long	0x2d1
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x36
	.long	.LASF59
	.byte	0x1
	.value	0x780
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x39
	.long	0x9486
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x33
	.string	"loc"
	.byte	0x1
	.value	0x7a3
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x33
	.string	"seq"
	.byte	0x1
	.value	0x7a3
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x36
	.long	.LASF8
	.byte	0x1
	.value	0x7a4
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
	.value	0x7c1
	.long	0x898b
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x36
	.long	.LASF53
	.byte	0x1
	.value	0x7c1
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x94f5
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x33
	.string	"loc"
	.byte	0x1
	.value	0x7cf
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.string	"seq"
	.byte	0x1
	.value	0x7cf
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x36
	.long	.LASF8
	.byte	0x1
	.value	0x7d0
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
	.value	0x7e2
	.long	0x898b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x36
	.long	.LASF53
	.byte	0x1
	.value	0x7e2
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x9547
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x33
	.string	"f"
	.byte	0x1
	.value	0x88a
	.long	0x4f63
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0x88b
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF61
	.byte	0x1
	.value	0x88c
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x36
	.long	.LASF52
	.byte	0x1
	.value	0x88f
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x9563
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x33
	.string	"d"
	.byte	0x1
	.value	0x8ba
	.long	0x3d8a
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.byte	0x0
	.uleb128 0x39
	.long	0x9580
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x36
	.long	.LASF48
	.byte	0x1
	.value	0x8ea
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x39
	.long	0x95cf
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x33
	.string	"equiv_reg"
	.byte	0x1
	.value	0x906
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"equiv_loc"
	.byte	0x1
	.value	0x907
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"loc_offset"
	.byte	0x1
	.value	0x908
	.long	0x459
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.byte	0x0
	.uleb128 0x39
	.long	0x95fb
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x36
	.long	.LASF61
	.byte	0x1
	.value	0x924
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0x926
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x3b
	.long	.LASF51
	.long	0x9f87
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16401
	.byte	0x0
	.uleb128 0x3a
	.long	0x96c2
	.byte	0x1
	.string	"try_constants"
	.byte	0x1
	.value	0x99c
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x35
	.long	.LASF46
	.byte	0x1
	.value	0x99a
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"map"
	.byte	0x1
	.value	0x99b
	.long	0x8517
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x99d
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x36
	.long	.LASF59
	.byte	0x1
	.value	0x9b6
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	0x9690
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x36
	.long	.LASF53
	.byte	0x1
	.value	0x9b8
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
	.value	0x9bf
	.long	0x898b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x36
	.long	.LASF53
	.byte	0x1
	.value	0x9bf
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x990c
	.string	"subst_constants"
	.byte	0x1
	.value	0x9e0
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x38
	.string	"loc"
	.byte	0x1
	.value	0x9dc
	.long	0x1764
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF46
	.byte	0x1
	.value	0x9dd
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"map"
	.byte	0x1
	.value	0x9de
	.long	0x8517
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"memonly"
	.byte	0x1
	.value	0x9df
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x9e1
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x9e2
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x9e2
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x33
	.string	"code"
	.byte	0x1
	.value	0x9e3
	.long	0xb29
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x36
	.long	.LASF58
	.byte	0x1
	.value	0x9e4
	.long	0x2d1
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.string	"num_changes"
	.byte	0x1
	.value	0x9e5
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.string	"new"
	.byte	0x1
	.value	0x9e6
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.string	"op0_mode"
	.byte	0x1
	.value	0x9e7
	.long	0x831
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x39
	.long	0x97db
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x36
	.long	.LASF59
	.byte	0x1
	.value	0xa0b
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0xa0c
	.long	0x898b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x39
	.long	0x980a
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x33
	.string	"inner"
	.byte	0x1
	.value	0xa1f
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x33
	.string	"new"
	.byte	0x1
	.value	0xa20
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x39
	.long	0x9887
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x33
	.string	"dest_loc"
	.byte	0x1
	.value	0xa43
	.long	0x1764
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"dest"
	.byte	0x1
	.value	0xa44
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"src"
	.byte	0x1
	.value	0xa45
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"tem"
	.byte	0x1
	.value	0xa45
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF36
	.byte	0x1
	.value	0xa46
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
	.value	0xa90
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x98a4
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x33
	.string	"tem"
	.byte	0x1
	.value	0xad5
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x39
	.long	0x98c5
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x33
	.string	"op_mode"
	.byte	0x1
	.value	0xae7
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x39
	.long	0x98fb
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x33
	.string	"op0"
	.byte	0x1
	.value	0xb0d
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x36
	.long	.LASF52
	.byte	0x1
	.value	0xb17
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	.LASF51
	.long	0x9f82
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17267
	.byte	0x0
	.uleb128 0x3c
	.long	0x99b6
	.string	"mark_stores"
	.byte	0x1
	.value	0xb36
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x38
	.string	"dest"
	.byte	0x1
	.value	0xb33
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"x"
	.byte	0x1
	.value	0xb34
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"data"
	.byte	0x1
	.value	0xb35
	.long	0x4c0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF59
	.byte	0x1
	.value	0xb37
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0xb38
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
	.value	0xb4c
	.long	0x3bd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"last_reg"
	.byte	0x1
	.value	0xb4d
	.long	0x3bd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xb4f
	.long	0x3bd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x9a28
	.string	"set_block_origin_self"
	.byte	0x1
	.value	0xb68
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x38
	.string	"stmt"
	.byte	0x1
	.value	0xb67
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.long	0x9a0e
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x36
	.long	.LASF62
	.byte	0x1
	.value	0xb6e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x31
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x36
	.long	.LASF63
	.byte	0x1
	.value	0xb77
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x9a7c
	.byte	0x1
	.string	"set_decl_origin_self"
	.byte	0x1
	.value	0xb8f
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x35
	.long	.LASF2
	.byte	0x1
	.value	0xb8e
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
	.value	0xb95
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x9aec
	.string	"set_block_abstract_flags"
	.byte	0x1
	.value	0xba9
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x38
	.string	"stmt"
	.byte	0x1
	.value	0xba7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"setting"
	.byte	0x1
	.value	0xba8
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF62
	.byte	0x1
	.value	0xbaa
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.long	.LASF63
	.byte	0x1
	.value	0xbab
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3a
	.long	0x9b56
	.byte	0x1
	.string	"set_decl_abstract_flags"
	.byte	0x1
	.value	0xbc4
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x35
	.long	.LASF2
	.byte	0x1
	.value	0xbc2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"setting"
	.byte	0x1
	.value	0xbc3
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
	.value	0xbc8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x9bd8
	.byte	0x1
	.string	"output_inline_function"
	.byte	0x1
	.value	0xbdb
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x35
	.long	.LASF33
	.byte	0x1
	.value	0xbda
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"old_write_symbols"
	.byte	0x1
	.value	0xbdc
	.long	0x64bc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"old_debug_hooks"
	.byte	0x1
	.value	0xbdd
	.long	0x9bd8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"f"
	.byte	0x1
	.value	0xbde
	.long	0x4f63
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.long	0x9bdd
	.uleb128 0x3
	.byte	0x4
	.long	0x9be3
	.uleb128 0xb
	.long	0x6546
	.uleb128 0x37
	.long	0x9c56
	.byte	0x1
	.string	"get_hard_reg_initial_reg"
	.byte	0x1
	.value	0xc09
	.byte	0x1
	.long	0x9e
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x38
	.string	"fun"
	.byte	0x1
	.value	0xc07
	.long	0x4f63
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"reg"
	.byte	0x1
	.value	0xc08
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"ivs"
	.byte	0x1
	.value	0xc0a
	.long	0x6e2a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xc0b
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0x9cc9
	.byte	0x1
	.string	"has_func_hard_reg_initial_val"
	.byte	0x1
	.value	0xc1b
	.byte	0x1
	.long	0x9e
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x38
	.string	"fun"
	.byte	0x1
	.value	0xc19
	.long	0x4f63
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"reg"
	.byte	0x1
	.value	0xc1a
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"ivs"
	.byte	0x1
	.value	0xc1c
	.long	0x6e2a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xc1d
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0x9d3d
	.byte	0x1
	.string	"get_func_hard_reg_initial_val"
	.byte	0x1
	.value	0xc2d
	.byte	0x1
	.long	0x9e
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x38
	.string	"fun"
	.byte	0x1
	.value	0xc2b
	.long	0x4f63
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"reg"
	.byte	0x1
	.value	0xc2c
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"ivs"
	.byte	0x1
	.value	0xc2e
	.long	0x6e2a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"rv"
	.byte	0x1
	.value	0xc2f
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x37
	.long	0x9d8f
	.byte	0x1
	.string	"get_hard_reg_initial_val"
	.byte	0x1
	.value	0xc50
	.byte	0x1
	.long	0x9e
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0xc4e
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF59
	.byte	0x1
	.value	0xc4f
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x37
	.long	0x9de1
	.byte	0x1
	.string	"has_hard_reg_initial_val"
	.byte	0x1
	.value	0xc58
	.byte	0x1
	.long	0x9e
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0xc56
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF59
	.byte	0x1
	.value	0xc57
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3c
	.long	0x9e5e
	.string	"setup_initial_hard_reg_value_integration"
	.byte	0x1
	.value	0xc60
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x38
	.string	"inl_f"
	.byte	0x1
	.value	0xc5e
	.long	0x4f63
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"remap"
	.byte	0x1
	.value	0xc5f
	.long	0x8517
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"ivs"
	.byte	0x1
	.value	0xc61
	.long	0x6e2a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xc62
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3a
	.long	0x9eb8
	.byte	0x1
	.string	"emit_initial_value_sets"
	.byte	0x1
	.value	0xc6f
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x33
	.string	"ivs"
	.byte	0x1
	.value	0xc70
	.long	0x6e2a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xc71
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"seq"
	.byte	0x1
	.value	0xc72
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3a
	.long	0x9f07
	.byte	0x1
	.string	"allocate_initial_values"
	.byte	0x1
	.value	0xc85
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x38
	.string	"reg_equiv_memory_loc"
	.byte	0x1
	.value	0xc84
	.long	0x1764
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x3d
	.long	0x9f6d
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
	.long	0x9f6d
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
	.long	0x6e2a
	.uleb128 0x10
	.long	0x9f82
	.long	0x2dc
	.uleb128 0x11
	.long	0x3d4
	.byte	0xf
	.byte	0x0
	.uleb128 0xb
	.long	0x9f72
	.uleb128 0xb
	.long	0x7f5
	.uleb128 0x10
	.long	0x9f9c
	.long	0x2dc
	.uleb128 0x11
	.long	0x3d4
	.byte	0xe
	.byte	0x0
	.uleb128 0xb
	.long	0x9f8c
	.uleb128 0x10
	.long	0x9fb1
	.long	0x2dc
	.uleb128 0x11
	.long	0x3d4
	.byte	0x16
	.byte	0x0
	.uleb128 0xb
	.long	0x9fa1
	.uleb128 0xb
	.long	0x9f72
	.uleb128 0x10
	.long	0x9fcb
	.long	0x2dc
	.uleb128 0x11
	.long	0x3d4
	.byte	0xff
	.byte	0x0
	.uleb128 0x2e
	.string	"inlining"
	.byte	0x1
	.byte	0x6b
	.long	0x4f63
	.byte	0x5
	.byte	0x3
	.long	inlining
	.uleb128 0x33
	.string	"parmdecl_map"
	.byte	0x1
	.value	0x11a
	.long	0x5a95
	.byte	0x5
	.byte	0x3
	.long	parmdecl_map
	.uleb128 0x33
	.string	"in_nonparm_insns"
	.byte	0x1
	.value	0x11d
	.long	0x2e4
	.byte	0x5
	.byte	0x3
	.long	in_nonparm_insns
	.uleb128 0x33
	.string	"old_cfun"
	.byte	0x1
	.value	0xbd6
	.long	0x4f63
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
	.long	0xa06b
	.long	0xa7a
	.uleb128 0x11
	.long	0x3d4
	.byte	0x35
	.byte	0x0
	.uleb128 0x40
	.long	.LASF5
	.byte	0x5
	.byte	0x34
	.long	0xa078
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xa05b
	.uleb128 0x10
	.long	0xa08d
	.long	0x401
	.uleb128 0x11
	.long	0x3d4
	.byte	0x35
	.byte	0x0
	.uleb128 0x3e
	.string	"mode_size"
	.byte	0x5
	.byte	0x59
	.long	0xa0a0
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xa07d
	.uleb128 0x10
	.long	0xa0b5
	.long	0x412
	.uleb128 0x11
	.long	0x3d4
	.byte	0x35
	.byte	0x0
	.uleb128 0x3e
	.string	"mode_bitsize"
	.byte	0x5
	.byte	0x69
	.long	0xa0cb
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xa0a5
	.uleb128 0x10
	.long	0xa0e0
	.long	0x401
	.uleb128 0x11
	.long	0x3d4
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3e
	.string	"rtx_length"
	.byte	0x4
	.byte	0x3c
	.long	0xa0f4
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xa0d0
	.uleb128 0x10
	.long	0xa109
	.long	0x2d1
	.uleb128 0x11
	.long	0x3d4
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3e
	.string	"rtx_format"
	.byte	0x4
	.byte	0x42
	.long	0xa11d
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xa0f9
	.uleb128 0x10
	.long	0xa132
	.long	0x2dc
	.uleb128 0x11
	.long	0x3d4
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3e
	.string	"rtx_class"
	.byte	0x4
	.byte	0x45
	.long	0xa145
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xa122
	.uleb128 0x3f
	.string	"rtx_equal_function_value_matters"
	.byte	0x4
	.value	0x541
	.long	0x2e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xa185
	.long	0x9e
	.uleb128 0x11
	.long	0x3d4
	.byte	0x80
	.byte	0x0
	.uleb128 0x3f
	.string	"const_int_rtx"
	.byte	0x4
	.value	0x6a4
	.long	0xa175
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xa1ad
	.long	0x9e
	.uleb128 0x11
	.long	0x3d4
	.byte	0xa
	.byte	0x0
	.uleb128 0x3f
	.string	"global_rtl"
	.byte	0x4
	.value	0x6e5
	.long	0xa19d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"static_chain_incoming_rtx"
	.byte	0x4
	.value	0x6f7
	.long	0x9e
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xa1f6
	.long	0x1e6
	.uleb128 0x11
	.long	0x3d4
	.byte	0x3a
	.byte	0x0
	.uleb128 0x3f
	.string	"global_trees"
	.byte	0x7
	.value	0x8b5
	.long	0xa1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"input_filename"
	.byte	0x7
	.value	0xbb7
	.long	0x2d1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"lineno"
	.byte	0x7
	.value	0xbba
	.long	0x2e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"current_function_decl"
	.byte	0x7
	.value	0xbc8
	.long	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"write_symbols"
	.byte	0x14
	.byte	0x30
	.long	0x64bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"optimize_size"
	.byte	0x14
	.byte	0x47
	.long	0x2e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"flag_test_coverage"
	.byte	0x14
	.byte	0xd0
	.long	0x2e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"flag_no_inline"
	.byte	0x14
	.value	0x19a
	.long	0x2e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"debug_hooks"
	.byte	0x15
	.byte	0x6a
	.long	0x9bdd
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"do_nothing_debug_hooks"
	.byte	0x15
	.byte	0x7f
	.long	0x9be3
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"global_const_equiv_varray"
	.byte	0x1
	.value	0x252
	.long	0x602d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	global_const_equiv_varray
	.uleb128 0x3f
	.string	"cfun"
	.byte	0xb
	.value	0x202
	.long	0x4f63
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
	.long	0xa35f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6eb2
	.uleb128 0x3f
	.string	"targetm"
	.byte	0x17
	.value	0x12d
	.long	0x7566
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.long	.LASF44
	.byte	0x1b
	.value	0x176
	.long	0xa385
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x7f99
	.uleb128 0x10
	.long	0xa39a
	.long	0x6ebd
	.uleb128 0x11
	.long	0x3d4
	.byte	0x1
	.byte	0x0
	.uleb128 0x43
	.string	"gt_ggc_r_gt_integrate_h"
	.byte	0x2
	.byte	0x2b
	.long	0xa3c0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_r_gt_integrate_h
	.uleb128 0xb
	.long	0xa38a
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.long	0xa3c6
	.long	0x84c4
	.string	"get_label_from_map"
	.long	0x851d
	.string	"function_attribute_inlinable_p"
	.long	0x8583
	.string	"function_cannot_inline_p"
	.long	0x86e1
	.string	"copy_decl_for_inlining"
	.long	0x87c3
	.string	"save_for_inline"
	.long	0x8a92
	.string	"expand_inline_function"
	.long	0x9335
	.string	"copy_rtx_and_substitute"
	.long	0x960c
	.string	"try_constants"
	.long	0x9a28
	.string	"set_decl_origin_self"
	.long	0x9aec
	.string	"set_decl_abstract_flags"
	.long	0x9b56
	.string	"output_inline_function"
	.long	0x9be8
	.string	"get_hard_reg_initial_reg"
	.long	0x9c56
	.string	"has_func_hard_reg_initial_val"
	.long	0x9cc9
	.string	"get_func_hard_reg_initial_val"
	.long	0x9d3d
	.string	"get_hard_reg_initial_val"
	.long	0x9d8f
	.string	"has_hard_reg_initial_val"
	.long	0x9e5e
	.string	"emit_initial_value_sets"
	.long	0x9eb8
	.string	"allocate_initial_values"
	.long	0x9f07
	.string	"gt_ggc_mx_initial_value_struct"
	.long	0xa2ef
	.string	"global_const_equiv_varray"
	.long	0xa39a
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
.LASF49:
	.string	"invisiref"
.LASF59:
	.string	"regno"
.LASF43:
	.string	"function_attribute_inlinable_p"
.LASF24:
	.string	"name"
.LASF60:
	.string	"constant"
.LASF33:
	.string	"fndecl"
.LASF10:
	.string	"lang_flag_0"
.LASF11:
	.string	"lang_flag_1"
.LASF12:
	.string	"lang_flag_2"
.LASF16:
	.string	"lang_flag_6"
.LASF50:
	.string	"first_nonparm_insn"
.LASF8:
	.string	"size"
.LASF6:
	.string	"mem_attrs"
.LASF53:
	.string	"is_global"
.LASF36:
	.string	"compare_mode"
.LASF1:
	.string	"common"
.LASF25:
	.string	"lang_specific"
.LASF39:
	.string	"sequence_rtl_expr"
.LASF54:
	.string	"static_chain_value"
.LASF38:
	.string	"sequence_stack"
.LASF28:
	.string	"function_frequency"
.LASF13:
	.string	"lang_flag_3"
.LASF26:
	.string	"function"
.LASF34:
	.string	"regno_pointer_align"
.LASF30:
	.string	"next"
.LASF3:
	.string	"unsigned int"
.LASF62:
	.string	"local_decl"
.LASF19:
	.string	"abstract_origin"
.LASF5:
	.string	"mode_class"
.LASF22:
	.string	"pointer_depth"
.LASF63:
	.string	"subblock"
.LASF23:
	.string	"user_align"
.LASF32:
	.string	"num_entries"
.LASF44:
	.string	"lang_hooks"
.LASF20:
	.string	"size_unit"
.LASF57:
	.string	"arriving_mode"
.LASF42:
	.string	"attribute_table"
.LASF52:
	.string	"temp"
.LASF27:
	.string	"args_size"
.LASF48:
	.string	"copy"
.LASF46:
	.string	"insn"
.LASF58:
	.string	"format_ptr"
.LASF31:
	.string	"insns"
.LASF14:
	.string	"lang_flag_4"
.LASF15:
	.string	"lang_flag_5"
.LASF18:
	.string	"abstract_flag"
.LASF45:
	.string	"initial_value_pair"
.LASF41:
	.string	"param_info"
.LASF37:
	.string	"unsignedp"
.LASF17:
	.string	"ht_identifier"
.LASF7:
	.string	"offset"
.LASF51:
	.string	"__FUNCTION__"
.LASF9:
	.string	"built_in_class"
.LASF29:
	.string	"basic_block"
.LASF47:
	.string	"arg_vector"
.LASF35:
	.string	"x_regno_reg_rtx"
.LASF0:
	.string	"mode"
.LASF61:
	.string	"const_mode"
.LASF56:
	.string	"departing_mode"
.LASF4:
	.string	"_IO_FILE"
.LASF40:
	.string	"initial_value_struct"
.LASF21:
	.string	"attributes"
.LASF2:
	.string	"decl"
.LASF55:
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
