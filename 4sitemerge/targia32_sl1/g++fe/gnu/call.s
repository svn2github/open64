	.file	"call.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl build_vfield_ref
	.type	build_vfield_ref, @function
build_vfield_ref:
.LFB15:
	.file 1 "../../../kg++fe/gnu/cp/call.c"
	.loc 1 112 0
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
	.loc 1 113 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2
	.loc 1 114 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L4
.L2:
	.loc 1 116 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L5
	.loc 1 117 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, 8(%ebp)
.L5:
	.loc 1 119 0
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L7
	movl	12(%ebp), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L7
	.loc 1 121 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_base@PLT
	movl	%eax, 8(%ebp)
.L7:
	.loc 1 123 0
	movl	12(%ebp), %eax
	movl	60(%eax), %edx
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$40, (%esp)
	call	build@PLT
	movl	%eax, -8(%ebp)
.L4:
	movl	-8(%ebp), %eax
	.loc 1 125 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	build_vfield_ref, .-build_vfield_ref
	.type	build_field_call, @function
build_field_call:
.LFB16:
	.loc 1 132 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$52, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 135 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L12
	cmpl	$0, 12(%ebp)
	jne	.L14
.L12:
	.loc 1 136 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L15
.L14:
	.loc 1 138 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	je	.L16
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L18
.L16:
	.loc 1 142 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, -8(%ebp)
	.loc 1 143 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_class_member_access_expr@PLT
	movl	%eax, -8(%ebp)
	.loc 1 147 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L19
	.loc 1 148 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L15
.L19:
	.loc 1 150 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L21
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L21
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L21
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L21
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L26
.L21:
	.loc 1 151 0
	movl	$0, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	$54, (%esp)
	call	build_opfncall@PLT
	movl	%eax, -24(%ebp)
	jmp	.L15
.L26:
	.loc 1 153 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L27
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L18
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L18
.L27:
	.loc 1 157 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_call@PLT
	movl	%eax, -24(%ebp)
	jmp	.L15
.L18:
	.loc 1 160 0
	movl	$0, -24(%ebp)
.L15:
	movl	-24(%ebp), %eax
	.loc 1 161 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	build_field_call, .-build_field_call
	.section	.rodata
	.type	__FUNCTION__.16269, @object
	.size	__FUNCTION__.16269, 16
__FUNCTION__.16269:
	.string	"check_dtor_name"
.LC0:
	.string	"../../../kg++fe/gnu/cp/call.c"
	.text
.globl check_dtor_name
	.type	check_dtor_name, @function
check_dtor_name:
.LFB17:
	.loc 1 170 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$20, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 171 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 174 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L32
	.loc 1 175 0
	movl	$1, -8(%ebp)
	jmp	.L34
.L32:
	.loc 1 177 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L35
	.loc 1 178 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	jmp	.L37
.L35:
	.loc 1 179 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	je	.L37
	.loc 1 181 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L39
	.loc 1 183 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L41
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L41
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L41
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L41
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L46
.L41:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	constructor_name@PLT
	cmpl	12(%ebp), %eax
	je	.L47
.L46:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L48
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L48
.L47:
	.loc 1 186 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 183 0
	jmp	.L37
.L48:
	.loc 1 188 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_type_value@PLT
	movl	%eax, 12(%ebp)
	jmp	.L37
.L39:
	.loc 1 197 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L51
	movl	12(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L51
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L54
	movl	12(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L54
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L51
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L51
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L51
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L51
.L54:
	.loc 1 198 0
	movl	$0, -8(%ebp)
	jmp	.L34
.L51:
	.loc 1 200 0
	leal	__FUNCTION__.16269@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$200, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L37:
	.loc 1 202 0
	cmpl	$0, 12(%ebp)
	je	.L60
	movl	8(%ebp), %eax
	movl	72(%eax), %edx
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	%eax, %edx
	jne	.L60
	.loc 1 203 0
	movl	$1, -8(%ebp)
	jmp	.L34
.L60:
	.loc 1 204 0
	movl	$0, -8(%ebp)
.L34:
	movl	-8(%ebp), %eax
	.loc 1 205 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	check_dtor_name, .-check_dtor_name
	.section	.rodata
	.align 4
.LC1:
	.string	"qualified type `%T' does not match destructor name `~%T'"
	.align 4
.LC2:
	.string	"type of `%E' does not match destructor type `%T' (type was `%T')"
.LC3:
	.string	"`%D' is a namespace"
	.align 4
.LC4:
	.string	"base object `%E' of scoped method call is of non-aggregate type `%T'"
	.text
.globl build_scoped_method_call
	.type	build_scoped_method_call, @function
build_scoped_method_call:
.LFB18:
	.loc 1 213 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$52, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 221 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 223 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L65
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L67
.L65:
	.loc 1 225 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L68
.L67:
	.loc 1 227 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L69
	.loc 1 229 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	jne	.L71
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L71
.LBB2:
	.loc 1 232 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	get_aggr_from_typedef@PLT
	movl	%eax, -8(%ebp)
	.loc 1 233 0
	cmpl	$0, -8(%ebp)
	je	.L71
	.loc 1 234 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$92, (%esp)
	call	build_min_nt@PLT
	movl	%eax, 16(%ebp)
.L71:
.LBE2:
	.loc 1 236 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$185, (%esp)
	call	build_min_nt@PLT
	movl	%eax, 16(%ebp)
	.loc 1 237 0
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$55, (%esp)
	call	build_min_nt@PLT
	movl	%eax, -24(%ebp)
	jmp	.L68
.L69:
	.loc 1 240 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L75
	.loc 1 241 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L75:
	.loc 1 243 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L77
	.loc 1 245 0
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 246 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	jmp	.L79
.L77:
	.loc 1 249 0
	movl	$0, -20(%ebp)
.L79:
	.loc 1 252 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	jne	.L80
	.loc 1 257 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L82
	.loc 1 258 0
	movl	$3, 16(%esp)
	movl	$0, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_method_call@PLT
	movl	%eax, -24(%ebp)
	jmp	.L68
.L82:
	.loc 1 260 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	check_dtor_name@PLT
	testl	%eax, %eax
	jne	.L84
	.loc 1 261 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L84:
	.loc 1 267 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L80
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L80
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L80
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L80
	movl	12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L80
	.loc 1 269 0
	movl	-12(%ebp), %eax
	movl	72(%eax), %edx
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	%eax, %edx
	je	.L91
	.loc 1 270 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L91:
	.loc 1 273 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, -24(%ebp)
	jmp	.L68
.L80:
	.loc 1 277 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L93
	.loc 1 279 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 280 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L68
.L93:
	.loc 1 282 0
	movl	$1, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	is_aggr_type@PLT
	testl	%eax, %eax
	jne	.L95
	.loc 1 283 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L68
.L95:
	.loc 1 285 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L97
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L97
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L97
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L97
	movl	-12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L97
	.loc 1 287 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 289 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L68
.L97:
	.loc 1 292 0
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_scoped_ref@PLT
	movl	%eax, -16(%ebp)
	.loc 1 294 0
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	je	.L103
	.loc 1 297 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	jne	.L105
	.loc 1 299 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L107
	.loc 1 300 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, -24(%ebp)
	jmp	.L68
.L107:
	.loc 1 302 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 16(%esp)
	movl	$523, 12(%esp)
	movl	$5, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_delete@PLT
	movl	%eax, -24(%ebp)
	jmp	.L68
.L105:
	.loc 1 309 0
	movl	-20(%ebp), %eax
	movl	$11, 16(%esp)
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_method_call@PLT
	movl	%eax, -24(%ebp)
	jmp	.L68
.L103:
	.loc 1 312 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L68:
	movl	-24(%ebp), %eax
	.loc 1 313 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	build_scoped_method_call, .-build_scoped_method_call
.globl build_addr_func
	.type	build_addr_func, @function
build_addr_func:
.LFB19:
	.loc 1 321 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%ebx
.LCFI18:
	subl	$36, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 322 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 326 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L111
.LBB3:
	.loc 1 330 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -12(%ebp)
	.loc 1 332 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_mark_addressable@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L113
	.loc 1 333 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L115
.L113:
	.loc 1 335 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, -8(%ebp)
	.loc 1 339 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	staticp@PLT
	testl	%eax, %eax
	je	.L116
	.loc 1 340 0
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$2, %edx
	movb	%dl, 9(%eax)
.L116:
	.loc 1 342 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%ebp)
	jmp	.L118
.L111:
.LBE3:
	.loc 1 345 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, 8(%ebp)
.L118:
	.loc 1 347 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L115:
	movl	-24(%ebp), %eax
	.loc 1 348 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	build_addr_func, .-build_addr_func
	.section	.rodata
	.type	__FUNCTION__.16481, @object
	.size	__FUNCTION__.16481, 11
__FUNCTION__.16481:
	.string	"build_call"
	.align 4
.LC5:
	.string	"unable to call pointer to member function here"
.LC6:
	.string	"__"
	.text
.globl build_call
	.type	build_call, @function
build_call:
.LFB20:
	.loc 1 357 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	pushl	%edi
.LCFI22:
	pushl	%esi
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$76, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 358 0
	movl	$0, -40(%ebp)
	.loc 1 365 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_addr_func@PLT
	movl	%eax, 8(%ebp)
	.loc 1 367 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L121
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L121
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L121
	.loc 1 369 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sorry@PLT
	.loc 1 370 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L125
.L121:
	.loc 1 373 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 374 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 376 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L126
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L126
	.loc 1 378 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 376 0
	jmp	.L129
.L126:
	.loc 1 380 0
	movl	$0, -28(%ebp)
.L129:
	.loc 1 384 0
	cmpl	$0, -28(%ebp)
	je	.L130
	movl	-28(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L132
.L130:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L133
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L133
.L132:
	movl	$1, -48(%ebp)
	jmp	.L135
.L133:
	movl	$0, -48(%ebp)
.L135:
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 387 0
	cmpl	$0, -28(%ebp)
	je	.L136
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L136
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L136
	.loc 1 388 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	$1, 56(%eax)
.L136:
	.loc 1 390 0
	cmpl	$0, -28(%ebp)
	je	.L140
	movl	-28(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L140
	.loc 1 391 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	warn_deprecated_use@PLT
.L140:
	.loc 1 392 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	require_complete_eh_spec_types@PLT
	.loc 1 394 0
	cmpl	$0, -28(%ebp)
	je	.L143
	movl	-28(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L143
	.loc 1 395 0
	movl	$1, -40(%ebp)
.L143:
	.loc 1 397 0
	cmpl	$0, -28(%ebp)
	je	.L146
	movl	-28(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L146
	.loc 1 402 0
	movl	-28(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L149
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -56(%ebp)
	leal	.LC6@GOTOFF(%ebx), %ecx
	movl	%ecx, -60(%ebp)
	movl	$2, -64(%ebp)
	cld
	movl	-56(%ebp), %esi
	movl	-60(%ebp), %edi
	movl	-64(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L151
.L149:
	.loc 1 404 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used@PLT
	.loc 1 402 0
	jmp	.L146
.L151:
	.loc 1 406 0
	leal	__FUNCTION__.16481@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$406, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L146:
	.loc 1 412 0
	cmpl	$0, -28(%ebp)
	je	.L152
	movl	-28(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	jne	.L154
.L152:
	.loc 1 413 0
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L155
.L156:
	.loc 1 414 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	is_empty_class@PLT
	testl	%eax, %eax
	je	.L157
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L157
.LBB4:
	.loc 1 417 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$190, (%esp)
	call	build@PLT
	movl	%eax, -16(%ebp)
	.loc 1 418 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 20(%eax)
.L157:
.LBE4:
	.loc 1 413 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L155:
	cmpl	$0, -32(%ebp)
	jne	.L156
.L154:
	.loc 1 422 0
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$54, (%esp)
	call	build_nt@PLT
	movl	%eax, 8(%ebp)
	.loc 1 423 0
	movl	-40(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	11(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 424 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 425 0
	movl	8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
	.loc 1 426 0
	movl	-36(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	10(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 428 0
	movl	8(%ebp), %esi
	movl	%esi, -52(%ebp)
.L125:
	movl	-52(%ebp), %eax
	.loc 1 429 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE20:
	.size	build_call, .-build_call
	.section	.rodata
	.align 4
.LC7:
	.string	"destructors take no parameters"
	.align 4
.LC8:
	.string	"destructor name `~%T' does not match type `%T' of expression"
	.align 4
.LC9:
	.string	"request for member `%D' in `%E', which is of non-aggregate type `%T'"
	.align 4
.LC10:
	.string	"request for member `%D' is ambiguous"
	.text
.globl build_method_call
	.type	build_method_call, @function
build_method_call:
.LFB21:
	.loc 1 471 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$68, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 474 0
	movl	$0, -20(%ebp)
	.loc 1 475 0
	movb	$0, -5(%ebp)
	.loc 1 481 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L162
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L162
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L162
	cmpl	$0, 8(%ebp)
	je	.L166
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L166
.L162:
	.loc 1 485 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L168
.L166:
	.loc 1 487 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L169
	.loc 1 491 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	jne	.L171
.LBB5:
	.loc 1 493 0
	movl	$0, -16(%ebp)
	.loc 1 495 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L173
	.loc 1 496 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	get_aggr_from_typedef@PLT
	movl	%eax, -16(%ebp)
	jmp	.L175
.L173:
	.loc 1 497 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L175
	.loc 1 498 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L175:
	.loc 1 500 0
	cmpl	$0, -16(%ebp)
	je	.L171
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	jne	.L171
	.loc 1 501 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$92, (%esp)
	call	build_min_nt@PLT
	movl	%eax, 12(%ebp)
.L171:
.LBE5:
	.loc 1 504 0
	movl	$0, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$55, (%esp)
	call	build_min_nt@PLT
	movl	%eax, -40(%ebp)
	jmp	.L168
.L169:
	.loc 1 507 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L179
	.loc 1 508 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 8(%ebp)
.L179:
	.loc 1 509 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L181
	.loc 1 510 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, 8(%ebp)
.L181:
	.loc 1 511 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 513 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	jne	.L183
.LBB6:
	.loc 1 517 0
	cmpl	$0, 16(%ebp)
	je	.L185
	.loc 1 518 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L185:
	.loc 1 520 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	check_dtor_name@PLT
	testl	%eax, %eax
	jne	.L187
	.loc 1 521 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L187:
	.loc 1 526 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type_or_diagnostic@PLT
	movl	%eax, -24(%ebp)
	.loc 1 527 0
	cmpl	$0, -24(%ebp)
	je	.L189
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L191
.L189:
	.loc 1 528 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L168
.L191:
	.loc 1 530 0
	movl	-24(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L192
	.loc 1 531 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, -40(%ebp)
	jmp	.L168
.L192:
	.loc 1 532 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, 8(%ebp)
	.loc 1 533 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -12(%ebp)
	.loc 1 534 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	$0, 16(%esp)
	movl	$515, 12(%esp)
	movl	$5, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_delete@PLT
	movl	%eax, -40(%ebp)
	jmp	.L168
.L183:
.LBE6:
	.loc 1 539 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L194
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L196
.L194:
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L197
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L197
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L197
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L197
	movl	-24(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L197
.L196:
	.loc 1 541 0
	movl	24(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L202
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L202
	.loc 1 543 0
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L202:
	.loc 1 545 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L168
.L197:
	.loc 1 548 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L205
	.loc 1 550 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 551 0
	movb	$1, -5(%ebp)
	.loc 1 552 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L205:
	.loc 1 554 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L207
	.loc 1 555 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_first_fn@PLT
	movl	52(%eax), %eax
	movl	%eax, 12(%ebp)
	jmp	.L209
.L207:
	.loc 1 556 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-50, %al
	jne	.L210
	.loc 1 557 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
	jmp	.L209
.L210:
	.loc 1 558 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L209
	.loc 1 559 0
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 12(%ebp)
.L209:
	.loc 1 560 0
	cmpb	$0, -5(%ebp)
	je	.L213
	.loc 1 561 0
	movl	$2, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_fnfields@PLT
	movl	%eax, -28(%ebp)
	jmp	.L215
.L213:
	.loc 1 563 0
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_member@PLT
	movl	%eax, -28(%ebp)
.L215:
	.loc 1 565 0
	cmpl	$0, -28(%ebp)
	je	.L216
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L216
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	je	.L216
	.loc 1 567 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 568 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	print_candidates@PLT
	.loc 1 569 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L168
.L216:
	.loc 1 573 0
	cmpl	$0, -28(%ebp)
	jne	.L220
	.loc 1 575 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	unqualified_name_lookup_error@PLT
	.loc 1 576 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L168
.L220:
	.loc 1 579 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L222
	cmpb	$0, -5(%ebp)
	je	.L222
	.loc 1 580 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$203, (%esp)
	call	build_nt@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 24(%eax)
.L222:
	.loc 1 584 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L225
	cmpl	$0, 20(%ebp)
	je	.L225
	.loc 1 585 0
	movl	-28(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 28(%edx)
.L225:
	.loc 1 587 0
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_new_method_call@PLT
	movl	%eax, -40(%ebp)
.L168:
	movl	-40(%ebp), %eax
	.loc 1 589 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	build_method_call, .-build_method_call
.globl null_ptr_cst_p
	.type	null_ptr_cst_p, @function
null_ptr_cst_p:
.LFB22:
	.loc 1 649 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	pushl	%ebx
.LCFI32:
	subl	$20, %esp
.LCFI33:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 654 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	264(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L230
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L232
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L234
.L232:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L234
.L230:
	.loc 1 656 0
	movl	$1, -8(%ebp)
	jmp	.L235
.L234:
	.loc 1 657 0
	movl	$0, -8(%ebp)
.L235:
	movl	-8(%ebp), %eax
	.loc 1 658 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	null_ptr_cst_p, .-null_ptr_cst_p
.globl sufficient_parms_p
	.type	sufficient_parms_p, @function
sufficient_parms_p:
.LFB23:
	.loc 1 667 0
	pushl	%ebp
.LCFI34:
	movl	%esp, %ebp
.LCFI35:
	subl	$4, %esp
.LCFI36:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 668 0
	jmp	.L238
.L239:
	.loc 1 670 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L240
	.loc 1 671 0
	movl	$0, -4(%ebp)
	jmp	.L242
.L240:
	.loc 1 669 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L238:
	.loc 1 668 0
	cmpl	$0, 8(%ebp)
	je	.L243
	movl	global_trees@GOT(%ecx), %eax
	movl	152(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L239
.L243:
	.loc 1 672 0
	movl	$1, -4(%ebp)
.L242:
	movl	-4(%ebp), %eax
	.loc 1 673 0
	leave
	ret
.LFE23:
	.size	sufficient_parms_p, .-sufficient_parms_p
	.type	build_conv, @function
build_conv:
.LFB24:
	.loc 1 679 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	pushl	%ebx
.LCFI39:
	subl	$36, %esp
.LCFI40:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 681 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 686 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_node@PLT
	movl	%eax, -12(%ebp)
	.loc 1 687 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 688 0
	movl	-12(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 690 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	cmpl	$225, -28(%ebp)
	je	.L248
	cmpl	$225, -28(%ebp)
	jb	.L247
	cmpl	$229, -28(%ebp)
	ja	.L247
	.loc 1 696 0
	cmpl	$2, -8(%ebp)
	jg	.L247
	.loc 1 697 0
	movl	$3, -8(%ebp)
	.loc 1 698 0
	jmp	.L247
.L248:
	.loc 1 701 0
	cmpl	$0, -8(%ebp)
	jg	.L247
	.loc 1 702 0
	movl	$1, -8(%ebp)
.L247:
	.loc 1 707 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 708 0
	cmpl	$231, 8(%ebp)
	je	.L253
	movl	16(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L255
.L253:
	movl	$1, -24(%ebp)
	jmp	.L256
.L255:
	movl	$0, -24(%ebp)
.L256:
	movzbl	-24(%ebp), %eax
	andl	$1, %eax
	movl	-12(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	11(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 11(%edx)
	.loc 1 709 0
	movl	16(%ebp), %eax
	movzbl	11(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	-12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	11(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 710 0
	movl	-12(%ebp), %eax
	.loc 1 711 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	build_conv, .-build_conv
	.type	non_reference, @function
non_reference:
.LFB25:
	.loc 1 719 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	.loc 1 720 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L259
	.loc 1 721 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L259:
	.loc 1 722 0
	movl	8(%ebp), %eax
	.loc 1 723 0
	popl	%ebp
	ret
.LFE25:
	.size	non_reference, .-non_reference
.globl strip_top_quals
	.type	strip_top_quals, @function
strip_top_quals:
.LFB26:
	.loc 1 728 0
	pushl	%ebp
.LCFI43:
	movl	%esp, %ebp
.LCFI44:
	subl	$4, %esp
.LCFI45:
	.loc 1 729 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L263
	.loc 1 730 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L265
.L263:
	.loc 1 731 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -4(%ebp)
.L265:
	movl	-4(%ebp), %eax
	.loc 1 732 0
	leave
	ret
.LFE26:
	.size	strip_top_quals, .-strip_top_quals
	.type	standard_conversion, @function
standard_conversion:
.LFB27:
	.loc 1 741 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%esi
.LCFI48:
	pushl	%ebx
.LCFI49:
	subl	$96, %esp
.LCFI50:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 744 0
	movl	$0, -48(%ebp)
	.loc 1 746 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L268
	.loc 1 747 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L268:
	.loc 1 748 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L270
	.loc 1 750 0
	movl	$1, -48(%ebp)
	.loc 1 751 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
.L270:
	.loc 1 753 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strip_top_quals@PLT
	movl	%eax, 8(%ebp)
	.loc 1 754 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strip_top_quals@PLT
	movl	%eax, 12(%ebp)
	.loc 1 756 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L272
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L274
.L272:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L275
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L275
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L275
.L274:
	cmpl	$0, 16(%ebp)
	je	.L275
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	type_unknown_p@PLT
	testl	%eax, %eax
	je	.L275
	.loc 1 759 0
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_type@PLT
	movl	%eax, 16(%ebp)
	.loc 1 760 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L280
	.loc 1 761 0
	movl	$0, -76(%ebp)
	jmp	.L282
.L280:
	.loc 1 762 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
.L275:
	.loc 1 765 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	.loc 1 766 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	.loc 1 768 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$223, (%esp)
	call	build1@PLT
	movl	%eax, -52(%ebp)
	.loc 1 770 0
	cmpl	$24, -60(%ebp)
	jne	.L283
	.loc 1 772 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, 12(%ebp)
	.loc 1 773 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	.loc 1 774 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$224, (%esp)
	call	build_conv
	movl	%eax, -52(%ebp)
	jmp	.L285
.L283:
	.loc 1 776 0
	cmpl	$19, -60(%ebp)
	jne	.L286
	.loc 1 778 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, 12(%ebp)
	.loc 1 779 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	.loc 1 780 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$224, (%esp)
	call	build_conv
	movl	%eax, -52(%ebp)
	jmp	.L285
.L286:
	.loc 1 782 0
	cmpl	$0, -48(%ebp)
	jne	.L288
	cmpl	$0, 16(%ebp)
	je	.L285
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	lvalue_p@PLT
	testl	%eax, %eax
	je	.L285
.L288:
	.loc 1 783 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$233, (%esp)
	call	build_conv
	movl	%eax, -52(%ebp)
.L285:
	.loc 1 786 0
	cmpl	$9, -56(%ebp)
	jne	.L291
	cmpl	$9, -60(%ebp)
	jne	.L291
.LBB7:
	.loc 1 792 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	standard_conversion
	movl	%eax, -44(%ebp)
	.loc 1 794 0
	cmpl	$0, -44(%ebp)
	je	.L294
	.loc 1 796 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_conv
	movl	%eax, -52(%ebp)
	.loc 1 797 0
	movl	-44(%ebp), %eax
	movl	16(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%edx, 16(%eax)
	jmp	.L296
.L294:
	.loc 1 800 0
	movl	$0, -52(%ebp)
.L296:
	.loc 1 802 0
	movl	-52(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L282
.L291:
.LBE7:
	.loc 1 805 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L297
	.loc 1 806 0
	movl	-52(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L282
.L297:
	.loc 1 808 0
	cmpl	$14, -56(%ebp)
	je	.L299
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L301
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L301
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L301
.L299:
	cmpl	$0, 16(%ebp)
	je	.L301
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	null_ptr_cst_p@PLT
	testl	%eax, %eax
	je	.L301
	.loc 1 811 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$226, (%esp)
	call	build_conv
	movl	%eax, -52(%ebp)
	.loc 1 808 0
	jmp	.L306
.L301:
	.loc 1 813 0
	cmpl	$7, -56(%ebp)
	jne	.L307
	cmpl	$14, -60(%ebp)
	je	.L309
.L307:
	cmpl	$14, -56(%ebp)
	jne	.L310
	cmpl	$7, -60(%ebp)
	jne	.L310
.L309:
	.loc 1 818 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$226, (%esp)
	call	build_conv
	movl	%eax, -52(%ebp)
	.loc 1 819 0
	movl	-52(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$8, %eax
	movb	%al, 11(%edx)
	.loc 1 813 0
	jmp	.L306
.L310:
	.loc 1 821 0
	cmpl	$11, -56(%ebp)
	jne	.L312
	cmpl	$7, -60(%ebp)
	jne	.L312
	movl	8(%ebp), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	12(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	jne	.L312
	.loc 1 826 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$226, (%esp)
	call	build_conv
	movl	%eax, -52(%ebp)
	.loc 1 827 0
	movl	-52(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$8, %eax
	movb	%al, 11(%edx)
	.loc 1 821 0
	jmp	.L306
.L312:
	.loc 1 829 0
	cmpl	$14, -56(%ebp)
	jne	.L316
	cmpl	$14, -60(%ebp)
	jne	.L316
.LBB8:
	.loc 1 831 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	.loc 1 832 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	.loc 1 834 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L319
	.loc 1 837 0
	cmpl	$6, -36(%ebp)
	jne	.L321
	cmpl	$15, -40(%ebp)
	je	.L321
	cmpl	$24, -40(%ebp)
	je	.L321
	.loc 1 840 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	$3, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, 12(%ebp)
	.loc 1 843 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$227, (%esp)
	call	build_conv
	movl	%eax, -52(%ebp)
	.loc 1 837 0
	jmp	.L319
.L321:
	.loc 1 845 0
	cmpl	$15, -40(%ebp)
	jne	.L325
	cmpl	$15, -36(%ebp)
	jne	.L325
.LBB9:
	.loc 1 847 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 848 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 850 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	je	.L319
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L319
	.loc 1 855 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_ptrmem_type@PLT
	movl	%eax, 12(%ebp)
	.loc 1 856 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$228, (%esp)
	call	build_conv
	movl	%eax, -52(%ebp)
	.loc 1 845 0
	jmp	.L319
.L325:
.LBE9:
	.loc 1 859 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L331
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L331
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L331
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L331
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L319
.L331:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L336
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L336
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L336
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L336
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L319
.L336:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	je	.L319
	.loc 1 874 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$3, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, 12(%ebp)
	.loc 1 877 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, 12(%ebp)
	.loc 1 878 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$227, (%esp)
	call	build_conv
	movl	%eax, -52(%ebp)
.L319:
	.loc 1 881 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L342
	.loc 1 883 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comp_ptr_ttypes@PLT
	testl	%eax, %eax
	je	.L344
	.loc 1 884 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$225, (%esp)
	call	build_conv
	movl	%eax, -52(%ebp)
	jmp	.L342
.L344:
	.loc 1 885 0
	cmpl	$0, 16(%ebp)
	je	.L346
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	string_conv_p@PLT
	testl	%eax, %eax
	je	.L346
	.loc 1 887 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$225, (%esp)
	call	build_conv
	movl	%eax, -52(%ebp)
	.loc 1 885 0
	jmp	.L342
.L346:
	.loc 1 888 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	ptr_reasonably_similar@PLT
	testl	%eax, %eax
	je	.L349
	.loc 1 890 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$227, (%esp)
	call	build_conv
	movl	%eax, -52(%ebp)
	.loc 1 891 0
	movl	-52(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$8, %eax
	movb	%al, 11(%edx)
	jmp	.L342
.L349:
	.loc 1 894 0
	movl	$0, -76(%ebp)
	jmp	.L282
.L342:
	.loc 1 896 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 829 0
	jmp	.L306
.L316:
.LBE8:
	.loc 1 898 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L351
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L351
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L351
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L351
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L351
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L351
.LBB10:
	.loc 1 900 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 901 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 902 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 903 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 905 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	je	.L358
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L358
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	compparms@PLT
	testl	%eax, %eax
	je	.L358
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %esi
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	cmpl	%eax, %esi
	je	.L362
.L358:
	.loc 1 910 0
	movl	$0, -76(%ebp)
	jmp	.L282
.L362:
	.loc 1 912 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	$3, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, 12(%ebp)
	.loc 1 913 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cplus_method_type@PLT
	movl	%eax, 12(%ebp)
	.loc 1 915 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, (%esp)
	call	build_ptrmemfunc_type@PLT
	movl	%eax, 12(%ebp)
	.loc 1 916 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$228, (%esp)
	call	build_conv
	movl	%eax, -52(%ebp)
	.loc 1 898 0
	jmp	.L306
.L351:
.LBE10:
	.loc 1 918 0
	cmpl	$12, -56(%ebp)
	jne	.L363
	.loc 1 920 0
	cmpl	$7, -60(%ebp)
	je	.L365
	cmpl	$11, -60(%ebp)
	je	.L365
	cmpl	$12, -60(%ebp)
	je	.L365
	cmpl	$8, -60(%ebp)
	je	.L365
	cmpl	$14, -60(%ebp)
	je	.L365
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L371
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L371
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L365
.L371:
	.loc 1 922 0
	movl	$0, -76(%ebp)
	jmp	.L282
.L365:
	.loc 1 924 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$226, (%esp)
	call	build_conv
	movl	%eax, -52(%ebp)
	.loc 1 925 0
	cmpl	$14, -60(%ebp)
	je	.L374
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L306
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L306
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L306
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	$3, %eax
	jg	.L306
.L374:
	.loc 1 927 0
	movl	-52(%ebp), %eax
	movl	$4, 16(%eax)
	jmp	.L306
.L363:
	.loc 1 931 0
	cmpl	$7, -56(%ebp)
	je	.L380
	cmpl	$12, -56(%ebp)
	je	.L380
	cmpl	$8, -56(%ebp)
	jne	.L383
.L380:
	.loc 1 934 0
	cmpl	$7, -60(%ebp)
	je	.L384
	cmpl	$11, -60(%ebp)
	je	.L384
	cmpl	$12, -60(%ebp)
	je	.L384
	cmpl	$8, -60(%ebp)
	je	.L384
	.loc 1 935 0
	movl	$0, -76(%ebp)
	jmp	.L282
.L384:
	.loc 1 936 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$226, (%esp)
	call	build_conv
	movl	%eax, -52(%ebp)
	.loc 1 939 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	type_promotes_to@PLT
	cmpl	8(%ebp), %eax
	jne	.L306
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	16(%eax), %eax
	cmpl	$2, %eax
	jg	.L306
	.loc 1 941 0
	movl	-52(%ebp), %eax
	movl	$2, 16(%eax)
	.loc 1 931 0
	jmp	.L306
.L383:
	.loc 1 943 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L392
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L392
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L392
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L392
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L397
.L392:
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L398
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L398
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L398
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L398
	movl	12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L397
.L398:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	is_properly_derived_from@PLT
	testl	%eax, %eax
	je	.L397
	.loc 1 946 0
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-23, %al
	jne	.L404
	.loc 1 947 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
.L404:
	.loc 1 948 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$229, (%esp)
	call	build_conv
	movl	%eax, -52(%ebp)
	.loc 1 953 0
	movl	-52(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$16, %eax
	movb	%al, 11(%edx)
	.loc 1 943 0
	jmp	.L306
.L397:
	.loc 1 956 0
	movl	$0, -76(%ebp)
	jmp	.L282
.L306:
	.loc 1 958 0
	movl	-52(%ebp), %eax
	movl	%eax, -76(%ebp)
.L282:
	movl	-76(%ebp), %eax
	.loc 1 959 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE27:
	.size	standard_conversion, .-standard_conversion
	.type	reference_related_p, @function
reference_related_p:
.LFB28:
	.loc 1 967 0
	pushl	%ebp
.LCFI51:
	movl	%esp, %ebp
.LCFI52:
	pushl	%ebx
.LCFI53:
	subl	$20, %esp
.LCFI54:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 968 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 969 0
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 976 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L408
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L410
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L412
.L410:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L413
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L413
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L413
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L413
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L412
.L413:
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L418
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L412
.L418:
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L420
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L420
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L420
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L420
	movl	12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L412
.L420:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	je	.L412
.L408:
	movl	$1, -8(%ebp)
	jmp	.L425
.L412:
	movl	$0, -8(%ebp)
.L425:
	movl	-8(%ebp), %eax
	.loc 1 979 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	reference_related_p, .-reference_related_p
	.type	reference_compatible_p, @function
reference_compatible_p:
.LFB29:
	.loc 1 987 0
	pushl	%ebp
.LCFI55:
	movl	%esp, %ebp
.LCFI56:
	pushl	%ebx
.LCFI57:
	subl	$20, %esp
.LCFI58:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 993 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reference_related_p
	testl	%eax, %eax
	je	.L428
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	at_least_as_qualified_p@PLT
	testl	%eax, %eax
	je	.L428
	movl	$1, -8(%ebp)
	jmp	.L431
.L428:
	movl	$0, -8(%ebp)
.L431:
	movl	-8(%ebp), %eax
	.loc 1 995 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	reference_compatible_p, .-reference_compatible_p
	.type	convert_class_to_reference, @function
convert_class_to_reference:
.LFB30:
	.loc 1 1005 0
	pushl	%ebp
.LCFI59:
	movl	%esp, %ebp
.LCFI60:
	pushl	%ebx
.LCFI61:
	subl	$100, %esp
.LCFI62:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1013 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_conversions@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1014 0
	cmpl	$0, -36(%ebp)
	jne	.L434
	.loc 1 1015 0
	movl	$0, -64(%ebp)
	jmp	.L436
.L434:
	.loc 1 1032 0
	movl	$0, -40(%ebp)
	.loc 1 1039 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1040 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1041 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1043 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_reference_type@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1045 0
	jmp	.L437
.L438:
.LBB11:
	.loc 1 1047 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1049 0
	jmp	.L439
.L440:
.LBB12:
	.loc 1 1051 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L441
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L443
.L441:
	movl	-16(%ebp), %eax
	movl	%eax, -60(%ebp)
.L443:
	movl	-60(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1052 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1054 0
	movl	$0, -20(%ebp)
	.loc 1 1058 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L444
	.loc 1 1060 0
	movl	-36(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	$1, 36(%esp)
	movl	$3, 32(%esp)
	movl	%edx, 28(%esp)
	movl	%eax, 24(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	add_template_candidate
	movl	%eax, -20(%ebp)
	.loc 1 1070 0
	cmpl	$0, -20(%ebp)
	je	.L450
	.loc 1 1076 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1077 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1078 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L448
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reference_compatible_p
	testl	%eax, %eax
	jne	.L450
.L448:
	.loc 1 1081 0
	movl	-40(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1082 0
	movl	$0, -20(%ebp)
	jmp	.L450
.L444:
	.loc 1 1086 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L450
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reference_compatible_p
	testl	%eax, %eax
	je	.L450
	.loc 1 1088 0
	movl	-36(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	$3, 24(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	add_function_candidate
	movl	%eax, -20(%ebp)
.L450:
	.loc 1 1093 0
	cmpl	$0, -20(%ebp)
	je	.L453
	.loc 1 1097 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$223, (%esp)
	call	build1@PLT
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	direct_reference_binding
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 8(%eax)
.L453:
.LBE12:
	.loc 1 1049 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L455
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L457
.L455:
	movl	$0, -56(%ebp)
.L457:
	movl	-56(%ebp), %eax
	movl	%eax, -16(%ebp)
.L439:
	cmpl	$0, -16(%ebp)
	jne	.L440
	.loc 1 1104 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L437:
.LBE11:
	.loc 1 1045 0
	cmpl	$0, -36(%ebp)
	jne	.L438
	.loc 1 1109 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	any_viable
	testl	%eax, %eax
	jne	.L460
	.loc 1 1110 0
	movl	$0, -64(%ebp)
	jmp	.L436
.L460:
	.loc 1 1112 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	splice_viable
	movl	%eax, -40(%ebp)
	.loc 1 1113 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	tourney
	movl	%eax, -20(%ebp)
	.loc 1 1114 0
	cmpl	$0, -20(%ebp)
	jne	.L462
	.loc 1 1115 0
	movl	$0, -64(%ebp)
	jmp	.L436
.L462:
	.loc 1 1119 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$223, (%esp)
	call	build1@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$231, (%esp)
	call	build_conv
	movl	%eax, -28(%ebp)
	.loc 1 1122 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_zc_wrapper@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1126 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_conversion_sequences
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 1128 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$-1, %eax
	jne	.L464
	.loc 1 1129 0
	movl	-28(%ebp), %eax
	movzbl	11(%eax), %edx
	orl	$8, %edx
	movb	%dl, 11(%eax)
.L464:
	.loc 1 1131 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -64(%ebp)
.L436:
	movl	-64(%ebp), %eax
	.loc 1 1132 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	convert_class_to_reference, .-convert_class_to_reference
	.section	.rodata
	.type	__FUNCTION__.17363, @object
	.size	__FUNCTION__.17363, 25
__FUNCTION__.17363:
	.string	"direct_reference_binding"
	.text
	.type	direct_reference_binding, @function
direct_reference_binding:
.LFB31:
	.loc 1 1142 0
	pushl	%ebp
.LCFI63:
	movl	%esp, %ebp
.LCFI64:
	pushl	%ebx
.LCFI65:
	subl	$36, %esp
.LCFI66:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1145 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L468
	leal	__FUNCTION__.17363@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1145, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L468:
	.loc 1 1146 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L470
	leal	__FUNCTION__.17363@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1147, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L470:
	.loc 1 1149 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1167 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	-8(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L472
	.loc 1 1170 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$229, (%esp)
	call	build_conv
	movl	%eax, 12(%ebp)
	.loc 1 1174 0
	movl	12(%ebp), %edx
	movzbl	11(%edx), %eax
	andl	$-17, %eax
	movb	%al, 11(%edx)
.L472:
	.loc 1 1176 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$230, (%esp)
	call	build_conv
	.loc 1 1177 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	direct_reference_binding, .-direct_reference_binding
	.type	reference_binding, @function
reference_binding:
.LFB32:
	.loc 1 1187 0
	pushl	%ebp
.LCFI67:
	movl	%esp, %ebp
.LCFI68:
	pushl	%ebx
.LCFI69:
	subl	$52, %esp
.LCFI70:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1188 0
	movl	$0, -28(%ebp)
	.loc 1 1189 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1190 0
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1193 0
	movl	$0, -8(%ebp)
	.loc 1 1195 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L476
	cmpl	$0, 16(%ebp)
	je	.L476
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	type_unknown_p@PLT
	testl	%eax, %eax
	je	.L476
	.loc 1 1197 0
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_type@PLT
	movl	%eax, 16(%ebp)
	.loc 1 1198 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L480
	.loc 1 1199 0
	movl	$0, -40(%ebp)
	jmp	.L482
.L480:
	.loc 1 1200 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L476:
	.loc 1 1203 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L483
	.loc 1 1206 0
	movl	$1, -8(%ebp)
	.loc 1 1207 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L485
.L483:
	.loc 1 1209 0
	cmpl	$0, 16(%ebp)
	je	.L485
	.loc 1 1210 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	real_lvalue_p@PLT
	movl	%eax, -8(%ebp)
.L485:
	.loc 1 1215 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	reference_related_p
	movl	%eax, -16(%ebp)
	.loc 1 1216 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	reference_compatible_p
	movl	%eax, -12(%ebp)
	.loc 1 1218 0
	cmpl	$0, -8(%ebp)
	je	.L487
	cmpl	$0, -12(%ebp)
	je	.L487
	.loc 1 1229 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$223, (%esp)
	call	build1@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1230 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	direct_reference_binding
	movl	%eax, -28(%ebp)
	.loc 1 1231 0
	movl	-8(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L490
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	andl	$3, %eax
	cmpl	$1, %eax
	jne	.L490
	.loc 1 1244 0
	movl	-28(%ebp), %eax
	movzbl	11(%eax), %edx
	orl	$16, %edx
	movb	%dl, 11(%eax)
.L490:
	.loc 1 1245 0
	movl	-28(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L482
.L487:
	.loc 1 1247 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L493
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L495
.L493:
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L496
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L496
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L496
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L496
	movl	-20(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L495
.L496:
	movl	20(%ebp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L495
	.loc 1 1262 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_class_to_reference
	movl	%eax, -28(%ebp)
	.loc 1 1263 0
	cmpl	$0, -28(%ebp)
	je	.L495
	.loc 1 1264 0
	movl	-28(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L482
.L495:
	.loc 1 1269 0
	movl	20(%ebp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L503
	.loc 1 1270 0
	movl	$0, -40(%ebp)
	jmp	.L482
.L503:
	.loc 1 1286 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	andl	$3, %eax
	cmpl	$1, %eax
	je	.L505
	.loc 1 1287 0
	movl	$0, -40(%ebp)
	jmp	.L482
.L505:
	.loc 1 1305 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L507
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L509
.L507:
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L510
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L510
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L510
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L510
	movl	-20(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L509
.L510:
	cmpl	$0, -12(%ebp)
	je	.L509
	.loc 1 1307 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$223, (%esp)
	call	build1@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1308 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	direct_reference_binding
	movl	%eax, -40(%ebp)
	jmp	.L482
.L509:
	.loc 1 1318 0
	cmpl	$0, -16(%ebp)
	je	.L516
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	at_least_as_qualified_p@PLT
	testl	%eax, %eax
	jne	.L516
	.loc 1 1319 0
	movl	$0, -40(%ebp)
	jmp	.L482
.L516:
	.loc 1 1321 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	implicit_conversion
	movl	%eax, -28(%ebp)
	.loc 1 1322 0
	cmpl	$0, -28(%ebp)
	jne	.L519
	.loc 1 1323 0
	movl	$0, -40(%ebp)
	jmp	.L482
.L519:
	.loc 1 1325 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$230, (%esp)
	call	build_conv
	movl	%eax, -28(%ebp)
	.loc 1 1328 0
	movl	-28(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$16, %eax
	movb	%al, 11(%edx)
	.loc 1 1330 0
	movl	-28(%ebp), %eax
	movl	%eax, -40(%ebp)
.L482:
	movl	-40(%ebp), %eax
	.loc 1 1331 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	reference_binding, .-reference_binding
	.type	implicit_conversion, @function
implicit_conversion:
.LFB33:
	.loc 1 1342 0
	pushl	%ebp
.LCFI71:
	movl	%esp, %ebp
.LCFI72:
	pushl	%ebx
.LCFI73:
	subl	$36, %esp
.LCFI74:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1347 0
	cmpl	$0, 16(%ebp)
	je	.L523
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L523
	.loc 1 1349 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 16(%ebp)
	.loc 1 1350 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
.L523:
	.loc 1 1353 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L526
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L526
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L529
.L526:
	.loc 1 1355 0
	movl	$0, -24(%ebp)
	jmp	.L530
.L529:
	.loc 1 1357 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L531
	.loc 1 1358 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reference_binding
	movl	%eax, -12(%ebp)
	jmp	.L533
.L531:
	.loc 1 1360 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	standard_conversion
	movl	%eax, -12(%ebp)
.L533:
	.loc 1 1362 0
	cmpl	$0, -12(%ebp)
	jne	.L534
	.loc 1 1364 0
	cmpl	$0, 16(%ebp)
	je	.L534
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L537
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L537
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L537
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L537
	movl	12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L537
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L537
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L537
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L537
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L537
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L534
.L537:
	movl	20(%ebp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L534
.LBB13:
	.loc 1 1371 0
	movl	$128, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_user_type_conversion_1
	movl	%eax, -8(%ebp)
	.loc 1 1373 0
	cmpl	$0, -8(%ebp)
	je	.L534
	.loc 1 1374 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
.L534:
.LBE13:
	.loc 1 1381 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L530:
	movl	-24(%ebp), %eax
	.loc 1 1382 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	implicit_conversion, .-implicit_conversion
	.type	add_candidate, @function
add_candidate:
.LFB34:
	.loc 1 1391 0
	pushl	%ebp
.LCFI75:
	movl	%esp, %ebp
.LCFI76:
	pushl	%ebx
.LCFI77:
	subl	$20, %esp
.LCFI78:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1393 0
	movl	$36, (%esp)
	call	ggc_alloc_cleared@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1395 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1396 0
	movl	-8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1397 0
	movl	-8(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 1398 0
	movl	-8(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 1399 0
	movl	-8(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 1400 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 1401 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1403 0
	movl	-8(%ebp), %eax
	.loc 1 1404 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	add_candidate, .-add_candidate
	.type	add_function_candidate, @function
add_function_candidate:
.LFB35:
	.loc 1 1418 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	pushl	%ebx
.LCFI81:
	subl	$100, %esp
.LCFI82:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1419 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1423 0
	movl	$1, -28(%ebp)
	.loc 1 1427 0
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L553
	.loc 1 1428 0
	movl	$0, -68(%ebp)
	jmp	.L555
.L553:
	.loc 1 1432 0
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L556
	.loc 1 1434 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_artificial_parms_for@PLT
	movl	%eax, -52(%ebp)
	.loc 1 1435 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_artificial_parms_for@PLT
	movl	%eax, 20(%ebp)
.L556:
	.loc 1 1438 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1439 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1448 0
	movl	-52(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1449 0
	movl	$0, -48(%ebp)
	jmp	.L558
.L559:
	.loc 1 1451 0
	cmpl	$0, -36(%ebp)
	je	.L560
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L560
	.loc 1 1453 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1449 0
	addl	$1, -48(%ebp)
.L558:
	movl	-48(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jl	.L559
.L560:
	.loc 1 1456 0
	movl	-48(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jge	.L563
	cmpl	$0, -36(%ebp)
	je	.L563
	.loc 1 1457 0
	movl	$0, -28(%ebp)
	.loc 1 1456 0
	jmp	.L566
.L563:
	.loc 1 1460 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	sufficient_parms_p@PLT
	testl	%eax, %eax
	jne	.L566
	.loc 1 1461 0
	movl	$0, -28(%ebp)
.L566:
	.loc 1 1463 0
	cmpl	$0, -28(%ebp)
	je	.L568
	.loc 1 1470 0
	movl	-52(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1471 0
	movl	20(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1473 0
	movl	$0, -48(%ebp)
	jmp	.L570
.L571:
.LBB14:
	.loc 1 1475 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1476 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	lvalue_type@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1480 0
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L568
	.loc 1 1483 0
	cmpl	$0, -48(%ebp)
	jne	.L573
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L573
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L573
	movl	$1, -64(%ebp)
	jmp	.L577
.L573:
	movl	$0, -64(%ebp)
.L577:
	movl	-64(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1486 0
	cmpl	$0, -36(%ebp)
	je	.L578
.LBB15:
	.loc 1 1488 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1499 0
	cmpl	$0, 16(%ebp)
	je	.L580
	cmpl	$0, -12(%ebp)
	je	.L580
	.loc 1 1501 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -60(%ebp)
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L583
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L583
	movl	$1, -56(%ebp)
	jmp	.L586
.L583:
	movl	$0, -56(%ebp)
.L586:
	movl	-56(%ebp), %eax
	sall	$3, %eax
	orl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1504 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -8(%ebp)
.L580:
	.loc 1 1507 0
	movl	32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	implicit_conversion
	movl	%eax, -16(%ebp)
	jmp	.L587
.L578:
.LBE15:
	.loc 1 1511 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$223, (%esp)
	call	build1@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1512 0
	movl	-16(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$2, %eax
	movb	%al, 11(%edx)
.L587:
	.loc 1 1515 0
	cmpl	$0, -16(%ebp)
	je	.L588
	cmpl	$0, -12(%ebp)
	je	.L588
	.loc 1 1516 0
	movl	-16(%ebp), %eax
	movzbl	11(%eax), %edx
	orl	$4, %edx
	movb	%dl, 11(%eax)
.L588:
	.loc 1 1518 0
	movl	-48(%ebp), %ecx
	movl	-40(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 20(%edx,%ecx,4)
	.loc 1 1519 0
	cmpl	$0, -16(%ebp)
	jne	.L591
	.loc 1 1521 0
	movl	$0, -28(%ebp)
	.loc 1 1522 0
	jmp	.L568
.L591:
	.loc 1 1525 0
	movl	-16(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L593
	.loc 1 1526 0
	movl	$-1, -28(%ebp)
.L593:
	.loc 1 1528 0
	cmpl	$0, -36(%ebp)
	je	.L595
	.loc 1 1529 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L595:
	.loc 1 1530 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.LBE14:
	.loc 1 1473 0
	addl	$1, -48(%ebp)
.L570:
	movl	-48(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jl	.L571
.L568:
	.loc 1 1534 0
	movl	-28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_candidate
	movl	%eax, -68(%ebp)
.L555:
	movl	-68(%ebp), %eax
	.loc 1 1536 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	add_function_candidate, .-add_function_candidate
	.type	add_conv_candidate, @function
add_conv_candidate:
.LFB36:
	.loc 1 1556 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	pushl	%ebx
.LCFI85:
	subl	$84, %esp
.LCFI86:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1557 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1561 0
	movl	-52(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L599
.L600:
	.loc 1 1562 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L599:
	.loc 1 1561 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L600
	.loc 1 1563 0
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1565 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	addl	$1, %eax
	movl	%eax, -44(%ebp)
	.loc 1 1566 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1567 0
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1568 0
	movl	20(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1569 0
	movl	$1, -40(%ebp)
	.loc 1 1570 0
	movl	$3, -36(%ebp)
	.loc 1 1573 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L602
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	cmpl	-52(%ebp), %eax
	jne	.L602
	.loc 1 1574 0
	movl	$0, -60(%ebp)
	jmp	.L605
.L602:
	.loc 1 1576 0
	movl	$0, -48(%ebp)
	jmp	.L606
.L607:
.LBB16:
	.loc 1 1578 0
	cmpl	$0, -48(%ebp)
	je	.L608
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L610
.L608:
	movl	16(%ebp), %eax
	movl	%eax, -56(%ebp)
.L610:
	movl	-56(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1579 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	lvalue_type@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1582 0
	cmpl	$0, -48(%ebp)
	jne	.L611
	.loc 1 1583 0
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	implicit_conversion
	movl	%eax, -8(%ebp)
	jmp	.L613
.L611:
	.loc 1 1584 0
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L614
	.loc 1 1586 0
	cmpl	$0, -24(%ebp)
	je	.L616
	.loc 1 1587 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	implicit_conversion
	movl	%eax, -8(%ebp)
	jmp	.L613
.L616:
	.loc 1 1590 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$223, (%esp)
	call	build1@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1591 0
	movl	-8(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$2, %eax
	movb	%al, 11(%edx)
.L613:
	.loc 1 1594 0
	movl	-48(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 20(%edx,%ecx,4)
	.loc 1 1595 0
	cmpl	$0, -8(%ebp)
	je	.L614
	.loc 1 1598 0
	movl	-8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L619
	.loc 1 1599 0
	movl	$-1, -40(%ebp)
.L619:
	.loc 1 1601 0
	cmpl	$0, -48(%ebp)
	je	.L621
	.loc 1 1604 0
	cmpl	$0, -24(%ebp)
	je	.L623
	.loc 1 1605 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L623:
	.loc 1 1606 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L621:
.LBE16:
	.loc 1 1576 0
	addl	$1, -48(%ebp)
.L606:
	movl	-48(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jl	.L607
.L614:
	.loc 1 1609 0
	movl	-48(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jge	.L625
	.loc 1 1610 0
	movl	$0, -40(%ebp)
.L625:
	.loc 1 1612 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	sufficient_parms_p@PLT
	testl	%eax, %eax
	jne	.L627
	.loc 1 1613 0
	movl	$0, -40(%ebp)
.L627:
	.loc 1 1615 0
	movl	-40(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_candidate
	movl	%eax, -60(%ebp)
.L605:
	movl	-60(%ebp), %eax
	.loc 1 1617 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	add_conv_candidate, .-add_conv_candidate
	.type	build_builtin_candidate, @function
build_builtin_candidate:
.LFB37:
	.loc 1 1626 0
	pushl	%ebp
.LCFI87:
	movl	%esp, %ebp
.LCFI88:
	pushl	%esi
.LCFI89:
	pushl	%ebx
.LCFI90:
	subl	$64, %esp
.LCFI91:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1628 0
	movl	$1, -16(%ebp)
	.loc 1 1631 0
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1632 0
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1634 0
	movl	24(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L631
	movl	24(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L633
	movl	$2, -44(%ebp)
	jmp	.L635
.L633:
	movl	$1, -44(%ebp)
.L635:
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L636
.L631:
	movl	$3, -48(%ebp)
.L636:
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1636 0
	movl	$0, -12(%ebp)
	jmp	.L637
.L638:
	.loc 1 1638 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L639
	.loc 1 1641 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %ecx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	addl	28(%ebp), %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %eax
	movl	-32(%ebp,%eax,4), %edx
	movl	32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	implicit_conversion
	movl	%eax, -24(%ebp)
	.loc 1 1642 0
	cmpl	$0, -24(%ebp)
	jne	.L641
	.loc 1 1644 0
	movl	$0, -16(%ebp)
	.loc 1 1646 0
	movl	-12(%ebp), %eax
	movl	-32(%ebp,%eax,4), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$223, (%esp)
	call	build1@PLT
	movl	%eax, -24(%ebp)
	jmp	.L643
.L641:
	.loc 1 1648 0
	movl	-24(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L643
	.loc 1 1649 0
	movl	$0, -16(%ebp)
.L643:
	.loc 1 1650 0
	movl	-12(%ebp), %ecx
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 20(%edx,%ecx,4)
	.loc 1 1636 0
	addl	$1, -12(%ebp)
.L637:
	cmpl	$1, -12(%ebp)
	jle	.L638
.L639:
	.loc 1 1654 0
	movl	24(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L645
	.loc 1 1656 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 1657 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1658 0
	movl	24(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %ecx
	movl	28(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %edx
	movl	32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	implicit_conversion
	movl	%eax, -24(%ebp)
	.loc 1 1659 0
	cmpl	$0, -24(%ebp)
	je	.L647
	.loc 1 1660 0
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 20(%edx)
	jmp	.L645
.L647:
	.loc 1 1662 0
	movl	$0, -16(%ebp)
.L645:
	.loc 1 1665 0
	movl	-16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_candidate
	.loc 1 1669 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE37:
	.size	build_builtin_candidate, .-build_builtin_candidate
	.type	is_complete, @function
is_complete:
.LFB38:
	.loc 1 1674 0
	pushl	%ebp
.LCFI92:
	movl	%esp, %ebp
.LCFI93:
	pushl	%ebx
.LCFI94:
	subl	$4, %esp
.LCFI95:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1675 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
	movl	20(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	.loc 1 1676 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	is_complete, .-is_complete
	.type	promoted_arithmetic_type_p, @function
promoted_arithmetic_type_p:
.LFB39:
	.loc 1 1683 0
	pushl	%ebp
.LCFI96:
	movl	%esp, %ebp
.LCFI97:
	pushl	%ebx
.LCFI98:
	subl	$20, %esp
.LCFI99:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1691 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L653
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L653
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L653
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L657
.L653:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	type_promotes_to@PLT
	movl	%eax, %edx
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L658
.L657:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L659
.L658:
	movl	$1, -8(%ebp)
	jmp	.L660
.L659:
	movl	$0, -8(%ebp)
.L660:
	movl	-8(%ebp), %eax
	.loc 1 1694 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	promoted_arithmetic_type_p, .-promoted_arithmetic_type_p
	.section	.rodata
	.type	__FUNCTION__.17919, @object
	.size	__FUNCTION__.17919, 22
__FUNCTION__.17919:
	.string	"add_builtin_candidate"
	.text
	.type	add_builtin_candidate, @function
add_builtin_candidate:
.LFB40:
	.loc 1 1713 0
	pushl	%ebp
.LCFI100:
	movl	%esp, %ebp
.LCFI101:
	pushl	%ebx
.LCFI102:
	subl	$68, %esp
.LCFI103:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1714 0
	movl	12(%ebp), %eax
	subl	$133, %eax
	cmpl	$1, %eax
	ja	.L663
	.loc 1 1718 0
	movl	32(%ebp), %edx
	addl	$4, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 1719 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, 28(%ebp)
.L663:
	.loc 1 1725 0
	movl	12(%ebp), %eax
	subl	$42, %eax
	movl	%eax, -40(%ebp)
	cmpl	$144, -40(%ebp)
	ja	.L665
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	.L682@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L682:
	.long	.L666@GOTOFF
	.long	.L665@GOTOFF
	.long	.L667@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L668@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L669@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L670@GOTOFF
	.long	.L671@GOTOFF
	.long	.L672@GOTOFF
	.long	.L672@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L673@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L674@GOTOFF
	.long	.L675@GOTOFF
	.long	.L675@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L673@GOTOFF
	.long	.L673@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L673@GOTOFF
	.long	.L673@GOTOFF
	.long	.L673@GOTOFF
	.long	.L665@GOTOFF
	.long	.L676@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L675@GOTOFF
	.long	.L675@GOTOFF
	.long	.L675@GOTOFF
	.long	.L675@GOTOFF
	.long	.L677@GOTOFF
	.long	.L677@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L678@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L679@GOTOFF
	.long	.L680@GOTOFF
	.long	.L679@GOTOFF
	.long	.L680@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L665@GOTOFF
	.long	.L681@GOTOFF
	.text
.L679:
	.loc 1 1748 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L918
.L680:
	.loc 1 1752 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L684
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L684
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L684
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L918
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L918
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L918
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L918
.L684:
	.loc 1 1754 0
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_reference_type@PLT
	movl	%eax, 24(%ebp)
	.loc 1 1755 0
	jmp	.L692
.L666:
	.loc 1 1769 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L918
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L695
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L695
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L695
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L692
.L695:
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L692
	.loc 1 1773 0
	jmp	.L918
.L678:
	.loc 1 1784 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L674
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L692
.L674:
	.loc 1 1788 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L692
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L692
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L692
	.loc 1 1790 0
	jmp	.L918
.L676:
	.loc 1 1797 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L692
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L692
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L692
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	je	.L692
	.loc 1 1799 0
	jmp	.L918
.L681:
	.loc 1 1809 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L918
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L709
	movl	28(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L709
	movl	28(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L712
.L709:
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L918
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L918
.L712:
.LBB17:
	.loc 1 1812 0
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1815 0
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L714
	movl	28(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	28(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L714
	movl	28(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L718
.L714:
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -36(%ebp)
.L718:
	movl	-36(%ebp), %edx
	movl	%edx, -8(%ebp)
	.loc 1 1817 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L719
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L719
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L719
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L719
	movl	-12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L918
.L719:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	je	.L918
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L725
	movl	28(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L725
	movl	28(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L692
.L725:
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	is_complete
	testl	%eax, %eax
	jne	.L692
	.loc 1 1822 0
	jmp	.L918
.L671:
.LBE17:
	.loc 1 1867 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L728
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L728
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L728
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L728
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L728
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L728
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L728
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L692
.L728:
	.loc 1 1869 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L672
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L672
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L672
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L672
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L740
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L740
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L740
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L672
.L740:
	.loc 1 1871 0
	movl	global_trees@GOT(%ebx), %eax
	movl	144(%eax), %eax
	movl	%eax, 28(%ebp)
	.loc 1 1872 0
	jmp	.L692
.L672:
	.loc 1 1876 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L744
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L744
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L918
.L744:
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L692
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L692
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L692
	.loc 1 1878 0
	jmp	.L918
.L677:
	.loc 1 1882 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L750
	movl	24(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L750
	movl	24(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L750
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L750
	movl	28(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L750
	movl	28(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L692
.L750:
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L756
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L756
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L756
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L692
.L756:
	.loc 1 1885 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L760
	movl	24(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L760
	movl	24(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L763
.L760:
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L764
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L764
.L763:
	movl	32(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	null_ptr_cst_p@PLT
	testl	%eax, %eax
	je	.L764
	.loc 1 1888 0
	movl	24(%ebp), %eax
	movl	%eax, 28(%ebp)
	.loc 1 1889 0
	jmp	.L692
.L764:
	.loc 1 1891 0
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L767
	movl	28(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L767
	movl	28(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L770
.L767:
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L675
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L675
.L770:
	movl	32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	null_ptr_cst_p@PLT
	testl	%eax, %eax
	je	.L675
	.loc 1 1894 0
	movl	28(%ebp), %eax
	movl	%eax, 24(%ebp)
	.loc 1 1895 0
	jmp	.L692
.L675:
	.loc 1 1904 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L773
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L773
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L776
.L773:
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L692
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L692
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L692
.L776:
	.loc 1 1906 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L779
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L779
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L779
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L692
.L779:
	.loc 1 1908 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L783
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L692
.L783:
	.loc 1 1910 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L785
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L785
	movl	32(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	null_ptr_cst_p@PLT
	testl	%eax, %eax
	je	.L785
	.loc 1 1912 0
	movl	24(%ebp), %eax
	movl	%eax, 28(%ebp)
	.loc 1 1913 0
	jmp	.L692
.L785:
	.loc 1 1915 0
	movl	32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	null_ptr_cst_p@PLT
	testl	%eax, %eax
	je	.L918
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L918
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L918
	.loc 1 1917 0
	movl	28(%ebp), %eax
	movl	%eax, 24(%ebp)
	.loc 1 1918 0
	jmp	.L692
.L670:
	.loc 1 1923 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L793
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L793
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L667
.L793:
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L692
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L692
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L692
.L667:
	.loc 1 1926 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L798
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L798
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L798
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L802
.L798:
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L802
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L802
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L802
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L802
	.loc 1 1928 0
	movl	global_trees@GOT(%ebx), %eax
	movl	144(%eax), %eax
	movl	%eax, 24(%ebp)
	.loc 1 1929 0
	jmp	.L692
.L802:
	.loc 1 1931 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L918
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L918
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L918
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L918
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L812
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L812
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L812
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L918
.L812:
	.loc 1 1933 0
	movl	global_trees@GOT(%ebx), %eax
	movl	144(%eax), %eax
	movl	%eax, 28(%ebp)
	.loc 1 1934 0
	jmp	.L692
.L673:
	.loc 1 1955 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L816
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L816
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L816
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L918
.L816:
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L692
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L692
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L692
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	je	.L692
	.loc 1 1957 0
	jmp	.L918
.L668:
	.loc 1 1996 0
	movl	16(%ebp), %eax
	subl	$60, %eax
	movl	%eax, -44(%ebp)
	cmpl	$57, -44(%ebp)
	ja	.L824
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	.L829@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L829:
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L826@GOTOFF
	.long	.L826@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L827@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L827@GOTOFF
	.long	.L827@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L827@GOTOFF
	.long	.L827@GOTOFF
	.long	.L827@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L824@GOTOFF
	.long	.L828@GOTOFF
	.text
.L825:
	.loc 1 2000 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L826
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L826
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L826
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L826
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L834
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L834
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L834
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L826
.L834:
	.loc 1 2002 0
	movl	global_trees@GOT(%ebx), %eax
	movl	144(%eax), %eax
	movl	%eax, 28(%ebp)
	.loc 1 2003 0
	jmp	.L838
.L826:
	.loc 1 2007 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L839
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L839
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L918
.L839:
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L838
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L838
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L838
	.loc 1 2009 0
	jmp	.L918
.L827:
	.loc 1 2017 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L845
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L845
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L845
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L918
.L845:
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L838
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L838
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L838
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	je	.L838
	.loc 1 2019 0
	jmp	.L918
.L828:
	.loc 1 2022 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L853
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L853
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L856
.L853:
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L838
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L838
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L838
.L856:
	.loc 1 2024 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L859
	movl	24(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L859
	movl	24(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L859
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L859
	movl	28(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L859
	movl	28(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L865
.L859:
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L866
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L866
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L866
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L865
.L866:
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L870
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L870
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L870
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L865
.L870:
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L874
	movl	24(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L874
	movl	24(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L877
.L874:
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L918
.L877:
	movl	32(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	null_ptr_cst_p@PLT
	testl	%eax, %eax
	je	.L918
.L865:
	.loc 1 2031 0
	movl	24(%ebp), %eax
	movl	%eax, 28(%ebp)
	.loc 1 2032 0
	jmp	.L838
.L824:
	.loc 1 2037 0
	leal	__FUNCTION__.17919@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2037, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L838:
	.loc 1 2039 0
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_reference_type@PLT
	movl	%eax, 24(%ebp)
	.loc 1 2040 0
	jmp	.L692
.L669:
	.loc 1 2057 0
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	promoted_arithmetic_type_p
	testl	%eax, %eax
	je	.L879
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	promoted_arithmetic_type_p
	testl	%eax, %eax
	jne	.L692
.L879:
	.loc 1 2063 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L881
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L883
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L881
.L883:
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L918
	movl	24(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L918
	movl	24(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L918
.L881:
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L692
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L890
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L692
.L890:
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L918
	movl	28(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L918
	movl	28(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L692
	.loc 1 2069 0
	jmp	.L918
.L665:
	.loc 1 2078 0
	leal	__FUNCTION__.17919@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2078, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L692:
	.loc 1 2083 0
	cmpl	$0, 28(%ebp)
	je	.L894
	movl	$0, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L894
	movl	24(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	jne	.L894
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L898
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L900
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L902
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L902
	movl	$1, -32(%ebp)
	jmp	.L905
.L902:
	movl	$0, -32(%ebp)
.L905:
	movzbl	-32(%ebp), %eax
	movl	%eax, %edx
	xorl	$1, %edx
	movb	%dl, -25(%ebp)
	movl	28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L906
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L906
	movl	$1, -24(%ebp)
	jmp	.L909
.L906:
	movl	$0, -24(%ebp)
.L909:
	movzbl	-24(%ebp), %eax
	xorb	-25(%ebp), %al
	testb	%al, %al
	jne	.L898
.L900:
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L910
	movl	24(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L910
	movl	24(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L898
.L910:
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L898
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L898
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L898
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L898
	movl	24(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L898
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L894
.L898:
	.loc 1 2092 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_builtin_candidate
	.loc 1 2094 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_builtin_candidate
	.loc 1 2096 0
	jmp	.L918
.L894:
	.loc 1 2099 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_builtin_candidate
.L918:
	.loc 1 2101 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	add_builtin_candidate, .-add_builtin_candidate
.globl type_decays_to
	.type	type_decays_to, @function
type_decays_to:
.LFB41:
	.loc 1 2106 0
	pushl	%ebp
.LCFI104:
	movl	%esp, %ebp
.LCFI105:
	pushl	%ebx
.LCFI106:
	subl	$20, %esp
.LCFI107:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2107 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L920
	.loc 1 2108 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -8(%ebp)
	jmp	.L922
.L920:
	.loc 1 2109 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L923
	.loc 1 2110 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -8(%ebp)
	jmp	.L922
.L923:
	.loc 1 2111 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L922:
	movl	-8(%ebp), %eax
	.loc 1 2112 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	type_decays_to, .-type_decays_to
	.type	add_builtin_candidates, @function
add_builtin_candidates:
.LFB42:
	.loc 1 2133 0
	pushl	%ebp
.LCFI108:
	movl	%esp, %ebp
.LCFI109:
	pushl	%edi
.LCFI110:
	pushl	%esi
.LCFI111:
	pushl	%ebx
.LCFI112:
	subl	$92, %esp
.LCFI113:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2135 0
	movl	$0, -24(%ebp)
	.loc 1 2143 0
	movl	$0, -28(%ebp)
	jmp	.L927
.L928:
	.loc 1 2145 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L929
	.loc 1 2146 0
	movl	-28(%ebp), %esi
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	lvalue_type@PLT
	movl	%eax, -52(%ebp,%esi,4)
	jmp	.L931
.L929:
	.loc 1 2148 0
	movl	-28(%ebp), %eax
	movl	$0, -52(%ebp,%eax,4)
.L931:
	.loc 1 2143 0
	addl	$1, -28(%ebp)
.L927:
	cmpl	$2, -28(%ebp)
	jle	.L928
	.loc 1 2151 0
	movl	12(%ebp), %eax
	subl	$40, %eax
	movl	%eax, -68(%ebp)
	cmpl	$94, -68(%ebp)
	ja	.L933
	movl	-68(%ebp), %eax
	sall	$2, %eax
	movl	.L939@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L939:
	.long	.L1008@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L1008@GOTOFF
	.long	.L935@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L936@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L937@GOTOFF
	.long	.L937@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L938@GOTOFF
	.long	.L936@GOTOFF
	.long	.L936@GOTOFF
	.long	.L936@GOTOFF
	.long	.L936@GOTOFF
	.long	.L936@GOTOFF
	.long	.L936@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L1008@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L933@GOTOFF
	.long	.L935@GOTOFF
	.long	.L935@GOTOFF
	.long	.L935@GOTOFF
	.long	.L935@GOTOFF
	.text
.L935:
	.loc 1 2163 0
	movl	$1, -32(%ebp)
	.loc 1 2164 0
	jmp	.L940
.L938:
	.loc 1 2172 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %edx
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_builtin_candidate
	.loc 1 2175 0
	jmp	.L1008
.L937:
	.loc 1 2179 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %edx
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %ecx
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_builtin_candidate
	.loc 1 2182 0
	jmp	.L1008
.L936:
	.loc 1 2196 0
	movl	$1, -24(%ebp)
.L933:
	.loc 1 2200 0
	movl	$0, -32(%ebp)
.L940:
	.loc 1 2203 0
	movl	$0, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2205 0
	movl	$0, -28(%ebp)
	jmp	.L942
.L943:
	.loc 1 2207 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L944
	.loc 1 2209 0
	movl	-28(%ebp), %eax
	movl	-52(%ebp,%eax,4), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L946
	movl	-28(%ebp), %eax
	movl	-52(%ebp,%eax,4), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L946
	movl	-28(%ebp), %eax
	movl	-52(%ebp,%eax,4), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L946
	movl	-28(%ebp), %eax
	movl	-52(%ebp,%eax,4), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L946
	movl	-28(%ebp), %eax
	movl	-52(%ebp,%eax,4), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L951
.L946:
.LBB18:
	.loc 1 2213 0
	cmpl	$0, -28(%ebp)
	jne	.L952
	cmpl	$49, 12(%ebp)
	jne	.L952
	cmpl	$117, 16(%ebp)
	je	.L1008
.L952:
	.loc 1 2216 0
	movl	-28(%ebp), %eax
	movl	-52(%ebp,%eax,4), %eax
	movl	%eax, (%esp)
	call	lookup_conversions@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2218 0
	cmpl	$52, 12(%ebp)
	jne	.L955
	.loc 1 2220 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	real_lvalue_p@PLT
	testl	%eax, %eax
	je	.L957
	.loc 1 2221 0
	movl	-28(%ebp), %edi
	movl	-28(%ebp), %eax
	movl	-40(%ebp,%eax,4), %esi
	movl	-28(%ebp), %eax
	movl	-52(%ebp,%eax,4), %eax
	movl	%eax, (%esp)
	call	build_reference_type@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -40(%ebp,%edi,4)
.L957:
	.loc 1 2224 0
	movl	-28(%ebp), %esi
	movl	-28(%ebp), %eax
	movl	-40(%ebp,%eax,4), %edx
	movl	-28(%ebp), %eax
	movl	-52(%ebp,%eax,4), %eax
	movl	72(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -40(%ebp,%esi,4)
	jmp	.L960
.L955:
	.loc 1 2228 0
	cmpl	$0, -16(%ebp)
	je	.L1008
	.loc 1 2231 0
	jmp	.L960
.L961:
	.loc 1 2233 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L962
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L964
.L962:
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
.L964:
	movl	-64(%ebp), %edx
	movl	4(%edx), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2235 0
	cmpl	$0, -28(%ebp)
	jne	.L965
	cmpl	$0, -32(%ebp)
	je	.L965
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L968
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	andl	$1, %eax
	testb	%al, %al
	jne	.L968
.L965:
	.loc 1 2240 0
	cmpl	$52, 12(%ebp)
	jne	.L970
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L970
	.loc 1 2241 0
	movl	-28(%ebp), %esi
	movl	-28(%ebp), %eax
	movl	-40(%ebp,%eax,4), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -40(%ebp,%esi,4)
.L970:
	.loc 1 2243 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	non_reference
	movl	%eax, -20(%ebp)
	.loc 1 2244 0
	cmpl	$0, -28(%ebp)
	jne	.L973
	cmpl	$0, -32(%ebp)
	jne	.L975
.L973:
	.loc 1 2246 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	type_decays_to@PLT
	movl	72(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2247 0
	cmpl	$0, -24(%ebp)
	je	.L976
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L976
	.loc 1 2248 0
	movl	-28(%ebp), %esi
	movl	-28(%ebp), %eax
	movl	-40(%ebp,%eax,4), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -40(%ebp,%esi,4)
.L976:
	.loc 1 2249 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L979
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L979
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L979
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L975
.L979:
	.loc 1 2250 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	type_promotes_to@PLT
	movl	%eax, -20(%ebp)
.L975:
	.loc 1 2253 0
	movl	-28(%ebp), %eax
	movl	-40(%ebp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	value_member@PLT
	testl	%eax, %eax
	jne	.L968
	.loc 1 2254 0
	movl	-28(%ebp), %esi
	movl	-28(%ebp), %eax
	movl	-40(%ebp,%eax,4), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -40(%ebp,%esi,4)
.L968:
	.loc 1 2231 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L960:
	cmpl	$0, -16(%ebp)
	jne	.L961
	.loc 1 2209 0
	jmp	.L944
.L951:
.LBE18:
	.loc 1 2259 0
	cmpl	$52, 12(%ebp)
	jne	.L985
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	real_lvalue_p@PLT
	testl	%eax, %eax
	je	.L985
	.loc 1 2260 0
	movl	-28(%ebp), %edi
	movl	-28(%ebp), %eax
	movl	-40(%ebp,%eax,4), %esi
	movl	-28(%ebp), %eax
	movl	-52(%ebp,%eax,4), %eax
	movl	%eax, (%esp)
	call	build_reference_type@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -40(%ebp,%edi,4)
.L985:
	.loc 1 2262 0
	movl	-28(%ebp), %eax
	movl	-52(%ebp,%eax,4), %eax
	movl	%eax, (%esp)
	call	non_reference
	movl	%eax, -20(%ebp)
	.loc 1 2263 0
	cmpl	$0, -28(%ebp)
	jne	.L988
	cmpl	$0, -32(%ebp)
	jne	.L990
.L988:
	.loc 1 2265 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	type_decays_to@PLT
	movl	72(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2266 0
	cmpl	$0, -24(%ebp)
	je	.L991
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L991
	.loc 1 2267 0
	movl	-28(%ebp), %esi
	movl	-28(%ebp), %eax
	movl	-40(%ebp,%eax,4), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -40(%ebp,%esi,4)
.L991:
	.loc 1 2268 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L994
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L994
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L994
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L990
.L994:
	.loc 1 2269 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	type_promotes_to@PLT
	movl	%eax, -20(%ebp)
.L990:
	.loc 1 2271 0
	movl	-28(%ebp), %esi
	movl	-28(%ebp), %eax
	movl	-40(%ebp,%eax,4), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -40(%ebp,%esi,4)
.L944:
	.loc 1 2205 0
	addl	$1, -28(%ebp)
.L942:
	cmpl	$1, -28(%ebp)
	jle	.L943
	.loc 1 2277 0
	jmp	.L999
.L1000:
	.loc 1 2279 0
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	.L1001
	.loc 1 2280 0
	movl	-36(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1003
.L1004:
	.loc 1 2281 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	-40(%ebp), %eax
	movl	20(%eax), %ecx
	movl	28(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_builtin_candidate
	.loc 1 2280 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L1003:
	cmpl	$0, -20(%ebp)
	jne	.L1004
	jmp	.L1006
.L1001:
	.loc 1 2285 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %edx
	movl	28(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	%edx, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_builtin_candidate
.L1006:
	.loc 1 2277 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L999:
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	jne	.L1000
.L1008:
	.loc 1 2291 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE42:
	.size	add_builtin_candidates, .-add_builtin_candidates
	.type	add_template_candidate_real, @function
add_template_candidate_real:
.LFB43:
	.loc 1 2315 0
	pushl	%ebp
.LCFI114:
	movl	%esp, %ebp
.LCFI115:
	pushl	%ebx
.LCFI116:
	subl	$68, %esp
.LCFI117:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2316 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2317 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2318 0
	movl	24(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2325 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L1010
	.loc 1 2326 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L1010:
	.loc 1 2328 0
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1012
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L1014
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1016
.L1014:
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L1016
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L1016
.L1012:
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1018
	movl	12(%ebp), %eax
	movl	52(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	196(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1018
.L1016:
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1018
	.loc 1 2331 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L1018:
	.loc 1 2333 0
	movl	$-1, 24(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fn_type_unification@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2337 0
	cmpl	$0, -16(%ebp)
	je	.L1021
	.loc 1 2338 0
	movl	$0, -40(%ebp)
	jmp	.L1023
.L1021:
	.loc 1 2340 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_template@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2341 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L1024
	.loc 1 2342 0
	movl	$0, -40(%ebp)
	jmp	.L1023
.L1024:
	.loc 1 2366 0
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1026
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	cmpl	$2, %eax
	jne	.L1026
.LBB19:
	.loc 1 2368 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_artificial_parms_for@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2369 0
	cmpl	$0, -8(%ebp)
	je	.L1026
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	72(%eax), %edx
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L1026
	.loc 1 2371 0
	movl	$0, -40(%ebp)
	jmp	.L1023
.L1026:
.LBE19:
	.loc 1 2374 0
	cmpl	$0, 44(%ebp)
	je	.L1031
	.loc 1 2376 0
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_conv_candidate
	movl	%eax, -20(%ebp)
	jmp	.L1033
.L1031:
	.loc 1 2379 0
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_function_candidate
	movl	%eax, -20(%ebp)
.L1033:
	.loc 1 2382 0
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L1034
	.loc 1 2400 0
	movl	$0, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 24(%eax)
	jmp	.L1036
.L1034:
	.loc 1 2402 0
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 24(%eax)
.L1036:
	.loc 1 2404 0
	movl	-20(%ebp), %eax
	movl	%eax, -40(%ebp)
.L1023:
	movl	-40(%ebp), %eax
	.loc 1 2405 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	add_template_candidate_real, .-add_template_candidate_real
	.type	add_template_candidate, @function
add_template_candidate:
.LFB44:
	.loc 1 2418 0
	pushl	%ebp
.LCFI118:
	movl	%esp, %ebp
.LCFI119:
	subl	$56, %esp
.LCFI120:
	.loc 1 2419 0
	movl	44(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	$0, 36(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_template_candidate_real
	.loc 1 2424 0
	leave
	ret
.LFE44:
	.size	add_template_candidate, .-add_template_candidate
	.type	add_template_conv_candidate, @function
add_template_conv_candidate:
.LFB45:
	.loc 1 2434 0
	pushl	%ebp
.LCFI121:
	movl	%esp, %ebp
.LCFI122:
	subl	$56, %esp
.LCFI123:
	.loc 1 2435 0
	movl	$1, 40(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_template_candidate_real
	.loc 1 2439 0
	leave
	ret
.LFE45:
	.size	add_template_conv_candidate, .-add_template_conv_candidate
	.type	any_viable, @function
any_viable:
.LFB46:
	.loc 1 2445 0
	pushl	%ebp
.LCFI124:
	movl	%esp, %ebp
.LCFI125:
	subl	$8, %esp
.LCFI126:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2446 0
	jmp	.L1043
.L1044:
	.loc 1 2447 0
	movl	pedantic@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1045
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	sete	-5(%ebp)
	jmp	.L1047
.L1045:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	setne	-5(%ebp)
.L1047:
	cmpb	$0, -5(%ebp)
	je	.L1048
	.loc 1 2448 0
	movl	$1, -4(%ebp)
	jmp	.L1050
.L1048:
	.loc 1 2446 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, 8(%ebp)
.L1043:
	cmpl	$0, 8(%ebp)
	jne	.L1044
	.loc 1 2449 0
	movl	$0, -4(%ebp)
.L1050:
	movl	-4(%ebp), %eax
	.loc 1 2450 0
	leave
	ret
.LFE46:
	.size	any_viable, .-any_viable
	.type	any_strictly_viable, @function
any_strictly_viable:
.LFB47:
	.loc 1 2455 0
	pushl	%ebp
.LCFI127:
	movl	%esp, %ebp
.LCFI128:
	subl	$4, %esp
.LCFI129:
	.loc 1 2456 0
	jmp	.L1054
.L1055:
	.loc 1 2457 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	jne	.L1056
	.loc 1 2458 0
	movl	$1, -4(%ebp)
	jmp	.L1058
.L1056:
	.loc 1 2456 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, 8(%ebp)
.L1054:
	cmpl	$0, 8(%ebp)
	jne	.L1055
	.loc 1 2459 0
	movl	$0, -4(%ebp)
.L1058:
	movl	-4(%ebp), %eax
	.loc 1 2460 0
	leave
	ret
.LFE47:
	.size	any_strictly_viable, .-any_strictly_viable
	.type	splice_viable, @function
splice_viable:
.LFB48:
	.loc 1 2465 0
	pushl	%ebp
.LCFI130:
	movl	%esp, %ebp
.LCFI131:
	subl	$20, %esp
.LCFI132:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2466 0
	leal	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 2468 0
	jmp	.L1071
.L1063:
	.loc 1 2470 0
	movl	pedantic@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1064
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	sete	-17(%ebp)
	jmp	.L1066
.L1064:
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	setne	-17(%ebp)
.L1066:
	cmpb	$0, -17(%ebp)
	je	.L1067
	.loc 1 2471 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	addl	$32, %eax
	movl	%eax, -4(%ebp)
	jmp	.L1062
.L1067:
	.loc 1 2473 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	32(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, (%eax)
.L1062:
.L1071:
	.loc 1 2468 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1063
	.loc 1 2476 0
	movl	8(%ebp), %eax
	.loc 1 2477 0
	leave
	ret
.LFE48:
	.size	splice_viable, .-splice_viable
	.type	build_this, @function
build_this:
.LFB49:
	.loc 1 2482 0
	pushl	%ebp
.LCFI133:
	movl	%esp, %ebp
.LCFI134:
	pushl	%ebx
.LCFI135:
	subl	$20, %esp
.LCFI136:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2484 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	.loc 1 2485 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	build_this, .-build_this
	.section	.rodata
.LC11:
	.string	"candidates are:"
.LC12:
	.string	"%s %D(%T, %T, %T) <built-in>"
.LC13:
	.string	"%s %D(%T, %T) <built-in>"
.LC14:
	.string	"%s %D(%T) <built-in>"
.LC15:
	.string	"%s %T <conversion>"
.LC16:
	.string	" <near match>"
.LC17:
	.string	""
.LC18:
	.string	"%s %+#D%s"
.LC19:
	.string	"               "
	.text
	.type	print_z_candidates, @function
print_z_candidates:
.LFB51:
	.loc 1 2504 0
	pushl	%ebp
.LCFI137:
	movl	%esp, %ebp
.LCFI138:
	pushl	%esi
.LCFI139:
	pushl	%ebx
.LCFI140:
	subl	$48, %esp
.LCFI141:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2514 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1075
.L1076:
.LBB20:
	.loc 1 2516 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2518 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1077
	.loc 1 2520 0
	movl	-20(%ebp), %eax
	addl	$32, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2521 0
	jmp	.L1102
.L1080:
	.loc 1 2523 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1081
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	equal_functions
	testl	%eax, %eax
	je	.L1081
	.loc 1 2525 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	32(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2523 0
	jmp	.L1079
.L1081:
	.loc 1 2527 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	addl	$32, %eax
	movl	%eax, -16(%ebp)
.L1079:
.L1102:
	.loc 1 2521 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1080
.L1077:
.LBE20:
	.loc 1 2514 0
	movl	-20(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -20(%ebp)
.L1075:
	cmpl	$0, -20(%ebp)
	jne	.L1076
	.loc 1 2531 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2532 0
	jmp	.L1085
.L1086:
	.loc 1 2534 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L1087
	.loc 1 2536 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	cmpl	$3, %eax
	jne	.L1089
	.loc 1 2537 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%esi, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1094
.L1089:
	.loc 1 2541 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	cmpl	$2, %eax
	jne	.L1092
	.loc 1 2542 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1094
.L1092:
	.loc 1 2546 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1094
.L1087:
	.loc 1 2549 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L1095
	.loc 1 2550 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1094
.L1095:
	.loc 1 2552 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$-1, %eax
	jne	.L1097
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1099
.L1097:
	leal	.LC17@GOTOFF(%ebx), %edx
	movl	%edx, -28(%ebp)
.L1099:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
.L1094:
	.loc 1 2554 0
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2532 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, 8(%ebp)
.L1085:
	cmpl	$0, 8(%ebp)
	jne	.L1086
	.loc 1 2556 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE51:
	.size	print_z_candidates, .-print_z_candidates
	.type	equal_functions, @function
equal_functions:
.LFB50:
	.loc 1 2495 0
	pushl	%ebp
.LCFI142:
	movl	%esp, %ebp
.LCFI143:
	pushl	%ebx
.LCFI144:
	subl	$20, %esp
.LCFI145:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2496 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1104
	movl	12(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1104
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1107
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1109
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1107
.L1109:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L1111
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	4(%eax), %eax
	testb	%al, %al
	je	.L1104
	jmp	.L1107
.L1111:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1107
.L1104:
	.loc 1 2498 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decls_match@PLT
	movl	%eax, -8(%ebp)
	jmp	.L1113
.L1107:
	.loc 1 2499 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
.L1113:
	movl	-8(%ebp), %eax
	.loc 1 2500 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	equal_functions, .-equal_functions
	.section	.rodata
	.type	__FUNCTION__.19081, @object
	.size	__FUNCTION__.19081, 27
__FUNCTION__.19081:
	.string	"merge_conversion_sequences"
	.text
	.type	merge_conversion_sequences, @function
merge_conversion_sequences:
.LFB52:
	.loc 1 2566 0
	pushl	%ebp
.LCFI146:
	movl	%esp, %ebp
.LCFI147:
	pushl	%ebx
.LCFI148:
	subl	$36, %esp
.LCFI149:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2569 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-25, %al
	je	.L1116
	leal	__FUNCTION__.19081@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2570, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1116:
	.loc 1 2573 0
	leal	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2574 0
	jmp	.L1118
.L1119:
	.loc 1 2575 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	addl	$20, %eax
	movl	%eax, -8(%ebp)
.L1118:
	.loc 1 2574 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-33, %al
	jne	.L1119
	.loc 1 2579 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2582 0
	movl	12(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$1, %eax
	movb	%al, 11(%edx)
	.loc 1 2584 0
	movl	12(%ebp), %eax
	.loc 1 2585 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	merge_conversion_sequences, .-merge_conversion_sequences
	.section	.rodata
	.type	__FUNCTION__.19107, @object
	.size	__FUNCTION__.19107, 29
__FUNCTION__.19107:
	.string	"build_user_type_conversion_1"
	.align 4
.LC20:
	.string	"conversion from `%T' to `%T' is ambiguous"
	.text
	.type	build_user_type_conversion_1, @function
build_user_type_conversion_1:
.LFB53:
	.loc 1 2597 0
	pushl	%ebp
.LCFI150:
	movl	%esp, %ebp
.LCFI151:
	pushl	%ebx
.LCFI152:
	subl	$148, %esp
.LCFI153:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2599 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2600 0
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	.loc 1 2601 0
	movl	$0, -36(%ebp)
	.loc 1 2606 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1123
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1123
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1123
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1123
	movl	-48(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1128
.L1123:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1129
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1129
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1129
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1129
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1128
.L1129:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	jne	.L1134
.L1128:
	movl	$1, -112(%ebp)
	jmp	.L1135
.L1134:
	movl	$0, -112(%ebp)
.L1135:
	cmpl	$0, -112(%ebp)
	jne	.L1136
	leal	__FUNCTION__.19107@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2607, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1136:
	.loc 1 2609 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1138
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1138
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1138
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1138
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1143
.L1138:
	.loc 1 2610 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	192(%eax), %edx
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_fnfields@PLT
	movl	%eax, -44(%ebp)
.L1143:
	.loc 1 2614 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1144
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1144
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1144
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1144
	movl	-48(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1149
.L1144:
	.loc 1 2615 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_conversions@PLT
	movl	%eax, -40(%ebp)
.L1149:
	.loc 1 2617 0
	movl	$0, -56(%ebp)
	.loc 1 2618 0
	orl	$512, 16(%ebp)
	.loc 1 2620 0
	cmpl	$0, -44(%ebp)
	je	.L1164
.LBB21:
	.loc 1 2624 0
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2626 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2627 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2628 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2631 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1152
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -104(%ebp)
	jmp	.L1154
.L1152:
	movl	-44(%ebp), %eax
	movl	%eax, -104(%ebp)
.L1154:
	movl	-104(%ebp), %edx
	movl	136(%edx), %eax
	movzbl	5(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L1155
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1157
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1159
.L1157:
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
.L1159:
	movl	-100(%ebp), %edx
	movl	136(%edx), %eax
	movzbl	5(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L1155
	movl	$1, -108(%ebp)
	jmp	.L1161
.L1155:
	movl	$0, -108(%ebp)
.L1161:
	cmpl	$0, -108(%ebp)
	jne	.L1162
	leal	__FUNCTION__.19107@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2633, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1162:
	.loc 1 2634 0
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2636 0
	jmp	.L1164
.L1165:
.LBE21:
.LBB22:
	.loc 1 2638 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1166
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L1168
.L1166:
	movl	-44(%ebp), %eax
	movl	%eax, -96(%ebp)
.L1168:
	movl	-96(%ebp), %edx
	movl	%edx, -28(%ebp)
	.loc 1 2639 0
	movl	-28(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1169
	.loc 1 2642 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1171
	.loc 1 2643 0
	movl	8(%ebp), %eax
	movl	76(%eax), %ecx
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	$0, 36(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	%ecx, 28(%esp)
	movl	%edx, 24(%esp)
	movl	$0, 20(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	add_template_candidate
	movl	%eax, -52(%ebp)
	jmp	.L1173
.L1171:
	.loc 1 2650 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	76(%eax), %ecx
	movl	16(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	add_function_candidate
	movl	%eax, -52(%ebp)
.L1173:
	.loc 1 2655 0
	cmpl	$0, -52(%ebp)
	je	.L1169
	.loc 1 2656 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$223, (%esp)
	call	build1@PLT
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%edx, 8(%eax)
.L1169:
.LBE22:
	.loc 1 2636 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1175
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L1177
.L1175:
	movl	$0, -92(%ebp)
.L1177:
	movl	-92(%ebp), %eax
	movl	%eax, -44(%ebp)
.L1164:
	cmpl	$0, -44(%ebp)
	jne	.L1165
	.loc 1 2659 0
	cmpl	$0, -40(%ebp)
	je	.L1181
	.loc 1 2660 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_this
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2662 0
	jmp	.L1181
.L1182:
.LBB23:
	.loc 1 2665 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2666 0
	movl	$512, -16(%ebp)
	.loc 1 2672 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L1183
	.loc 1 2673 0
	orl	$1024, -16(%ebp)
.L1183:
	.loc 1 2675 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1185
.L1186:
.LBB24:
	.loc 1 2677 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1187
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L1189
.L1187:
	movl	-24(%ebp), %edx
	movl	%edx, -88(%ebp)
.L1189:
	movl	-88(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2686 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1190
	.loc 1 2687 0
	movl	-48(%ebp), %eax
	movl	76(%eax), %edx
	movl	$1, 36(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	%edx, 24(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	add_template_candidate
	movl	%eax, -52(%ebp)
	jmp	.L1192
.L1190:
	.loc 1 2694 0
	movl	-48(%ebp), %eax
	movl	76(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	add_function_candidate
	movl	%eax, -52(%ebp)
.L1192:
	.loc 1 2700 0
	cmpl	$0, -52(%ebp)
	je	.L1193
.LBB25:
	.loc 1 2704 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	implicit_conversion
	movl	%eax, -8(%ebp)
	.loc 1 2706 0
	movl	-52(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 2708 0
	cmpl	$0, -8(%ebp)
	jne	.L1195
	.loc 1 2709 0
	movl	-52(%ebp), %eax
	movl	$0, 12(%eax)
	jmp	.L1193
.L1195:
	.loc 1 2710 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	jne	.L1193
	movl	-8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1193
	.loc 1 2711 0
	movl	-52(%ebp), %eax
	movl	$-1, 12(%eax)
.L1193:
.LBE25:
.LBE24:
	.loc 1 2675 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1199
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1201
.L1199:
	movl	$0, -84(%ebp)
.L1201:
	movl	-84(%ebp), %edx
	movl	%edx, -24(%ebp)
.L1185:
	cmpl	$0, -24(%ebp)
	jne	.L1186
.LBE23:
	.loc 1 2662 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L1181:
	cmpl	$0, -40(%ebp)
	jne	.L1182
	.loc 1 2716 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	any_viable
	testl	%eax, %eax
	jne	.L1204
	.loc 1 2717 0
	movl	$0, -80(%ebp)
	jmp	.L1206
.L1204:
	.loc 1 2719 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	splice_viable
	movl	%eax, -56(%ebp)
	.loc 1 2720 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	tourney
	movl	%eax, -52(%ebp)
	.loc 1 2722 0
	cmpl	$0, -52(%ebp)
	jne	.L1207
	.loc 1 2724 0
	movl	16(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1209
	.loc 1 2726 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2728 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	print_z_candidates
.L1209:
	.loc 1 2731 0
	movl	-56(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2732 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$232, (%esp)
	call	build1@PLT
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 2733 0
	movl	-52(%ebp), %eax
	movl	8(%eax), %edx
	movzbl	11(%edx), %eax
	orl	$1, %eax
	movb	%al, 11(%edx)
	.loc 1 2734 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	any_strictly_viable
	testl	%eax, %eax
	jne	.L1211
	.loc 1 2735 0
	movl	-52(%ebp), %eax
	movl	8(%eax), %edx
	movzbl	11(%edx), %eax
	orl	$8, %eax
	movb	%al, 11(%edx)
.L1211:
	.loc 1 2740 0
	movl	-52(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1206
.L1207:
	.loc 1 2744 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$223, (%esp)
	call	build1@PLT
	movl	%eax, -76(%ebp)
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1213
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	non_reference
	movl	%eax, -72(%ebp)
	jmp	.L1215
.L1213:
	movl	8(%ebp), %edx
	movl	%edx, -72(%ebp)
.L1215:
	movl	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-72(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$231, (%esp)
	call	build_conv
	movl	%eax, -40(%ebp)
	.loc 1 2749 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	build_zc_wrapper@PLT
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 2752 0
	movl	-52(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_conversion_sequences
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 2755 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$-1, %eax
	jne	.L1216
	.loc 1 2756 0
	movl	-52(%ebp), %eax
	movl	8(%eax), %edx
	movzbl	11(%edx), %eax
	orl	$8, %eax
	movb	%al, 11(%edx)
.L1216:
	.loc 1 2758 0
	movl	-52(%ebp), %eax
	movl	%eax, -80(%ebp)
.L1206:
	movl	-80(%ebp), %eax
	.loc 1 2759 0
	addl	$148, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	build_user_type_conversion_1, .-build_user_type_conversion_1
.globl build_user_type_conversion
	.type	build_user_type_conversion, @function
build_user_type_conversion:
.LFB54:
	.loc 1 2765 0
	pushl	%ebp
.LCFI154:
	movl	%esp, %ebp
.LCFI155:
	pushl	%ebx
.LCFI156:
	subl	$52, %esp
.LCFI157:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2767 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_user_type_conversion_1
	movl	%eax, -8(%ebp)
	.loc 1 2769 0
	cmpl	$0, -8(%ebp)
	je	.L1220
	.loc 1 2771 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-24, %al
	jne	.L1222
	.loc 1 2772 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1224
.L1222:
	.loc 1 2773 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %edx
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert_like_real
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, -24(%ebp)
	jmp	.L1224
.L1220:
	.loc 1 2775 0
	movl	$0, -24(%ebp)
.L1224:
	movl	-24(%ebp), %eax
	.loc 1 2776 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	build_user_type_conversion, .-build_user_type_conversion
	.section	.rodata
.LC21:
	.string	"`%T' is not a class type"
	.align 4
.LC22:
	.string	"incomplete type '%T' cannot be used to name a scope"
.LC23:
	.string	"'%D' has no member named '%E'"
	.text
.globl resolve_scoped_fn_name
	.type	resolve_scoped_fn_name, @function
resolve_scoped_fn_name:
.LFB55:
	.loc 1 2784 0
	pushl	%ebp
.LCFI158:
	movl	%esp, %ebp
.LCFI159:
	pushl	%ebx
.LCFI160:
	subl	$36, %esp
.LCFI161:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2786 0
	movl	$0, -16(%ebp)
	.loc 1 2787 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	sete	%al
	movb	%al, -5(%ebp)
	.loc 1 2789 0
	cmpb	$0, -5(%ebp)
	je	.L1227
	.loc 1 2791 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2792 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L1227:
	.loc 1 2794 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1229
	.loc 1 2795 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_first_fn@PLT
	movl	52(%eax), %eax
	movl	%eax, 12(%ebp)
	jmp	.L1231
.L1229:
	.loc 1 2796 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-50, %al
	jne	.L1231
	.loc 1 2797 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L1231:
	.loc 1 2799 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L1233
	.loc 1 2800 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_namespace_name@PLT
	movl	%eax, -20(%ebp)
	jmp	.L1235
.L1233:
	.loc 1 2801 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1236
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1238
.L1236:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1239
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1239
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1239
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1239
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1239
.L1238:
	.loc 1 2803 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2804 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1244
.L1239:
	.loc 1 2808 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L1245
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1245
	.loc 1 2811 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2813 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1244
.L1245:
	.loc 1 2816 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L1248
	.loc 1 2817 0
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1250
.L1248:
	.loc 1 2819 0
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_member@PLT
	movl	%eax, -20(%ebp)
.L1250:
	.loc 1 2820 0
	cmpl	$0, -20(%ebp)
	je	.L1251
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1251
	.loc 1 2821 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_result_of_qualified_name_lookup@PLT
	movl	%eax, -20(%ebp)
.L1251:
	.loc 1 2825 0
	cmpl	$0, -20(%ebp)
	je	.L1235
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L1235
	.loc 1 2826 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_offset_ref@PLT
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, -20(%ebp)
.L1235:
	.loc 1 2829 0
	cmpl	$0, -20(%ebp)
	jne	.L1256
	.loc 1 2831 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2832 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1244
.L1256:
	.loc 1 2834 0
	cmpb	$0, -5(%ebp)
	je	.L1258
.LBB26:
	.loc 1 2836 0
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2838 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L1260
	.loc 1 2839 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
.L1260:
	.loc 1 2840 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$203, (%esp)
	call	build_nt@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2841 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L1262
	.loc 1 2842 0
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 24(%edx)
	jmp	.L1258
.L1262:
	.loc 1 2844 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
.L1258:
.LBE26:
	.loc 1 2847 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1244:
	movl	-24(%ebp), %eax
	.loc 1 2848 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	resolve_scoped_fn_name, .-resolve_scoped_fn_name
	.section	.rodata
	.align 4
.LC24:
	.string	"invalid use of void expression"
	.text
	.type	resolve_args, @function
resolve_args:
.LFB56:
	.loc 1 2855 0
	pushl	%ebp
.LCFI162:
	movl	%esp, %ebp
.LCFI163:
	pushl	%ebx
.LCFI164:
	subl	$36, %esp
.LCFI165:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2857 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1266
.L1267:
.LBB27:
	.loc 1 2859 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2861 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L1268
	.loc 1 2862 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1270
.L1268:
	.loc 1 2863 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1271
	.loc 1 2865 0
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2866 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1270
.L1271:
	.loc 1 2868 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L1273
	.loc 1 2869 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, -8(%ebp)
.L1273:
	.loc 1 2870 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2871 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 20(%edx)
.LBE27:
	.loc 1 2857 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L1266:
	cmpl	$0, -12(%ebp)
	jne	.L1267
	.loc 1 2873 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1270:
	movl	-24(%ebp), %eax
	.loc 1 2874 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	resolve_args, .-resolve_args
	.section	.rodata
	.type	__FUNCTION__.19464, @object
	.size	__FUNCTION__.19464, 24
__FUNCTION__.19464:
	.string	"build_new_function_call"
	.align 4
.LC25:
	.string	"no matching function for call to `%D(%A)'"
	.align 4
.LC26:
	.string	"call of overloaded `%D(%A)' is ambiguous"
	.text
.globl build_new_function_call
	.type	build_new_function_call, @function
build_new_function_call:
.LFB57:
	.loc 1 2882 0
	pushl	%ebp
.LCFI166:
	movl	%esp, %ebp
.LCFI167:
	pushl	%ebx
.LCFI168:
	subl	$100, %esp
.LCFI169:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2883 0
	movl	$0, -28(%ebp)
	.loc 1 2884 0
	movl	$0, -20(%ebp)
	.loc 1 2885 0
	movl	$0, -16(%ebp)
	.loc 1 2888 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L1278
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L1278
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	je	.L1278
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L1282
.L1278:
	movl	$1, -64(%ebp)
	jmp	.L1283
.L1282:
	movl	$0, -64(%ebp)
.L1283:
	cmpl	$0, -64(%ebp)
	jne	.L1284
	leal	__FUNCTION__.19464@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2892, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1284:
	.loc 1 2893 0
	cmpl	$0, 12(%ebp)
	je	.L1286
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L1288
.L1286:
	movl	$1, -60(%ebp)
	jmp	.L1289
.L1288:
	movl	$0, -60(%ebp)
.L1289:
	cmpl	$0, -60(%ebp)
	jne	.L1290
	leal	__FUNCTION__.19464@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2894, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1290:
	.loc 1 2896 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L1292
	.loc 1 2898 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2899 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 2900 0
	movl	$1, -16(%ebp)
.L1292:
	.loc 1 2903 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	really_overloaded_fn@PLT
	testl	%eax, %eax
	jne	.L1294
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1296
.L1294:
.LBB28:
	.loc 1 2908 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_args
	movl	%eax, 12(%ebp)
	.loc 1 2910 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1297
	.loc 1 2911 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1299
.L1297:
	.loc 1 2913 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1300
.L1301:
.LBB29:
	.loc 1 2915 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1302
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1304
.L1302:
	movl	-12(%ebp), %eax
	movl	%eax, -52(%ebp)
.L1304:
	movl	-52(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2917 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1305
	.loc 1 2918 0
	movl	$0, 36(%esp)
	movl	$3, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	add_template_candidate
	jmp	.L1307
.L1305:
	.loc 1 2923 0
	cmpl	$0, -16(%ebp)
	jne	.L1307
	.loc 1 2924 0
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	add_function_candidate
.L1307:
.LBE29:
	.loc 1 2913 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1309
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1311
.L1309:
	movl	$0, -48(%ebp)
.L1311:
	movl	-48(%ebp), %eax
	movl	%eax, -12(%ebp)
.L1300:
	cmpl	$0, -12(%ebp)
	jne	.L1301
	.loc 1 2929 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	any_viable
	testl	%eax, %eax
	jne	.L1313
	.loc 1 2931 0
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	je	.L1315
	movl	-28(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L1315
	.loc 1 2932 0
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_function_call@PLT
	movl	%eax, -56(%ebp)
	jmp	.L1299
.L1315:
	.loc 1 2933 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1318
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1320
.L1318:
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
.L1320:
	movl	-44(%ebp), %eax
	movl	52(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2935 0
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	je	.L1321
	.loc 1 2936 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	print_z_candidates
.L1321:
	.loc 1 2937 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1299
.L1313:
	.loc 1 2939 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	splice_viable
	movl	%eax, -28(%ebp)
	.loc 1 2940 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	tourney
	movl	%eax, -24(%ebp)
	.loc 1 2942 0
	cmpl	$0, -24(%ebp)
	jne	.L1323
	.loc 1 2944 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	52(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2946 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	print_z_candidates
	.loc 1 2947 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1299
.L1323:
	.loc 1 2950 0
	movl	$3, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_over_call
	movl	%eax, -56(%ebp)
	jmp	.L1299
.L1296:
.LBE28:
	.loc 1 2954 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1325
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1327
.L1325:
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
.L1327:
	movl	-40(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 2956 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_call@PLT
	movl	%eax, -56(%ebp)
.L1299:
	movl	-56(%ebp), %eax
	.loc 1 2957 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	build_new_function_call, .-build_new_function_call
	.section	.rodata
	.align 4
.LC27:
	.string	"pointer-to-member function %E cannot be called without an object; consider using .* or ->*"
	.align 4
.LC28:
	.string	"no match for call to `(%T) (%A)'"
	.align 4
.LC29:
	.string	"call of `(%T) (%A)' is ambiguous"
	.text
	.type	build_object_call, @function
build_object_call:
.LFB58:
	.loc 1 2962 0
	pushl	%ebp
.LCFI170:
	movl	%esp, %ebp
.LCFI171:
	pushl	%ebx
.LCFI172:
	subl	$116, %esp
.LCFI173:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2963 0
	movl	$0, -48(%ebp)
	.loc 1 2964 0
	movl	$0, -32(%ebp)
	.loc 1 2965 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2967 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1330
	movl	-28(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1330
	movl	-28(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1330
	.loc 1 2971 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2972 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1334
.L1330:
	.loc 1 2975 0
	movl	operator_name_info@GOT(%ebx), %eax
	movl	864(%eax), %edx
	movl	-28(%ebp), %eax
	movl	76(%eax), %eax
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_fnfields@PLT
	movl	%eax, -40(%ebp)
	.loc 1 2976 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L1335
	.loc 1 2977 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1334
.L1335:
	.loc 1 2979 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_args
	movl	%eax, 12(%ebp)
	.loc 1 2981 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1337
	.loc 1 2982 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1334
.L1337:
	.loc 1 2984 0
	cmpl	$0, -40(%ebp)
	je	.L1339
.LBB30:
	.loc 1 2986 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2987 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_this
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2989 0
	movl	-40(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1341
.L1342:
.LBB31:
	.loc 1 2991 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1343
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1345
.L1343:
	movl	-40(%ebp), %eax
	movl	%eax, -72(%ebp)
.L1345:
	movl	-72(%ebp), %edx
	movl	%edx, -20(%ebp)
	.loc 1 2992 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1346
	.loc 1 2993 0
	movl	-28(%ebp), %eax
	movl	76(%eax), %edx
	movl	-28(%ebp), %eax
	movl	76(%eax), %eax
	movl	$0, 36(%esp)
	movl	$3, 32(%esp)
	movl	%edx, 28(%esp)
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	add_template_candidate
	jmp	.L1348
.L1346:
	.loc 1 2999 0
	movl	-28(%ebp), %eax
	movl	76(%eax), %edx
	movl	-28(%ebp), %eax
	movl	76(%eax), %eax
	movl	$3, 24(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	add_function_candidate
.L1348:
.LBE31:
	.loc 1 2989 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1349
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1351
.L1349:
	movl	$0, -68(%ebp)
.L1351:
	movl	-68(%ebp), %eax
	movl	%eax, -40(%ebp)
.L1341:
	cmpl	$0, -40(%ebp)
	jne	.L1342
.L1339:
.LBE30:
	.loc 1 3005 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_conversions@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3007 0
	jmp	.L1352
.L1353:
.LBB32:
	.loc 1 3009 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3010 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1354
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1356
.L1354:
	movl	-16(%ebp), %edx
	movl	%edx, -64(%ebp)
.L1356:
	movl	-64(%ebp), %edx
	movl	4(%edx), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3012 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1357
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L1365
.L1357:
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L1360
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L1365
.L1360:
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L1362
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1362
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1362
	.loc 1 3019 0
	jmp	.L1365
.L1366:
.LBB33:
	.loc 1 3021 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1367
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1369
.L1367:
	movl	-16(%ebp), %eax
	movl	%eax, -60(%ebp)
.L1369:
	movl	-60(%ebp), %edx
	movl	%edx, -8(%ebp)
	.loc 1 3022 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1370
	.loc 1 3023 0
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	add_template_conv_candidate
	jmp	.L1372
.L1370:
	.loc 1 3028 0
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	add_conv_candidate
.L1372:
.LBE33:
	.loc 1 3019 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1373
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1375
.L1373:
	movl	$0, -56(%ebp)
.L1375:
	movl	-56(%ebp), %eax
	movl	%eax, -16(%ebp)
.L1365:
	cmpl	$0, -16(%ebp)
	jne	.L1366
.L1362:
.LBE32:
	.loc 1 3007 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L1352:
	cmpl	$0, -36(%ebp)
	jne	.L1353
	.loc 1 3034 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	any_viable
	testl	%eax, %eax
	jne	.L1377
	.loc 1 3036 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3037 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	print_z_candidates
	.loc 1 3038 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1334
.L1377:
	.loc 1 3041 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	splice_viable
	movl	%eax, -48(%ebp)
	.loc 1 3042 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	tourney
	movl	%eax, -44(%ebp)
	.loc 1 3044 0
	cmpl	$0, -44(%ebp)
	jne	.L1379
	.loc 1 3046 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3047 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	print_z_candidates
	.loc 1 3048 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1334
.L1379:
	.loc 1 3054 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1381
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1381
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movl	40(%eax), %eax
	cmpl	$54, %eax
	jne	.L1381
	.loc 1 3056 0
	movl	$3, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	build_over_call
	movl	%eax, -76(%ebp)
	jmp	.L1334
.L1381:
	.loc 1 3058 0
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %ecx
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	$-1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	convert_like_real
	movl	%eax, 8(%ebp)
	.loc 1 3062 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_call@PLT
	movl	%eax, -76(%ebp)
.L1334:
	movl	-76(%ebp), %eax
	.loc 1 3063 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	build_object_call, .-build_object_call
	.section	.rodata
	.align 4
.LC30:
	.string	"%s for ternary 'operator?:' in '%E ? %E : %E'"
.LC31:
	.string	"%s for 'operator%s' in '%E%s'"
	.align 4
.LC32:
	.string	"%s for 'operator[]' in '%E[%E]'"
	.align 4
.LC33:
	.string	"%s for 'operator%s' in '%E %s %E'"
.LC34:
	.string	"%s for 'operator%s' in '%s%E'"
	.text
	.type	op_error, @function
op_error:
.LFB59:
	.loc 1 3070 0
	pushl	%ebp
.LCFI174:
	movl	%esp, %ebp
.LCFI175:
	pushl	%ebx
.LCFI176:
	subl	$52, %esp
.LCFI177:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3073 0
	cmpl	$49, 8(%ebp)
	jne	.L1387
	.loc 1 3074 0
	movl	12(%ebp), %eax
	movl	assignment_operator_name_info@GOT(%ebx), %edx
	sall	$4, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1389
.L1387:
	.loc 1 3076 0
	movl	8(%ebp), %eax
	movl	operator_name_info@GOT(%ebx), %edx
	sall	$4, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L1389:
	.loc 1 3078 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	cmpl	$52, -24(%ebp)
	je	.L1392
	cmpl	$52, -24(%ebp)
	ja	.L1394
	cmpl	$44, -24(%ebp)
	je	.L1391
	jmp	.L1390
.L1394:
	movl	-24(%ebp), %eax
	subl	$133, %eax
	cmpl	$1, %eax
	ja	.L1390
	jmp	.L1393
.L1392:
	.loc 1 3081 0
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3083 0
	jmp	.L1398
.L1393:
	.loc 1 3087 0
	movl	-8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3088 0
	jmp	.L1398
.L1391:
	.loc 1 3091 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3092 0
	jmp	.L1398
.L1390:
	.loc 1 3095 0
	cmpl	$0, 20(%ebp)
	je	.L1396
	.loc 1 3096 0
	movl	20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1398
.L1396:
	.loc 1 3099 0
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1398:
	.loc 1 3103 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE59:
	.size	op_error, .-op_error
	.type	conditional_conversion, @function
conditional_conversion:
.LFB60:
	.loc 1 3112 0
	pushl	%ebp
.LCFI178:
	movl	%esp, %ebp
.LCFI179:
	pushl	%ebx
.LCFI180:
	subl	$36, %esp
.LCFI181:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3113 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	non_reference
	movl	%eax, -20(%ebp)
	.loc 1 3114 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	non_reference
	movl	%eax, -16(%ebp)
	.loc 1 3124 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	real_lvalue_p@PLT
	testl	%eax, %eax
	je	.L1400
	.loc 1 3126 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_reference_type@PLT
	movl	%eax, %edx
	movl	$1024, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	implicit_conversion
	movl	%eax, -12(%ebp)
	.loc 1 3130 0
	cmpl	$0, -12(%ebp)
	je	.L1400
	.loc 1 3131 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1403
.L1400:
	.loc 1 3144 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1404
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1406
.L1404:
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1407
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1407
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1407
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1407
	movl	-20(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1406
.L1407:
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1412
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1406
.L1412:
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1414
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1414
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1414
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1414
	movl	-16(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1406
.L1414:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	setne	%al
	movb	%al, -5(%ebp)
	cmpb	$0, -5(%ebp)
	jne	.L1419
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	je	.L1406
.L1419:
	.loc 1 3147 0
	movzbl	-5(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1421
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	at_least_as_qualified_p@PLT
	testl	%eax, %eax
	je	.L1421
	.loc 1 3149 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$223, (%esp)
	call	build1@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3150 0
	movl	-16(%ebp), %eax
	movl	72(%eax), %edx
	movl	-20(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L1424
	.loc 1 3152 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$229, (%esp)
	call	build_conv
	movl	%eax, -12(%ebp)
.L1424:
	.loc 1 3153 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1403
.L1421:
	.loc 1 3156 0
	movl	$0, -24(%ebp)
	jmp	.L1403
.L1406:
	.loc 1 3164 0
	movl	$3, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	implicit_conversion
	movl	%eax, -24(%ebp)
.L1403:
	movl	-24(%ebp), %eax
	.loc 1 3165 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE60:
	.size	conditional_conversion, .-conditional_conversion
	.section	.rodata
	.align 4
.LC35:
	.string	"ISO C++ forbids omitting the middle term of a ?: expression"
	.align 4
.LC36:
	.string	"`%E' has type `void' and is not a throw-expression"
	.align 4
.LC37:
	.string	"operands to ?: have different types"
.LC38:
	.string	"no match"
	.align 4
.LC39:
	.string	"enumeral mismatch in conditional expression: `%T' vs `%T'"
	.align 4
.LC40:
	.string	"enumeral and non-enumeral type in conditional expression"
.LC41:
	.string	"conditional expression"
	.text
.globl build_conditional_expr
	.type	build_conditional_expr, @function
build_conditional_expr:
.LFB61:
	.loc 1 3175 0
	pushl	%ebp
.LCFI182:
	movl	%esp, %ebp
.LCFI183:
	pushl	%ebx
.LCFI184:
	subl	$100, %esp
.LCFI185:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3179 0
	movl	$0, -28(%ebp)
	.loc 1 3180 0
	movl	$1, -24(%ebp)
	.loc 1 3181 0
	movl	$0, -44(%ebp)
	.loc 1 3188 0
	cmpl	$0, 12(%ebp)
	jne	.L1428
	.loc 1 3190 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1430
	.loc 1 3191 0
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1430:
	.loc 1 3192 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, 12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%ebp)
.L1428:
	.loc 1 3199 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, 8(%ebp)
	.loc 1 3203 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L1432
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L1432
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L1432
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1432
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1432
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1438
.L1432:
	.loc 1 3209 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1439
.L1438:
	.loc 1 3218 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3219 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3220 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1440
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1442
.L1440:
	.loc 1 3225 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1443
	.loc 1 3226 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	decay_conversion@PLT
	movl	%eax, 12(%ebp)
.L1443:
	.loc 1 3227 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1445
	.loc 1 3228 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	decay_conversion@PLT
	movl	%eax, 16(%ebp)
.L1445:
	.loc 1 3229 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3230 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3242 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-67, %al
	sete	%al
	movzbl	%al, %edx
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-67, %al
	sete	%al
	movzbl	%al, %eax
	xorl	%edx, %eax
	testb	%al, %al
	je	.L1447
	.loc 1 3244 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-67, %al
	jne	.L1449
	movl	-36(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1451
.L1449:
	movl	-40(%ebp), %eax
	movl	%eax, -76(%ebp)
.L1451:
	movl	-76(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1452
.L1447:
	.loc 1 3246 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1453
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1453
	.loc 1 3247 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3246 0
	jmp	.L1452
.L1453:
	.loc 1 3250 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1456
	movl	12(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1458
.L1456:
	movl	16(%ebp), %eax
	movl	%eax, -72(%ebp)
.L1458:
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3252 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1439
.L1452:
	.loc 1 3255 0
	movl	$0, -24(%ebp)
	.loc 1 3256 0
	jmp	.L1459
.L1442:
	.loc 1 3263 0
	movl	$0, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L1460
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1462
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1464
.L1462:
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1465
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1465
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1465
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1465
	movl	-40(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1465
.L1464:
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1470
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1460
.L1470:
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1465
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1465
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1465
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1465
	movl	-36(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1460
.L1465:
.LBB34:
	.loc 1 3266 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	conditional_conversion
	movl	%eax, -16(%ebp)
	.loc 1 3267 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	conditional_conversion
	movl	%eax, -12(%ebp)
	.loc 1 3278 0
	cmpl	$0, -16(%ebp)
	je	.L1476
	movl	-16(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1476
	cmpl	$0, -12(%ebp)
	je	.L1476
	movl	-12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1480
.L1476:
	cmpl	$0, -16(%ebp)
	je	.L1481
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-24, %al
	je	.L1480
.L1481:
	cmpl	$0, -12(%ebp)
	je	.L1483
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-24, %al
	jne	.L1483
.L1480:
	.loc 1 3283 0
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3284 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1439
.L1483:
	.loc 1 3286 0
	cmpl	$0, -16(%ebp)
	je	.L1485
	movl	-16(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1485
	.loc 1 3288 0
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_like_real
	movl	%eax, 12(%ebp)
	.loc 1 3289 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3297 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L1488
	.loc 1 3298 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, 12(%ebp)
.L1488:
	.loc 1 3299 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3286 0
	jmp	.L1460
.L1485:
	.loc 1 3301 0
	cmpl	$0, -12(%ebp)
	je	.L1460
	movl	-12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1460
	.loc 1 3303 0
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_like_real
	movl	%eax, 16(%ebp)
	.loc 1 3304 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, 16(%ebp)
	.loc 1 3305 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L1492
	.loc 1 3306 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, 16(%ebp)
.L1492:
	.loc 1 3307 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L1460:
.LBE34:
	.loc 1 3315 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	real_lvalue_p@PLT
	testl	%eax, %eax
	je	.L1494
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	real_lvalue_p@PLT
	testl	%eax, %eax
	je	.L1494
	movl	$0, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L1494
	.loc 1 3318 0
	movl	-40(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3319 0
	jmp	.L1459
.L1494:
	.loc 1 3329 0
	movl	$0, -24(%ebp)
	.loc 1 3330 0
	movl	$0, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L1498
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1500
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1502
.L1500:
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1503
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1503
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1503
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1503
	movl	-40(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1503
.L1502:
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1508
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1498
.L1508:
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1503
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1503
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1503
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1503
	movl	-36(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1498
.L1503:
.LBB35:
	.loc 1 3339 0
	movl	12(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 3340 0
	movl	16(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 3341 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 3342 0
	movl	operator_name_info@GOT(%ebx), %eax
	movl	832(%eax), %edx
	movl	$3, 20(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$117, 8(%esp)
	movl	$52, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	add_builtin_candidates
	.loc 1 3353 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	any_viable
	testl	%eax, %eax
	jne	.L1514
	.loc 1 3355 0
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$117, 4(%esp)
	movl	$52, (%esp)
	call	op_error
	.loc 1 3356 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	print_z_candidates
	.loc 1 3357 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1439
.L1514:
	.loc 1 3359 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	splice_viable
	movl	%eax, -44(%ebp)
	.loc 1 3360 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	tourney
	movl	%eax, -20(%ebp)
	.loc 1 3361 0
	cmpl	$0, -20(%ebp)
	jne	.L1516
	.loc 1 3363 0
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$117, 4(%esp)
	movl	$52, (%esp)
	call	op_error
	.loc 1 3364 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	print_z_candidates
	.loc 1 3365 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1439
.L1516:
	.loc 1 3373 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3374 0
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_like_real
	movl	%eax, 8(%ebp)
	.loc 1 3375 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3376 0
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_like_real
	movl	%eax, 12(%ebp)
	.loc 1 3377 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3378 0
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_like_real
	movl	%eax, 16(%ebp)
.L1498:
.LBE35:
	.loc 1 3395 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	force_rvalue@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3396 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3398 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	force_rvalue@PLT
	movl	%eax, 16(%ebp)
	.loc 1 3399 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3401 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L1518
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L1520
.L1518:
	.loc 1 3402 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1439
.L1520:
	.loc 1 3410 0
	movl	$0, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L1521
	.loc 1 3411 0
	movl	-40(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1523
.L1521:
	.loc 1 3417 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1524
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1524
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L1524
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1528
.L1524:
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1529
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1529
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L1529
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1528
.L1529:
	.loc 1 3423 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	type_after_usual_arithmetic_conversions@PLT
	movl	%eax, -28(%ebp)
	.loc 1 3426 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1533
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1533
	.loc 1 3428 0
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 3426 0
	jmp	.L1536
.L1533:
	.loc 1 3430 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1536
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1538
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	type_promotes_to@PLT
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L1540
.L1538:
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1536
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	type_promotes_to@PLT
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L1536
.L1540:
	.loc 1 3435 0
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1536:
	.loc 1 3437 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	perform_implicit_conversion@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3438 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	perform_implicit_conversion@PLT
	movl	%eax, 16(%ebp)
	.loc 1 3417 0
	jmp	.L1523
.L1528:
	.loc 1 3456 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	null_ptr_cst_p@PLT
	testl	%eax, %eax
	je	.L1542
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1544
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L1546
.L1544:
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1547
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L1546
.L1547:
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1542
	movl	-36(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1542
	movl	-36(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1546
.L1542:
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	null_ptr_cst_p@PLT
	testl	%eax, %eax
	je	.L1551
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1553
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L1546
.L1553:
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1555
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L1546
.L1555:
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1551
	movl	-40(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1551
	movl	-40(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1546
.L1551:
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1559
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L1559
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1559
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L1546
.L1559:
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1563
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L1563
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1563
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L1546
.L1563:
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1523
	movl	-40(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1523
	movl	-40(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1523
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1523
	movl	-36(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1523
	movl	-36(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1523
.L1546:
	.loc 1 3467 0
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	composite_pointer_type@PLT
	movl	%eax, -28(%ebp)
	.loc 1 3469 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	perform_implicit_conversion@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3470 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	perform_implicit_conversion@PLT
	movl	%eax, 16(%ebp)
.L1523:
	.loc 1 3473 0
	cmpl	$0, -28(%ebp)
	jne	.L1459
	.loc 1 3475 0
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3476 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1439
.L1459:
	.loc 1 3480 0
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3484 0
	cmpl	$0, -24(%ebp)
	jne	.L1573
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1575
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1575
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1575
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1575
	movl	-28(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1573
.L1575:
	.loc 1 3485 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	build_target_expr_with_type@PLT
	movl	%eax, -32(%ebp)
.L1573:
	.loc 1 3489 0
	cmpl	$0, -24(%ebp)
	jne	.L1580
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	real_lvalue_p@PLT
	testl	%eax, %eax
	je	.L1580
	.loc 1 3490 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$118, (%esp)
	call	build1@PLT
	movl	%eax, -32(%ebp)
.L1580:
	.loc 1 3492 0
	movl	-32(%ebp), %eax
	movl	%eax, -80(%ebp)
.L1439:
	movl	-80(%ebp), %eax
	.loc 1 3493 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE61:
	.size	build_conditional_expr, .-build_conditional_expr
	.section	.rodata
	.type	__FUNCTION__.20207, @object
	.size	__FUNCTION__.20207, 13
__FUNCTION__.20207:
	.string	"build_new_op"
	.align 4
.LC42:
	.string	"`%D' must be declared before use"
	.align 4
.LC43:
	.string	"no `%D(int)' declared for postfix `%s', trying prefix operator instead"
.LC44:
	.string	"ambiguous overload"
	.align 4
.LC45:
	.string	"using synthesized `%#D' for copy assignment"
	.align 4
.LC46:
	.string	"  where cfront would use `%#D'"
	.align 4
.LC47:
	.string	"comparison between `%#T' and `%#T'"
.LC48:
	.string	"unary *"
	.text
.globl build_new_op
	.type	build_new_op, @function
build_new_op:
.LFB62:
	.loc 1 3500 0
	pushl	%ebp
.LCFI186:
	movl	%esp, %ebp
.LCFI187:
	pushl	%esi
.LCFI188:
	pushl	%ebx
.LCFI189:
	subl	$176, %esp
.LCFI190:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3501 0
	movl	$0, -64(%ebp)
	.loc 1 3502 0
	movl	$0, -52(%ebp)
	.loc 1 3503 0
	movl	$117, -40(%ebp)
	.loc 1 3507 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L1585
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	20(%ebp), %eax
	je	.L1585
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	24(%ebp), %eax
	jne	.L1588
.L1585:
	.loc 1 3510 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1589
.L1588:
	.loc 1 3514 0
	cmpl	$99, 8(%ebp)
	jne	.L1590
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1590
	.loc 1 3516 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3517 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1589
.L1590:
	.loc 1 3520 0
	cmpl	$49, 8(%ebp)
	jne	.L1593
	.loc 1 3522 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	.loc 1 3523 0
	movl	$0, 24(%ebp)
	.loc 1 3524 0
	movl	-40(%ebp), %eax
	movl	assignment_operator_name_info@GOT(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1595
.L1593:
	.loc 1 3527 0
	movl	8(%ebp), %eax
	movl	operator_name_info@GOT(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	movl	%eax, -44(%ebp)
.L1595:
	.loc 1 3529 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L1596
	.loc 1 3530 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 16(%ebp)
.L1596:
	.loc 1 3531 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, 16(%ebp)
	.loc 1 3532 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1598
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1600
.L1598:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1601
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1601
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1601
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1601
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1600
.L1601:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	shrb	$2, %al
	andl	$3, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1600
	.loc 1 3535 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	instantiate_class_template@PLT
.L1600:
	.loc 1 3537 0
	movl	8(%ebp), %eax
	movl	%eax, -120(%ebp)
	cmpl	$54, -120(%ebp)
	je	.L1608
	cmpl	$54, -120(%ebp)
	jb	.L1607
	movl	-120(%ebp), %eax
	subl	$181, %eax
	cmpl	$3, %eax
	ja	.L1607
	.loc 1 3544 0
	leal	__FUNCTION__.20207@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3544, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1608:
	.loc 1 3547 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_object_call
	movl	%eax, -116(%ebp)
	jmp	.L1589
.L1607:
	.loc 1 3553 0
	cmpl	$0, 20(%ebp)
	je	.L1610
	.loc 1 3555 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L1612
	.loc 1 3556 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 20(%ebp)
.L1612:
	.loc 1 3557 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, 20(%ebp)
	.loc 1 3558 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1614
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1610
.L1614:
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1616
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1616
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1616
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1616
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1610
.L1616:
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	shrb	$2, %al
	andl	$3, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1610
	.loc 1 3560 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	instantiate_class_template@PLT
.L1610:
	.loc 1 3562 0
	cmpl	$0, 24(%ebp)
	je	.L1622
	.loc 1 3564 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L1624
	.loc 1 3565 0
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 24(%ebp)
.L1624:
	.loc 1 3566 0
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, 24(%ebp)
	.loc 1 3567 0
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1626
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1622
.L1626:
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1628
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1628
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1628
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1628
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1622
.L1628:
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	shrb	$2, %al
	andl	$3, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1622
	.loc 1 3569 0
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	instantiate_class_template@PLT
.L1622:
	.loc 1 3572 0
	cmpl	$52, 8(%ebp)
	jne	.L1634
	.loc 1 3574 0
	cmpl	$0, 20(%ebp)
	je	.L1636
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1636
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1636
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1640
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1642
.L1640:
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1656
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1656
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1656
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1656
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1656
.L1642:
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1656
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1649
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1651
.L1649:
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1656
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1656
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1656
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1656
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1656
.L1651:
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1636
	jmp	.L1656
.L1634:
	.loc 1 3581 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1657
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1659
.L1657:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1656
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1656
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1656
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1656
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1656
.L1659:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1656
	cmpl	$0, 20(%ebp)
	je	.L1636
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1666
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1668
.L1666:
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1656
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1656
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1656
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1656
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1656
.L1668:
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1636
.L1656:
	.loc 1 3585 0
	cmpl	$134, 8(%ebp)
	je	.L1673
	cmpl	$133, 8(%ebp)
	jne	.L1675
.L1673:
	.loc 1 3586 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 20(%ebp)
.L1675:
	.loc 1 3588 0
	movl	$0, -48(%ebp)
	.loc 1 3589 0
	cmpl	$0, 24(%ebp)
	je	.L1676
	.loc 1 3590 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -48(%ebp)
.L1676:
	.loc 1 3591 0
	cmpl	$0, 20(%ebp)
	je	.L1678
	.loc 1 3592 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -48(%ebp)
.L1678:
	.loc 1 3593 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -48(%ebp)
	.loc 1 3595 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_function_nonclass@PLT
	movl	%eax, -56(%ebp)
	.loc 1 3597 0
	cmpl	$0, -56(%ebp)
	je	.L1683
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L1683
	.loc 1 3598 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 3599 0
	jmp	.L1683
.L1684:
.LBB36:
	.loc 1 3601 0
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1685
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L1687
.L1685:
	movl	-56(%ebp), %eax
	movl	%eax, -112(%ebp)
.L1687:
	movl	-112(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3602 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1688
	.loc 1 3603 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 36(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	%edx, 20(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	add_template_candidate
	jmp	.L1690
.L1688:
	.loc 1 3609 0
	movl	12(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	add_function_candidate
.L1690:
.LBE36:
	.loc 1 3599 0
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1691
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -108(%ebp)
	jmp	.L1693
.L1691:
	movl	$0, -108(%ebp)
.L1693:
	movl	-108(%ebp), %eax
	movl	%eax, -56(%ebp)
.L1683:
	cmpl	$0, -56(%ebp)
	jne	.L1684
	.loc 1 3616 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1695
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1695
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1695
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1695
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1700
.L1695:
	.loc 1 3618 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	$1, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_fnfields@PLT
	movl	%eax, -56(%ebp)
	.loc 1 3619 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-56(%ebp), %eax
	jne	.L1703
	.loc 1 3620 0
	movl	-56(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1589
.L1700:
	.loc 1 3623 0
	movl	$0, -56(%ebp)
.L1703:
	.loc 1 3625 0
	cmpl	$0, -56(%ebp)
	je	.L1704
.LBB37:
	.loc 1 3627 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3629 0
	movl	-48(%ebp), %eax
	movl	(%eax), %esi
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_this
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -52(%ebp)
	.loc 1 3630 0
	movl	-56(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1706
.L1707:
.LBB38:
	.loc 1 3632 0
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1708
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -104(%ebp)
	jmp	.L1710
.L1708:
	movl	-56(%ebp), %eax
	movl	%eax, -104(%ebp)
.L1710:
	movl	-104(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3634 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3636 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L1711
	.loc 1 3637 0
	movl	-52(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1713
.L1711:
	.loc 1 3639 0
	movl	-48(%ebp), %eax
	movl	%eax, -20(%ebp)
.L1713:
	.loc 1 3641 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1714
	.loc 1 3643 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %ecx
	movl	$0, 36(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%edx, 20(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	add_template_candidate
	jmp	.L1716
.L1714:
	.loc 1 3650 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	add_function_candidate
.L1716:
.LBE38:
	.loc 1 3630 0
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1717
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1719
.L1717:
	movl	$0, -100(%ebp)
.L1719:
	movl	-100(%ebp), %eax
	movl	%eax, -56(%ebp)
.L1706:
	cmpl	$0, -56(%ebp)
	jne	.L1707
.L1704:
.LBE37:
.LBB39:
	.loc 1 3663 0
	cmpl	$52, 8(%ebp)
	jne	.L1720
	.loc 1 3665 0
	movl	20(%ebp), %eax
	movl	%eax, -76(%ebp)
	.loc 1 3666 0
	movl	24(%ebp), %eax
	movl	%eax, -72(%ebp)
	.loc 1 3667 0
	movl	16(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1722
.L1720:
	.loc 1 3671 0
	movl	16(%ebp), %eax
	movl	%eax, -76(%ebp)
	.loc 1 3672 0
	movl	20(%ebp), %eax
	movl	%eax, -72(%ebp)
	.loc 1 3673 0
	movl	$0, -68(%ebp)
.L1722:
	.loc 1 3676 0
	movl	12(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	add_builtin_candidates
.LBE39:
	.loc 1 3679 0
	movl	8(%ebp), %eax
	movl	%eax, -124(%ebp)
	cmpl	$48, -124(%ebp)
	je	.L1724
	cmpl	$123, -124(%ebp)
	je	.L1724
	jmp	.L1723
.L1724:
	.loc 1 3689 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	any_strictly_viable
	testl	%eax, %eax
	setne	%al
	movb	%al, -9(%ebp)
	.loc 1 3690 0
	jmp	.L1725
.L1723:
	.loc 1 3693 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	any_viable
	testl	%eax, %eax
	setne	%al
	movb	%al, -9(%ebp)
.L1725:
	.loc 1 3697 0
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1726
	.loc 1 3699 0
	movl	8(%ebp), %eax
	movl	%eax, -128(%ebp)
	cmpl	$123, -128(%ebp)
	je	.L1729
	cmpl	$123, -128(%ebp)
	ja	.L1731
	cmpl	$40, -128(%ebp)
	je	.L1729
	cmpl	$48, -128(%ebp)
	je	.L1729
	jmp	.L1728
.L1731:
	movl	-128(%ebp), %eax
	subl	$133, %eax
	cmpl	$1, %eax
	ja	.L1728
	.loc 1 3705 0
	movl	12(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1732
	.loc 1 3706 0
	movl	8(%ebp), %eax
	movl	operator_name_info@GOT(%ebx), %edx
	sall	$4, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1732:
	.loc 1 3709 0
	cmpl	$134, 8(%ebp)
	jne	.L1734
	.loc 1 3710 0
	movl	$132, 8(%ebp)
	jmp	.L1736
.L1734:
	.loc 1 3712 0
	movl	$131, 8(%ebp)
.L1736:
	.loc 1 3713 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_new_op@PLT
	movl	%eax, -116(%ebp)
	jmp	.L1589
.L1729:
	.loc 1 3719 0
	movl	$0, -116(%ebp)
	jmp	.L1589
.L1728:
	.loc 1 3724 0
	movl	12(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1737
	.loc 1 3726 0
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	op_error
	.loc 1 3727 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	print_z_candidates
.L1737:
	.loc 1 3729 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1589
.L1726:
	.loc 1 3731 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	splice_viable
	movl	%eax, -64(%ebp)
	.loc 1 3732 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	tourney
	movl	%eax, -60(%ebp)
	.loc 1 3734 0
	cmpl	$0, -60(%ebp)
	jne	.L1739
	.loc 1 3736 0
	movl	12(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1741
	.loc 1 3738 0
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	op_error
	.loc 1 3739 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	print_z_candidates
.L1741:
	.loc 1 3741 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1589
.L1739:
	.loc 1 3744 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1743
	.loc 1 3747 0
	movl	warn_synth@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1745
	movl	assignment_operator_name_info@GOT(%ebx), %eax
	movl	1872(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L1745
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1745
	movl	-64(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L1745
	movl	-64(%ebp), %eax
	movl	32(%eax), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L1745
	.loc 1 3753 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 3755 0
	movl	-64(%ebp), %eax
	cmpl	%eax, -60(%ebp)
	jne	.L1751
	movl	-64(%ebp), %eax
	movl	32(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L1753
.L1751:
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
.L1753:
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_warning_at@PLT
.L1745:
	.loc 1 3761 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L1754
	movl	-52(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L1756
.L1754:
	movl	-48(%ebp), %eax
	movl	%eax, -92(%ebp)
.L1756:
	movl	$3, 8(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	build_over_call
	movl	%eax, -116(%ebp)
	jmp	.L1589
.L1743:
	.loc 1 3769 0
	movl	8(%ebp), %eax
	subl	$99, %eax
	cmpl	$5, %eax
	ja	.L1757
	.loc 1 3777 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1757
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1757
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	cmpl	%eax, %edx
	je	.L1757
	.loc 1 3782 0
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1757:
	.loc 1 3793 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3794 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-26, %al
	jne	.L1762
	.loc 1 3795 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
.L1762:
	.loc 1 3796 0
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_like_real
	movl	%eax, 16(%ebp)
	.loc 1 3797 0
	cmpl	$0, 20(%ebp)
	je	.L1764
	.loc 1 3799 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3800 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-26, %al
	jne	.L1766
	.loc 1 3801 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
.L1766:
	.loc 1 3802 0
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_like_real
	movl	%eax, 20(%ebp)
.L1764:
	.loc 1 3804 0
	cmpl	$0, 24(%ebp)
	je	.L1636
	.loc 1 3806 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3807 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-26, %al
	jne	.L1769
	.loc 1 3808 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
.L1769:
	.loc 1 3809 0
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_like_real
	movl	%eax, 24(%ebp)
.L1636:
	.loc 1 3813 0
	movl	8(%ebp), %eax
	subl	$40, %eax
	movl	%eax, -132(%ebp)
	cmpl	$146, -132(%ebp)
	ja	.L1771
	movl	-132(%ebp), %eax
	sall	$2, %eax
	movl	.L1780@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1780:
	.long	.L1772@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1773@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1774@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1772@GOTOFF
	.long	.L1775@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1776@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1777@GOTOFF
	.long	.L1777@GOTOFF
	.long	.L1777@GOTOFF
	.long	.L1777@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1777@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1778@GOTOFF
	.long	.L1777@GOTOFF
	.long	.L1777@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1777@GOTOFF
	.long	.L1777@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1777@GOTOFF
	.long	.L1777@GOTOFF
	.long	.L1777@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1778@GOTOFF
	.long	.L1777@GOTOFF
	.long	.L1777@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1778@GOTOFF
	.long	.L1777@GOTOFF
	.long	.L1777@GOTOFF
	.long	.L1777@GOTOFF
	.long	.L1777@GOTOFF
	.long	.L1777@GOTOFF
	.long	.L1777@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1778@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1772@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1778@GOTOFF
	.long	.L1778@GOTOFF
	.long	.L1778@GOTOFF
	.long	.L1778@GOTOFF
	.long	.L1778@GOTOFF
	.long	.L1778@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1779@GOTOFF
	.text
.L1775:
	.loc 1 3816 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, -116(%ebp)
	jmp	.L1589
.L1773:
	.loc 1 3819 0
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, -116(%ebp)
	jmp	.L1589
.L1777:
	.loc 1 3841 0
	movl	$1, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -116(%ebp)
	jmp	.L1589
.L1778:
	.loc 1 3853 0
	movl	-64(%ebp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -116(%ebp)
	jmp	.L1589
.L1774:
	.loc 1 3856 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_array_ref@PLT
	movl	%eax, -116(%ebp)
	jmp	.L1589
.L1776:
	.loc 1 3859 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_conditional_expr@PLT
	movl	%eax, -116(%ebp)
	jmp	.L1589
.L1779:
	.loc 1 3862 0
	movl	$0, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_m_component_ref@PLT
	movl	%eax, -116(%ebp)
	jmp	.L1589
.L1772:
	.loc 1 3869 0
	movl	$0, -116(%ebp)
	jmp	.L1589
.L1771:
	.loc 1 3872 0
	leal	__FUNCTION__.20207@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3872, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1589:
	movl	-116(%ebp), %eax
	.loc 1 3875 0
	addl	$176, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE62:
	.size	build_new_op, .-build_new_op
	.section	.rodata
	.type	__FUNCTION__.20763, @object
	.size	__FUNCTION__.20763, 21
__FUNCTION__.20763:
	.string	"build_op_delete_call"
	.align 4
.LC49:
	.string	"no suitable `operator delete' for `%T'"
	.text
.globl build_op_delete_call
	.type	build_op_delete_call, @function
build_op_delete_call:
.LFB63:
	.loc 1 3894 0
	pushl	%ebp
.LCFI191:
	movl	%esp, %ebp
.LCFI192:
	pushl	%ebx
.LCFI193:
	subl	$84, %esp
.LCFI194:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3895 0
	movl	$0, -48(%ebp)
	.loc 1 3899 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1783
	.loc 1 3900 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1785
.L1783:
	.loc 1 3902 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3903 0
	jmp	.L1786
.L1787:
	.loc 1 3904 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L1786:
	.loc 1 3903 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L1787
	.loc 1 3906 0
	movl	8(%ebp), %eax
	movl	operator_name_info@GOT(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3908 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1789
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1789
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1789
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1789
	movl	-24(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1794
.L1789:
	movl	20(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L1794
	.loc 1 3917 0
	movl	-24(%ebp), %eax
	movl	76(%eax), %edx
	movl	$1, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_fnfields@PLT
	movl	%eax, -44(%ebp)
	.loc 1 3918 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L1798
	.loc 1 3919 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1785
.L1794:
	.loc 1 3922 0
	movl	$0, -44(%ebp)
.L1798:
	.loc 1 3924 0
	cmpl	$0, -44(%ebp)
	jne	.L1799
	.loc 1 3925 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_name_nonclass@PLT
	movl	%eax, -44(%ebp)
.L1799:
	.loc 1 3927 0
	cmpl	$0, 24(%ebp)
	je	.L1801
.LBB40:
	.loc 1 3933 0
	movl	24(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3936 0
	jmp	.L1803
.L1804:
	.loc 1 3937 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
.L1803:
	.loc 1 3936 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$48, %al
	je	.L1804
	.loc 1 3939 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_callee_fndecl@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3940 0
	cmpl	$0, -16(%ebp)
	jne	.L1806
	leal	__FUNCTION__.20763@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3940, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1806:
	.loc 1 3942 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3944 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1808
.L1801:
.LBE40:
	.loc 1 3949 0
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3950 0
	movl	$0, -28(%ebp)
.L1808:
	.loc 1 3954 0
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3960 0
	movl	$0, -20(%ebp)
	jmp	.L1809
.L1810:
	.loc 1 3962 0
	cmpl	$0, -20(%ebp)
	jne	.L1811
	.loc 1 3963 0
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -32(%ebp)
	jmp	.L1813
.L1811:
	.loc 1 3967 0
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -32(%ebp)
.L1813:
	.loc 1 3970 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_function_type@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3974 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L1814
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1816
.L1814:
	movl	-44(%ebp), %eax
	movl	%eax, -72(%ebp)
.L1816:
	movl	-72(%ebp), %edx
	movl	%edx, -48(%ebp)
	.loc 1 3975 0
	jmp	.L1817
.L1818:
.LBB41:
	.loc 1 3982 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1819
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1821
.L1819:
	movl	-48(%ebp), %eax
	movl	%eax, -68(%ebp)
.L1821:
	movl	-68(%ebp), %edx
	movl	4(%edx), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	build_exception_variant@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3986 0
	movl	$8, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L1822
.LBE41:
	.loc 1 3976 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1824
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1826
.L1824:
	movl	$0, -64(%ebp)
.L1826:
	movl	-64(%ebp), %eax
	movl	%eax, -48(%ebp)
.L1817:
	.loc 1 3975 0
	cmpl	$0, -48(%ebp)
	jne	.L1818
.L1822:
	.loc 1 3991 0
	cmpl	$0, -48(%ebp)
	jne	.L1827
	.loc 1 3960 0
	addl	$1, -20(%ebp)
.L1809:
	cmpl	$0, 24(%ebp)
	je	.L1829
	movl	$1, -60(%ebp)
	jmp	.L1831
.L1829:
	movl	$2, -60(%ebp)
.L1831:
	movl	-60(%ebp), %edx
	cmpl	-20(%ebp), %edx
	jg	.L1810
.L1827:
	.loc 1 3996 0
	cmpl	$0, -48(%ebp)
	je	.L1832
	.loc 1 4000 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1834
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1836
.L1834:
	movl	-48(%ebp), %eax
	movl	%eax, -56(%ebp)
.L1836:
	movl	-56(%ebp), %edx
	movl	%edx, -48(%ebp)
	.loc 1 4004 0
	movl	-48(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L1837
	movl	-48(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L1837
	.loc 1 4005 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	enforce_access@PLT
.L1837:
	.loc 1 4007 0
	cmpl	$0, -20(%ebp)
	jne	.L1840
	.loc 1 4008 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -28(%ebp)
	jmp	.L1842
.L1840:
	.loc 1 4010 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -28(%ebp)
.L1842:
	.loc 1 4013 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_call@PLT
	movl	%eax, -76(%ebp)
	jmp	.L1785
.L1832:
	.loc 1 4018 0
	cmpl	$0, 24(%ebp)
	je	.L1843
	.loc 1 4019 0
	movl	$0, -76(%ebp)
	jmp	.L1785
.L1843:
	.loc 1 4021 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4022 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
.L1785:
	movl	-76(%ebp), %eax
	.loc 1 4023 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE63:
	.size	build_op_delete_call, .-build_op_delete_call
	.section	.rodata
.LC50:
	.string	"`%+#D' is private"
.LC51:
	.string	"`%+#D' is protected"
.LC52:
	.string	"`%+#D' is inaccessible"
.LC53:
	.string	"within this context"
	.text
.globl enforce_access
	.type	enforce_access, @function
enforce_access:
.LFB64:
	.loc 1 4033 0
	pushl	%ebp
.LCFI195:
	movl	%esp, %ebp
.LCFI196:
	pushl	%ebx
.LCFI197:
	subl	$36, %esp
.LCFI198:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4036 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	accessible_p@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4037 0
	cmpl	$0, -8(%ebp)
	jne	.L1847
	.loc 1 4039 0
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1849
	.loc 1 4040 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	jmp	.L1851
.L1849:
	.loc 1 4041 0
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1852
	.loc 1 4042 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	jmp	.L1851
.L1852:
	.loc 1 4044 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
.L1851:
	.loc 1 4045 0
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4046 0
	movl	$0, -24(%ebp)
	jmp	.L1854
.L1847:
	.loc 1 4049 0
	movl	$1, -24(%ebp)
.L1854:
	movl	-24(%ebp), %eax
	.loc 1 4050 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE64:
	.size	enforce_access, .-enforce_access
	.section	.rodata
	.type	__FUNCTION__.20919, @object
	.size	__FUNCTION__.20919, 18
__FUNCTION__.20919:
	.string	"convert_like_real"
	.align 4
.LC54:
	.string	"invalid conversion from `%T' to `%T'"
	.align 4
.LC55:
	.string	"  initializing argument %P of `%D'"
.LC56:
	.string	"argument"
	.align 4
.LC57:
	.string	"  initializing argument %P of `%D' from result of `%D'"
	.align 4
.LC58:
	.string	"  initializing temporary from result of `%D'"
.LC59:
	.string	"implicit conversion"
	.text
	.type	convert_like_real, @function
convert_like_real:
.LFB65:
	.loc 1 4063 0
	pushl	%ebp
.LCFI199:
	movl	%esp, %ebp
.LCFI200:
	pushl	%esi
.LCFI201:
	pushl	%ebx
.LCFI202:
	subl	$96, %esp
.LCFI203:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	28(%ebp), %eax
	movb	%al, -60(%ebp)
	.loc 1 4066 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 4068 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1857
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-25, %al
	je	.L1857
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-24, %al
	je	.L1857
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-26, %al
	je	.L1857
.LBB42:
	.loc 1 4073 0
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 4074 0
	jmp	.L1862
.L1863:
	.loc 1 4076 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-25, %al
	je	.L1864
	movl	-40(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1866
.L1864:
	.loc 1 4078 0
	movl	$0, 20(%esp)
	movl	$1, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_like_real
	movl	%eax, 12(%ebp)
	.loc 1 4080 0
	jmp	.L1867
.L1866:
	.loc 1 4082 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-24, %al
	jne	.L1868
	.loc 1 4083 0
	movl	$0, 20(%esp)
	movl	$1, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_like_real
	movl	%eax, -72(%ebp)
	jmp	.L1870
.L1868:
	.loc 1 4085 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-33, %al
	je	.L1867
	.loc 1 4074 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
.L1862:
	cmpl	$0, -40(%ebp)
	jne	.L1863
.L1867:
	.loc 1 4088 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 4089 0
	cmpl	$0, 16(%ebp)
	je	.L1872
	.loc 1 4090 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1872:
	.loc 1 4091 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, -72(%ebp)
	jmp	.L1870
.L1857:
.LBE42:
	.loc 1 4094 0
	cmpb	$0, -60(%ebp)
	je	.L1874
	.loc 1 4095 0
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	dubious_conversion_warnings@PLT
	movl	%eax, 12(%ebp)
.L1874:
	.loc 1 4097 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -68(%ebp)
	cmpl	$231, -68(%ebp)
	je	.L1878
	cmpl	$232, -68(%ebp)
	je	.L1879
	cmpl	$223, -68(%ebp)
	je	.L1877
	jmp	.L1876
.L1878:
.LBB43:
	.loc 1 4101 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 4102 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 4105 0
	movl	-32(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1880
.LBB44:
	.loc 1 4107 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -24(%ebp)
	.loc 1 4108 0
	movl	-32(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 4110 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -28(%ebp)
	.loc 1 4111 0
	movl	-32(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L1882
	movl	-32(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L1884
.L1882:
	.loc 1 4115 0
	leal	__FUNCTION__.20919@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4115, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1884:
	.loc 1 4116 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -28(%ebp)
	jmp	.L1885
.L1880:
.LBE44:
	.loc 1 4119 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_this
	movl	%eax, -28(%ebp)
.L1885:
	.loc 1 4120 0
	movl	$3, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build_over_call
	movl	%eax, 12(%ebp)
	.loc 1 4124 0
	movl	-32(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1886
	.loc 1 4125 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cplus_new@PLT
	movl	%eax, 12(%ebp)
.L1886:
	.loc 1 4135 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1888
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1888
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1888
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1888
	movl	-44(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1893
.L1888:
	cmpl	$0, 24(%ebp)
	jns	.L1894
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	lvalue_p@PLT
	testl	%eax, %eax
	jne	.L1893
.L1894:
	.loc 1 4138 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	224(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 4139 0
	movl	-44(%ebp), %eax
	movl	76(%eax), %esi
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	192(%eax), %eax
	movl	$643, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_special_member_call@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4148 0
	cmpl	$0, 16(%ebp)
	je	.L1896
	.loc 1 4150 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	224(%eax), %eax
	cmpl	-52(%ebp), %eax
	jle	.L1898
	.loc 1 4151 0
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L1902
.L1898:
	.loc 1 4154 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	cmpl	-48(%ebp), %eax
	jle	.L1902
	.loc 1 4155 0
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1902
.L1896:
	.loc 1 4161 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	224(%eax), %eax
	cmpl	-52(%ebp), %eax
	jle	.L1903
	.loc 1 4162 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L1902
.L1903:
	.loc 1 4164 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	cmpl	-48(%ebp), %eax
	jle	.L1902
	.loc 1 4165 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1902:
	.loc 1 4168 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cplus_new@PLT
	movl	%eax, 12(%ebp)
.L1893:
	.loc 1 4170 0
	movl	12(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1870
.L1877:
.LBE43:
	.loc 1 4173 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	type_unknown_p@PLT
	testl	%eax, %eax
	je	.L1906
	.loc 1 4174 0
	movl	$3, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_type@PLT
	movl	%eax, 12(%ebp)
.L1906:
	.loc 1 4175 0
	movl	12(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1870
.L1879:
	.loc 1 4178 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$3, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	build_user_type_conversion@PLT
	movl	%eax, -72(%ebp)
	jmp	.L1870
.L1876:
	.loc 1 4185 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-26, %al
	jne	.L1908
	movl	$-1, -64(%ebp)
	jmp	.L1910
.L1908:
	movl	$1, -64(%ebp)
.L1910:
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	$0, 20(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert_like_real
	movl	%eax, 12(%ebp)
	.loc 1 4188 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1911
	.loc 1 4189 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1870
.L1911:
	.loc 1 4194 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-26, %al
	je	.L1913
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L1913
	.loc 1 4196 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_constant_value@PLT
	movl	%eax, 12(%ebp)
.L1913:
	.loc 1 4198 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$224, %eax
	movl	%eax, -76(%ebp)
	cmpl	$9, -76(%ebp)
	ja	.L1916
	movl	-76(%ebp), %eax
	sall	$2, %eax
	movl	.L1922@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1922:
	.long	.L1917@GOTOFF
	.long	.L1918@GOTOFF
	.long	.L1916@GOTOFF
	.long	.L1916@GOTOFF
	.long	.L1916@GOTOFF
	.long	.L1919@GOTOFF
	.long	.L1920@GOTOFF
	.long	.L1916@GOTOFF
	.long	.L1916@GOTOFF
	.long	.L1921@GOTOFF
	.text
.L1921:
	.loc 1 4201 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1919
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1919
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1919
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1919
	movl	-44(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1919
	.loc 1 4202 0
	movl	12(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1870
.L1919:
	.loc 1 4205 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-27, %al
	jne	.L1928
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1928
.LBB45:
	.loc 1 4209 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4212 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4213 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	perform_implicit_conversion@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4214 0
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4215 0
	movl	12(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1870
.L1928:
.LBE45:
	.loc 1 4221 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	224(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 4222 0
	movl	-44(%ebp), %eax
	movl	76(%eax), %esi
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	192(%eax), %eax
	movl	$131, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_special_member_call@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4226 0
	cmpl	$0, 16(%ebp)
	je	.L1931
	.loc 1 4228 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	224(%eax), %eax
	cmpl	-52(%ebp), %eax
	jle	.L1933
	.loc 1 4229 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L1931
.L1933:
	.loc 1 4230 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	cmpl	-48(%ebp), %eax
	jle	.L1931
	.loc 1 4231 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1931:
	.loc 1 4233 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cplus_new@PLT
	movl	%eax, -72(%ebp)
	jmp	.L1870
.L1920:
.LBB46:
	.loc 1 4237 0
	movl	-44(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4240 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1936
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	non_cast_lvalue_p@PLT
	testl	%eax, %eax
	jne	.L1938
.L1936:
.LBB47:
	.loc 1 4242 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4243 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_target_expr_with_type@PLT
	movl	%eax, 12(%ebp)
.L1938:
.LBE47:
	.loc 1 4248 0
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4249 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1939
	.loc 1 4250 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1870
.L1939:
	.loc 1 4255 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4258 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_nop@PLT
	movl	%eax, -72(%ebp)
	jmp	.L1870
.L1917:
.LBE46:
	.loc 1 4262 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	decay_conversion@PLT
	movl	%eax, -72(%ebp)
	jmp	.L1870
.L1918:
	.loc 1 4266 0
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	string_conv_p@PLT
.L1916:
	.loc 1 4272 0
	movl	$515, 12(%esp)
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	ocp_convert@PLT
	movl	%eax, -72(%ebp)
.L1870:
	movl	-72(%ebp), %eax
	.loc 1 4274 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE65:
	.size	convert_like_real, .-convert_like_real
	.section	.rodata
	.type	__FUNCTION__.21136, @object
	.size	__FUNCTION__.21136, 18
__FUNCTION__.21136:
	.string	"call_builtin_trap"
.LC60:
	.string	"__builtin_trap"
	.text
	.type	call_builtin_trap, @function
call_builtin_trap:
.LFB66:
	.loc 1 4280 0
	pushl	%ebp
.LCFI204:
	movl	%esp, %ebp
.LCFI205:
	pushl	%ebx
.LCFI206:
	subl	$36, %esp
.LCFI207:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4281 0
	movl	$14, 4(%esp)
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4282 0
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	namespace_binding@PLT
	testl	%eax, %eax
	je	.L1943
	.loc 1 4283 0
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	namespace_binding@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4287 0
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_call@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4288 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4289 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1942
.L1943:
	.loc 1 4285 0
	leal	__FUNCTION__.21136@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4285, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1942:
	.loc 1 4290 0
	movl	-24(%ebp), %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE66:
	.size	call_builtin_trap, .-call_builtin_trap
	.section	.rodata
	.align 4
.LC61:
	.string	"cannot pass objects of non-POD type `%#T' through `...'; call will abort at runtime"
	.text
.globl convert_arg_to_ellipsis
	.type	convert_arg_to_ellipsis, @function
convert_arg_to_ellipsis:
.LFB67:
	.loc 1 4299 0
	pushl	%ebp
.LCFI208:
	movl	%esp, %ebp
.LCFI209:
	pushl	%ebx
.LCFI210:
	subl	$20, %esp
.LCFI211:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4300 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L1947
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	120(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L1947
	.loc 1 4304 0
	movl	global_trees@GOT(%ebx), %eax
	movl	120(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4300 0
	jmp	.L1950
.L1947:
	.loc 1 4307 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, 8(%ebp)
.L1950:
	.loc 1 4309 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	require_complete_type@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4311 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L1951
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	pod_type_p@PLT
	testl	%eax, %eax
	jne	.L1951
	.loc 1 4316 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 4319 0
	call	call_builtin_trap
	movl	%eax, 8(%ebp)
.L1951:
	.loc 1 4322 0
	movl	8(%ebp), %eax
	.loc 1 4323 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE67:
	.size	convert_arg_to_ellipsis, .-convert_arg_to_ellipsis
	.section	.rodata
	.align 4
.LC62:
	.string	"cannot receive objects of non-POD type `%#T' through `...'"
	.text
.globl build_x_va_arg
	.type	build_x_va_arg, @function
build_x_va_arg:
.LFB68:
	.loc 1 4331 0
	pushl	%ebp
.LCFI212:
	movl	%esp, %ebp
.LCFI213:
	pushl	%ebx
.LCFI214:
	subl	$20, %esp
.LCFI215:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4332 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1956
	.loc 1 4333 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$135, (%esp)
	call	build_min@PLT
	movl	%eax, -8(%ebp)
	jmp	.L1958
.L1956:
	.loc 1 4335 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type_or_diagnostic@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4337 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L1959
	cmpl	$0, 12(%ebp)
	jne	.L1961
.L1959:
	.loc 1 4338 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1958
.L1961:
	.loc 1 4340 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	pod_type_p@PLT
	testl	%eax, %eax
	jne	.L1962
	.loc 1 4343 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1962:
	.loc 1 4347 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_va_arg@PLT
	movl	%eax, -8(%ebp)
.L1958:
	movl	-8(%ebp), %eax
	.loc 1 4348 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE68:
	.size	build_x_va_arg, .-build_x_va_arg
.globl cxx_type_promotes_to
	.type	cxx_type_promotes_to, @function
cxx_type_promotes_to:
.LFB69:
	.loc 1 4357 0
	pushl	%ebp
.LCFI216:
	movl	%esp, %ebp
.LCFI217:
	pushl	%ebx
.LCFI218:
	subl	$36, %esp
.LCFI219:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4360 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1966
	.loc 1 4361 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -24(%ebp)
	jmp	.L1968
.L1966:
	.loc 1 4363 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1969
	.loc 1 4364 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -24(%ebp)
	jmp	.L1968
.L1969:
	.loc 1 4366 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	type_promotes_to@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4367 0
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L1971
	.loc 1 4368 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L1971:
	.loc 1 4370 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1968:
	movl	-24(%ebp), %eax
	.loc 1 4371 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE69:
	.size	cxx_type_promotes_to, .-cxx_type_promotes_to
	.section	.rodata
.LC63:
	.string	"default argument"
	.text
.globl convert_default_arg
	.type	convert_default_arg, @function
convert_default_arg:
.LFB70:
	.loc 1 4383 0
	pushl	%ebp
.LCFI220:
	movl	%esp, %ebp
.LCFI221:
	pushl	%ebx
.LCFI222:
	subl	$36, %esp
.LCFI223:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4384 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-54, %al
	jne	.L1975
	.loc 1 4396 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	unprocessed_defarg_fn@PLT
	.loc 1 4401 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, -8(%ebp)
	jmp	.L1977
.L1975:
	.loc 1 4404 0
	cmpl	$0, 16(%ebp)
	je	.L1978
	movl	16(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L1978
	.loc 1 4405 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_default_argument@PLT
	movl	%eax, 12(%ebp)
.L1978:
	.loc 1 4407 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	break_out_target_exprs@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4409 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L1981
	.loc 1 4411 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	digest_init@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4412 0
	movl	20(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$3, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	convert_for_initialization@PLT
	movl	%eax, 12(%ebp)
	jmp	.L1983
.L1981:
	.loc 1 4418 0
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1984
	.loc 1 4419 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, 12(%ebp)
.L1984:
	.loc 1 4421 0
	movl	20(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$3, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	convert_for_initialization@PLT
	movl	%eax, 12(%ebp)
	.loc 1 4423 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_for_arg_passing@PLT
	movl	%eax, 12(%ebp)
.L1983:
	.loc 1 4426 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L1977:
	movl	-8(%ebp), %eax
	.loc 1 4427 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE70:
	.size	convert_default_arg, .-convert_default_arg
.globl type_passed_as
	.type	type_passed_as, @function
type_passed_as:
.LFB71:
	.loc 1 4435 0
	pushl	%ebp
.LCFI224:
	movl	%esp, %ebp
.LCFI225:
	pushl	%ebx
.LCFI226:
	subl	$4, %esp
.LCFI227:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4437 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1988
	.loc 1 4438 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_reference_type@PLT
	movl	%eax, 8(%ebp)
	jmp	.L1990
.L1988:
	.loc 1 4439 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1991
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1991
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1991
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1990
.L1991:
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L1990
	.loc 1 4442 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L1990:
	.loc 1 4444 0
	movl	8(%ebp), %eax
	.loc 1 4445 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE71:
	.size	type_passed_as, .-type_passed_as
.globl convert_for_arg_passing
	.type	convert_for_arg_passing, @function
convert_for_arg_passing:
.LFB72:
	.loc 1 4452 0
	pushl	%ebp
.LCFI228:
	movl	%esp, %ebp
.LCFI229:
	pushl	%ebx
.LCFI230:
	subl	$20, %esp
.LCFI231:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4453 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L1998
	.loc 1 4456 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2000
	.loc 1 4457 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_reference_type@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, 12(%ebp)
	jmp	.L1998
.L2000:
	.loc 1 4458 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L2002
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L2002
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L2002
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1998
.L2002:
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L1998
	.loc 1 4461 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, 12(%ebp)
.L1998:
	.loc 1 4462 0
	movl	12(%ebp), %eax
	.loc 1 4463 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE72:
	.size	convert_for_arg_passing, .-convert_for_arg_passing
	.section	.rodata
	.type	__FUNCTION__.21331, @object
	.size	__FUNCTION__.21331, 16
__FUNCTION__.21331:
	.string	"build_over_call"
	.align 4
.LC64:
	.string	"passing `%T' as `this' argument of `%#D' discards qualifiers"
	.align 4
.LC65:
	.string	"`%T' is not an accessible base of `%T'"
	.text
	.type	build_over_call, @function
build_over_call:
.LFB73:
	.loc 1 4475 0
	pushl	%ebp
.LCFI232:
	movl	%esp, %ebp
.LCFI233:
	pushl	%esi
.LCFI234:
	pushl	%ebx
.LCFI235:
	addl	$-128, %esp
.LCFI236:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4476 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 4477 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 4478 0
	movl	$0, -84(%ebp)
	.loc 1 4479 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 4481 0
	movl	$0, -64(%ebp)
	.loc 1 4482 0
	movl	$0, -60(%ebp)
	.loc 1 4485 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L2009
	.loc 1 4486 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L2011
.L2012:
	.loc 1 4487 0
	movl	-68(%ebp), %eax
	movl	20(%eax), %eax
	movl	16(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	joust
	.loc 1 4486 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
.L2011:
	cmpl	$0, -68(%ebp)
	jne	.L2012
.L2009:
	.loc 1 4489 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L2013
	movl	-92(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L2015
.L2013:
	.loc 1 4490 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	enforce_access@PLT
.L2015:
	.loc 1 4492 0
	cmpl	$0, 12(%ebp)
	je	.L2016
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	je	.L2016
	.loc 1 4493 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, 12(%ebp)
.L2016:
	.loc 1 4494 0
	movl	12(%ebp), %eax
	movl	%eax, -72(%ebp)
	.loc 1 4498 0
	movl	-92(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2019
	.loc 1 4500 0
	movl	-72(%ebp), %eax
	movl	20(%eax), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -84(%ebp)
	.loc 1 4501 0
	movl	-72(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 4502 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 4503 0
	movl	-92(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L2021
	.loc 1 4505 0
	leal	__FUNCTION__.21331@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4505, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2021:
	.loc 1 4506 0
	movl	-92(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L2035
	.loc 1 4508 0
	movl	-72(%ebp), %eax
	movl	20(%eax), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -84(%ebp)
	.loc 1 4510 0
	movl	-72(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 4511 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L2035
.L2019:
	.loc 1 4515 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L2035
.LBB48:
	.loc 1 4517 0
	movl	-80(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 4518 0
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 4522 0
	movl	-64(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2027
	.loc 1 4523 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %edx
	movl	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L2027:
	.loc 1 4532 0
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L2029
	leal	__FUNCTION__.21331@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4532, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2029:
	.loc 1 4534 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L2031
	leal	__FUNCTION__.21331@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4534, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2031:
	.loc 1 4535 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	movl	$1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build_base_path@PLT
	movl	%eax, -48(%ebp)
	.loc 1 4540 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	accessible_base_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L2033
	.loc 1 4542 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2033:
	.loc 1 4548 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_base@PLT
	movl	%eax, -44(%ebp)
	.loc 1 4550 0
	movl	$1, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build_base_path@PLT
	movl	%eax, -48(%ebp)
	.loc 1 4553 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -84(%ebp)
	.loc 1 4554 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 4555 0
	movl	-72(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 4556 0
	addl	$1, -64(%ebp)
	.loc 1 4557 0
	movl	$1, -60(%ebp)
	.loc 1 4560 0
	jmp	.L2035
.L2036:
.LBE48:
.LBB49:
	.loc 1 4563 0
	movl	-80(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 4565 0
	movl	-64(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -76(%ebp)
	.loc 1 4566 0
	movl	-60(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	-72(%ebp), %eax
	movl	20(%eax), %ecx
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_like_real
	movl	%eax, -68(%ebp)
	.loc 1 4569 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_for_arg_passing@PLT
	movl	%eax, -68(%ebp)
	.loc 1 4570 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -84(%ebp)
.LBE49:
	.loc 1 4561 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	-72(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	addl	$1, -64(%ebp)
.L2035:
	.loc 1 4560 0
	cmpl	$0, -72(%ebp)
	je	.L2039
	cmpl	$0, -80(%ebp)
	jne	.L2036
	.loc 1 4574 0
	jmp	.L2039
.L2040:
	.loc 1 4575 0
	movl	-60(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	-80(%ebp), %eax
	movl	16(%eax), %esi
	movl	-80(%ebp), %eax
	movl	20(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ecx, (%esp)
	call	convert_default_arg@PLT
	movl	%eax, %edx
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -84(%ebp)
	.loc 1 4574 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	addl	$1, -64(%ebp)
.L2039:
	cmpl	$0, -80(%ebp)
	je	.L2043
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	-80(%ebp), %eax
	jne	.L2040
	.loc 1 4583 0
	jmp	.L2043
.L2044:
	.loc 1 4584 0
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	convert_arg_to_ellipsis@PLT
	movl	%eax, %edx
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -84(%ebp)
	.loc 1 4583 0
	movl	-72(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
.L2043:
	cmpl	$0, -72(%ebp)
	jne	.L2044
	.loc 1 4589 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, -84(%ebp)
	.loc 1 4591 0
	movl	warn_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2046
	.loc 1 4592 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	check_function_format@PLT
.L2046:
	.loc 1 4598 0
	movl	flag_elide_constructors@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2048
	.loc 1 4600 0
	movl	-88(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	$1, %eax
	jne	.L2050
	movl	-92(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2050
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_fn_p@PLT
	testl	%eax, %eax
	jle	.L2050
.LBB50:
	.loc 1 4604 0
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_artificial_parms_for@PLT
	movl	%eax, -72(%ebp)
	.loc 1 4605 0
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 4608 0
	movl	-72(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 4609 0
	jmp	.L2054
.L2055:
	.loc 1 4612 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
.L2054:
	.loc 1 4609 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L2055
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	je	.L2055
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L2055
	.loc 1 4613 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L2059
	.loc 1 4615 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 4616 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L2063
	.loc 1 4618 0
	movl	$0, -36(%ebp)
	jmp	.L2063
.L2059:
	.loc 1 4621 0
	movl	$0, -36(%ebp)
.L2063:
	.loc 1 4623 0
	cmpl	$0, -36(%ebp)
	je	.L2064
	.loc 1 4624 0
	movl	-36(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L2066
.L2064:
	.loc 1 4626 0
	movl	$0, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, -72(%ebp)
.L2066:
	.loc 1 4630 0
	movl	-92(%ebp), %eax
	movl	56(%eax), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2067
	.loc 1 4631 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used@PLT
.L2067:
	.loc 1 4638 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2069
	.loc 1 4640 0
	movl	-72(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$51, %al
	jne	.L2071
	.loc 1 4641 0
	movl	-72(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	.L2073
.L2071:
	.loc 1 4642 0
	movl	-92(%ebp), %eax
	movl	56(%eax), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2048
	movl	-92(%ebp), %eax
	movl	56(%eax), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2048
	.loc 1 4643 0
	movl	-92(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	build_target_expr_with_type@PLT
	movl	%eax, -112(%ebp)
	jmp	.L2073
.L2069:
	.loc 1 4645 0
	movl	-72(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$51, %al
	je	.L2078
	movl	-92(%ebp), %eax
	movl	56(%eax), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2048
	movl	-92(%ebp), %eax
	movl	56(%eax), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2048
.L2078:
.LBB51:
	.loc 1 4650 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, (%esp)
	call	stabilize_reference@PLT
	movl	%eax, -28(%ebp)
	.loc 1 4652 0
	movl	-92(%ebp), %eax
	movl	56(%eax), %edx
	movl	-72(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$50, (%esp)
	call	build@PLT
	movl	%eax, -68(%ebp)
	.loc 1 4653 0
	movl	$0, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -32(%ebp)
	.loc 1 4656 0
	movl	-32(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 4657 0
	movl	-32(%ebp), %ecx
	movl	%ecx, -112(%ebp)
	jmp	.L2073
.L2050:
.LBE51:
.LBE50:
	.loc 1 4660 0
	movl	-92(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2048
	movl	-92(%ebp), %eax
	movl	136(%eax), %eax
	movl	40(%eax), %eax
	cmpl	$117, %eax
	jne	.L2048
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_fn_p@PLT
	testl	%eax, %eax
	je	.L2048
	movl	-92(%ebp), %eax
	movl	56(%eax), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2048
	movl	-92(%ebp), %eax
	movl	56(%eax), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2048
.LBB52:
	.loc 1 4665 0
	movl	-84(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, (%esp)
	call	stabilize_reference@PLT
	movl	%eax, -24(%ebp)
	.loc 1 4667 0
	movl	-84(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, -72(%ebp)
	.loc 1 4668 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-72(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$49, (%esp)
	call	build@PLT
	movl	%eax, -68(%ebp)
	.loc 1 4669 0
	movl	-68(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	.L2073
.L2048:
.LBE52:
	.loc 1 4672 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used@PLT
	.loc 1 4674 0
	movl	-92(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	je	.L2086
	movl	16(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L2086
.LBB53:
	.loc 1 4676 0
	movl	-84(%ebp), %eax
	addl	$20, %eax
	movl	%eax, -16(%ebp)
	.loc 1 4679 0
	movl	-92(%ebp), %eax
	movl	56(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_base@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4680 0
	cmpl	$0, -12(%ebp)
	je	.L2089
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L2089
	movl	$1, -108(%ebp)
	jmp	.L2092
.L2089:
	movl	$0, -108(%ebp)
.L2092:
	cmpl	$0, -108(%ebp)
	jne	.L2093
	leal	__FUNCTION__.21331@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4680, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2093:
	.loc 1 4682 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	$1, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	build_base_path@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4683 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2095
	.loc 1 4684 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
.L2095:
	.loc 1 4685 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4686 0
	movl	-92(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L2097
	movl	-92(%ebp), %eax
	movl	56(%eax), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L2097
	.loc 1 4687 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	build_java_interface_fn_ref
	movl	%eax, -92(%ebp)
	.loc 1 4686 0
	jmp	.L2100
.L2097:
	.loc 1 4689 0
	movl	-92(%ebp), %eax
	movl	124(%eax), %esi
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	build_vfn_ref@PLT
	movl	%eax, -92(%ebp)
.L2100:
	.loc 1 4690 0
	movl	-92(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 4674 0
	jmp	.L2101
.L2086:
.LBE53:
	.loc 1 4692 0
	movl	-92(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2102
	.loc 1 4693 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	inline_conversion@PLT
	movl	%eax, -92(%ebp)
	jmp	.L2101
.L2102:
	.loc 1 4695 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	build_addr_func@PLT
	movl	%eax, -92(%ebp)
.L2101:
	.loc 1 4697 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cxx_call@PLT
	movl	%eax, -112(%ebp)
.L2073:
	movl	-112(%ebp), %eax
	.loc 1 4698 0
	subl	$-128, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE73:
	.size	build_over_call, .-build_over_call
.globl build_cxx_call
	.type	build_cxx_call, @function
build_cxx_call:
.LFB74:
	.loc 1 4707 0
	pushl	%ebp
.LCFI237:
	movl	%esp, %ebp
.LCFI238:
	pushl	%ebx
.LCFI239:
	subl	$36, %esp
.LCFI240:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4713 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L2106
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L2106
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	je	.L2106
.LBB54:
	.loc 1 4718 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_tree_builtin@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4719 0
	cmpl	$0, -8(%ebp)
	je	.L2106
	.loc 1 4720 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2111
.L2106:
.LBE54:
	.loc 1 4723 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_call@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4726 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_callee_fndecl@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4727 0
	cmpl	$0, -12(%ebp)
	je	.L2112
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2114
.L2112:
	call	at_function_scope_p@PLT
	testl	%eax, %eax
	je	.L2114
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2114
	.loc 1 4730 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %edx
	movzbl	72(%edx), %eax
	orl	$1, %eax
	movb	%al, 72(%edx)
.L2114:
	.loc 1 4734 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4736 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L2117
	.loc 1 4737 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2111
.L2117:
	.loc 1 4739 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	require_complete_type@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4740 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2119
	.loc 1 4741 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2111
.L2119:
	.loc 1 4743 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2121
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2121
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2121
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2121
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2126
.L2121:
	.loc 1 4744 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_cplus_new@PLT
	movl	%eax, 8(%ebp)
.L2126:
	.loc 1 4745 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, -24(%ebp)
.L2111:
	movl	-24(%ebp), %eax
	.loc 1 4746 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE74:
	.size	build_cxx_call, .-build_cxx_call
	.section	.rodata
.LC66:
	.string	"_Jv_LookupInterfaceMethodIdx"
.LC67:
	.string	"class$"
	.align 4
.LC68:
	.string	"could not find class$ field in java interface type `%T'"
	.text
	.type	build_java_interface_fn_ref, @function
build_java_interface_fn_ref:
.LFB75:
	.loc 1 4757 0
	pushl	%ebp
.LCFI241:
	movl	%esp, %ebp
.LCFI242:
	pushl	%esi
.LCFI243:
	pushl	%ebx
.LCFI244:
	subl	$80, %esp
.LCFI245:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4762 0
	movl	java_iface_lookup_fn@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2129
.LBB55:
	.loc 1 4764 0
	call	build_void_list_node@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4768 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4769 0
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_function_type@PLT
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	builtin_function@PLT
	movl	%eax, java_iface_lookup_fn@GOTOFF(%ebx)
.L2129:
.LBE55:
	.loc 1 4777 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %esi
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	build_vtbl_ref@PLT
	movl	%eax, -32(%ebp)
	.loc 1 4781 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4782 0
	movl	$6, 4(%esp)
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_field@PLT
	movl	%eax, -24(%ebp)
	.loc 1 4783 0
	cmpl	$0, -24(%ebp)
	je	.L2131
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L2131
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L2134
.L2131:
	.loc 1 4786 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4788 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L2135
.L2134:
	.loc 1 4790 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, -24(%ebp)
	.loc 1 4793 0
	movl	$1, -20(%ebp)
	.loc 1 4794 0
	movl	-28(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L2136
.L2137:
	.loc 1 4796 0
	movl	-40(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2138
	.loc 1 4798 0
	movl	8(%ebp), %eax
	cmpl	-40(%ebp), %eax
	je	.L2140
	.loc 1 4800 0
	addl	$1, -20(%ebp)
.L2138:
	.loc 1 4794 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L2136:
	cmpl	$0, -40(%ebp)
	jne	.L2137
.L2140:
	.loc 1 4802 0
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -36(%ebp)
	.loc 1 4804 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -48(%ebp)
	.loc 1 4807 0
	movl	java_iface_lookup_fn@GOTOFF(%ebx), %esi
	movl	java_iface_lookup_fn@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, -44(%ebp)
	.loc 1 4810 0
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %edx
	movl	$0, 16(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$54, (%esp)
	call	build@PLT
	movl	%eax, -60(%ebp)
.L2135:
	movl	-60(%ebp), %eax
	.loc 1 4811 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE75:
	.size	build_java_interface_fn_ref, .-build_java_interface_fn_ref
	.section	.rodata
	.type	__FUNCTION__.21768, @object
	.size	__FUNCTION__.21768, 23
__FUNCTION__.21768:
	.string	"in_charge_arg_for_name"
	.text
.globl in_charge_arg_for_name
	.type	in_charge_arg_for_name, @function
in_charge_arg_for_name:
.LFB76:
	.loc 1 4819 0
	pushl	%ebp
.LCFI246:
	movl	%esp, %ebp
.LCFI247:
	pushl	%ebx
.LCFI248:
	subl	$20, %esp
.LCFI249:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4820 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	196(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2144
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	208(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2146
.L2144:
	.loc 1 4822 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2147
.L2146:
	.loc 1 4823 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	192(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2148
	.loc 1 4824 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2147
.L2148:
	.loc 1 4825 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	204(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2150
	.loc 1 4826 0
	movl	integer_two_node@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2147
.L2150:
	.loc 1 4827 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	212(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2152
	.loc 1 4828 0
	movl	integer_three_node@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2147
.L2152:
	.loc 1 4832 0
	leal	__FUNCTION__.21768@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4832, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2147:
	movl	-8(%ebp), %eax
	.loc 1 4834 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE76:
	.size	in_charge_arg_for_name, .-in_charge_arg_for_name
	.section	.rodata
	.type	__FUNCTION__.21794, @object
	.size	__FUNCTION__.21794, 26
__FUNCTION__.21794:
	.string	"build_special_member_call"
	.text
.globl build_special_member_call
	.type	build_special_member_call, @function
build_special_member_call:
.LFB77:
	.loc 1 4851 0
	pushl	%ebp
.LCFI250:
	movl	%esp, %ebp
.LCFI251:
	pushl	%esi
.LCFI252:
	pushl	%ebx
.LCFI253:
	subl	$48, %esp
.LCFI254:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4856 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	192(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L2156
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	196(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L2156
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	204(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L2156
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	208(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L2156
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	212(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L2156
	movl	assignment_operator_name_info@GOT(%ebx), %eax
	movl	1872(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L2162
.L2156:
	movl	$1, -32(%ebp)
	jmp	.L2163
.L2162:
	movl	$0, -32(%ebp)
.L2163:
	cmpl	$0, -32(%ebp)
	jne	.L2164
	leal	__FUNCTION__.21794@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4862, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2164:
	.loc 1 4863 0
	cmpl	$0, 20(%ebp)
	jne	.L2166
	leal	__FUNCTION__.21794@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4863, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2166:
	.loc 1 4865 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4868 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	192(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L2168
	cmpl	$0, 8(%ebp)
	jne	.L2168
	.loc 1 4870 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4871 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 4872 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4868 0
	jmp	.L2171
.L2168:
	.loc 1 4876 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	204(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L2172
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	208(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L2172
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	212(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L2175
.L2172:
	.loc 1 4879 0
	cmpl	$0, 16(%ebp)
	je	.L2175
	leal	__FUNCTION__.21794@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4879, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2175:
	.loc 1 4886 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L2171
	.loc 1 4888 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_base_statically@PLT
	movl	%eax, 8(%ebp)
.L2171:
	.loc 1 4891 0
	cmpl	$0, 8(%ebp)
	jne	.L2179
	leal	__FUNCTION__.21794@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4891, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2179:
	.loc 1 4894 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	complete_type_or_diagnostic@PLT
	testl	%eax, %eax
	jne	.L2181
	.loc 1 4895 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2183
.L2181:
	.loc 1 4897 0
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_fnfields@PLT
	movl	%eax, -24(%ebp)
	.loc 1 4902 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	196(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L2184
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	208(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L2186
.L2184:
	movl	-20(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2186
.LBB56:
	.loc 1 4912 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	92(%eax), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4913 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	decay_conversion@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4914 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	40(%eax), %esi
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %ecx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	36(%eax), %edx
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$103, (%esp)
	call	build@PLT
	movl	%eax, %ecx
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4919 0
	movl	20(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2188
	.loc 1 4920 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, 20(%ebp)
.L2188:
	.loc 1 4921 0
	movl	20(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L2190
	leal	__FUNCTION__.21794@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4921, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2190:
	.loc 1 4922 0
	movl	20(%ebp), %eax
	movl	52(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4925 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, 16(%ebp)
.L2186:
.LBE56:
	.loc 1 4928 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_new_method_call@PLT
	movl	%eax, -28(%ebp)
.L2183:
	movl	-28(%ebp), %eax
	.loc 1 4931 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE77:
	.size	build_special_member_call, .-build_special_member_call
	.section	.rodata
	.type	__FUNCTION__.21922, @object
	.size	__FUNCTION__.21922, 22
__FUNCTION__.21922:
	.string	"build_new_method_call"
.LC69:
	.string	"call to non-function `%D'"
	.align 4
.LC70:
	.string	"no matching function for call to `%T::%D(%A)%#V'"
	.align 4
.LC71:
	.string	"abstract virtual `%#D' called from constructor"
	.align 4
.LC72:
	.string	"abstract virtual `%#D' called from destructor"
	.align 4
.LC73:
	.string	"cannot call member function `%D' without object"
	.text
.globl build_new_method_call
	.type	build_new_method_call, @function
build_new_method_call:
.LFB78:
	.loc 1 4938 0
	pushl	%ebp
.LCFI255:
	movl	%esp, %ebp
.LCFI256:
	pushl	%ebx
.LCFI257:
	subl	$164, %esp
.LCFI258:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4939 0
	movl	$0, -72(%ebp)
	.loc 1 4940 0
	movl	$0, -64(%ebp)
	.loc 1 4941 0
	movl	$0, -60(%ebp)
	.loc 1 4944 0
	movl	$0, -48(%ebp)
	.loc 1 4948 0
	movl	$0, -24(%ebp)
	.loc 1 4950 0
	cmpl	$0, 8(%ebp)
	jne	.L2194
	leal	__FUNCTION__.21922@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4950, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2194:
	.loc 1 4952 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2196
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L2196
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L2199
.L2196:
	.loc 1 4954 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L2200
.L2199:
	.loc 1 4957 0
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 4958 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_args
	movl	%eax, 16(%ebp)
	.loc 1 4959 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L2201
	.loc 1 4960 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L2200
.L2201:
	.loc 1 4962 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L2203
	.loc 1 4963 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 8(%ebp)
.L2203:
	.loc 1 4964 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2205
	.loc 1 4965 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, 8(%ebp)
.L2205:
	.loc 1 4966 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 4967 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_this
	movl	%eax, -44(%ebp)
	.loc 1 4969 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	je	.L2207
	.loc 1 4971 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	build_field_call
	movl	%eax, -28(%ebp)
	.loc 1 4972 0
	cmpl	$0, -28(%ebp)
	je	.L2209
	.loc 1 4973 0
	movl	-28(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	.L2200
.L2209:
	.loc 1 4974 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4975 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L2200
.L2207:
	.loc 1 4978 0
	cmpl	$0, 20(%ebp)
	jne	.L2211
	.loc 1 4979 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 20(%ebp)
.L2211:
	.loc 1 4980 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 4981 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 4982 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 4984 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L2213
	.loc 1 4986 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 4987 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 4988 0
	movl	$1, -24(%ebp)
.L2213:
	.loc 1 4991 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L2215
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L2215
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L2218
.L2215:
	movl	$1, -112(%ebp)
	jmp	.L2219
.L2218:
	movl	$0, -112(%ebp)
.L2219:
	cmpl	$0, -112(%ebp)
	jne	.L2220
	leal	__FUNCTION__.21922@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4994, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2220:
	.loc 1 4997 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2222
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2222
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2222
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2222
	movl	-60(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L2222
	.loc 1 4999 0
	movl	24(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2228
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-60(%ebp), %eax
	je	.L2228
	.loc 1 5000 0
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2228:
	.loc 1 5003 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L2200
.L2222:
	.loc 1 5006 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_first_fn@PLT
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 5008 0
	movl	-40(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2231
	.loc 1 5012 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	188(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L2233
	leal	__FUNCTION__.21922@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5012, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2233:
	.loc 1 5014 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	200(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L2235
	leal	__FUNCTION__.21922@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5014, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2235:
	.loc 1 5016 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	192(%eax), %eax
	cmpl	-40(%ebp), %eax
	je	.L2237
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	196(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L2239
.L2237:
	.loc 1 5018 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	constructor_name@PLT
	movl	%eax, -36(%ebp)
	.loc 1 5016 0
	jmp	.L2241
.L2239:
	.loc 1 5020 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	200(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L2241
.L2231:
	.loc 1 5023 0
	movl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
.L2241:
	.loc 1 5025 0
	cmpl	$0, 12(%ebp)
	je	.L2242
.LBB57:
	.loc 1 5030 0
	cmpl	$0, 20(%ebp)
	je	.L2244
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -108(%ebp)
	jmp	.L2246
.L2244:
	movl	$0, -108(%ebp)
.L2246:
	movl	-108(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5032 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -48(%ebp)
	.loc 1 5033 0
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2247
.L2248:
.LBB58:
	.loc 1 5035 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L2249
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -104(%ebp)
	jmp	.L2251
.L2249:
	movl	-20(%ebp), %eax
	movl	%eax, -104(%ebp)
.L2251:
	movl	-104(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5039 0
	movl	24(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L2252
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2254
.L2252:
	.loc 1 5043 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L2255
	.loc 1 5044 0
	movl	-48(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2257
.L2255:
	.loc 1 5046 0
	movl	16(%ebp), %eax
	movl	%eax, -8(%ebp)
.L2257:
	.loc 1 5048 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L2258
	.loc 1 5050 0
	movl	$0, 36(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	add_template_candidate
	jmp	.L2254
.L2258:
	.loc 1 5058 0
	cmpl	$0, -24(%ebp)
	jne	.L2254
	.loc 1 5059 0
	movl	24(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	add_function_candidate
.L2254:
.LBE58:
	.loc 1 5033 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L2261
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L2263
.L2261:
	movl	$0, -100(%ebp)
.L2263:
	movl	-100(%ebp), %eax
	movl	%eax, -20(%ebp)
.L2247:
	cmpl	$0, -20(%ebp)
	jne	.L2248
.L2242:
.LBE57:
	.loc 1 5068 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	any_viable
	testl	%eax, %eax
	jne	.L2264
	.loc 1 5071 0
	movl	24(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L2266
	.loc 1 5072 0
	movl	$0, -116(%ebp)
	jmp	.L2200
.L2266:
	.loc 1 5073 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L2268
	.loc 1 5074 0
	movl	$0, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_incomplete_type_diagnostic@PLT
	jmp	.L2270
.L2268:
	.loc 1 5076 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 16(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2270:
	.loc 1 5079 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	print_z_candidates
	.loc 1 5080 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L2200
.L2264:
	.loc 1 5082 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	splice_viable
	movl	%eax, -72(%ebp)
	.loc 1 5083 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	tourney
	movl	%eax, -68(%ebp)
	.loc 1 5085 0
	cmpl	$0, -68(%ebp)
	jne	.L2271
	.loc 1 5087 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 5089 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	print_z_candidates
	.loc 1 5090 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L2200
.L2271:
	.loc 1 5093 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2273
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2275
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2277
.L2275:
	movl	$0, -96(%ebp)
.L2277:
	movl	-96(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L2273
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2279
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2273
.L2279:
	movl	24(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L2273
	movl	-60(%ebp), %eax
	movl	92(%eax), %eax
	movl	44(%eax), %edx
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	value_member@PLT
	testl	%eax, %eax
	je	.L2273
	.loc 1 5099 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2283
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
	jmp	.L2285
.L2283:
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
.L2285:
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2273:
	.loc 1 5103 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L2286
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	is_dummy_object@PLT
	testl	%eax, %eax
	je	.L2286
	.loc 1 5106 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 5107 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L2200
.L2286:
	.loc 1 5110 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	je	.L2289
	movl	24(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L2289
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolves_to_fixed_type_p@PLT
	testl	%eax, %eax
	je	.L2289
	.loc 1 5112 0
	orl	$8, 24(%ebp)
.L2289:
	.loc 1 5114 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L2293
	.loc 1 5115 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	build_over_call
	movl	%eax, -28(%ebp)
	jmp	.L2295
.L2293:
	.loc 1 5118 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	build_over_call
	movl	%eax, -28(%ebp)
	.loc 1 5121 0
	cmpl	$0, 8(%ebp)
	je	.L2295
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2295
	.loc 1 5122 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -28(%ebp)
.L2295:
	.loc 1 5125 0
	movl	-28(%ebp), %eax
	movl	%eax, -116(%ebp)
.L2200:
	movl	-116(%ebp), %eax
	.loc 1 5126 0
	addl	$164, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE78:
	.size	build_new_method_call, .-build_new_method_call
	.type	is_subseq, @function
is_subseq:
.LFB79:
	.loc 1 5134 0
	pushl	%ebp
.LCFI259:
	movl	%esp, %ebp
.LCFI260:
	pushl	%ebx
.LCFI261:
	subl	$20, %esp
.LCFI262:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5139 0
	jmp	.L2300
.L2301:
	.loc 1 5141 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L2300:
	.loc 1 5139 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-23, %al
	je	.L2301
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-32, %al
	je	.L2301
	.loc 1 5145 0
	jmp	.L2318
.L2305:
	.loc 1 5147 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L2304:
.L2318:
	.loc 1 5145 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-23, %al
	je	.L2305
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-32, %al
	je	.L2305
	.loc 1 5149 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-25, %al
	je	.L2308
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-24, %al
	je	.L2308
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-33, %al
	jne	.L2311
.L2308:
	.loc 1 5156 0
	movl	$0, -8(%ebp)
	jmp	.L2312
.L2311:
	.loc 1 5158 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 5160 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	jne	.L2304
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2304
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2304
	.loc 1 5164 0
	movl	$1, -8(%ebp)
.L2312:
	.loc 1 5165 0
	movl	-8(%ebp), %eax
	.loc 1 5166 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE79:
	.size	is_subseq, .-is_subseq
.globl is_properly_derived_from
	.type	is_properly_derived_from, @function
is_properly_derived_from:
.LFB80:
	.loc 1 5175 0
	pushl	%ebp
.LCFI263:
	movl	%esp, %ebp
.LCFI264:
	pushl	%ebx
.LCFI265:
	subl	$36, %esp
.LCFI266:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5176 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2320
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2322
.L2320:
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2323
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L2323
.L2322:
	.loc 1 5178 0
	movl	$0, -12(%ebp)
	jmp	.L2325
.L2323:
	.loc 1 5182 0
	movl	12(%ebp), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L2326
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	je	.L2326
	movl	$1, -8(%ebp)
	jmp	.L2329
.L2326:
	movl	$0, -8(%ebp)
.L2329:
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L2325:
	movl	-12(%ebp), %eax
	.loc 1 5184 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE80:
	.size	is_properly_derived_from, .-is_properly_derived_from
	.type	maybe_handle_implicit_object, @function
maybe_handle_implicit_object:
.LFB81:
	.loc 1 5195 0
	pushl	%ebp
.LCFI267:
	movl	%esp, %ebp
.LCFI268:
	pushl	%ebx
.LCFI269:
	subl	$36, %esp
.LCFI270:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5196 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2338
.LBB59:
	.loc 1 5205 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5211 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5212 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_reference_type@PLT
	movl	%eax, -8(%ebp)
	.loc 1 5214 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-31, %al
	jne	.L2334
	.loc 1 5215 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L2334:
	.loc 1 5216 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-29, %al
	jne	.L2336
	.loc 1 5217 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L2336:
	.loc 1 5218 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$223, (%esp)
	call	build1@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5219 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	direct_reference_binding
	movl	%eax, -12(%ebp)
	.loc 1 5220 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
.L2338:
.LBE59:
	.loc 1 5222 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE81:
	.size	maybe_handle_implicit_object, .-maybe_handle_implicit_object
	.type	maybe_handle_ref_bind, @function
maybe_handle_ref_bind:
.LFB82:
	.loc 1 5231 0
	pushl	%ebp
.LCFI271:
	movl	%esp, %ebp
.LCFI272:
	subl	$20, %esp
.LCFI273:
	.loc 1 5232 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-26, %al
	jne	.L2340
.LBB60:
	.loc 1 5234 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5235 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 5236 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 5237 0
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	-8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	11(%ecx), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 5238 0
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	-8(%ebp), %eax
	movzbl	11(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	11(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 5239 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2342
.L2340:
.LBE60:
	.loc 1 5242 0
	movl	$0, -20(%ebp)
.L2342:
	movl	-20(%ebp), %eax
	.loc 1 5243 0
	leave
	ret
.LFE82:
	.size	maybe_handle_ref_bind, .-maybe_handle_ref_bind
	.type	compare_ics, @function
compare_ics:
.LFB83:
	.loc 1 5255 0
	pushl	%ebp
.LCFI274:
	movl	%esp, %ebp
.LCFI275:
	pushl	%ebx
.LCFI276:
	subl	$116, %esp
.LCFI277:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5260 0
	movl	$0, -52(%ebp)
	.loc 1 5261 0
	movl	$0, -48(%ebp)
	.loc 1 5262 0
	movl	$0, -44(%ebp)
	.loc 1 5263 0
	movl	$0, -40(%ebp)
	.loc 1 5273 0
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_handle_implicit_object
	.loc 1 5274 0
	leal	12(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_handle_implicit_object
	.loc 1 5277 0
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_handle_ref_bind
	movl	%eax, -28(%ebp)
	.loc 1 5278 0
	leal	12(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_handle_ref_bind
	movl	%eax, -24(%ebp)
	.loc 1 5292 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2345
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2347
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2349
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L2351
.L2349:
	movl	$5, -88(%ebp)
.L2351:
	movl	-88(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2352
.L2347:
	movl	$6, -92(%ebp)
.L2352:
	movl	-92(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2353
.L2345:
	movl	$7, -96(%ebp)
.L2353:
	movl	-96(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 5293 0
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2354
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2356
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2358
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L2360
.L2358:
	movl	$5, -76(%ebp)
.L2360:
	movl	-76(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L2361
.L2356:
	movl	$6, -80(%ebp)
.L2361:
	movl	-80(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L2362
.L2354:
	movl	$7, -84(%ebp)
.L2362:
	movl	-84(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 5295 0
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jle	.L2363
	.loc 1 5296 0
	movl	$-1, -72(%ebp)
	jmp	.L2365
.L2363:
	.loc 1 5297 0
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jge	.L2366
	.loc 1 5298 0
	movl	$1, -72(%ebp)
	jmp	.L2365
.L2366:
	.loc 1 5300 0
	cmpl	$7, -36(%ebp)
	jne	.L2368
	.loc 1 5305 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	jg	.L2370
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jle	.L2372
.L2370:
	.loc 1 5307 0
	movl	$-1, -72(%ebp)
	jmp	.L2365
.L2372:
	.loc 1 5308 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	jl	.L2373
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jge	.L2368
.L2373:
	.loc 1 5310 0
	movl	$1, -72(%ebp)
	jmp	.L2365
.L2368:
	.loc 1 5315 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2375
	.loc 1 5317 0
	movl	$0, -72(%ebp)
	jmp	.L2365
.L2375:
	.loc 1 5325 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2377
.LBB61:
	.loc 1 5329 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2379
.L2380:
	.loc 1 5330 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-24, %al
	jne	.L2381
	.loc 1 5331 0
	movl	$0, -72(%ebp)
	jmp	.L2365
.L2381:
	.loc 1 5329 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L2379:
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-25, %al
	jne	.L2380
	.loc 1 5332 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L2384
.L2385:
	.loc 1 5333 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-24, %al
	jne	.L2386
	.loc 1 5334 0
	movl	$0, -72(%ebp)
	jmp	.L2365
.L2386:
	.loc 1 5332 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L2384:
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-25, %al
	jne	.L2385
	.loc 1 5336 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	16(%eax), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L2389
	.loc 1 5337 0
	movl	$0, -72(%ebp)
	jmp	.L2365
.L2389:
	.loc 1 5341 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 5342 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L2391
.L2377:
.LBE61:
	.loc 1 5359 0
	movl	8(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 5360 0
	jmp	.L2392
.L2393:
	.loc 1 5361 0
	movl	-68(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -68(%ebp)
.L2392:
	.loc 1 5360 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-33, %al
	jne	.L2393
	.loc 1 5362 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 5364 0
	movl	12(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 5365 0
	jmp	.L2395
.L2396:
	.loc 1 5366 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
.L2395:
	.loc 1 5365 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-33, %al
	jne	.L2396
	.loc 1 5367 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
.L2391:
	.loc 1 5370 0
	movl	$0, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2398
	.loc 1 5372 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	is_subseq
	testl	%eax, %eax
	je	.L2400
	.loc 1 5373 0
	movl	$1, -72(%ebp)
	jmp	.L2365
.L2400:
	.loc 1 5374 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	is_subseq
	testl	%eax, %eax
	je	.L2398
	.loc 1 5375 0
	movl	$-1, -72(%ebp)
	jmp	.L2365
.L2398:
	.loc 1 5402 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jge	.L2403
	.loc 1 5403 0
	movl	$1, -72(%ebp)
	jmp	.L2365
.L2403:
	.loc 1 5404 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jge	.L2405
	.loc 1 5405 0
	movl	$-1, -72(%ebp)
	jmp	.L2365
.L2405:
	.loc 1 5407 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 5408 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 5410 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2407
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L2407
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2407
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L2407
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2407
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L2407
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2407
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L2407
	.loc 1 5415 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 5416 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 5417 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 5418 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 5410 0
	jmp	.L2416
.L2407:
	.loc 1 5424 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2417
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L2417
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2417
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L2417
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2417
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L2417
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2417
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L2417
	.loc 1 5429 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 5430 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 5431 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 5432 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 5424 0
	jmp	.L2416
.L2417:
	.loc 1 5434 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2416
	movl	-68(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L2416
	movl	-68(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2416
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2416
	movl	-64(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L2416
	movl	-64(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2416
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2416
	movl	-60(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L2416
	movl	-60(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2416
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2416
	movl	-56(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L2416
	movl	-56(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2416
	.loc 1 5439 0
	movl	-68(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 5440 0
	movl	-64(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 5441 0
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 5442 0
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -48(%ebp)
.L2416:
	.loc 1 5445 0
	cmpl	$0, -52(%ebp)
	je	.L2438
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2440
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2438
.L2440:
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2442
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2438
.L2442:
	.loc 1 5457 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L2444
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L2444
	.loc 1 5460 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	is_properly_derived_from@PLT
	testl	%eax, %eax
	je	.L2447
	.loc 1 5462 0
	movl	$-1, -72(%ebp)
	jmp	.L2365
.L2447:
	.loc 1 5463 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	is_properly_derived_from@PLT
	testl	%eax, %eax
	je	.L2476
	.loc 1 5465 0
	movl	$1, -72(%ebp)
	jmp	.L2365
.L2444:
	.loc 1 5467 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L2452
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L2454
.L2452:
	.loc 1 5470 0
	movl	$0, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2476
	.loc 1 5472 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L2457
	.loc 1 5474 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	is_properly_derived_from@PLT
	testl	%eax, %eax
	je	.L2476
	.loc 1 5476 0
	movl	$1, -72(%ebp)
	jmp	.L2365
.L2457:
	.loc 1 5479 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	is_properly_derived_from@PLT
	testl	%eax, %eax
	je	.L2476
	.loc 1 5481 0
	movl	$-1, -72(%ebp)
	jmp	.L2365
.L2454:
	.loc 1 5484 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2462
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2476
.L2462:
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2464
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2476
.L2464:
	.loc 1 5497 0
	movl	$0, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2466
	.loc 1 5499 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	is_properly_derived_from@PLT
	testl	%eax, %eax
	je	.L2468
	.loc 1 5501 0
	movl	$1, -72(%ebp)
	jmp	.L2365
.L2468:
	.loc 1 5502 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	is_properly_derived_from@PLT
	testl	%eax, %eax
	je	.L2476
	.loc 1 5504 0
	movl	$-1, -72(%ebp)
	jmp	.L2365
.L2466:
	.loc 1 5506 0
	movl	$0, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2476
	.loc 1 5508 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	is_properly_derived_from@PLT
	testl	%eax, %eax
	je	.L2473
	.loc 1 5510 0
	movl	$1, -72(%ebp)
	jmp	.L2365
.L2473:
	.loc 1 5511 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	is_properly_derived_from@PLT
	testl	%eax, %eax
	je	.L2476
	.loc 1 5513 0
	movl	$-1, -72(%ebp)
	jmp	.L2365
.L2438:
	.loc 1 5517 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	non_reference
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2477
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	non_reference
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2479
.L2477:
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	non_reference
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2480
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	non_reference
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2480
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	non_reference
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2480
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	non_reference
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2480
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	non_reference
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2479
.L2480:
	movl	$0, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2479
.LBB62:
	.loc 1 5520 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	non_reference
	movl	%eax, -12(%ebp)
	.loc 1 5529 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	is_properly_derived_from@PLT
	testl	%eax, %eax
	je	.L2476
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	is_properly_derived_from@PLT
	testl	%eax, %eax
	je	.L2476
	.loc 1 5532 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	is_properly_derived_from@PLT
	testl	%eax, %eax
	je	.L2489
	.loc 1 5533 0
	movl	$1, -72(%ebp)
	jmp	.L2365
.L2489:
	.loc 1 5534 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	is_properly_derived_from@PLT
	testl	%eax, %eax
	je	.L2476
	.loc 1 5535 0
	movl	$-1, -72(%ebp)
	jmp	.L2365
.L2479:
.LBE62:
	.loc 1 5538 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	non_reference
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2492
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	non_reference
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2476
.L2492:
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	non_reference
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2494
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	non_reference
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2494
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	non_reference
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2494
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	non_reference
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2494
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	non_reference
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2476
.L2494:
	movl	$0, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2476
.LBB63:
	.loc 1 5541 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	non_reference
	movl	%eax, -8(%ebp)
	.loc 1 5550 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	is_properly_derived_from@PLT
	testl	%eax, %eax
	je	.L2476
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	is_properly_derived_from@PLT
	testl	%eax, %eax
	je	.L2476
	.loc 1 5553 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	is_properly_derived_from@PLT
	testl	%eax, %eax
	je	.L2502
	.loc 1 5554 0
	movl	$1, -72(%ebp)
	jmp	.L2365
.L2502:
	.loc 1 5555 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	is_properly_derived_from@PLT
	testl	%eax, %eax
	je	.L2476
	.loc 1 5556 0
	movl	$-1, -72(%ebp)
	jmp	.L2365
.L2476:
.LBE63:
	.loc 1 5566 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-31, %al
	jne	.L2505
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-31, %al
	jne	.L2505
	movl	$0, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2505
	.loc 1 5569 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_cv_qual_signature@PLT
	movl	%eax, -72(%ebp)
	jmp	.L2365
.L2505:
	.loc 1 5579 0
	cmpl	$0, -28(%ebp)
	je	.L2509
	cmpl	$0, -24(%ebp)
	je	.L2509
	movl	-56(%ebp), %eax
	movl	72(%eax), %edx
	movl	-60(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2509
	.loc 1 5581 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_cv_qualification@PLT
	movl	%eax, -72(%ebp)
	jmp	.L2365
.L2509:
	.loc 1 5584 0
	movl	$0, -72(%ebp)
.L2365:
	movl	-72(%ebp), %eax
	.loc 1 5585 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE83:
	.size	compare_ics, .-compare_ics
	.section	.rodata
	.type	__FUNCTION__.22718, @object
	.size	__FUNCTION__.22718, 12
__FUNCTION__.22718:
	.string	"source_type"
	.text
	.type	source_type, @function
source_type:
.LFB84:
	.loc 1 5592 0
	pushl	%ebp
.LCFI278:
	movl	%esp, %ebp
.LCFI279:
	subl	$4, %esp
.LCFI280:
.L2515:
	.loc 1 5595 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-25, %al
	je	.L2516
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-24, %al
	je	.L2516
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-33, %al
	jne	.L2519
.L2516:
	.loc 1 5598 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L2514
.L2519:
	.loc 1 5593 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 5599 0
	jmp	.L2515
.L2514:
	.loc 1 5601 0
	movl	-4(%ebp), %eax
	leave
	ret
.LFE84:
	.size	source_type, .-source_type
	.type	add_warning, @function
add_warning:
.LFB85:
	.loc 1 5610 0
	pushl	%ebp
.LCFI281:
	movl	%esp, %ebp
.LCFI282:
	pushl	%esi
.LCFI283:
	pushl	%ebx
.LCFI284:
	subl	$16, %esp
.LCFI285:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5611 0
	movl	8(%ebp), %eax
	movl	28(%eax), %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_zc_wrapper@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 5614 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE85:
	.size	add_warning, .-add_warning
	.section	.rodata
	.type	__FUNCTION__.22745, @object
	.size	__FUNCTION__.22745, 6
__FUNCTION__.22745:
	.string	"joust"
	.align 4
.LC74:
	.string	"passing `%T' chooses `%T' over `%T'"
.LC75:
	.string	"  in call to `%D'"
.LC76:
	.string	"choosing `%D' over `%D'"
	.align 4
.LC77:
	.string	"  for conversion from `%T' to `%T'"
	.align 4
.LC78:
	.string	"  because conversion sequence for the argument is better"
	.align 4
.LC79:
	.string	"ISO C++ says that `%D' and `%D' are ambiguous even though the worst conversion for the former is better than the worst conversion for the latter"
	.text
	.type	joust, @function
joust:
.LFB86:
	.loc 1 5627 0
	pushl	%ebp
.LCFI286:
	movl	%esp, %ebp
.LCFI287:
	pushl	%esi
.LCFI288:
	pushl	%ebx
.LCFI289:
	subl	$192, %esp
.LCFI290:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5628 0
	movl	$0, -96(%ebp)
	.loc 1 5629 0
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
	.loc 1 5633 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jle	.L2524
	.loc 1 5634 0
	movl	$1, -180(%ebp)
	jmp	.L2526
.L2524:
	.loc 1 5635 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jge	.L2527
	.loc 1 5636 0
	movl	$-1, -180(%ebp)
	jmp	.L2526
.L2527:
	.loc 1 5640 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2529
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	je	.L2531
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L2529
.L2531:
	.loc 1 5642 0
	movl	$1, -180(%ebp)
	jmp	.L2526
.L2529:
	.loc 1 5656 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 5657 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	cmpl	-80(%ebp), %eax
	je	.L2533
	.loc 1 5659 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L2535
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L2535
	.loc 1 5661 0
	movl	$1, -84(%ebp)
	.loc 1 5659 0
	jmp	.L2533
.L2535:
	.loc 1 5662 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L2538
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L2538
	.loc 1 5665 0
	movl	$1, -88(%ebp)
	.loc 1 5666 0
	subl	$1, -80(%ebp)
	.loc 1 5662 0
	jmp	.L2533
.L2538:
	.loc 1 5669 0
	leal	__FUNCTION__.22745@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5669, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2533:
	.loc 1 5672 0
	movl	$0, -92(%ebp)
	jmp	.L2541
.L2542:
.LBB64:
	.loc 1 5674 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-88(%ebp), %eax
	addl	-92(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -76(%ebp)
	.loc 1 5675 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-84(%ebp), %eax
	addl	-92(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -72(%ebp)
	.loc 1 5676 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_ics
	movl	%eax, -68(%ebp)
	.loc 1 5678 0
	cmpl	$0, -68(%ebp)
	je	.L2543
	.loc 1 5680 0
	movl	warn_sign_promo@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2545
	movl	-76(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2547
	movl	-76(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2549
	movl	-76(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2551
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -168(%ebp)
	jmp	.L2553
.L2551:
	movl	$5, -168(%ebp)
.L2553:
	movl	-168(%ebp), %eax
	movl	%eax, -172(%ebp)
	jmp	.L2554
.L2549:
	movl	$6, -172(%ebp)
.L2554:
	movl	-172(%ebp), %esi
	movl	%esi, -176(%ebp)
	jmp	.L2555
.L2547:
	movl	$7, -176(%ebp)
.L2555:
	movl	-72(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2556
	movl	-72(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2558
	movl	-72(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2560
	movl	-72(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -156(%ebp)
	jmp	.L2562
.L2560:
	movl	$5, -156(%ebp)
.L2562:
	movl	-156(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L2563
.L2558:
	movl	$6, -160(%ebp)
.L2563:
	movl	-160(%ebp), %esi
	movl	%esi, -164(%ebp)
	jmp	.L2564
.L2556:
	movl	$7, -164(%ebp)
.L2564:
	movl	-176(%ebp), %eax
	addl	-164(%ebp), %eax
	cmpl	$5, %eax
	jne	.L2545
	movl	-76(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-30, %al
	jne	.L2545
	movl	-72(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-30, %al
	jne	.L2545
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L2545
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L2545
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	jne	.L2545
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L2571
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L2545
.L2571:
.LBB65:
	.loc 1 5692 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 5695 0
	cmpl	$0, -68(%ebp)
	jle	.L2573
	.loc 1 5696 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2575
.L2573:
	.loc 1 5699 0
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
.L2575:
	.loc 1 5702 0
	cmpl	$0, 16(%ebp)
	je	.L2576
	.loc 1 5704 0
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5706 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L2545
.L2576:
	.loc 1 5709 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	add_warning
.L2545:
.LBE65:
	.loc 1 5712 0
	cmpl	$0, -96(%ebp)
	je	.L2578
	movl	-68(%ebp), %eax
	cmpl	-96(%ebp), %eax
	je	.L2578
	.loc 1 5714 0
	movl	$0, -96(%ebp)
	.loc 1 5715 0
	jmp	.L2581
.L2578:
	.loc 1 5717 0
	movl	-68(%ebp), %eax
	movl	%eax, -96(%ebp)
.L2543:
.LBE64:
	.loc 1 5672 0
	addl	$1, -92(%ebp)
.L2541:
	movl	-92(%ebp), %eax
	cmpl	-80(%ebp), %eax
	jl	.L2542
	.loc 1 5724 0
	cmpl	$0, -96(%ebp)
	je	.L2583
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L2583
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	andl	$1, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	shrb	%al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L2586
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2583
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L2583
.L2586:
.LBB66:
	.loc 1 5732 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	compare_ics
	movl	%eax, -44(%ebp)
	.loc 1 5733 0
	movl	-44(%ebp), %eax
	cmpl	-96(%ebp), %eax
	je	.L2583
.LBB67:
	.loc 1 5737 0
	cmpl	$1, -96(%ebp)
	jne	.L2590
	.loc 1 5738 0
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L2592
.L2590:
	.loc 1 5740 0
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -36(%ebp)
.L2592:
	.loc 1 5741 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	56(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	56(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2593
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2593
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2593
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	standard_conversion
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L2593
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-31, %al
	jne	.L2593
	jmp	.L2583
.L2593:
	.loc 1 5750 0
	cmpl	$0, 16(%ebp)
	je	.L2599
	movl	warn_conversion@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2599
.LBB68:
	.loc 1 5752 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	source_type
	movl	%eax, -28(%ebp)
	.loc 1 5753 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2602
	.loc 1 5754 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L2602:
	.loc 1 5755 0
	movl	-36(%ebp), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5756 0
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC77@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5758 0
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5750 0
	jmp	.L2583
.L2599:
.LBE68:
	.loc 1 5761 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	add_warning
.L2583:
.LBE67:
.LBE66:
	.loc 1 5765 0
	cmpl	$0, -96(%ebp)
	je	.L2604
	.loc 1 5766 0
	movl	-96(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	.L2526
.L2604:
	.loc 1 5772 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L2606
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L2606
	.loc 1 5773 0
	movl	$1, -180(%ebp)
	jmp	.L2526
.L2606:
	.loc 1 5774 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L2609
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L2609
	.loc 1 5775 0
	movl	$-1, -180(%ebp)
	jmp	.L2526
.L2609:
	.loc 1 5782 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L2612
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L2612
	.loc 1 5784 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	sete	%al
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	16(%eax), %ecx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	16(%eax), %eax
	movl	%edx, 12(%esp)
	movl	$3, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	more_specialized@PLT
	movl	%eax, -96(%ebp)
	.loc 1 5799 0
	cmpl	$0, -96(%ebp)
	je	.L2612
	.loc 1 5800 0
	movl	-96(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	.L2526
.L2612:
	.loc 1 5811 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L2616
	.loc 1 5813 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	compare_ics
	movl	%eax, -96(%ebp)
	.loc 1 5814 0
	cmpl	$0, -96(%ebp)
	je	.L2616
	.loc 1 5815 0
	movl	-96(%ebp), %esi
	movl	%esi, -180(%ebp)
	jmp	.L2526
.L2616:
	.loc 1 5829 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	je	.L2619
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L2621
.L2619:
	.loc 1 5832 0
	movl	$0, -92(%ebp)
	jmp	.L2622
.L2623:
	.loc 1 5833 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-92(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-92(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2624
	.loc 1 5832 0
	addl	$1, -92(%ebp)
.L2622:
	movl	-92(%ebp), %eax
	cmpl	-80(%ebp), %eax
	jl	.L2623
.L2624:
	.loc 1 5836 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	cmpl	-92(%ebp), %eax
	jne	.L2621
	.loc 1 5838 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2627
	.loc 1 5840 0
	movl	$1, -180(%ebp)
	jmp	.L2526
.L2627:
	.loc 1 5841 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L2629
	.loc 1 5843 0
	movl	$-1, -180(%ebp)
	jmp	.L2526
.L2629:
	.loc 1 5846 0
	movl	$1, -180(%ebp)
	jmp	.L2526
.L2621:
	.loc 1 5852 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L2581
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L2581
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	equal_functions
	testl	%eax, %eax
	je	.L2581
	.loc 1 5854 0
	movl	$1, -180(%ebp)
	jmp	.L2526
.L2581:
	.loc 1 5860 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2634
.LBB69:
	.loc 1 5862 0
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	.loc 1 5863 0
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	.loc 1 5865 0
	movl	$0, -92(%ebp)
	jmp	.L2636
.L2637:
	.loc 1 5867 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-88(%ebp), %eax
	addl	-92(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2638
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-88(%ebp), %eax
	addl	-92(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movzbl	11(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2640
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-88(%ebp), %eax
	addl	-92(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2642
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-88(%ebp), %eax
	addl	-92(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	16(%eax), %eax
	movl	%eax, -144(%ebp)
	jmp	.L2644
.L2642:
	movl	$5, -144(%ebp)
.L2644:
	movl	-144(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	.L2645
.L2640:
	movl	$6, -148(%ebp)
.L2645:
	movl	-148(%ebp), %esi
	movl	%esi, -152(%ebp)
	jmp	.L2646
.L2638:
	movl	$7, -152(%ebp)
.L2646:
	movl	-152(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jle	.L2647
	.loc 1 5868 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-88(%ebp), %eax
	addl	-92(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2649
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-88(%ebp), %eax
	addl	-92(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movzbl	11(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2651
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-88(%ebp), %eax
	addl	-92(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2653
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-88(%ebp), %eax
	addl	-92(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	16(%eax), %eax
	movl	%eax, -132(%ebp)
	jmp	.L2655
.L2653:
	movl	$5, -132(%ebp)
.L2655:
	movl	-132(%ebp), %esi
	movl	%esi, -136(%ebp)
	jmp	.L2656
.L2651:
	movl	$6, -136(%ebp)
.L2656:
	movl	-136(%ebp), %eax
	movl	%eax, -140(%ebp)
	jmp	.L2657
.L2649:
	movl	$7, -140(%ebp)
.L2657:
	movl	-140(%ebp), %esi
	movl	%esi, -24(%ebp)
.L2647:
	.loc 1 5869 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-84(%ebp), %eax
	addl	-92(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2658
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-84(%ebp), %eax
	addl	-92(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movzbl	11(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2660
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-84(%ebp), %eax
	addl	-92(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2662
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-84(%ebp), %eax
	addl	-92(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	16(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L2664
.L2662:
	movl	$5, -120(%ebp)
.L2664:
	movl	-120(%ebp), %eax
	movl	%eax, -124(%ebp)
	jmp	.L2665
.L2660:
	movl	$6, -124(%ebp)
.L2665:
	movl	-124(%ebp), %esi
	movl	%esi, -128(%ebp)
	jmp	.L2666
.L2658:
	movl	$7, -128(%ebp)
.L2666:
	movl	-128(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jle	.L2667
	.loc 1 5870 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-84(%ebp), %eax
	addl	-92(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2669
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-84(%ebp), %eax
	addl	-92(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movzbl	11(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2671
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-84(%ebp), %eax
	addl	-92(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2673
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-84(%ebp), %eax
	addl	-92(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	16(%eax), %eax
	movl	%eax, -108(%ebp)
	jmp	.L2675
.L2673:
	movl	$5, -108(%ebp)
.L2675:
	movl	-108(%ebp), %esi
	movl	%esi, -112(%ebp)
	jmp	.L2676
.L2671:
	movl	$6, -112(%ebp)
.L2676:
	movl	-112(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	.L2677
.L2669:
	movl	$7, -116(%ebp)
.L2677:
	movl	-116(%ebp), %esi
	movl	%esi, -20(%ebp)
.L2667:
	.loc 1 5865 0
	addl	$1, -92(%ebp)
.L2636:
	movl	-92(%ebp), %eax
	cmpl	-80(%ebp), %eax
	jl	.L2637
	.loc 1 5872 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jge	.L2679
	.loc 1 5873 0
	movl	$1, -96(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
.L2679:
	.loc 1 5874 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jle	.L2681
	.loc 1 5875 0
	movl	$-1, -96(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L2681:
	.loc 1 5876 0
	cmpl	$0, -96(%ebp)
	je	.L2634
	.loc 1 5878 0
	cmpl	$0, 16(%ebp)
	je	.L2684
	.loc 1 5879 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC79@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	jmp	.L2686
.L2684:
	.loc 1 5883 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_warning
.L2686:
	.loc 1 5884 0
	movl	-96(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	.L2526
.L2634:
.LBE69:
	.loc 1 5888 0
	cmpl	$0, -96(%ebp)
	je	.L2687
	leal	__FUNCTION__.22745@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5888, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2687:
	.loc 1 5889 0
	movl	$0, -180(%ebp)
.L2526:
	movl	-180(%ebp), %eax
	.loc 1 5890 0
	addl	$192, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE86:
	.size	joust, .-joust
	.type	tourney, @function
tourney:
.LFB87:
	.loc 1 5900 0
	pushl	%ebp
.LCFI291:
	movl	%esp, %ebp
.LCFI292:
	subl	$40, %esp
.LCFI293:
	.loc 1 5901 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5903 0
	movl	$0, -4(%ebp)
	.loc 1 5908 0
	movl	-16(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2710
.L2692:
	.loc 1 5910 0
	movl	$0, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	joust
	movl	%eax, -8(%ebp)
	.loc 1 5911 0
	cmpl	$1, -8(%ebp)
	jne	.L2693
	.loc 1 5912 0
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2691
.L2693:
	.loc 1 5915 0
	cmpl	$0, -8(%ebp)
	jne	.L2695
	.loc 1 5917 0
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5918 0
	cmpl	$0, -16(%ebp)
	jne	.L2697
	.loc 1 5919 0
	movl	$0, -20(%ebp)
	jmp	.L2699
.L2697:
	.loc 1 5920 0
	movl	$0, -4(%ebp)
	jmp	.L2700
.L2695:
	.loc 1 5924 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5925 0
	movl	$1, -4(%ebp)
.L2700:
	.loc 1 5928 0
	movl	-16(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -12(%ebp)
.L2691:
.L2710:
	.loc 1 5908 0
	cmpl	$0, -12(%ebp)
	jne	.L2692
	.loc 1 5935 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5936 0
	jmp	.L2702
.L2703:
	.loc 1 5940 0
	movl	$0, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	joust
	movl	%eax, -8(%ebp)
	.loc 1 5941 0
	cmpl	$1, -8(%ebp)
	je	.L2704
	.loc 1 5942 0
	movl	$0, -20(%ebp)
	jmp	.L2699
.L2704:
	.loc 1 5938 0
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -12(%ebp)
.L2702:
	.loc 1 5936 0
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L2706
	cmpl	$0, -4(%ebp)
	je	.L2703
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L2703
.L2706:
	.loc 1 5945 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L2699:
	movl	-20(%ebp), %eax
	.loc 1 5946 0
	leave
	ret
.LFE87:
	.size	tourney, .-tourney
.globl can_convert
	.type	can_convert, @function
can_convert:
.LFB88:
	.loc 1 5953 0
	pushl	%ebp
.LCFI294:
	movl	%esp, %ebp
.LCFI295:
	pushl	%ebx
.LCFI296:
	subl	$20, %esp
.LCFI297:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5954 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	can_convert_arg@PLT
	.loc 1 5955 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE88:
	.size	can_convert, .-can_convert
.globl can_convert_arg
	.type	can_convert_arg, @function
can_convert_arg:
.LFB89:
	.loc 1 5962 0
	pushl	%ebp
.LCFI298:
	movl	%esp, %ebp
.LCFI299:
	subl	$40, %esp
.LCFI300:
	.loc 1 5963 0
	movl	$3, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	implicit_conversion
	movl	%eax, -4(%ebp)
	.loc 1 5964 0
	cmpl	$0, -4(%ebp)
	je	.L2714
	movl	-4(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2714
	movl	$1, -20(%ebp)
	jmp	.L2717
.L2714:
	movl	$0, -20(%ebp)
.L2717:
	movl	-20(%ebp), %eax
	.loc 1 5965 0
	leave
	ret
.LFE89:
	.size	can_convert_arg, .-can_convert_arg
.globl can_convert_arg_bad
	.type	can_convert_arg_bad, @function
can_convert_arg_bad:
.LFB90:
	.loc 1 5972 0
	pushl	%ebp
.LCFI301:
	movl	%esp, %ebp
.LCFI302:
	subl	$40, %esp
.LCFI303:
	.loc 1 5973 0
	movl	$3, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	implicit_conversion
	movl	%eax, -4(%ebp)
	.loc 1 5974 0
	cmpl	$0, -4(%ebp)
	setne	%al
	movzbl	%al, %eax
	.loc 1 5975 0
	leave
	ret
.LFE90:
	.size	can_convert_arg_bad, .-can_convert_arg_bad
	.section	.rodata
	.align 4
.LC80:
	.string	"could not convert `%E' to `%T'"
	.text
.globl perform_implicit_conversion
	.type	perform_implicit_conversion, @function
perform_implicit_conversion:
.LFB91:
	.loc 1 5987 0
	pushl	%ebp
.LCFI304:
	movl	%esp, %ebp
.LCFI305:
	pushl	%ebx
.LCFI306:
	subl	$52, %esp
.LCFI307:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5990 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L2722
	.loc 1 5991 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2724
.L2722:
	.loc 1 5992 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	$3, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	implicit_conversion
	movl	%eax, -8(%ebp)
	.loc 1 5994 0
	cmpl	$0, -8(%ebp)
	jne	.L2725
	.loc 1 5996 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC80@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 5997 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2724
.L2725:
	.loc 1 6000 0
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_like_real
	movl	%eax, -24(%ebp)
.L2724:
	movl	-24(%ebp), %eax
	.loc 1 6001 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE91:
	.size	perform_implicit_conversion, .-perform_implicit_conversion
.globl perform_direct_initialization_if_possible
	.type	perform_direct_initialization_if_possible, @function
perform_direct_initialization_if_possible:
.LFB92:
	.loc 1 6010 0
	pushl	%ebp
.LCFI308:
	movl	%esp, %ebp
.LCFI309:
	pushl	%esi
.LCFI310:
	pushl	%ebx
.LCFI311:
	subl	$48, %esp
.LCFI312:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6013 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2729
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L2729
	cmpl	$0, 12(%ebp)
	je	.L2732
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2732
.L2729:
	.loc 1 6014 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2734
.L2732:
	.loc 1 6023 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2735
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2737
.L2735:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2738
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2738
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2738
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2738
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2737
.L2738:
	.loc 1 6025 0
	movl	8(%ebp), %eax
	movl	76(%eax), %esi
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	192(%eax), %eax
	movl	$3, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_special_member_call@PLT
	movl	%eax, 12(%ebp)
	.loc 1 6029 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cplus_new@PLT
	movl	%eax, -28(%ebp)
	jmp	.L2734
.L2737:
	.loc 1 6031 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	$3, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	implicit_conversion
	movl	%eax, -12(%ebp)
	.loc 1 6033 0
	cmpl	$0, -12(%ebp)
	je	.L2743
	movl	-12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2745
.L2743:
	.loc 1 6034 0
	movl	$0, -28(%ebp)
	jmp	.L2734
.L2745:
	.loc 1 6035 0
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_like_real
	movl	%eax, -28(%ebp)
.L2734:
	movl	-28(%ebp), %eax
	.loc 1 6037 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE92:
	.size	perform_direct_initialization_if_possible, .-perform_direct_initialization_if_possible
.globl make_temporary_var_for_ref_to_temp
	.type	make_temporary_var_for_ref_to_temp, @function
make_temporary_var_for_ref_to_temp:
.LFB93:
	.loc 1 6046 0
	pushl	%ebp
.LCFI313:
	movl	%esp, %ebp
.LCFI314:
	pushl	%ebx
.LCFI315:
	subl	$36, %esp
.LCFI316:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6050 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$35, (%esp)
	call	build_decl@PLT
	movl	%eax, -12(%ebp)
	.loc 1 6051 0
	movl	-12(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 6052 0
	movl	-12(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 6055 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2748
.LBB70:
	.loc 1 6060 0
	movl	-12(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	.loc 1 6061 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mangle_ref_init_variable@PLT
	movl	%eax, -8(%ebp)
	.loc 1 6062 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 52(%edx)
	.loc 1 6063 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 92(%edx)
	.loc 1 6064 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl_top_level@PLT
	movl	%eax, -12(%ebp)
	jmp	.L2750
.L2748:
.LBE70:
	.loc 1 6069 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_push_cleanup_level@PLT
	.loc 1 6071 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 56(%eax)
.L2750:
	.loc 1 6074 0
	movl	-12(%ebp), %eax
	.loc 1 6075 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE93:
	.size	make_temporary_var_for_ref_to_temp, .-make_temporary_var_for_ref_to_temp
	.section	.rodata
	.type	__FUNCTION__.23377, @object
	.size	__FUNCTION__.23377, 21
__FUNCTION__.23377:
	.string	"initialize_reference"
	.align 4
.LC81:
	.string	"invalid initialization of non-const reference of type '%T' from a temporary of type '%T'"
	.text
.globl initialize_reference
	.type	initialize_reference, @function
initialize_reference:
.LFB94:
	.loc 1 6094 0
	pushl	%ebp
.LCFI317:
	movl	%esp, %ebp
.LCFI318:
	pushl	%ebx
.LCFI319:
	subl	$68, %esp
.LCFI320:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6097 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2753
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L2753
	cmpl	$0, 12(%ebp)
	je	.L2756
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2756
.L2753:
	.loc 1 6098 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2758
.L2756:
	.loc 1 6100 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	$3, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reference_binding
	movl	%eax, -24(%ebp)
	.loc 1 6101 0
	cmpl	$0, -24(%ebp)
	je	.L2759
	movl	-24(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2761
.L2759:
	.loc 1 6103 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -44(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2762
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2762
	movl	$1, -40(%ebp)
	jmp	.L2765
.L2762:
	movl	$0, -40(%ebp)
.L2765:
	movl	-40(%ebp), %eax
	sall	$3, %eax
	orl	-44(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L2766
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	real_lvalue_p@PLT
	testl	%eax, %eax
	jne	.L2766
	.loc 1 6105 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC81@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 6103 0
	jmp	.L2769
.L2766:
	.loc 1 6109 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC80@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2769:
	.loc 1 6110 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2758
.L2761:
	.loc 1 6147 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-26, %al
	je	.L2770
	leal	__FUNCTION__.23377@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6147, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2770:
	.loc 1 6148 0
	cmpl	$0, 16(%ebp)
	je	.L2772
.LBB71:
	.loc 1 6154 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6157 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-27, %al
	jne	.L2774
	movl	-24(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L2774
	.loc 1 6159 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6160 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6157 0
	jmp	.L2777
.L2774:
	.loc 1 6163 0
	movl	$0, -16(%ebp)
.L2777:
	.loc 1 6165 0
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_like_real
	movl	%eax, 12(%ebp)
	.loc 1 6166 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	real_non_cast_lvalue_p@PLT
	testl	%eax, %eax
	jne	.L2778
.LBB72:
	.loc 1 6172 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6173 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	make_temporary_var_for_ref_to_temp@PLT
	movl	%eax, -20(%ebp)
	.loc 1 6174 0
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_decl@PLT
	.loc 1 6177 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$50, (%esp)
	call	build@PLT
	movl	%eax, -12(%ebp)
	.loc 1 6178 0
	call	at_function_scope_p@PLT
	testl	%eax, %eax
	je	.L2780
	.loc 1 6180 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	add_decl_stmt@PLT
	.loc 1 6181 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_maybe_build_cleanup@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6182 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2784
	.loc 1 6201 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$175, (%esp)
	call	build_stmt@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L2784
.L2780:
	.loc 1 6205 0
	movl	at_eof@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	rest_of_decl_compilation@PLT
	.loc 1 6206 0
	movl	-8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L2784
	.loc 1 6207 0
	movl	static_aggregates@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	static_aggregates@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L2784:
	.loc 1 6211 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_address@PLT
	movl	%eax, 12(%ebp)
	.loc 1 6212 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, 12(%ebp)
	jmp	.L2786
.L2778:
.LBE72:
	.loc 1 6216 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, 12(%ebp)
.L2786:
	.loc 1 6218 0
	cmpl	$0, -16(%ebp)
	je	.L2787
	.loc 1 6219 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	perform_implicit_conversion@PLT
	movl	%eax, 12(%ebp)
.L2787:
	.loc 1 6221 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_nop@PLT
	movl	%eax, -48(%ebp)
	jmp	.L2758
.L2772:
.LBE71:
	.loc 1 6225 0
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_like_real
	movl	%eax, -48(%ebp)
.L2758:
	movl	-48(%ebp), %eax
	.loc 1 6226 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE94:
	.size	initialize_reference, .-initialize_reference
.globl gt_ggc_mx_z_candidate
	.type	gt_ggc_mx_z_candidate, @function
gt_ggc_mx_z_candidate:
.LFB95:
	.file 2 "../../../kg++fe/gnu/MIPS/gt-cp-call.h"
	.loc 2 26 0
	pushl	%ebp
.LCFI321:
	movl	%esp, %ebp
.LCFI322:
	pushl	%ebx
.LCFI323:
	subl	$20, %esp
.LCFI324:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 27 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 2 28 0
	cmpl	$0, -8(%ebp)
	je	.L2810
	cmpl	$1, -8(%ebp)
	je	.L2810
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L2810
	.loc 2 30 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2795
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2795:
	.loc 2 31 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2797
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2797:
	.loc 2 32 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L2799
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2799:
	.loc 2 33 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2801
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2801:
	.loc 2 34 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2803
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2803:
	.loc 2 35 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L2805
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2805:
	.loc 2 36 0
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L2807
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2807:
	.loc 2 37 0
	movl	-8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L2810
	movl	-8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_z_candidate@PLT
.L2810:
	.loc 2 39 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE95:
	.size	gt_ggc_mx_z_candidate, .-gt_ggc_mx_z_candidate
.globl gt_ggc_r_gt_cp_call_h
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	gt_ggc_r_gt_cp_call_h, @object
	.size	gt_ggc_r_gt_cp_call_h, 32
gt_ggc_r_gt_cp_call_h:
	.long	java_iface_lookup_fn
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	0
	.long	0
	.long	0
	.long	0
	.local	java_iface_lookup_fn
	.comm	java_iface_lookup_fn,4,4
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
	.long	.LCFI11-.LCFI9
	.byte	0x83
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
	.long	.LCFI12-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI15-.LCFI13
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
	.long	.LCFI16-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI19-.LCFI17
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
	.long	.LCFI20-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI25-.LCFI21
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI29-.LCFI27
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
	.long	.LCFI30-.LFB22
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
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI37-.LFB24
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
	.long	.LCFI43-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI46-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI50-.LCFI47
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
	.long	.LCFI51-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI52-.LCFI51
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI54-.LCFI52
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
	.long	.LCFI55-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI58-.LCFI56
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
	.long	.LCFI59-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI60-.LCFI59
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI62-.LCFI60
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
	.long	.LCFI63-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI64-.LCFI63
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI66-.LCFI64
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
	.long	.LCFI67-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI68-.LCFI67
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI70-.LCFI68
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
	.long	.LCFI71-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI74-.LCFI72
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
	.long	.LCFI75-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI76-.LCFI75
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI78-.LCFI76
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
	.long	.LCFI79-.LFB35
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
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI83-.LFB36
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
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI87-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI91-.LCFI88
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
	.long	.LCFI92-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI93-.LCFI92
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI95-.LCFI93
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
	.long	.LCFI96-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI97-.LCFI96
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI99-.LCFI97
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
	.long	.LCFI100-.LFB40
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
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI104-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI105-.LCFI104
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI107-.LCFI105
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
	.long	.LCFI108-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI109-.LCFI108
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI113-.LCFI109
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI114-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI115-.LCFI114
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI117-.LCFI115
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
	.long	.LCFI118-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI119-.LCFI118
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI121-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI122-.LCFI121
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI124-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI125-.LCFI124
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI127-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI128-.LCFI127
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
	.long	.LCFI130-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI131-.LCFI130
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI133-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI134-.LCFI133
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI136-.LCFI134
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI137-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI138-.LCFI137
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI141-.LCFI138
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI142-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI143-.LCFI142
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI145-.LCFI143
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI146-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI147-.LCFI146
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI149-.LCFI147
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI150-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI151-.LCFI150
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI153-.LCFI151
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI154-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI155-.LCFI154
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI157-.LCFI155
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB55
	.long	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI158-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI159-.LCFI158
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI161-.LCFI159
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI162-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI163-.LCFI162
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI165-.LCFI163
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI166-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI167-.LCFI166
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI169-.LCFI167
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI170-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI171-.LCFI170
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI173-.LCFI171
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.long	.LFB59
	.long	.LFE59-.LFB59
	.byte	0x4
	.long	.LCFI174-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI175-.LCFI174
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI177-.LCFI175
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB60
	.long	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI178-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI179-.LCFI178
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI181-.LCFI179
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB61
	.long	.LFE61-.LFB61
	.byte	0x4
	.long	.LCFI182-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI183-.LCFI182
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI185-.LCFI183
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI186-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI187-.LCFI186
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI190-.LCFI187
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.long	.LFB63
	.long	.LFE63-.LFB63
	.byte	0x4
	.long	.LCFI191-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI192-.LCFI191
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI194-.LCFI192
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.long	.LFB64
	.long	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI195-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI196-.LCFI195
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI198-.LCFI196
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.byte	0x4
	.long	.LCFI199-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI200-.LCFI199
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI203-.LCFI200
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.long	.LFB66
	.long	.LFE66-.LFB66
	.byte	0x4
	.long	.LCFI204-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI205-.LCFI204
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI207-.LCFI205
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.long	.LFB67
	.long	.LFE67-.LFB67
	.byte	0x4
	.long	.LCFI208-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI209-.LCFI208
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI211-.LCFI209
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.long	.LFB68
	.long	.LFE68-.LFB68
	.byte	0x4
	.long	.LCFI212-.LFB68
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI213-.LCFI212
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI215-.LCFI213
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.long	.LFB69
	.long	.LFE69-.LFB69
	.byte	0x4
	.long	.LCFI216-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI217-.LCFI216
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI219-.LCFI217
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.long	.LFB70
	.long	.LFE70-.LFB70
	.byte	0x4
	.long	.LCFI220-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI221-.LCFI220
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI223-.LCFI221
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.long	.LFB71
	.long	.LFE71-.LFB71
	.byte	0x4
	.long	.LCFI224-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI225-.LCFI224
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI227-.LCFI225
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.long	.LFB72
	.long	.LFE72-.LFB72
	.byte	0x4
	.long	.LCFI228-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI229-.LCFI228
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI231-.LCFI229
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE114:
.LSFDE116:
	.long	.LEFDE116-.LASFDE116
.LASFDE116:
	.long	.Lframe0
	.long	.LFB73
	.long	.LFE73-.LFB73
	.byte	0x4
	.long	.LCFI232-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI233-.LCFI232
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI236-.LCFI233
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE116:
.LSFDE118:
	.long	.LEFDE118-.LASFDE118
.LASFDE118:
	.long	.Lframe0
	.long	.LFB74
	.long	.LFE74-.LFB74
	.byte	0x4
	.long	.LCFI237-.LFB74
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI238-.LCFI237
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI240-.LCFI238
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.long	.LFB75
	.long	.LFE75-.LFB75
	.byte	0x4
	.long	.LCFI241-.LFB75
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI242-.LCFI241
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI245-.LCFI242
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.long	.LFB76
	.long	.LFE76-.LFB76
	.byte	0x4
	.long	.LCFI246-.LFB76
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI247-.LCFI246
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI249-.LCFI247
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.long	.LFB77
	.long	.LFE77-.LFB77
	.byte	0x4
	.long	.LCFI250-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI251-.LCFI250
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI254-.LCFI251
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.long	.LFB78
	.long	.LFE78-.LFB78
	.byte	0x4
	.long	.LCFI255-.LFB78
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI256-.LCFI255
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI258-.LCFI256
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE126:
.LSFDE128:
	.long	.LEFDE128-.LASFDE128
.LASFDE128:
	.long	.Lframe0
	.long	.LFB79
	.long	.LFE79-.LFB79
	.byte	0x4
	.long	.LCFI259-.LFB79
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI260-.LCFI259
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI262-.LCFI260
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE128:
.LSFDE130:
	.long	.LEFDE130-.LASFDE130
.LASFDE130:
	.long	.Lframe0
	.long	.LFB80
	.long	.LFE80-.LFB80
	.byte	0x4
	.long	.LCFI263-.LFB80
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI264-.LCFI263
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI266-.LCFI264
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE130:
.LSFDE132:
	.long	.LEFDE132-.LASFDE132
.LASFDE132:
	.long	.Lframe0
	.long	.LFB81
	.long	.LFE81-.LFB81
	.byte	0x4
	.long	.LCFI267-.LFB81
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI268-.LCFI267
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI270-.LCFI268
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE132:
.LSFDE134:
	.long	.LEFDE134-.LASFDE134
.LASFDE134:
	.long	.Lframe0
	.long	.LFB82
	.long	.LFE82-.LFB82
	.byte	0x4
	.long	.LCFI271-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI272-.LCFI271
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE134:
.LSFDE136:
	.long	.LEFDE136-.LASFDE136
.LASFDE136:
	.long	.Lframe0
	.long	.LFB83
	.long	.LFE83-.LFB83
	.byte	0x4
	.long	.LCFI274-.LFB83
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI275-.LCFI274
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI277-.LCFI275
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE136:
.LSFDE138:
	.long	.LEFDE138-.LASFDE138
.LASFDE138:
	.long	.Lframe0
	.long	.LFB84
	.long	.LFE84-.LFB84
	.byte	0x4
	.long	.LCFI278-.LFB84
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI279-.LCFI278
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE138:
.LSFDE140:
	.long	.LEFDE140-.LASFDE140
.LASFDE140:
	.long	.Lframe0
	.long	.LFB85
	.long	.LFE85-.LFB85
	.byte	0x4
	.long	.LCFI281-.LFB85
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI282-.LCFI281
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI285-.LCFI282
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE140:
.LSFDE142:
	.long	.LEFDE142-.LASFDE142
.LASFDE142:
	.long	.Lframe0
	.long	.LFB86
	.long	.LFE86-.LFB86
	.byte	0x4
	.long	.LCFI286-.LFB86
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI287-.LCFI286
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI290-.LCFI287
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE142:
.LSFDE144:
	.long	.LEFDE144-.LASFDE144
.LASFDE144:
	.long	.Lframe0
	.long	.LFB87
	.long	.LFE87-.LFB87
	.byte	0x4
	.long	.LCFI291-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI292-.LCFI291
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE144:
.LSFDE146:
	.long	.LEFDE146-.LASFDE146
.LASFDE146:
	.long	.Lframe0
	.long	.LFB88
	.long	.LFE88-.LFB88
	.byte	0x4
	.long	.LCFI294-.LFB88
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI295-.LCFI294
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI297-.LCFI295
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE146:
.LSFDE148:
	.long	.LEFDE148-.LASFDE148
.LASFDE148:
	.long	.Lframe0
	.long	.LFB89
	.long	.LFE89-.LFB89
	.byte	0x4
	.long	.LCFI298-.LFB89
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI299-.LCFI298
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE148:
.LSFDE150:
	.long	.LEFDE150-.LASFDE150
.LASFDE150:
	.long	.Lframe0
	.long	.LFB90
	.long	.LFE90-.LFB90
	.byte	0x4
	.long	.LCFI301-.LFB90
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI302-.LCFI301
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE150:
.LSFDE152:
	.long	.LEFDE152-.LASFDE152
.LASFDE152:
	.long	.Lframe0
	.long	.LFB91
	.long	.LFE91-.LFB91
	.byte	0x4
	.long	.LCFI304-.LFB91
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI305-.LCFI304
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI307-.LCFI305
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE152:
.LSFDE154:
	.long	.LEFDE154-.LASFDE154
.LASFDE154:
	.long	.Lframe0
	.long	.LFB92
	.long	.LFE92-.LFB92
	.byte	0x4
	.long	.LCFI308-.LFB92
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI309-.LCFI308
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI312-.LCFI309
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE154:
.LSFDE156:
	.long	.LEFDE156-.LASFDE156
.LASFDE156:
	.long	.Lframe0
	.long	.LFB93
	.long	.LFE93-.LFB93
	.byte	0x4
	.long	.LCFI313-.LFB93
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI314-.LCFI313
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI316-.LCFI314
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE156:
.LSFDE158:
	.long	.LEFDE158-.LASFDE158
.LASFDE158:
	.long	.Lframe0
	.long	.LFB94
	.long	.LFE94-.LFB94
	.byte	0x4
	.long	.LCFI317-.LFB94
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI318-.LCFI317
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI320-.LCFI318
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE158:
.LSFDE160:
	.long	.LEFDE160-.LASFDE160
.LASFDE160:
	.long	.Lframe0
	.long	.LFB95
	.long	.LFE95-.LFB95
	.byte	0x4
	.long	.LCFI321-.LFB95
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI322-.LCFI321
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI324-.LCFI322
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE160:
	.file 3 "../../../kg++fe/gnu/MIPS/config.h"
	.file 4 "../../../kg++fe/gnu/tree.h"
	.file 5 "../../../kg++fe/gnu/rtl.h"
	.file 6 "../../../kg++fe/gnu/machmode.h"
	.file 7 "../../../kg++fe/gnu/hashtable.h"
	.file 8 "../../../kg++fe/gnu/location.h"
	.file 9 "../../../kg++fe/gnu/function.h"
	.file 10 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 11 "../../../kg++fe/gnu/cp/cp-tree.h"
	.file 12 "../../../kg++fe/gnu/c-common.h"
	.file 13 "../../../kg++fe/gnu/varray.h"
	.file 14 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 15 "../../../kg++fe/omp_types.h"
	.file 16 "../../../kg++fe/gnu/flags.h"
	.file 17 "../../../kg++fe/gnu/diagnostic.h"
	.file 18 "/usr/include/stdio.h"
	.file 19 "/usr/include/libio.h"
	.file 20 "/usr/include/bits/types.h"
	.file 21 "../../../include/gnu/obstack.h"
	.file 22 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 23 "../../../kg++fe/gnu/ggc.h"
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LCFI43-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI43-.Ltext0
	.long	.LCFI44-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI44-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
	.long	.LCFI51-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI51-.Ltext0
	.long	.LCFI52-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI52-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
	.long	.LCFI59-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI59-.Ltext0
	.long	.LCFI60-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI60-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
	.long	.LCFI63-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI63-.Ltext0
	.long	.LCFI64-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI64-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI67-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI67-.Ltext0
	.long	.LCFI68-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI68-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
	.long	.LCFI71-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI71-.Ltext0
	.long	.LCFI72-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI72-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
	.long	.LCFI75-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI75-.Ltext0
	.long	.LCFI76-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI76-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
	.long	.LCFI92-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI92-.Ltext0
	.long	.LCFI93-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI93-.Ltext0
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
	.long	.LCFI96-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI96-.Ltext0
	.long	.LCFI97-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI97-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
	.long	.LCFI108-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI108-.Ltext0
	.long	.LCFI109-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI109-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
	.long	.LCFI114-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI114-.Ltext0
	.long	.LCFI115-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI115-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
	.long	.LCFI118-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI118-.Ltext0
	.long	.LCFI119-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI119-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI121-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI121-.Ltext0
	.long	.LCFI122-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI122-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
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
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
	.long	.LCFI127-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI127-.Ltext0
	.long	.LCFI128-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI128-.Ltext0
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
	.long	.LCFI130-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI130-.Ltext0
	.long	.LCFI131-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI131-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
	.long	.LCFI133-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI133-.Ltext0
	.long	.LCFI134-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI134-.Ltext0
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB51-.Ltext0
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
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB50-.Ltext0
	.long	.LCFI142-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI142-.Ltext0
	.long	.LCFI143-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI143-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
	.long	.LCFI146-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI146-.Ltext0
	.long	.LCFI147-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI147-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
	.long	.LCFI150-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI150-.Ltext0
	.long	.LCFI151-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI151-.Ltext0
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
	.long	.LCFI154-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI154-.Ltext0
	.long	.LCFI155-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI155-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
	.long	.LCFI158-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI158-.Ltext0
	.long	.LCFI159-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI159-.Ltext0
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
	.long	.LCFI162-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI162-.Ltext0
	.long	.LCFI163-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI163-.Ltext0
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
	.long	.LCFI166-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI166-.Ltext0
	.long	.LCFI167-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI167-.Ltext0
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
	.long	.LCFI170-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI170-.Ltext0
	.long	.LCFI171-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI171-.Ltext0
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
	.long	.LCFI174-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI174-.Ltext0
	.long	.LCFI175-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI175-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
	.long	.LCFI178-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI178-.Ltext0
	.long	.LCFI179-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI179-.Ltext0
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB61-.Ltext0
	.long	.LCFI182-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI182-.Ltext0
	.long	.LCFI183-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI183-.Ltext0
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB62-.Ltext0
	.long	.LCFI186-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI186-.Ltext0
	.long	.LCFI187-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI187-.Ltext0
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB63-.Ltext0
	.long	.LCFI191-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI191-.Ltext0
	.long	.LCFI192-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI192-.Ltext0
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB64-.Ltext0
	.long	.LCFI195-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI195-.Ltext0
	.long	.LCFI196-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI196-.Ltext0
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB65-.Ltext0
	.long	.LCFI199-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI199-.Ltext0
	.long	.LCFI200-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI200-.Ltext0
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB66-.Ltext0
	.long	.LCFI204-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI204-.Ltext0
	.long	.LCFI205-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI205-.Ltext0
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB67-.Ltext0
	.long	.LCFI208-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI208-.Ltext0
	.long	.LCFI209-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI209-.Ltext0
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB68-.Ltext0
	.long	.LCFI212-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI212-.Ltext0
	.long	.LCFI213-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI213-.Ltext0
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB69-.Ltext0
	.long	.LCFI216-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI216-.Ltext0
	.long	.LCFI217-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI217-.Ltext0
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB70-.Ltext0
	.long	.LCFI220-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI220-.Ltext0
	.long	.LCFI221-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI221-.Ltext0
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB71-.Ltext0
	.long	.LCFI224-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI224-.Ltext0
	.long	.LCFI225-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI225-.Ltext0
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB72-.Ltext0
	.long	.LCFI228-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI228-.Ltext0
	.long	.LCFI229-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI229-.Ltext0
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB73-.Ltext0
	.long	.LCFI232-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI232-.Ltext0
	.long	.LCFI233-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI233-.Ltext0
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB74-.Ltext0
	.long	.LCFI237-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI237-.Ltext0
	.long	.LCFI238-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI238-.Ltext0
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LFB75-.Ltext0
	.long	.LCFI241-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI241-.Ltext0
	.long	.LCFI242-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI242-.Ltext0
	.long	.LFE75-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LFB76-.Ltext0
	.long	.LCFI246-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI246-.Ltext0
	.long	.LCFI247-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI247-.Ltext0
	.long	.LFE76-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LFB77-.Ltext0
	.long	.LCFI250-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI250-.Ltext0
	.long	.LCFI251-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI251-.Ltext0
	.long	.LFE77-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LFB78-.Ltext0
	.long	.LCFI255-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI255-.Ltext0
	.long	.LCFI256-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI256-.Ltext0
	.long	.LFE78-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LFB79-.Ltext0
	.long	.LCFI259-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI259-.Ltext0
	.long	.LCFI260-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI260-.Ltext0
	.long	.LFE79-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LFB80-.Ltext0
	.long	.LCFI263-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI263-.Ltext0
	.long	.LCFI264-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI264-.Ltext0
	.long	.LFE80-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST66:
	.long	.LFB81-.Ltext0
	.long	.LCFI267-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI267-.Ltext0
	.long	.LCFI268-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI268-.Ltext0
	.long	.LFE81-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LFB82-.Ltext0
	.long	.LCFI271-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI271-.Ltext0
	.long	.LCFI272-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI272-.Ltext0
	.long	.LFE82-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST68:
	.long	.LFB83-.Ltext0
	.long	.LCFI274-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI274-.Ltext0
	.long	.LCFI275-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI275-.Ltext0
	.long	.LFE83-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST69:
	.long	.LFB84-.Ltext0
	.long	.LCFI278-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI278-.Ltext0
	.long	.LCFI279-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI279-.Ltext0
	.long	.LFE84-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST70:
	.long	.LFB85-.Ltext0
	.long	.LCFI281-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI281-.Ltext0
	.long	.LCFI282-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI282-.Ltext0
	.long	.LFE85-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST71:
	.long	.LFB86-.Ltext0
	.long	.LCFI286-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI286-.Ltext0
	.long	.LCFI287-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI287-.Ltext0
	.long	.LFE86-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST72:
	.long	.LFB87-.Ltext0
	.long	.LCFI291-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI291-.Ltext0
	.long	.LCFI292-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI292-.Ltext0
	.long	.LFE87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST73:
	.long	.LFB88-.Ltext0
	.long	.LCFI294-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI294-.Ltext0
	.long	.LCFI295-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI295-.Ltext0
	.long	.LFE88-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST74:
	.long	.LFB89-.Ltext0
	.long	.LCFI298-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI298-.Ltext0
	.long	.LCFI299-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI299-.Ltext0
	.long	.LFE89-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST75:
	.long	.LFB90-.Ltext0
	.long	.LCFI301-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI301-.Ltext0
	.long	.LCFI302-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI302-.Ltext0
	.long	.LFE90-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST76:
	.long	.LFB91-.Ltext0
	.long	.LCFI304-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI304-.Ltext0
	.long	.LCFI305-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI305-.Ltext0
	.long	.LFE91-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST77:
	.long	.LFB92-.Ltext0
	.long	.LCFI308-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI308-.Ltext0
	.long	.LCFI309-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI309-.Ltext0
	.long	.LFE92-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST78:
	.long	.LFB93-.Ltext0
	.long	.LCFI313-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI313-.Ltext0
	.long	.LCFI314-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI314-.Ltext0
	.long	.LFE93-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST79:
	.long	.LFB94-.Ltext0
	.long	.LCFI317-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI317-.Ltext0
	.long	.LCFI318-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI318-.Ltext0
	.long	.LFE94-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST80:
	.long	.LFB95-.Ltext0
	.long	.LCFI321-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI321-.Ltext0
	.long	.LCFI322-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI322-.Ltext0
	.long	.LFE95-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xb932
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cp/call.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x3
	.byte	0xc
	.long	0xa7
	.uleb128 0x3
	.byte	0x4
	.long	0xad
	.uleb128 0x4
	.long	0x19c
	.string	"rtx_def"
	.byte	0xc
	.byte	0x3
	.byte	0xb
	.uleb128 0x5
	.long	.LASF0
	.byte	0x5
	.byte	0x84
	.long	0x7032
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"mode"
	.byte	0x5
	.byte	0x87
	.long	0x836
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"jump"
	.byte	0x5
	.byte	0x8e
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"call"
	.byte	0x5
	.byte	0x91
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"unchanging"
	.byte	0x5
	.byte	0x99
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"volatil"
	.byte	0x5
	.byte	0xa2
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"in_struct"
	.byte	0x5
	.byte	0xb4
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"used"
	.byte	0x5
	.byte	0xbb
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"integrated"
	.byte	0x5
	.byte	0xc0
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"frame_related"
	.byte	0x5
	.byte	0xc9
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"fld"
	.byte	0x5
	.byte	0xce
	.long	0x7a5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x3
	.byte	0xe
	.long	0x1a9
	.uleb128 0x3
	.byte	0x4
	.long	0x1af
	.uleb128 0x4
	.long	0x1e4
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x3
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x5
	.byte	0xf2
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x5
	.byte	0xf3
	.long	0x7a6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x3
	.byte	0x10
	.long	0x1f0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f6
	.uleb128 0x8
	.long	0x2c7
	.string	"tree_node"
	.byte	0xa0
	.byte	0x3
	.byte	0xf
	.uleb128 0x9
	.long	.LASF1
	.byte	0x4
	.value	0x887
	.long	0x313e
	.uleb128 0xa
	.string	"int_cst"
	.byte	0x4
	.value	0x888
	.long	0x345b
	.uleb128 0xa
	.string	"real_cst"
	.byte	0x4
	.value	0x889
	.long	0x34a3
	.uleb128 0xa
	.string	"vector"
	.byte	0x4
	.value	0x88a
	.long	0x35c6
	.uleb128 0xa
	.string	"string"
	.byte	0x4
	.value	0x88b
	.long	0x3504
	.uleb128 0xa
	.string	"complex"
	.byte	0x4
	.value	0x88c
	.long	0x3571
	.uleb128 0x9
	.long	.LASF2
	.byte	0x4
	.value	0x88d
	.long	0x37fb
	.uleb128 0x9
	.long	.LASF3
	.byte	0x4
	.value	0x88e
	.long	0x4864
	.uleb128 0x9
	.long	.LASF4
	.byte	0x4
	.value	0x88f
	.long	0x3a60
	.uleb128 0xa
	.string	"list"
	.byte	0x4
	.value	0x890
	.long	0x3832
	.uleb128 0xa
	.string	"vec"
	.byte	0x4
	.value	0x891
	.long	0x3879
	.uleb128 0xa
	.string	"exp"
	.byte	0x4
	.value	0x892
	.long	0x38ca
	.uleb128 0xa
	.string	"block"
	.byte	0x4
	.value	0x893
	.long	0x3916
	.uleb128 0xa
	.string	"omp"
	.byte	0x4
	.value	0x895
	.long	0x5264
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2cd
	.uleb128 0xb
	.long	0x2d2
	.uleb128 0xc
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xc
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	0x3b3
	.string	"mips_args"
	.byte	0x40
	.byte	0xa
	.value	0xaaa
	.uleb128 0xe
	.string	"gp_reg_found"
	.byte	0xa
	.value	0xaad
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"arg_number"
	.byte	0xa
	.value	0xab0
	.long	0x3b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"num_gprs"
	.byte	0xa
	.value	0xab5
	.long	0x3b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"num_fprs"
	.byte	0xa
	.value	0xab8
	.long	0x3b3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"stack_words"
	.byte	0xa
	.value	0xabb
	.long	0x3b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"fp_code"
	.byte	0xa
	.value	0xac8
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"prototype"
	.byte	0xa
	.value	0xacb
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"num_adjusts"
	.byte	0xa
	.value	0xad3
	.long	0x3b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"adjust"
	.byte	0xa
	.value	0xad4
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xf
	.long	.LASF5
	.byte	0x4
	.byte	0x7
	.uleb128 0x10
	.long	0x3ca
	.long	0x9c
	.uleb128 0x11
	.long	0x3ca
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	.LASF5
	.byte	0x4
	.byte	0x7
	.uleb128 0x12
	.string	"CUMULATIVE_ARGS"
	.byte	0xa
	.value	0xad5
	.long	0x2e1
	.uleb128 0x2
	.string	"__gnuc_va_list"
	.byte	0x16
	.byte	0x2b
	.long	0x3ff
	.uleb128 0x3
	.byte	0x4
	.long	0x2d2
	.uleb128 0x2
	.string	"va_list"
	.byte	0x16
	.byte	0x69
	.long	0x3e9
	.uleb128 0x2
	.string	"size_t"
	.byte	0xe
	.byte	0xd6
	.long	0x3b3
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
	.byte	0x14
	.byte	0x3b
	.long	0x47a
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x14
	.byte	0x90
	.long	0x4c4
	.uleb128 0xc
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x14
	.byte	0x91
	.long	0x4a5
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2d2
	.uleb128 0x2
	.string	"FILE"
	.byte	0x12
	.byte	0x2e
	.long	0x4f5
	.uleb128 0x14
	.long	0x770
	.long	.LASF6
	.byte	0x94
	.byte	0x12
	.byte	0x2e
	.uleb128 0xe
	.string	"_flags"
	.byte	0x13
	.value	0x10c
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_IO_read_ptr"
	.byte	0x13
	.value	0x111
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_IO_read_end"
	.byte	0x13
	.value	0x112
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"_IO_read_base"
	.byte	0x13
	.value	0x113
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"_IO_write_base"
	.byte	0x13
	.value	0x114
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_IO_write_ptr"
	.byte	0x13
	.value	0x115
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"_IO_write_end"
	.byte	0x13
	.value	0x116
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"_IO_buf_base"
	.byte	0x13
	.value	0x117
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"_IO_buf_end"
	.byte	0x13
	.value	0x118
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"_IO_save_base"
	.byte	0x13
	.value	0x11a
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"_IO_backup_base"
	.byte	0x13
	.value	0x11b
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"_IO_save_end"
	.byte	0x13
	.value	0x11c
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_markers"
	.byte	0x13
	.value	0x11e
	.long	0x7f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_chain"
	.byte	0x13
	.value	0x120
	.long	0x7fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"_fileno"
	.byte	0x13
	.value	0x122
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_flags2"
	.byte	0x13
	.value	0x126
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"_old_offset"
	.byte	0x13
	.value	0x128
	.long	0x4b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"_cur_column"
	.byte	0x13
	.value	0x12c
	.long	0x433
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"_vtable_offset"
	.byte	0x13
	.value	0x12d
	.long	0x45e
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xe
	.string	"_shortbuf"
	.byte	0x13
	.value	0x12e
	.long	0x800
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xe
	.string	"_lock"
	.byte	0x13
	.value	0x132
	.long	0x810
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"_offset"
	.byte	0x13
	.value	0x13b
	.long	0x4d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"__pad1"
	.byte	0x13
	.value	0x144
	.long	0x4e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"__pad2"
	.byte	0x13
	.value	0x145
	.long	0x4e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"__pad3"
	.byte	0x13
	.value	0x146
	.long	0x4e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"__pad4"
	.byte	0x13
	.value	0x147
	.long	0x4e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"__pad5"
	.byte	0x13
	.value	0x148
	.long	0x414
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"_mode"
	.byte	0x13
	.value	0x14a
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"_unused2"
	.byte	0x13
	.value	0x14c
	.long	0x816
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x10
	.long	0x780
	.long	0x2d2
	.uleb128 0x11
	.long	0x3ca
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x786
	.uleb128 0xb
	.long	0x422
	.uleb128 0x3
	.byte	0x4
	.long	0x422
	.uleb128 0x3
	.byte	0x4
	.long	0x797
	.uleb128 0x15
	.long	0x7a3
	.byte	0x1
	.uleb128 0x16
	.long	0x4e1
	.byte	0x0
	.uleb128 0x17
	.string	"_IO_lock_t"
	.byte	0x13
	.byte	0xb0
	.uleb128 0x4
	.long	0x7f4
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x13
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0x13
	.byte	0xb7
	.long	0x7f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0x13
	.byte	0xb8
	.long	0x7fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0x13
	.byte	0xbc
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b1
	.uleb128 0x3
	.byte	0x4
	.long	0x4f5
	.uleb128 0x10
	.long	0x810
	.long	0x2d2
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7a3
	.uleb128 0x10
	.long	0x826
	.long	0x2d2
	.uleb128 0x11
	.long	0x3ca
	.byte	0x27
	.byte	0x0
	.uleb128 0x10
	.long	0x836
	.long	0x2d2
	.uleb128 0x11
	.long	0x3ca
	.byte	0x17
	.byte	0x0
	.uleb128 0x18
	.long	0xa7f
	.string	"machine_mode"
	.byte	0x4
	.byte	0x6
	.byte	0x1d
	.uleb128 0x19
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x19
	.string	"BImode"
	.sleb128 1
	.uleb128 0x19
	.string	"QImode"
	.sleb128 2
	.uleb128 0x19
	.string	"HImode"
	.sleb128 3
	.uleb128 0x19
	.string	"SImode"
	.sleb128 4
	.uleb128 0x19
	.string	"DImode"
	.sleb128 5
	.uleb128 0x19
	.string	"TImode"
	.sleb128 6
	.uleb128 0x19
	.string	"OImode"
	.sleb128 7
	.uleb128 0x19
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x19
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x19
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x19
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x19
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x19
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x19
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x19
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x19
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x19
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x19
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x19
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x19
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x19
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x19
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x19
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x19
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x19
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x19
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x19
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x19
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x19
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x19
	.string	"COImode"
	.sleb128 30
	.uleb128 0x19
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x19
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x19
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x19
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x19
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x19
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x19
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x19
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x19
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x19
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x19
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x19
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x19
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x19
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x19
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x19
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x19
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x19
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x19
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x19
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x19
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x19
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x19
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x19
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x4
	.long	0xab1
	.string	"location_s"
	.byte	0x8
	.byte	0x8
	.byte	0x1c
	.uleb128 0x7
	.string	"file"
	.byte	0x8
	.byte	0x1e
	.long	0x2c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"line"
	.byte	0x8
	.byte	0x21
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x8
	.byte	0x23
	.long	0xa7f
	.uleb128 0x18
	.long	0x13e5
	.string	"tree_code"
	.byte	0x4
	.byte	0x4
	.byte	0x25
	.uleb128 0x19
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x19
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x19
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x19
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x19
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x19
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x19
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x19
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x19
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x19
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x19
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x19
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x19
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x19
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x19
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x19
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x19
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x19
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x19
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x19
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x19
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x19
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x19
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x19
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x19
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x19
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x19
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x19
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x19
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x19
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x19
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x19
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x19
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x19
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x19
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x19
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x19
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x19
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x19
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x19
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x19
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x19
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x19
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x19
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x19
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x19
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x19
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x19
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x19
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x19
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x19
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x19
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x19
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x19
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x19
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x19
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x19
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x19
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x19
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x19
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x19
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x19
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x19
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x19
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x19
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x19
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x19
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x19
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x19
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x19
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x19
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x19
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x19
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x19
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x19
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x19
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x19
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x19
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x19
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x19
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x19
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x19
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x19
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x19
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x19
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x19
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x19
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x19
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x19
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x19
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x19
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x19
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x19
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x19
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x19
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x19
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x19
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x19
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x19
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x19
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x19
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x19
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x19
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x19
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x19
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x19
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x19
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x19
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x19
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x19
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x19
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x19
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x19
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x19
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x19
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x19
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x19
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x19
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x19
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x19
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x19
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x19
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x19
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x19
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x19
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x19
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x19
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x19
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x19
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x19
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x19
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x19
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x19
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x19
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x19
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x19
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x19
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x19
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x19
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x19
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x19
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x19
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x19
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x19
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x19
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x19
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x19
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x19
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x19
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x19
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x19
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x19
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x4
	.byte	0x2f
	.long	0x3b3
	.uleb128 0x4
	.long	0x1435
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x4
	.byte	0x30
	.uleb128 0x7
	.string	"block"
	.byte	0x4
	.byte	0x30
	.long	0x3b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"offset"
	.byte	0x4
	.byte	0x30
	.long	0x3b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x4
	.byte	0x34
	.long	0x143f
	.uleb128 0x1a
	.string	"st"
	.byte	0x1
	.uleb128 0x1b
	.long	0x1494
	.long	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x58
	.uleb128 0x19
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x19
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x19
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x19
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x18
	.long	0x313e
	.string	"built_in_function"
	.byte	0x4
	.byte	0x4
	.byte	0x67
	.uleb128 0x19
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x19
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x19
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x19
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x19
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x19
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x19
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x19
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x19
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x19
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x19
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x19
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x19
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x19
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x19
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x19
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x19
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x19
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x19
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x19
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x19
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x19
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x19
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x19
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x19
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x19
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x19
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x19
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x19
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x19
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x19
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x19
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x19
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x19
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x19
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x19
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x19
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x19
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x19
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x19
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x19
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x19
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x19
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x19
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x19
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x19
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x19
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x19
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x19
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x19
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x19
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x19
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x19
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x19
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x19
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x19
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x19
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x19
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x19
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x19
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x19
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x19
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x19
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x19
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x19
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x19
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x19
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x19
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x19
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x19
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x19
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x19
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x19
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x19
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x19
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x19
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x19
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x19
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x19
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x19
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x19
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x19
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x19
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x19
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x19
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x19
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x19
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x19
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x19
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x19
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x19
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x19
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x19
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x19
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x19
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x19
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x19
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x19
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x19
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x19
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x19
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x19
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x19
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x19
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x19
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x19
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x19
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x19
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x19
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x19
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x19
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x19
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x19
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x19
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x19
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x19
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x19
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x19
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x19
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x19
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x19
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x19
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x19
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x19
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x19
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x19
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x19
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x19
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x19
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x19
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x19
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x19
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x19
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x19
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x19
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x19
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x19
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x19
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x19
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x19
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x19
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x19
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x19
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x19
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x19
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x19
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x19
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x19
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x19
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x19
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x19
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x19
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x19
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x19
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x19
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x19
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x19
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x19
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x19
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x19
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x19
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x19
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x19
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x19
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x19
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x19
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x19
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x19
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x19
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x19
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x19
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x19
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x19
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x19
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x19
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x19
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x19
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x19
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x19
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x19
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x19
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x19
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x19
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x19
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x19
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x19
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x19
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x19
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x19
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x19
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x19
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x19
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x19
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x19
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x19
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x19
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x19
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x19
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x19
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x19
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x19
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x19
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x19
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x19
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x19
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x19
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x19
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x19
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x19
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x19
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x19
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x19
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x19
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x19
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x19
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x19
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x19
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x19
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x19
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x19
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x19
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x19
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x19
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x19
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x19
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x19
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x19
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x19
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x19
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x19
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x19
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x19
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x19
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x19
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x19
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x19
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x19
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x19
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x19
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x19
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x19
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x19
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x19
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x19
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x19
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x19
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x19
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x19
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x19
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x19
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x19
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x19
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x19
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x19
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x19
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x19
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x19
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x19
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x19
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x19
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x19
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x19
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x19
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x19
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x19
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x19
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x19
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x19
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x19
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x19
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x19
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x19
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x19
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x19
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x19
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x19
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x19
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x19
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x19
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x19
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x19
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x19
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x19
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x19
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x19
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x19
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x19
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x341f
	.string	"tree_common"
	.byte	0x10
	.byte	0x4
	.byte	0x8c
	.uleb128 0x7
	.string	"chain"
	.byte	0x4
	.byte	0x8d
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF4
	.byte	0x4
	.byte	0x8e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x90
	.long	0xac3
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"side_effects_flag"
	.byte	0x4
	.byte	0x92
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"constant_flag"
	.byte	0x4
	.byte	0x93
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"addressable_flag"
	.byte	0x4
	.byte	0x94
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"volatile_flag"
	.byte	0x4
	.byte	0x95
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"readonly_flag"
	.byte	0x4
	.byte	0x96
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"unsigned_flag"
	.byte	0x4
	.byte	0x97
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"asm_written_flag"
	.byte	0x4
	.byte	0x98
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"not_emitted_by_gxx"
	.byte	0x4
	.byte	0x9a
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"used_flag"
	.byte	0x4
	.byte	0x9f
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"nothrow_flag"
	.byte	0x4
	.byte	0xa0
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"static_flag"
	.byte	0x4
	.byte	0xa1
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"public_flag"
	.byte	0x4
	.byte	0xa2
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"private_flag"
	.byte	0x4
	.byte	0xa3
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"protected_flag"
	.byte	0x4
	.byte	0xa4
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bounded_flag"
	.byte	0x4
	.byte	0xa5
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"deprecated_flag"
	.byte	0x4
	.byte	0xa6
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF8
	.byte	0x4
	.byte	0xa8
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF9
	.byte	0x4
	.byte	0xa9
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x4
	.byte	0xaa
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF11
	.byte	0x4
	.byte	0xab
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF12
	.byte	0x4
	.byte	0xac
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF13
	.byte	0x4
	.byte	0xad
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF14
	.byte	0x4
	.byte	0xae
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF15
	.byte	0x4
	.byte	0xb0
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sbuf"
	.byte	0x4
	.byte	0xb5
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"sdram"
	.byte	0x4
	.byte	0xb6
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v1buf"
	.byte	0x4
	.byte	0xb7
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v2buf"
	.byte	0x4
	.byte	0xb8
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v4buf"
	.byte	0x4
	.byte	0xb9
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x345b
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x4
	.value	0x30a
	.uleb128 0xe
	.string	"low"
	.byte	0x4
	.value	0x30b
	.long	0x48b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"high"
	.byte	0x4
	.value	0x30c
	.long	0x47a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x34a3
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x4
	.value	0x303
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x4
	.value	0x304
	.long	0x313e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x4
	.value	0x305
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"int_cst"
	.byte	0x4
	.value	0x30d
	.long	0x341f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x34f1
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x4
	.value	0x31f
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x4
	.value	0x320
	.long	0x313e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x4
	.value	0x321
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real_cst_ptr"
	.byte	0x4
	.value	0x322
	.long	0x34fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1a
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x34f1
	.uleb128 0xd
	.long	0x356b
	.string	"tree_string"
	.byte	0x20
	.byte	0x4
	.value	0x333
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x4
	.value	0x334
	.long	0x313e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x4
	.value	0x335
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"length"
	.byte	0x4
	.value	0x336
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"pointer"
	.byte	0x4
	.value	0x337
	.long	0x2c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"st"
	.byte	0x4
	.value	0x339
	.long	0x356b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1435
	.uleb128 0xd
	.long	0x35c6
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x4
	.value	0x342
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x4
	.value	0x343
	.long	0x313e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x4
	.value	0x344
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real"
	.byte	0x4
	.value	0x345
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"imag"
	.byte	0x4
	.value	0x346
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xd
	.long	0x360e
	.string	"tree_vector"
	.byte	0x18
	.byte	0x4
	.value	0x355
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x4
	.value	0x356
	.long	0x313e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x4
	.value	0x357
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"elements"
	.byte	0x4
	.value	0x358
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x4
	.long	0x3658
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x15
	.byte	0xa2
	.uleb128 0x7
	.string	"limit"
	.byte	0x15
	.byte	0xa3
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x15
	.byte	0xa4
	.long	0x3658
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"contents"
	.byte	0x15
	.byte	0xa5
	.long	0x770
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x360e
	.uleb128 0xd
	.long	0x378b
	.string	"obstack"
	.byte	0x2c
	.byte	0x12
	.value	0x31b
	.uleb128 0x7
	.string	"chunk_size"
	.byte	0x15
	.byte	0xaa
	.long	0x4c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"chunk"
	.byte	0x15
	.byte	0xab
	.long	0x3658
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"object_base"
	.byte	0x15
	.byte	0xac
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next_free"
	.byte	0x15
	.byte	0xad
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"chunk_limit"
	.byte	0x15
	.byte	0xae
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"temp"
	.byte	0x15
	.byte	0xaf
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"alignment_mask"
	.byte	0x15
	.byte	0xb0
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"chunkfun"
	.byte	0x15
	.byte	0xb5
	.long	0x37a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"freefun"
	.byte	0x15
	.byte	0xb6
	.long	0x37b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"extra_arg"
	.byte	0x15
	.byte	0xb7
	.long	0x4e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"use_extra_arg"
	.byte	0x15
	.byte	0xbd
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"maybe_empty_object"
	.byte	0x15
	.byte	0xbe
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"alloc_failed"
	.byte	0x15
	.byte	0xc2
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x1e
	.long	0x37a0
	.byte	0x1
	.long	0x3658
	.uleb128 0x16
	.long	0x4e1
	.uleb128 0x16
	.long	0x4c4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x378b
	.uleb128 0x15
	.long	0x37b7
	.byte	0x1
	.uleb128 0x16
	.long	0x4e1
	.uleb128 0x16
	.long	0x3658
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x37a6
	.uleb128 0x14
	.long	0x37fb
	.long	.LASF16
	.byte	0xc
	.byte	0x7
	.byte	0x19
	.uleb128 0x7
	.string	"str"
	.byte	0x7
	.byte	0x1c
	.long	0x780
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"len"
	.byte	0x7
	.byte	0x1d
	.long	0x3b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"hash_value"
	.byte	0x7
	.byte	0x1e
	.long	0x3b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x3832
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x4
	.value	0x376
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x4
	.value	0x377
	.long	0x313e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"id"
	.byte	0x4
	.value	0x378
	.long	0x37bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	0x3879
	.string	"tree_list"
	.byte	0x18
	.byte	0x4
	.value	0x380
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x4
	.value	0x381
	.long	0x313e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"purpose"
	.byte	0x4
	.value	0x382
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"value"
	.byte	0x4
	.value	0x383
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x38ba
	.string	"tree_vec"
	.byte	0x18
	.byte	0x4
	.value	0x38e
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x4
	.value	0x38f
	.long	0x313e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"length"
	.byte	0x4
	.value	0x390
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"a"
	.byte	0x4
	.value	0x391
	.long	0x38ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x10
	.long	0x38ca
	.long	0x1e4
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x3916
	.string	"tree_exp"
	.byte	0x18
	.byte	0x4
	.value	0x3d4
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x4
	.value	0x3d5
	.long	0x313e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"complexity"
	.byte	0x4
	.value	0x3d6
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"operands"
	.byte	0x4
	.value	0x3d9
	.long	0x38ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x3a06
	.string	"tree_block"
	.byte	0x2c
	.byte	0x4
	.value	0x40a
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x4
	.value	0x40b
	.long	0x313e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"handler_block_flag"
	.byte	0x4
	.value	0x40d
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.long	.LASF17
	.byte	0x4
	.value	0x40e
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.string	"block_num"
	.byte	0x4
	.value	0x40f
	.long	0x3b3
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"vars"
	.byte	0x4
	.value	0x411
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"subblocks"
	.byte	0x4
	.value	0x412
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"supercontext"
	.byte	0x4
	.value	0x413
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1d
	.long	.LASF18
	.byte	0x4
	.value	0x414
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"fragment_origin"
	.byte	0x4
	.value	0x415
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"fragment_chain"
	.byte	0x4
	.value	0x416
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x21
	.long	0x3a4d
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x4
	.value	0x570
	.uleb128 0xa
	.string	"address"
	.byte	0x4
	.value	0x571
	.long	0x2da
	.uleb128 0xa
	.string	"pointer"
	.byte	0x4
	.value	0x572
	.long	0x4e3
	.uleb128 0xa
	.string	"die"
	.byte	0x4
	.value	0x573
	.long	0x3a5a
	.byte	0x0
	.uleb128 0x1a
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3a4d
	.uleb128 0xd
	.long	0x3da5
	.string	"tree_type"
	.byte	0x74
	.byte	0x4
	.value	0x551
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x4
	.value	0x552
	.long	0x313e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"values"
	.byte	0x4
	.value	0x553
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"size"
	.byte	0x4
	.value	0x554
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1d
	.long	.LASF19
	.byte	0x4
	.value	0x555
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1d
	.long	.LASF20
	.byte	0x4
	.value	0x556
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"uid"
	.byte	0x4
	.value	0x557
	.long	0x3b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"precision"
	.byte	0x4
	.value	0x559
	.long	0x3b3
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"mode"
	.byte	0x4
	.value	0x55a
	.long	0x836
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"string_flag"
	.byte	0x4
	.value	0x55c
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"no_force_blk_flag"
	.byte	0x4
	.value	0x55d
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"needs_constructing_flag"
	.byte	0x4
	.value	0x55e
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"transparent_union_flag"
	.byte	0x4
	.value	0x55f
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"packed_flag"
	.byte	0x4
	.value	0x560
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"restrict_flag"
	.byte	0x4
	.value	0x561
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF21
	.byte	0x4
	.value	0x562
	.long	0x3b3
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF8
	.byte	0x4
	.value	0x564
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF9
	.byte	0x4
	.value	0x565
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF10
	.byte	0x4
	.value	0x566
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF11
	.byte	0x4
	.value	0x567
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF12
	.byte	0x4
	.value	0x568
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF13
	.byte	0x4
	.value	0x569
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF14
	.byte	0x4
	.value	0x56a
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF22
	.byte	0x4
	.value	0x56b
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.long	.LASF23
	.byte	0x4
	.value	0x56d
	.long	0x3b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"pointer_to"
	.byte	0x4
	.value	0x56e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"reference_to"
	.byte	0x4
	.value	0x56f
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"symtab"
	.byte	0x4
	.value	0x574
	.long	0x3a06
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1d
	.long	.LASF24
	.byte	0x4
	.value	0x576
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"minval"
	.byte	0x4
	.value	0x577
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"maxval"
	.byte	0x4
	.value	0x578
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"next_variant"
	.byte	0x4
	.value	0x579
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"main_variant"
	.byte	0x4
	.value	0x57a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1d
	.long	.LASF25
	.byte	0x4
	.value	0x57b
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1d
	.long	.LASF26
	.byte	0x4
	.value	0x57c
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"alias_set"
	.byte	0x4
	.value	0x57d
	.long	0x47a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1d
	.long	.LASF27
	.byte	0x4
	.value	0x57f
	.long	0x3dc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"ty_idx"
	.byte	0x4
	.value	0x581
	.long	0x3b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"field_ids_used"
	.byte	0x4
	.value	0x582
	.long	0x3b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"dst_id"
	.byte	0x4
	.value	0x583
	.long	0x13f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"extra_methods"
	.byte	0x4
	.value	0x58a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0xd
	.long	0x3dc6
	.string	"lang_type"
	.byte	0x4c
	.byte	0x4
	.value	0x57f
	.uleb128 0xe
	.string	"u"
	.byte	0xb
	.value	0x4e0
	.long	0x6a33
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3da5
	.uleb128 0xd
	.long	0x3e0f
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x4
	.value	0x817
	.uleb128 0x20
	.long	.LASF23
	.byte	0x4
	.value	0x818
	.long	0x3b3
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"off_align"
	.byte	0x4
	.value	0x819
	.long	0x3b3
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x3e44
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x4
	.value	0x80e
	.uleb128 0xa
	.string	"f"
	.byte	0x4
	.value	0x811
	.long	0x1494
	.uleb128 0xa
	.string	"i"
	.byte	0x4
	.value	0x814
	.long	0x47a
	.uleb128 0xa
	.string	"a"
	.byte	0x4
	.value	0x81a
	.long	0x3dcc
	.byte	0x0
	.uleb128 0x21
	.long	0x3e83
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x4
	.value	0x837
	.uleb128 0xa
	.string	"f"
	.byte	0x4
	.value	0x838
	.long	0x4826
	.uleb128 0xa
	.string	"r"
	.byte	0x4
	.value	0x839
	.long	0x9c
	.uleb128 0xa
	.string	"t"
	.byte	0x4
	.value	0x83a
	.long	0x1e4
	.uleb128 0xa
	.string	"i"
	.byte	0x4
	.value	0x83b
	.long	0x2da
	.byte	0x0
	.uleb128 0x22
	.long	0x4826
	.long	.LASF28
	.value	0x134
	.byte	0x4
	.value	0x7c2
	.uleb128 0x7
	.string	"eh"
	.byte	0x9
	.byte	0xb5
	.long	0x5628
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0x9
	.byte	0xb6
	.long	0x563c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF29
	.byte	0x9
	.byte	0xb7
	.long	0x5642
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0x9
	.byte	0xb8
	.long	0x5648
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0x9
	.byte	0xb9
	.long	0x565e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF24
	.byte	0x9
	.byte	0xbe
	.long	0x2c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x9
	.byte	0xc1
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"outer"
	.byte	0x9
	.byte	0xc4
	.long	0x4826
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0x9
	.byte	0xc9
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1c
	.long	.LASF30
	.byte	0x9
	.byte	0xce
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0x9
	.byte	0xd3
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0x9
	.byte	0xd7
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"arg_offset_rtx"
	.byte	0x9
	.byte	0xdb
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"args_info"
	.byte	0x9
	.byte	0xdf
	.long	0x3d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"return_rtx"
	.byte	0x9
	.byte	0xe5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"internal_arg_pointer"
	.byte	0x9
	.byte	0xe8
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x1c
	.long	.LASF31
	.byte	0x9
	.byte	0xec
	.long	0x2c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0x9
	.byte	0xf0
	.long	0x567b
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0x9
	.byte	0xf3
	.long	0x2da
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"x_nonlocal_labels"
	.byte	0x9
	.byte	0xf8
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x9
	.byte	0xfe
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x9
	.value	0x102
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x9
	.value	0x107
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"x_cleanup_label"
	.byte	0x9
	.value	0x10d
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xe
	.string	"x_return_label"
	.byte	0x9
	.value	0x112
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xe
	.string	"computed_goto_common_label"
	.byte	0x9
	.value	0x115
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"computed_goto_common_reg"
	.byte	0x9
	.value	0x116
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xe
	.string	"x_save_expr_regs"
	.byte	0x9
	.value	0x11a
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xe
	.string	"x_stack_slot_list"
	.byte	0x9
	.value	0x11e
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xe
	.string	"x_rtl_expr_chain"
	.byte	0x9
	.value	0x121
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xe
	.string	"x_tail_recursion_label"
	.byte	0x9
	.value	0x125
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xe
	.string	"x_tail_recursion_reentry"
	.byte	0x9
	.value	0x128
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xe
	.string	"x_arg_pointer_save_area"
	.byte	0x9
	.value	0x12e
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xe
	.string	"x_clobber_return_insn"
	.byte	0x9
	.value	0x133
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xe
	.string	"x_frame_offset"
	.byte	0x9
	.value	0x138
	.long	0x47a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xe
	.string	"x_context_display"
	.byte	0x9
	.value	0x13d
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xe
	.string	"x_trampoline_list"
	.byte	0x9
	.value	0x146
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"x_parm_birth_insn"
	.byte	0x9
	.value	0x149
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"x_last_parm_insn"
	.byte	0x9
	.value	0x14d
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"x_max_parm_reg"
	.byte	0x9
	.value	0x151
	.long	0x3b3
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"x_parm_reg_stack_loc"
	.byte	0x9
	.value	0x157
	.long	0x54cc
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"x_temp_slots"
	.byte	0x9
	.value	0x15a
	.long	0x568d
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"x_temp_slot_level"
	.byte	0x9
	.value	0x15d
	.long	0x2da
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"x_var_temp_slot_level"
	.byte	0x9
	.value	0x160
	.long	0x2da
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"x_target_temp_slot_level"
	.byte	0x9
	.value	0x166
	.long	0x2da
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"fixup_var_refs_queue"
	.byte	0x9
	.value	0x16a
	.long	0x5328
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"inlinable"
	.byte	0x9
	.value	0x16d
	.long	0x2da
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xe
	.string	"no_debugging_symbols"
	.byte	0x9
	.value	0x16e
	.long	0x2da
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xe
	.string	"original_arg_vector"
	.byte	0x9
	.value	0x16f
	.long	0x19c
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xe
	.string	"original_decl_initial"
	.byte	0x9
	.value	0x170
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xe
	.string	"inl_last_parm_insn"
	.byte	0x9
	.value	0x173
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xe
	.string	"inl_max_label_num"
	.byte	0x9
	.value	0x175
	.long	0x2da
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xe
	.string	"funcdef_no"
	.byte	0x9
	.value	0x178
	.long	0x2da
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xe
	.string	"machine"
	.byte	0x9
	.value	0x17d
	.long	0x56a6
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xe
	.string	"stack_alignment_needed"
	.byte	0x9
	.value	0x17f
	.long	0x2da
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xe
	.string	"preferred_stack_boundary"
	.byte	0x9
	.value	0x181
	.long	0x2da
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0x1d
	.long	.LASF32
	.byte	0x9
	.value	0x184
	.long	0x58e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xe
	.string	"epilogue_delay_list"
	.byte	0x9
	.value	0x18a
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1f
	.string	"returns_struct"
	.byte	0x9
	.value	0x190
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"returns_pcc_struct"
	.byte	0x9
	.value	0x194
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"returns_pointer"
	.byte	0x9
	.value	0x197
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"needs_context"
	.byte	0x9
	.value	0x19a
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_setjmp"
	.byte	0x9
	.value	0x19d
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_longjmp"
	.byte	0x9
	.value	0x1a0
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_alloca"
	.byte	0x9
	.value	0x1a4
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_eh_return"
	.byte	0x9
	.value	0x1a7
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_nonlocal_label"
	.byte	0x9
	.value	0x1ab
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_nonlocal_goto"
	.byte	0x9
	.value	0x1af
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"contains_functions"
	.byte	0x9
	.value	0x1b2
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_computed_jump"
	.byte	0x9
	.value	0x1b5
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"is_thunk"
	.byte	0x9
	.value	0x1ba
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"all_throwers_are_sibcalls"
	.byte	0x9
	.value	0x1c1
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"instrument_entry_exit"
	.byte	0x9
	.value	0x1c5
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"arc_profile"
	.byte	0x9
	.value	0x1c8
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"profile"
	.byte	0x9
	.value	0x1cb
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"limit_stack"
	.byte	0x9
	.value	0x1cf
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"stdarg"
	.byte	0x9
	.value	0x1d2
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"x_whole_function_mode_p"
	.byte	0x9
	.value	0x1d8
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x9
	.value	0x1e1
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_const_pool"
	.byte	0x9
	.value	0x1e4
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_pic_offset_table"
	.byte	0x9
	.value	0x1e7
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_eh_lsda"
	.byte	0x9
	.value	0x1ea
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"arg_pointer_save_area_init"
	.byte	0x9
	.value	0x1ed
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.long	.LASF33
	.byte	0x9
	.value	0x1fa
	.long	0x55b2
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xe
	.string	"max_jumptable_ents"
	.byte	0x9
	.value	0x1fe
	.long	0x2da
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3e83
	.uleb128 0x23
	.long	0x4864
	.byte	0x4
	.byte	0x4
	.value	0x84e
	.uleb128 0xa
	.string	"st"
	.byte	0x4
	.value	0x84f
	.long	0x356b
	.uleb128 0xa
	.string	"label_idx"
	.byte	0x4
	.value	0x850
	.long	0x13e5
	.uleb128 0xa
	.string	"field_id"
	.byte	0x4
	.value	0x851
	.long	0x3b3
	.byte	0x0
	.uleb128 0xd
	.long	0x4fa9
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x4
	.value	0x7c5
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x4
	.value	0x7c6
	.long	0x313e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"locus"
	.byte	0x4
	.value	0x7c7
	.long	0xab1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"uid"
	.byte	0x4
	.value	0x7c8
	.long	0x3b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"size"
	.byte	0x4
	.value	0x7c9
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1f
	.string	"mode"
	.byte	0x4
	.value	0x7ca
	.long	0x836
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"external_flag"
	.byte	0x4
	.value	0x7cc
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"nonlocal_flag"
	.byte	0x4
	.value	0x7cd
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"regdecl_flag"
	.byte	0x4
	.value	0x7ce
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"inline_flag"
	.byte	0x4
	.value	0x7cf
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"bit_field_flag"
	.byte	0x4
	.value	0x7d0
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"virtual_flag"
	.byte	0x4
	.value	0x7d1
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"ignored_flag"
	.byte	0x4
	.value	0x7d2
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.long	.LASF17
	.byte	0x4
	.value	0x7d3
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"sbuf_flag"
	.byte	0x4
	.value	0x7d7
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"sdram_flag"
	.byte	0x4
	.value	0x7d8
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"v1buf_flag"
	.byte	0x4
	.value	0x7d9
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"v2buf_flag"
	.byte	0x4
	.value	0x7da
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"v4buf_flag"
	.byte	0x4
	.value	0x7db
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"in_system_header_flag"
	.byte	0x4
	.value	0x7df
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"common_flag"
	.byte	0x4
	.value	0x7e0
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"defer_output"
	.byte	0x4
	.value	0x7e1
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"transparent_union"
	.byte	0x4
	.value	0x7e2
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"static_ctor_flag"
	.byte	0x4
	.value	0x7e3
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"static_dtor_flag"
	.byte	0x4
	.value	0x7e4
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"artificial_flag"
	.byte	0x4
	.value	0x7e5
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"weak_flag"
	.byte	0x4
	.value	0x7e6
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"non_addr_const_p"
	.byte	0x4
	.value	0x7e8
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"no_instrument_function_entry_exit"
	.byte	0x4
	.value	0x7e9
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"comdat_flag"
	.byte	0x4
	.value	0x7ea
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"malloc_flag"
	.byte	0x4
	.value	0x7eb
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"no_limit_stack"
	.byte	0x4
	.value	0x7ec
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF7
	.byte	0x4
	.value	0x7ed
	.long	0x1444
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"pure_flag"
	.byte	0x4
	.value	0x7ee
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF21
	.byte	0x4
	.value	0x7f0
	.long	0x3b3
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"non_addressable"
	.byte	0x4
	.value	0x7f1
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF22
	.byte	0x4
	.value	0x7f2
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"uninlinable"
	.byte	0x4
	.value	0x7f3
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"thread_local_flag"
	.byte	0x4
	.value	0x7f4
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"inlined_function_flag"
	.byte	0x4
	.value	0x7f5
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"threadprivate_flag"
	.byte	0x4
	.value	0x7f7
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF8
	.byte	0x4
	.value	0x7fa
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF9
	.byte	0x4
	.value	0x7fb
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF10
	.byte	0x4
	.value	0x7fc
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF11
	.byte	0x4
	.value	0x7fd
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF12
	.byte	0x4
	.value	0x7fe
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF13
	.byte	0x4
	.value	0x7ff
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF14
	.byte	0x4
	.value	0x800
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF15
	.byte	0x4
	.value	0x801
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"syscall_linkage_flag"
	.byte	0x4
	.value	0x804
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"widen_retval_flag"
	.byte	0x4
	.value	0x805
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"emitted_by_gxx"
	.byte	0x4
	.value	0x808
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"u1"
	.byte	0x4
	.value	0x81b
	.long	0x3e0f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1d
	.long	.LASF19
	.byte	0x4
	.value	0x81d
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1d
	.long	.LASF24
	.byte	0x4
	.value	0x81e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1d
	.long	.LASF26
	.byte	0x4
	.value	0x81f
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"arguments"
	.byte	0x4
	.value	0x820
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"result"
	.byte	0x4
	.value	0x821
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"initial"
	.byte	0x4
	.value	0x822
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"initial_2"
	.byte	0x4
	.value	0x824
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"alias_target"
	.byte	0x4
	.value	0x825
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"thunk_delta"
	.byte	0x4
	.value	0x829
	.long	0x47a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1d
	.long	.LASF18
	.byte	0x4
	.value	0x82b
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"assembler_name"
	.byte	0x4
	.value	0x82c
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"section_name"
	.byte	0x4
	.value	0x82d
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1d
	.long	.LASF20
	.byte	0x4
	.value	0x82e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"rtl"
	.byte	0x4
	.value	0x82f
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"live_range_rtl"
	.byte	0x4
	.value	0x830
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"u2"
	.byte	0x4
	.value	0x83c
	.long	0x3e44
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"saved_tree"
	.byte	0x4
	.value	0x83f
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"inlined_fns"
	.byte	0x4
	.value	0x843
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"vindex"
	.byte	0x4
	.value	0x845
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"pointer_alias_set"
	.byte	0x4
	.value	0x846
	.long	0x47a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x1d
	.long	.LASF27
	.byte	0x4
	.value	0x848
	.long	0x4fe0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x1f
	.string	"symtab_idx"
	.byte	0x4
	.value	0x84b
	.long	0x3b3
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x1f
	.string	"label_defined"
	.byte	0x4
	.value	0x84c
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"sgi_u1"
	.byte	0x4
	.value	0x852
	.long	0x482c
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"decl_dst_id"
	.byte	0x4
	.value	0x858
	.long	0x13f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"sl_model_name"
	.byte	0x4
	.value	0x85c
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0xd
	.long	0x4fe0
	.string	"lang_decl"
	.byte	0x34
	.byte	0x4
	.value	0x848
	.uleb128 0xe
	.string	"decl_flags"
	.byte	0xb
	.value	0x73a
	.long	0x6aed
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"u"
	.byte	0xb
	.value	0x763
	.long	0x6f0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4fa9
	.uleb128 0x18
	.long	0x5264
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xf
	.byte	0x1d
	.uleb128 0x19
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x19
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x19
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x19
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x19
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x19
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x19
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x19
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x19
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x19
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x19
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x19
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x19
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x19
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x19
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x19
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x19
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x19
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x19
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x19
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x19
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x19
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x19
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x19
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x19
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x19
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x19
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x19
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x19
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x19
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x19
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x19
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x19
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x19
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x19
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0xd
	.long	0x52b3
	.string	"tree_omp"
	.byte	0x18
	.byte	0x4
	.value	0x864
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x4
	.value	0x865
	.long	0x313e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"choice"
	.byte	0x4
	.value	0x866
	.long	0x4fe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"omp_clause_list"
	.byte	0x4
	.value	0x867
	.long	0x4e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x3
	.byte	0x4
	.long	0x1e4
	.uleb128 0x4
	.long	0x5328
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x9
	.byte	0x17
	.uleb128 0x7
	.string	"modified"
	.byte	0x9
	.byte	0x18
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"promoted_mode"
	.byte	0x9
	.byte	0x19
	.long	0x836
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"unsignedp"
	.byte	0x9
	.byte	0x1a
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next"
	.byte	0x9
	.byte	0x1b
	.long	0x5328
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x52c2
	.uleb128 0x14
	.long	0x5377
	.long	.LASF34
	.byte	0x10
	.byte	0x9
	.byte	0x24
	.uleb128 0x7
	.string	"first"
	.byte	0x9
	.byte	0x26
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last"
	.byte	0x9
	.byte	0x27
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF35
	.byte	0x9
	.byte	0x28
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next"
	.byte	0x9
	.byte	0x29
	.long	0x5377
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x532e
	.uleb128 0x4
	.long	0x54cc
	.string	"emit_status"
	.byte	0x34
	.byte	0x9
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0x9
	.byte	0x3a
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0x9
	.byte	0x3d
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_insn"
	.byte	0x9
	.byte	0x44
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_insn"
	.byte	0x9
	.byte	0x45
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.long	.LASF35
	.byte	0x9
	.byte	0x4a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF34
	.byte	0x9
	.byte	0x50
	.long	0x5377
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0x9
	.byte	0x54
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0x9
	.byte	0x58
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0x9
	.byte	0x59
	.long	0x2c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0x9
	.byte	0x5f
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"regno_pointer_align"
	.byte	0x9
	.byte	0x65
	.long	0x78b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0x9
	.byte	0x69
	.long	0x52bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"x_regno_reg_rtx"
	.byte	0x9
	.byte	0x70
	.long	0x54cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x55b2
	.string	"expr_status"
	.byte	0x1c
	.byte	0x9
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0x9
	.byte	0x80
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0x9
	.byte	0x91
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0x9
	.byte	0x97
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_saveregs_value"
	.byte	0x9
	.byte	0x9c
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_apply_args_value"
	.byte	0x9
	.byte	0x9f
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x_forced_labels"
	.byte	0x9
	.byte	0xa2
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_pending_chain"
	.byte	0x9
	.byte	0xa5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x24
	.long	0x561c
	.long	.LASF33
	.byte	0x4
	.byte	0x9
	.value	0x1f1
	.uleb128 0x19
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x19
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x19
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1a
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x561c
	.uleb128 0x1a
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x562e
	.uleb128 0x3
	.byte	0x4
	.long	0x54d2
	.uleb128 0x3
	.byte	0x4
	.long	0x537d
	.uleb128 0x1a
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x564e
	.uleb128 0x1a
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5664
	.uleb128 0x1a
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5681
	.uleb128 0x1a
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5693
	.uleb128 0xd
	.long	0x58e2
	.string	"language_function"
	.byte	0x64
	.byte	0x9
	.value	0x184
	.uleb128 0xe
	.string	"base"
	.byte	0xb
	.value	0x370
	.long	0x5e65
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"x_dtor_label"
	.byte	0xb
	.value	0x372
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"x_current_class_ptr"
	.byte	0xb
	.value	0x373
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"x_current_class_ref"
	.byte	0xb
	.value	0x374
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"x_eh_spec_block"
	.byte	0xb
	.value	0x375
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"x_in_charge_parm"
	.byte	0xb
	.value	0x376
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"x_vtt_parm"
	.byte	0xb
	.value	0x377
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"x_return_value"
	.byte	0xb
	.value	0x378
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"returns_value"
	.byte	0xb
	.value	0x37a
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"returns_null"
	.byte	0xb
	.value	0x37b
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"returns_abnormally"
	.byte	0xb
	.value	0x37c
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"in_function_try_handler"
	.byte	0xb
	.value	0x37d
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"in_base_initializer"
	.byte	0xb
	.value	0x37e
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"x_expanding_p"
	.byte	0xb
	.value	0x37f
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1f
	.string	"can_throw"
	.byte	0xb
	.value	0x382
	.long	0x52b3
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"x_named_label_uses"
	.byte	0xb
	.value	0x384
	.long	0x627f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"x_named_labels"
	.byte	0xb
	.value	0x385
	.long	0x6298
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1d
	.long	.LASF36
	.byte	0xb
	.value	0x386
	.long	0x5f08
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"x_local_names"
	.byte	0xb
	.value	0x387
	.long	0x5dc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1d
	.long	.LASF31
	.byte	0xb
	.value	0x389
	.long	0x2c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"unparsed_inlines"
	.byte	0xb
	.value	0x38a
	.long	0x62ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x56ac
	.uleb128 0x4
	.long	0x591e
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xd
	.byte	0x24
	.uleb128 0x7
	.string	"rtx"
	.byte	0xd
	.byte	0x32
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"age"
	.byte	0xd
	.byte	0x36
	.long	0x3b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x18
	.long	0x5ab9
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xd
	.byte	0x3c
	.uleb128 0x19
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x19
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x19
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x19
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x19
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x19
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x19
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x19
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x19
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x19
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x19
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x19
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x19
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x19
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x19
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x19
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x19
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x19
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x19
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x19
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x19
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x8
	.long	0x5bb5
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xd
	.byte	0x55
	.uleb128 0x25
	.string	"c"
	.byte	0xd
	.byte	0x56
	.long	0x800
	.uleb128 0x25
	.string	"uc"
	.byte	0xd
	.byte	0x58
	.long	0x5bb5
	.uleb128 0x25
	.string	"s"
	.byte	0xd
	.byte	0x5a
	.long	0x5bc5
	.uleb128 0x25
	.string	"us"
	.byte	0xd
	.byte	0x5c
	.long	0x5bd5
	.uleb128 0x25
	.string	"i"
	.byte	0xd
	.byte	0x5e
	.long	0x5be5
	.uleb128 0x25
	.string	"u"
	.byte	0xd
	.byte	0x60
	.long	0x5bf5
	.uleb128 0x25
	.string	"l"
	.byte	0xd
	.byte	0x62
	.long	0x5c05
	.uleb128 0x25
	.string	"ul"
	.byte	0xd
	.byte	0x64
	.long	0x5c15
	.uleb128 0x25
	.string	"hint"
	.byte	0xd
	.byte	0x66
	.long	0x5c25
	.uleb128 0x25
	.string	"uhint"
	.byte	0xd
	.byte	0x68
	.long	0x5c35
	.uleb128 0x25
	.string	"generic"
	.byte	0xd
	.byte	0x6a
	.long	0x5c45
	.uleb128 0x25
	.string	"cptr"
	.byte	0xd
	.byte	0x6c
	.long	0x5c55
	.uleb128 0x25
	.string	"rtx"
	.byte	0xd
	.byte	0x6e
	.long	0x5c65
	.uleb128 0x25
	.string	"rtvec"
	.byte	0xd
	.byte	0x70
	.long	0x5c75
	.uleb128 0x25
	.string	"tree"
	.byte	0xd
	.byte	0x72
	.long	0x5c85
	.uleb128 0x25
	.string	"bitmap"
	.byte	0xd
	.byte	0x74
	.long	0x5c95
	.uleb128 0x25
	.string	"reg"
	.byte	0xd
	.byte	0x76
	.long	0x5cbd
	.uleb128 0x25
	.string	"const_equiv"
	.byte	0xd
	.byte	0x78
	.long	0x5ce2
	.uleb128 0x25
	.string	"bb"
	.byte	0xd
	.byte	0x7a
	.long	0x5cf2
	.uleb128 0x25
	.string	"te"
	.byte	0xd
	.byte	0x7c
	.long	0x5d1a
	.byte	0x0
	.uleb128 0x10
	.long	0x5bc5
	.long	0x422
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5bd5
	.long	0x46d
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5be5
	.long	0x433
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5bf5
	.long	0x2da
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5c05
	.long	0x3b3
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5c15
	.long	0x4c4
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5c25
	.long	0x449
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5c35
	.long	0x47a
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5c45
	.long	0x48b
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5c55
	.long	0x4e1
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5c65
	.long	0x4e3
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5c75
	.long	0xa7
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5c85
	.long	0x1a9
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5c95
	.long	0x1f0
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5ca5
	.long	0x5cb7
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5ca5
	.uleb128 0x10
	.long	0x5ccd
	.long	0x5cdc
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5ccd
	.uleb128 0x10
	.long	0x5cf2
	.long	0x58e8
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5d02
	.long	0x5d14
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5d02
	.uleb128 0x10
	.long	0x5d2a
	.long	0x5d35
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5d2a
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xd
	.byte	0x7e
	.long	0x5ab9
	.uleb128 0x4
	.long	0x5dc1
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xd
	.byte	0x81
	.uleb128 0x7
	.string	"num_elements"
	.byte	0xd
	.byte	0x82
	.long	0x414
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elements_used"
	.byte	0xd
	.byte	0x83
	.long	0x414
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF4
	.byte	0xd
	.byte	0x85
	.long	0x591e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF24
	.byte	0xd
	.byte	0x86
	.long	0x2c7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"data"
	.byte	0xd
	.byte	0x87
	.long	0x5d3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xd
	.byte	0x8a
	.long	0x5dd4
	.uleb128 0x3
	.byte	0x4
	.long	0x5d4e
	.uleb128 0xd
	.long	0x5e65
	.string	"stmt_tree_s"
	.byte	0x10
	.byte	0xc
	.value	0x101
	.uleb128 0xe
	.string	"x_last_stmt"
	.byte	0xc
	.value	0x103
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"x_last_expr_type"
	.byte	0xc
	.value	0x106
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"x_last_expr_filename"
	.byte	0xc
	.value	0x108
	.long	0x2c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"stmts_are_full_exprs_p"
	.byte	0xc
	.value	0x117
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x5eb0
	.string	"c_language_function"
	.byte	0x14
	.byte	0xc
	.value	0x11f
	.uleb128 0x1d
	.long	.LASF37
	.byte	0xc
	.value	0x122
	.long	0x5dda
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"x_scope_stmt_stack"
	.byte	0xc
	.value	0x124
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	0x5ee4
	.string	"c_lang_decl"
	.byte	0x4
	.byte	0xc
	.value	0x169
	.uleb128 0x1f
	.string	"declared_inline"
	.byte	0xc
	.value	0x16a
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LASF38
	.byte	0xb
	.byte	0xe4
	.long	0x5eef
	.uleb128 0x27
	.long	.LASF38
	.byte	0x1
	.uleb128 0x1a
	.string	"cp_binding_level"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5ef5
	.uleb128 0x12
	.string	"binding_table"
	.byte	0xb
	.value	0x103
	.long	0x5f24
	.uleb128 0x3
	.byte	0x4
	.long	0x5f2a
	.uleb128 0x1a
	.string	"binding_table_s"
	.byte	0x1
	.uleb128 0xd
	.long	0x5feb
	.string	"z_candidate"
	.byte	0x24
	.byte	0xb
	.value	0x1b6
	.uleb128 0xe
	.string	"fn"
	.byte	0x1
	.value	0x254
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF39
	.byte	0x1
	.value	0x255
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"second_conv"
	.byte	0x1
	.value	0x256
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.value	0x257
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1d
	.long	.LASF41
	.byte	0x1
	.value	0x25d
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1d
	.long	.LASF42
	.byte	0x1
	.value	0x263
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"template"
	.byte	0x1
	.value	0x264
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"warnings"
	.byte	0x1
	.value	0x265
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"next"
	.byte	0x1
	.value	0x266
	.long	0x5feb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5f3c
	.uleb128 0xd
	.long	0x625c
	.string	"saved_scope"
	.byte	0x6c
	.byte	0xb
	.value	0x316
	.uleb128 0xe
	.string	"old_bindings"
	.byte	0xb
	.value	0x317
	.long	0x625c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"old_namespace"
	.byte	0xb
	.value	0x318
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"decl_ns_list"
	.byte	0xb
	.value	0x319
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"class_name"
	.byte	0xb
	.value	0x31a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1d
	.long	.LASF43
	.byte	0xb
	.value	0x31b
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"access_specifier"
	.byte	0xb
	.value	0x31c
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"function_decl"
	.byte	0xb
	.value	0x31d
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"lang_base"
	.byte	0xb
	.value	0x31e
	.long	0x5dc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"lang_name"
	.byte	0xb
	.value	0x31f
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"template_parms"
	.byte	0xb
	.value	0x320
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"x_previous_class_type"
	.byte	0xb
	.value	0x321
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"x_previous_class_values"
	.byte	0xb
	.value	0x322
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"x_saved_tree"
	.byte	0xb
	.value	0x323
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"lookups"
	.byte	0xb
	.value	0x324
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"last_parms"
	.byte	0xb
	.value	0x325
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"x_processing_template_decl"
	.byte	0xb
	.value	0x327
	.long	0x47a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"x_processing_specialization"
	.byte	0xb
	.value	0x328
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"x_processing_explicit_instantiation"
	.byte	0xb
	.value	0x329
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"need_pop_function_context"
	.byte	0xb
	.value	0x32a
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1d
	.long	.LASF37
	.byte	0xb
	.value	0x32c
	.long	0x5dda
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"class_bindings"
	.byte	0xb
	.value	0x32e
	.long	0x5f08
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1d
	.long	.LASF36
	.byte	0xb
	.value	0x32f
	.long	0x5f08
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"prev"
	.byte	0xb
	.value	0x331
	.long	0x6262
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5ee4
	.uleb128 0x3
	.byte	0x4
	.long	0x5ff1
	.uleb128 0x1a
	.string	"named_label_use_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6268
	.uleb128 0x1a
	.string	"named_label_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6285
	.uleb128 0x1a
	.string	"unparsed_text"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x629e
	.uleb128 0x28
	.long	0x62ee
	.string	"languages"
	.byte	0x4
	.byte	0xb
	.value	0x3f1
	.uleb128 0x19
	.string	"lang_c"
	.sleb128 0
	.uleb128 0x19
	.string	"lang_cplusplus"
	.sleb128 1
	.uleb128 0x19
	.string	"lang_java"
	.sleb128 2
	.byte	0x0
	.uleb128 0xd
	.long	0x640d
	.string	"lang_type_header"
	.byte	0x4
	.byte	0xb
	.value	0x464
	.uleb128 0x1f
	.string	"is_lang_type_class"
	.byte	0xb
	.value	0x465
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"has_type_conversion"
	.byte	0xb
	.value	0x467
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"has_init_ref"
	.byte	0xb
	.value	0x468
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"has_default_ctor"
	.byte	0xb
	.value	0x469
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"uses_multiple_inheritance"
	.byte	0xb
	.value	0x46a
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"const_needs_init"
	.byte	0xb
	.value	0x46b
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"ref_needs_init"
	.byte	0xb
	.value	0x46c
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"has_const_assign_ref"
	.byte	0xb
	.value	0x46d
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x69f9
	.string	"lang_type_class"
	.byte	0x4c
	.byte	0xb
	.value	0x47e
	.uleb128 0xe
	.string	"h"
	.byte	0xb
	.value	0x47f
	.long	0x62ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF23
	.byte	0xb
	.value	0x481
	.long	0x422
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_mutable"
	.byte	0xb
	.value	0x483
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"com_interface"
	.byte	0xb
	.value	0x484
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"non_pod_class"
	.byte	0xb
	.value	0x485
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"nearly_empty_p"
	.byte	0xb
	.value	0x486
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.long	.LASF22
	.byte	0xb
	.value	0x487
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_assign_ref"
	.byte	0xb
	.value	0x488
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_new"
	.byte	0xb
	.value	0x489
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_array_new"
	.byte	0xb
	.value	0x48a
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"gets_delete"
	.byte	0xb
	.value	0x48c
	.long	0x3b3
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_call_overloaded"
	.byte	0xb
	.value	0x48d
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_array_ref_overloaded"
	.byte	0xb
	.value	0x48e
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_arrow_overloaded"
	.byte	0xb
	.value	0x48f
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"interface_only"
	.byte	0xb
	.value	0x490
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"interface_unknown"
	.byte	0xb
	.value	0x491
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"marks"
	.byte	0xb
	.value	0x493
	.long	0x3b3
	.byte	0x4
	.byte	0x6
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"vec_new_uses_cookie"
	.byte	0xb
	.value	0x494
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"declared_class"
	.byte	0xb
	.value	0x495
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"being_defined"
	.byte	0xb
	.value	0x497
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"redefined"
	.byte	0xb
	.value	0x498
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"debug_requested"
	.byte	0xb
	.value	0x499
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF44
	.byte	0xb
	.value	0x49a
	.long	0x3b3
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"got_semicolon"
	.byte	0xb
	.value	0x49b
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"ptrmemfunc_flag"
	.byte	0xb
	.value	0x49c
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"was_anonymous"
	.byte	0xb
	.value	0x49d
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"has_real_assign_ref"
	.byte	0xb
	.value	0x49f
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"has_const_init_ref"
	.byte	0xb
	.value	0x4a0
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"has_complex_init_ref"
	.byte	0xb
	.value	0x4a1
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"has_complex_assign_ref"
	.byte	0xb
	.value	0x4a2
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"has_abstract_assign_ref"
	.byte	0xb
	.value	0x4a3
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"non_aggregate"
	.byte	0xb
	.value	0x4a4
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"is_partial_instantiation"
	.byte	0xb
	.value	0x4a5
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"java_interface"
	.byte	0xb
	.value	0x4a6
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"anon_aggr"
	.byte	0xb
	.value	0x4a8
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"non_zero_init"
	.byte	0xb
	.value	0x4a9
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"empty_p"
	.byte	0xb
	.value	0x4aa
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"contains_empty_class_p"
	.byte	0xb
	.value	0x4ab
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"has_implicit_copy_constructor"
	.byte	0xb
	.value	0x4b7
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"dummy"
	.byte	0xb
	.value	0x4b8
	.long	0x3b3
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"primary_base"
	.byte	0xb
	.value	0x4bd
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"vfields"
	.byte	0xb
	.value	0x4be
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"vcall_indices"
	.byte	0xb
	.value	0x4bf
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"vtables"
	.byte	0xb
	.value	0x4c0
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"typeinfo_var"
	.byte	0xb
	.value	0x4c1
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"vbases"
	.byte	0xb
	.value	0x4c2
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"nested_udts"
	.byte	0xb
	.value	0x4c3
	.long	0x5f0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"as_base"
	.byte	0xb
	.value	0x4c4
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"pure_virtuals"
	.byte	0xb
	.value	0x4c5
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"friend_classes"
	.byte	0xb
	.value	0x4c6
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"methods"
	.byte	0xb
	.value	0x4c7
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"key_method"
	.byte	0xb
	.value	0x4c8
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"decl_list"
	.byte	0xb
	.value	0x4c9
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1d
	.long	.LASF45
	.byte	0xb
	.value	0x4ca
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x1d
	.long	.LASF46
	.byte	0xb
	.value	0x4cb
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"copy_constructor"
	.byte	0xb
	.value	0x4cf
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0xd
	.long	0x6a33
	.string	"lang_type_ptrmem"
	.byte	0x8
	.byte	0xb
	.value	0x4d4
	.uleb128 0xe
	.string	"h"
	.byte	0xb
	.value	0x4d5
	.long	0x62ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"record"
	.byte	0xb
	.value	0x4d6
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x21
	.long	0x6a6c
	.string	"lang_type_u"
	.byte	0x4c
	.byte	0xb
	.value	0x4dc
	.uleb128 0xa
	.string	"h"
	.byte	0xb
	.value	0x4dd
	.long	0x62ee
	.uleb128 0xa
	.string	"c"
	.byte	0xb
	.value	0x4de
	.long	0x640d
	.uleb128 0xa
	.string	"ptrmem"
	.byte	0xb
	.value	0x4df
	.long	0x69f9
	.byte	0x0
	.uleb128 0x21
	.long	0x6a9c
	.string	"lang_decl_u"
	.byte	0x4
	.byte	0xb
	.value	0x722
	.uleb128 0x9
	.long	.LASF45
	.byte	0xb
	.value	0x725
	.long	0x1e4
	.uleb128 0xa
	.string	"level"
	.byte	0xb
	.value	0x728
	.long	0x5f08
	.byte	0x0
	.uleb128 0x21
	.long	0x6aed
	.string	"lang_decl_u2"
	.byte	0x4
	.byte	0xb
	.value	0x72b
	.uleb128 0xa
	.string	"access"
	.byte	0xb
	.value	0x72d
	.long	0x1e4
	.uleb128 0xa
	.string	"discriminator"
	.byte	0xb
	.value	0x730
	.long	0x2da
	.uleb128 0xa
	.string	"vcall_offset"
	.byte	0xb
	.value	0x734
	.long	0x1e4
	.byte	0x0
	.uleb128 0xd
	.long	0x6dc9
	.string	"lang_decl_flags"
	.byte	0x10
	.byte	0xb
	.value	0x703
	.uleb128 0xe
	.string	"base"
	.byte	0xb
	.value	0x704
	.long	0x5eb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.long	.LASF32
	.byte	0xb
	.value	0x706
	.long	0x62b4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"operator_attr"
	.byte	0xb
	.value	0x708
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"constructor_attr"
	.byte	0xb
	.value	0x709
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"destructor_attr"
	.byte	0xb
	.value	0x70a
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"friend_attr"
	.byte	0xb
	.value	0x70b
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"static_function"
	.byte	0xb
	.value	0x70c
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"pure_virtual"
	.byte	0xb
	.value	0x70d
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_in_charge_parm_p"
	.byte	0xb
	.value	0x70e
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_vtt_parm_p"
	.byte	0xb
	.value	0x70f
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"deferred"
	.byte	0xb
	.value	0x711
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.long	.LASF44
	.byte	0xb
	.value	0x712
	.long	0x3b3
	.byte	0x4
	.byte	0x2
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"nonconverting"
	.byte	0xb
	.value	0x713
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"not_really_extern"
	.byte	0xb
	.value	0x714
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"needs_final_overrider"
	.byte	0xb
	.value	0x715
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"initialized_in_class"
	.byte	0xb
	.value	0x716
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"assignment_operator_p"
	.byte	0xb
	.value	0x717
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"global_ctor_p"
	.byte	0xb
	.value	0x719
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"global_dtor_p"
	.byte	0xb
	.value	0x71a
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"anticipated_p"
	.byte	0xb
	.value	0x71b
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"template_conv_p"
	.byte	0xb
	.value	0x71c
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"u1sel"
	.byte	0xb
	.value	0x71d
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"u2sel"
	.byte	0xb
	.value	0x71e
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"can_be_full"
	.byte	0xb
	.value	0x71f
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"unused"
	.byte	0xb
	.value	0x720
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"u"
	.byte	0xb
	.value	0x729
	.long	0x6a6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"u2"
	.byte	0xb
	.value	0x735
	.long	0x6a9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x21
	.long	0x6e32
	.string	"lang_decl_u3"
	.byte	0x4
	.byte	0xb
	.value	0x75c
	.uleb128 0xa
	.string	"sorted_fields"
	.byte	0xb
	.value	0x75d
	.long	0x1e4
	.uleb128 0xa
	.string	"pending_inline_info"
	.byte	0xb
	.value	0x75e
	.long	0x62ae
	.uleb128 0xa
	.string	"saved_language_function"
	.byte	0xb
	.value	0x760
	.long	0x58e2
	.byte	0x0
	.uleb128 0xd
	.long	0x6f0d
	.string	"full_lang_decl"
	.byte	0x24
	.byte	0xb
	.value	0x73f
	.uleb128 0x1d
	.long	.LASF46
	.byte	0xb
	.value	0x740
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF26
	.byte	0xb
	.value	0x745
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"cloned_function"
	.byte	0xb
	.value	0x748
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"delta"
	.byte	0xb
	.value	0x74c
	.long	0x47a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"named_return_object"
	.byte	0xb
	.value	0x751
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"operator_code"
	.byte	0xb
	.value	0x756
	.long	0xac3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1f
	.string	"u3sel"
	.byte	0xb
	.value	0x758
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1f
	.string	"pending_inline_p"
	.byte	0xb
	.value	0x759
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"u"
	.byte	0xb
	.value	0x761
	.long	0x6dc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x21
	.long	0x6f2e
	.string	"lang_decl_u4"
	.byte	0x24
	.byte	0xb
	.value	0x73d
	.uleb128 0xa
	.string	"f"
	.byte	0xb
	.value	0x762
	.long	0x6e32
	.byte	0x0
	.uleb128 0x24
	.long	0x6f71
	.long	.LASF47
	.byte	0x4
	.byte	0xb
	.value	0xc1b
	.uleb128 0x19
	.string	"clk_none"
	.sleb128 0
	.uleb128 0x19
	.string	"clk_ordinary"
	.sleb128 1
	.uleb128 0x19
	.string	"clk_class"
	.sleb128 2
	.uleb128 0x19
	.string	"clk_bitfield"
	.sleb128 4
	.byte	0x0
	.uleb128 0x29
	.long	.LASF47
	.byte	0xb
	.value	0xc20
	.long	0x6f2e
	.uleb128 0x24
	.long	0x6fc5
	.long	.LASF48
	.byte	0x4
	.byte	0xb
	.value	0xcb7
	.uleb128 0x19
	.string	"DEDUCE_CALL"
	.sleb128 0
	.uleb128 0x19
	.string	"DEDUCE_CONV"
	.sleb128 1
	.uleb128 0x19
	.string	"DEDUCE_EXACT"
	.sleb128 2
	.uleb128 0x19
	.string	"DEDUCE_ORDER"
	.sleb128 3
	.byte	0x0
	.uleb128 0x29
	.long	.LASF48
	.byte	0xb
	.value	0xcbc
	.long	0x6f7d
	.uleb128 0x2a
	.long	0x7026
	.long	.LASF49
	.byte	0x10
	.byte	0xb
	.value	0xe26
	.uleb128 0x1d
	.long	.LASF2
	.byte	0xb
	.value	0xe28
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF24
	.byte	0xb
	.value	0xe2a
	.long	0x2c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"mangled_name"
	.byte	0xb
	.value	0xe2c
	.long	0x2c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"arity"
	.byte	0xb
	.value	0xe2e
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x29
	.long	.LASF49
	.byte	0xb
	.value	0xe2f
	.long	0x6fd1
	.uleb128 0x18
	.long	0x7801
	.string	"rtx_code"
	.byte	0x4
	.byte	0x5
	.byte	0x29
	.uleb128 0x19
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x19
	.string	"NIL"
	.sleb128 1
	.uleb128 0x19
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x19
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x19
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x19
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x19
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x19
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x19
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x19
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x19
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x19
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x19
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x19
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x19
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x19
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x19
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x19
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x19
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x19
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x19
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x19
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x19
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x19
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x19
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x19
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x19
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x19
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x19
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x19
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x19
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x19
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x19
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x19
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x19
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x19
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x19
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x19
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x19
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x19
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x19
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x19
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x19
	.string	"INSN"
	.sleb128 42
	.uleb128 0x19
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x19
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x19
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x19
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x19
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x19
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x19
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x19
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x19
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x19
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x19
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x19
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x19
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x19
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x19
	.string	"SET"
	.sleb128 57
	.uleb128 0x19
	.string	"USE"
	.sleb128 58
	.uleb128 0x19
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x19
	.string	"CALL"
	.sleb128 60
	.uleb128 0x19
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x19
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x19
	.string	"RESX"
	.sleb128 63
	.uleb128 0x19
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x19
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x19
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x19
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x19
	.string	"CONST"
	.sleb128 68
	.uleb128 0x19
	.string	"PC"
	.sleb128 69
	.uleb128 0x19
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x19
	.string	"REG"
	.sleb128 71
	.uleb128 0x19
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x19
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x19
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x19
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x19
	.string	"MEM"
	.sleb128 76
	.uleb128 0x19
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x19
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x19
	.string	"CC0"
	.sleb128 79
	.uleb128 0x19
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x19
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x19
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x19
	.string	"COND"
	.sleb128 83
	.uleb128 0x19
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x19
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x19
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x19
	.string	"NEG"
	.sleb128 87
	.uleb128 0x19
	.string	"MULT"
	.sleb128 88
	.uleb128 0x19
	.string	"DIV"
	.sleb128 89
	.uleb128 0x19
	.string	"MOD"
	.sleb128 90
	.uleb128 0x19
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x19
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x19
	.string	"AND"
	.sleb128 93
	.uleb128 0x19
	.string	"IOR"
	.sleb128 94
	.uleb128 0x19
	.string	"XOR"
	.sleb128 95
	.uleb128 0x19
	.string	"NOT"
	.sleb128 96
	.uleb128 0x19
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x19
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x19
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x19
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x19
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x19
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x19
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x19
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x19
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x19
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x19
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x19
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x19
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x19
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x19
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x19
	.string	"NE"
	.sleb128 112
	.uleb128 0x19
	.string	"EQ"
	.sleb128 113
	.uleb128 0x19
	.string	"GE"
	.sleb128 114
	.uleb128 0x19
	.string	"GT"
	.sleb128 115
	.uleb128 0x19
	.string	"LE"
	.sleb128 116
	.uleb128 0x19
	.string	"LT"
	.sleb128 117
	.uleb128 0x19
	.string	"GEU"
	.sleb128 118
	.uleb128 0x19
	.string	"GTU"
	.sleb128 119
	.uleb128 0x19
	.string	"LEU"
	.sleb128 120
	.uleb128 0x19
	.string	"LTU"
	.sleb128 121
	.uleb128 0x19
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x19
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x19
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x19
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x19
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x19
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x19
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x19
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x19
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x19
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x19
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x19
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x19
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x19
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x19
	.string	"FIX"
	.sleb128 136
	.uleb128 0x19
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x19
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x19
	.string	"ABS"
	.sleb128 139
	.uleb128 0x19
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x19
	.string	"FFS"
	.sleb128 141
	.uleb128 0x19
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x19
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x19
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x19
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x19
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x19
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x19
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x19
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x19
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x19
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x19
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x19
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x19
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x19
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x19
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x19
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x19
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x19
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x19
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x19
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x19
	.string	"PHI"
	.sleb128 162
	.uleb128 0x19
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x2b
	.long	0x78db
	.byte	0x4
	.byte	0x5
	.byte	0x47
	.uleb128 0x6
	.string	"min_align"
	.byte	0x5
	.byte	0x49
	.long	0x3b3
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"base_after_vec"
	.byte	0x5
	.byte	0x4b
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min_after_vec"
	.byte	0x5
	.byte	0x4c
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"max_after_vec"
	.byte	0x5
	.byte	0x4e
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min_after_base"
	.byte	0x5
	.byte	0x50
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"max_after_base"
	.byte	0x5
	.byte	0x52
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset_unsigned"
	.byte	0x5
	.byte	0x55
	.long	0x3b3
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"scale"
	.byte	0x5
	.byte	0x57
	.long	0x3b3
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0x5
	.byte	0x58
	.long	0x7801
	.uleb128 0x14
	.long	0x794f
	.long	.LASF50
	.byte	0x18
	.byte	0x5
	.byte	0x62
	.uleb128 0x7
	.string	"alias"
	.byte	0x5
	.byte	0x63
	.long	0x47a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF29
	.byte	0x5
	.byte	0x64
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"offset"
	.byte	0x5
	.byte	0x65
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
	.byte	0x5
	.byte	0x66
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF23
	.byte	0x5
	.byte	0x67
	.long	0x3b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x26
	.long	.LASF50
	.byte	0x5
	.byte	0x68
	.long	0x78f6
	.uleb128 0x8
	.long	0x7a2c
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x5
	.byte	0x6d
	.uleb128 0x25
	.string	"rtwint"
	.byte	0x5
	.byte	0x6e
	.long	0x47a
	.uleb128 0x25
	.string	"rtint"
	.byte	0x5
	.byte	0x6f
	.long	0x2da
	.uleb128 0x25
	.string	"rtuint"
	.byte	0x5
	.byte	0x70
	.long	0x3b3
	.uleb128 0x25
	.string	"rtstr"
	.byte	0x5
	.byte	0x71
	.long	0x2c7
	.uleb128 0x25
	.string	"rtx"
	.byte	0x5
	.byte	0x72
	.long	0x9c
	.uleb128 0x25
	.string	"rtvec"
	.byte	0x5
	.byte	0x73
	.long	0x19c
	.uleb128 0x25
	.string	"rttype"
	.byte	0x5
	.byte	0x74
	.long	0x836
	.uleb128 0x25
	.string	"rt_addr_diff_vec_flags"
	.byte	0x5
	.byte	0x75
	.long	0x78db
	.uleb128 0x25
	.string	"rt_cselib"
	.byte	0x5
	.byte	0x76
	.long	0x7a40
	.uleb128 0x25
	.string	"rtbit"
	.byte	0x5
	.byte	0x77
	.long	0x5cb7
	.uleb128 0x25
	.string	"rttree"
	.byte	0x5
	.byte	0x78
	.long	0x1e4
	.uleb128 0x25
	.string	"bb"
	.byte	0x5
	.byte	0x79
	.long	0x5d14
	.uleb128 0x25
	.string	"rtmem"
	.byte	0x5
	.byte	0x7a
	.long	0x7a46
	.byte	0x0
	.uleb128 0x1a
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x7a2c
	.uleb128 0x3
	.byte	0x4
	.long	0x794f
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x5
	.byte	0x7c
	.long	0x795a
	.uleb128 0x10
	.long	0x7a6b
	.long	0x7a4c
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x7a7b
	.long	0x9c
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x7acd
	.string	"ggc_root_tab"
	.byte	0x10
	.byte	0x17
	.byte	0x32
	.uleb128 0x7
	.string	"base"
	.byte	0x17
	.byte	0x33
	.long	0x4e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"nelt"
	.byte	0x17
	.byte	0x34
	.long	0x414
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"stride"
	.byte	0x17
	.byte	0x35
	.long	0x414
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"cb"
	.byte	0x17
	.byte	0x36
	.long	0x791
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2b
	.long	0x7aff
	.byte	0x8
	.byte	0x11
	.byte	0x1f
	.uleb128 0x7
	.string	"format_spec"
	.byte	0x11
	.byte	0x20
	.long	0x2c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"args_ptr"
	.byte	0x11
	.byte	0x21
	.long	0x7aff
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x405
	.uleb128 0x2
	.string	"text_info"
	.byte	0x11
	.byte	0x22
	.long	0x7acd
	.uleb128 0x2c
	.long	0x7b96
	.byte	0x4
	.byte	0x11
	.byte	0x26
	.uleb128 0x19
	.string	"DK_FATAL"
	.sleb128 0
	.uleb128 0x19
	.string	"DK_ICE"
	.sleb128 1
	.uleb128 0x19
	.string	"DK_SORRY"
	.sleb128 2
	.uleb128 0x19
	.string	"DK_ERROR"
	.sleb128 3
	.uleb128 0x19
	.string	"DK_WARNING"
	.sleb128 4
	.uleb128 0x19
	.string	"DK_ANACHRONISM"
	.sleb128 5
	.uleb128 0x19
	.string	"DK_NOTE"
	.sleb128 6
	.uleb128 0x19
	.string	"DK_DEBUG"
	.sleb128 7
	.uleb128 0x19
	.string	"DK_LAST_DIAGNOSTIC_KIND"
	.sleb128 8
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_t"
	.byte	0x11
	.byte	0x2b
	.long	0x7b16
	.uleb128 0x2b
	.long	0x7be7
	.byte	0x14
	.byte	0x11
	.byte	0x31
	.uleb128 0x7
	.string	"message"
	.byte	0x11
	.byte	0x32
	.long	0x7b05
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"location"
	.byte	0x11
	.byte	0x33
	.long	0xab1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"kind"
	.byte	0x11
	.byte	0x35
	.long	0x7b96
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_info"
	.byte	0x11
	.byte	0x36
	.long	0x7baa
	.uleb128 0x2c
	.long	0x7c6b
	.byte	0x4
	.byte	0x11
	.byte	0x40
	.uleb128 0x19
	.string	"DIAGNOSTICS_SHOW_PREFIX_ONCE"
	.sleb128 0
	.uleb128 0x19
	.string	"DIAGNOSTICS_SHOW_PREFIX_NEVER"
	.sleb128 1
	.uleb128 0x19
	.string	"DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE"
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_prefixing_rule_t"
	.byte	0x11
	.byte	0x44
	.long	0x7bfe
	.uleb128 0x2b
	.long	0x7d43
	.byte	0x18
	.byte	0x11
	.byte	0x48
	.uleb128 0x7
	.string	"prefix"
	.byte	0x11
	.byte	0x4a
	.long	0x2c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"maximum_length"
	.byte	0x11
	.byte	0x4e
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"ideal_maximum_length"
	.byte	0x11
	.byte	0x52
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"indent_skip"
	.byte	0x11
	.byte	0x55
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"emitted_prefix_p"
	.byte	0x11
	.byte	0x58
	.long	0x52b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"need_newline_p"
	.byte	0x11
	.byte	0x5b
	.long	0x52b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x7
	.string	"prefixing_rule"
	.byte	0x11
	.byte	0x5e
	.long	0x7c6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.string	"output_state"
	.byte	0x11
	.byte	0x5f
	.long	0x7c8e
	.uleb128 0x26
	.long	.LASF51
	.byte	0x11
	.byte	0x64
	.long	0x7d62
	.uleb128 0x14
	.long	0x7de9
	.long	.LASF51
	.byte	0xd0
	.byte	0x11
	.byte	0x64
	.uleb128 0x7
	.string	"state"
	.byte	0x11
	.byte	0x6c
	.long	0x7d43
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stream"
	.byte	0x11
	.byte	0x6f
	.long	0x7e22
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"obstack"
	.byte	0x11
	.byte	0x72
	.long	0x365e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"line_length"
	.byte	0x11
	.byte	0x75
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"digit_buffer"
	.byte	0x11
	.byte	0x79
	.long	0x7e28
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.string	"format_decoder"
	.byte	0x11
	.byte	0x83
	.long	0x7de9
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x2
	.string	"printer_fn"
	.byte	0x11
	.byte	0x65
	.long	0x7dfb
	.uleb128 0x3
	.byte	0x4
	.long	0x7e01
	.uleb128 0x1e
	.long	0x7e16
	.byte	0x1
	.long	0x52b3
	.uleb128 0x16
	.long	0x7e16
	.uleb128 0x16
	.long	0x7e1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7d57
	.uleb128 0x3
	.byte	0x4
	.long	0x7b05
	.uleb128 0x3
	.byte	0x4
	.long	0x4e9
	.uleb128 0x10
	.long	0x7e38
	.long	0x2d2
	.uleb128 0x11
	.long	0x3ca
	.byte	0x7f
	.byte	0x0
	.uleb128 0x26
	.long	.LASF52
	.byte	0x11
	.byte	0xac
	.long	0x7e43
	.uleb128 0x2d
	.long	0x7f47
	.long	.LASF52
	.value	0x110
	.byte	0xb
	.byte	0x29
	.uleb128 0x7
	.string	"buffer"
	.byte	0x11
	.byte	0xb8
	.long	0x7d57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"diagnostic_count"
	.byte	0x11
	.byte	0xbb
	.long	0x7fa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x7
	.string	"warnings_are_errors_message"
	.byte	0x11
	.byte	0xbf
	.long	0x52b3
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x7
	.string	"begin_diagnostic"
	.byte	0x11
	.byte	0xc8
	.long	0x7f47
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x7
	.string	"end_diagnostic"
	.byte	0x11
	.byte	0xcb
	.long	0x7f87
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x7
	.string	"internal_error"
	.byte	0x11
	.byte	0xce
	.long	0x7fc7
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x7
	.string	"last_function"
	.byte	0x11
	.byte	0xd3
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x7
	.string	"last_module"
	.byte	0x11
	.byte	0xd6
	.long	0x2da
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x7
	.string	"lock"
	.byte	0x11
	.byte	0xd8
	.long	0x2da
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x7
	.string	"x_data"
	.byte	0x11
	.byte	0xdb
	.long	0x4e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_starter_fn"
	.byte	0x11
	.byte	0xad
	.long	0x7f64
	.uleb128 0x3
	.byte	0x4
	.long	0x7f6a
	.uleb128 0x15
	.long	0x7f7b
	.byte	0x1
	.uleb128 0x16
	.long	0x7f7b
	.uleb128 0x16
	.long	0x7f81
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7e38
	.uleb128 0x3
	.byte	0x4
	.long	0x7be7
	.uleb128 0x2
	.string	"diagnostic_finalizer_fn"
	.byte	0x11
	.byte	0xaf
	.long	0x7f47
	.uleb128 0x10
	.long	0x7fb6
	.long	0x2da
	.uleb128 0x11
	.long	0x3ca
	.byte	0x7
	.byte	0x0
	.uleb128 0x15
	.long	0x7fc7
	.byte	0x1
	.uleb128 0x16
	.long	0x2c7
	.uleb128 0x16
	.long	0x7aff
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7fb6
	.uleb128 0x2e
	.long	0x8016
	.byte	0x1
	.string	"build_vfield_ref"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.long	0x1e4
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2f
	.string	"datum"
	.byte	0x1
	.byte	0x6f
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF4
	.byte	0x1
	.byte	0x6f
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x31
	.long	0x8078
	.string	"build_field_call"
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.long	0x1e4
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x30
	.long	.LASF53
	.byte	0x1
	.byte	0x83
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.byte	0x83
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF54
	.byte	0x1
	.byte	0x83
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF56
	.byte	0x1
	.byte	0x85
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x80ce
	.byte	0x1
	.string	"check_dtor_name"
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.long	0x2da
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x30
	.long	.LASF55
	.byte	0x1
	.byte	0xa9
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.byte	0xa9
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF57
	.long	0xb610
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16269
	.byte	0x0
	.uleb128 0x2e
	.long	0x817b
	.byte	0x1
	.string	"build_scoped_method_call"
	.byte	0x1
	.byte	0xd5
	.byte	0x1
	.long	0x1e4
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2f
	.string	"exp"
	.byte	0x1
	.byte	0xd4
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF55
	.byte	0x1
	.byte	0xd4
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.byte	0xd4
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF54
	.byte	0x1
	.byte	0xd4
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF25
	.byte	0x1
	.byte	0xdc
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF3
	.byte	0x1
	.byte	0xdc
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF4
	.byte	0x1
	.byte	0xdd
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x32
	.long	.LASF4
	.byte	0x1
	.byte	0xe8
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x81de
	.byte	0x1
	.string	"build_addr_func"
	.byte	0x1
	.value	0x141
	.byte	0x1
	.long	0x1e4
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x36
	.long	.LASF28
	.byte	0x1
	.value	0x140
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF4
	.byte	0x1
	.value	0x142
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x38
	.string	"addr"
	.byte	0x1
	.value	0x148
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x82b9
	.byte	0x1
	.string	"build_call"
	.byte	0x1
	.value	0x165
	.byte	0x1
	.long	0x1e4
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x36
	.long	.LASF28
	.byte	0x1
	.value	0x164
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF54
	.byte	0x1
	.value	0x164
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"is_constructor"
	.byte	0x1
	.value	0x166
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.string	"nothrow"
	.byte	0x1
	.value	0x167
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"tmp"
	.byte	0x1
	.value	0x168
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.long	.LASF3
	.byte	0x1
	.value	0x169
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	.LASF58
	.byte	0x1
	.value	0x16a
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"fntype"
	.byte	0x1
	.value	0x16b
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	0x82a8
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x1a1
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x33
	.long	.LASF57
	.long	0xb60b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16481
	.byte	0x0
	.uleb128 0x35
	.long	0x83b8
	.byte	0x1
	.string	"build_method_call"
	.byte	0x1
	.value	0x1d7
	.byte	0x1
	.long	0x1e4
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x36
	.long	.LASF56
	.byte	0x1
	.value	0x1d5
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0x1d5
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF54
	.byte	0x1
	.value	0x1d5
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF59
	.byte	0x1
	.value	0x1d5
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0x1d6
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x38
	.string	"fn"
	.byte	0x1
	.value	0x1d8
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"object_type"
	.byte	0x1
	.value	0x1d9
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LASF61
	.byte	0x1
	.value	0x1da
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"has_template_args"
	.byte	0x1
	.value	0x1db
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x39
	.long	0x839e
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x37
	.long	.LASF4
	.byte	0x1
	.value	0x1ed
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x34
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x37
	.long	.LASF53
	.byte	0x1
	.value	0x203
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x83ef
	.byte	0x1
	.string	"null_ptr_cst_p"
	.byte	0x1
	.value	0x289
	.byte	0x1
	.long	0x2da
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x3a
	.string	"t"
	.byte	0x1
	.value	0x288
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0x842c
	.byte	0x1
	.string	"sufficient_parms_p"
	.byte	0x1
	.value	0x29b
	.byte	0x1
	.long	0x2da
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x36
	.long	.LASF62
	.byte	0x1
	.value	0x29a
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x3b
	.long	0x849b
	.string	"build_conv"
	.byte	0x1
	.value	0x2a7
	.byte	0x1
	.long	0x1e4
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x2a5
	.long	0xac3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF4
	.byte	0x1
	.value	0x2a6
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF63
	.byte	0x1
	.value	0x2a6
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x2a8
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"rank"
	.byte	0x1
	.value	0x2a9
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3b
	.long	0x84d0
	.string	"non_reference"
	.byte	0x1
	.value	0x2cf
	.byte	0x1
	.long	0x1e4
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x3a
	.string	"t"
	.byte	0x1
	.value	0x2ce
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0x8508
	.byte	0x1
	.string	"strip_top_quals"
	.byte	0x1
	.value	0x2d8
	.byte	0x1
	.long	0x1e4
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x3a
	.string	"t"
	.byte	0x1
	.value	0x2d7
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x3b
	.long	0x8676
	.string	"standard_conversion"
	.byte	0x1
	.value	0x2e5
	.byte	0x1
	.long	0x1e4
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x3a
	.string	"to"
	.byte	0x1
	.value	0x2e4
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF63
	.byte	0x1
	.value	0x2e4
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF29
	.byte	0x1
	.value	0x2e4
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"fcode"
	.byte	0x1
	.value	0x2e6
	.long	0xac3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x38
	.string	"tcode"
	.byte	0x1
	.value	0x2e6
	.long	0xac3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.long	.LASF64
	.byte	0x1
	.value	0x2e7
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.string	"fromref"
	.byte	0x1
	.value	0x2e8
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x39
	.long	0x85c9
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x38
	.string	"part_conv"
	.byte	0x1
	.value	0x317
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x39
	.long	0x8627
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x38
	.string	"ufcode"
	.byte	0x1
	.value	0x33f
	.long	0xac3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.string	"utcode"
	.byte	0x1
	.value	0x340
	.long	0xac3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x38
	.string	"fbase"
	.byte	0x1
	.value	0x34f
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"tbase"
	.byte	0x1
	.value	0x350
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x38
	.string	"fromfn"
	.byte	0x1
	.value	0x384
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"tofn"
	.byte	0x1
	.value	0x385
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"fbase"
	.byte	0x1
	.value	0x386
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"tbase"
	.byte	0x1
	.value	0x387
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x86c0
	.string	"reference_related_p"
	.byte	0x1
	.value	0x3c7
	.byte	0x1
	.long	0x2da
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x3a
	.string	"t1"
	.byte	0x1
	.value	0x3c5
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"t2"
	.byte	0x1
	.value	0x3c6
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3b
	.long	0x870d
	.string	"reference_compatible_p"
	.byte	0x1
	.value	0x3db
	.byte	0x1
	.long	0x2da
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x3a
	.string	"t1"
	.byte	0x1
	.value	0x3d9
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"t2"
	.byte	0x1
	.value	0x3da
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3b
	.long	0x880b
	.string	"convert_class_to_reference"
	.byte	0x1
	.value	0x3ed
	.byte	0x1
	.long	0x1e4
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x3a
	.string	"t"
	.byte	0x1
	.value	0x3ea
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"s"
	.byte	0x1
	.value	0x3eb
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF29
	.byte	0x1
	.value	0x3ec
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"conversions"
	.byte	0x1
	.value	0x3ee
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x37
	.long	.LASF65
	.byte	0x1
	.value	0x3ef
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.long	.LASF64
	.byte	0x1
	.value	0x3f0
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	.LASF66
	.byte	0x1
	.value	0x3f1
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LASF67
	.byte	0x1
	.value	0x3f2
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.long	.LASF68
	.byte	0x1
	.value	0x3f3
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x38
	.string	"fns"
	.byte	0x1
	.value	0x417
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x38
	.string	"f"
	.byte	0x1
	.value	0x41b
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"t2"
	.byte	0x1
	.value	0x41c
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x8879
	.string	"direct_reference_binding"
	.byte	0x1
	.value	0x476
	.byte	0x1
	.long	0x1e4
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x36
	.long	.LASF4
	.byte	0x1
	.value	0x474
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF64
	.byte	0x1
	.value	0x475
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x477
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.long	.LASF57
	.long	0xb5f6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17363
	.byte	0x0
	.uleb128 0x3b
	.long	0x894b
	.string	"reference_binding"
	.byte	0x1
	.value	0x4a3
	.byte	0x1
	.long	0x1e4
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x3a
	.string	"rto"
	.byte	0x1
	.value	0x4a2
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"rfrom"
	.byte	0x1
	.value	0x4a2
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF29
	.byte	0x1
	.value	0x4a2
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0x4a2
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x37
	.long	.LASF64
	.byte	0x1
	.value	0x4a4
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"to"
	.byte	0x1
	.value	0x4a5
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LASF63
	.byte	0x1
	.value	0x4a6
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"related_p"
	.byte	0x1
	.value	0x4a7
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"compatible_p"
	.byte	0x1
	.value	0x4a8
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x37
	.long	.LASF69
	.byte	0x1
	.value	0x4a9
	.long	0x6f71
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3b
	.long	0x89dc
	.string	"implicit_conversion"
	.byte	0x1
	.value	0x53e
	.byte	0x1
	.long	0x1e4
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x3a
	.string	"to"
	.byte	0x1
	.value	0x53c
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF63
	.byte	0x1
	.value	0x53c
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF29
	.byte	0x1
	.value	0x53c
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0x53d
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x37
	.long	.LASF64
	.byte	0x1
	.value	0x53f
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x37
	.long	.LASF68
	.byte	0x1
	.value	0x559
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x8a6c
	.string	"add_candidate"
	.byte	0x1
	.value	0x56f
	.byte	0x1
	.long	0x5feb
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x36
	.long	.LASF67
	.byte	0x1
	.value	0x56c
	.long	0x8a6c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"fn"
	.byte	0x1
	.value	0x56d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF39
	.byte	0x1
	.value	0x56d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF41
	.byte	0x1
	.value	0x56d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x36
	.long	.LASF42
	.byte	0x1
	.value	0x56e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x56e
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x37
	.long	.LASF68
	.byte	0x1
	.value	0x570
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5feb
	.uleb128 0x3b
	.long	0x8be5
	.string	"add_function_candidate"
	.byte	0x1
	.value	0x58a
	.byte	0x1
	.long	0x5feb
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x36
	.long	.LASF67
	.byte	0x1
	.value	0x586
	.long	0x8a6c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"fn"
	.byte	0x1
	.value	0x587
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"ctype"
	.byte	0x1
	.value	0x587
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF65
	.byte	0x1
	.value	0x587
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x36
	.long	.LASF41
	.byte	0x1
	.value	0x588
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x36
	.long	.LASF42
	.byte	0x1
	.value	0x588
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0x589
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x37
	.long	.LASF62
	.byte	0x1
	.value	0x58b
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x58c
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.value	0x58c
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x37
	.long	.LASF39
	.byte	0x1
	.value	0x58d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.long	.LASF70
	.byte	0x1
	.value	0x58e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"argnode"
	.byte	0x1
	.value	0x58e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.long	.LASF40
	.byte	0x1
	.value	0x58f
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3c
	.string	"out"
	.byte	0x1
	.value	0x5fd
	.long	.L568
	.uleb128 0x34
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x38
	.string	"arg"
	.byte	0x1
	.value	0x5c3
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LASF71
	.byte	0x1
	.value	0x5c4
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x5c5
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"is_this"
	.byte	0x1
	.value	0x5c6
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x37
	.long	.LASF72
	.byte	0x1
	.value	0x5d0
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x8d29
	.string	"add_conv_candidate"
	.byte	0x1
	.value	0x614
	.byte	0x1
	.long	0x5feb
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x36
	.long	.LASF67
	.byte	0x1
	.value	0x610
	.long	0x8a6c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"fn"
	.byte	0x1
	.value	0x611
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"obj"
	.byte	0x1
	.value	0x611
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF65
	.byte	0x1
	.value	0x611
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x36
	.long	.LASF41
	.byte	0x1
	.value	0x612
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x36
	.long	.LASF42
	.byte	0x1
	.value	0x613
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x37
	.long	.LASF73
	.byte	0x1
	.value	0x615
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x616
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.value	0x616
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x37
	.long	.LASF40
	.byte	0x1
	.value	0x616
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.long	.LASF60
	.byte	0x1
	.value	0x616
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x37
	.long	.LASF62
	.byte	0x1
	.value	0x617
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.long	.LASF39
	.byte	0x1
	.value	0x617
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	.LASF70
	.byte	0x1
	.value	0x617
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"argnode"
	.byte	0x1
	.value	0x617
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x38
	.string	"arg"
	.byte	0x1
	.value	0x62a
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF71
	.byte	0x1
	.value	0x62b
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x62c
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.long	0x8e0d
	.string	"build_builtin_candidate"
	.byte	0x1
	.value	0x65a
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x36
	.long	.LASF67
	.byte	0x1
	.value	0x656
	.long	0x8a6c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF74
	.byte	0x1
	.value	0x657
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"type1"
	.byte	0x1
	.value	0x657
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.string	"type2"
	.byte	0x1
	.value	0x657
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x36
	.long	.LASF75
	.byte	0x1
	.value	0x657
	.long	0x52bc
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x36
	.long	.LASF76
	.byte	0x1
	.value	0x657
	.long	0x52bc
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0x658
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x65b
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LASF39
	.byte	0x1
	.value	0x65b
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x37
	.long	.LASF40
	.byte	0x1
	.value	0x65c
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x65c
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"types"
	.byte	0x1
	.value	0x65d
	.long	0x8e0d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x10
	.long	0x8e1d
	.long	0x1e4
	.uleb128 0x11
	.long	0x3ca
	.byte	0x1
	.byte	0x0
	.uleb128 0x3b
	.long	0x8e50
	.string	"is_complete"
	.byte	0x1
	.value	0x68a
	.byte	0x1
	.long	0x2da
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x3a
	.string	"t"
	.byte	0x1
	.value	0x689
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x3b
	.long	0x8e94
	.string	"promoted_arithmetic_type_p"
	.byte	0x1
	.value	0x693
	.byte	0x1
	.long	0x2da
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x36
	.long	.LASF4
	.byte	0x1
	.value	0x692
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x3d
	.long	0x8f85
	.string	"add_builtin_candidate"
	.byte	0x1
	.value	0x6b1
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x36
	.long	.LASF67
	.byte	0x1
	.value	0x6ad
	.long	0x8a6c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x6ae
	.long	0xac3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF77
	.byte	0x1
	.value	0x6ae
	.long	0xac3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF74
	.byte	0x1
	.value	0x6af
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3a
	.string	"type1"
	.byte	0x1
	.value	0x6af
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3a
	.string	"type2"
	.byte	0x1
	.value	0x6af
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x36
	.long	.LASF75
	.byte	0x1
	.value	0x6af
	.long	0x52bc
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x36
	.long	.LASF76
	.byte	0x1
	.value	0x6af
	.long	0x52bc
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0x6b0
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x39
	.long	0x8f74
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x38
	.string	"c1"
	.byte	0x1
	.value	0x714
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"c2"
	.byte	0x1
	.value	0x715
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	.LASF57
	.long	0xb5e1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17919
	.byte	0x0
	.uleb128 0x35
	.long	0x8fbe
	.byte	0x1
	.string	"type_decays_to"
	.byte	0x1
	.value	0x83a
	.byte	0x1
	.long	0x1e4
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x36
	.long	.LASF4
	.byte	0x1
	.value	0x839
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x3d
	.long	0x90bc
	.string	"add_builtin_candidates"
	.byte	0x1
	.value	0x855
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x36
	.long	.LASF67
	.byte	0x1
	.value	0x851
	.long	0x8a6c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x852
	.long	0xac3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF77
	.byte	0x1
	.value	0x852
	.long	0xac3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF74
	.byte	0x1
	.value	0x853
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x36
	.long	.LASF75
	.byte	0x1
	.value	0x853
	.long	0x52bc
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0x854
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x38
	.string	"ref1"
	.byte	0x1
	.value	0x856
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x856
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"enum_p"
	.byte	0x1
	.value	0x857
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LASF4
	.byte	0x1
	.value	0x858
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x37
	.long	.LASF76
	.byte	0x1
	.value	0x858
	.long	0x90bc
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.string	"types"
	.byte	0x1
	.value	0x85d
	.long	0x8e0d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x37
	.long	.LASF39
	.byte	0x1
	.value	0x8a3
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x90cc
	.long	0x1e4
	.uleb128 0x11
	.long	0x3ca
	.byte	0x2
	.byte	0x0
	.uleb128 0x3b
	.long	0x923a
	.string	"add_template_candidate_real"
	.byte	0x1
	.value	0x90b
	.byte	0x1
	.long	0x5feb
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x36
	.long	.LASF67
	.byte	0x1
	.value	0x904
	.long	0x8a6c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"tmpl"
	.byte	0x1
	.value	0x905
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"ctype"
	.byte	0x1
	.value	0x905
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF78
	.byte	0x1
	.value	0x905
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x36
	.long	.LASF65
	.byte	0x1
	.value	0x905
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x36
	.long	.LASF79
	.byte	0x1
	.value	0x905
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x36
	.long	.LASF41
	.byte	0x1
	.value	0x906
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x36
	.long	.LASF42
	.byte	0x1
	.value	0x907
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0x908
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x3a
	.string	"obj"
	.byte	0x1
	.value	0x909
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x3a
	.string	"strict"
	.byte	0x1
	.value	0x90a
	.long	0x6fc5
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x38
	.string	"ntparms"
	.byte	0x1
	.value	0x90c
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"targs"
	.byte	0x1
	.value	0x90d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"args_without_in_chrg"
	.byte	0x1
	.value	0x90e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LASF68
	.byte	0x1
	.value	0x90f
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x910
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"fn"
	.byte	0x1
	.value	0x911
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x38
	.string	"arg_types"
	.byte	0x1
	.value	0x940
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x9307
	.string	"add_template_candidate"
	.byte	0x1
	.value	0x972
	.byte	0x1
	.long	0x5feb
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x36
	.long	.LASF67
	.byte	0x1
	.value	0x96c
	.long	0x8a6c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"tmpl"
	.byte	0x1
	.value	0x96d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"ctype"
	.byte	0x1
	.value	0x96d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF78
	.byte	0x1
	.value	0x96d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x36
	.long	.LASF65
	.byte	0x1
	.value	0x96d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x36
	.long	.LASF79
	.byte	0x1
	.value	0x96d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x36
	.long	.LASF41
	.byte	0x1
	.value	0x96e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x36
	.long	.LASF42
	.byte	0x1
	.value	0x96f
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0x970
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x3a
	.string	"strict"
	.byte	0x1
	.value	0x971
	.long	0x6fc5
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.byte	0x0
	.uleb128 0x3b
	.long	0x93a7
	.string	"add_template_conv_candidate"
	.byte	0x1
	.value	0x982
	.byte	0x1
	.long	0x5feb
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x36
	.long	.LASF67
	.byte	0x1
	.value	0x97e
	.long	0x8a6c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"tmpl"
	.byte	0x1
	.value	0x97f
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"obj"
	.byte	0x1
	.value	0x97f
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF65
	.byte	0x1
	.value	0x97f
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x36
	.long	.LASF79
	.byte	0x1
	.value	0x97f
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x36
	.long	.LASF41
	.byte	0x1
	.value	0x980
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x36
	.long	.LASF42
	.byte	0x1
	.value	0x981
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0x0
	.uleb128 0x3b
	.long	0x93dd
	.string	"any_viable"
	.byte	0x1
	.value	0x98d
	.byte	0x1
	.long	0x2da
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x3a
	.string	"cands"
	.byte	0x1
	.value	0x98c
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x3b
	.long	0x941c
	.string	"any_strictly_viable"
	.byte	0x1
	.value	0x997
	.byte	0x1
	.long	0x2da
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x3a
	.string	"cands"
	.byte	0x1
	.value	0x996
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x3b
	.long	0x9462
	.string	"splice_viable"
	.byte	0x1
	.value	0x9a1
	.byte	0x1
	.long	0x5feb
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x3a
	.string	"cands"
	.byte	0x1
	.value	0x9a0
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"p"
	.byte	0x1
	.value	0x9a2
	.long	0x8a6c
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3b
	.long	0x9496
	.string	"build_this"
	.byte	0x1
	.value	0x9b2
	.byte	0x1
	.long	0x1e4
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x3a
	.string	"obj"
	.byte	0x1
	.value	0x9b1
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x3d
	.long	0x9517
	.string	"print_z_candidates"
	.byte	0x1
	.value	0x9c8
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST35
	.uleb128 0x36
	.long	.LASF67
	.byte	0x1
	.value	0x9c7
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"str"
	.byte	0x1
	.value	0x9c9
	.long	0x2c7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"cand1"
	.byte	0x1
	.value	0x9ca
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"cand2"
	.byte	0x1
	.value	0x9cb
	.long	0x8a6c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x38
	.string	"fn"
	.byte	0x1
	.value	0x9d4
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x955f
	.string	"equal_functions"
	.byte	0x1
	.value	0x9bf
	.byte	0x1
	.long	0x2da
	.long	.LFB50
	.long	.LFE50
	.long	.LLST36
	.uleb128 0x3a
	.string	"fn1"
	.byte	0x1
	.value	0x9bd
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"fn2"
	.byte	0x1
	.value	0x9be
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3b
	.long	0x95d8
	.string	"merge_conversion_sequences"
	.byte	0x1
	.value	0xa06
	.byte	0x1
	.long	0x1e4
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x3a
	.string	"user_seq"
	.byte	0x1
	.value	0xa05
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"std_seq"
	.byte	0x1
	.value	0xa05
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0xa07
	.long	0x52bc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.long	.LASF57
	.long	0xb5dc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19081
	.byte	0x0
	.uleb128 0x3b
	.long	0x9758
	.string	"build_user_type_conversion_1"
	.byte	0x1
	.value	0xa25
	.byte	0x1
	.long	0x5feb
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x36
	.long	.LASF73
	.byte	0x1
	.value	0xa23
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF29
	.byte	0x1
	.value	0xa23
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0xa24
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF67
	.byte	0x1
	.value	0xa26
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.long	.LASF68
	.byte	0x1
	.value	0xa26
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.string	"fromtype"
	.byte	0x1
	.value	0xa27
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"ctors"
	.byte	0x1
	.value	0xa28
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x37
	.long	.LASF39
	.byte	0x1
	.value	0xa28
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.long	.LASF75
	.byte	0x1
	.value	0xa29
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x39
	.long	0x96b7
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0xa3e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x39
	.long	0x96d5
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x38
	.string	"ctor"
	.byte	0x1
	.value	0xa4e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x39
	.long	0x9747
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x38
	.string	"fns"
	.byte	0x1
	.value	0xa68
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LASF42
	.byte	0x1
	.value	0xa69
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"convflags"
	.byte	0x1
	.value	0xa6a
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x38
	.string	"fn"
	.byte	0x1
	.value	0xa75
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x38
	.string	"ics"
	.byte	0x1
	.value	0xa8e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	.LASF57
	.long	0xb5c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19107
	.byte	0x0
	.uleb128 0x35
	.long	0x97ca
	.byte	0x1
	.string	"build_user_type_conversion"
	.byte	0x1
	.value	0xacd
	.byte	0x1
	.long	0x1e4
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x36
	.long	.LASF73
	.byte	0x1
	.value	0xacb
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF29
	.byte	0x1
	.value	0xacb
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0xacc
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF68
	.byte	0x1
	.value	0xace
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	0x986c
	.byte	0x1
	.string	"resolve_scoped_fn_name"
	.byte	0x1
	.value	0xae0
	.byte	0x1
	.long	0x1e4
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x3a
	.string	"scope"
	.byte	0x1
	.value	0xadf
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0xadf
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"fn"
	.byte	0x1
	.value	0xae1
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x37
	.long	.LASF61
	.byte	0x1
	.value	0xae2
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"is_template_id"
	.byte	0x1
	.value	0xae3
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x34
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x38
	.string	"fns"
	.byte	0x1
	.value	0xb14
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x98c8
	.string	"resolve_args"
	.byte	0x1
	.value	0xb27
	.byte	0x1
	.long	0x1e4
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x36
	.long	.LASF75
	.byte	0x1
	.value	0xb26
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0xb28
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x38
	.string	"arg"
	.byte	0x1
	.value	0xb2b
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x9997
	.byte	0x1
	.string	"build_new_function_call"
	.byte	0x1
	.value	0xb42
	.byte	0x1
	.long	0x1e4
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x3a
	.string	"fn"
	.byte	0x1
	.value	0xb41
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF75
	.byte	0x1
	.value	0xb41
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF67
	.byte	0x1
	.value	0xb43
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	.LASF68
	.byte	0x1
	.value	0xb43
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LASF78
	.byte	0x1
	.value	0xb44
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x37
	.long	.LASF80
	.byte	0x1
	.value	0xb45
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.long	0x9986
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x38
	.string	"t1"
	.byte	0x1
	.value	0xb5a
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0xb63
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	.LASF57
	.long	0xb5b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19464
	.byte	0x0
	.uleb128 0x3b
	.long	0x9ab1
	.string	"build_object_call"
	.byte	0x1
	.value	0xb92
	.byte	0x1
	.long	0x1e4
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x3a
	.string	"obj"
	.byte	0x1
	.value	0xb91
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF75
	.byte	0x1
	.value	0xb91
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF67
	.byte	0x1
	.value	0xb93
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x37
	.long	.LASF68
	.byte	0x1
	.value	0xb93
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.string	"fns"
	.byte	0x1
	.value	0xb94
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.long	.LASF39
	.byte	0x1
	.value	0xb94
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x37
	.long	.LASF81
	.byte	0x1
	.value	0xb94
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.long	.LASF4
	.byte	0x1
	.value	0xb95
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x39
	.long	0x9a70
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x38
	.string	"base"
	.byte	0x1
	.value	0xbaa
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x38
	.string	"fn"
	.byte	0x1
	.value	0xbaf
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x38
	.string	"fns"
	.byte	0x1
	.value	0xbc1
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF73
	.byte	0x1
	.value	0xbc2
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x38
	.string	"fn"
	.byte	0x1
	.value	0xbcd
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.long	0x9b43
	.string	"op_error"
	.byte	0x1
	.value	0xbfe
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0xbfb
	.long	0xac3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF77
	.byte	0x1
	.value	0xbfb
	.long	0xac3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"arg1"
	.byte	0x1
	.value	0xbfc
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.string	"arg2"
	.byte	0x1
	.value	0xbfc
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3a
	.string	"arg3"
	.byte	0x1
	.value	0xbfc
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3a
	.string	"problem"
	.byte	0x1
	.value	0xbfd
	.long	0x2c7
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x38
	.string	"opname"
	.byte	0x1
	.value	0xbff
	.long	0x2c7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3b
	.long	0x9bd0
	.string	"conditional_conversion"
	.byte	0x1
	.value	0xc28
	.byte	0x1
	.long	0x1e4
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x3a
	.string	"e1"
	.byte	0x1
	.value	0xc26
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"e2"
	.byte	0x1
	.value	0xc27
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"t1"
	.byte	0x1
	.value	0xc29
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"t2"
	.byte	0x1
	.value	0xc2a
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF64
	.byte	0x1
	.value	0xc2b
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"good_base"
	.byte	0x1
	.value	0xc2c
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.uleb128 0x35
	.long	0x9d19
	.byte	0x1
	.string	"build_conditional_expr"
	.byte	0x1
	.value	0xc67
	.byte	0x1
	.long	0x1e4
	.long	.LFB61
	.long	.LFE61
	.long	.LLST46
	.uleb128 0x3a
	.string	"arg1"
	.byte	0x1
	.value	0xc64
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"arg2"
	.byte	0x1
	.value	0xc65
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"arg3"
	.byte	0x1
	.value	0xc66
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"arg2_type"
	.byte	0x1
	.value	0xc68
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.string	"arg3_type"
	.byte	0x1
	.value	0xc69
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"result"
	.byte	0x1
	.value	0xc6a
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.long	.LASF58
	.byte	0x1
	.value	0xc6b
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	.LASF69
	.byte	0x1
	.value	0xc6c
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LASF67
	.byte	0x1
	.value	0xc6d
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x37
	.long	.LASF68
	.byte	0x1
	.value	0xc6e
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3c
	.string	"valid_operands"
	.byte	0x1
	.value	0xd97
	.long	.L1459
	.uleb128 0x39
	.long	0x9cf0
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x38
	.string	"conv2"
	.byte	0x1
	.value	0xcc2
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"conv3"
	.byte	0x1
	.value	0xcc3
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x37
	.long	.LASF75
	.byte	0x1
	.value	0xd05
	.long	0x90bc
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.long	.LASF64
	.byte	0x1
	.value	0xd06
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x9edb
	.byte	0x1
	.string	"build_new_op"
	.byte	0x1
	.value	0xdac
	.byte	0x1
	.long	0x1e4
	.long	.LFB62
	.long	.LFE62
	.long	.LLST47
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0xda9
	.long	0xac3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0xdaa
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"arg1"
	.byte	0x1
	.value	0xdab
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.string	"arg2"
	.byte	0x1
	.value	0xdab
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3a
	.string	"arg3"
	.byte	0x1
	.value	0xdab
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x37
	.long	.LASF67
	.byte	0x1
	.value	0xdad
	.long	0x5feb
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x37
	.long	.LASF68
	.byte	0x1
	.value	0xdad
	.long	0x5feb
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x38
	.string	"fns"
	.byte	0x1
	.value	0xdae
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.string	"mem_arglist"
	.byte	0x1
	.value	0xdae
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x37
	.long	.LASF65
	.byte	0x1
	.value	0xdae
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x37
	.long	.LASF74
	.byte	0x1
	.value	0xdae
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x37
	.long	.LASF77
	.byte	0x1
	.value	0xdaf
	.long	0xac3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.long	.LASF64
	.byte	0x1
	.value	0xdb0
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"viable_candidates"
	.byte	0x1
	.value	0xdb1
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3c
	.string	"builtin"
	.byte	0x1
	.value	0xee4
	.long	.L1636
	.uleb128 0x39
	.long	0x9e59
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x38
	.string	"fn"
	.byte	0x1
	.value	0xe11
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x39
	.long	0x9eac
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x37
	.long	.LASF42
	.byte	0x1
	.value	0xe2b
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x38
	.string	"fn"
	.byte	0x1
	.value	0xe30
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LASF82
	.byte	0x1
	.value	0xe31
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x37
	.long	.LASF41
	.byte	0x1
	.value	0xe32
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x9eca
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x37
	.long	.LASF75
	.byte	0x1
	.value	0xe49
	.long	0x90bc
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x33
	.long	.LASF57
	.long	0xb5ad
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20207
	.byte	0x0
	.uleb128 0x35
	.long	0xa03b
	.byte	0x1
	.string	"build_op_delete_call"
	.byte	0x1
	.value	0xf36
	.byte	0x1
	.long	0x1e4
	.long	.LFB63
	.long	.LFE63
	.long	.LLST48
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0xf33
	.long	0xac3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"addr"
	.byte	0x1
	.value	0xf34
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"size"
	.byte	0x1
	.value	0xf34
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0xf35
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3a
	.string	"placement"
	.byte	0x1
	.value	0xf34
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x38
	.string	"fn"
	.byte	0x1
	.value	0xf37
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"fns"
	.byte	0x1
	.value	0xf38
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x37
	.long	.LASF74
	.byte	0x1
	.value	0xf38
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.string	"fntype"
	.byte	0x1
	.value	0xf38
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x37
	.long	.LASF76
	.byte	0x1
	.value	0xf38
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.long	.LASF75
	.byte	0x1
	.value	0xf38
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	.LASF4
	.byte	0x1
	.value	0xf38
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"pass"
	.byte	0x1
	.value	0xf39
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	0xa00f
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x38
	.string	"alloc_fn"
	.byte	0x1
	.value	0xf59
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"call_expr"
	.byte	0x1
	.value	0xf5a
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x39
	.long	0xa02a
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0xf8a
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	.LASF57
	.long	0xb598
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20763
	.byte	0x0
	.uleb128 0x35
	.long	0xa099
	.byte	0x1
	.string	"enforce_access"
	.byte	0x1
	.value	0xfc1
	.byte	0x1
	.long	0x2da
	.long	.LFB64
	.long	.LFE64
	.long	.LLST49
	.uleb128 0x36
	.long	.LASF59
	.byte	0x1
	.value	0xfbf
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF3
	.byte	0x1
	.value	0xfc0
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"accessible"
	.byte	0x1
	.value	0xfc2
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3b
	.long	0xa248
	.string	"convert_like_real"
	.byte	0x1
	.value	0xfdf
	.byte	0x1
	.long	0x1e4
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x36
	.long	.LASF39
	.byte	0x1
	.value	0xfdd
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF29
	.byte	0x1
	.value	0xfdd
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"fn"
	.byte	0x1
	.value	0xfdd
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.string	"argnum"
	.byte	0x1
	.value	0xfdd
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3a
	.string	"inner"
	.byte	0x1
	.value	0xfdd
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3a
	.string	"issue_conversion_warnings"
	.byte	0x1
	.value	0xfde
	.long	0x52b3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x38
	.string	"savew"
	.byte	0x1
	.value	0xfe0
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.string	"savee"
	.byte	0x1
	.value	0xfe0
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x37
	.long	.LASF73
	.byte	0x1
	.value	0xfe2
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x39
	.long	0xa185
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0xfe9
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x39
	.long	0xa1da
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x37
	.long	.LASF68
	.byte	0x1
	.value	0x1005
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"convfn"
	.byte	0x1
	.value	0x1006
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.long	.LASF75
	.byte	0x1
	.value	0x1007
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x100b
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xa1fc
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x38
	.string	"base_ptr"
	.byte	0x1
	.value	0x1071
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x39
	.long	0xa237
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x38
	.string	"ref_type"
	.byte	0x1
	.value	0x108d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x37
	.long	.LASF4
	.byte	0x1
	.value	0x1092
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	.LASF57
	.long	0xb593
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20919
	.byte	0x0
	.uleb128 0x3b
	.long	0xa292
	.string	"call_builtin_trap"
	.byte	0x1
	.value	0x10b8
	.byte	0x1
	.long	0x1e4
	.long	.LFB66
	.long	.LFE66
	.long	.LLST51
	.uleb128 0x38
	.string	"fn"
	.byte	0x1
	.value	0x10b9
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.long	.LASF57
	.long	0xb58e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.21136
	.byte	0x0
	.uleb128 0x35
	.long	0xa2d4
	.byte	0x1
	.string	"convert_arg_to_ellipsis"
	.byte	0x1
	.value	0x10cb
	.byte	0x1
	.long	0x1e4
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x3a
	.string	"arg"
	.byte	0x1
	.value	0x10ca
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0xa31c
	.byte	0x1
	.string	"build_x_va_arg"
	.byte	0x1
	.value	0x10eb
	.byte	0x1
	.long	0x1e4
	.long	.LFB68
	.long	.LFE68
	.long	.LLST53
	.uleb128 0x36
	.long	.LASF29
	.byte	0x1
	.value	0x10e9
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF4
	.byte	0x1
	.value	0x10ea
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x35
	.long	0xa36e
	.byte	0x1
	.string	"cxx_type_promotes_to"
	.byte	0x1
	.value	0x1105
	.byte	0x1
	.long	0x1e4
	.long	.LFB69
	.long	.LFE69
	.long	.LLST54
	.uleb128 0x36
	.long	.LASF4
	.byte	0x1
	.value	0x1104
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"promote"
	.byte	0x1
	.value	0x1106
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	0xa3dc
	.byte	0x1
	.string	"convert_default_arg"
	.byte	0x1
	.value	0x111f
	.byte	0x1
	.long	0x1e4
	.long	.LFB70
	.long	.LFE70
	.long	.LLST55
	.uleb128 0x36
	.long	.LASF4
	.byte	0x1
	.value	0x111b
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"arg"
	.byte	0x1
	.value	0x111c
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"fn"
	.byte	0x1
	.value	0x111d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.string	"parmnum"
	.byte	0x1
	.value	0x111e
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x35
	.long	0xa415
	.byte	0x1
	.string	"type_passed_as"
	.byte	0x1
	.value	0x1153
	.byte	0x1
	.long	0x1e4
	.long	.LFB71
	.long	.LFE71
	.long	.LLST56
	.uleb128 0x36
	.long	.LASF4
	.byte	0x1
	.value	0x1152
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0xa466
	.byte	0x1
	.string	"convert_for_arg_passing"
	.byte	0x1
	.value	0x1164
	.byte	0x1
	.long	0x1e4
	.long	.LFB72
	.long	.LFE72
	.long	.LLST57
	.uleb128 0x36
	.long	.LASF4
	.byte	0x1
	.value	0x1163
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"val"
	.byte	0x1
	.value	0x1163
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3b
	.long	0xa675
	.string	"build_over_call"
	.byte	0x1
	.value	0x117b
	.byte	0x1
	.long	0x1e4
	.long	.LFB73
	.long	.LFE73
	.long	.LLST58
	.uleb128 0x36
	.long	.LASF68
	.byte	0x1
	.value	0x1178
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF75
	.byte	0x1
	.value	0x1179
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0x117a
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"fn"
	.byte	0x1
	.value	0x117c
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x37
	.long	.LASF39
	.byte	0x1
	.value	0x117d
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x37
	.long	.LASF83
	.byte	0x1
	.value	0x117e
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x38
	.string	"parm"
	.byte	0x1
	.value	0x117f
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x37
	.long	.LASF64
	.byte	0x1
	.value	0x1180
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x38
	.string	"arg"
	.byte	0x1
	.value	0x1180
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.string	"val"
	.byte	0x1
	.value	0x1180
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x1181
	.long	0x2da
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.string	"is_method"
	.byte	0x1
	.value	0x1182
	.long	0x2da
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x39
	.long	0xa5ab
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x37
	.long	.LASF72
	.byte	0x1
	.value	0x11a5
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.long	.LASF71
	.byte	0x1
	.value	0x11a6
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.string	"converted_arg"
	.byte	0x1
	.value	0x11a7
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"base_binfo"
	.byte	0x1
	.value	0x11a8
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x39
	.long	0xa5c8
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x37
	.long	.LASF4
	.byte	0x1
	.value	0x11d3
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x39
	.long	0xa611
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x38
	.string	"targ"
	.byte	0x1
	.value	0x11fb
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x38
	.string	"address"
	.byte	0x1
	.value	0x1228
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"to"
	.byte	0x1
	.value	0x1229
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xa62d
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x38
	.string	"to"
	.byte	0x1
	.value	0x1238
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x39
	.long	0xa664
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x1244
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"p"
	.byte	0x1
	.value	0x1244
	.long	0x52bc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF25
	.byte	0x1
	.value	0x1245
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	.LASF57
	.long	0xb579
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.21331
	.byte	0x0
	.uleb128 0x35
	.long	0xa6f6
	.byte	0x1
	.string	"build_cxx_call"
	.byte	0x1
	.value	0x1263
	.byte	0x1
	.long	0x1e4
	.long	.LFB74
	.long	.LFE74
	.long	.LLST59
	.uleb128 0x3a
	.string	"fn"
	.byte	0x1
	.value	0x1262
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF75
	.byte	0x1
	.value	0x1262
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF83
	.byte	0x1
	.value	0x1262
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"fndecl"
	.byte	0x1
	.value	0x1264
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x38
	.string	"exp"
	.byte	0x1
	.value	0x126d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0xa808
	.string	"build_java_interface_fn_ref"
	.byte	0x1
	.value	0x1295
	.byte	0x1
	.long	0x1e4
	.long	.LFB75
	.long	.LFE75
	.long	.LLST60
	.uleb128 0x3a
	.string	"fn"
	.byte	0x1
	.value	0x1294
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF56
	.byte	0x1
	.value	0x1294
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"lookup_args"
	.byte	0x1
	.value	0x1296
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"lookup_fn"
	.byte	0x1
	.value	0x1296
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.string	"method"
	.byte	0x1
	.value	0x1296
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.string	"idx"
	.byte	0x1
	.value	0x1296
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"klass_ref"
	.byte	0x1
	.value	0x1297
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"iface"
	.byte	0x1
	.value	0x1297
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"iface_ref"
	.byte	0x1
	.value	0x1297
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x1298
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x38
	.string	"endlink"
	.byte	0x1
	.value	0x129c
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x129d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0xa859
	.byte	0x1
	.string	"in_charge_arg_for_name"
	.byte	0x1
	.value	0x12d3
	.byte	0x1
	.long	0x1e4
	.long	.LFB76
	.long	.LFE76
	.long	.LLST61
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0x12d2
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF57
	.long	0xb564
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.21768
	.byte	0x0
	.uleb128 0x35
	.long	0xa937
	.byte	0x1
	.string	"build_special_member_call"
	.byte	0x1
	.value	0x12f3
	.byte	0x1
	.long	0x1e4
	.long	.LFB77
	.long	.LFE77
	.long	.LLST62
	.uleb128 0x36
	.long	.LASF56
	.byte	0x1
	.value	0x12f1
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0x12f1
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF75
	.byte	0x1
	.value	0x12f1
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF25
	.byte	0x1
	.value	0x12f2
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0x12f2
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x38
	.string	"fns"
	.byte	0x1
	.value	0x12f4
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LASF43
	.byte	0x1
	.value	0x12f6
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	0xa926
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x38
	.string	"vtt"
	.byte	0x1
	.value	0x132a
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"sub_vtt"
	.byte	0x1
	.value	0x132b
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	.LASF57
	.long	0xb54f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.21794
	.byte	0x0
	.uleb128 0x35
	.long	0xaaf6
	.byte	0x1
	.string	"build_new_method_call"
	.byte	0x1
	.value	0x134a
	.byte	0x1
	.long	0x1e4
	.long	.LFB78
	.long	.LFE78
	.long	.LLST63
	.uleb128 0x36
	.long	.LASF56
	.byte	0x1
	.value	0x1348
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"fns"
	.byte	0x1
	.value	0x1348
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF75
	.byte	0x1
	.value	0x1348
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF42
	.byte	0x1
	.value	0x1349
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x36
	.long	.LASF60
	.byte	0x1
	.value	0x1349
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x37
	.long	.LASF67
	.byte	0x1
	.value	0x134b
	.long	0x5feb
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x37
	.long	.LASF68
	.byte	0x1
	.value	0x134b
	.long	0x5feb
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x37
	.long	.LASF78
	.byte	0x1
	.value	0x134c
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x37
	.long	.LASF55
	.byte	0x1
	.value	0x134d
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x38
	.string	"access_binfo"
	.byte	0x1
	.value	0x134e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.string	"optype"
	.byte	0x1
	.value	0x134f
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x37
	.long	.LASF81
	.byte	0x1
	.value	0x1350
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x37
	.long	.LASF53
	.byte	0x1
	.value	0x1350
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x37
	.long	.LASF24
	.byte	0x1
	.value	0x1351
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.string	"pretty_name"
	.byte	0x1
	.value	0x1351
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"user_args"
	.byte	0x1
	.value	0x1352
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"call"
	.byte	0x1
	.value	0x1353
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	.LASF80
	.byte	0x1
	.value	0x1354
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.long	0xaae5
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x38
	.string	"fn"
	.byte	0x1
	.value	0x13a3
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x37
	.long	.LASF43
	.byte	0x1
	.value	0x13a4
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x13ab
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x37
	.long	.LASF82
	.byte	0x1
	.value	0x13ac
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	.LASF57
	.long	0xb53a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.21922
	.byte	0x0
	.uleb128 0x3b
	.long	0xab3a
	.string	"is_subseq"
	.byte	0x1
	.value	0x140e
	.byte	0x1
	.long	0x2da
	.long	.LFB79
	.long	.LFE79
	.long	.LLST64
	.uleb128 0x3a
	.string	"ics1"
	.byte	0x1
	.value	0x140d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"ics2"
	.byte	0x1
	.value	0x140d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x35
	.long	0xab91
	.byte	0x1
	.string	"is_properly_derived_from"
	.byte	0x1
	.value	0x1437
	.byte	0x1
	.long	0x2da
	.long	.LFB80
	.long	.LFE80
	.long	.LLST65
	.uleb128 0x3a
	.string	"derived"
	.byte	0x1
	.value	0x1435
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"base"
	.byte	0x1
	.value	0x1436
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3d
	.long	0xabf9
	.string	"maybe_handle_implicit_object"
	.byte	0x1
	.value	0x144b
	.byte	0x1
	.long	.LFB81
	.long	.LFE81
	.long	.LLST66
	.uleb128 0x3a
	.string	"ics"
	.byte	0x1
	.value	0x144a
	.long	0x52bc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x1455
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x37
	.long	.LASF66
	.byte	0x1
	.value	0x1456
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0xac64
	.string	"maybe_handle_ref_bind"
	.byte	0x1
	.value	0x146f
	.byte	0x1
	.long	0x1e4
	.long	.LFB82
	.long	.LFE82
	.long	.LLST67
	.uleb128 0x3a
	.string	"ics"
	.byte	0x1
	.value	0x146e
	.long	0x52bc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x38
	.string	"old_ics"
	.byte	0x1
	.value	0x1472
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x37
	.long	.LASF4
	.byte	0x1
	.value	0x1473
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0xae1e
	.string	"compare_ics"
	.byte	0x1
	.value	0x1487
	.byte	0x1
	.long	0x2da
	.long	.LFB83
	.long	.LFE83
	.long	.LLST68
	.uleb128 0x3a
	.string	"ics1"
	.byte	0x1
	.value	0x1486
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"ics2"
	.byte	0x1
	.value	0x1486
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"from_type1"
	.byte	0x1
	.value	0x1488
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x38
	.string	"from_type2"
	.byte	0x1
	.value	0x1489
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.string	"to_type1"
	.byte	0x1
	.value	0x148a
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x38
	.string	"to_type2"
	.byte	0x1
	.value	0x148b
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.string	"deref_from_type1"
	.byte	0x1
	.value	0x148c
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.string	"deref_from_type2"
	.byte	0x1
	.value	0x148d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"deref_to_type1"
	.byte	0x1
	.value	0x148e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.string	"deref_to_type2"
	.byte	0x1
	.value	0x148f
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.string	"rank1"
	.byte	0x1
	.value	0x1490
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"rank2"
	.byte	0x1
	.value	0x1490
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"target_type1"
	.byte	0x1
	.value	0x1495
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"target_type2"
	.byte	0x1
	.value	0x1496
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.long	0xade8
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x38
	.string	"t1"
	.byte	0x1
	.value	0x14cf
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"t2"
	.byte	0x1
	.value	0x14cf
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x39
	.long	0xae05
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x37
	.long	.LASF63
	.byte	0x1
	.value	0x1590
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x38
	.string	"to"
	.byte	0x1
	.value	0x15a5
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0xae61
	.string	"source_type"
	.byte	0x1
	.value	0x15d8
	.byte	0x1
	.long	0x1e4
	.long	.LFB84
	.long	.LFE84
	.long	.LLST69
	.uleb128 0x3a
	.string	"t"
	.byte	0x1
	.value	0x15d7
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF57
	.long	0xb525
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.22718
	.byte	0x0
	.uleb128 0x3d
	.long	0xaea6
	.string	"add_warning"
	.byte	0x1
	.value	0x15ea
	.byte	0x1
	.long	.LFB85
	.long	.LFE85
	.long	.LLST70
	.uleb128 0x3a
	.string	"winner"
	.byte	0x1
	.value	0x15e9
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"loser"
	.byte	0x1
	.value	0x15e9
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3b
	.long	0xb0b6
	.string	"joust"
	.byte	0x1
	.value	0x15fb
	.byte	0x1
	.long	0x2da
	.long	.LFB86
	.long	.LFE86
	.long	.LLST71
	.uleb128 0x3a
	.string	"cand1"
	.byte	0x1
	.value	0x15f9
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"cand2"
	.byte	0x1
	.value	0x15f9
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"warn"
	.byte	0x1
	.value	0x15fa
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"winner"
	.byte	0x1
	.value	0x15fc
	.long	0x2da
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x15fd
	.long	0x2da
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x38
	.string	"off1"
	.byte	0x1
	.value	0x15fd
	.long	0x2da
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x38
	.string	"off2"
	.byte	0x1
	.value	0x15fd
	.long	0x2da
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.value	0x15fd
	.long	0x2da
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3c
	.string	"tweak"
	.byte	0x1
	.value	0x16e0
	.long	.L2581
	.uleb128 0x39
	.long	0xafec
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x38
	.string	"t1"
	.byte	0x1
	.value	0x162a
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x38
	.string	"t2"
	.byte	0x1
	.value	0x162b
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.string	"comp"
	.byte	0x1
	.value	0x162c
	.long	0x2da
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x34
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x37
	.long	.LASF4
	.byte	0x1
	.value	0x163c
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.string	"type1"
	.byte	0x1
	.value	0x163d
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x38
	.string	"type2"
	.byte	0x1
	.value	0x163d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.string	"w"
	.byte	0x1
	.value	0x163e
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.string	"l"
	.byte	0x1
	.value	0x163e
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xb05b
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x38
	.string	"comp"
	.byte	0x1
	.value	0x1664
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x38
	.string	"w"
	.byte	0x1
	.value	0x1667
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.string	"l"
	.byte	0x1
	.value	0x1667
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"convn"
	.byte	0x1
	.value	0x1668
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x38
	.string	"source"
	.byte	0x1
	.value	0x1678
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xb0a5
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x38
	.string	"rank1"
	.byte	0x1
	.value	0x16e6
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"rank2"
	.byte	0x1
	.value	0x16e6
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"w"
	.byte	0x1
	.value	0x16e7
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"l"
	.byte	0x1
	.value	0x16e7
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	.LASF57
	.long	0xb510
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.22745
	.byte	0x0
	.uleb128 0x3b
	.long	0xb147
	.string	"tourney"
	.byte	0x1
	.value	0x170c
	.byte	0x1
	.long	0x5feb
	.long	.LFB87
	.long	.LFE87
	.long	.LLST72
	.uleb128 0x36
	.long	.LASF67
	.byte	0x1
	.value	0x170b
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"champ"
	.byte	0x1
	.value	0x170d
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"challenger"
	.byte	0x1
	.value	0x170d
	.long	0x5feb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"fate"
	.byte	0x1
	.value	0x170e
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.string	"champ_compared_to_predecessor"
	.byte	0x1
	.value	0x170f
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x35
	.long	0xb18b
	.byte	0x1
	.string	"can_convert"
	.byte	0x1
	.value	0x1741
	.byte	0x1
	.long	0x2da
	.long	.LFB88
	.long	.LFE88
	.long	.LLST73
	.uleb128 0x3a
	.string	"to"
	.byte	0x1
	.value	0x1740
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF63
	.byte	0x1
	.value	0x1740
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x35
	.long	0xb1ef
	.byte	0x1
	.string	"can_convert_arg"
	.byte	0x1
	.value	0x174a
	.byte	0x1
	.long	0x2da
	.long	.LFB89
	.long	.LFE89
	.long	.LLST74
	.uleb128 0x3a
	.string	"to"
	.byte	0x1
	.value	0x1749
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF63
	.byte	0x1
	.value	0x1749
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"arg"
	.byte	0x1
	.value	0x1749
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x174b
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x35
	.long	0xb257
	.byte	0x1
	.string	"can_convert_arg_bad"
	.byte	0x1
	.value	0x1754
	.byte	0x1
	.long	0x2da
	.long	.LFB90
	.long	.LFE90
	.long	.LLST75
	.uleb128 0x3a
	.string	"to"
	.byte	0x1
	.value	0x1753
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF63
	.byte	0x1
	.value	0x1753
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"arg"
	.byte	0x1
	.value	0x1753
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x1755
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x35
	.long	0xb2bb
	.byte	0x1
	.string	"perform_implicit_conversion"
	.byte	0x1
	.value	0x1763
	.byte	0x1
	.long	0x1e4
	.long	.LFB91
	.long	.LFE91
	.long	.LLST76
	.uleb128 0x36
	.long	.LASF4
	.byte	0x1
	.value	0x1761
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF29
	.byte	0x1
	.value	0x1762
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF64
	.byte	0x1
	.value	0x1764
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	0xb32d
	.byte	0x1
	.string	"perform_direct_initialization_if_possible"
	.byte	0x1
	.value	0x177a
	.byte	0x1
	.long	0x1e4
	.long	.LFB92
	.long	.LFE92
	.long	.LLST77
	.uleb128 0x36
	.long	.LASF4
	.byte	0x1
	.value	0x1779
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF29
	.byte	0x1
	.value	0x1779
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF64
	.byte	0x1
	.value	0x177b
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x35
	.long	0xb3b1
	.byte	0x1
	.string	"make_temporary_var_for_ref_to_temp"
	.byte	0x1
	.value	0x179e
	.byte	0x1
	.long	0x1e4
	.long	.LFB93
	.long	.LFE93
	.long	.LLST78
	.uleb128 0x36
	.long	.LASF3
	.byte	0x1
	.value	0x179d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF4
	.byte	0x1
	.value	0x179d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"var"
	.byte	0x1
	.value	0x179f
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x37
	.long	.LASF24
	.byte	0x1
	.value	0x17aa
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0xb4a0
	.byte	0x1
	.string	"initialize_reference"
	.byte	0x1
	.value	0x17ce
	.byte	0x1
	.long	0x1e4
	.long	.LFB94
	.long	.LFE94
	.long	.LLST79
	.uleb128 0x36
	.long	.LASF4
	.byte	0x1
	.value	0x17ca
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF29
	.byte	0x1
	.value	0x17cb
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF3
	.byte	0x1
	.value	0x17cc
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.string	"cleanup"
	.byte	0x1
	.value	0x17cd
	.long	0x52bc
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x37
	.long	.LASF64
	.byte	0x1
	.value	0x17cf
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.long	0xb48f
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x38
	.string	"var"
	.byte	0x1
	.value	0x1806
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"base_conv_type"
	.byte	0x1
	.value	0x1807
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x38
	.string	"init"
	.byte	0x1
	.value	0x1818
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x37
	.long	.LASF4
	.byte	0x1
	.value	0x1819
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	.LASF57
	.long	0xb4fb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.23377
	.byte	0x0
	.uleb128 0x3e
	.long	0xb4e6
	.byte	0x1
	.string	"gt_ggc_mx_z_candidate"
	.byte	0x2
	.byte	0x1a
	.byte	0x1
	.long	.LFB95
	.long	.LFE95
	.long	.LLST80
	.uleb128 0x2f
	.string	"x_p"
	.byte	0x2
	.byte	0x19
	.long	0x4e1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3f
	.string	"x"
	.byte	0x2
	.byte	0x1b
	.long	0xb4e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.long	0x5feb
	.uleb128 0x10
	.long	0xb4fb
	.long	0x2d2
	.uleb128 0x11
	.long	0x3ca
	.byte	0x14
	.byte	0x0
	.uleb128 0xb
	.long	0xb4eb
	.uleb128 0x10
	.long	0xb510
	.long	0x2d2
	.uleb128 0x11
	.long	0x3ca
	.byte	0x5
	.byte	0x0
	.uleb128 0xb
	.long	0xb500
	.uleb128 0x10
	.long	0xb525
	.long	0x2d2
	.uleb128 0x11
	.long	0x3ca
	.byte	0xb
	.byte	0x0
	.uleb128 0xb
	.long	0xb515
	.uleb128 0x10
	.long	0xb53a
	.long	0x2d2
	.uleb128 0x11
	.long	0x3ca
	.byte	0x15
	.byte	0x0
	.uleb128 0xb
	.long	0xb52a
	.uleb128 0x10
	.long	0xb54f
	.long	0x2d2
	.uleb128 0x11
	.long	0x3ca
	.byte	0x19
	.byte	0x0
	.uleb128 0xb
	.long	0xb53f
	.uleb128 0x10
	.long	0xb564
	.long	0x2d2
	.uleb128 0x11
	.long	0x3ca
	.byte	0x16
	.byte	0x0
	.uleb128 0xb
	.long	0xb554
	.uleb128 0x10
	.long	0xb579
	.long	0x2d2
	.uleb128 0x11
	.long	0x3ca
	.byte	0xf
	.byte	0x0
	.uleb128 0xb
	.long	0xb569
	.uleb128 0x10
	.long	0xb58e
	.long	0x2d2
	.uleb128 0x11
	.long	0x3ca
	.byte	0x11
	.byte	0x0
	.uleb128 0xb
	.long	0xb57e
	.uleb128 0xb
	.long	0xb57e
	.uleb128 0xb
	.long	0xb4eb
	.uleb128 0x10
	.long	0xb5ad
	.long	0x2d2
	.uleb128 0x11
	.long	0x3ca
	.byte	0xc
	.byte	0x0
	.uleb128 0xb
	.long	0xb59d
	.uleb128 0xb
	.long	0x826
	.uleb128 0x10
	.long	0xb5c7
	.long	0x2d2
	.uleb128 0x11
	.long	0x3ca
	.byte	0x1c
	.byte	0x0
	.uleb128 0xb
	.long	0xb5b7
	.uleb128 0x10
	.long	0xb5dc
	.long	0x2d2
	.uleb128 0x11
	.long	0x3ca
	.byte	0x1a
	.byte	0x0
	.uleb128 0xb
	.long	0xb5cc
	.uleb128 0xb
	.long	0xb52a
	.uleb128 0x10
	.long	0xb5f6
	.long	0x2d2
	.uleb128 0x11
	.long	0x3ca
	.byte	0x18
	.byte	0x0
	.uleb128 0xb
	.long	0xb5e6
	.uleb128 0x10
	.long	0xb60b
	.long	0x2d2
	.uleb128 0x11
	.long	0x3ca
	.byte	0xa
	.byte	0x0
	.uleb128 0xb
	.long	0xb5fb
	.uleb128 0xb
	.long	0xb569
	.uleb128 0x38
	.string	"java_iface_lookup_fn"
	.byte	0x1
	.value	0x128c
	.long	0x1e4
	.byte	0x5
	.byte	0x3
	.long	java_iface_lookup_fn
	.uleb128 0x10
	.long	0xb643
	.long	0x2d2
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x41
	.string	"tree_code_type"
	.byte	0x4
	.byte	0x43
	.long	0xb65b
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xb638
	.uleb128 0x10
	.long	0xb670
	.long	0x1e4
	.uleb128 0x11
	.long	0x3ca
	.byte	0x3f
	.byte	0x0
	.uleb128 0x42
	.string	"global_trees"
	.byte	0x4
	.value	0x8ee
	.long	0xb660
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xb697
	.long	0x1e4
	.uleb128 0x11
	.long	0x3ca
	.byte	0xa
	.byte	0x0
	.uleb128 0x42
	.string	"integer_types"
	.byte	0x4
	.value	0x95f
	.long	0xb687
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xb6bf
	.long	0x1e4
	.uleb128 0x11
	.long	0x3ca
	.byte	0x5
	.byte	0x0
	.uleb128 0x42
	.string	"sizetype_tab"
	.byte	0x4
	.value	0xb10
	.long	0xb6af
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"current_function_decl"
	.byte	0x4
	.value	0xc07
	.long	0x1e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"cfun"
	.byte	0x9
	.value	0x202
	.long	0x4826
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xb715
	.long	0x1e4
	.uleb128 0x11
	.long	0x3ca
	.byte	0x1e
	.byte	0x0
	.uleb128 0x41
	.string	"c_global_trees"
	.byte	0xc
	.byte	0xee
	.long	0xb705
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"warn_conversion"
	.byte	0xc
	.value	0x1e7
	.long	0x2da
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"warn_format"
	.byte	0xc
	.value	0x1f0
	.long	0x2da
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_elide_constructors"
	.byte	0xc
	.value	0x2b1
	.long	0x2da
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"warn_synth"
	.byte	0x1
	.value	0xea2
	.long	0x2da
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"warn_sign_promo"
	.byte	0xc
	.value	0x32d
	.long	0x2da
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xb7be
	.long	0x1e4
	.uleb128 0x11
	.long	0x3ca
	.byte	0x49
	.byte	0x0
	.uleb128 0x42
	.string	"cp_global_trees"
	.byte	0xb
	.value	0x28f
	.long	0xb7ae
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"scope_chain"
	.byte	0xb
	.value	0x368
	.long	0x6262
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"global_namespace"
	.byte	0xb
	.value	0x3d4
	.long	0x1e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"integer_two_node"
	.byte	0xb
	.value	0xca7
	.long	0x1e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"integer_three_node"
	.byte	0xb
	.value	0xca8
	.long	0x1e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"at_eof"
	.byte	0xb
	.value	0xd4d
	.long	0x2da
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"static_aggregates"
	.byte	0xb
	.value	0xd53
	.long	0x1e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xb879
	.long	0x7026
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x42
	.string	"operator_name_info"
	.byte	0xb
	.value	0xe32
	.long	0xb86e
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"assignment_operator_name_info"
	.byte	0xb
	.value	0xe34
	.long	0xb86e
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"extra_warnings"
	.byte	0x10
	.byte	0x5f
	.long	0x2da
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"pedantic"
	.byte	0x10
	.byte	0xe3
	.long	0x2da
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"global_dc"
	.byte	0x11
	.value	0x109
	.long	0x7f7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xb90c
	.long	0x7a7b
	.uleb128 0x11
	.long	0x3ca
	.byte	0x1
	.byte	0x0
	.uleb128 0x43
	.string	"gt_ggc_r_gt_cp_call_h"
	.byte	0x2
	.byte	0x2b
	.long	0xb930
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_r_gt_cp_call_h
	.uleb128 0xb
	.long	0xb8fc
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
	.uleb128 0x19
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
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
	.long	0x39c
	.value	0x2
	.long	.Ldebug_info0
	.long	0xb936
	.long	0x7fcd
	.string	"build_vfield_ref"
	.long	0x8078
	.string	"check_dtor_name"
	.long	0x80ce
	.string	"build_scoped_method_call"
	.long	0x817b
	.string	"build_addr_func"
	.long	0x81de
	.string	"build_call"
	.long	0x82b9
	.string	"build_method_call"
	.long	0x83b8
	.string	"null_ptr_cst_p"
	.long	0x83ef
	.string	"sufficient_parms_p"
	.long	0x84d0
	.string	"strip_top_quals"
	.long	0x8f85
	.string	"type_decays_to"
	.long	0x9758
	.string	"build_user_type_conversion"
	.long	0x97ca
	.string	"resolve_scoped_fn_name"
	.long	0x98c8
	.string	"build_new_function_call"
	.long	0x9bd0
	.string	"build_conditional_expr"
	.long	0x9d19
	.string	"build_new_op"
	.long	0x9edb
	.string	"build_op_delete_call"
	.long	0xa03b
	.string	"enforce_access"
	.long	0xa292
	.string	"convert_arg_to_ellipsis"
	.long	0xa2d4
	.string	"build_x_va_arg"
	.long	0xa31c
	.string	"cxx_type_promotes_to"
	.long	0xa36e
	.string	"convert_default_arg"
	.long	0xa3dc
	.string	"type_passed_as"
	.long	0xa415
	.string	"convert_for_arg_passing"
	.long	0xa675
	.string	"build_cxx_call"
	.long	0xa808
	.string	"in_charge_arg_for_name"
	.long	0xa859
	.string	"build_special_member_call"
	.long	0xa937
	.string	"build_new_method_call"
	.long	0xab3a
	.string	"is_properly_derived_from"
	.long	0xb147
	.string	"can_convert"
	.long	0xb18b
	.string	"can_convert_arg"
	.long	0xb1ef
	.string	"can_convert_arg_bad"
	.long	0xb257
	.string	"perform_implicit_conversion"
	.long	0xb2bb
	.string	"perform_direct_initialization_if_possible"
	.long	0xb32d
	.string	"make_temporary_var_for_ref_to_temp"
	.long	0xb3b1
	.string	"initialize_reference"
	.long	0xb4a0
	.string	"gt_ggc_mx_z_candidate"
	.long	0xb90c
	.string	"gt_ggc_r_gt_cp_call_h"
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
.LASF24:
	.string	"name"
.LASF79:
	.string	"return_type"
.LASF31:
	.string	"cannot_inline"
.LASF8:
	.string	"lang_flag_0"
.LASF10:
	.string	"lang_flag_2"
.LASF12:
	.string	"lang_flag_4"
.LASF14:
	.string	"lang_flag_6"
.LASF42:
	.string	"conversion_path"
.LASF34:
	.string	"sequence_stack"
.LASF50:
	.string	"mem_attrs"
.LASF68:
	.string	"cand"
.LASF36:
	.string	"bindings"
.LASF73:
	.string	"totype"
.LASF65:
	.string	"arglist"
.LASF80:
	.string	"template_only"
.LASF81:
	.string	"mem_args"
.LASF29:
	.string	"expr"
.LASF25:
	.string	"binfo"
.LASF52:
	.string	"diagnostic_context"
.LASF1:
	.string	"common"
.LASF40:
	.string	"viable"
.LASF27:
	.string	"lang_specific"
.LASF23:
	.string	"align"
.LASF35:
	.string	"sequence_rtl_expr"
.LASF41:
	.string	"access_path"
.LASF67:
	.string	"candidates"
.LASF38:
	.string	"cxx_saved_binding"
.LASF46:
	.string	"befriending_classes"
.LASF33:
	.string	"function_frequency"
.LASF9:
	.string	"lang_flag_1"
.LASF11:
	.string	"lang_flag_3"
.LASF15:
	.string	"lang_flag_7"
.LASF28:
	.string	"function"
.LASF72:
	.string	"parmtype"
.LASF55:
	.string	"basetype"
.LASF5:
	.string	"unsigned int"
.LASF49:
	.string	"operator_name_info_t"
.LASF58:
	.string	"result_type"
.LASF64:
	.string	"conv"
.LASF18:
	.string	"abstract_origin"
.LASF21:
	.string	"pointer_depth"
.LASF44:
	.string	"use_template"
.LASF48:
	.string	"unification_kind_t"
.LASF54:
	.string	"parms"
.LASF77:
	.string	"code2"
.LASF22:
	.string	"user_align"
.LASF70:
	.string	"parmnode"
.LASF76:
	.string	"argtypes"
.LASF19:
	.string	"size_unit"
.LASF4:
	.string	"type"
.LASF32:
	.string	"language"
.LASF51:
	.string	"output_buffer"
.LASF69:
	.string	"lvalue_p"
.LASF30:
	.string	"args_size"
.LASF83:
	.string	"converted_args"
.LASF47:
	.string	"cp_lvalue_kind"
.LASF7:
	.string	"built_in_class"
.LASF71:
	.string	"argtype"
.LASF2:
	.string	"identifier"
.LASF13:
	.string	"lang_flag_5"
.LASF17:
	.string	"abstract_flag"
.LASF53:
	.string	"instance_ptr"
.LASF37:
	.string	"x_stmt_tree"
.LASF82:
	.string	"this_arglist"
.LASF0:
	.string	"code"
.LASF26:
	.string	"context"
.LASF43:
	.string	"class_type"
.LASF78:
	.string	"explicit_targs"
.LASF39:
	.string	"convs"
.LASF63:
	.string	"from"
.LASF62:
	.string	"parmlist"
.LASF66:
	.string	"reference_type"
.LASF45:
	.string	"template_info"
.LASF57:
	.string	"__FUNCTION__"
.LASF75:
	.string	"args"
.LASF60:
	.string	"flags"
.LASF56:
	.string	"instance"
.LASF74:
	.string	"fnname"
.LASF61:
	.string	"template_args"
.LASF16:
	.string	"ht_identifier"
.LASF59:
	.string	"basetype_path"
.LASF6:
	.string	"_IO_FILE"
.LASF20:
	.string	"attributes"
.LASF3:
	.string	"decl"
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
