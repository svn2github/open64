	.file	"pt.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	regenerating_decl_from_template
	.comm	regenerating_decl_from_template,1,1
	.type	push_access_scope_real, @function
push_access_scope_real:
.LFB15:
	.file 1 "../../../kg++fe/gnu/cp/pt.c"
	.loc 1 193 0
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
	.loc 1 194 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L2
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L4
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L4
.L2:
	.loc 1 209 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L4
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L4
	cmpl	$0, 12(%ebp)
	je	.L4
.LBB2:
	.loc 1 212 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_template_arg_vector
	movl	%eax, -12(%ebp)
	.loc 1 213 0
	movl	$0, -8(%ebp)
	.loc 1 214 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L9
	.loc 1 215 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	retrieve_specialization
	movl	%eax, -8(%ebp)
.L9:
	.loc 1 216 0
	cmpl	$0, -8(%ebp)
	je	.L4
	.loc 1 217 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%ebp)
.L4:
.LBE2:
	.loc 1 221 0
	cmpl	$0, 16(%ebp)
	jne	.L12
	.loc 1 222 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, 16(%ebp)
.L12:
	.loc 1 223 0
	cmpl	$0, 16(%ebp)
	je	.L14
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L14
	.loc 1 224 0
	movl	$2, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	push_nested_class@PLT
	.loc 1 223 0
	jmp	.L17
.L14:
	.loc 1 226 0
	call	push_to_top_level@PLT
.L17:
	.loc 1 228 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L18
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L22
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L22
.L18:
	.loc 1 230 0
	movl	saved_access_scope@GOTOFF(%ebx), %edx
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, saved_access_scope@GOTOFF(%ebx)
	.loc 1 232 0
	movl	current_function_decl@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
.L22:
	.loc 1 234 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	push_access_scope_real, .-push_access_scope_real
	.type	push_access_scope, @function
push_access_scope:
.LFB16:
	.loc 1 241 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	subl	$24, %esp
.LCFI6:
	.loc 1 242 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_access_scope_real
	.loc 1 243 0
	leave
	ret
.LFE16:
	.size	push_access_scope, .-push_access_scope
	.type	pop_access_scope, @function
pop_access_scope:
.LFB17:
	.loc 1 251 0
	pushl	%ebp
.LCFI7:
	movl	%esp, %ebp
.LCFI8:
	pushl	%ebx
.LCFI9:
	subl	$4, %esp
.LCFI10:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 252 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L26
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L28
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L28
.L26:
	.loc 1 254 0
	movl	saved_access_scope@GOTOFF(%ebx), %eax
	movl	20(%eax), %edx
	movl	current_function_decl@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 255 0
	movl	saved_access_scope@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, saved_access_scope@GOTOFF(%ebx)
.L28:
	.loc 1 258 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L30
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L30
	.loc 1 259 0
	call	pop_nested_class@PLT
	.loc 1 258 0
	jmp	.L34
.L30:
	.loc 1 261 0
	call	pop_from_top_level@PLT
.L34:
	.loc 1 262 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	pop_access_scope, .-pop_access_scope
	.section	.rodata
	.align 4
.LC0:
	.string	"data member `%D' cannot be a member template"
	.align 4
.LC1:
	.string	"invalid member template declaration `%D'"
	.text
.globl finish_member_template_decl
	.type	finish_member_template_decl, @function
finish_member_template_decl:
.LFB18:
	.loc 1 272 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	pushl	%ebx
.LCFI13:
	subl	$36, %esp
.LCFI14:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 273 0
	cmpl	$0, 8(%ebp)
	je	.L36
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L38
.L36:
	.loc 1 274 0
	movl	$0, -24(%ebp)
	jmp	.L39
.L38:
	.loc 1 275 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L40
	.loc 1 278 0
	movl	$0, -24(%ebp)
	jmp	.L39
.L40:
	.loc 1 279 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L42
	.loc 1 282 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 283 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L44
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L44
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L44
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L44
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L49
.L44:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L49
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	cmpb	$8, %al
	je	.L49
.LBB3:
	.loc 1 286 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 287 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_member_template@PLT
	.loc 1 288 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L39
.L49:
.LBE3:
	.loc 1 290 0
	movl	$0, -24(%ebp)
	jmp	.L39
.L42:
	.loc 1 292 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L52
	.loc 1 293 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L54
.L52:
	.loc 1 294 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L55
	.loc 1 296 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	je	.L57
	.loc 1 298 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	check_member_template@PLT
	.loc 1 299 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L39
.L57:
	.loc 1 302 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L39
.L55:
	.loc 1 305 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L54:
	.loc 1 307 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L39:
	movl	-24(%ebp), %eax
	.loc 1 308 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	finish_member_template_decl, .-finish_member_template_decl
	.type	template_class_depth_real, @function
template_class_depth_real:
.LFB19:
	.loc 1 333 0
	pushl	%ebp
.LCFI15:
	movl	%esp, %ebp
.LCFI16:
	pushl	%ebx
.LCFI17:
	subl	$36, %esp
.LCFI18:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 336 0
	movl	$0, -8(%ebp)
	.loc 1 337 0
	jmp	.L61
.L62:
	.loc 1 341 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L63
	.loc 1 343 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L71
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jne	.L71
	cmpl	$0, 12(%ebp)
	je	.L68
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	cmpb	$8, %al
	je	.L70
.L68:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	je	.L71
.L70:
	.loc 1 348 0
	addl	$1, -8(%ebp)
	jmp	.L71
.L63:
	.loc 1 352 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L71
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jne	.L71
	cmpl	$0, 12(%ebp)
	je	.L74
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	je	.L76
.L74:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	je	.L71
.L76:
	.loc 1 357 0
	addl	$1, -8(%ebp)
.L71:
	.loc 1 339 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L77
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L79
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L81
.L79:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L81:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L82
.L77:
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -28(%ebp)
.L82:
	movl	-28(%ebp), %eax
	movl	%eax, 8(%ebp)
.L61:
	.loc 1 337 0
	cmpl	$0, 8(%ebp)
	je	.L83
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L62
.L83:
	.loc 1 361 0
	movl	-8(%ebp), %eax
	.loc 1 362 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	template_class_depth_real, .-template_class_depth_real
.globl template_class_depth
	.type	template_class_depth, @function
template_class_depth:
.LFB20:
	.loc 1 371 0
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	subl	$8, %esp
.LCFI21:
	.loc 1 372 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	template_class_depth_real
	.loc 1 373 0
	leave
	ret
.LFE20:
	.size	template_class_depth, .-template_class_depth
	.type	inline_needs_template_parms, @function
inline_needs_template_parms:
.LFB21:
	.loc 1 381 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%edi
.LCFI24:
	pushl	%esi
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$44, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 382 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L89
	.loc 1 383 0
	movl	$0, -36(%ebp)
	jmp	.L91
.L89:
	.loc 1 385 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	most_general_template@PLT
	movl	60(%eax), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	60(%eax), %edx
	movl	64(%eax), %ecx
	movl	%edx, -48(%ebp)
	movl	%ecx, -44(%ebp)
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	sete	%cl
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	-48(%ebp), %esi
	movl	-44(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -24(%ebp)
	movl	%edi, -20(%ebp)
	movl	$1, -36(%ebp)
	movl	-20(%ebp), %edi
	cmpl	%edi, -28(%ebp)
	jg	.L91
	movl	-20(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	jl	.L93
	movl	-24(%ebp), %edx
	cmpl	%edx, -32(%ebp)
	ja	.L91
.L93:
	movl	$0, -36(%ebp)
.L91:
	movl	-36(%ebp), %eax
	.loc 1 387 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	inline_needs_template_parms, .-inline_needs_template_parms
	.section	.rodata
	.align 32
	.type	__FUNCTION__.16123, @object
	.size	__FUNCTION__.16123, 37
__FUNCTION__.16123:
	.string	"push_inline_template_parms_recursive"
.LC2:
	.string	"../../../kg++fe/gnu/cp/pt.c"
	.text
	.type	push_inline_template_parms_recursive, @function
push_inline_template_parms_recursive:
.LFB22:
	.loc 1 398 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%edi
.LCFI30:
	pushl	%esi
.LCFI31:
	pushl	%ebx
.LCFI32:
	subl	$44, %esp
.LCFI33:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 399 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 402 0
	cmpl	$1, 12(%ebp)
	jle	.L96
	.loc 1 403 0
	movl	12(%ebp), %eax
	subl	$1, %eax
	movl	8(%ebp), %edx
	movl	(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	push_inline_template_parms_recursive
.L96:
	.loc 1 405 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	60(%ecx), %eax
	movl	64(%ecx), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, 60(%ecx)
	movl	%edx, 64(%ecx)
	.loc 1 406 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %edi
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %esi
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	%esi, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tree_cons@PLT
	movl	%eax, 36(%edi)
	.loc 1 409 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %edx
	movzbl	11(%edx), %eax
	orl	$2, %eax
	movb	%al, 11(%edx)
	.loc 1 411 0
	movl	$0, (%esp)
	call	pushlevel@PLT
	.loc 1 412 0
	movl	$0, -24(%ebp)
	jmp	.L98
.L99:
.LBB4:
	.loc 1 414 0
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 415 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	je	.L100
	leal	__FUNCTION__.16123@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$415, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L100:
	.loc 1 417 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	cmpl	$36, -32(%ebp)
	je	.L104
	cmpl	$192, -32(%ebp)
	je	.L103
	cmpl	$34, -32(%ebp)
	je	.L103
	jmp	.L102
.L103:
	.loc 1 421 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl@PLT
	.loc 1 422 0
	jmp	.L105
.L104:
.LBB5:
	.loc 1 431 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$33, (%esp)
	call	build_decl@PLT
	movl	%eax, -16(%ebp)
	.loc 1 432 0
	movl	-16(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 433 0
	movl	-20(%ebp), %eax
	movl	68(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 434 0
	movl	-16(%ebp), %edx
	movzbl	37(%edx), %eax
	orl	$32, %eax
	movb	%al, 37(%edx)
	.loc 1 435 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl@PLT
	.loc 1 437 0
	jmp	.L105
.L102:
.LBE5:
	.loc 1 440 0
	leal	__FUNCTION__.16123@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$440, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L105:
.LBE4:
	.loc 1 412 0
	addl	$1, -24(%ebp)
.L98:
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-24(%ebp), %eax
	jg	.L99
	.loc 1 443 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	push_inline_template_parms_recursive, .-push_inline_template_parms_recursive
	.section	.rodata
.LC3:
	.string	"inline_parm_levels"
	.text
.globl maybe_begin_member_template_processing
	.type	maybe_begin_member_template_processing, @function
maybe_begin_member_template_processing:
.LFB23:
	.loc 1 451 0
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
	.loc 1 453 0
	movl	$0, -8(%ebp)
	.loc 1 455 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	inline_needs_template_parms
	testl	%eax, %eax
	je	.L109
	.loc 1 457 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	most_general_template@PLT
	movl	60(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 458 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, %ecx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 460 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	jne	.L111
	.loc 1 462 0
	subl	$1, -8(%ebp)
	.loc 1 463 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L111:
	.loc 1 466 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	push_inline_template_parms_recursive
.L109:
	.loc 1 471 0
	movl	inline_parm_levels@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L113
	.loc 1 472 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	$4, (%esp)
	call	varray_init@PLT
	movl	%eax, inline_parm_levels@GOTOFF(%ebx)
.L113:
	.loc 1 473 0
	movl	inline_parm_levels@GOTOFF(%ebx), %eax
	movl	(%eax), %edx
	movl	inline_parm_levels_used@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L115
	.loc 1 474 0
	movl	inline_parm_levels_used@GOTOFF(%ebx), %eax
	addl	%eax, %eax
	movl	inline_parm_levels@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	varray_grow@PLT
	movl	%eax, inline_parm_levels@GOTOFF(%ebx)
.L115:
	.loc 1 475 0
	movl	inline_parm_levels@GOTOFF(%ebx), %ecx
	movl	inline_parm_levels_used@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 16(%ecx,%edx,4)
	.loc 1 476 0
	movl	inline_parm_levels_used@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, inline_parm_levels_used@GOTOFF(%ebx)
	.loc 1 477 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	maybe_begin_member_template_processing, .-maybe_begin_member_template_processing
.globl maybe_end_member_template_processing
	.type	maybe_end_member_template_processing, @function
maybe_end_member_template_processing:
.LFB24:
	.loc 1 483 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$36, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 486 0
	movl	inline_parm_levels_used@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L123
	.loc 1 489 0
	movl	inline_parm_levels_used@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, inline_parm_levels_used@GOTOFF(%ebx)
	.loc 1 490 0
	movl	$0, -8(%ebp)
	.loc 1 491 0
	jmp	.L121
.L122:
	.loc 1 494 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	60(%ecx), %eax
	movl	64(%ecx), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, 60(%ecx)
	movl	%edx, 64(%ecx)
	.loc 1 495 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 36(%edx)
	.loc 1 496 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	poplevel@PLT
	.loc 1 492 0
	addl	$1, -8(%ebp)
.L121:
	.loc 1 491 0
	movl	inline_parm_levels@GOTOFF(%ebx), %eax
	movl	inline_parm_levels_used@GOTOFF(%ebx), %edx
	movl	16(%eax,%edx,4), %eax
	cmpl	-8(%ebp), %eax
	jg	.L122
.L123:
	.loc 1 498 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	maybe_end_member_template_processing, .-maybe_end_member_template_processing
.globl is_member_template
	.type	is_member_template, @function
is_member_template:
.LFB25:
	.loc 1 518 0
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
	.loc 1 519 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L125
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L127
.L125:
	.loc 1 522 0
	movl	$0, -32(%ebp)
	jmp	.L128
.L127:
	.loc 1 525 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_function_context@PLT
	testl	%eax, %eax
	je	.L129
	.loc 1 526 0
	movl	$0, -32(%ebp)
	jmp	.L128
.L129:
	.loc 1 528 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L131
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L133
.L131:
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, (%esp)
	call	template_class_depth@PLT
	movl	%eax, -16(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -12(%ebp)
	movl	-12(%ebp), %eax
	cmpl	%eax, -20(%ebp)
	jl	.L133
	movl	-12(%ebp), %edx
	cmpl	%edx, -20(%ebp)
	jg	.L135
	movl	-16(%ebp), %eax
	cmpl	%eax, -24(%ebp)
	jbe	.L133
.L135:
	movl	$1, -28(%ebp)
	jmp	.L136
.L133:
	movl	$0, -28(%ebp)
.L136:
	movl	-28(%ebp), %edx
	movl	%edx, -32(%ebp)
.L128:
	movl	-32(%ebp), %eax
	.loc 1 534 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	is_member_template, .-is_member_template
	.type	add_to_template_args, @function
add_to_template_args:
.LFB26:
	.loc 1 570 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$52, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 576 0
	cmpl	$0, 12(%ebp)
	je	.L139
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L139
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L139
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L139
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L139
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L145
.L139:
	movl	$1, -48(%ebp)
.L145:
	movl	-48(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 577 0
	cmpl	$0, 8(%ebp)
	je	.L146
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L146
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L146
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L146
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L146
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L152
.L146:
	movl	$1, -44(%ebp)
.L152:
	movl	-44(%ebp), %eax
	addl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -20(%ebp)
	.loc 1 579 0
	movl	$1, -12(%ebp)
	jmp	.L153
.L154:
	.loc 1 580 0
	movl	-12(%ebp), %edx
	subl	$1, %edx
	movl	%edx, -40(%ebp)
	cmpl	$0, 8(%ebp)
	je	.L155
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L155
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L155
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L155
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L155
	movl	-12(%ebp), %edx
	subl	$1, %edx
	movl	8(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	%edx, -36(%ebp)
	jmp	.L161
.L155:
	movl	8(%ebp), %ecx
	movl	%ecx, -36(%ebp)
.L161:
	movl	-20(%ebp), %eax
	movl	-36(%ebp), %ecx
	movl	-40(%ebp), %edx
	movl	%ecx, 20(%eax,%edx,4)
	.loc 1 579 0
	addl	$1, -12(%ebp)
.L153:
	cmpl	$0, 8(%ebp)
	je	.L162
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L162
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L162
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L162
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L162
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L168
.L162:
	movl	$1, -32(%ebp)
.L168:
	movl	-32(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jge	.L154
	.loc 1 582 0
	movl	$1, -8(%ebp)
	jmp	.L170
.L171:
	.loc 1 583 0
	movl	-12(%ebp), %edx
	subl	$1, %edx
	movl	%edx, -28(%ebp)
	cmpl	$0, 12(%ebp)
	je	.L172
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L172
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L172
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L172
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L172
	movl	-8(%ebp), %edx
	subl	$1, %edx
	movl	12(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	%edx, -24(%ebp)
	jmp	.L178
.L172:
	movl	12(%ebp), %ecx
	movl	%ecx, -24(%ebp)
.L178:
	movl	-20(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	%ecx, 20(%eax,%edx,4)
	.loc 1 582 0
	addl	$1, -8(%ebp)
	addl	$1, -12(%ebp)
.L170:
	movl	-8(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jle	.L171
	.loc 1 585 0
	movl	-20(%ebp), %eax
	.loc 1 586 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	add_to_template_args, .-add_to_template_args
	.section	.rodata
	.type	__FUNCTION__.16350, @object
	.size	__FUNCTION__.16350, 28
__FUNCTION__.16350:
	.string	"add_outermost_template_args"
	.text
	.type	add_outermost_template_args, @function
add_outermost_template_args:
.LFB27:
	.loc 1 599 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%ebx
.LCFI52:
	subl	$68, %esp
.LCFI53:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 604 0
	cmpl	$0, 8(%ebp)
	je	.L182
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L182
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L182
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L182
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L182
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L188
.L182:
	movl	$1, -56(%ebp)
.L188:
	cmpl	$0, 12(%ebp)
	je	.L189
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L189
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L189
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L189
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L189
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L195
.L189:
	movl	$1, -52(%ebp)
.L195:
	movl	-52(%ebp), %eax
	cmpl	%eax, -56(%ebp)
	jge	.L196
	leal	__FUNCTION__.16350@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$605, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L196:
	.loc 1 609 0
	cmpl	$0, 8(%ebp)
	je	.L198
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L198
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L198
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L198
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L198
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L204
.L198:
	movl	$1, -48(%ebp)
.L204:
	cmpl	$0, 12(%ebp)
	je	.L205
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L205
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L205
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L205
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L205
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L211
.L205:
	movl	$1, -44(%ebp)
.L211:
	movl	-44(%ebp), %eax
	cmpl	%eax, -48(%ebp)
	jne	.L212
	.loc 1 610 0
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L214
.L212:
	.loc 1 613 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	cmpl	$0, 12(%ebp)
	je	.L215
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L215
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L215
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L215
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L215
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L221
.L215:
	movl	$1, -32(%ebp)
.L221:
	movl	-36(%ebp), %edx
	subl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 615 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_to_template_args
	movl	%eax, -8(%ebp)
	.loc 1 618 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	cmpl	$0, 12(%ebp)
	je	.L222
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L222
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L222
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L222
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L222
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L228
.L222:
	movl	$1, -24(%ebp)
.L228:
	movl	-28(%ebp), %edx
	addl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 620 0
	movl	-8(%ebp), %eax
	movl	%eax, -40(%ebp)
.L214:
	movl	-40(%ebp), %eax
	.loc 1 621 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	add_outermost_template_args, .-add_outermost_template_args
	.section	.rodata
	.type	__FUNCTION__.16449, @object
	.size	__FUNCTION__.16449, 28
__FUNCTION__.16449:
	.string	"get_innermost_template_args"
	.text
.globl get_innermost_template_args
	.type	get_innermost_template_args, @function
get_innermost_template_args:
.LFB28:
	.loc 1 629 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	pushl	%ebx
.LCFI56:
	subl	$52, %esp
.LCFI57:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 634 0
	cmpl	$0, 12(%ebp)
	jns	.L231
	leal	__FUNCTION__.16449@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$634, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L231:
	.loc 1 637 0
	cmpl	$1, 12(%ebp)
	jne	.L233
	.loc 1 638 0
	cmpl	$0, 8(%ebp)
	je	.L235
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L235
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L235
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L235
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L235
	cmpl	$0, 8(%ebp)
	je	.L241
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L241
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L241
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L241
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L241
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	jmp	.L247
.L241:
	movl	$0, -36(%ebp)
.L247:
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	%edx, -40(%ebp)
	jmp	.L248
.L235:
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
.L248:
	movl	-40(%ebp), %edx
	movl	%edx, -44(%ebp)
	jmp	.L249
.L233:
	.loc 1 642 0
	cmpl	$0, 8(%ebp)
	je	.L250
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L250
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L250
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L250
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L250
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L256
.L250:
	movl	$1, -32(%ebp)
.L256:
	movl	-32(%ebp), %eax
	subl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 643 0
	cmpl	$0, -12(%ebp)
	jns	.L257
	leal	__FUNCTION__.16449@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$643, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L257:
	.loc 1 644 0
	cmpl	$0, -12(%ebp)
	jne	.L259
	.loc 1 645 0
	movl	8(%ebp), %ecx
	movl	%ecx, -44(%ebp)
	jmp	.L249
.L259:
	.loc 1 648 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -16(%ebp)
	.loc 1 649 0
	movl	$1, -8(%ebp)
	jmp	.L261
.L262:
	.loc 1 650 0
	movl	-8(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	cmpl	$0, 8(%ebp)
	je	.L263
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L263
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L263
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L263
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L263
	movl	-12(%ebp), %eax
	addl	-8(%ebp), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	%edx, -24(%ebp)
	jmp	.L269
.L263:
	movl	8(%ebp), %edx
	movl	%edx, -24(%ebp)
.L269:
	movl	-16(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %ecx
	movl	%edx, 20(%eax,%ecx,4)
	.loc 1 649 0
	addl	$1, -8(%ebp)
.L261:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jle	.L262
	.loc 1 653 0
	movl	-16(%ebp), %ecx
	movl	%ecx, -44(%ebp)
.L249:
	movl	-44(%ebp), %eax
	.loc 1 654 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	get_innermost_template_args, .-get_innermost_template_args
.globl begin_template_parm_list
	.type	begin_template_parm_list, @function
begin_template_parm_list:
.LFB29:
	.loc 1 661 0
	pushl	%ebp
.LCFI58:
	movl	%esp, %ebp
.LCFI59:
	pushl	%ebx
.LCFI60:
	subl	$4, %esp
.LCFI61:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 676 0
	movl	$0, (%esp)
	call	begin_scope@PLT
	.loc 1 677 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	60(%ecx), %eax
	movl	64(%ecx), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, 60(%ecx)
	movl	%edx, 64(%ecx)
	.loc 1 678 0
	movl	processing_template_parmlist@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	processing_template_parmlist@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 679 0
	movl	$0, (%esp)
	call	note_template_header
	.loc 1 680 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	begin_template_parm_list, .-begin_template_parm_list
	.section	.rodata
	.align 4
.LC4:
	.string	"explicit specialization in non-namespace scope `%D'"
	.align 4
.LC5:
	.string	"enclosing class templates are not explicitly specialized"
	.text
	.type	check_specialization_scope, @function
check_specialization_scope:
.LFB30:
	.loc 1 687 0
	pushl	%ebp
.LCFI62:
	movl	%esp, %ebp
.LCFI63:
	pushl	%ebx
.LCFI64:
	subl	$36, %esp
.LCFI65:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 688 0
	call	current_scope@PLT
	movl	%eax, -8(%ebp)
	.loc 1 699 0
	cmpl	$0, -8(%ebp)
	je	.L275
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	je	.L275
	.loc 1 700 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L275:
	.loc 1 711 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L280
	.loc 1 712 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L280:
	.loc 1 713 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	check_specialization_scope, .-check_specialization_scope
.globl begin_specialization
	.type	begin_specialization, @function
begin_specialization:
.LFB31:
	.loc 1 719 0
	pushl	%ebp
.LCFI66:
	movl	%esp, %ebp
.LCFI67:
	pushl	%ebx
.LCFI68:
	subl	$4, %esp
.LCFI69:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 720 0
	movl	$1, (%esp)
	call	begin_scope@PLT
	.loc 1 721 0
	movl	$1, (%esp)
	call	note_template_header
	.loc 1 722 0
	call	check_specialization_scope
	.loc 1 723 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	begin_specialization, .-begin_specialization
.globl end_specialization
	.type	end_specialization, @function
end_specialization:
.LFB32:
	.loc 1 730 0
	pushl	%ebp
.LCFI70:
	movl	%esp, %ebp
.LCFI71:
	pushl	%ebx
.LCFI72:
	subl	$4, %esp
.LCFI73:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 731 0
	call	finish_scope@PLT
	.loc 1 732 0
	call	reset_specialization@PLT
	.loc 1 733 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	end_specialization, .-end_specialization
.globl reset_specialization
	.type	reset_specialization, @function
reset_specialization:
.LFB33:
	.loc 1 740 0
	pushl	%ebp
.LCFI74:
	movl	%esp, %ebp
.LCFI75:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 741 0
	movl	scope_chain@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	$0, 68(%eax)
	.loc 1 742 0
	movl	$0, template_header_count@GOTOFF(%ecx)
	.loc 1 743 0
	popl	%ebp
	ret
.LFE33:
	.size	reset_specialization, .-reset_specialization
	.type	note_template_header, @function
note_template_header:
.LFB34:
	.loc 1 751 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 752 0
	movl	scope_chain@GOT(%ecx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 68(%edx)
	.loc 1 753 0
	movl	template_header_count@GOTOFF(%ecx), %eax
	addl	$1, %eax
	movl	%eax, template_header_count@GOTOFF(%ecx)
	.loc 1 754 0
	popl	%ebp
	ret
.LFE34:
	.size	note_template_header, .-note_template_header
.globl begin_explicit_instantiation
	.type	begin_explicit_instantiation, @function
begin_explicit_instantiation:
.LFB35:
	.loc 1 760 0
	pushl	%ebp
.LCFI78:
	movl	%esp, %ebp
.LCFI79:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 761 0
	movl	scope_chain@GOT(%ecx), %eax
	movl	(%eax), %edx
	movl	72(%edx), %eax
	addl	$1, %eax
	movl	%eax, 72(%edx)
	.loc 1 762 0
	popl	%ebp
	ret
.LFE35:
	.size	begin_explicit_instantiation, .-begin_explicit_instantiation
	.section	.rodata
	.type	__FUNCTION__.16565, @object
	.size	__FUNCTION__.16565, 27
__FUNCTION__.16565:
	.string	"end_explicit_instantiation"
	.text
.globl end_explicit_instantiation
	.type	end_explicit_instantiation, @function
end_explicit_instantiation:
.LFB36:
	.loc 1 767 0
	pushl	%ebp
.LCFI80:
	movl	%esp, %ebp
.LCFI81:
	pushl	%ebx
.LCFI82:
	subl	$20, %esp
.LCFI83:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 768 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	jg	.L292
	leal	__FUNCTION__.16565@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$768, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L292:
	.loc 1 769 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	72(%edx), %eax
	subl	$1, %eax
	movl	%eax, 72(%edx)
	.loc 1 770 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	end_explicit_instantiation, .-end_explicit_instantiation
	.section	.rodata
	.align 4
.LC6:
	.string	"specializing `%#T' in different namespace"
.LC7:
	.string	"  from definition of `%#D'"
	.align 4
.LC8:
	.string	"specialization of `%T' after instantiation"
	.align 4
.LC9:
	.string	"specialization `%T' after instantiation `%T'"
	.align 4
.LC10:
	.string	"explicit specialization of non-template `%T'"
	.text
.globl maybe_process_partial_specialization
	.type	maybe_process_partial_specialization, @function
maybe_process_partial_specialization:
.LFB37:
	.loc 1 778 0
	pushl	%ebp
.LCFI84:
	movl	%esp, %ebp
.LCFI85:
	pushl	%esi
.LCFI86:
	pushl	%ebx
.LCFI87:
	subl	$32, %esp
.LCFI88:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 780 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L296
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L298
.L296:
	movl	$0, -28(%ebp)
.L298:
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 782 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L299
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L301
.L299:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L302
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L302
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L302
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L302
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L301
.L302:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	je	.L301
	.loc 1 795 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	cmpb	$4, %al
	jne	.L308
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L308
	.loc 1 798 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	decl_namespace_context@PLT
	cmpl	%eax, %esi
	je	.L311
	.loc 1 801 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 802 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_pedwarn_at@PLT
.L311:
	.loc 1 805 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	8(%edx), %eax
	andl	$-13, %eax
	orl	$8, %eax
	movb	%al, 8(%edx)
	.loc 1 806 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L349
	.loc 1 807 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	push_template_decl@PLT
	.loc 1 795 0
	jmp	.L349
.L308:
	.loc 1 809 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	shrb	$2, %al
	andl	$3, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L349
	.loc 1 810 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 782 0
	jmp	.L349
.L301:
	.loc 1 812 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L318
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L320
.L318:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L321
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L321
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L321
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L321
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L320
.L321:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	jne	.L320
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L320
	cmpl	$0, -16(%ebp)
	je	.L320
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L329
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L320
.L329:
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L331
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L331
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L331
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L331
	movl	-16(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L320
.L331:
	movl	-16(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L320
	.loc 1 834 0
	movl	-16(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	cmpb	$4, %al
	jne	.L349
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L349
.LBB6:
	.loc 1 839 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	decl_namespace_context@PLT
	cmpl	%eax, %esi
	je	.L340
	.loc 1 842 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 843 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_pedwarn_at@PLT
.L340:
	.loc 1 852 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	most_general_template@PLT
	movl	124(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 854 0
	jmp	.L342
.L343:
	.loc 1 855 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L344
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	80(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L344
	.loc 1 857 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L344:
	.loc 1 854 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L342:
	cmpl	$0, -12(%ebp)
	jne	.L343
	.loc 1 863 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	8(%edx), %eax
	andl	$-13, %eax
	orl	$8, %eax
	movb	%al, 8(%edx)
	.loc 1 864 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %esi
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	get_innermost_template_args@PLT
	movl	%eax, 20(%esi)
	.loc 1 812 0
	jmp	.L349
.L320:
.LBE6:
	.loc 1 868 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L349
	.loc 1 869 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L349:
	.loc 1 870 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE37:
	.size	maybe_process_partial_specialization, .-maybe_process_partial_specialization
	.section	.rodata
	.type	__FUNCTION__.16734, @object
	.size	__FUNCTION__.16734, 24
__FUNCTION__.16734:
	.string	"retrieve_specialization"
	.text
	.type	retrieve_specialization, @function
retrieve_specialization:
.LFB38:
	.loc 1 883 0
	pushl	%ebp
.LCFI89:
	movl	%esp, %ebp
.LCFI90:
	pushl	%ebx
.LCFI91:
	subl	$52, %esp
.LCFI92:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 886 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L351
	leal	__FUNCTION__.16734@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$886, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L351:
	.loc 1 890 0
	cmpl	$0, 12(%ebp)
	je	.L353
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L353
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L353
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L353
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L353
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -36(%ebp)
	jmp	.L359
.L353:
	movl	$1, -40(%ebp)
	movl	$0, -36(%ebp)
.L359:
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	-36(%ebp), %ecx
	xorl	%edx, %ecx
	xorl	-40(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L360
	leal	__FUNCTION__.16734@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$892, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L360:
	.loc 1 894 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 895 0
	jmp	.L362
.L363:
	.loc 1 897 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comp_template_args@PLT
	testl	%eax, %eax
	je	.L364
	.loc 1 898 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L366
.L364:
	.loc 1 896 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L362:
	.loc 1 895 0
	cmpl	$0, -12(%ebp)
	jne	.L363
	.loc 1 900 0
	movl	$0, -28(%ebp)
.L366:
	movl	-28(%ebp), %eax
	.loc 1 901 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	retrieve_specialization, .-retrieve_specialization
	.type	retrieve_local_specialization, @function
retrieve_local_specialization:
.LFB39:
	.loc 1 908 0
	pushl	%ebp
.LCFI93:
	movl	%esp, %ebp
.LCFI94:
	pushl	%ebx
.LCFI95:
	subl	$20, %esp
.LCFI96:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 909 0
	movl	local_specializations@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_find@PLT
	.loc 1 910 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	retrieve_local_specialization, .-retrieve_local_specialization
	.section	.rodata
	.type	__FUNCTION__.16786, @object
	.size	__FUNCTION__.16786, 21
__FUNCTION__.16786:
	.string	"is_specialization_of"
	.text
.globl is_specialization_of
	.type	is_specialization_of, @function
is_specialization_of:
.LFB40:
	.loc 1 918 0
	pushl	%ebp
.LCFI97:
	movl	%esp, %ebp
.LCFI98:
	pushl	%ebx
.LCFI99:
	subl	$52, %esp
.LCFI100:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 921 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L372
	.loc 1 923 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 924 0
	jmp	.L374
.L375:
	.loc 1 926 0
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L376
	.loc 1 927 0
	movl	$1, -32(%ebp)
	jmp	.L378
.L376:
	.loc 1 925 0
	movl	-8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L379
	movl	-8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L381
.L379:
	movl	$0, -28(%ebp)
.L381:
	movl	-28(%ebp), %eax
	movl	%eax, -8(%ebp)
.L374:
	.loc 1 924 0
	cmpl	$0, -8(%ebp)
	jne	.L375
	jmp	.L383
.L372:
	.loc 1 931 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L384
	leal	__FUNCTION__.16786@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$931, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L384:
	.loc 1 933 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 934 0
	jmp	.L386
.L387:
	.loc 1 937 0
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
	je	.L388
	.loc 1 938 0
	movl	$1, -32(%ebp)
	jmp	.L378
.L388:
	.loc 1 936 0
	movl	-8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	je	.L390
	movl	-8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L392
.L390:
	movl	$0, -24(%ebp)
.L392:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
.L386:
	.loc 1 934 0
	cmpl	$0, -8(%ebp)
	jne	.L387
.L383:
	.loc 1 941 0
	movl	$0, -32(%ebp)
.L378:
	movl	-32(%ebp), %eax
	.loc 1 942 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	is_specialization_of, .-is_specialization_of
	.section	.rodata
	.type	__FUNCTION__.16833, @object
	.size	__FUNCTION__.16833, 24
__FUNCTION__.16833:
	.string	"register_specialization"
	.align 4
.LC11:
	.string	"specialization of %D after instantiation"
	.text
	.type	register_specialization, @function
register_specialization:
.LFB41:
	.loc 1 953 0
	pushl	%ebp
.LCFI101:
	movl	%esp, %ebp
.LCFI102:
	pushl	%ebx
.LCFI103:
	subl	$52, %esp
.LCFI104:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 956 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L395
	leal	__FUNCTION__.16833@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$956, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L395:
	.loc 1 958 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L397
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	je	.L397
	.loc 1 971 0
	movl	8(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L400
.L397:
	.loc 1 975 0
	cmpl	$0, 16(%ebp)
	je	.L401
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L401
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L401
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L401
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L401
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -28(%ebp)
	jmp	.L407
.L401:
	movl	$1, -32(%ebp)
	movl	$0, -28(%ebp)
.L407:
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	-28(%ebp), %ecx
	xorl	%edx, %ecx
	xorl	-32(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L408
	leal	__FUNCTION__.16833@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$977, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L408:
	.loc 1 979 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 980 0
	jmp	.L410
.L411:
.LBB7:
	.loc 1 983 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 990 0
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L412
	.loc 1 991 0
	movl	8(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L400
.L412:
	.loc 1 992 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comp_template_args@PLT
	testl	%eax, %eax
	je	.L414
	.loc 1 994 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	jne	.L414
	.loc 1 996 0
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	%al
	andl	$3, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L417
	.loc 1 998 0
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L419
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$6, %al
	jne	.L421
.L419:
	.loc 1 1001 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1003 0
	movl	8(%ebp), %edx
	movl	%edx, -36(%ebp)
	jmp	.L400
.L421:
	.loc 1 1031 0
	movl	-12(%ebp), %eax
	movl	$0, 68(%eax)
	.loc 1 1032 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	duplicate_decls@PLT
	.loc 1 1034 0
	movl	-12(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L400
.L417:
	.loc 1 1037 0
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	jne	.L414
	.loc 1 1039 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	duplicate_decls@PLT
	.loc 1 1040 0
	movl	-12(%ebp), %edx
	movl	%edx, -36(%ebp)
	jmp	.L400
.L414:
.LBE7:
	.loc 1 981 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L410:
	.loc 1 980 0
	cmpl	$0, -16(%ebp)
	jne	.L411
	.loc 1 1046 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 1049 0
	movl	8(%ebp), %eax
	movl	%eax, -36(%ebp)
.L400:
	movl	-36(%ebp), %eax
	.loc 1 1050 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	register_specialization, .-register_specialization
	.type	reregister_specialization, @function
reregister_specialization:
.LFB42:
	.loc 1 1058 0
	pushl	%ebp
.LCFI105:
	movl	%esp, %ebp
.LCFI106:
	subl	$20, %esp
.LCFI107:
	.loc 1 1061 0
	movl	12(%ebp), %eax
	addl	$28, %eax
	movl	%eax, -4(%ebp)
	.loc 1 1062 0
	jmp	.L426
.L427:
	.loc 1 1064 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L428
	.loc 1 1066 0
	cmpl	$0, 16(%ebp)
	jne	.L430
	.loc 1 1067 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L432
.L430:
	.loc 1 1069 0
	movl	-4(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 20(%edx)
.L432:
	.loc 1 1070 0
	movl	$1, -20(%ebp)
	jmp	.L433
.L428:
	.loc 1 1063 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L426:
	.loc 1 1062 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L427
	.loc 1 1073 0
	movl	$0, -20(%ebp)
.L433:
	movl	-20(%ebp), %eax
	.loc 1 1074 0
	leave
	ret
.LFE42:
	.size	reregister_specialization, .-reregister_specialization
	.type	register_local_specialization, @function
register_local_specialization:
.LFB43:
	.loc 1 1083 0
	pushl	%ebp
.LCFI108:
	movl	%esp, %ebp
.LCFI109:
	pushl	%ebx
.LCFI110:
	subl	$36, %esp
.LCFI111:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1086 0
	movl	local_specializations@GOTOFF(%ebx), %edx
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_find_slot@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1087 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1088 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	register_local_specialization, .-register_local_specialization
	.section	.rodata
.LC12:
	.string	"candidates are:"
.LC13:
	.string	"%s %+#D"
.LC14:
	.string	"               "
	.text
.globl print_candidates
	.type	print_candidates, @function
print_candidates:
.LFB44:
	.loc 1 1095 0
	pushl	%ebp
.LCFI112:
	movl	%esp, %ebp
.LCFI113:
	pushl	%ebx
.LCFI114:
	subl	$36, %esp
.LCFI115:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1098 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1100 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L439
.L440:
.LBB8:
	.loc 1 1104 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L441
.L442:
	.loc 1 1105 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L443
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L445
.L443:
	movl	-8(%ebp), %eax
	movl	%eax, -28(%ebp)
.L445:
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 1104 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L446
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L448
.L446:
	movl	$0, -24(%ebp)
.L448:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
.L441:
	cmpl	$0, -8(%ebp)
	jne	.L442
	.loc 1 1106 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
.LBE8:
	.loc 1 1100 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L439:
	cmpl	$0, -16(%ebp)
	jne	.L440
	.loc 1 1108 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	print_candidates, .-print_candidates
	.section	.rodata
	.align 4
.LC15:
	.string	"`%D' is not a function template"
	.align 4
.LC16:
	.string	"template-id `%D' for `%+D' does not match any template declaration"
	.align 4
.LC17:
	.string	"ambiguous template specialization `%D' for `%+D'"
	.text
	.type	determine_specialization, @function
determine_specialization:
.LFB45:
	.loc 1 1132 0
	pushl	%ebp
.LCFI116:
	movl	%esp, %ebp
.LCFI117:
	pushl	%esi
.LCFI118:
	pushl	%ebx
.LCFI119:
	subl	$80, %esp
.LCFI120:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1136 0
	movl	$0, -32(%ebp)
	.loc 1 1137 0
	movl	$0, -28(%ebp)
	.loc 1 1139 0
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1141 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L453
	.loc 1 1142 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L455
.L453:
	.loc 1 1144 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1145 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1147 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L456
	.loc 1 1148 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L455
.L456:
	.loc 1 1151 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L458
	.loc 1 1152 0
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -44(%ebp)
.L458:
	.loc 1 1154 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	jne	.L462
	.loc 1 1156 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1157 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L455
.L463:
.LBB9:
	.loc 1 1162 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L464
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L466
.L464:
	movl	-44(%ebp), %eax
	movl	%eax, -72(%ebp)
.L466:
	movl	-72(%ebp), %ecx
	movl	%ecx, -24(%ebp)
	.loc 1 1164 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L467
.LBB10:
	.loc 1 1171 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1172 0
	movl	-24(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L469
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L469
	.loc 1 1174 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L469:
	.loc 1 1183 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	movl	%eax, %esi
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	cmpl	%eax, %esi
	jne	.L472
	.loc 1 1189 0
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	get_bindings@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1191 0
	cmpl	$0, -40(%ebp)
	je	.L472
	.loc 1 1197 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -28(%ebp)
	jmp	.L472
.L467:
.LBE10:
	.loc 1 1199 0
	cmpl	$0, 20(%ebp)
	jne	.L472
	.loc 1 1203 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L472
	.loc 1 1207 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L477
	movl	-24(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L477
	jmp	.L472
.L477:
	.loc 1 1211 0
	movl	-24(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L472
.LBB11:
	.loc 1 1229 0
	movl	-24(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L472
	.loc 1 1234 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L472
	.loc 1 1240 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1241 0
	movl	-24(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L483
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L483
	.loc 1 1243 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L483:
	.loc 1 1245 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	compparms@PLT
	testl	%eax, %eax
	je	.L472
	.loc 1 1248 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -32(%ebp)
.L472:
.LBE11:
.LBE9:
	.loc 1 1160 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L487
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L489
.L487:
	movl	$0, -68(%ebp)
.L489:
	movl	-68(%ebp), %eax
	movl	%eax, -44(%ebp)
.L462:
	cmpl	$0, -44(%ebp)
	jne	.L463
	.loc 1 1252 0
	cmpl	$0, -28(%ebp)
	je	.L491
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L491
.LBB12:
	.loc 1 1285 0
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	most_specialized
	movl	%eax, -12(%ebp)
	.loc 1 1286 0
	cmpl	$0, -12(%ebp)
	je	.L491
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L491
	.loc 1 1288 0
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_bindings@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1289 0
	movl	$0, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -28(%ebp)
.L491:
.LBE12:
	.loc 1 1293 0
	cmpl	$0, -28(%ebp)
	jne	.L496
	cmpl	$0, -32(%ebp)
	jne	.L496
	.loc 1 1295 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 1297 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L455
.L496:
	.loc 1 1299 0
	cmpl	$0, -28(%ebp)
	je	.L499
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L501
.L499:
	cmpl	$0, -32(%ebp)
	je	.L502
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L501
.L502:
	cmpl	$0, -28(%ebp)
	je	.L504
	cmpl	$0, -32(%ebp)
	je	.L504
.L501:
	.loc 1 1303 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 1305 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	chainon@PLT
	.loc 1 1306 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	print_candidates@PLT
	.loc 1 1307 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L455
.L504:
	.loc 1 1311 0
	cmpl	$0, -32(%ebp)
	je	.L506
	.loc 1 1315 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1316 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L455
.L506:
	.loc 1 1320 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	64(%eax), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1321 0
	cmpl	$0, -40(%ebp)
	je	.L508
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L508
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L508
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L508
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L508
	.loc 1 1323 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1324 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L514
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L514
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L514
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L514
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L514
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	subl	$1, %eax
	movl	%eax, -60(%ebp)
	jmp	.L520
.L514:
	movl	$0, -60(%ebp)
.L520:
	movl	-60(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	16(%edx), %edx
	movl	-64(%ebp), %ecx
	movl	%edx, 20(%ecx,%eax,4)
	.loc 1 1321 0
	jmp	.L521
.L508:
	.loc 1 1329 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
.L521:
	.loc 1 1330 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -76(%ebp)
.L455:
	movl	-76(%ebp), %eax
	.loc 1 1331 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE45:
	.size	determine_specialization, .-determine_specialization
	.type	copy_default_args_to_explicit_spec_1, @function
copy_default_args_to_explicit_spec_1:
.LFB46:
	.loc 1 1342 0
	pushl	%ebp
.LCFI121:
	movl	%esp, %ebp
.LCFI122:
	pushl	%ebx
.LCFI123:
	subl	$36, %esp
.LCFI124:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1345 0
	cmpl	$0, 8(%ebp)
	jne	.L524
	.loc 1 1346 0
	movl	$0, -24(%ebp)
	jmp	.L526
.L524:
	.loc 1 1348 0
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L527
	.loc 1 1349 0
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L526
.L527:
	.loc 1 1352 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	copy_default_args_to_explicit_spec_1
	movl	%eax, -8(%ebp)
	.loc 1 1357 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	16(%eax), %ecx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	hash_tree_cons@PLT
	movl	%eax, -24(%ebp)
.L526:
	movl	-24(%ebp), %eax
	.loc 1 1360 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	copy_default_args_to_explicit_spec_1, .-copy_default_args_to_explicit_spec_1
	.type	copy_default_args_to_explicit_spec, @function
copy_default_args_to_explicit_spec:
.LFB47:
	.loc 1 1376 0
	pushl	%ebp
.LCFI125:
	movl	%esp, %ebp
.LCFI126:
	pushl	%ebx
.LCFI127:
	subl	$68, %esp
.LCFI128:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1384 0
	movl	$0, -16(%ebp)
	.loc 1 1385 0
	movl	$0, -12(%ebp)
	.loc 1 1386 0
	movl	$0, -8(%ebp)
	.loc 1 1389 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1390 0
	movl	-44(%ebp), %eax
	movl	64(%eax), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1391 0
	movl	-36(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L531
.L532:
	.loc 1 1392 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L533
	.loc 1 1391 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L531:
	cmpl	$0, -20(%ebp)
	jne	.L532
.L533:
	.loc 1 1394 0
	cmpl	$0, -20(%ebp)
	je	.L549
	.loc 1 1397 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1398 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1400 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L537
	.loc 1 1404 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1405 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1406 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1408 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L539
	.loc 1 1412 0
	movl	-40(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1413 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L539:
	.loc 1 1415 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L537
	.loc 1 1417 0
	movl	-40(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1418 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L537:
	.loc 1 1423 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_default_args_to_explicit_spec_1
	movl	%eax, -32(%ebp)
	.loc 1 1427 0
	cmpl	$0, -16(%ebp)
	je	.L542
	.loc 1 1429 0
	cmpl	$0, -8(%ebp)
	je	.L544
	.loc 1 1430 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	hash_tree_cons@PLT
	movl	%eax, -32(%ebp)
.L544:
	.loc 1 1434 0
	cmpl	$0, -12(%ebp)
	je	.L546
	.loc 1 1436 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	hash_tree_cons@PLT
	movl	%eax, -32(%ebp)
.L546:
	.loc 1 1440 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cplus_method_type@PLT
	movl	%eax, -24(%ebp)
	jmp	.L548
.L542:
	.loc 1 1445 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_function_type@PLT
	movl	%eax, -24(%ebp)
.L548:
	.loc 1 1447 0
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1449 0
	movl	-28(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_exception_variant@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1451 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%edx)
.L549:
	.loc 1 1452 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	copy_default_args_to_explicit_spec, .-copy_default_args_to_explicit_spec
	.section	.rodata
	.type	__FUNCTION__.17250, @object
	.size	__FUNCTION__.17250, 30
__FUNCTION__.17250:
	.string	"check_explicit_specialization"
	.align 4
.LC18:
	.string	"template-id `%D' in declaration of primary template"
	.align 4
.LC19:
	.string	"template parameter list used in explicit instantiation"
	.align 4
.LC20:
	.string	"definition provided for explicit instantiation"
	.align 4
.LC21:
	.string	"too many template parameter lists in declaration of `%D'"
	.align 4
.LC22:
	.string	"too few template parameter lists in declaration of `%D'"
	.align 4
.LC23:
	.string	"explicit specialization not preceded by `template <>'"
	.align 4
.LC24:
	.string	"partial specialization `%D' of function template"
	.align 4
.LC25:
	.string	"default argument specified in explicit specialization"
	.align 4
.LC26:
	.string	"template specialization with C linkage"
	.align 4
.LC27:
	.string	"specialization of implicitly-declared special member function"
	.align 4
.LC28:
	.string	"no member function `%D' declared in `%T'"
	.text
.globl check_explicit_specialization
	.type	check_explicit_specialization, @function
check_explicit_specialization:
.LFB48:
	.loc 1 1497 0
	pushl	%ebp
.LCFI129:
	movl	%esp, %ebp
.LCFI130:
	pushl	%esi
.LCFI131:
	pushl	%ebx
.LCFI132:
	subl	$144, %esp
.LCFI133:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1498 0
	movl	20(%ebp), %eax
	andl	$2, %eax
	movl	%eax, -96(%ebp)
	.loc 1 1499 0
	movl	20(%ebp), %eax
	andl	$4, %eax
	movl	%eax, -92(%ebp)
	.loc 1 1500 0
	movl	$0, -88(%ebp)
	.loc 1 1501 0
	movl	$0, -84(%ebp)
	.loc 1 1502 0
	movl	$0, -80(%ebp)
	.loc 1 1503 0
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L551
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L551
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -136(%ebp)
	jmp	.L554
.L551:
	movl	$0, -136(%ebp)
.L554:
	movl	-136(%ebp), %eax
	movl	%eax, -76(%ebp)
	.loc 1 1504 0
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 1507 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	current_tmpl_spec_kind@PLT
	movl	%eax, -68(%ebp)
	.loc 1 1509 0
	cmpl	$7, -68(%ebp)
	ja	.L555
	movl	-68(%ebp), %eax
	sall	$2, %eax
	movl	.L564@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L564:
	.long	.L556@GOTOFF
	.long	.L557@GOTOFF
	.long	.L558@GOTOFF
	.long	.L559@GOTOFF
	.long	.L560@GOTOFF
	.long	.L561@GOTOFF
	.long	.L562@GOTOFF
	.long	.L563@GOTOFF
	.text
.L556:
	.loc 1 1512 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L565
	.loc 1 1514 0
	movl	$1, -88(%ebp)
	.loc 1 1515 0
	movl	12(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-7, %eax
	orl	$4, %eax
	movb	%al, 6(%edx)
	jmp	.L572
.L565:
	.loc 1 1517 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L572
	.loc 1 1519 0
	cmpl	$0, -92(%ebp)
	je	.L569
	.loc 1 1524 0
	movl	$1, -88(%ebp)
	jmp	.L572
.L569:
	.loc 1 1530 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1532 0
	movl	12(%ebp), %edx
	movl	%edx, -132(%ebp)
	jmp	.L571
.L557:
	.loc 1 1540 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -132(%ebp)
	jmp	.L571
.L558:
	.loc 1 1543 0
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L563:
	.loc 1 1548 0
	cmpl	$0, -96(%ebp)
	je	.L573
	.loc 1 1549 0
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L573:
	.loc 1 1551 0
	movl	$1, -84(%ebp)
	.loc 1 1552 0
	jmp	.L572
.L559:
	.loc 1 1555 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1557 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -132(%ebp)
	jmp	.L571
.L562:
	.loc 1 1561 0
	movl	12(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-7, %eax
	orl	$4, %eax
	movb	%al, 6(%edx)
	.loc 1 1562 0
	cmpl	$0, -76(%ebp)
	je	.L575
	.loc 1 1563 0
	movl	$1, -80(%ebp)
	jmp	.L572
.L575:
	.loc 1 1565 0
	movl	$1, -88(%ebp)
	.loc 1 1566 0
	jmp	.L572
.L560:
	.loc 1 1569 0
	movl	template_header_count@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L578
	.loc 1 1571 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1573 0
	movl	12(%ebp), %ecx
	movl	%ecx, -132(%ebp)
	jmp	.L571
.L578:
	.loc 1 1575 0
	cmpl	$0, -76(%ebp)
	je	.L572
	movl	-76(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L572
	movl	-76(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	shrb	$2, %al
	andl	$3, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L572
	cmpl	$0, -92(%ebp)
	jne	.L572
	.loc 1 1586 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L585
	.loc 1 1587 0
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L585:
	.loc 1 1589 0
	movl	$1, -88(%ebp)
	.loc 1 1590 0
	movl	12(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-7, %eax
	orl	$4, %eax
	movb	%al, 6(%edx)
	.loc 1 1592 0
	jmp	.L572
.L561:
	.loc 1 1595 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L587
	.loc 1 1600 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	je	.L589
	.loc 1 1601 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L591
.L589:
	.loc 1 1604 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L591:
	.loc 1 1606 0
	movl	12(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	.L571
.L587:
	.loc 1 1609 0
	cmpl	$0, -76(%ebp)
	je	.L572
	movl	-76(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	shrb	$2, %al
	andl	$3, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L572
	.loc 1 1619 0
	movl	$1, -88(%ebp)
	.loc 1 1620 0
	jmp	.L572
.L555:
	.loc 1 1623 0
	leal	__FUNCTION__.17250@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1623, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L572:
	.loc 1 1626 0
	cmpl	$0, -88(%ebp)
	jne	.L595
	cmpl	$0, -80(%ebp)
	je	.L597
.L595:
.LBB13:
	.loc 1 1628 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 1629 0
	jmp	.L598
.L599:
	.loc 1 1630 0
	movl	-64(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L600
	.loc 1 1632 0
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 1634 0
	jmp	.L602
.L600:
	.loc 1 1629 0
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
.L598:
	cmpl	$0, -64(%ebp)
	jne	.L599
.L602:
	.loc 1 1636 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	32(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	248(%eax), %eax
	cmpl	%eax, %edx
	jne	.L597
	.loc 1 1637 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L597:
.LBE13:
	.loc 1 1640 0
	cmpl	$0, -88(%ebp)
	jne	.L604
	cmpl	$0, -80(%ebp)
	jne	.L604
	cmpl	$0, -84(%ebp)
	je	.L607
.L604:
.LBB14:
	.loc 1 1642 0
	movl	$0, -60(%ebp)
	.loc 1 1643 0
	movl	$0, -100(%ebp)
	.loc 1 1646 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	je	.L608
.LBB15:
	.loc 1 1650 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	je	.L610
	leal	__FUNCTION__.17250@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1651, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L610:
	.loc 1 1652 0
	cmpl	$0, -76(%ebp)
	jne	.L612
	.loc 1 1653 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	namespace_binding@PLT
	movl	%eax, -56(%ebp)
	jmp	.L614
.L612:
	.loc 1 1655 0
	movl	-72(%ebp), %eax
	movl	%eax, -56(%ebp)
.L614:
	.loc 1 1657 0
	movl	$0, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_template_function@PLT
	movl	%eax, 8(%ebp)
.L608:
.LBE15:
	.loc 1 1661 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L615
	.loc 1 1662 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -132(%ebp)
	jmp	.L571
.L615:
	.loc 1 1664 0
	cmpl	$0, -76(%ebp)
	je	.L617
	movl	-76(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L617
	.loc 1 1666 0
	cmpl	$0, -84(%ebp)
	jne	.L620
	.loc 1 1670 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -132(%ebp)
	jmp	.L571
.L620:
	.loc 1 1688 0
	movl	12(%ebp), %edx
	movl	%edx, -132(%ebp)
	jmp	.L571
.L617:
	.loc 1 1690 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-50, %al
	jne	.L622
	.loc 1 1694 0
	cmpl	$0, -92(%ebp)
	jne	.L624
	leal	__FUNCTION__.17250@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1694, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L624:
	.loc 1 1695 0
	cmpl	$0, -84(%ebp)
	je	.L626
	leal	__FUNCTION__.17250@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1695, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L626:
	.loc 1 1696 0
	movl	12(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-7, %eax
	orl	$2, %eax
	movb	%al, 6(%edx)
	.loc 1 1697 0
	movl	12(%ebp), %ecx
	movl	%ecx, -132(%ebp)
	jmp	.L571
.L622:
	.loc 1 1699 0
	cmpl	$0, -76(%ebp)
	je	.L628
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L628
.LBB16:
	.loc 1 1705 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1706 0
	movl	$0, -48(%ebp)
	.loc 1 1709 0
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	constructor_name_p@PLT
	testb	%al, %al
	je	.L631
.LBB17:
	.loc 1 1711 0
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	.loc 1 1713 0
	cmpl	$0, -40(%ebp)
	je	.L633
	movl	-76(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	sete	-125(%ebp)
	jmp	.L635
.L633:
	movl	-76(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	sete	-125(%ebp)
.L635:
	cmpb	$0, -125(%ebp)
	je	.L636
	.loc 1 1724 0
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1725 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -132(%ebp)
	jmp	.L571
.L636:
	.loc 1 1728 0
	cmpl	$0, -40(%ebp)
	je	.L638
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	188(%eax), %eax
	movl	%eax, -124(%ebp)
	jmp	.L640
.L638:
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	200(%eax), %eax
	movl	%eax, -124(%ebp)
.L640:
	movl	-124(%ebp), %eax
	movl	%eax, -52(%ebp)
.L631:
.LBE17:
	.loc 1 1731 0
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L641
	.loc 1 1733 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_fnfields_1@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1734 0
	cmpl	$0, -44(%ebp)
	js	.L645
	.loc 1 1735 0
	movl	-76(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %edx
	movl	-44(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -48(%ebp)
	jmp	.L645
.L641:
.LBB18:
	.loc 1 1746 0
	movl	$0, -48(%ebp)
	.loc 1 1748 0
	movl	-76(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1749 0
	cmpl	$0, -36(%ebp)
	je	.L645
	.loc 1 1750 0
	movl	$2, -44(%ebp)
	.loc 1 1751 0
	jmp	.L647
.L648:
.LBB19:
	.loc 1 1753 0
	movl	-44(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1755 0
	cmpl	$0, -32(%ebp)
	je	.L645
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L650
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L652
.L650:
	movl	-32(%ebp), %edx
	movl	%edx, -120(%ebp)
.L652:
	movl	-120(%ebp), %ecx
	movl	52(%ecx), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L645
	.loc 1 1761 0
	jmp	.L654
.L655:
	.loc 1 1762 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L656
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L658
.L656:
	movl	-32(%ebp), %eax
	movl	%eax, -116(%ebp)
.L658:
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %edx
	movl	%edx, (%esp)
	call	ovl_cons@PLT
	movl	%eax, -48(%ebp)
	.loc 1 1761 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L659
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L661
.L659:
	movl	$0, -112(%ebp)
.L661:
	movl	-112(%ebp), %ecx
	movl	%ecx, -32(%ebp)
.L654:
	cmpl	$0, -32(%ebp)
	jne	.L655
.LBE19:
	.loc 1 1751 0
	addl	$1, -44(%ebp)
.L647:
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-44(%ebp), %eax
	jg	.L648
.L645:
.LBE18:
	.loc 1 1766 0
	cmpl	$0, -48(%ebp)
	jne	.L663
	.loc 1 1768 0
	movl	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1770 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -132(%ebp)
	jmp	.L571
.L663:
	.loc 1 1773 0
	movl	8(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 20(%edx)
.L628:
.LBE16:
	.loc 1 1784 0
	movl	-80(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-100(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	determine_specialization
	movl	%eax, -60(%ebp)
	.loc 1 1788 0
	cmpl	$0, -60(%ebp)
	je	.L665
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-60(%ebp), %eax
	jne	.L667
.L665:
	.loc 1 1791 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -132(%ebp)
	jmp	.L571
.L667:
.LBB20:
	.loc 1 1794 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	most_general_template@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1796 0
	cmpl	$0, -84(%ebp)
	je	.L668
.LBB21:
	.loc 1 1801 0
	movl	-100(%ebp), %eax
	testl	%eax, %eax
	je	.L670
	movl	-100(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L670
	movl	-100(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L670
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L670
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L670
	movl	-100(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -108(%ebp)
	jmp	.L676
.L670:
	movl	$1, -108(%ebp)
.L676:
	movl	-108(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1802 0
	movl	-60(%ebp), %eax
	movl	60(%eax), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1804 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jle	.L677
.LBB22:
	.loc 1 1814 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1815 0
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, -16(%ebp)
	jmp	.L679
.L680:
	.loc 1 1816 0
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	-16(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	-100(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	20(%edx,%eax,4), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 20(%eax,%ecx,4)
	.loc 1 1815 0
	addl	$1, -16(%ebp)
.L679:
	movl	-16(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jl	.L680
	.loc 1 1818 0
	movl	-12(%ebp), %eax
	movl	%eax, -100(%ebp)
.L677:
.LBE22:
	.loc 1 1821 0
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_template@PLT
	movl	%eax, -132(%ebp)
	jmp	.L571
.L668:
.LBE21:
	.loc 1 1829 0
	movl	-60(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L682
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L682
	.loc 1 1832 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	revert_static_member_fn@PLT
	.loc 1 1833 0
	movl	last_function_parms@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	last_function_parms@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L682:
	.loc 1 1839 0
	cmpl	$5, -68(%ebp)
	jne	.L685
	.loc 1 1841 0
	movl	-60(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-7, %eax
	orl	$4, %eax
	movb	%al, 6(%edx)
	.loc 1 1842 0
	movl	-60(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 68(%eax)
	.loc 1 1843 0
	movl	-60(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	.L571
.L685:
	.loc 1 1847 0
	movl	12(%ebp), %eax
	movl	136(%eax), %esi
	movl	-100(%ebp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, 8(%esi)
	.loc 1 1851 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_default_args_to_explicit_spec
	.loc 1 1855 0
	movl	-28(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	10(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 1856 0
	movl	-28(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	10(%ecx), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 1858 0
	cmpl	$0, -92(%ebp)
	je	.L687
	cmpl	$0, -96(%ebp)
	jne	.L687
	.loc 1 1862 0
	movl	12(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-7, %eax
	orl	$2, %eax
	movb	%al, 6(%edx)
	.loc 1 1858 0
	jmp	.L690
.L687:
	.loc 1 1863 0
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L691
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L690
.L691:
	.loc 1 1867 0
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	clone_function_decl@PLT
.L690:
	.loc 1 1871 0
	movl	-100(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	register_specialization
	movl	%eax, 12(%ebp)
.L607:
.LBE20:
.LBE14:
	.loc 1 1875 0
	movl	12(%ebp), %edx
	movl	%edx, -132(%ebp)
.L571:
	movl	-132(%ebp), %eax
	.loc 1 1876 0
	addl	$144, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE48:
	.size	check_explicit_specialization, .-check_explicit_specialization
	.section	.rodata
	.align 4
.LC29:
	.string	"too many template parameter lists in declaration of `%T'"
	.text
.globl maybe_check_template_type
	.type	maybe_check_template_type, @function
maybe_check_template_type:
.LFB49:
	.loc 1 1884 0
	pushl	%ebp
.LCFI134:
	movl	%esp, %ebp
.LCFI135:
	pushl	%ebx
.LCFI136:
	subl	$36, %esp
.LCFI137:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1885 0
	movl	template_header_count@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L699
.LBB23:
	.loc 1 1891 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	template_class_depth_real
	movl	%eax, -8(%ebp)
	.loc 1 1893 0
	movl	template_header_count@GOTOFF(%ebx), %eax
	cmpl	-8(%ebp), %eax
	jle	.L699
	.loc 1 1916 0
	movl	-8(%ebp), %edx
	addl	$1, %edx
	movl	template_header_count@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jge	.L699
	.loc 1 1918 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L699:
.LBE23:
	.loc 1 1920 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	maybe_check_template_type, .-maybe_check_template_type
	.section	.rodata
	.type	__FUNCTION__.17571, @object
	.size	__FUNCTION__.17571, 20
__FUNCTION__.17571:
	.string	"comp_template_parms"
	.text
.globl comp_template_parms
	.type	comp_template_parms, @function
comp_template_parms:
.LFB50:
	.loc 1 1929 0
	pushl	%ebp
.LCFI138:
	movl	%esp, %ebp
.LCFI139:
	pushl	%ebx
.LCFI140:
	subl	$52, %esp
.LCFI141:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1933 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L701
	.loc 1 1934 0
	movl	$1, -40(%ebp)
	jmp	.L703
.L701:
	.loc 1 1936 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1937 0
	jmp	.L704
.L705:
.LBB24:
	.loc 1 1940 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1941 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1944 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	je	.L706
	leal	__FUNCTION__.17571@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1944, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L706:
	.loc 1 1945 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	je	.L708
	leal	__FUNCTION__.17571@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1945, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L708:
	.loc 1 1947 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L710
	.loc 1 1948 0
	movl	$0, -40(%ebp)
	jmp	.L703
.L710:
	.loc 1 1950 0
	movl	$0, -16(%ebp)
	jmp	.L712
.L713:
.LBB25:
	.loc 1 1952 0
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1953 0
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1955 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	je	.L714
	.loc 1 1956 0
	movl	$0, -40(%ebp)
	jmp	.L703
.L714:
	.loc 1 1958 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L716
	.loc 1 1960 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L716
	.loc 1 1961 0
	movl	$0, -40(%ebp)
	jmp	.L703
.L716:
.LBE25:
	.loc 1 1950 0
	addl	$1, -16(%ebp)
.L712:
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L713
.LBE24:
	.loc 1 1938 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L704:
	.loc 1 1937 0
	cmpl	$0, -32(%ebp)
	je	.L720
	cmpl	$0, -28(%ebp)
	jne	.L705
.L720:
	.loc 1 1965 0
	cmpl	$0, -32(%ebp)
	setne	%al
	cmpl	$0, -28(%ebp)
	setne	%dl
	xorl	%edx, %eax
	testb	%al, %al
	je	.L722
	.loc 1 1968 0
	movl	$0, -40(%ebp)
	jmp	.L703
.L722:
	.loc 1 1970 0
	movl	$1, -40(%ebp)
.L703:
	movl	-40(%ebp), %eax
	.loc 1 1971 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	comp_template_parms, .-comp_template_parms
	.section	.rodata
.LC30:
	.string	"declaration of `%#D'"
.LC31:
	.string	" shadows template parm `%#D'"
	.text
.globl check_template_shadow
	.type	check_template_shadow, @function
check_template_shadow:
.LFB51:
	.loc 1 1981 0
	pushl	%ebp
.LCFI142:
	movl	%esp, %ebp
.LCFI143:
	pushl	%ebx
.LCFI144:
	subl	$36, %esp
.LCFI145:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1986 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L747
	.loc 1 1990 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L728
	.loc 1 1991 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L730
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L732
.L730:
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
.L732:
	movl	-28(%ebp), %eax
	movl	%eax, 8(%ebp)
.L728:
	.loc 1 1992 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L733
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L735
.L733:
	movl	$0, -24(%ebp)
.L735:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1996 0
	cmpl	$0, -8(%ebp)
	je	.L747
	.loc 1 2003 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L747
	movl	-8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L747
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L740
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L740
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L740
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L740
	.loc 1 2004 0
	jmp	.L747
.L740:
	.loc 1 2009 0
	movl	8(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L747
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L746
	.loc 1 2011 0
	jmp	.L747
.L746:
	.loc 1 2013 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 2014 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
.L747:
	.loc 1 2015 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	check_template_shadow, .-check_template_shadow
	.type	build_template_parm_index, @function
build_template_parm_index:
.LFB52:
	.loc 1 2027 0
	pushl	%ebp
.LCFI146:
	movl	%esp, %ebp
.LCFI147:
	pushl	%ebx
.LCFI148:
	subl	$20, %esp
.LCFI149:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2028 0
	movl	$193, (%esp)
	call	make_node@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2029 0
	movl	-8(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	.loc 1 2030 0
	movl	-8(%ebp), %ecx
	movl	12(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 24(%ecx)
	movl	%edx, 28(%ecx)
	.loc 1 2031 0
	movl	-8(%ebp), %ecx
	movl	16(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 2032 0
	movl	-8(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 2033 0
	movl	-8(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2035 0
	movl	-8(%ebp), %eax
	.loc 1 2036 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	build_template_parm_index, .-build_template_parm_index
	.type	reduce_template_parm_level, @function
reduce_template_parm_level:
.LFB53:
	.loc 1 2048 0
	pushl	%ebp
.LCFI150:
	movl	%esp, %ebp
.LCFI151:
	pushl	%edi
.LCFI152:
	pushl	%esi
.LCFI153:
	pushl	%ebx
.LCFI154:
	subl	$60, %esp
.LCFI155:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2049 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L751
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %edx
	movl	28(%eax), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	8(%ebp), %eax
	movl	24(%eax), %esi
	movl	28(%eax), %edi
	movl	%esi, -48(%ebp)
	movl	%edi, -44(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	-48(%ebp), %esi
	movl	-44(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	-36(%ebp), %ecx
	xorl	%edx, %ecx
	xorl	-40(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L753
.L751:
.LBB26:
	.loc 1 2056 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	52(%eax), %ecx
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	build_decl@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2061 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	build_template_parm_index
	movl	%eax, -20(%ebp)
	.loc 1 2062 0
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2064 0
	movl	-24(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 2065 0
	movl	-24(%ebp), %edx
	movzbl	37(%edx), %eax
	orl	$32, %eax
	movb	%al, 37(%edx)
	.loc 1 2068 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	60(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 60(%eax)
.L753:
.LBE26:
	.loc 1 2072 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	.loc 1 2073 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE53:
	.size	reduce_template_parm_level, .-reduce_template_parm_level
	.section	.rodata
	.type	__FUNCTION__.17743, @object
	.size	__FUNCTION__.17743, 22
__FUNCTION__.17743:
	.string	"process_template_parm"
	.text
.globl process_template_parm
	.type	process_template_parm, @function
process_template_parm:
.LFB54:
	.loc 1 2081 0
	pushl	%ebp
.LCFI156:
	movl	%esp, %ebp
.LCFI157:
	pushl	%esi
.LCFI158:
	pushl	%ebx
.LCFI159:
	subl	$64, %esp
.LCFI160:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2083 0
	movl	$0, -32(%ebp)
	.loc 1 2087 0
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2088 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	je	.L756
	leal	__FUNCTION__.17743@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2088, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L756:
	.loc 1 2089 0
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2090 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2091 0
	movl	-36(%ebp), %eax
	movl	16(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	100(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 2093 0
	cmpl	$0, 8(%ebp)
	je	.L758
.LBB27:
	.loc 1 2095 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_last@PLT
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2097 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L760
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L762
.L760:
	.loc 1 2098 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2097 0
	jmp	.L763
.L762:
	.loc 1 2100 0
	movl	-16(%ebp), %eax
	movl	68(%eax), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
.L763:
	.loc 1 2101 0
	addl	$1, -20(%ebp)
	jmp	.L764
.L758:
.LBE27:
	.loc 1 2104 0
	movl	$0, -20(%ebp)
.L764:
	.loc 1 2106 0
	cmpl	$0, -24(%ebp)
	jne	.L765
	.loc 1 2108 0
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	je	.L767
	leal	__FUNCTION__.17743@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2108, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L767:
	.loc 1 2110 0
	movl	-36(%ebp), %eax
	movl	16(%eax), %edx
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	grokdeclarator@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2112 0
	movl	-36(%ebp), %edx
	movzbl	37(%edx), %eax
	orl	$32, %eax
	movb	%al, 37(%edx)
	.loc 1 2118 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2121 0
	movl	-36(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$16, %eax
	movb	%al, 9(%edx)
	.loc 1 2122 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	invalid_nontype_parm_type_p
	testl	%eax, %eax
	je	.L769
	.loc 1 2123 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 4(%eax)
.L769:
	.loc 1 2124 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$33, (%esp)
	call	build_decl@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2125 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %ecx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	movl	%eax, %esi
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	movl	%eax, %edx
	movl	%ecx, 16(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_template_parm_index
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 68(%eax)
	movl	-32(%ebp), %eax
	movl	68(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 68(%eax)
	jmp	.L771
.L765:
.LBB28:
	.loc 1 2133 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2135 0
	cmpl	$0, -36(%ebp)
	je	.L772
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L772
	.loc 1 2137 0
	movl	$195, (%esp)
	call	make_aggr_type@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2140 0
	movl	-36(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2141 0
	movl	-36(%ebp), %eax
	movl	64(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2142 0
	movl	-36(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2135 0
	jmp	.L775
.L772:
	.loc 1 2146 0
	movl	$194, (%esp)
	call	make_aggr_type@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2148 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$34, (%esp)
	call	build_decl@PLT
	movl	%eax, -32(%ebp)
.L775:
	.loc 1 2151 0
	movl	-12(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 56(%edx)
	.loc 1 2152 0
	movl	-12(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2153 0
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2154 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %ecx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	movl	%eax, %esi
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	movl	%eax, %edx
	movl	%ecx, 16(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_template_parm_index
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
.L771:
.LBE28:
	.loc 1 2159 0
	movl	-32(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 2160 0
	movl	-32(%ebp), %edx
	movzbl	37(%edx), %eax
	orl	$32, %eax
	movb	%al, 37(%edx)
	.loc 1 2161 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl@PLT
	.loc 1 2162 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2163 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	chainon@PLT
	.loc 1 2164 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE54:
	.size	process_template_parm, .-process_template_parm
.globl end_template_parm_list
	.type	end_template_parm_list, @function
end_template_parm_list:
.LFB55:
	.loc 1 2174 0
	pushl	%ebp
.LCFI161:
	movl	%esp, %ebp
.LCFI162:
	pushl	%edi
.LCFI163:
	pushl	%esi
.LCFI164:
	pushl	%ebx
.LCFI165:
	subl	$28, %esp
.LCFI166:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2177 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2179 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %edi
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %esi
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	%esi, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tree_cons@PLT
	movl	%eax, 36(%edi)
	.loc 1 2183 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	$0, -28(%ebp)
	jmp	.L778
.L779:
	.loc 1 2185 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2186 0
	movl	-28(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 20(%edx,%ecx,4)
	.loc 1 2187 0
	movl	-24(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 2183 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	addl	$1, -28(%ebp)
.L778:
	cmpl	$0, -24(%ebp)
	jne	.L779
	.loc 1 2190 0
	movl	processing_template_parmlist@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	processing_template_parmlist@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2192 0
	movl	-16(%ebp), %eax
	.loc 1 2193 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE55:
	.size	end_template_parm_list, .-end_template_parm_list
.globl end_template_decl
	.type	end_template_decl, @function
end_template_decl:
.LFB56:
	.loc 1 2199 0
	pushl	%ebp
.LCFI167:
	movl	%esp, %ebp
.LCFI168:
	pushl	%ebx
.LCFI169:
	subl	$4, %esp
.LCFI170:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2200 0
	call	reset_specialization@PLT
	.loc 1 2202 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L785
	.loc 1 2206 0
	call	finish_scope@PLT
	.loc 1 2208 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	60(%ecx), %eax
	movl	64(%ecx), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, 60(%ecx)
	movl	%edx, 64(%ecx)
	.loc 1 2209 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 36(%edx)
.L785:
	.loc 1 2210 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	end_template_decl, .-end_template_decl
.globl current_template_args
	.type	current_template_args, @function
current_template_args:
.LFB57:
	.loc 1 2217 0
	pushl	%ebp
.LCFI171:
	movl	%esp, %ebp
.LCFI172:
	pushl	%ebx
.LCFI173:
	subl	$36, %esp
.LCFI174:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2219 0
	movl	$0, -28(%ebp)
	.loc 1 2220 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2221 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2226 0
	cmpl	$1, -24(%ebp)
	jle	.L787
	.loc 1 2227 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -28(%ebp)
.L787:
	.loc 1 2229 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L789
.L790:
.LBB29:
	.loc 1 2231 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2234 0
	movl	-16(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 2235 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L791
.L792:
.LBB30:
	.loc 1 2237 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2242 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L793
	.loc 1 2244 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2246 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L795
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L797
.L795:
	.loc 1 2248 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2246 0
	jmp	.L798
.L797:
	.loc 1 2250 0
	movl	-8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -8(%ebp)
.L798:
	.loc 1 2251 0
	movl	-12(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 20(%edx,%ecx,4)
.L793:
.LBE30:
	.loc 1 2235 0
	subl	$1, -12(%ebp)
.L791:
	cmpl	$0, -12(%ebp)
	jns	.L792
	.loc 1 2255 0
	cmpl	$1, -24(%ebp)
	jle	.L800
	.loc 1 2256 0
	subl	$1, -20(%ebp)
	movl	-20(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 20(%edx,%ecx,4)
	jmp	.L802
.L800:
	.loc 1 2258 0
	movl	-16(%ebp), %eax
	movl	%eax, -28(%ebp)
.L802:
.LBE29:
	.loc 1 2229 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L789:
	cmpl	$0, -32(%ebp)
	jne	.L790
	.loc 1 2261 0
	movl	-28(%ebp), %eax
	.loc 1 2262 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	current_template_args, .-current_template_args
	.type	build_template_decl, @function
build_template_decl:
.LFB58:
	.loc 1 2271 0
	pushl	%ebp
.LCFI175:
	movl	%esp, %ebp
.LCFI176:
	pushl	%ebx
.LCFI177:
	subl	$36, %esp
.LCFI178:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2272 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$192, (%esp)
	call	build_lang_decl@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2273 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 60(%edx)
	.loc 1 2274 0
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 2275 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L806
	.loc 1 2277 0
	movl	-8(%ebp), %eax
	movl	136(%eax), %ecx
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	5(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 5(%ecx)
	.loc 1 2278 0
	movl	-8(%ebp), %eax
	movl	136(%eax), %ecx
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	shrb	%al
	andl	$1, %eax
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	5(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 5(%ecx)
	.loc 1 2279 0
	movl	-8(%ebp), %eax
	movl	136(%eax), %ecx
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	5(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 5(%ecx)
	.loc 1 2280 0
	movl	-8(%ebp), %eax
	movl	136(%eax), %ecx
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	6(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
	.loc 1 2281 0
	movl	-8(%ebp), %eax
	movl	136(%eax), %ecx
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	$7, %al
	movl	%eax, %edx
	sall	$7, %edx
	movzbl	6(%ecx), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
	.loc 1 2282 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L806
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L806
	.loc 1 2283 0
	movl	-8(%ebp), %eax
	movl	136(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L810
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L812
.L810:
	movl	$0, -24(%ebp)
.L812:
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 40(%eax)
.L806:
	.loc 1 2287 0
	movl	-8(%ebp), %eax
	.loc 1 2288 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	build_template_decl, .-build_template_decl
	.type	mark_template_parm, @function
mark_template_parm:
.LFB59:
	.loc 1 2321 0
	pushl	%ebp
.LCFI179:
	movl	%esp, %ebp
.LCFI180:
	subl	$16, %esp
.LCFI181:
	.loc 1 2324 0
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 2326 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-63, %al
	jne	.L815
	.loc 1 2328 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2329 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L817
.L815:
	.loc 1 2333 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2334 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
.L817:
	.loc 1 2337 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L818
	.loc 1 2339 0
	movl	-4(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$1, (%eax)
	.loc 1 2340 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$1, (%eax)
.L818:
	.loc 1 2345 0
	movl	$0, %eax
	.loc 1 2346 0
	leave
	ret
.LFE59:
	.size	mark_template_parm, .-mark_template_parm
	.section	.rodata
	.align 4
	.type	__FUNCTION__.18011, @object
	.size	__FUNCTION__.18011, 31
__FUNCTION__.18011:
	.string	"process_partial_specialization"
	.align 4
.LC32:
	.string	"template parameters not used in partial specialization:"
.LC33:
	.string	"        `%D'"
	.align 4
.LC34:
	.string	"partial specialization `%T' does not specialize any template arguments"
	.align 4
.LC35:
	.string	"template argument `%E' involves template parameter(s)"
	.align 4
.LC36:
	.string	"type `%T' of template argument `%E' depends on template parameter(s)"
	.text
	.type	process_partial_specialization, @function
process_partial_specialization:
.LFB60:
	.loc 1 2353 0
	pushl	%ebp
.LCFI182:
	movl	%esp, %ebp
.LCFI183:
	pushl	%edi
.LCFI184:
	pushl	%ebx
.LCFI185:
	subl	$144, %esp
.LCFI186:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -108(%ebp)
	.loc 1 2353 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 2354 0
	movl	-108(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 2355 0
	movl	-64(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2356 0
	movl	-64(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2357 0
	movl	$1, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	get_innermost_template_args@PLT
	movl	%eax, -52(%ebp)
	.loc 1 2358 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2359 0
	movl	-60(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2360 0
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2361 0
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2363 0
	movl	$0, -28(%ebp)
	.loc 1 2397 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 2398 0
	movl	-36(%ebp), %eax
	sall	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	16(%esp), %edx
	movl	%edx, -128(%ebp)
	movl	-128(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -128(%ebp)
	movl	-128(%ebp), %eax
	movl	%eax, -72(%ebp)
	.loc 1 2399 0
	movl	-36(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-72(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 2401 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	16(%esp), %eax
	movl	%eax, -124(%ebp)
	movl	-124(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -124(%ebp)
	movl	-124(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 2402 0
	movl	-40(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-68(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 2403 0
	movl	$0, -32(%ebp)
	jmp	.L822
.L823:
	.loc 1 2405 0
	movl	-32(%ebp), %eax
	movl	%eax, -76(%ebp)
	.loc 1 2406 0
	movl	-32(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	$0, 12(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	mark_template_parm@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	for_each_template_parm
	.loc 1 2403 0
	addl	$1, -32(%ebp)
.L822:
	movl	-32(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jl	.L823
	.loc 1 2411 0
	movl	$0, -32(%ebp)
	jmp	.L825
.L826:
	.loc 1 2412 0
	movl	-72(%ebp), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L827
	.loc 1 2416 0
	cmpl	$0, -28(%ebp)
	jne	.L829
	.loc 1 2418 0
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2419 0
	movl	$1, -28(%ebp)
.L829:
	.loc 1 2422 0
	movl	-32(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L827:
	.loc 1 2411 0
	addl	$1, -32(%ebp)
.L825:
	movl	-32(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L826
	.loc 1 2430 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	get_innermost_template_args@PLT
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_template_args@PLT
	testl	%eax, %eax
	je	.L832
	.loc 1 2434 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L832:
	.loc 1 2445 0
	movl	-60(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	16(%eax), %eax
	cmpl	-40(%ebp), %eax
	je	.L834
	leal	__FUNCTION__.18011@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2445, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L834:
	.loc 1 2446 0
	movl	$0, -88(%ebp)
	.loc 1 2447 0
	movl	$0, -32(%ebp)
	jmp	.L836
.L837:
.LBB31:
	.loc 1 2449 0
	movl	-32(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2450 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	je	.L838
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L838
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-63, %al
	je	.L838
	.loc 1 2458 0
	movl	-68(%ebp), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L842
	.loc 1 2459 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L838
.L842:
.LBB32:
	.loc 1 2466 0
	movl	-32(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2469 0
	movl	-88(%ebp), %eax
	testl	%eax, %eax
	jne	.L844
	.loc 1 2472 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	16(%esp), %edx
	movl	%edx, -120(%ebp)
	movl	-120(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -120(%ebp)
	movl	-120(%ebp), %eax
	movl	%eax, -84(%ebp)
	.loc 1 2477 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	16(%esp), %eax
	movl	%eax, -116(%ebp)
	movl	-116(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -116(%ebp)
	movl	-116(%ebp), %eax
	movl	%eax, -88(%ebp)
	.loc 1 2478 0
	movl	-60(%ebp), %eax
	movl	60(%eax), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -96(%ebp)
.L844:
	.loc 1 2485 0
	movl	-32(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 2486 0
	movl	-84(%ebp), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 2487 0
	movl	-40(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-88(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 2488 0
	movl	$0, 12(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	mark_template_parm@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_template_parm
	.loc 1 2493 0
	movl	-84(%ebp), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L838
.LBB33:
	.loc 1 2499 0
	movl	$0, -16(%ebp)
	jmp	.L847
.L848:
	.loc 1 2500 0
	movl	-88(%ebp), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L849
	movl	-68(%ebp), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L849
	.loc 1 2503 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2506 0
	jmp	.L838
.L849:
	.loc 1 2499 0
	addl	$1, -16(%ebp)
.L847:
	movl	-16(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jl	.L848
.L838:
.LBE33:
.LBE32:
.LBE31:
	.loc 1 2447 0
	addl	$1, -32(%ebp)
.L836:
	movl	-32(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jl	.L837
	.loc 1 2513 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	retrieve_specialization
	testl	%eax, %eax
	je	.L853
	.loc 1 2515 0
	movl	-108(%ebp), %edx
	movl	%edx, -112(%ebp)
	jmp	.L855
.L853:
	.loc 1 2517 0
	movl	-60(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 2520 0
	movl	-60(%ebp), %eax
	movl	28(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2521 0
	movl	-108(%ebp), %eax
	movl	%eax, -112(%ebp)
.L855:
	movl	-112(%ebp), %eax
	.loc 1 2522 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L857
	call	__stack_chk_fail_local
.L857:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE60:
	.size	process_partial_specialization, .-process_partial_specialization
	.section	.rodata
.LC37:
	.string	"no default argument for `%D'"
	.align 4
.LC38:
	.string	"default template arguments may not be used in function templates"
	.align 4
.LC39:
	.string	"default template arguments may not be used in partial specializations"
	.align 4
.LC40:
	.string	"default argument for template parameter for class enclosing `%D'"
	.text
	.type	check_default_tmpl_args, @function
check_default_tmpl_args:
.LFB61:
	.loc 1 2535 0
	pushl	%ebp
.LCFI187:
	movl	%esp, %ebp
.LCFI188:
	pushl	%ebx
.LCFI189:
	subl	$100, %esp
.LCFI190:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2547 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L859
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L861
.L859:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -84(%ebp)
.L861:
	movl	-84(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$31, %al
	je	.L919
	.loc 1 2553 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L864
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	92(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L864
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L864
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L868
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L870
.L868:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L864
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L864
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L864
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L864
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L875
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L875
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L875
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L879
.L875:
	movl	$0, -76(%ebp)
.L879:
	movl	$0, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %edx
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L864
.L870:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L880
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L919
.L880:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L864
	.loc 1 2570 0
	jmp	.L919
.L864:
	.loc 1 2577 0
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L883
.L884:
.LBB34:
	.loc 1 2579 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2580 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2581 0
	movl	$0, -32(%ebp)
	.loc 1 2584 0
	movl	$0, -28(%ebp)
	jmp	.L885
.L886:
.LBB35:
	.loc 1 2586 0
	movl	-28(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2587 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L887
	.loc 1 2588 0
	movl	$1, -32(%ebp)
	jmp	.L889
.L887:
	.loc 1 2589 0
	cmpl	$0, -32(%ebp)
	je	.L889
	.loc 1 2591 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2594 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 16(%eax)
.L889:
.LBE35:
	.loc 1 2584 0
	addl	$1, -28(%ebp)
.L885:
	movl	-28(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L886
.LBE34:
	.loc 1 2577 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L883:
	cmpl	$0, -44(%ebp)
	jne	.L884
	.loc 1 2599 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L893
	cmpl	$0, 20(%ebp)
	jne	.L893
	cmpl	$0, 16(%ebp)
	je	.L893
	.loc 1 2617 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
.L893:
	.loc 1 2620 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L897
	.loc 1 2621 0
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, -52(%ebp)
	jmp	.L899
.L897:
	.loc 1 2622 0
	cmpl	$0, 20(%ebp)
	je	.L900
	.loc 1 2623 0
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, -52(%ebp)
	jmp	.L899
.L900:
	.loc 1 2625 0
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, -52(%ebp)
.L899:
	.loc 1 2627 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L902
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	92(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L902
	.loc 1 2636 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	template_class_depth@PLT
	addl	$1, %eax
	movl	%eax, -48(%ebp)
	.loc 1 2627 0
	jmp	.L905
.L902:
	.loc 1 2639 0
	movl	$0, -48(%ebp)
.L905:
	.loc 1 2641 0
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2642 0
	jmp	.L906
.L907:
.LBB36:
	.loc 1 2645 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2649 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2650 0
	movl	$0, -16(%ebp)
	jmp	.L908
.L909:
	.loc 1 2651 0
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L910
	.loc 1 2653 0
	cmpl	$0, -52(%ebp)
	je	.L912
	.loc 1 2655 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2656 0
	movl	$0, -52(%ebp)
.L912:
	.loc 1 2661 0
	movl	-16(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	movl	$0, 16(%eax)
.L910:
	.loc 1 2650 0
	addl	$1, -16(%ebp)
.L908:
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L909
	.loc 1 2666 0
	cmpl	$0, -52(%ebp)
	je	.L915
	.loc 1 2667 0
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, -52(%ebp)
.L915:
.LBE36:
	.loc 1 2643 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L906:
	.loc 1 2642 0
	cmpl	$0, -44(%ebp)
	je	.L919
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -60(%ebp)
	movl	-60(%ebp), %eax
	cmpl	%eax, -68(%ebp)
	jg	.L907
	movl	-60(%ebp), %edx
	cmpl	%edx, -68(%ebp)
	jl	.L919
	movl	-64(%ebp), %eax
	cmpl	%eax, -72(%ebp)
	jae	.L907
.L919:
	.loc 1 2669 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE61:
	.size	check_default_tmpl_args, .-check_default_tmpl_args
	.type	template_parm_this_level_p, @function
template_parm_this_level_p:
.LFB62:
	.loc 1 2680 0
	pushl	%ebp
.LCFI191:
	movl	%esp, %ebp
.LCFI192:
	subl	$16, %esp
.LCFI193:
	.loc 1 2681 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2684 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-63, %al
	jne	.L921
	.loc 1 2685 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L923
.L921:
	.loc 1 2687 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	%eax, -4(%ebp)
.L923:
	.loc 1 2688 0
	movl	-4(%ebp), %eax
	cmpl	-8(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 2689 0
	leave
	ret
.LFE62:
	.size	template_parm_this_level_p, .-template_parm_this_level_p
	.section	.rodata
.LC41:
	.string	"template with C linkage"
.LC42:
	.string	"template class without a name"
.LC43:
	.string	"template declaration of `%#D'"
	.align 4
.LC44:
	.string	"`%D' does not declare a template type"
	.align 4
.LC45:
	.string	"template definition of non-template `%#D'"
	.align 4
.LC46:
	.string	"expected %d levels of template parms for `%#D', got %d"
	.align 4
.LC47:
	.string	"got %d template parameters for `%#D'"
	.align 4
.LC48:
	.string	"got %d template parameters for `%#T'"
.LC49:
	.string	"  but %d required"
	.text
.globl push_template_decl_real
	.type	push_template_decl_real, @function
push_template_decl_real:
.LFB63:
	.loc 1 2702 0
	pushl	%ebp
.LCFI194:
	movl	%esp, %ebp
.LCFI195:
	pushl	%esi
.LCFI196:
	pushl	%ebx
.LCFI197:
	subl	$176, %esp
.LCFI198:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2709 0
	movl	$0, -36(%ebp)
	.loc 1 2712 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L926
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L926
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L926
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	cmpb	$8, %al
	jne	.L926
	movl	$1, -164(%ebp)
	jmp	.L931
.L926:
	movl	$0, -164(%ebp)
.L931:
	movl	-164(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2716 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L932
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L932
	movl	$1, -160(%ebp)
	jmp	.L935
.L932:
	movl	$0, -160(%ebp)
.L935:
	movl	-160(%ebp), %edx
	orl	%edx, 12(%ebp)
	.loc 1 2718 0
	cmpl	$0, 12(%ebp)
	je	.L936
	.loc 1 2721 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L938
.L936:
	.loc 1 2722 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L939
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L941
	jmp	.L943
.L939:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L941
.L943:
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L944
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -156(%ebp)
	jmp	.L946
.L944:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -156(%ebp)
.L946:
	movl	-156(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$39, %al
	je	.L941
	.loc 1 2726 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L948
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -152(%ebp)
	jmp	.L950
.L948:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -152(%ebp)
.L950:
	movl	-152(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2722 0
	jmp	.L938
.L941:
	.loc 1 2730 0
	call	current_scope@PLT
	movl	%eax, -48(%ebp)
.L938:
	.loc 1 2732 0
	cmpl	$0, -48(%ebp)
	je	.L951
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L951
	.loc 1 2733 0
	movl	$0, -48(%ebp)
.L951:
	.loc 1 2735 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	jne	.L954
	.loc 1 2736 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L956
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -148(%ebp)
	jmp	.L958
.L956:
	movl	$0, -148(%ebp)
.L958:
	movl	8(%ebp), %eax
	movl	-148(%ebp), %edx
	movl	%edx, 56(%eax)
.L954:
	.loc 1 2739 0
	call	template_parm_scope_p@PLT
	movl	%eax, -44(%ebp)
	.loc 1 2741 0
	cmpl	$0, -44(%ebp)
	je	.L959
	.loc 1 2743 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	32(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	248(%eax), %eax
	cmpl	%eax, %edx
	jne	.L961
	.loc 1 2744 0
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L959
.L961:
	.loc 1 2745 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L963
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L963
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L963
	.loc 1 2747 0
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2745 0
	jmp	.L959
.L963:
	.loc 1 2748 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L967
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L967
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L970
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L967
.L970:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L959
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L959
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L959
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L959
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L967
	jmp	.L959
.L967:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L977
	cmpl	$0, -48(%ebp)
	je	.L977
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L980
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L977
.L980:
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L959
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L959
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L959
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L959
	movl	-48(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L977
	jmp	.L959
.L977:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L959
	.loc 1 2754 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L959:
	.loc 1 2759 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_default_tmpl_args
	.loc 1 2762 0
	cmpl	$0, -40(%ebp)
	je	.L988
	.loc 1 2763 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	process_partial_specialization
	movl	%eax, -144(%ebp)
	jmp	.L990
.L988:
	.loc 1 2765 0
	call	current_template_args@PLT
	movl	%eax, -56(%ebp)
	.loc 1 2767 0
	cmpl	$0, -48(%ebp)
	je	.L991
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L991
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L994
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L994
	movl	-48(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L991
.L994:
	cmpl	$0, 12(%ebp)
	je	.L997
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L997
.L991:
	.loc 1 2774 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L999
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L999
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L999
	.loc 1 2777 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2774 0
	jmp	.L1039
.L999:
	.loc 1 2781 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L1004
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L1004
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1007
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L1004
	jmp	.L1010
.L1007:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L1011
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L1004
	jmp	.L1010
.L1011:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1014
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L1014
	movl	$1, -140(%ebp)
	jmp	.L1017
.L1014:
	movl	$0, -140(%ebp)
.L1017:
	movzbl	-140(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1004
.L1010:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1018
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1020
.L1018:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L1021
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -132(%ebp)
	jmp	.L1023
.L1021:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1024
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -128(%ebp)
	jmp	.L1026
.L1024:
	movl	$0, -128(%ebp)
.L1026:
	movl	-128(%ebp), %eax
	movl	%eax, -132(%ebp)
.L1023:
	movl	-132(%ebp), %edx
	movl	%edx, -136(%ebp)
.L1020:
	movl	-136(%ebp), %edx
	movl	16(%edx), %eax
	testl	%eax, %eax
	je	.L1004
	.loc 1 2788 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	redeclare_class_template@PLT
	.loc 1 2792 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1028
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -124(%ebp)
	jmp	.L1030
.L1028:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L1031
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L1033
.L1031:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1034
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1036
.L1034:
	movl	$0, -116(%ebp)
.L1036:
	movl	-116(%ebp), %eax
	movl	%eax, -120(%ebp)
.L1033:
	movl	-120(%ebp), %edx
	movl	%edx, -124(%ebp)
.L1030:
	movl	-124(%ebp), %edx
	movl	16(%edx), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2781 0
	jmp	.L1039
.L1004:
	.loc 1 2796 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_template_decl
	movl	%eax, -60(%ebp)
	.loc 1 2797 0
	movl	$1, -36(%ebp)
	.loc 1 2799 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L1039
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	jne	.L1039
	.loc 1 2804 0
	movl	-60(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-7, %eax
	orl	$4, %eax
	movb	%al, 6(%edx)
	.loc 1 2805 0
	movl	-60(%ebp), %eax
	movl	136(%eax), %edx
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%edx)
	.loc 1 2806 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	$0, 8(%eax)
	.loc 1 2767 0
	jmp	.L1039
.L997:
.LBB37:
	.loc 1 2815 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L1040
	.loc 1 2817 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1042
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L1042
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1045
.L1042:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1046
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L1045
	jmp	.L1049
.L1046:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L1050
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L1045
	jmp	.L1049
.L1050:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1053
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L1053
	movl	$1, -112(%ebp)
	jmp	.L1056
.L1053:
	movl	$0, -112(%ebp)
.L1056:
	movzbl	-112(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1045
.L1049:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1057
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -108(%ebp)
	jmp	.L1059
.L1057:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L1060
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -104(%ebp)
	jmp	.L1062
.L1060:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1063
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1065
.L1063:
	movl	$0, -100(%ebp)
.L1065:
	movl	-100(%ebp), %eax
	movl	%eax, -104(%ebp)
.L1062:
	movl	-104(%ebp), %edx
	movl	%edx, -108(%ebp)
.L1059:
	movl	-108(%ebp), %edx
	movl	16(%edx), %eax
	testl	%eax, %eax
	je	.L1045
	.loc 1 2821 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1067
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L1069
.L1067:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L1070
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L1072
.L1070:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1073
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L1075
.L1073:
	movl	$0, -88(%ebp)
.L1075:
	movl	-88(%ebp), %eax
	movl	%eax, -92(%ebp)
.L1072:
	movl	-92(%ebp), %edx
	movl	%edx, -96(%ebp)
.L1069:
	movl	-96(%ebp), %edx
	movl	16(%edx), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1076
.L1045:
	.loc 1 2824 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2825 0
	movl	8(%ebp), %eax
	movl	%eax, -144(%ebp)
	jmp	.L990
.L1040:
	.loc 1 2828 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L1077
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L1079
.L1077:
	.loc 1 2830 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2831 0
	movl	8(%ebp), %edx
	movl	%edx, -144(%ebp)
	jmp	.L990
.L1079:
	.loc 1 2834 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
.L1076:
	.loc 1 2836 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	is_member_template@PLT
	testl	%eax, %eax
	je	.L1080
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1080
	movl	-60(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1080
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L1080
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1080
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	jne	.L1080
.LBB38:
	.loc 1 2848 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2850 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_template_decl
	movl	%eax, -12(%ebp)
	.loc 1 2852 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 64(%edx)
	.loc 1 2853 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2854 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 2855 0
	movl	-12(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-7, %eax
	orl	$4, %eax
	movb	%al, 6(%edx)
	.loc 1 2856 0
	movl	-12(%ebp), %eax
	movl	136(%eax), %esi
	movl	$0, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, 8(%esi)
	.loc 1 2859 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	most_general_template@PLT
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	register_specialization
	.loc 1 2862 0
	movl	8(%ebp), %eax
	movl	%eax, -144(%ebp)
	jmp	.L990
.L1080:
.LBE38:
	.loc 1 2867 0
	movl	-60(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2868 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2869 0
	cmpl	$0, -56(%ebp)
	je	.L1087
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L1087
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L1087
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1087
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L1087
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1093
.L1087:
	movl	$1, -84(%ebp)
.L1093:
	movl	-84(%ebp), %edx
	cmpl	-16(%ebp), %edx
	je	.L1094
	.loc 1 2871 0
	cmpl	$0, -56(%ebp)
	je	.L1096
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L1096
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L1096
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1096
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L1096
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1102
.L1096:
	movl	$1, -80(%ebp)
.L1102:
	movl	-80(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1039
.L1094:
	.loc 1 2875 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1103
.L1104:
	.loc 1 2877 0
	cmpl	$0, -56(%ebp)
	je	.L1105
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L1105
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L1105
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1105
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L1105
	movl	-16(%ebp), %edx
	subl	$1, %edx
	movl	-56(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	%edx, -76(%ebp)
	jmp	.L1111
.L1105:
	movl	-56(%ebp), %edx
	movl	%edx, -76(%ebp)
.L1111:
	movl	-76(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2878 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2880 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L1112
	.loc 1 2882 0
	movl	-24(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L1114
	.loc 1 2883 0
	movl	-32(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1116
.L1114:
	.loc 1 2886 0
	movl	-32(%ebp), %eax
	movl	16(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1116:
	.loc 1 2888 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1112:
	.loc 1 2894 0
	movl	-24(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L1117
	.loc 1 2895 0
	movl	-48(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1119
.L1117:
	.loc 1 2897 0
	movl	-24(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -24(%ebp)
.L1119:
	.loc 1 2875 0
	subl	$1, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L1103:
	cmpl	$0, -16(%ebp)
	jg	.L1104
.L1039:
.LBE37:
	.loc 1 2901 0
	movl	-60(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 64(%edx)
	.loc 1 2902 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2908 0
	cmpl	$0, -36(%ebp)
	je	.L1120
	cmpl	$0, -48(%ebp)
	jne	.L1120
	cmpl	$0, 12(%ebp)
	je	.L1123
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	template_class_depth@PLT
	testl	%eax, %eax
	jg	.L1120
.L1123:
	.loc 1 2910 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl_namespace_level@PLT
	movl	%eax, -60(%ebp)
.L1120:
	.loc 1 2912 0
	cmpl	$0, -44(%ebp)
	je	.L1125
	.loc 1 2914 0
	movl	-60(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2915 0
	movl	-60(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1125
.LBB39:
	.loc 1 2917 0
	movl	-60(%ebp), %eax
	movl	60(%eax), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 2922 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	template_parm_this_level_p@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	for_each_template_parm
	testl	%eax, %eax
	je	.L1125
	.loc 1 2926 0
	movl	-60(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	7(%edx), %eax
	orl	$8, %eax
	movb	%al, 7(%edx)
.L1125:
.LBE39:
	.loc 1 2930 0
	movl	$0, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -52(%ebp)
	.loc 1 2932 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L1129
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L1129
	.loc 1 2934 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1132
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 76(%edx)
	jmp	.L1134
.L1132:
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 64(%edx)
.L1134:
	.loc 1 2935 0
	cmpl	$0, -48(%ebp)
	je	.L1135
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L1140
.L1135:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1140
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L1140
	.loc 1 2939 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	classtype_mangled_name
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 2932 0
	jmp	.L1140
.L1129:
	.loc 1 2941 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L1140
	.loc 1 2942 0
	movl	8(%ebp), %eax
	movl	136(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 8(%edx)
.L1140:
	.loc 1 2944 0
	movl	-60(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -144(%ebp)
.L990:
	movl	-144(%ebp), %eax
	.loc 1 2945 0
	addl	$176, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE63:
	.size	push_template_decl_real, .-push_template_decl_real
.globl push_template_decl
	.type	push_template_decl, @function
push_template_decl:
.LFB64:
	.loc 1 2950 0
	pushl	%ebp
.LCFI199:
	movl	%esp, %ebp
.LCFI200:
	pushl	%ebx
.LCFI201:
	subl	$20, %esp
.LCFI202:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2951 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_template_decl_real@PLT
	.loc 1 2952 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE64:
	.size	push_template_decl, .-push_template_decl
	.section	.rodata
.LC50:
	.string	"`%T' is not a template type"
.LC51:
	.string	"previous declaration `%D'"
.LC52:
	.string	""
.LC53:
	.string	"s"
	.align 4
.LC54:
	.string	"used %d template parameter%s instead of %d"
.LC55:
	.string	"template parameter `%#D'"
.LC56:
	.string	"redeclared here as `%#D'"
	.align 4
.LC57:
	.string	"redefinition of default argument for `%#D'"
	.align 4
.LC58:
	.string	"  original definition appeared here"
	.text
.globl redeclare_class_template
	.type	redeclare_class_template, @function
redeclare_class_template:
.LFB65:
	.loc 1 2964 0
	pushl	%ebp
.LCFI203:
	movl	%esp, %ebp
.LCFI204:
	pushl	%ebx
.LCFI205:
	subl	$84, %esp
.LCFI206:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2969 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1146
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	sete	-62(%ebp)
	jmp	.L1148
.L1146:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L1149
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	sete	-61(%ebp)
	jmp	.L1151
.L1149:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1152
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	jne	.L1154
.L1152:
	movl	$1, -60(%ebp)
	jmp	.L1155
.L1154:
	movl	$0, -60(%ebp)
.L1155:
	movzbl	-60(%ebp), %eax
	movb	%al, -61(%ebp)
.L1151:
	movzbl	-61(%ebp), %edx
	movb	%dl, -62(%ebp)
.L1148:
	cmpb	$0, -62(%ebp)
	je	.L1156
	.loc 1 2971 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2972 0
	jmp	.L1185
.L1156:
	.loc 1 2975 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1159
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1161
.L1159:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L1162
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1164
.L1162:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1165
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1167
.L1165:
	movl	$0, -48(%ebp)
.L1167:
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
.L1164:
	movl	-52(%ebp), %edx
	movl	%edx, -56(%ebp)
.L1161:
	movl	-56(%ebp), %edx
	movl	16(%edx), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2976 0
	movl	-32(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L1185
	.loc 1 2982 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 2983 0
	movl	-32(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2985 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L1169
	.loc 1 2987 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 2988 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	$1, %eax
	jne	.L1171
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1173
.L1171:
	leal	.LC53@GOTOFF(%ebx), %edx
	movl	%edx, -40(%ebp)
.L1173:
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	-44(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-40(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2992 0
	jmp	.L1185
.L1169:
	.loc 1 2995 0
	movl	$0, -24(%ebp)
	jmp	.L1174
.L1175:
.LBB40:
	.loc 1 2997 0
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2998 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2999 0
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3000 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3002 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	je	.L1176
	.loc 1 3004 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 3005 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3006 0
	jmp	.L1185
.L1176:
	.loc 1 3009 0
	cmpl	$0, -12(%ebp)
	je	.L1178
	cmpl	$0, -8(%ebp)
	je	.L1178
	.loc 1 3015 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3016 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 3017 0
	jmp	.L1185
.L1178:
	.loc 1 3020 0
	cmpl	$0, -8(%ebp)
	je	.L1181
	.loc 1 3023 0
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 16(%edx)
	jmp	.L1183
.L1181:
	.loc 1 3024 0
	cmpl	$0, -12(%ebp)
	je	.L1183
	.loc 1 3027 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%edx)
.L1183:
.LBE40:
	.loc 1 2995 0
	addl	$1, -24(%ebp)
.L1174:
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-24(%ebp), %eax
	jg	.L1175
.L1185:
	.loc 1 3029 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE65:
	.size	redeclare_class_template, .-redeclare_class_template
	.section	.rodata
	.type	__FUNCTION__.19027, @object
	.size	__FUNCTION__.19027, 25
__FUNCTION__.19027:
	.string	"convert_nontype_argument"
	.align 4
.LC59:
	.string	"`%E' is not a valid template argument"
	.align 4
.LC60:
	.string	"it must be the address of a function with external linkage"
	.align 4
.LC61:
	.string	"it must be the address of an object with external linkage"
	.align 4
.LC62:
	.string	"it must be a pointer-to-member of the form `&X::Y'"
	.align 4
.LC63:
	.string	"string literal %E is not a valid template argument because it is the address of an object with static linkage"
	.align 4
.LC64:
	.string	"address of non-extern `%E' cannot be used as template argument"
	.align 4
.LC65:
	.string	"non-constant `%E' cannot be used as template argument"
	.align 4
.LC66:
	.string	"object `%E' cannot be used as template argument"
	.text
	.type	convert_nontype_argument, @function
convert_nontype_argument:
.LFB66:
	.loc 1 3045 0
	pushl	%ebp
.LCFI207:
	movl	%esp, %ebp
.LCFI208:
	pushl	%ebx
.LCFI209:
	subl	$84, %esp
.LCFI210:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3046 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3073 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1187
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1187
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1187
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1191
.L1187:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L1191
	.loc 1 3075 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_constant_value@PLT
	movl	%eax, 12(%ebp)
.L1191:
	.loc 1 3077 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	jne	.L1193
	.loc 1 3082 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1195
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L1197
.L1195:
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1198
	movl	-40(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1198
	movl	-40(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1198
.L1197:
	.loc 1 3085 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-76, %al
	jne	.L1201
	.loc 1 3082 0
	jmp	.L1193
.L1198:
	.loc 1 3088 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1203
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L1205
.L1203:
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1206
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L1205
.L1206:
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L1205
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L1205
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	116(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L1210
.L1205:
.LBB41:
	.loc 1 3097 0
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3098 0
	jmp	.L1211
.L1212:
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
.L1211:
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1213
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1213
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1216
.L1213:
	movl	-32(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1216
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L1212
.L1216:
	.loc 1 3100 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L1218
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L1220
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	je	.L1220
.L1218:
	.loc 1 3103 0
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3100 0
	jmp	.L1222
.L1220:
	.loc 1 3106 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	je	.L1223
.L1201:
	.loc 1 3109 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3110 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1224
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L1224
	.loc 1 3112 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1227
	.loc 1 3113 0
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1230
.L1227:
	.loc 1 3115 0
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3110 0
	jmp	.L1230
.L1224:
	.loc 1 3117 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1231
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L1233
.L1231:
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1230
	movl	-40(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1230
	movl	-40(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1230
.L1233:
	.loc 1 3119 0
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1230:
	.loc 1 3121 0
	movl	$0, -60(%ebp)
	jmp	.L1236
.L1223:
	.loc 1 3124 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3125 0
	jmp	.L1237
.L1238:
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
.L1237:
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1239
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1239
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1222
.L1239:
	movl	-36(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1222
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L1238
.L1222:
	.loc 1 3128 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L1243
	.loc 1 3130 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3132 0
	movl	$0, -60(%ebp)
	jmp	.L1236
.L1243:
	.loc 1 3135 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	jne	.L1193
	.loc 1 3138 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L1201
	.loc 1 3140 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_linkage@PLT
	cmpl	$2, %eax
	je	.L1193
	.loc 1 3142 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3143 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1236
.L1210:
.LBE41:
	.loc 1 3146 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1249
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1249
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1249
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	je	.L1249
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1254
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L1249
.L1254:
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1256
	movl	-40(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1256
	movl	-40(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1256
.L1249:
	.loc 1 3150 0
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1193
.L1260:
	.loc 1 3153 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3155 0
	movl	$0, -60(%ebp)
	jmp	.L1236
.L1256:
	.loc 1 3160 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3161 0
	movl	$0, -60(%ebp)
	jmp	.L1236
.L1193:
	.loc 1 3164 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$7, %eax
	movl	%eax, -64(%ebp)
	cmpl	$14, -64(%ebp)
	ja	.L1261
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	.L1266@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1266:
	.long	.L1262@GOTOFF
	.long	.L1261@GOTOFF
	.long	.L1261@GOTOFF
	.long	.L1261@GOTOFF
	.long	.L1262@GOTOFF
	.long	.L1262@GOTOFF
	.long	.L1261@GOTOFF
	.long	.L1263@GOTOFF
	.long	.L1261@GOTOFF
	.long	.L1264@GOTOFF
	.long	.L1261@GOTOFF
	.long	.L1261@GOTOFF
	.long	.L1261@GOTOFF
	.long	.L1261@GOTOFF
	.long	.L1265@GOTOFF
	.text
.L1262:
	.loc 1 3172 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1267
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1267
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1267
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	je	.L1267
	.loc 1 3173 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1236
.L1267:
	.loc 1 3177 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	digest_init@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3179 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1260
	.loc 1 3185 0
	movl	12(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1236
.L1263:
.LBB42:
	.loc 1 3189 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3191 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1273
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L1273
.LBB43:
	.loc 1 3198 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	perform_qualification_conversions@PLT
	movl	%eax, -24(%ebp)
	.loc 1 3199 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	jne	.L1276
	.loc 1 3207 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_ptrmem_cst@PLT
	movl	%eax, -24(%ebp)
.L1276:
	.loc 1 3208 0
	movl	-24(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1236
.L1273:
.LBE43:
	.loc 1 3210 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1278
.LBB44:
	.loc 1 3221 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L1280
	.loc 1 3222 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1282
.L1280:
	.loc 1 3224 0
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
.L1282:
	.loc 1 3226 0
	movl	$0, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_type@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3228 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L1283
	.loc 1 3229 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1236
.L1283:
	.loc 1 3231 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_linkage@PLT
	cmpl	$2, %eax
	je	.L1285
	.loc 1 3233 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	really_overloaded_fn@PLT
	testl	%eax, %eax
	je	.L1201
	.loc 1 3234 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1236
.L1285:
	.loc 1 3239 0
	movl	$0, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3241 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L1288
	leal	__FUNCTION__.19027@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3242, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1288:
	.loc 1 3243 0
	movl	12(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1236
.L1278:
.LBE44:
	.loc 1 3259 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	decay_conversion@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3261 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1290
	.loc 1 3262 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1236
.L1290:
	.loc 1 3264 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	perform_qualification_conversions@PLT
	movl	%eax, -60(%ebp)
	jmp	.L1236
.L1264:
.LBE42:
.LBB45:
	.loc 1 3271 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3275 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L1292
	.loc 1 3277 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	je	.L1294
	leal	__FUNCTION__.19027@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3277, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1294:
	.loc 1 3278 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 3279 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
.L1292:
	.loc 1 3282 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1296
.LBB46:
	.loc 1 3291 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_type@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3293 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L1298
	.loc 1 3294 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1236
.L1298:
	.loc 1 3296 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_linkage@PLT
	cmpl	$2, %eax
	je	.L1300
	.loc 1 3298 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	really_overloaded_fn@PLT
	testl	%eax, %eax
	je	.L1201
	.loc 1 3302 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1236
.L1300:
	.loc 1 3307 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L1303
	leal	__FUNCTION__.19027@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3309, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1303:
	.loc 1 3311 0
	movl	-8(%ebp), %eax
	movl	%eax, 12(%ebp)
	jmp	.L1305
.L1296:
.LBE46:
	.loc 1 3321 0
	movl	-12(%ebp), %eax
	movl	72(%eax), %edx
	movl	-40(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L1306
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	at_least_as_qualified_p@PLT
	testl	%eax, %eax
	je	.L1306
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	real_lvalue_p@PLT
	testl	%eax, %eax
	jne	.L1305
.L1306:
	.loc 1 3326 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1236
.L1305:
	.loc 1 3329 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_mark_addressable@PLT
	.loc 1 3330 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, -60(%ebp)
	jmp	.L1236
.L1265:
.LBE45:
	.loc 1 3336 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1309
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1309
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1309
	movl	$1, -56(%ebp)
	jmp	.L1313
.L1309:
	movl	$0, -56(%ebp)
.L1313:
	cmpl	$0, -56(%ebp)
	jne	.L1314
	leal	__FUNCTION__.19027@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3336, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1314:
	.loc 1 3344 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1316
	movl	-40(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1316
	movl	-40(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1319
.L1316:
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	116(%eax), %eax
	cmpl	-40(%ebp), %eax
	je	.L1319
	.loc 1 3346 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1236
.L1319:
	.loc 1 3348 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-76, %al
	jne	.L1321
	.loc 1 3351 0
	movl	$0, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L1323
	.loc 1 3352 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1236
.L1323:
	.loc 1 3354 0
	movl	12(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1236
.L1321:
	.loc 1 3357 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	je	.L1325
	.loc 1 3358 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1236
.L1325:
	.loc 1 3360 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_type@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3362 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1327
	.loc 1 3363 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1236
.L1327:
	.loc 1 3365 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L1329
	leal	__FUNCTION__.19027@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3366, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1329:
	.loc 1 3367 0
	movl	12(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1236
.L1261:
	.loc 1 3373 0
	leal	__FUNCTION__.19027@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3373, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1236:
	movl	-60(%ebp), %eax
	.loc 1 3378 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE66:
	.size	convert_nontype_argument, .-convert_nontype_argument
	.section	.rodata
	.align 4
	.type	__FUNCTION__.19341, @object
	.size	__FUNCTION__.19341, 31
__FUNCTION__.19341:
	.string	"coerce_template_template_parms"
	.text
	.type	coerce_template_template_parms, @function
coerce_template_template_parms:
.LFB67:
	.loc 1 3403 0
	pushl	%ebp
.LCFI211:
	movl	%esp, %ebp
.LCFI212:
	pushl	%esi
.LCFI213:
	pushl	%ebx
.LCFI214:
	subl	$64, %esp
.LCFI215:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3407 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	je	.L1333
	leal	__FUNCTION__.19341@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3407, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1333:
	.loc 1 3408 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	je	.L1335
	leal	__FUNCTION__.19341@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3408, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1335:
	.loc 1 3410 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3411 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3414 0
	movl	-32(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L1337
	movl	-32(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jle	.L1339
	movl	-36(%ebp), %edx
	movl	12(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L1339
.L1337:
	.loc 1 3417 0
	movl	$0, -48(%ebp)
	jmp	.L1341
.L1339:
	.loc 1 3419 0
	movl	$0, -28(%ebp)
	jmp	.L1342
.L1343:
	.loc 1 3421 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3422 0
	movl	-28(%ebp), %edx
	movl	12(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3424 0
	cmpl	$0, -20(%ebp)
	je	.L1344
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L1344
	cmpl	$0, -24(%ebp)
	je	.L1344
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L1348
.L1344:
	.loc 1 3426 0
	movl	$0, -48(%ebp)
	jmp	.L1341
.L1348:
	.loc 1 3428 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	je	.L1349
	.loc 1 3429 0
	movl	$0, -48(%ebp)
	jmp	.L1341
.L1349:
	.loc 1 3431 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	cmpl	$36, -44(%ebp)
	je	.L1353
	cmpl	$192, -44(%ebp)
	je	.L1354
	cmpl	$34, -44(%ebp)
	je	.L1355
	jmp	.L1351
.L1354:
.LBB47:
	.loc 1 3441 0
	movl	-24(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3442 0
	movl	-20(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3444 0
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	coerce_template_template_parms
	testl	%eax, %eax
	jne	.L1355
	.loc 1 3447 0
	movl	$0, -48(%ebp)
	jmp	.L1341
.L1353:
.LBE47:
	.loc 1 3455 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %esi
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L1355
	.loc 1 3458 0
	movl	$0, -48(%ebp)
	jmp	.L1341
.L1351:
	.loc 1 3462 0
	leal	__FUNCTION__.19341@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3462, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1355:
	.loc 1 3419 0
	addl	$1, -28(%ebp)
.L1342:
	movl	-28(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L1343
	.loc 1 3465 0
	movl	$1, -48(%ebp)
.L1341:
	movl	-48(%ebp), %eax
	.loc 1 3466 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE67:
	.size	coerce_template_template_parms, .-coerce_template_template_parms
	.section	.rodata
	.align 4
.LC67:
	.string	"to refer to a type member of a template parameter, use `typename %E'"
	.align 4
.LC68:
	.string	"type/value mismatch at argument %d in template parameter list for `%D'"
	.align 4
.LC69:
	.string	"  expected a constant of type `%T', got `%T'"
.LC70:
	.string	"  expected a type, got `%E'"
.LC71:
	.string	"  expected a type, got `%T'"
	.align 4
.LC72:
	.string	"  expected a class template, got `%T'"
	.align 4
.LC73:
	.string	"  expected a template of type `%D', got `%D'"
	.align 4
.LC74:
	.string	"template-argument `%T' uses anonymous type"
	.align 4
.LC75:
	.string	"template-argument `%T' uses local type `%T'"
	.align 4
.LC76:
	.string	"template-argument `%T' is a variably modified type"
	.align 4
.LC77:
	.string	"could not convert template argument `%E' to `%T'"
	.text
	.type	convert_template_argument, @function
convert_template_argument:
.LFB68:
	.loc 1 3483 0
	pushl	%ebp
.LCFI216:
	movl	%esp, %ebp
.LCFI217:
	pushl	%ebx
.LCFI218:
	subl	$100, %esp
.LCFI219:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3488 0
	movl	$1, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_innermost_template_args@PLT
	movl	%eax, -40(%ebp)
	.loc 1 3490 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L1363
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1363
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L1363
	.loc 1 3499 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 3500 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	116(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
.L1363:
	.loc 1 3503 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 3504 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L1367
	cmpl	$0, -24(%ebp)
	je	.L1369
.L1367:
	movl	$1, -72(%ebp)
	jmp	.L1370
.L1369:
	movl	$0, -72(%ebp)
.L1370:
	movl	-72(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3507 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1371
	.loc 1 3508 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1373
	movl	12(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L1375
.L1373:
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-61, %al
	je	.L1375
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-58, %al
	jne	.L1377
.L1375:
	movl	$1, -68(%ebp)
	jmp	.L1378
.L1377:
	movl	$0, -68(%ebp)
.L1378:
	movl	-68(%ebp), %edx
	movl	%edx, -28(%ebp)
	jmp	.L1379
.L1371:
	.loc 1 3512 0
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L1380
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	jne	.L1380
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1380
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	is_base_of_enclosing_class@PLT
	testl	%eax, %eax
	je	.L1380
	.loc 1 3517 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3512 0
	jmp	.L1379
.L1380:
	.loc 1 3521 0
	movl	$0, -28(%ebp)
.L1379:
	.loc 1 3523 0
	cmpl	$0, -28(%ebp)
	je	.L1385
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-61, %al
	je	.L1387
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-58, %al
	jne	.L1385
.L1387:
	.loc 1 3526 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 3523 0
	jmp	.L1389
.L1385:
	.loc 1 3527 0
	cmpl	$0, -28(%ebp)
	je	.L1389
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1389
	.loc 1 3528 0
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 12(%ebp)
.L1389:
	.loc 1 3530 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	je	.L1392
	cmpl	$0, -28(%ebp)
	je	.L1394
.L1392:
	movl	$1, -64(%ebp)
	jmp	.L1395
.L1394:
	movl	$0, -64(%ebp)
.L1395:
	movl	-64(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3532 0
	cmpl	$0, -32(%ebp)
	je	.L1396
	cmpl	$0, -36(%ebp)
	jne	.L1396
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-71, %al
	jne	.L1396
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	jne	.L1396
	.loc 1 3535 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 3537 0
	movl	20(%ebp), %edx
	andl	$1, %edx
	movl	12(%ebp), %eax
	movl	24(%eax), %ecx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	make_typename_type@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3540 0
	movl	$1, -36(%ebp)
.L1396:
	.loc 1 3542 0
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	je	.L1401
	.loc 1 3544 0
	cmpl	$0, 28(%ebp)
	je	.L1403
	.loc 1 3546 0
	movl	20(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1403
	.loc 1 3548 0
	movl	24(%ebp), %eax
	addl	$1, %eax
	movl	28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3550 0
	cmpl	$0, -36(%ebp)
	je	.L1406
	.loc 1 3551 0
	cmpl	$0, -28(%ebp)
	je	.L1408
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1410
.L1408:
	movl	12(%ebp), %edx
	movl	%edx, -60(%ebp)
.L1410:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	-60(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1403
.L1406:
	.loc 1 3555 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1403:
	.loc 1 3558 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1411
.L1401:
	.loc 1 3560 0
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	je	.L1412
	.loc 1 3562 0
	cmpl	$0, 28(%ebp)
	je	.L1414
	movl	20(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1414
	.loc 1 3564 0
	movl	24(%ebp), %eax
	addl	$1, %eax
	movl	28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3566 0
	cmpl	$0, -28(%ebp)
	je	.L1417
	.loc 1 3567 0
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1414
.L1417:
	.loc 1 3569 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1414:
	.loc 1 3571 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1411
.L1412:
	.loc 1 3574 0
	cmpl	$0, -36(%ebp)
	je	.L1419
	.loc 1 3576 0
	cmpl	$0, -24(%ebp)
	je	.L1421
	.loc 1 3578 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-58, %al
	jne	.L1423
	.loc 1 3581 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1456
.L1423:
.LBB48:
	.loc 1 3584 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3585 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3587 0
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	coerce_template_template_parms
	testl	%eax, %eax
	je	.L1426
	.loc 1 3591 0
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3595 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-44(%ebp), %eax
	je	.L1456
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1456
	movl	-44(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1456
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L1432
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L1432
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L1432
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1456
.L1432:
	.loc 1 3597 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1456
.L1426:
	.loc 1 3601 0
	cmpl	$0, 28(%ebp)
	je	.L1436
	movl	20(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1436
	.loc 1 3603 0
	movl	24(%ebp), %edx
	addl	$1, %edx
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3605 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1436:
	.loc 1 3608 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1456
.L1421:
.LBE48:
	.loc 1 3614 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	groktypename@PLT
	movl	%eax, -44(%ebp)
	.loc 1 3615 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1456
.LBB49:
	.loc 1 3622 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	no_linkage_check@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3623 0
	cmpl	$0, -12(%ebp)
	je	.L1441
	.loc 1 3625 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1443
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1445
.L1443:
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1446
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1446
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1446
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1446
	movl	-12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1446
.L1445:
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1451
.L1446:
	movl	-12(%ebp), %eax
	movl	72(%eax), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L1451
	movl	-12(%ebp), %eax
	movl	72(%eax), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L1451
	.loc 1 3626 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 3625 0
	jmp	.L1454
.L1451:
	.loc 1 3629 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1454:
	.loc 1 3632 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1411
.L1441:
	.loc 1 3638 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	variably_modified_type_p@PLT
	testb	%al, %al
	je	.L1456
	.loc 1 3640 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3642 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1411
.L1419:
.LBE49:
.LBB50:
	.loc 1 3649 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3651 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	invalid_nontype_parm_type_p
	testl	%eax, %eax
	je	.L1457
	.loc 1 3652 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1411
.L1457:
	.loc 1 3654 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1459
	.loc 1 3655 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_fold_nontype_arg
	movl	%eax, 12(%ebp)
.L1459:
	.loc 1 3657 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	jne	.L1461
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	jne	.L1461
	.loc 1 3668 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_nontype_argument
	movl	%eax, -44(%ebp)
	.loc 1 3657 0
	jmp	.L1464
.L1461:
	.loc 1 3670 0
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
.L1464:
	.loc 1 3672 0
	cmpl	$0, -44(%ebp)
	jne	.L1465
	.loc 1 3673 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1456
.L1465:
	.loc 1 3674 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L1456
	movl	20(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1456
	.loc 1 3675 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC77@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1456:
.LBE50:
	.loc 1 3679 0
	movl	-44(%ebp), %eax
	movl	%eax, -56(%ebp)
.L1411:
	movl	-56(%ebp), %eax
	.loc 1 3680 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE68:
	.size	convert_template_argument, .-convert_template_argument
	.section	.rodata
	.type	__FUNCTION__.19675, @object
	.size	__FUNCTION__.19675, 22
__FUNCTION__.19675:
	.string	"coerce_template_parms"
	.align 4
.LC78:
	.string	"wrong number of template arguments (%d, should be %d)"
.LC79:
	.string	"provided for `%D'"
	.align 4
.LC80:
	.string	"template argument %d is invalid"
	.text
	.type	coerce_template_parms, @function
coerce_template_parms:
.LFB69:
	.loc 1 3702 0
	pushl	%ebp
.LCFI220:
	movl	%esp, %ebp
.LCFI221:
	pushl	%ebx
.LCFI222:
	subl	$84, %esp
.LCFI223:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3703 0
	movl	$0, -28(%ebp)
	.loc 1 3708 0
	movl	$1, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_innermost_template_args@PLT
	movl	%eax, -24(%ebp)
	.loc 1 3709 0
	cmpl	$0, -24(%ebp)
	je	.L1471
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L1473
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1475
.L1473:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	movl	%eax, -60(%ebp)
.L1475:
	movl	-60(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1476
.L1471:
	movl	$0, -64(%ebp)
.L1476:
	movl	-64(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3710 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3712 0
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jg	.L1477
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jge	.L1479
	cmpl	$0, 24(%ebp)
	je	.L1479
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L1479
.L1477:
	.loc 1 3717 0
	movl	20(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1482
	.loc 1 3719 0
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3722 0
	cmpl	$0, 16(%ebp)
	je	.L1482
	.loc 1 3723 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC79@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
.L1482:
	.loc 1 3726 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1485
.L1479:
	.loc 1 3729 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3730 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_outermost_template_args
	movl	%eax, -20(%ebp)
	.loc 1 3731 0
	movl	$0, -32(%ebp)
	jmp	.L1486
.L1487:
.LBB51:
	.loc 1 3737 0
	movl	-32(%ebp), %eax
	movl	8(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3740 0
	cmpl	$0, -24(%ebp)
	je	.L1488
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L1488
	.loc 1 3742 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3743 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3740 0
	jmp	.L1491
.L1488:
	.loc 1 3745 0
	movl	-32(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jge	.L1492
	.loc 1 3746 0
	movl	-32(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1491
.L1492:
	.loc 1 3749 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L1494
	.loc 1 3752 0
	cmpl	$0, 24(%ebp)
	je	.L1498
	leal	__FUNCTION__.19675@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3752, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1494:
	.loc 1 3755 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L1499
	.loc 1 3756 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -12(%ebp)
	jmp	.L1491
.L1499:
	.loc 1 3758 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, -12(%ebp)
.L1491:
	.loc 1 3762 0
	cmpl	$0, -12(%ebp)
	jne	.L1501
	.loc 1 3765 0
	cmpl	$0, 24(%ebp)
	je	.L1498
	leal	__FUNCTION__.19675@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3765, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1501:
	.loc 1 3768 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L1505
	.loc 1 3770 0
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	leal	.LC80@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3771 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1507
.L1505:
	.loc 1 3774 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert_template_argument
	movl	%eax, -12(%ebp)
.L1507:
	.loc 1 3778 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L1508
	.loc 1 3779 0
	addl	$1, -28(%ebp)
.L1508:
	.loc 1 3780 0
	movl	-32(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 20(%edx,%ecx,4)
.LBE51:
	.loc 1 3731 0
	addl	$1, -32(%ebp)
.L1486:
	movl	-32(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jl	.L1487
.L1498:
	.loc 1 3783 0
	cmpl	$0, -28(%ebp)
	je	.L1510
	.loc 1 3784 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1485
.L1510:
	.loc 1 3786 0
	movl	-16(%ebp), %eax
	movl	%eax, -56(%ebp)
.L1485:
	movl	-56(%ebp), %eax
	.loc 1 3787 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE69:
	.size	coerce_template_parms, .-coerce_template_parms
	.type	template_args_equal, @function
template_args_equal:
.LFB70:
	.loc 1 3794 0
	pushl	%ebp
.LCFI224:
	movl	%esp, %ebp
.LCFI225:
	pushl	%ebx
.LCFI226:
	subl	$36, %esp
.LCFI227:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3795 0
	movl	12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L1514
	.loc 1 3796 0
	movl	$1, -16(%ebp)
	jmp	.L1516
.L1514:
	.loc 1 3798 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L1517
	.loc 1 3800 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L1519
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_template_args@PLT
	testl	%eax, %eax
	je	.L1519
	movl	$1, -12(%ebp)
	jmp	.L1522
.L1519:
	movl	$0, -12(%ebp)
.L1522:
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1516
.L1517:
	.loc 1 3801 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L1523
	.loc 1 3802 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L1525
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L1525
	movl	$1, -8(%ebp)
	jmp	.L1528
.L1525:
	movl	$0, -8(%ebp)
.L1528:
	movl	-8(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1516
.L1523:
	.loc 1 3803 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	je	.L1529
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L1531
.L1529:
	.loc 1 3804 0
	movl	$0, -16(%ebp)
	jmp	.L1516
.L1531:
	.loc 1 3806 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_tree_equal@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
.L1516:
	movl	-16(%ebp), %eax
	.loc 1 3807 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE70:
	.size	template_args_equal, .-template_args_equal
.globl comp_template_args
	.type	comp_template_args, @function
comp_template_args:
.LFB71:
	.loc 1 3815 0
	pushl	%ebp
.LCFI228:
	movl	%esp, %ebp
.LCFI229:
	subl	$40, %esp
.LCFI230:
	.loc 1 3818 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L1534
	.loc 1 3819 0
	movl	$0, -20(%ebp)
	jmp	.L1536
.L1534:
	.loc 1 3821 0
	movl	$0, -12(%ebp)
	jmp	.L1537
.L1538:
.LBB52:
	.loc 1 3823 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3824 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -4(%ebp)
	.loc 1 3826 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	template_args_equal
	testl	%eax, %eax
	jne	.L1539
	.loc 1 3827 0
	movl	$0, -20(%ebp)
	jmp	.L1536
.L1539:
.LBE52:
	.loc 1 3821 0
	addl	$1, -12(%ebp)
.L1537:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L1538
	.loc 1 3829 0
	movl	$1, -20(%ebp)
.L1536:
	movl	-20(%ebp), %eax
	.loc 1 3830 0
	leave
	ret
.LFE71:
	.size	comp_template_args, .-comp_template_args
	.section	.rodata
	.align 4
	.type	__FUNCTION__.19836, @object
	.size	__FUNCTION__.19836, 31
__FUNCTION__.19836:
	.string	"mangle_class_name_for_template"
	.local	scratch_firstobj.19821
	.comm	scratch_firstobj.19821,4,4
	.local	scratch_obstack.19820
	.comm	scratch_obstack.19820,44,32
.LC81:
	.string	"::"
	.text
	.type	mangle_class_name_for_template, @function
mangle_class_name_for_template:
.LFB72:
	.loc 1 3839 0
	pushl	%ebp
.LCFI231:
	movl	%esp, %ebp
.LCFI232:
	pushl	%edi
.LCFI233:
	pushl	%esi
.LCFI234:
	pushl	%ebx
.LCFI235:
	subl	$204, %esp
.LCFI236:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3844 0
	movl	scratch_firstobj.19821@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1544
	.loc 1 3845 0
	leal	scratch_obstack.19820@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	gcc_obstack_init@PLT
	jmp	.L1546
.L1544:
.LBB53:
	.loc 1 3847 0
	leal	scratch_obstack.19820@GOTOFF(%ebx), %eax
	movl	%eax, -136(%ebp)
	movl	scratch_firstobj.19821@GOTOFF(%ebx), %eax
	movl	%eax, -132(%ebp)
	movl	-136(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-132(%ebp), %eax
	jae	.L1547
	movl	-136(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-132(%ebp), %eax
	jbe	.L1547
	movl	-132(%ebp), %edx
	movl	-136(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-136(%ebp), %eax
	movl	8(%eax), %edx
	movl	-136(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L1546
.L1547:
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L1546:
.LBE53:
.LBB54:
	.loc 1 3848 0
	leal	scratch_obstack.19820@GOTOFF(%ebx), %eax
	movl	%eax, -128(%ebp)
.LBB55:
	movl	-128(%ebp), %eax
	movl	%eax, -124(%ebp)
	movl	$1, -120(%ebp)
	movl	-124(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-124(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-120(%ebp), %eax
	jge	.L1550
	movl	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1550:
	movl	-124(%ebp), %eax
	movl	12(%eax), %edx
	movl	-120(%ebp), %eax
	addl	%eax, %edx
	movl	-124(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE55:
.LBB56:
	movl	-128(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	-116(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -112(%ebp)
	movl	-116(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-112(%ebp), %eax
	jne	.L1552
	movl	-116(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L1552:
	movl	-116(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-116(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-116(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-116(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-116(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-116(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-116(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-116(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L1554
	movl	-116(%ebp), %eax
	movl	16(%eax), %edx
	movl	-116(%ebp), %eax
	movl	%edx, 12(%eax)
.L1554:
	movl	-116(%ebp), %eax
	movl	12(%eax), %edx
	movl	-116(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-112(%ebp), %eax
.LBE56:
.LBE54:
	movl	%eax, scratch_firstobj.19821@GOTOFF(%ebx)
.LBB57:
	.loc 1 3853 0
	leal	scratch_obstack.19820@GOTOFF(%ebx), %eax
	movl	%eax, -108(%ebp)
	movl	8(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -180(%ebp)
	movl	$0, %eax
	cld
	movl	-180(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -104(%ebp)
	movl	-108(%ebp), %eax
	movl	12(%eax), %edx
	movl	-104(%ebp), %eax
	addl	%eax, %edx
	movl	-108(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1556
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1556:
	movl	-104(%ebp), %ecx
	movl	-108(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	movl	-108(%ebp), %eax
	movl	12(%eax), %edx
	movl	-104(%ebp), %eax
	addl	%eax, %edx
	movl	-108(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE57:
.LBB58:
	.loc 1 3854 0
	leal	scratch_obstack.19820@GOTOFF(%ebx), %eax
	movl	%eax, -100(%ebp)
	movl	-100(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-100(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1558
	movl	$1, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1558:
	movl	-100(%ebp), %eax
	movl	12(%eax), %eax
	movb	$60, (%eax)
	leal	1(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE58:
	.loc 1 3855 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -140(%ebp)
	.loc 1 3856 0
	movl	$1, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_innermost_template_args@PLT
	movl	%eax, 16(%ebp)
	.loc 1 3857 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-140(%ebp), %eax
	je	.L1560
	leal	__FUNCTION__.19836@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3857, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1560:
	.loc 1 3858 0
	movl	$0, -144(%ebp)
	jmp	.L1562
.L1563:
.LBB59:
	.loc 1 3860 0
	movl	-144(%ebp), %edx
	movl	12(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	20(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 3861 0
	movl	-144(%ebp), %edx
	movl	16(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -92(%ebp)
	.loc 1 3863 0
	cmpl	$0, -144(%ebp)
	je	.L1564
.LBB60:
	.loc 1 3864 0
	leal	scratch_obstack.19820@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-88(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1566
	movl	$1, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1566:
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movb	$44, (%eax)
	leal	1(%eax), %edx
	movl	-88(%ebp), %eax
	movl	%edx, 12(%eax)
.L1564:
.LBE60:
	.loc 1 3866 0
	movl	-96(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L1568
.LBB61:
	.loc 1 3868 0
	leal	scratch_obstack.19820@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	movl	$2, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	type_as_string@PLT
	movl	$-1, %ecx
	movl	%eax, -184(%ebp)
	movl	$0, %eax
	cld
	movl	-184(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -80(%ebp)
	movl	-84(%ebp), %eax
	movl	12(%eax), %edx
	movl	-80(%ebp), %eax
	addl	%eax, %edx
	movl	-84(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1570
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1570:
	movl	-80(%ebp), %eax
	movl	%eax, -176(%ebp)
	movl	$2, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	type_as_string@PLT
	movl	%eax, %edx
	movl	-84(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	movl	-176(%ebp), %ecx
	rep
	movsb
	movl	-84(%ebp), %eax
	movl	12(%eax), %edx
	movl	-80(%ebp), %eax
	addl	%eax, %edx
	movl	-84(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 3869 0
	jmp	.L1572
.L1568:
.LBE61:
	.loc 1 3871 0
	movl	-96(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1573
	.loc 1 3873 0
	movl	-92(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1575
.LBB62:
	.loc 1 3877 0
	movl	-92(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 3878 0
	cmpl	$0, -76(%ebp)
	je	.L1577
	.loc 1 3882 0
	movl	-76(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	je	.L1579
	movl	-76(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1581
	movl	-76(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1583
.L1581:
	movl	-76(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1579
	movl	-76(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1579
	movl	-76(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1579
	movl	-76(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1579
	movl	-76(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1583
.L1579:
	movl	$1, -172(%ebp)
	jmp	.L1588
.L1583:
	movl	$0, -172(%ebp)
.L1588:
	cmpl	$0, -172(%ebp)
	jne	.L1589
	leal	__FUNCTION__.19836@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3884, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1589:
.LBB63:
	.loc 1 3885 0
	leal	scratch_obstack.19820@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	movl	-92(%ebp), %eax
	movl	56(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	decl_as_string@PLT
	movl	$-1, %ecx
	movl	%eax, -188(%ebp)
	movl	$0, %eax
	cld
	movl	-188(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -68(%ebp)
	movl	-72(%ebp), %eax
	movl	12(%eax), %edx
	movl	-68(%ebp), %eax
	addl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1591
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1591:
	movl	-68(%ebp), %eax
	movl	%eax, -168(%ebp)
	movl	-92(%ebp), %eax
	movl	56(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	decl_as_string@PLT
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	movl	-168(%ebp), %ecx
	rep
	movsb
	movl	-72(%ebp), %eax
	movl	12(%eax), %edx
	movl	-68(%ebp), %eax
	addl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE63:
.LBB64:
	.loc 1 3886 0
	leal	scratch_obstack.19820@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
	movl	$2, -60(%ebp)
	movl	-64(%ebp), %eax
	movl	12(%eax), %edx
	movl	-60(%ebp), %eax
	addl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1593
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1593:
	movl	-60(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC81@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-64(%ebp), %eax
	movl	12(%eax), %edx
	movl	-60(%ebp), %eax
	addl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	%edx, 12(%eax)
.L1577:
.LBE64:
.LBB65:
	.loc 1 3888 0
	leal	scratch_obstack.19820@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	movl	-92(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -192(%ebp)
	movl	$0, %eax
	cld
	movl	-192(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -52(%ebp)
	movl	-56(%ebp), %eax
	movl	12(%eax), %edx
	movl	-52(%ebp), %eax
	addl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1595
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1595:
	movl	-52(%ebp), %ecx
	movl	-92(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	movl	-56(%ebp), %eax
	movl	12(%eax), %edx
	movl	-52(%ebp), %eax
	addl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L1572
.L1575:
.LBE65:
.LBE62:
.LBB66:
	.loc 1 3892 0
	leal	scratch_obstack.19820@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	movl	$2, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	type_as_string@PLT
	movl	$-1, %ecx
	movl	%eax, -196(%ebp)
	movl	$0, %eax
	cld
	movl	-196(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -44(%ebp)
	movl	-48(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	addl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1598
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1598:
	movl	-44(%ebp), %eax
	movl	%eax, -164(%ebp)
	movl	$2, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	type_as_string@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	movl	-164(%ebp), %ecx
	rep
	movsb
	movl	-48(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	addl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 3893 0
	jmp	.L1572
.L1573:
.LBE66:
	.loc 1 3896 0
	movl	-96(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L1600
	leal	__FUNCTION__.19836@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3896, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1600:
	.loc 1 3898 0
	movl	-92(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L1602
	.loc 1 3902 0
	movl	-92(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1604
	leal	__FUNCTION__.19836@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3902, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1604:
	.loc 1 3903 0
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -92(%ebp)
.L1602:
.LBB67:
	.loc 1 3907 0
	leal	scratch_obstack.19820@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	movl	$0, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	expr_as_string@PLT
	movl	$-1, %ecx
	movl	%eax, -200(%ebp)
	movl	$0, %eax
	cld
	movl	-200(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1606
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1606:
	movl	-36(%ebp), %eax
	movl	%eax, -160(%ebp)
	movl	$0, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	expr_as_string@PLT
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	movl	-160(%ebp), %ecx
	rep
	movsb
	movl	-40(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, 12(%eax)
.L1572:
.LBE67:
.LBE59:
	.loc 1 3858 0
	addl	$1, -144(%ebp)
.L1562:
	movl	-144(%ebp), %eax
	cmpl	-140(%ebp), %eax
	jl	.L1563
.LBB68:
	.loc 1 3910 0
	movl	12+scratch_obstack.19820@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3911 0
	movl	$0, -28(%ebp)
	.loc 1 3912 0
	jmp	.L1609
.L1610:
	.loc 1 3913 0
	subl	$1, -28(%ebp)
.L1609:
	.loc 1 3912 0
	movl	-28(%ebp), %eax
	addl	-32(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	.L1610
	.loc 1 3914 0
	movl	12+scratch_obstack.19820@GOTOFF(%ebx), %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 12+scratch_obstack.19820@GOTOFF(%ebx)
	.loc 1 3917 0
	movl	-28(%ebp), %eax
	addl	-32(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$62, %al
	jne	.L1612
.LBB69:
	.loc 1 3918 0
	leal	scratch_obstack.19820@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1614
	movl	$1, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1614:
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movb	$32, (%eax)
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.L1612:
.LBE69:
.LBE68:
.LBB70:
	.loc 1 3920 0
	leal	scratch_obstack.19820@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1616
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1616:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movb	$62, (%eax)
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE70:
.LBB71:
	.loc 1 3921 0
	leal	scratch_obstack.19820@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1618
	movl	$1, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1618:
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movb	$0, (%eax)
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE71:
	.loc 1 3922 0
	movl	8+scratch_obstack.19820@GOTOFF(%ebx), %eax
	.loc 1 3923 0
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE72:
	.size	mangle_class_name_for_template, .-mangle_class_name_for_template
	.type	classtype_mangled_name, @function
classtype_mangled_name:
.LFB73:
	.loc 1 3928 0
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
	.loc 1 3929 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L1622
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	cmpb	$8, %al
	je	.L1622
.LBB72:
	.loc 1 3934 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	most_general_template@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3938 0
	movl	-20(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L1622
.LBB73:
	.loc 1 3940 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3944 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mangle_class_name_for_template
	movl	%eax, -12(%ebp)
	.loc 1 3945 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3946 0
	movl	-8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 52(%edx)
	.loc 1 3947 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1626
.L1622:
.LBE73:
.LBE72:
	.loc 1 3951 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
.L1626:
	movl	-24(%ebp), %eax
	.loc 1 3952 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE73:
	.size	classtype_mangled_name, .-classtype_mangled_name
	.type	add_pending_template, @function
add_pending_template:
.LFB74:
	.loc 1 3957 0
	pushl	%ebp
.LCFI241:
	movl	%esp, %ebp
.LCFI242:
	pushl	%ebx
.LCFI243:
	subl	$36, %esp
.LCFI244:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3960 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L1629
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1631
.L1629:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -28(%ebp)
.L1631:
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3964 0
	movl	-16(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1644
	.loc 1 3970 0
	movl	current_tinst_level@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1634
	movl	current_tinst_level@GOTOFF(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L1636
.L1634:
	movl	$1, -24(%ebp)
	jmp	.L1637
.L1636:
	movl	$0, -24(%ebp)
.L1637:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3972 0
	cmpl	$0, -8(%ebp)
	je	.L1638
	.loc 1 3973 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_tinst_level@PLT
.L1638:
	.loc 1 3975 0
	movl	current_tinst_level@GOTOFF(%ebx), %edx
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tree_cons@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3976 0
	movl	last_pending_template@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1640
	.loc 1 3977 0
	movl	last_pending_template@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L1642
.L1640:
	.loc 1 3979 0
	movl	-12(%ebp), %eax
	movl	%eax, pending_templates@GOTOFF(%ebx)
.L1642:
	.loc 1 3981 0
	movl	-12(%ebp), %eax
	movl	%eax, last_pending_template@GOTOFF(%ebx)
	.loc 1 3983 0
	movl	-16(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$2, %eax
	movb	%al, 11(%edx)
	.loc 1 3985 0
	cmpl	$0, -8(%ebp)
	je	.L1644
	.loc 1 3986 0
	call	pop_tinst_level@PLT
.L1644:
	.loc 1 3987 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE74:
	.size	add_pending_template, .-add_pending_template
	.section	.rodata
	.type	__FUNCTION__.20219, @object
	.size	__FUNCTION__.20219, 25
__FUNCTION__.20219:
	.string	"lookup_template_function"
.LC82:
	.string	"non-template used as template"
	.text
.globl lookup_template_function
	.type	lookup_template_function, @function
lookup_template_function:
.LFB75:
	.loc 1 3997 0
	pushl	%ebp
.LCFI245:
	movl	%esp, %ebp
.LCFI246:
	pushl	%ebx
.LCFI247:
	subl	$52, %esp
.LCFI248:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4000 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L1646
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1648
.L1646:
	.loc 1 4001 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1649
.L1648:
	.loc 1 4003 0
	cmpl	$0, 8(%ebp)
	je	.L1650
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1652
.L1650:
	.loc 1 4006 0
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4007 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1649
.L1652:
	.loc 1 4010 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L1653
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	je	.L1653
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	je	.L1653
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	je	.L1653
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-50, %al
	jne	.L1658
.L1653:
	movl	$1, -24(%ebp)
	jmp	.L1659
.L1658:
	movl	$0, -24(%ebp)
.L1659:
	cmpl	$0, -24(%ebp)
	jne	.L1660
	leal	__FUNCTION__.20219@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4015, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1660:
	.loc 1 4017 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L1662
	.loc 1 4019 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	116(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$203, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 4023 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1649
.L1662:
	.loc 1 4026 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4027 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	je	.L1664
	cmpl	$0, -8(%ebp)
	jne	.L1666
.L1664:
	.loc 1 4028 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	116(%eax), %eax
	movl	%eax, -8(%ebp)
.L1666:
	.loc 1 4030 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$203, (%esp)
	call	build@PLT
	movl	%eax, -28(%ebp)
.L1649:
	movl	-28(%ebp), %eax
	.loc 1 4031 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE75:
	.size	lookup_template_function, .-lookup_template_function
	.type	maybe_get_template_decl_from_type_decl, @function
maybe_get_template_decl_from_type_decl:
.LFB76:
	.loc 1 4043 0
	pushl	%ebp
.LCFI249:
	movl	%esp, %ebp
.LCFI250:
	subl	$4, %esp
.LCFI251:
	.loc 1 4044 0
	cmpl	$0, 8(%ebp)
	je	.L1669
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L1669
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1669
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1673
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1669
.L1673:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1675
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1675
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1675
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1675
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1669
.L1675:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L1669
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L1681
.L1669:
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
.L1681:
	movl	-4(%ebp), %eax
	.loc 1 4050 0
	leave
	ret
.LFE76:
	.size	maybe_get_template_decl_from_type_decl, .-maybe_get_template_decl_from_type_decl
	.section	.rodata
	.type	__FUNCTION__.20325, @object
	.size	__FUNCTION__.20325, 22
__FUNCTION__.20325:
	.string	"lookup_template_class"
.LC83:
	.string	"`%T' is not a template"
	.align 4
.LC84:
	.string	"non-template type `%T' used as a template"
.LC85:
	.string	"for template declaration `%D'"
	.text
.globl lookup_template_class
	.type	lookup_template_class, @function
lookup_template_class:
.LFB77:
	.loc 1 4079 0
	pushl	%ebp
.LCFI252:
	movl	%esp, %ebp
.LCFI253:
	pushl	%esi
.LCFI254:
	pushl	%ebx
.LCFI255:
	subl	$208, %esp
.LCFI256:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4080 0
	movl	$0, -92(%ebp)
	.loc 1 4083 0
	movl	$11, (%esp)
	call	timevar_push@PLT
	.loc 1 4084 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L1684
	.loc 1 4086 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L1686
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1686
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L1689
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -196(%ebp)
	jmp	.L1691
.L1689:
	movl	$0, -196(%ebp)
.L1691:
	movl	-196(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$-64, %al
	jne	.L1686
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L1693
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -192(%ebp)
	jmp	.L1695
.L1693:
	movl	$0, -192(%ebp)
.L1695:
	movl	-192(%ebp), %edx
	movzbl	37(%edx), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1686
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L1697
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -188(%ebp)
	jmp	.L1699
.L1697:
	movl	$0, -188(%ebp)
.L1699:
	movl	-188(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$33, %al
	je	.L1700
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L1702
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -184(%ebp)
	jmp	.L1704
.L1702:
	movl	$0, -184(%ebp)
.L1704:
	movl	-184(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$36, %al
	je	.L1700
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L1706
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -180(%ebp)
	jmp	.L1708
.L1706:
	movl	$0, -180(%ebp)
.L1708:
	movl	-180(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$34, %al
	je	.L1700
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L1710
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -176(%ebp)
	jmp	.L1712
.L1710:
	movl	$0, -176(%ebp)
.L1712:
	movl	-176(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$-64, %al
	jne	.L1686
.L1700:
	.loc 1 4088 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L1713
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -172(%ebp)
	jmp	.L1715
.L1713:
	movl	$0, -172(%ebp)
.L1715:
	movl	-172(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 4086 0
	jmp	.L1716
.L1686:
	.loc 1 4091 0
	cmpl	$0, 20(%ebp)
	je	.L1717
	.loc 1 4092 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	push_decl_namespace@PLT
.L1717:
	.loc 1 4093 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_name@PLT
	movl	%eax, -92(%ebp)
	.loc 1 4094 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_get_template_decl_from_type_decl
	movl	%eax, -92(%ebp)
	.loc 1 4095 0
	cmpl	$0, 20(%ebp)
	je	.L1716
	.loc 1 4096 0
	call	pop_decl_namespace@PLT
.L1716:
	.loc 1 4098 0
	cmpl	$0, -92(%ebp)
	je	.L1720
	.loc 1 4099 0
	movl	-92(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, 20(%ebp)
.L1720:
	.loc 1 4100 0
	cmpl	$0, -92(%ebp)
	je	.L1732
	movl	-92(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L1732
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1725
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1725
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1725
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1725
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1732
.L1725:
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1732
	.loc 1 4105 0
	movl	-92(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4106 0
	jmp	.L1731
.L1684:
	.loc 1 4109 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L1733
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1731
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1731
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1731
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1731
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1733
.L1731:
.LBB74:
	.loc 1 4113 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 4117 0
	movl	-80(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	jne	.L1739
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1739
	.loc 1 4118 0
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -80(%ebp)
.L1739:
	.loc 1 4120 0
	movl	-80(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L1732
	.loc 1 4122 0
	movl	-80(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 4123 0
	movl	-92(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4109 0
	jmp	.L1732
.L1733:
.LBE74:
	.loc 1 4126 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1744
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L1746
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1744
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1744
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1744
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1744
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1746
.L1744:
	.loc 1 4129 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1752
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -168(%ebp)
	jmp	.L1754
.L1752:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L1755
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -164(%ebp)
	jmp	.L1757
.L1755:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1758
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -160(%ebp)
	jmp	.L1760
.L1758:
	movl	$0, -160(%ebp)
.L1760:
	movl	-160(%ebp), %edx
	movl	%edx, -164(%ebp)
.L1757:
	movl	-164(%ebp), %eax
	movl	%eax, -168(%ebp)
.L1754:
	movl	-168(%ebp), %edx
	movl	16(%edx), %eax
	movl	%eax, -92(%ebp)
	.loc 1 4130 0
	movl	-92(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4126 0
	jmp	.L1732
.L1746:
	.loc 1 4132 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1732
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L1732
	.loc 1 4135 0
	movl	8(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 4136 0
	movl	-92(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4137 0
	movl	-92(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, 20(%ebp)
.L1732:
	.loc 1 4145 0
	cmpl	$0, -92(%ebp)
	jne	.L1763
	.loc 1 4147 0
	movl	28(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1765
	.loc 1 4148 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC83@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1765:
	.loc 1 4149 0
	movl	$11, (%esp)
	call	timevar_pop@PLT
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -156(%ebp)
	jmp	.L1767
.L1763:
	.loc 1 4152 0
	movl	-92(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1768
	cmpl	$0, 12(%ebp)
	je	.L1770
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L1772
.L1770:
	movl	-92(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1773
	movl	-92(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L1772
	movl	-92(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L1772
	movl	-92(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L1772
	movl	-92(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L1772
.L1773:
	movl	-92(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-92(%ebp), %eax
	je	.L1772
.L1768:
	.loc 1 4159 0
	movl	28(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1778
	.loc 1 4161 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC84@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4162 0
	cmpl	$0, 16(%ebp)
	je	.L1778
	.loc 1 4163 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC85@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
.L1778:
	.loc 1 4165 0
	movl	$11, (%esp)
	call	timevar_pop@PLT
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -156(%ebp)
	jmp	.L1767
.L1772:
	.loc 1 4168 0
	movl	-92(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1781
	movl	-92(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1781
	movl	-92(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L1784
	movl	-92(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L1784
	movl	-92(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L1784
	movl	-92(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1781
.L1784:
.LBB75:
	.loc 1 4176 0
	movl	-92(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 4194 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L1788
	.loc 1 4195 0
	call	current_template_args@PLT
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	add_to_template_args
	movl	%eax, 12(%ebp)
.L1788:
	.loc 1 4197 0
	movl	$1, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	coerce_template_parms
	movl	%eax, -72(%ebp)
	.loc 1 4199 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-72(%ebp), %eax
	jne	.L1790
	.loc 1 4200 0
	movl	$11, (%esp)
	call	timevar_pop@PLT
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -156(%ebp)
	jmp	.L1767
.L1790:
	.loc 1 4202 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %edx
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bind_template_template_parm@PLT
	movl	%eax, -76(%ebp)
	.loc 1 4203 0
	movl	$11, (%esp)
	call	timevar_pop@PLT
	movl	-76(%ebp), %eax
	movl	%eax, -156(%ebp)
	jmp	.L1767
.L1781:
.LBE75:
.LBB76:
	.loc 1 4207 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 4210 0
	movl	$0, -56(%ebp)
	.loc 1 4216 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	most_general_template@PLT
	movl	%eax, -64(%ebp)
	.loc 1 4217 0
	movl	-64(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 4218 0
	movl	-88(%ebp), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 4219 0
	cmpl	$0, 12(%ebp)
	je	.L1792
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L1792
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L1792
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1792
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L1792
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -152(%ebp)
	jmp	.L1798
.L1792:
	movl	$1, -152(%ebp)
.L1798:
	movl	-152(%ebp), %edx
	movl	%edx, -48(%ebp)
	.loc 1 4221 0
	cmpl	$1, -48(%ebp)
	jne	.L1799
	cmpl	$1, -44(%ebp)
	jle	.L1799
	.loc 1 4235 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1802
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -148(%ebp)
	jmp	.L1804
.L1802:
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L1805
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -144(%ebp)
	jmp	.L1807
.L1805:
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1808
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -140(%ebp)
	jmp	.L1810
.L1808:
	movl	$0, -140(%ebp)
.L1810:
	movl	-140(%ebp), %eax
	movl	%eax, -144(%ebp)
.L1807:
	movl	-144(%ebp), %edx
	movl	%edx, -148(%ebp)
.L1804:
	movl	-148(%ebp), %edx
	movl	20(%edx), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	add_outermost_template_args
	movl	%eax, 12(%ebp)
	.loc 1 4238 0
	cmpl	$0, 12(%ebp)
	je	.L1811
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L1811
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L1811
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1811
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L1811
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1817
.L1811:
	movl	$1, -136(%ebp)
.L1817:
	movl	-136(%ebp), %eax
	movl	%eax, -48(%ebp)
.L1799:
	.loc 1 4242 0
	movl	-44(%ebp), %eax
	cmpl	-48(%ebp), %eax
	je	.L1818
	leal	__FUNCTION__.20325@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4242, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1818:
	.loc 1 4246 0
	movl	-64(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 4251 0
	cmpl	$1, -44(%ebp)
	jle	.L1820
.LBB77:
	.loc 1 4255 0
	cmpl	$0, 12(%ebp)
	je	.L1822
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L1822
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L1822
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1822
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L1822
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -132(%ebp)
	jmp	.L1828
.L1822:
	movl	$1, -132(%ebp)
.L1828:
	movl	-132(%ebp), %edx
	movl	%edx, -32(%ebp)
	.loc 1 4257 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -28(%ebp)
	.loc 1 4260 0
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-92(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 4261 0
	jmp	.L1829
.L1830:
.LBB78:
	.loc 1 4266 0
	movl	-84(%ebp), %eax
	movl	20(%eax), %edx
	movl	$1, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	coerce_template_parms
	movl	%eax, -24(%ebp)
	.loc 1 4267 0
	movl	-36(%ebp), %ecx
	subl	$1, %ecx
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 20(%edx,%ecx,4)
	.loc 1 4273 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	leal	-1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 16(%eax)
.LBE78:
	.loc 1 4262 0
	subl	$1, -36(%ebp)
	movl	-84(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -84(%ebp)
.L1829:
	.loc 1 4261 0
	cmpl	$0, -36(%ebp)
	jle	.L1831
	cmpl	$0, -84(%ebp)
	jne	.L1830
.L1831:
	.loc 1 4277 0
	movl	12(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 16(%eax)
	.loc 1 4279 0
	movl	-28(%ebp), %eax
	movl	%eax, 12(%ebp)
	jmp	.L1833
.L1820:
.LBE77:
	.loc 1 4282 0
	movl	$1, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_innermost_template_args@PLT
	movl	%eax, %edx
	movl	-88(%ebp), %eax
	movl	20(%eax), %ecx
	movl	$1, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	coerce_template_parms
	movl	%eax, 12(%ebp)
.L1833:
	.loc 1 4288 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1834
	.loc 1 4290 0
	movl	$11, (%esp)
	call	timevar_pop@PLT
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -156(%ebp)
	jmp	.L1767
.L1834:
	.loc 1 4300 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1836
	movl	-68(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -128(%ebp)
	jmp	.L1838
.L1836:
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L1839
	movl	-68(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -124(%ebp)
	jmp	.L1841
.L1839:
	movl	-68(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1842
	movl	-68(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L1844
.L1842:
	movl	$0, -120(%ebp)
.L1844:
	movl	-120(%ebp), %eax
	movl	%eax, -124(%ebp)
.L1841:
	movl	-124(%ebp), %edx
	movl	%edx, -128(%ebp)
.L1838:
	movl	-128(%ebp), %edx
	movl	20(%edx), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comp_template_args@PLT
	testl	%eax, %eax
	je	.L1845
	.loc 1 4303 0
	movl	-68(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 4305 0
	cmpl	$0, 24(%ebp)
	jne	.L1845
	movl	-92(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-92(%ebp), %eax
	jne	.L1845
.LBB79:
	.loc 1 4313 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4314 0
	jmp	.L1849
.L1850:
	.loc 1 4316 0
	movl	$0, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L1851
	.loc 1 4315 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L1853
	movl	-20(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1855
.L1853:
	movl	-20(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -116(%ebp)
.L1855:
	movl	-116(%ebp), %eax
	movl	%eax, -20(%ebp)
.L1849:
	.loc 1 4314 0
	cmpl	$0, -20(%ebp)
	jne	.L1850
.L1851:
	.loc 1 4319 0
	cmpl	$0, -20(%ebp)
	jne	.L1845
	.loc 1 4323 0
	movl	$0, -56(%ebp)
.L1845:
.LBE79:
	.loc 1 4326 0
	cmpl	$0, -56(%ebp)
	je	.L1857
	.loc 1 4327 0
	movl	$11, (%esp)
	call	timevar_pop@PLT
	movl	-56(%ebp), %edx
	movl	%edx, -156(%ebp)
	jmp	.L1767
.L1857:
	.loc 1 4329 0
	movl	-92(%ebp), %eax
	addl	$124, %eax
	movl	%eax, -52(%ebp)
	.loc 1 4330 0
	jmp	.L1859
.L1860:
	.loc 1 4332 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comp_template_args@PLT
	testl	%eax, %eax
	je	.L1861
	.loc 1 4334 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 4338 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4339 0
	movl	-92(%ebp), %eax
	movl	124(%eax), %edx
	movl	-56(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4341 0
	movl	-92(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	%eax, 124(%edx)
	.loc 1 4343 0
	movl	$11, (%esp)
	call	timevar_pop@PLT
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -156(%ebp)
	jmp	.L1767
.L1861:
	.loc 1 4331 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L1859:
	.loc 1 4330 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1860
	.loc 1 4350 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	movl	%eax, -40(%ebp)
	.loc 1 4352 0
	cmpl	$0, -40(%ebp)
	jne	.L1864
	movl	-92(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-92(%ebp), %eax
	je	.L1864
	movl	-92(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L1867
	movl	-92(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L1869
.L1867:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -112(%ebp)
.L1869:
	movl	-112(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$39, %al
	jne	.L1864
	.loc 1 4356 0
	movl	-92(%ebp), %eax
	movl	52(%eax), %edx
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xref_tag_from_type@PLT
	movl	%eax, -56(%ebp)
	.loc 1 4359 0
	movl	$11, (%esp)
	call	timevar_pop@PLT
	movl	-56(%ebp), %eax
	movl	%eax, -156(%ebp)
	jmp	.L1767
.L1864:
	.loc 1 4362 0
	movl	-92(%ebp), %eax
	movl	56(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, 20(%ebp)
	.loc 1 4364 0
	cmpl	$0, 20(%ebp)
	jne	.L1871
	.loc 1 4365 0
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 20(%ebp)
.L1871:
	.loc 1 4368 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1873
	.loc 1 4370 0
	cmpl	$0, -40(%ebp)
	jne	.L1875
	.loc 1 4372 0
	movl	-68(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, (%esp)
	call	set_current_access_from_decl
	.loc 1 4373 0
	movl	-68(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	start_enum@PLT
	movl	%eax, -84(%ebp)
	jmp	.L1878
.L1875:
	.loc 1 4380 0
	movl	$11, (%esp)
	call	make_node@PLT
	movl	%eax, -84(%ebp)
	jmp	.L1878
.L1873:
	.loc 1 4384 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	make_aggr_type@PLT
	movl	%eax, -84(%ebp)
	.loc 1 4385 0
	movl	-84(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-68(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	7(%eax), %eax
	shrb	$6, %al
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$6, %edx
	movzbl	7(%ecx), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, 7(%ecx)
	.loc 1 4387 0
	movl	-84(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	8(%edx), %eax
	orl	$16, %eax
	movb	%al, 8(%edx)
	.loc 1 4388 0
	movl	-84(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	8(%edx), %eax
	andl	$-13, %eax
	orl	$4, %eax
	movb	%al, 8(%edx)
	.loc 1 4389 0
	movl	-68(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	-84(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	39(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 39(%ecx)
	.loc 1 4392 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 20(%ebp)
	jne	.L1878
	.loc 1 4393 0
	movl	-92(%ebp), %eax
	movl	52(%eax), %edx
	movl	$0, 8(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	pushtag@PLT
.L1878:
	.loc 1 4398 0
	movl	-84(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	jne	.L1880
	.loc 1 4400 0
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 20(%ebp)
	je	.L1882
	movl	20(%ebp), %edx
	movl	%edx, -108(%ebp)
	jmp	.L1884
.L1882:
	movl	$0, -108(%ebp)
.L1884:
	movl	-84(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%edx, 80(%eax)
	.loc 1 4402 0
	movl	-92(%ebp), %eax
	movl	52(%eax), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	create_implicit_typedef@PLT
	movl	%eax, -60(%ebp)
	.loc 1 4403 0
	movl	-84(%ebp), %eax
	movl	80(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 4404 0
	movl	-84(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4405 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	-60(%ebp), %ecx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	jmp	.L1885
.L1880:
	.loc 1 4409 0
	movl	-84(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -60(%ebp)
.L1885:
	.loc 1 4411 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movzbl	10(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	-60(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	10(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 4413 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movzbl	10(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movl	-60(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	10(%ecx), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 4419 0
	cmpl	$1, -44(%ebp)
	je	.L1886
	cmpl	$0, -40(%ebp)
	jne	.L1886
	movl	-92(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-92(%ebp), %eax
	je	.L1889
.L1886:
	.loc 1 4422 0
	movl	-92(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 4419 0
	jmp	.L1890
.L1889:
	.loc 1 4428 0
	movl	-92(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 4429 0
	jmp	.L1891
.L1892:
.LBB80:
	.loc 1 4432 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4436 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	cmpb	$8, %al
	je	.L1893
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	je	.L1893
	.loc 1 4443 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	leal	-1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 4444 0
	movl	-56(%ebp), %eax
	movl	16(%eax), %edx
	movl	16(%edx), %eax
	subl	$1, %eax
	movl	%eax, 16(%edx)
	.loc 1 4448 0
	movl	-56(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comp_template_args@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4451 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 4452 0
	movl	-56(%ebp), %eax
	movl	16(%eax), %edx
	movl	16(%edx), %eax
	addl	$1, %eax
	movl	%eax, 16(%edx)
	.loc 1 4454 0
	cmpl	$0, -16(%ebp)
	je	.L1893
	.loc 1 4456 0
	movl	-12(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 4457 0
	jmp	.L1897
.L1893:
.LBE80:
	.loc 1 4429 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L1891:
	cmpl	$0, -56(%ebp)
	jne	.L1892
.L1897:
	.loc 1 4461 0
	cmpl	$0, -56(%ebp)
	jne	.L1890
	.loc 1 4472 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	leal	-1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 4473 0
	movl	$0, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -56(%ebp)
	.loc 1 4474 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 16(%eax)
.L1890:
	.loc 1 4478 0
	movl	-84(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1899
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	-84(%ebp), %eax
	movl	%edx, 76(%eax)
	jmp	.L1901
.L1899:
	movl	-84(%ebp), %eax
	movl	92(%eax), %esi
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, 64(%esi)
.L1901:
	.loc 1 4479 0
	movl	-92(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	-92(%ebp), %eax
	movl	%edx, 124(%eax)
	.loc 1 4483 0
	movl	-84(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1902
	cmpl	$0, -40(%ebp)
	jne	.L1902
	.loc 1 4492 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_enum
.L1902:
	.loc 1 4496 0
	movl	-84(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1905
	.loc 1 4497 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	classtype_mangled_name
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 52(%eax)
.L1905:
	.loc 1 4498 0
	cmpl	$0, -40(%ebp)
	jne	.L1907
	.loc 1 4504 0
	movl	-84(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1914
	movl	flag_external_templates@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1914
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L1914
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1914
	.loc 1 4508 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	add_pending_template
	jmp	.L1914
.L1907:
	.loc 1 4513 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movzbl	33(%edx), %eax
	orl	$64, %eax
	movb	%al, 33(%edx)
.L1914:
	.loc 1 4515 0
	movl	$11, (%esp)
	call	timevar_pop@PLT
	movl	-84(%ebp), %eax
	movl	%eax, -156(%ebp)
.L1767:
	movl	-156(%ebp), %eax
.LBE76:
	.loc 1 4518 0
	addl	$208, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE77:
	.size	lookup_template_class, .-lookup_template_class
	.type	for_each_template_parm_r, @function
for_each_template_parm_r:
.LFB78:
	.loc 1 4534 0
	pushl	%ebp
.LCFI257:
	movl	%esp, %ebp
.LCFI258:
	pushl	%ebx
.LCFI259:
	subl	$100, %esp
.LCFI260:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4535 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4536 0
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4537 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4538 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4543 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	htab_find_slot@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4544 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1917
	.loc 1 4546 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 4547 0
	movl	$0, -80(%ebp)
	jmp	.L1919
.L1917:
	.loc 1 4549 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4551 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L1920
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	movl	80(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	for_each_template_parm
	testl	%eax, %eax
	je	.L1920
	.loc 1 4553 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1919
.L1920:
	.loc 1 4555 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$11, %eax
	movl	%eax, -84(%ebp)
	cmpl	$204, -84(%ebp)
	ja	.L1923
	movl	-84(%ebp), %eax
	sall	$2, %eax
	movl	.L1938@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1938:
	.long	.L1924@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1925@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1926@GOTOFF
	.long	.L1924@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1927@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1928@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1929@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1928@GOTOFF
	.long	.L1929@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1930@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1930@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1931@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1932@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1933@GOTOFF
	.long	.L1934@GOTOFF
	.long	.L1935@GOTOFF
	.long	.L1935@GOTOFF
	.long	.L1935@GOTOFF
	.long	.L1936@GOTOFF
	.long	.L1937@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1923@GOTOFF
	.long	.L1932@GOTOFF
	.long	.L1932@GOTOFF
	.long	.L1932@GOTOFF
	.long	.L1932@GOTOFF
	.long	.L1932@GOTOFF
	.long	.L1932@GOTOFF
	.long	.L1932@GOTOFF
	.long	.L1932@GOTOFF
	.long	.L1932@GOTOFF
	.long	.L1932@GOTOFF
	.text
.L1926:
	.loc 1 4558 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1924
	movl	-28(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1924
	movl	-28(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1923
.L1924:
	.loc 1 4564 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1941
	movl	-28(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	sete	-74(%ebp)
	jmp	.L1943
.L1941:
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L1944
	movl	-28(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	sete	-73(%ebp)
	jmp	.L1946
.L1944:
	movl	-28(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1947
	movl	-28(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	jne	.L1949
.L1947:
	movl	$1, -72(%ebp)
	jmp	.L1950
.L1949:
	movl	$0, -72(%ebp)
.L1950:
	movzbl	-72(%ebp), %eax
	movb	%al, -73(%ebp)
.L1946:
	movzbl	-73(%ebp), %eax
	movb	%al, -74(%ebp)
.L1943:
	cmpb	$0, -74(%ebp)
	je	.L1951
	.loc 1 4565 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	jmp	.L1923
.L1951:
	.loc 1 4566 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -68(%ebp)
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1954
	movl	-28(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1956
.L1954:
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L1957
	movl	-28(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1959
.L1957:
	movl	-28(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1960
	movl	-28(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1962
.L1960:
	movl	$0, -56(%ebp)
.L1962:
	movl	-56(%ebp), %eax
	movl	%eax, -60(%ebp)
.L1959:
	movl	-60(%ebp), %eax
	movl	%eax, -64(%ebp)
.L1956:
	movl	-64(%ebp), %eax
	movl	20(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	for_each_template_parm
	testl	%eax, %eax
	je	.L1923
	.loc 1 4568 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1919
.L1925:
	.loc 1 4574 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	movl	64(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	for_each_template_parm
	testl	%eax, %eax
	je	.L1927
	.loc 1 4576 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1919
.L1927:
	.loc 1 4581 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	for_each_template_parm
	testl	%eax, %eax
	je	.L1965
	.loc 1 4582 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1919
.L1965:
.LBB81:
	.loc 1 4593 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1967
.L1968:
	.loc 1 4594 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	for_each_template_parm
	testl	%eax, %eax
	je	.L1969
	.loc 1 4596 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1919
.L1969:
	.loc 1 4593 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L1967:
	cmpl	$0, -8(%ebp)
	jne	.L1968
	.loc 1 4600 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 4602 0
	jmp	.L1923
.L1928:
.LBE81:
	.loc 1 4606 0
	movl	-28(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L1929
	movl	-28(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L1929
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	for_each_template_parm
	testl	%eax, %eax
	je	.L1929
	.loc 1 4609 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1919
.L1929:
	.loc 1 4614 0
	movl	-28(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L1923
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	movl	56(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	for_each_template_parm
	testl	%eax, %eax
	je	.L1923
	.loc 1 4617 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1919
.L1936:
	.loc 1 4622 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1978
	movl	-28(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1980
.L1978:
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L1981
	movl	-28(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1983
.L1981:
	movl	-28(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1984
	movl	-28(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1986
.L1984:
	movl	$0, -40(%ebp)
.L1986:
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
.L1983:
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
.L1980:
	movl	-48(%ebp), %eax
	movl	20(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	for_each_template_parm
	testl	%eax, %eax
	je	.L1935
	.loc 1 4623 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1919
.L1935:
	.loc 1 4629 0
	cmpl	$0, -20(%ebp)
	je	.L1988
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	-20(%ebp), %eax
	call	*%eax
	testl	%eax, %eax
	je	.L1988
	.loc 1 4630 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1919
.L1988:
	.loc 1 4631 0
	cmpl	$0, -20(%ebp)
	jne	.L1923
	.loc 1 4632 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1919
.L1934:
	.loc 1 4637 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1993
	movl	-28(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1993
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L1996
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L1996
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L1996
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1993
.L1996:
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	for_each_template_parm
	testl	%eax, %eax
	je	.L1993
	.loc 1 4639 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1919
.L1993:
	.loc 1 4642 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 4643 0
	jmp	.L1923
.L1937:
	.loc 1 4646 0
	cmpl	$0, -20(%ebp)
	je	.L2001
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	for_each_template_parm
	testl	%eax, %eax
	je	.L1923
.L2001:
	.loc 1 4649 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1919
.L1931:
	.loc 1 4653 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1923
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1923
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1923
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1923
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	for_each_template_parm
	testl	%eax, %eax
	je	.L1923
	.loc 1 4657 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1919
.L1930:
	.loc 1 4664 0
	cmpl	$0, -20(%ebp)
	jne	.L1923
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L1923
	.loc 1 4665 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1919
.L1932:
	.loc 1 4679 0
	cmpl	$0, -20(%ebp)
	jne	.L1923
	.loc 1 4680 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1919
.L1933:
	.loc 1 4687 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 4688 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	for_each_template_parm
	testl	%eax, %eax
	je	.L1923
	.loc 1 4690 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1919
.L1923:
	.loc 1 4698 0
	movl	$0, -80(%ebp)
.L1919:
	movl	-80(%ebp), %eax
	.loc 1 4699 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE78:
	.size	for_each_template_parm_r, .-for_each_template_parm_r
	.type	for_each_template_parm, @function
for_each_template_parm:
.LFB79:
	.loc 1 4716 0
	pushl	%ebp
.LCFI261:
	movl	%esp, %ebp
.LCFI262:
	pushl	%ebx
.LCFI263:
	subl	$36, %esp
.LCFI264:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4721 0
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4722 0
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4729 0
	cmpl	$0, 20(%ebp)
	je	.L2018
	.loc 1 4730 0
	movl	20(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2020
.L2018:
	.loc 1 4732 0
	movl	htab_eq_pointer@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	htab_hash_pointer@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$37, (%esp)
	call	htab_create@PLT
	movl	%eax, -12(%ebp)
.L2020:
	.loc 1 4734 0
	movl	$0, 12(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	for_each_template_parm_r@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	walk_tree@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 4740 0
	cmpl	$0, 20(%ebp)
	jne	.L2021
	.loc 1 4741 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	htab_delete@PLT
.L2021:
	.loc 1 4743 0
	movl	-8(%ebp), %eax
	.loc 1 4744 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE79:
	.size	for_each_template_parm, .-for_each_template_parm
.globl uses_template_parms
	.type	uses_template_parms, @function
uses_template_parms:
.LFB80:
	.loc 1 4749 0
	pushl	%ebp
.LCFI265:
	movl	%esp, %ebp
.LCFI266:
	subl	$24, %esp
.LCFI267:
	.loc 1 4750 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_template_parm
	.loc 1 4751 0
	leave
	ret
.LFE80:
	.size	uses_template_parms, .-uses_template_parms
	.section	.rodata
	.align 4
.LC86:
	.string	"template instantiation depth exceeds maximum of %d (use -ftemplate-depth-NN to increase the maximum) instantiating `%D'"
	.text
.globl push_tinst_level
	.type	push_tinst_level, @function
push_tinst_level:
.LFB81:
	.loc 1 4767 0
	pushl	%ebp
.LCFI268:
	movl	%esp, %ebp
.LCFI269:
	pushl	%ebx
.LCFI270:
	subl	$36, %esp
.LCFI271:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4770 0
	movl	tinst_depth@GOTOFF(%ebx), %eax
	movl	max_tinst_depth@GOT(%ebx), %edx
	movl	(%edx), %edx
	cmpl	%edx, %eax
	jl	.L2027
	.loc 1 4775 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	je	.L2029
	.loc 1 4776 0
	movl	$0, -24(%ebp)
	jmp	.L2031
.L2029:
	.loc 1 4778 0
	movl	tinst_level_tick@GOTOFF(%ebx), %eax
	movl	%eax, last_template_error_tick@GOTOFF(%ebx)
	.loc 1 4779 0
	movl	max_tinst_depth@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4782 0
	call	print_instantiation_context@PLT
	.loc 1 4784 0
	movl	$0, -24(%ebp)
	jmp	.L2031
.L2027:
	.loc 1 4787 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_expr_wfl@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4788 0
	movl	current_tinst_level@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4789 0
	movl	-8(%ebp), %eax
	movl	%eax, current_tinst_level@GOTOFF(%ebx)
	.loc 1 4791 0
	movl	tinst_depth@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, tinst_depth@GOTOFF(%ebx)
	.loc 1 4797 0
	movl	tinst_level_tick@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, tinst_level_tick@GOTOFF(%ebx)
	.loc 1 4798 0
	movl	$1, -24(%ebp)
.L2031:
	movl	-24(%ebp), %eax
	.loc 1 4799 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE81:
	.size	push_tinst_level, .-push_tinst_level
.globl pop_tinst_level
	.type	pop_tinst_level, @function
pop_tinst_level:
.LFB82:
	.loc 1 4806 0
	pushl	%ebp
.LCFI272:
	movl	%esp, %ebp
.LCFI273:
	pushl	%ebx
.LCFI274:
	subl	$20, %esp
.LCFI275:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4807 0
	movl	current_tinst_level@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4811 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	sarl	$12, %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 4812 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 4813 0
	call	extract_interface_info@PLT
	.loc 1 4815 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, current_tinst_level@GOTOFF(%ebx)
	.loc 1 4816 0
	movl	tinst_depth@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, tinst_depth@GOTOFF(%ebx)
	.loc 1 4817 0
	movl	tinst_level_tick@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, tinst_level_tick@GOTOFF(%ebx)
	.loc 1 4818 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE82:
	.size	pop_tinst_level, .-pop_tinst_level
	.type	reopen_tinst_level, @function
reopen_tinst_level:
.LFB83:
	.loc 1 4827 0
	pushl	%ebp
.LCFI276:
	movl	%esp, %ebp
.LCFI277:
	pushl	%ebx
.LCFI278:
	subl	$20, %esp
.LCFI279:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4830 0
	movl	$0, tinst_depth@GOTOFF(%ebx)
	.loc 1 4831 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2036
.L2037:
	.loc 1 4832 0
	movl	tinst_depth@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, tinst_depth@GOTOFF(%ebx)
	.loc 1 4831 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L2036:
	cmpl	$0, -8(%ebp)
	jne	.L2037
	.loc 1 4834 0
	movl	8(%ebp), %eax
	movl	%eax, current_tinst_level@GOTOFF(%ebx)
	.loc 1 4835 0
	call	pop_tinst_level@PLT
	.loc 1 4836 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE83:
	.size	reopen_tinst_level, .-reopen_tinst_level
.globl tinst_for_decl
	.type	tinst_for_decl, @function
tinst_for_decl:
.LFB84:
	.loc 1 4843 0
	pushl	%ebp
.LCFI280:
	movl	%esp, %ebp
.LCFI281:
	subl	$16, %esp
.LCFI282:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 4844 0
	movl	current_tinst_level@GOTOFF(%ecx), %eax
	movl	%eax, -4(%ebp)
	.loc 1 4846 0
	cmpl	$0, -4(%ebp)
	je	.L2041
	.loc 1 4847 0
	jmp	.L2043
.L2044:
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L2043:
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2044
.L2041:
	.loc 1 4849 0
	movl	-4(%ebp), %eax
	.loc 1 4850 0
	leave
	ret
.LFE84:
	.size	tinst_for_decl, .-tinst_for_decl
	.type	tsubst_friend_function, @function
tsubst_friend_function:
.LFB85:
	.loc 1 4861 0
	pushl	%ebp
.LCFI283:
	movl	%esp, %ebp
.LCFI284:
	pushl	%esi
.LCFI285:
	pushl	%ebx
.LCFI286:
	subl	$112, %esp
.LCFI287:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4863 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 4864 0
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 4866 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 4867 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 4869 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L2047
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	%al
	andl	$3, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2047
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L2047
.LBB82:
	.loc 1 4884 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	decl_namespace_context@PLT
	movl	%eax, -48(%ebp)
	.loc 1 4889 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	push_nested_namespace@PLT
	.loc 1 4890 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %edx
	movl	$0, 12(%esp)
	movl	$3, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, -56(%ebp)
	.loc 1 4892 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	pop_nested_namespace@PLT
	.loc 1 4893 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %edx
	movl	$0, 12(%esp)
	movl	$3, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -60(%ebp)
	.loc 1 4895 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_template_function@PLT
	movl	%eax, -64(%ebp)
	.loc 1 4897 0
	movl	$0, 12(%esp)
	movl	$3, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -76(%ebp)
	.loc 1 4898 0
	movl	$0, 12(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	determine_specialization
	movl	%eax, -52(%ebp)
	.loc 1 4901 0
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_template@PLT
	movl	%eax, -76(%ebp)
	.loc 1 4902 0
	jmp	.L2051
.L2047:
.LBE82:
	.loc 1 4905 0
	movl	$0, 12(%esp)
	movl	$3, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -76(%ebp)
	.loc 1 4917 0
	movl	-76(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-7, %eax
	movb	%al, 6(%edx)
	.loc 1 4918 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L2052
	.loc 1 4920 0
	movl	-76(%ebp), %eax
	movl	64(%eax), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-7, %eax
	movb	%al, 6(%edx)
	.loc 1 4921 0
	movl	-76(%ebp), %eax
	movl	64(%eax), %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	116(%eax), %eax
	movl	%eax, 116(%edx)
.L2052:
	.loc 1 4929 0
	movl	-76(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L2054
	.loc 1 4931 0
	movl	-76(%ebp), %eax
	movl	$0, 104(%eax)
	.loc 1 4932 0
	movl	-76(%ebp), %eax
	movl	$0, 92(%eax)
.L2054:
	.loc 1 4935 0
	movl	-76(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2056
	movl	-76(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L2058
	movl	-76(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L2058
	movl	-76(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L2058
	movl	-76(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L2058
.L2056:
	movl	-76(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L2062
	movl	-76(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2064
.L2062:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
.L2064:
	movl	-92(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$39, %al
	jne	.L2058
.LBB83:
	.loc 1 4946 0
	movl	-76(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 4947 0
	movl	-76(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L2066
	.loc 1 4950 0
	movl	-76(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 4952 0
	movl	-76(%ebp), %eax
	movl	64(%eax), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 4954 0
	movl	-76(%ebp), %eax
	movl	64(%eax), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L2068
.L2066:
	.loc 1 4959 0
	movl	-76(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 4960 0
	movl	$0, -36(%ebp)
.L2068:
	.loc 1 4966 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_namespace_context@PLT
	movl	%eax, -32(%ebp)
	.loc 1 4967 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	push_nested_namespace@PLT
	.loc 1 4968 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl_namespace_level@PLT
	movl	%eax, -44(%ebp)
	.loc 1 4969 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	pop_nested_namespace@PLT
	.loc 1 4971 0
	movl	-44(%ebp), %eax
	cmpl	-76(%ebp), %eax
	je	.L2051
	.loc 1 5007 0
	cmpl	$0, -28(%ebp)
	je	.L2071
	.loc 1 5018 0
	movl	-44(%ebp), %eax
	movl	136(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 5020 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L2073
	.loc 1 5021 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	most_general_template@PLT
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	reregister_specialization
	jmp	.L2071
.L2073:
.LBB84:
	.loc 1 5029 0
	movl	-44(%ebp), %eax
	movl	64(%eax), %eax
	movl	136(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 5032 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5033 0
	movl	-44(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 5034 0
	jmp	.L2075
.L2076:
.LBB85:
	.loc 1 5037 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5039 0
	movl	-16(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %esi
	movl	-16(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	add_outermost_template_args
	movl	%eax, 20(%esi)
.LBE85:
	.loc 1 5035 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L2075:
	.loc 1 5034 0
	cmpl	$0, -24(%ebp)
	jne	.L2076
	.loc 1 5047 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	most_general_template@PLT
	movl	%eax, -24(%ebp)
	.loc 1 5048 0
	movl	-24(%ebp), %eax
	cmpl	-44(%ebp), %eax
	je	.L2071
	.loc 1 5050 0
	movl	-44(%ebp), %eax
	movl	28(%eax), %edx
	movl	-24(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	chainon@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 5053 0
	movl	-44(%ebp), %eax
	movl	$0, 28(%eax)
.L2071:
.LBE84:
	.loc 1 5060 0
	movl	-44(%ebp), %eax
	movl	%eax, -76(%ebp)
	.loc 1 4935 0
	jmp	.L2051
.L2058:
.LBE83:
	.loc 1 5063 0
	movl	-76(%ebp), %eax
	movl	56(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2051
.LBB86:
	.loc 1 5068 0
	movl	-76(%ebp), %eax
	movl	56(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	check_classfn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5070 0
	cmpl	$0, -12(%ebp)
	je	.L2051
	.loc 1 5071 0
	movl	-12(%ebp), %eax
	movl	%eax, -76(%ebp)
.L2051:
.LBE86:
	.loc 1 5075 0
	movl	lineno@GOT(%ebx), %edx
	movl	-72(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5076 0
	movl	input_filename@GOT(%ebx), %edx
	movl	-68(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5077 0
	movl	-76(%ebp), %eax
	.loc 1 5078 0
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE85:
	.size	tsubst_friend_function, .-tsubst_friend_function
	.type	tsubst_friend_class, @function
tsubst_friend_class:
.LFB86:
	.loc 1 5090 0
	pushl	%ebp
.LCFI288:
	movl	%esp, %ebp
.LCFI289:
	pushl	%ebx
.LCFI290:
	subl	$52, %esp
.LCFI291:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5095 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5097 0
	cmpl	$0, -16(%ebp)
	je	.L2083
	.loc 1 5099 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L2085
	.loc 1 5100 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	push_nested_namespace@PLT
	jmp	.L2083
.L2085:
	.loc 1 5102 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	$2, 4(%esp)
	movl	%eax, (%esp)
	call	push_nested_class@PLT
.L2083:
	.loc 1 5106 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_name@PLT
	movl	%eax, -20(%ebp)
	.loc 1 5119 0
	cmpl	$0, -20(%ebp)
	je	.L2087
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L2087
	movl	-20(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L2087
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L2091
	movl	-20(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2091
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L2087
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L2087
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L2087
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L2091
.L2087:
	.loc 1 5121 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_name@PLT
	movl	%eax, -20(%ebp)
	.loc 1 5122 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_get_template_decl_from_type_decl
	movl	%eax, -20(%ebp)
.L2091:
	.loc 1 5125 0
	cmpl	$0, -20(%ebp)
	je	.L2097
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L2097
	movl	-20(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L2097
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L2101
	movl	-20(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2101
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L2097
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L2097
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L2097
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L2097
.L2101:
	.loc 1 5133 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	cmpl	$0, 12(%ebp)
	je	.L2107
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L2107
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L2107
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2107
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L2107
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -28(%ebp)
	jmp	.L2113
.L2107:
	movl	$1, -32(%ebp)
	movl	$0, -28(%ebp)
.L2113:
	movl	-28(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	jl	.L2114
	movl	-28(%ebp), %edx
	cmpl	%edx, -36(%ebp)
	jg	.L2116
	movl	-32(%ebp), %eax
	cmpl	%eax, -40(%ebp)
	jbe	.L2114
.L2116:
.LBB87:
	.loc 1 5137 0
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	$3, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_template_parms
	movl	%eax, -12(%ebp)
	.loc 1 5139 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	redeclare_class_template@PLT
.L2114:
.LBE87:
	.loc 1 5142 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 5125 0
	jmp	.L2117
.L2097:
	.loc 1 5149 0
	movl	$0, 12(%esp)
	movl	$3, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -20(%ebp)
	.loc 1 5155 0
	movl	-20(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-7, %eax
	movb	%al, 6(%edx)
	.loc 1 5156 0
	movl	-20(%ebp), %eax
	movl	136(%eax), %eax
	movl	$0, 8(%eax)
	.loc 1 5157 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %edx
	movzbl	8(%edx), %eax
	andl	$-13, %eax
	movb	%al, 8(%edx)
	.loc 1 5160 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl_top_level@PLT
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L2117:
	.loc 1 5163 0
	cmpl	$0, -16(%ebp)
	je	.L2118
	.loc 1 5165 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L2120
	.loc 1 5166 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	pop_nested_namespace@PLT
	jmp	.L2118
.L2120:
	.loc 1 5168 0
	call	pop_nested_class@PLT
.L2118:
	.loc 1 5171 0
	movl	-24(%ebp), %eax
	.loc 1 5172 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE86:
	.size	tsubst_friend_class, .-tsubst_friend_class
	.type	can_complete_type_without_circularity, @function
can_complete_type_without_circularity:
.LFB87:
	.loc 1 5180 0
	pushl	%ebp
.LCFI292:
	movl	%esp, %ebp
.LCFI293:
	pushl	%ebx
.LCFI294:
	subl	$8, %esp
.LCFI295:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5181 0
	cmpl	$0, 8(%ebp)
	je	.L2124
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2126
.L2124:
	.loc 1 5182 0
	movl	$0, -8(%ebp)
	jmp	.L2127
.L2126:
	.loc 1 5183 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2128
	.loc 1 5184 0
	movl	$1, -8(%ebp)
	jmp	.L2127
.L2128:
	.loc 1 5185 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2130
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2130
	.loc 1 5186 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	can_complete_type_without_circularity
	movl	%eax, -8(%ebp)
	jmp	.L2127
.L2130:
	.loc 1 5187 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2133
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2135
.L2133:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2136
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2136
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2136
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2136
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2135
.L2136:
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	92(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L2135
	.loc 1 5188 0
	movl	$0, -8(%ebp)
	jmp	.L2127
.L2135:
	.loc 1 5190 0
	movl	$1, -8(%ebp)
.L2127:
	movl	-8(%ebp), %eax
	.loc 1 5191 0
	addl	$8, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE87:
	.size	can_complete_type_without_circularity, .-can_complete_type_without_circularity
	.section	.rodata
	.type	__FUNCTION__.21521, @object
	.size	__FUNCTION__.21521, 27
__FUNCTION__.21521:
	.string	"instantiate_class_template"
	.align 4
.LC87:
	.string	"ambiguous class template instantiation for `%#T'"
.LC88:
	.string	"%s %+#T"
	.text
.globl instantiate_class_template
	.type	instantiate_class_template, @function
instantiate_class_template:
.LFB88:
	.loc 1 5196 0
	pushl	%ebp
.LCFI296:
	movl	%esp, %ebp
.LCFI297:
	pushl	%esi
.LCFI298:
	pushl	%ebx
.LCFI299:
	subl	$144, %esp
.LCFI300:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5200 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2144
	.loc 1 5201 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -128(%ebp)
	jmp	.L2146
.L2144:
	.loc 1 5203 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L2147
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2149
.L2147:
	.loc 1 5204 0
	movl	8(%ebp), %eax
	movl	%eax, -128(%ebp)
	jmp	.L2146
.L2149:
	.loc 1 5207 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	most_general_template@PLT
	movl	%eax, -108(%ebp)
	.loc 1 5208 0
	movl	-108(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L2150
	leal	__FUNCTION__.21521@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5208, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2150:
	.loc 1 5212 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -104(%ebp)
	.loc 1 5213 0
	movl	8(%ebp), %eax
	movl	92(%eax), %esi
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	9(%esi), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 9(%esi)
	.loc 1 5215 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2152
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2152
	.loc 1 5233 0
	movl	8(%ebp), %eax
	movl	%eax, -128(%ebp)
	jmp	.L2146
.L2152:
	.loc 1 5237 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2155
	.loc 1 5248 0
	movl	$0, -96(%ebp)
	jmp	.L2157
.L2155:
	.loc 1 5251 0
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	most_specialized_class
	movl	%eax, -96(%ebp)
	.loc 1 5253 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-96(%ebp), %eax
	jne	.L2157
.LBB88:
	.loc 1 5255 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	.loc 1 5256 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 5257 0
	movl	-108(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2159
.L2160:
	.loc 1 5260 0
	movl	-96(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	get_class_bindings
	testl	%eax, %eax
	je	.L2161
	.loc 1 5263 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC88@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 5264 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
.L2161:
	.loc 1 5258 0
	movl	-96(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
.L2159:
	.loc 1 5257 0
	cmpl	$0, -96(%ebp)
	jne	.L2160
	.loc 1 5267 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	7(%edx), %eax
	orl	$-128, %eax
	movb	%al, 7(%edx)
	.loc 1 5268 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -128(%ebp)
	jmp	.L2146
.L2157:
.LBE88:
	.loc 1 5272 0
	cmpl	$0, -96(%ebp)
	je	.L2164
	.loc 1 5273 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L2166
.L2164:
	.loc 1 5275 0
	movl	-108(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -100(%ebp)
.L2166:
	.loc 1 5279 0
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L2167
	.loc 1 5280 0
	movl	8(%ebp), %eax
	movl	%eax, -128(%ebp)
	jmp	.L2146
.L2167:
	.loc 1 5285 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2169
	.loc 1 5289 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	-100(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, 36(%edx)
	.loc 1 5290 0
	movl	-100(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 5291 0
	movl	-100(%ebp), %eax
	movl	64(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 5292 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	-100(%ebp), %eax
	movl	92(%eax), %eax
	movl	60(%eax), %eax
	movl	%eax, 60(%edx)
	.loc 1 5293 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	-100(%ebp), %eax
	movl	92(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, 36(%edx)
	.loc 1 5294 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	-100(%ebp), %eax
	movl	92(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, 32(%edx)
	.loc 1 5298 0
	movl	global_trees@GOT(%ebx), %eax
	movl	88(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 5299 0
	movl	8(%ebp), %eax
	movl	%eax, -128(%ebp)
	jmp	.L2146
.L2169:
	.loc 1 5303 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_tinst_level@PLT
	testl	%eax, %eax
	jne	.L2171
	.loc 1 5304 0
	movl	8(%ebp), %eax
	movl	%eax, -128(%ebp)
	jmp	.L2146
.L2171:
	.loc 1 5308 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	7(%edx), %eax
	orl	$-128, %eax
	movb	%al, 7(%edx)
	.loc 1 5310 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	movl	%eax, (%esp)
	call	maybe_push_to_top_level@PLT
	.loc 1 5312 0
	cmpl	$0, -96(%ebp)
	je	.L2173
.LBB89:
	.loc 1 5326 0
	movl	-96(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	get_class_bindings
	movl	%eax, -80(%ebp)
	.loc 1 5331 0
	cmpl	$0, -104(%ebp)
	je	.L2175
	movl	-104(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L2175
	movl	-104(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L2175
	movl	-104(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2175
	movl	-104(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L2175
	.loc 1 5333 0
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -104(%ebp)
	.loc 1 5334 0
	cmpl	$0, -104(%ebp)
	je	.L2181
	movl	-104(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L2181
	movl	-104(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L2181
	movl	-104(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2181
	movl	-104(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L2181
	movl	-104(%ebp), %eax
	movl	16(%eax), %eax
	subl	$1, %eax
	movl	%eax, -124(%ebp)
	jmp	.L2187
.L2181:
	movl	$0, -124(%ebp)
.L2187:
	movl	-124(%ebp), %ecx
	movl	-104(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 20(%edx,%ecx,4)
	.loc 1 5331 0
	jmp	.L2173
.L2175:
	.loc 1 5337 0
	movl	-80(%ebp), %eax
	movl	%eax, -104(%ebp)
.L2173:
.LBE89:
	.loc 1 5340 0
	movl	flag_external_templates@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2188
	.loc 1 5342 0
	movl	flag_alt_external_templates@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2190
	.loc 1 5344 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	interface_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	6(%ecx), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
	.loc 1 5345 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	interface_unknown@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	setne	%al
	andl	$1, %eax
	movl	%eax, %edx
	sall	$6, %edx
	movzbl	6(%ecx), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
	jmp	.L2193
.L2190:
	.loc 1 5349 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-100(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	6(%ecx), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
	.loc 1 5350 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-100(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	setne	%al
	andl	$1, %eax
	movl	%eax, %edx
	sall	$6, %edx
	movzbl	6(%ecx), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
	jmp	.L2193
.L2188:
	.loc 1 5356 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	6(%edx), %eax
	orl	$64, %eax
	movb	%al, 6(%edx)
.L2193:
	.loc 1 5359 0
	movl	-100(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	39(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 39(%ecx)
	.loc 1 5360 0
	movl	-100(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	39(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 39(%ecx)
	.loc 1 5361 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-100(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	6(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
	.loc 1 5362 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-100(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	6(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
	.loc 1 5363 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-100(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	6(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
	.loc 1 5364 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-100(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	shrb	$6, %al
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$6, %edx
	movzbl	5(%ecx), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, 5(%ecx)
	.loc 1 5365 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-100(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	shrb	$7, %al
	movl	%eax, %edx
	sall	$7, %edx
	movzbl	5(%ecx), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, 5(%ecx)
	.loc 1 5366 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-100(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$3, %eax
	movl	%eax, %edx
	andl	$3, %edx
	movzbl	6(%ecx), %eax
	andl	$-4, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
	.loc 1 5367 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-100(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	5(%ecx), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 5(%ecx)
	.loc 1 5368 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-100(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	shrb	$7, %al
	movl	%eax, %edx
	sall	$7, %edx
	movzbl	(%ecx), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 5369 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-100(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	9(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 5370 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-100(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 5371 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-100(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	9(%ecx), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 5372 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-100(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 5373 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-100(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	shrb	%al
	andl	$1, %eax
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 5374 0
	movl	-100(%ebp), %eax
	movzbl	11(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	11(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 5376 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-100(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 5378 0
	movl	-100(%ebp), %eax
	movzbl	11(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	11(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 5380 0
	movl	-100(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	38(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 38(%ecx)
	.loc 1 5381 0
	movl	-100(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 5382 0
	movl	-100(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$7, %al
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	sall	$7, %ecx
	movzbl	39(%edx), %eax
	andl	$127, %eax
	orl	%ecx, %eax
	movb	%al, 39(%edx)
	.loc 1 5383 0
	movl	-100(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	39(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 39(%ecx)
	.loc 1 5384 0
	movl	-100(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2194
	movl	-100(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2196
.L2194:
	movl	-100(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2197
	movl	-100(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2197
	movl	-100(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2197
	movl	-100(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2197
	movl	-100(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2196
.L2197:
	movl	-100(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L2196
	.loc 1 5385 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	9(%edx), %eax
	orl	$-128, %eax
	movb	%al, 9(%edx)
.L2196:
	.loc 1 5387 0
	movl	-100(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L2203
	movl	-100(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L2203
	.loc 1 5389 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
.L2203:
	.loc 1 5391 0
	movl	-100(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L2206
.LBB90:
	.loc 1 5393 0
	movl	$0, -76(%ebp)
	.loc 1 5394 0
	movl	-100(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 5399 0
	movl	$0, -68(%ebp)
	jmp	.L2208
.L2209:
.LBB91:
	.loc 1 5405 0
	movl	-68(%ebp), %edx
	movl	-72(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -56(%ebp)
	.loc 1 5408 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -64(%ebp)
	.loc 1 5409 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-64(%ebp), %eax
	je	.L2210
	.loc 1 5413 0
	movl	-56(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2212
	.loc 1 5415 0
	movl	-56(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2214
	.loc 1 5416 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	176(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L2219
.L2214:
	.loc 1 5417 0
	movl	-56(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2217
	.loc 1 5418 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	180(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L2219
.L2217:
	.loc 1 5420 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	184(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L2219
.L2212:
	.loc 1 5424 0
	movl	-56(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2220
	.loc 1 5425 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	160(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L2219
.L2220:
	.loc 1 5426 0
	movl	-56(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2222
	.loc 1 5427 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	164(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L2219
.L2222:
	.loc 1 5429 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	168(%eax), %eax
	movl	%eax, -60(%ebp)
.L2219:
	.loc 1 5432 0
	movl	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -76(%ebp)
.L2210:
.LBE91:
	.loc 1 5399 0
	addl	$1, -68(%ebp)
.L2208:
	movl	-72(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-68(%ebp), %eax
	jg	.L2209
	.loc 1 5436 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, -76(%ebp)
	.loc 1 5440 0
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	xref_basetypes@PLT
.L2206:
.LBE90:
	.loc 1 5448 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pushclass@PLT
	.loc 1 5451 0
	movl	-100(%ebp), %eax
	movl	92(%eax), %eax
	movl	60(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2225
.L2226:
.LBB92:
	.loc 1 5453 0
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 5455 0
	movl	-92(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2227
	.loc 1 5457 0
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L2229
.LBB93:
	.loc 1 5461 0
	movl	-52(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 5462 0
	movl	-48(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 5465 0
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -40(%ebp)
	.loc 1 5466 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L2231
	leal	__FUNCTION__.21521@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5466, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2231:
	.loc 1 5467 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L2263
	.loc 1 5469 0
	movl	-48(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L2235
	movl	-48(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L2235
	movl	-48(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	jne	.L2235
	movl	-48(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2235
	.loc 1 5478 0
	movl	-40(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	8(%edx), %eax
	andl	$-13, %eax
	movb	%al, 8(%edx)
.L2235:
	.loc 1 5485 0
	cmpl	$0, -44(%ebp)
	je	.L2240
	.loc 1 5486 0
	movl	-44(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%edx)
.L2240:
	.loc 1 5487 0
	movl	$0, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	pushtag@PLT
	jmp	.L2263
.L2229:
.LBE93:
	.loc 1 5490 0
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L2243
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L2245
	movl	-52(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L2245
.L2243:
.LBB94:
	.loc 1 5495 0
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -36(%ebp)
	.loc 1 5496 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	set_current_access_from_decl
	.loc 1 5497 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	grok_special_member_properties@PLT
	.loc 1 5498 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_member_declaration@PLT
	.loc 1 5490 0
	jmp	.L2263
.L2245:
.LBE94:
	.loc 1 5504 0
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L2263
.LBB95:
	.loc 1 5511 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5512 0
	movl	-52(%ebp), %eax
	movl	16(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5514 0
	movl	$0, 12(%esp)
	movl	$3, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -32(%ebp)
	.loc 1 5515 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L2248
.LBB96:
	.loc 1 5519 0
	movl	-32(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L2250
	.loc 1 5520 0
	movl	-52(%ebp), %eax
	movl	68(%eax), %edx
	movl	$0, 12(%esp)
	movl	$3, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, -28(%ebp)
	jmp	.L2252
.L2250:
	.loc 1 5523 0
	movl	$0, -28(%ebp)
.L2252:
	.loc 1 5525 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_static_data_member_decl@PLT
	.loc 1 5529 0
	movl	-32(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L2255
	.loc 1 5530 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	check_static_variable_definition@PLT
	jmp	.L2255
.L2248:
.LBE96:
	.loc 1 5532 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L2255
.LBB97:
	.loc 1 5538 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 5539 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	can_complete_type_without_circularity
	testl	%eax, %eax
	je	.L2257
	.loc 1 5540 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
.L2257:
	.loc 1 5542 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L2255
	.loc 1 5544 0
	movl	$0, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_incomplete_type_diagnostic@PLT
	.loc 1 5545 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L2255:
.LBE97:
	.loc 1 5553 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L2260
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L2260
	movl	-32(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2263
.L2260:
	.loc 1 5557 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	set_current_access_from_decl
	.loc 1 5558 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_member_declaration@PLT
	jmp	.L2263
.L2227:
.LBE95:
	.loc 1 5565 0
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	je	.L2264
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L2266
	movl	-52(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L2266
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L2264
	movl	-52(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2264
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L2266
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L2266
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L2266
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L2266
.L2264:
.LBB98:
	.loc 1 5569 0
	movl	-52(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5572 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L2274
	.loc 1 5573 0
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_friend_class
	movl	%eax, -16(%ebp)
	jmp	.L2276
.L2274:
	.loc 1 5574 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	je	.L2277
	.loc 1 5575 0
	movl	$0, 12(%esp)
	movl	$3, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -16(%ebp)
	jmp	.L2276
.L2277:
.LBB99:
	.loc 1 5579 0
	movl	-20(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	decl_namespace_context@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5583 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	push_nested_namespace@PLT
	.loc 1 5584 0
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	xref_tag_from_type@PLT
	movl	%eax, -16(%ebp)
	.loc 1 5586 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	pop_nested_namespace@PLT
.L2276:
.LBE99:
	.loc 1 5589 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L2279
	.loc 1 5595 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	60(%ecx), %eax
	movl	64(%ecx), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, 60(%ecx)
	movl	%edx, 64(%ecx)
.L2279:
	.loc 1 5597 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L2281
	.loc 1 5598 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_friend_class@PLT
.L2281:
	.loc 1 5600 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L2263
	.loc 1 5601 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	60(%ecx), %eax
	movl	64(%ecx), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, 60(%ecx)
	movl	%edx, 64(%ecx)
	.loc 1 5565 0
	jmp	.L2263
.L2266:
.LBE98:
	.loc 1 5605 0
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_friend_function
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_friend@PLT
.L2263:
.LBE92:
	.loc 1 5451 0
	movl	-92(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
.L2225:
	cmpl	$0, -92(%ebp)
	jne	.L2226
	.loc 1 5613 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 5614 0
	movl	-88(%ebp), %eax
	movl	20(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5615 0
	movl	-88(%ebp), %eax
	movl	16(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5617 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unreverse_member_declarations@PLT
	.loc 1 5618 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_struct_1@PLT
	.loc 1 5619 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	8(%edx), %eax
	orl	$16, %eax
	movb	%al, 8(%edx)
	.loc 1 5622 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	7(%edx), %eax
	andl	$127, %eax
	movb	%al, 7(%edx)
	.loc 1 5623 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	repo_template_used@PLT
	.loc 1 5628 0
	movl	-108(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-108(%ebp), %eax
	je	.L2286
	.loc 1 5629 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2288
.L2289:
	.loc 1 5630 0
	movl	-96(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L2290
	movl	-96(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L2290
	.loc 1 5635 0
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_default_arguments
.L2290:
	.loc 1 5629 0
	movl	-96(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
.L2288:
	cmpl	$0, -96(%ebp)
	jne	.L2289
.L2286:
	.loc 1 5637 0
	call	popclass@PLT
	.loc 1 5638 0
	call	pop_from_top_level@PLT
	.loc 1 5639 0
	call	pop_tinst_level@PLT
	.loc 1 5641 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2293
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2295
.L2293:
	.loc 1 5642 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	292(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 292(%eax)
.L2295:
	.loc 1 5644 0
	movl	8(%ebp), %eax
	movl	%eax, -128(%ebp)
.L2146:
	movl	-128(%ebp), %eax
	.loc 1 5645 0
	addl	$144, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE88:
	.size	instantiate_class_template, .-instantiate_class_template
	.type	list_eq, @function
list_eq:
.LFB89:
	.loc 1 5650 0
	pushl	%ebp
.LCFI301:
	movl	%esp, %ebp
.LCFI302:
	subl	$12, %esp
.LCFI303:
	.loc 1 5651 0
	cmpl	$0, 8(%ebp)
	jne	.L2298
	.loc 1 5652 0
	cmpl	$0, 12(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%ebp)
	jmp	.L2300
.L2298:
	.loc 1 5653 0
	cmpl	$0, 12(%ebp)
	jne	.L2301
	.loc 1 5654 0
	movl	$0, -4(%ebp)
	jmp	.L2300
.L2301:
	.loc 1 5657 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	72(%eax), %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	72(%eax), %eax
	cmpl	%eax, %edx
	je	.L2303
	.loc 1 5659 0
	movl	$0, -4(%ebp)
	jmp	.L2300
.L2303:
	.loc 1 5660 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	list_eq
	movl	%eax, -4(%ebp)
.L2300:
	movl	-4(%ebp), %eax
	.loc 1 5661 0
	leave
	ret
.LFE89:
	.size	list_eq, .-list_eq
	.type	maybe_fold_nontype_arg, @function
maybe_fold_nontype_arg:
.LFB90:
	.loc 1 5669 0
	pushl	%ebp
.LCFI304:
	movl	%esp, %ebp
.LCFI305:
	pushl	%ebx
.LCFI306:
	subl	$20, %esp
.LCFI307:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5670 0
	cmpl	$0, 8(%ebp)
	je	.L2307
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	je	.L2307
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	jne	.L2307
	.loc 1 5683 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L2311
.LBB100:
	.loc 1 5685 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5686 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 60(%eax)
	movl	$0, 64(%eax)
	.loc 1 5687 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, 8(%ebp)
	.loc 1 5688 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-8(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 60(%ecx)
	movl	%edx, 64(%ecx)
.L2311:
.LBE100:
	.loc 1 5691 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, 8(%ebp)
.L2307:
	.loc 1 5693 0
	movl	8(%ebp), %eax
	.loc 1 5694 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE90:
	.size	maybe_fold_nontype_arg, .-maybe_fold_nontype_arg
	.type	tsubst_template_arg_vector, @function
tsubst_template_arg_vector:
.LFB91:
	.loc 1 5703 0
	pushl	%ebp
.LCFI308:
	movl	%esp, %ebp
.LCFI309:
	pushl	%edi
.LCFI310:
	pushl	%esi
.LCFI311:
	pushl	%ebx
.LCFI312:
	subl	$76, %esp
.LCFI313:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 5703 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 5704 0
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
	.loc 1 5705 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	16(%esp), %edx
	movl	%edx, -60(%ebp)
	movl	-60(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5707 0
	movl	-32(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-20(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 5709 0
	movl	$0, -24(%ebp)
	jmp	.L2315
.L2316:
	.loc 1 5711 0
	movl	-24(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L2317
	movl	-24(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L2317
	.loc 1 5713 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-20(%ebp), %esi
	movl	-24(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_template_arg_vector
	movl	%eax, (%esi)
	.loc 1 5711 0
	jmp	.L2320
.L2317:
	.loc 1 5716 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-20(%ebp), %esi
	movl	-24(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, (%esp)
	call	maybe_fold_nontype_arg
	movl	%eax, (%esi)
.L2320:
	.loc 1 5720 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2321
	.loc 1 5721 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L2323
.L2321:
	.loc 1 5723 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	(%eax), %ecx
	movl	-24(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	cmpl	%eax, %ecx
	je	.L2324
	.loc 1 5724 0
	movl	$1, -28(%ebp)
.L2324:
	.loc 1 5709 0
	addl	$1, -24(%ebp)
.L2315:
	movl	-24(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jl	.L2316
	.loc 1 5727 0
	cmpl	$0, -28(%ebp)
	jne	.L2327
	.loc 1 5728 0
	movl	-48(%ebp), %edx
	movl	%edx, -56(%ebp)
	jmp	.L2323
.L2327:
	.loc 1 5730 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -48(%ebp)
	.loc 1 5731 0
	movl	$0, -24(%ebp)
	jmp	.L2329
.L2330:
	.loc 1 5732 0
	movl	-24(%ebp), %ecx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 20(%eax,%ecx,4)
	.loc 1 5731 0
	addl	$1, -24(%ebp)
.L2329:
	movl	-24(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jl	.L2330
	.loc 1 5734 0
	movl	-48(%ebp), %eax
	movl	%eax, -56(%ebp)
.L2323:
	movl	-56(%ebp), %eax
	.loc 1 5735 0
	movl	-16(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L2333
	call	__stack_chk_fail_local
.L2333:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE91:
	.size	tsubst_template_arg_vector, .-tsubst_template_arg_vector
	.type	tsubst_template_parms, @function
tsubst_template_parms:
.LFB92:
	.loc 1 5749 0
	pushl	%ebp
.LCFI314:
	movl	%esp, %ebp
.LCFI315:
	pushl	%ebx
.LCFI316:
	subl	$84, %esp
.LCFI317:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5750 0
	movl	$0, -36(%ebp)
	.loc 1 5753 0
	leal	-36(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 5754 0
	jmp	.L2335
.L2336:
.LBB101:
	.loc 1 5759 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -28(%ebp)
	.loc 1 5762 0
	movl	$0, -24(%ebp)
	jmp	.L2337
.L2338:
.LBB102:
	.loc 1 5764 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-24(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5765 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5766 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5768 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5769 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, -16(%ebp)
	.loc 1 5771 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_fold_nontype_arg
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -20(%ebp)
	.loc 1 5773 0
	movl	-24(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 20(%edx,%ecx,4)
.LBE102:
	.loc 1 5762 0
	addl	$1, -24(%ebp)
.L2337:
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-24(%ebp), %eax
	jg	.L2338
	.loc 1 5776 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	cmpl	$0, 12(%ebp)
	je	.L2340
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L2340
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L2340
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2340
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L2340
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -60(%ebp)
	jmp	.L2346
.L2340:
	movl	$1, -64(%ebp)
	movl	$0, -60(%ebp)
.L2346:
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	subl	-64(%ebp), %eax
	sbbl	-60(%ebp), %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	$0, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, (%eax)
.LBE101:
	.loc 1 5756 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L2335:
	.loc 1 5754 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	cmpl	$0, 12(%ebp)
	je	.L2347
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L2347
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L2347
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2347
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L2347
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -44(%ebp)
	jmp	.L2353
.L2347:
	movl	$1, -48(%ebp)
	movl	$0, -44(%ebp)
.L2353:
	movl	-44(%ebp), %eax
	cmpl	%eax, -52(%ebp)
	jg	.L2336
	movl	-44(%ebp), %edx
	cmpl	%edx, -52(%ebp)
	jl	.L2355
	movl	-48(%ebp), %eax
	cmpl	%eax, -56(%ebp)
	ja	.L2336
.L2355:
	.loc 1 5782 0
	movl	-36(%ebp), %eax
	.loc 1 5783 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE92:
	.size	tsubst_template_parms, .-tsubst_template_parms
	.type	tsubst_aggr_type, @function
tsubst_aggr_type:
.LFB93:
	.loc 1 5798 0
	pushl	%ebp
.LCFI318:
	movl	%esp, %ebp
.LCFI319:
	pushl	%ebx
.LCFI320:
	subl	$84, %esp
.LCFI321:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5799 0
	cmpl	$0, 8(%ebp)
	jne	.L2358
	.loc 1 5800 0
	movl	$0, -56(%ebp)
	jmp	.L2360
.L2358:
	.loc 1 5802 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	cmpl	$21, -52(%ebp)
	je	.L2363
	cmpl	$22, -52(%ebp)
	je	.L2362
	cmpl	$11, -52(%ebp)
	je	.L2362
	jmp	.L2361
.L2363:
	.loc 1 5805 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2362
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L2362
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2362
	.loc 1 5806 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -56(%ebp)
	jmp	.L2360
.L2362:
	.loc 1 5811 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L2367
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	setne	-46(%ebp)
	jmp	.L2369
.L2367:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L2370
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	setne	-45(%ebp)
	jmp	.L2372
.L2370:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L2373
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L2373
	movl	$1, -44(%ebp)
	jmp	.L2376
.L2373:
	movl	$0, -44(%ebp)
.L2376:
	movzbl	-44(%ebp), %eax
	movb	%al, -45(%ebp)
.L2372:
	movzbl	-45(%ebp), %ecx
	movb	%cl, -46(%ebp)
.L2369:
	cmpb	$0, -46(%ebp)
	je	.L2377
.LBB103:
	.loc 1 5819 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	je	.L2379
	.loc 1 5820 0
	movl	8(%ebp), %eax
	movl	80(%eax), %edx
	movl	$1, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_aggr_type
	movl	%eax, -12(%ebp)
	jmp	.L2381
.L2379:
	.loc 1 5824 0
	movl	$0, -12(%ebp)
.L2381:
	.loc 1 5835 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L2382
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L2384
.L2382:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L2385
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L2387
.L2385:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L2388
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2390
.L2388:
	movl	$0, -32(%ebp)
.L2390:
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
.L2387:
	movl	-36(%ebp), %ecx
	movl	%ecx, -40(%ebp)
.L2384:
	movl	-40(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_template_arg_vector
	movl	%eax, -16(%ebp)
	.loc 1 5837 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L2391
	.loc 1 5838 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L2360
.L2391:
	.loc 1 5840 0
	movl	16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_template_class@PLT
	movl	%eax, -8(%ebp)
	.loc 1 5843 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -28(%ebp)
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2393
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2393
	movl	$1, -24(%ebp)
	jmp	.L2396
.L2393:
	movl	$0, -24(%ebp)
.L2396:
	movl	-24(%ebp), %eax
	sall	$3, %eax
	movl	-28(%ebp), %edx
	orl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, -56(%ebp)
	jmp	.L2360
.L2377:
.LBE103:
	.loc 1 5847 0
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L2360
.L2361:
	.loc 1 5850 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -56(%ebp)
.L2360:
	movl	-56(%ebp), %eax
	.loc 1 5852 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE93:
	.size	tsubst_aggr_type, .-tsubst_aggr_type
.globl tsubst_default_argument
	.type	tsubst_default_argument, @function
tsubst_default_argument:
.LFB94:
	.loc 1 5862 0
	pushl	%ebp
.LCFI322:
	movl	%esp, %ebp
.LCFI323:
	pushl	%ebx
.LCFI324:
	subl	$20, %esp
.LCFI325:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5881 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_access_scope
	.loc 1 5883 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	$0, 12(%esp)
	movl	$3, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, 16(%ebp)
	.loc 1 5886 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pop_access_scope
	.loc 1 5889 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	check_default_argument@PLT
	movl	%eax, 16(%ebp)
	.loc 1 5891 0
	movl	16(%ebp), %eax
	.loc 1 5892 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE94:
	.size	tsubst_default_argument, .-tsubst_default_argument
	.type	tsubst_default_arguments, @function
tsubst_default_arguments:
.LFB95:
	.loc 1 5899 0
	pushl	%ebp
.LCFI326:
	movl	%esp, %ebp
.LCFI327:
	pushl	%ebx
.LCFI328:
	subl	$36, %esp
.LCFI329:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5903 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5907 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	jne	.L2407
	.loc 1 5910 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5911 0
	jmp	.L2403
.L2404:
	.loc 1 5913 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2405
	.loc 1 5914 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_default_argument@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
.L2405:
	.loc 1 5912 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L2403:
	.loc 1 5911 0
	cmpl	$0, -12(%ebp)
	jne	.L2404
.L2407:
	.loc 1 5917 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE95:
	.size	tsubst_default_arguments, .-tsubst_default_arguments
	.section	.rodata
	.type	__FUNCTION__.22340, @object
	.size	__FUNCTION__.22340, 12
__FUNCTION__.22340:
	.string	"tsubst_decl"
	.align 4
.LC89:
	.string	"instantiation of `%D' as type `%T'"
	.text
	.type	tsubst_decl, @function
tsubst_decl:
.LFB96:
	.loc 1 5930 0
	pushl	%ebp
.LCFI330:
	movl	%esp, %ebp
.LCFI331:
	pushl	%esi
.LCFI332:
	pushl	%ebx
.LCFI333:
	subl	$176, %esp
.LCFI334:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5933 0
	movl	$0, -104(%ebp)
	.loc 1 5934 0
	movl	8(%ebp), %eax
	movl	%eax, -100(%ebp)
	.loc 1 5937 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -112(%ebp)
	.loc 1 5938 0
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -108(%ebp)
	.loc 1 5939 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5940 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5942 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -152(%ebp)
	cmpl	$36, -152(%ebp)
	je	.L2413
	cmpl	$36, -152(%ebp)
	ja	.L2417
	cmpl	$34, -152(%ebp)
	je	.L2411
	cmpl	$34, -152(%ebp)
	ja	.L2412
	cmpl	$31, -152(%ebp)
	je	.L2410
	jmp	.L2409
.L2417:
	cmpl	$192, -152(%ebp)
	je	.L2415
	cmpl	$200, -152(%ebp)
	je	.L2416
	cmpl	$38, -152(%ebp)
	je	.L2414
	jmp	.L2409
.L2415:
.LBB104:
	.loc 1 5948 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 5950 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L2418
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2418
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L2421
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L2421
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L2421
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L2418
.L2421:
	movl	$1, -148(%ebp)
	jmp	.L2425
.L2418:
	movl	$0, -148(%ebp)
.L2425:
	movl	-148(%ebp), %eax
	movl	%eax, -88(%ebp)
	.loc 1 5952 0
	cmpl	$0, -88(%ebp)
	jne	.L2426
.LBB105:
	.loc 1 5960 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L2428
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L2428
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L2431
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2431
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L2428
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L2428
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L2428
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L2428
.L2431:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -144(%ebp)
	jmp	.L2437
.L2428:
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -144(%ebp)
.L2437:
	movl	-144(%ebp), %edx
	movl	%edx, -84(%ebp)
	.loc 1 5963 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_template_arg_vector
	movl	%eax, -80(%ebp)
	.loc 1 5969 0
	movl	-80(%ebp), %eax
	cmpl	-84(%ebp), %eax
	jne	.L2438
	leal	__FUNCTION__.22340@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5969, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2438:
	.loc 1 5971 0
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	retrieve_specialization
	movl	%eax, -92(%ebp)
	.loc 1 5972 0
	cmpl	$0, -92(%ebp)
	je	.L2426
	.loc 1 5974 0
	movl	-92(%ebp), %eax
	movl	%eax, -104(%ebp)
	.loc 1 5975 0
	jmp	.L2441
.L2426:
.LBE105:
	.loc 1 5984 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_decl@PLT
	movl	%eax, -104(%ebp)
	.loc 1 5985 0
	movl	-104(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	jne	.L2442
	leal	__FUNCTION__.22340@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5985, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2442:
	.loc 1 5986 0
	movl	-104(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 5988 0
	cmpl	$0, -88(%ebp)
	je	.L2444
.LBB106:
	.loc 1 5990 0
	movl	-100(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -76(%ebp)
	.loc 1 5991 0
	movl	-104(%ebp), %edx
	movl	-76(%ebp), %eax
	movl	%eax, 64(%edx)
	.loc 1 5992 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %edx
	movl	-104(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 5993 0
	jmp	.L2441
.L2444:
.LBE106:
	.loc 1 5996 0
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	$1, 16(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_aggr_type
	movl	%eax, %edx
	movl	-104(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 6000 0
	movl	-104(%ebp), %eax
	movl	136(%eax), %esi
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_tree_list@PLT
	movl	%eax, 8(%esi)
	.loc 1 6002 0
	movl	-96(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L2446
.LBB107:
	.loc 1 6004 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -72(%ebp)
	.loc 1 6005 0
	movl	-104(%ebp), %edx
	movl	-72(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 6006 0
	movl	-72(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %edx
	movl	-104(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 6007 0
	movl	-72(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %edx
	movl	-104(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 6008 0
	movl	-104(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %edx
	movl	-72(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 20(%edx)
	jmp	.L2448
.L2446:
.LBE107:
.LBB108:
	.loc 1 6012 0
	movl	-100(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -68(%ebp)
	.loc 1 6014 0
	movl	-104(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	%eax, 64(%edx)
	.loc 1 6015 0
	movl	-68(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %edx
	movl	-104(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 6016 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %edx
	movl	-104(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 6017 0
	movl	-104(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %edx
	movl	-68(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 20(%edx)
.L2448:
.LBE108:
	.loc 1 6020 0
	movl	-104(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-7, %eax
	orl	$2, %eax
	movb	%al, 6(%edx)
	.loc 1 6021 0
	movl	-104(%ebp), %eax
	movl	$0, 124(%eax)
	.loc 1 6022 0
	movl	-104(%ebp), %eax
	movl	$0, 28(%eax)
	.loc 1 6027 0
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_template_parms
	movl	%eax, %edx
	movl	-104(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 6031 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2449
	.loc 1 6032 0
	movl	-104(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %edx
	movl	-104(%ebp), %eax
	movl	%eax, 4(%edx)
.L2449:
	.loc 1 6035 0
	movl	-96(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L2441
	.loc 1 6039 0
	movl	-104(%ebp), %eax
	movl	64(%eax), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	register_specialization
	.loc 1 6043 0
	jmp	.L2441
.L2410:
.LBE104:
.LBB109:
	.loc 1 6048 0
	movl	$0, -60(%ebp)
	.loc 1 6056 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L2452
	leal	__FUNCTION__.22340@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6056, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2452:
	.loc 1 6058 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L2454
.LBB110:
	.loc 1 6063 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	jne	.L2456
	.loc 1 6064 0
	movl	8(%ebp), %eax
	movl	%eax, -140(%ebp)
	jmp	.L2458
.L2456:
	.loc 1 6069 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	most_general_template@PLT
	movl	%eax, -52(%ebp)
	.loc 1 6070 0
	movl	-52(%ebp), %eax
	movl	64(%eax), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_template_arg_vector
	movl	%eax, -60(%ebp)
	.loc 1 6076 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	retrieve_specialization
	movl	%eax, -36(%ebp)
	.loc 1 6078 0
	cmpl	$0, -36(%ebp)
	je	.L2459
	.loc 1 6080 0
	movl	-36(%ebp), %eax
	movl	%eax, -104(%ebp)
	.loc 1 6081 0
	jmp	.L2441
.L2459:
	.loc 1 6116 0
	cmpl	$0, 12(%ebp)
	je	.L2461
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L2461
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L2461
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2461
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L2461
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -136(%ebp)
	jmp	.L2467
.L2461:
	movl	$1, -136(%ebp)
.L2467:
	movl	-136(%ebp), %edx
	movl	%edx, -44(%ebp)
	.loc 1 6117 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	60(%eax), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 6119 0
	movl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jle	.L2471
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	je	.L2471
	.loc 1 6121 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_innermost_template_args@PLT
	movl	%eax, 12(%ebp)
	jmp	.L2471
.L2454:
.LBE110:
	.loc 1 6136 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-50, %al
	je	.L2472
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L2474
.L2472:
	movl	$1, -132(%ebp)
	jmp	.L2475
.L2474:
	movl	$0, -132(%ebp)
.L2475:
	cmpl	$0, -132(%ebp)
	jne	.L2476
	leal	__FUNCTION__.22340@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6139, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2476:
	.loc 1 6140 0
	movl	$0, -52(%ebp)
.L2471:
	.loc 1 6143 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L2478
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L2478
	.loc 1 6145 0
	movl	8(%ebp), %eax
	movl	52(%eax), %esi
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, (%esp)
	call	constructor_name@PLT
	cmpl	%eax, %esi
	jne	.L2481
	.loc 1 6146 0
	movl	$2, -48(%ebp)
	jmp	.L2483
.L2481:
	.loc 1 6148 0
	movl	$1, -48(%ebp)
.L2483:
	.loc 1 6149 0
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	$1, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_aggr_type
	movl	%eax, -64(%ebp)
	.loc 1 6143 0
	jmp	.L2484
.L2478:
	.loc 1 6155 0
	movl	$0, -48(%ebp)
	.loc 1 6156 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -64(%ebp)
.L2484:
	.loc 1 6158 0
	movl	-100(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, 16(%ebp)
	.loc 1 6159 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L2485
	.loc 1 6160 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -140(%ebp)
	jmp	.L2458
.L2485:
	.loc 1 6166 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_decl@PLT
	movl	%eax, -104(%ebp)
	.loc 1 6167 0
	movl	-104(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-7, %eax
	movb	%al, 6(%edx)
	.loc 1 6168 0
	movl	-104(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 6170 0
	movl	-104(%ebp), %eax
	movl	$0, 92(%eax)
	.loc 1 6171 0
	movl	-104(%ebp), %eax
	movl	$0, 104(%eax)
	.loc 1 6173 0
	movl	-104(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 56(%edx)
	.loc 1 6175 0
	cmpl	$0, -48(%ebp)
	je	.L2487
	movl	-104(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L2487
	.loc 1 6178 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	mangle_conv_op_name_for_type@PLT
	movl	%eax, %edx
	movl	-104(%ebp), %eax
	movl	%edx, 52(%eax)
.L2487:
	.loc 1 6180 0
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, %edx
	movl	-104(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 6182 0
	movl	-104(%ebp), %eax
	movl	$0, 64(%eax)
	.loc 1 6184 0
	movl	-104(%ebp), %edx
	movzbl	10(%edx), %eax
	andl	$-5, %eax
	movb	%al, 10(%edx)
	.loc 1 6185 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	-104(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 6186 0
	movl	-104(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$1, %eax
	movb	%al, 33(%edx)
	.loc 1 6187 0
	movl	-104(%ebp), %edx
	movzbl	38(%edx), %eax
	andl	$-5, %eax
	movb	%al, 38(%edx)
	.loc 1 6188 0
	movl	-104(%ebp), %edx
	movzbl	34(%edx), %eax
	andl	$127, %eax
	movb	%al, 34(%edx)
	.loc 1 6189 0
	movl	-104(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 6190 0
	movl	-104(%ebp), %eax
	movl	136(%eax), %eax
	movl	$0, 48(%eax)
	.loc 1 6191 0
	movl	-104(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	44(%edx), %eax
	andl	$-3, %eax
	movb	%al, 44(%edx)
	.loc 1 6192 0
	movl	-104(%ebp), %eax
	movl	$0, 116(%eax)
	.loc 1 6193 0
	movl	-104(%ebp), %edx
	movzbl	10(%edx), %eax
	andl	$-2, %eax
	movb	%al, 10(%edx)
	.loc 1 6194 0
	movl	-104(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L2490
	.loc 1 6196 0
	movl	-104(%ebp), %eax
	movl	136(%eax), %esi
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, 24(%esi)
	.loc 1 6198 0
	movl	-104(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	movl	(%eax), %edx
	movl	-104(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6199 0
	movl	-104(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %edx
	movl	-104(%ebp), %eax
	movl	%eax, (%edx)
.L2490:
	.loc 1 6205 0
	cmpl	$0, -52(%ebp)
	je	.L2492
	.loc 1 6207 0
	movl	-104(%ebp), %eax
	movl	136(%eax), %esi
	movl	$0, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, 8(%esi)
	.loc 1 6209 0
	movl	-104(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-7, %eax
	orl	$2, %eax
	movb	%al, 6(%edx)
	.loc 1 6210 0
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	register_specialization
	.loc 1 6223 0
	cmpl	$0, -48(%ebp)
	jne	.L2492
	movl	-52(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-52(%ebp), %eax
	je	.L2492
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	jne	.L2492
	.loc 1 6226 0
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_default_arguments
.L2492:
	.loc 1 6230 0
	movl	-104(%ebp), %eax
	movl	136(%eax), %eax
	addl	$16, %eax
	movl	%eax, -56(%ebp)
	.loc 1 6231 0
	jmp	.L2497
.L2498:
	.loc 1 6234 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6235 0
	movl	-56(%ebp), %eax
	movl	(%eax), %esi
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, 20(%esi)
	.loc 1 6232 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L2497:
	.loc 1 6231 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2498
	.loc 1 6240 0
	movl	-104(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2500
	movl	-104(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2502
.L2500:
	.loc 1 6242 0
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_retrofit_in_chrg@PLT
	.loc 1 6243 0
	movl	-104(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2503
	.loc 1 6244 0
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	grok_ctor_properties@PLT
.L2503:
	.loc 1 6248 0
	movl	-52(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-52(%ebp), %eax
	jne	.L2441
	.loc 1 6249 0
	movl	$0, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	clone_function_decl@PLT
	.loc 1 6240 0
	jmp	.L2441
.L2502:
	.loc 1 6251 0
	movl	-104(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2441
	.loc 1 6252 0
	movl	-104(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	grok_op_properties@PLT
	.loc 1 6254 0
	jmp	.L2441
.L2413:
.LBE109:
	.loc 1 6258 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -104(%ebp)
	.loc 1 6259 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2509
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L2511
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L2511
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L2511
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L2509
.L2511:
	.loc 1 6260 0
	movl	-104(%ebp), %eax
	movzbl	37(%eax), %edx
	orl	$32, %edx
	movb	%dl, 37(%eax)
.L2509:
	.loc 1 6262 0
	movl	-104(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 6263 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %edx
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_apply_type_quals_to_decl@PLT
	.loc 1 6265 0
	movl	-104(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-63, %al
	je	.L2515
	.loc 1 6266 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %edx
	movl	-104(%ebp), %eax
	movl	%edx, 68(%eax)
	jmp	.L2517
.L2515:
	.loc 1 6268 0
	movl	-104(%ebp), %eax
	movl	68(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, %edx
	movl	-104(%ebp), %eax
	movl	%edx, 68(%eax)
.L2517:
	.loc 1 6271 0
	movl	-104(%ebp), %eax
	movl	$0, 56(%eax)
	.loc 1 6273 0
	movl	-104(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2518
	movl	-104(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L2520
	movl	-104(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L2520
	movl	-104(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L2520
	movl	-104(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L2520
.L2518:
	.loc 1 6274 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	type_passed_as@PLT
	movl	%eax, %edx
	movl	-104(%ebp), %eax
	movl	%edx, 68(%eax)
.L2520:
	.loc 1 6275 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2441
	.loc 1 6276 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	tsubst@PLT
	movl	%eax, %edx
	movl	-104(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6279 0
	jmp	.L2441
.L2414:
	.loc 1 6283 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_decl@PLT
	movl	%eax, -104(%ebp)
	.loc 1 6284 0
	movl	-104(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 6285 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %edx
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_apply_type_quals_to_decl@PLT
	.loc 1 6289 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, %edx
	movl	-104(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 6291 0
	movl	-104(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 6292 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L2441
	.loc 1 6293 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 6295 0
	jmp	.L2441
.L2416:
	.loc 1 6299 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -104(%ebp)
	.loc 1 6300 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, %edx
	movl	-104(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 6302 0
	movl	-104(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 6304 0
	jmp	.L2441
.L2411:
	.loc 1 6307 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-61, %al
	je	.L2528
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2412
.L2528:
	.loc 1 6314 0
	movl	16(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -104(%ebp)
	.loc 1 6315 0
	jmp	.L2441
.L2412:
.LBB111:
	.loc 1 6322 0
	movl	$0, -32(%ebp)
	.loc 1 6323 0
	movl	$0, -28(%ebp)
	.loc 1 6325 0
	movl	$0, -20(%ebp)
	.loc 1 6330 0
	movl	$0, -12(%ebp)
	.loc 1 6332 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L2530
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -128(%ebp)
	jmp	.L2532
.L2530:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -128(%ebp)
.L2532:
	movl	-128(%ebp), %edx
	movzbl	8(%edx), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L2533
	.loc 1 6333 0
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	$1, 16(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_aggr_type
	movl	%eax, -16(%ebp)
	jmp	.L2535
.L2533:
	.loc 1 6336 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2536
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L2538
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L2538
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L2538
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L2538
.L2536:
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L2542
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -124(%ebp)
	jmp	.L2544
.L2542:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -124(%ebp)
.L2544:
	movl	-124(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$39, %al
	jne	.L2538
	.loc 1 6337 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6336 0
	jmp	.L2535
.L2538:
	.loc 1 6341 0
	movl	$0, -16(%ebp)
	.loc 1 6342 0
	movl	$1, -12(%ebp)
.L2535:
	.loc 1 6346 0
	cmpl	$0, -12(%ebp)
	jne	.L2546
	.loc 1 6348 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6349 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	most_general_template@PLT
	movl	%eax, -28(%ebp)
	.loc 1 6350 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -32(%ebp)
	.loc 1 6351 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	retrieve_specialization
	movl	%eax, -24(%ebp)
	jmp	.L2548
.L2546:
	.loc 1 6354 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	retrieve_local_specialization
	movl	%eax, -24(%ebp)
.L2548:
	.loc 1 6356 0
	cmpl	$0, -24(%ebp)
	je	.L2549
	.loc 1 6358 0
	movl	-24(%ebp), %eax
	movl	%eax, -104(%ebp)
	.loc 1 6359 0
	jmp	.L2441
.L2549:
	.loc 1 6362 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_decl@PLT
	movl	%eax, -104(%ebp)
	.loc 1 6363 0
	movl	-104(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L2551
	.loc 1 6364 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
	movl	%eax, 16(%ebp)
	jmp	.L2553
.L2551:
	.loc 1 6365 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L2553
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2553
	.loc 1 6366 0
	movl	-104(%ebp), %eax
	movzbl	38(%eax), %edx
	orl	$2, %edx
	movb	%dl, 38(%eax)
.L2553:
	.loc 1 6367 0
	movl	-104(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 6368 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %edx
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_apply_type_quals_to_decl@PLT
	.loc 1 6369 0
	movl	-104(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 56(%edx)
	.loc 1 6371 0
	movl	-104(%ebp), %eax
	movl	$0, 92(%eax)
	.loc 1 6372 0
	movl	-104(%ebp), %eax
	movl	$0, 104(%eax)
	.loc 1 6376 0
	movl	-104(%ebp), %eax
	movl	$0, 68(%eax)
	.loc 1 6377 0
	movl	-104(%ebp), %eax
	movl	$0, 104(%eax)
	.loc 1 6378 0
	movl	-104(%ebp), %eax
	movl	$0, 48(%eax)
	movl	-104(%ebp), %eax
	movl	48(%eax), %edx
	movl	-104(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 6382 0
	movl	-104(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L2556
	.loc 1 6384 0
	movl	-104(%ebp), %edx
	movzbl	38(%edx), %eax
	andl	$-17, %eax
	movb	%al, 38(%edx)
	.loc 1 6385 0
	movl	-104(%ebp), %edx
	movzbl	11(%edx), %eax
	andl	$-3, %eax
	movb	%al, 11(%edx)
.L2556:
	.loc 1 6388 0
	cmpl	$0, -12(%ebp)
	jne	.L2558
	.loc 1 6394 0
	movl	-104(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$1, %eax
	movb	%al, 33(%edx)
	.loc 1 6396 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	register_specialization
	.loc 1 6397 0
	movl	-104(%ebp), %eax
	movl	136(%eax), %esi
	movl	$0, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, 8(%esi)
	.loc 1 6398 0
	movl	-104(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-7, %eax
	orl	$2, %eax
	movb	%al, 6(%edx)
	jmp	.L2560
.L2558:
	.loc 1 6401 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	register_local_specialization
.L2560:
	.loc 1 6403 0
	movl	-104(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 6404 0
	movl	-104(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L2561
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L2561
	.loc 1 6405 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
.L2561:
	.loc 1 6407 0
	movl	$0, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_decl@PLT
	.loc 1 6409 0
	jmp	.L2441
.L2409:
.LBE111:
	.loc 1 6412 0
	leal	__FUNCTION__.22340@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6412, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2441:
	.loc 1 6416 0
	movl	lineno@GOT(%ebx), %edx
	movl	-112(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6417 0
	movl	input_filename@GOT(%ebx), %edx
	movl	-108(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6419 0
	movl	-104(%ebp), %eax
	movl	%eax, -140(%ebp)
.L2458:
	movl	-140(%ebp), %eax
	.loc 1 6420 0
	addl	$176, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE96:
	.size	tsubst_decl, .-tsubst_decl
	.section	.rodata
.LC90:
	.string	"invalid parameter type `%T'"
.LC91:
	.string	"in declaration `%D'"
	.text
	.type	tsubst_arg_types, @function
tsubst_arg_types:
.LFB97:
	.loc 1 6430 0
	pushl	%ebp
.LCFI335:
	movl	%esp, %ebp
.LCFI336:
	pushl	%ebx
.LCFI337:
	subl	$36, %esp
.LCFI338:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6434 0
	cmpl	$0, 8(%ebp)
	je	.L2566
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2568
.L2566:
	.loc 1 6435 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2569
.L2568:
	.loc 1 6437 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_arg_types
	movl	%eax, -12(%ebp)
	.loc 1 6439 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L2570
	.loc 1 6440 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2569
.L2570:
	.loc 1 6442 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -8(%ebp)
	.loc 1 6443 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L2572
	.loc 1 6444 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2569
.L2572:
	.loc 1 6445 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L2574
	.loc 1 6447 0
	movl	16(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2576
	.loc 1 6449 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 6450 0
	cmpl	$0, 20(%ebp)
	je	.L2576
	.loc 1 6451 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
.L2576:
	.loc 1 6453 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2569
.L2574:
	.loc 1 6458 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	type_decays_to@PLT
	movl	72(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6463 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	hash_tree_cons@PLT
	movl	%eax, -24(%ebp)
.L2569:
	movl	-24(%ebp), %eax
	.loc 1 6466 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE97:
	.size	tsubst_arg_types, .-tsubst_arg_types
	.section	.rodata
	.type	__FUNCTION__.22841, @object
	.size	__FUNCTION__.22841, 21
__FUNCTION__.22841:
	.string	"tsubst_function_type"
	.align 4
.LC92:
	.string	"creating pointer to member function of non-class type `%T'"
	.text
	.type	tsubst_function_type, @function
tsubst_function_type:
.LFB98:
	.loc 1 6491 0
	pushl	%ebp
.LCFI339:
	movl	%esp, %ebp
.LCFI340:
	pushl	%ebx
.LCFI341:
	subl	$52, %esp
.LCFI342:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6497 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	je	.L2581
	leal	__FUNCTION__.22841@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6497, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2581:
	.loc 1 6500 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -20(%ebp)
	.loc 1 6501 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L2583
	.loc 1 6502 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2585
.L2583:
	.loc 1 6505 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_arg_types
	movl	%eax, -16(%ebp)
	.loc 1 6507 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L2586
	.loc 1 6508 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2585
.L2586:
	.loc 1 6511 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L2588
	.loc 1 6512 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_type@PLT
	movl	%eax, -12(%ebp)
	jmp	.L2590
.L2588:
.LBB112:
	.loc 1 6515 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6516 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2591
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2591
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2591
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2591
	movl	-8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L2591
	.loc 1 6525 0
	movl	16(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2597
	.loc 1 6526 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2597:
	.loc 1 6528 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2585
.L2591:
	.loc 1 6531 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cplus_method_type@PLT
	movl	%eax, -12(%ebp)
.L2590:
.LBE112:
	.loc 1 6534 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -28(%ebp)
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2599
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2599
	movl	$1, -24(%ebp)
	jmp	.L2602
.L2599:
	movl	$0, -24(%ebp)
.L2602:
	movl	-24(%ebp), %eax
	sall	$3, %eax
	movl	-28(%ebp), %edx
	orl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, -12(%ebp)
	.loc 1 6535 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -12(%ebp)
	.loc 1 6537 0
	movl	-12(%ebp), %eax
	movl	%eax, -32(%ebp)
.L2585:
	movl	-32(%ebp), %eax
	.loc 1 6538 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE98:
	.size	tsubst_function_type, .-tsubst_function_type
	.type	tsubst_call_declarator_parms, @function
tsubst_call_declarator_parms:
.LFB99:
	.loc 1 6548 0
	pushl	%ebp
.LCFI343:
	movl	%esp, %ebp
.LCFI344:
	pushl	%ebx
.LCFI345:
	subl	$36, %esp
.LCFI346:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6553 0
	cmpl	$0, 8(%ebp)
	je	.L2605
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2607
.L2605:
	.loc 1 6554 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2608
.L2607:
	.loc 1 6556 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_call_declarator_parms
	movl	%eax, -16(%ebp)
	.loc 1 6560 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -12(%ebp)
	.loc 1 6564 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, -8(%ebp)
	.loc 1 6569 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -16(%ebp)
	.loc 1 6572 0
	movl	-16(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$4, %eax
	movb	%al, 11(%edx)
	.loc 1 6574 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L2608:
	movl	-24(%ebp), %eax
	.loc 1 6575 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE99:
	.size	tsubst_call_declarator_parms, .-tsubst_call_declarator_parms
	.local	last_file.22990
	.comm	last_file.22990,4,4
	.local	last_line.22989
	.comm	last_line.22989,4,4
	.section	.rodata
	.type	__FUNCTION__.22946, @object
	.size	__FUNCTION__.22946, 7
__FUNCTION__.22946:
	.string	"tsubst"
.LC93:
	.string	"creating array with size zero"
	.align 4
.LC94:
	.string	"creating array with size zero (`%E')"
.LC95:
	.string	"forming reference to void"
.LC96:
	.string	"pointer"
.LC97:
	.string	"reference"
	.align 4
.LC98:
	.string	"forming %s to reference type `%T'"
	.align 4
.LC99:
	.string	"creating pointer to member of non-class type `%T'"
	.align 4
.LC100:
	.string	"creating pointer to member reference type `%T'"
.LC101:
	.string	"creating array of `%T'"
	.align 4
.LC102:
	.string	"`%T' is not a class, struct, or union type"
.LC103:
	.string	"use of `%s' in template"
	.text
.globl tsubst
	.type	tsubst, @function
tsubst:
.LFB100:
	.loc 1 6603 0
	pushl	%ebp
.LCFI347:
	movl	%esp, %ebp
.LCFI348:
	pushl	%edi
.LCFI349:
	pushl	%esi
.LCFI350:
	pushl	%ebx
.LCFI351:
	subl	$316, %esp
.LCFI352:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6609 0
	cmpl	$0, 8(%ebp)
	je	.L2611
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2611
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2611
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2611
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2611
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L2617
.L2611:
	.loc 1 6614 0
	movl	8(%ebp), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2617:
	.loc 1 6616 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L2619
	.loc 1 6617 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	identifier_type_value@PLT
	movl	%eax, -172(%ebp)
	jmp	.L2621
.L2619:
	.loc 1 6619 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -172(%ebp)
.L2621:
	.loc 1 6620 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	116(%eax), %eax
	cmpl	-172(%ebp), %eax
	jne	.L2622
	.loc 1 6621 0
	leal	__FUNCTION__.22946@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6621, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2622:
	.loc 1 6623 0
	cmpl	$0, -172(%ebp)
	je	.L2624
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L2624
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2624
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L2624
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	je	.L2624
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L2624
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L2624
	.loc 1 6629 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -172(%ebp)
.L2624:
	.loc 1 6630 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-172(%ebp), %eax
	jne	.L2632
	.loc 1 6631 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2632:
	.loc 1 6633 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L2634
	.loc 1 6636 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_decl
	movl	%eax, -164(%ebp)
	.loc 1 6638 0
	movl	flag_openmp@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2636
	.loc 1 6642 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	je	.L2638
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L2636
	movzbl	regenerating_decl_from_template@GOTOFF(%ebx), %eax
	testb	%al, %al
	je	.L2636
.L2638:
	.loc 1 6644 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	template_substituted@PLT
.L2636:
	.loc 1 6646 0
	movl	-164(%ebp), %edx
	movl	%edx, -296(%ebp)
	jmp	.L2618
.L2634:
	.loc 1 6652 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -292(%ebp)
	cmpl	$199, -292(%ebp)
	ja	.L2641
	movl	-292(%ebp), %eax
	sall	$2, %eax
	movl	.L2662@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L2662:
	.long	.L2642@GOTOFF
	.long	.L2642@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2643@GOTOFF
	.long	.L2644@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2642@GOTOFF
	.long	.L2645@GOTOFF
	.long	.L2642@GOTOFF
	.long	.L2642@GOTOFF
	.long	.L2642@GOTOFF
	.long	.L2646@GOTOFF
	.long	.L2642@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2647@GOTOFF
	.long	.L2648@GOTOFF
	.long	.L2647@GOTOFF
	.long	.L2649@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2650@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2646@GOTOFF
	.long	.L2646@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2649@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2642@GOTOFF
	.long	.L2642@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2642@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2651@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2652@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2653@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2654@GOTOFF
	.long	.L2654@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2655@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2655@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2656@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2657@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2641@GOTOFF
	.long	.L2658@GOTOFF
	.long	.L2658@GOTOFF
	.long	.L2658@GOTOFF
	.long	.L2658@GOTOFF
	.long	.L2659@GOTOFF
	.long	.L2660@GOTOFF
	.long	.L2661@GOTOFF
	.text
.L2646:
	.loc 1 6657 0
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_aggr_type
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2642:
	.loc 1 6670 0
	movl	8(%ebp), %ecx
	movl	%ecx, -296(%ebp)
	jmp	.L2618
.L2645:
	.loc 1 6673 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2663
	.loc 1 6674 0
	movl	8(%ebp), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2663:
	.loc 1 6676 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2665
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2665
	.loc 1 6678 0
	movl	8(%ebp), %edx
	movl	%edx, -296(%ebp)
	jmp	.L2618
.L2665:
.LBB113:
	.loc 1 6681 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -156(%ebp)
	.loc 1 6683 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, -160(%ebp)
	.loc 1 6684 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-160(%ebp), %eax
	jne	.L2668
	.loc 1 6685 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2668:
	.loc 1 6688 0
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_fold_nontype_arg
	movl	%eax, -160(%ebp)
	.loc 1 6689 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L2670
	.loc 1 6690 0
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_constant_value@PLT
	movl	%eax, -160(%ebp)
.L2670:
	.loc 1 6692 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L2672
	movl	-160(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L2674
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	je	.L2674
.L2672:
.LBB114:
	.loc 1 6702 0
	movl	$7, (%esp)
	call	make_node@PLT
	movl	%eax, -152(%ebp)
	.loc 1 6703 0
	movl	global_trees@GOT(%ebx), %eax
	movl	80(%eax), %edx
	movl	-152(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 6704 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$61, (%esp)
	call	build_min@PLT
	movl	%eax, %edx
	movl	-152(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 6706 0
	movl	-152(%ebp), %ecx
	movl	%ecx, -296(%ebp)
	jmp	.L2618
.L2674:
.LBE114:
	.loc 1 6709 0
	movl	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2676
	.loc 1 6712 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2680
	.loc 1 6713 0
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	jmp	.L2680
.L2676:
	.loc 1 6715 0
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L2681
	movl	-160(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2680
	movl	-160(%ebp), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -288(%ebp)
	movl	%ecx, -284(%ebp)
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -280(%ebp)
	movl	%ecx, -276(%ebp)
	movl	-276(%ebp), %ecx
	cmpl	%ecx, -284(%ebp)
	jl	.L2681
	movl	-276(%ebp), %eax
	cmpl	%eax, -284(%ebp)
	jg	.L2685
	movl	-280(%ebp), %edx
	cmpl	%edx, -288(%ebp)
	jb	.L2681
.L2685:
	movl	-160(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L2680
	movl	-160(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -272(%ebp)
	movl	%ecx, -268(%ebp)
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -264(%ebp)
	movl	%ecx, -260(%ebp)
	movl	-260(%ebp), %ecx
	cmpl	%ecx, -268(%ebp)
	ja	.L2680
	movl	-260(%ebp), %eax
	cmpl	%eax, -268(%ebp)
	jb	.L2681
	movl	-264(%ebp), %edx
	cmpl	%edx, -272(%ebp)
	jae	.L2680
.L2681:
	.loc 1 6726 0
	movl	16(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2688
	.loc 1 6727 0
	movl	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2688:
	.loc 1 6729 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2680:
	.loc 1 6732 0
	movl	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	compute_array_index_type@PLT
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2658:
.LBE113:
.LBB115:
	.loc 1 6744 0
	movl	$0, -168(%ebp)
	.loc 1 6746 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2690
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-61, %al
	je	.L2690
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L2693
.L2690:
	.loc 1 6750 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, -148(%ebp)
	.loc 1 6751 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	%eax, -144(%ebp)
	.loc 1 6746 0
	jmp	.L2694
.L2693:
	.loc 1 6755 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, -148(%ebp)
	.loc 1 6756 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	%eax, -144(%ebp)
.L2694:
	.loc 1 6759 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L2695
.LBB116:
	.loc 1 6761 0
	movl	$0, -136(%ebp)
	.loc 1 6763 0
	cmpl	$0, 12(%ebp)
	je	.L2697
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L2697
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L2697
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2697
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L2697
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -252(%ebp)
	jmp	.L2703
.L2697:
	movl	$1, -252(%ebp)
.L2703:
	movl	-252(%ebp), %ecx
	movl	%ecx, -140(%ebp)
	.loc 1 6764 0
	movl	-144(%ebp), %eax
	cmpl	-140(%ebp), %eax
	jg	.L2704
	.loc 1 6765 0
	cmpl	$0, 12(%ebp)
	je	.L2706
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L2706
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L2706
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2706
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L2706
	movl	-144(%ebp), %edx
	subl	$1, %edx
	movl	12(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	%edx, -248(%ebp)
	jmp	.L2712
.L2706:
	movl	12(%ebp), %eax
	movl	%eax, -248(%ebp)
.L2712:
	movl	-148(%ebp), %eax
	movl	-248(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -136(%ebp)
.L2704:
	.loc 1 6767 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-136(%ebp), %eax
	jne	.L2713
	.loc 1 6768 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2713:
	.loc 1 6769 0
	cmpl	$0, -136(%ebp)
	je	.L2715
	.loc 1 6771 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	jne	.L2717
	.loc 1 6773 0
	movl	-136(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	je	.L2719
	leal	__FUNCTION__.22946@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6773, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2719:
	.loc 1 6774 0
	movl	16(%ebp), %edi
	orl	$8, %edi
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	orl	%esi, %eax
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2717:
	.loc 1 6778 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L2721
.LBB117:
	.loc 1 6783 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L2723
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -244(%ebp)
	jmp	.L2725
.L2723:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L2726
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -240(%ebp)
	jmp	.L2728
.L2726:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L2729
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -236(%ebp)
	jmp	.L2731
.L2729:
	movl	$0, -236(%ebp)
.L2731:
	movl	-236(%ebp), %ecx
	movl	%ecx, -240(%ebp)
.L2728:
	movl	-240(%ebp), %eax
	movl	%eax, -244(%ebp)
.L2725:
	movl	-244(%ebp), %ecx
	movl	20(%ecx), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -132(%ebp)
	.loc 1 6784 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-132(%ebp), %eax
	jne	.L2732
	.loc 1 6785 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2732:
	.loc 1 6792 0
	movl	-136(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-61, %al
	jne	.L2734
	.loc 1 6793 0
	movl	-136(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -136(%ebp)
.L2734:
	.loc 1 6795 0
	movl	-136(%ebp), %eax
	movl	56(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_template_class@PLT
	movl	%eax, -168(%ebp)
	.loc 1 6800 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -232(%ebp)
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2736
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2736
	movl	$1, -228(%ebp)
	jmp	.L2739
.L2736:
	movl	$0, -228(%ebp)
.L2739:
	movl	-228(%ebp), %eax
	sall	$3, %eax
	movl	-232(%ebp), %edx
	orl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2721:
.LBE117:
	.loc 1 6805 0
	movl	-136(%ebp), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2715:
.LBE116:
	.loc 1 6811 0
	cmpl	$1, -144(%ebp)
	je	.L2740
	jmp	.L2741
.L2695:
	.loc 1 6809 0
	leal	__FUNCTION__.22946@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6809, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2740:
	.loc 1 6815 0
	movl	8(%ebp), %edx
	movl	%edx, -296(%ebp)
	jmp	.L2618
.L2741:
	.loc 1 6820 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -224(%ebp)
	cmpl	$193, -224(%ebp)
	je	.L2743
	cmpl	$193, -224(%ebp)
	jb	.L2742
	cmpl	$196, -224(%ebp)
	ja	.L2742
	.loc 1 6825 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	testl	%eax, %eax
	je	.L2745
	.loc 1 6827 0
	movl	8(%ebp), %eax
	movl	72(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -168(%ebp)
	.loc 1 6828 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	jne	.L2747
	movl	$8, -220(%ebp)
	jmp	.L2749
.L2747:
	movl	$0, -220(%ebp)
.L2749:
	movl	-220(%ebp), %esi
	orl	16(%ebp), %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, -168(%ebp)
	jmp	.L2772
.L2745:
	.loc 1 6835 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_type@PLT
	movl	%eax, -168(%ebp)
	.loc 1 6836 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-140(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reduce_template_parm_level
	movl	%eax, %edx
	movl	-168(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 6839 0
	movl	-168(%ebp), %eax
	movl	16(%eax), %eax
	movl	40(%eax), %edx
	movl	-168(%ebp), %eax
	movl	%edx, 56(%eax)
	movl	-168(%ebp), %eax
	movl	56(%eax), %edx
	movl	-168(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6840 0
	movl	-168(%ebp), %edx
	movl	-168(%ebp), %eax
	movl	%eax, 72(%edx)
	.loc 1 6841 0
	movl	-168(%ebp), %eax
	movl	$0, 44(%eax)
	.loc 1 6842 0
	movl	-168(%ebp), %eax
	movl	$0, 48(%eax)
	.loc 1 6844 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L2772
.LBB118:
	.loc 1 6847 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L2752
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -216(%ebp)
	jmp	.L2754
.L2752:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L2755
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -212(%ebp)
	jmp	.L2757
.L2755:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L2758
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -208(%ebp)
	jmp	.L2760
.L2758:
	movl	$0, -208(%ebp)
.L2760:
	movl	-208(%ebp), %ecx
	movl	%ecx, -212(%ebp)
.L2757:
	movl	-212(%ebp), %eax
	movl	%eax, -216(%ebp)
.L2754:
	movl	-216(%ebp), %ecx
	movl	20(%ecx), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -128(%ebp)
	.loc 1 6848 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-128(%ebp), %eax
	jne	.L2761
	.loc 1 6849 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2761:
	.loc 1 6851 0
	movl	-168(%ebp), %eax
	movl	92(%eax), %eax
	movl	%eax, -204(%ebp)
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L2763
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -200(%ebp)
	jmp	.L2765
.L2763:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L2766
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -196(%ebp)
	jmp	.L2768
.L2766:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L2769
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -192(%ebp)
	jmp	.L2771
.L2769:
	movl	$0, -192(%ebp)
.L2771:
	movl	-192(%ebp), %eax
	movl	%eax, -196(%ebp)
.L2768:
	movl	-196(%ebp), %edx
	movl	%edx, -200(%ebp)
.L2765:
	movl	-200(%ebp), %ecx
	movl	16(%ecx), %eax
	movl	$0, 8(%esp)
	movl	-128(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	-204(%ebp), %edx
	movl	%eax, 64(%edx)
	.loc 1 6855 0
	jmp	.L2772
.L2743:
.LBE118:
	.loc 1 6858 0
	movl	-140(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reduce_template_parm_level
	movl	%eax, -168(%ebp)
	.loc 1 6859 0
	jmp	.L2772
.L2742:
	.loc 1 6862 0
	leal	__FUNCTION__.22946@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6862, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2772:
	.loc 1 6865 0
	movl	-168(%ebp), %ecx
	movl	%ecx, -296(%ebp)
	jmp	.L2618
.L2643:
.LBE115:
.LBB119:
	.loc 1 6872 0
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2773
	.loc 1 6873 0
	movl	8(%ebp), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2773:
	.loc 1 6875 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 6876 0
	cmpl	$0, -124(%ebp)
	je	.L2775
	.loc 1 6878 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -124(%ebp)
	.loc 1 6879 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-124(%ebp), %eax
	jne	.L2775
	.loc 1 6880 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2775:
	.loc 1 6882 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 6883 0
	cmpl	$0, -120(%ebp)
	je	.L2778
	.loc 1 6885 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -120(%ebp)
	.loc 1 6886 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-120(%ebp), %eax
	jne	.L2778
	.loc 1 6887 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2778:
	.loc 1 6889 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	.loc 1 6890 0
	cmpl	$0, -116(%ebp)
	je	.L2781
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	-116(%ebp), %eax
	je	.L2781
	.loc 1 6892 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -116(%ebp)
	.loc 1 6893 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-116(%ebp), %eax
	jne	.L2781
	.loc 1 6894 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2781:
	.loc 1 6896 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-124(%ebp), %eax
	jne	.L2785
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	-120(%ebp), %eax
	jne	.L2785
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-116(%ebp), %eax
	jne	.L2785
	.loc 1 6899 0
	movl	8(%ebp), %edx
	movl	%edx, -296(%ebp)
	jmp	.L2618
.L2785:
	.loc 1 6900 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2789
	.loc 1 6902 0
	movl	-116(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -112(%ebp)
	.loc 1 6903 0
	movl	-112(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$4, %eax
	movb	%al, 11(%edx)
	jmp	.L2791
.L2789:
	.loc 1 6906 0
	movl	-116(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	hash_tree_cons@PLT
	movl	%eax, -112(%ebp)
.L2791:
	.loc 1 6907 0
	movl	-112(%ebp), %ecx
	movl	%ecx, -296(%ebp)
	jmp	.L2618
.L2644:
.LBE119:
	.loc 1 6910 0
	cmpl	$0, -172(%ebp)
	je	.L2792
	.loc 1 6915 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, 8(%ebp)
	.loc 1 6918 0
	movl	-172(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -172(%ebp)
	.loc 1 6920 0
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 6921 0
	movl	-172(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2794
	movl	-172(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2794
	movl	-172(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2794
	movl	-172(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2794
	movl	-172(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2799
.L2794:
	.loc 1 6923 0
	movl	-172(%ebp), %eax
	movl	76(%eax), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 6924 0
	movl	-172(%ebp), %eax
	movl	76(%eax), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 6925 0
	movl	-172(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L2799
	.loc 1 6926 0
	movl	-172(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 36(%eax)
.L2799:
	.loc 1 6928 0
	movl	8(%ebp), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2792:
	.loc 1 6932 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_template_arg_vector
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2647:
.LBB120:
	.loc 1 6939 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-172(%ebp), %eax
	jne	.L2801
	movl	-172(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L2801
	.loc 1 6940 0
	movl	8(%ebp), %edx
	movl	%edx, -296(%ebp)
	jmp	.L2618
.L2801:
	.loc 1 6942 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -108(%ebp)
	.loc 1 6953 0
	movl	-172(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L2804
	cmpl	$16, -108(%ebp)
	jne	.L2806
	movl	-172(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L2806
.L2804:
.LBB121:
	.loc 1 6962 0
	movl	16(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2808
	movl	last_line.22989@GOTOFF(%ebx), %eax
	movl	lineno@GOT(%ebx), %edx
	movl	(%edx), %edx
	cmpl	%edx, %eax
	jne	.L2810
	movl	last_file.22990@GOTOFF(%ebx), %eax
	movl	input_filename@GOT(%ebx), %edx
	movl	(%edx), %edx
	cmpl	%edx, %eax
	je	.L2808
.L2810:
	.loc 1 6965 0
	movl	-172(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L2812
	.loc 1 6966 0
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L2814
.L2812:
	.loc 1 6968 0
	cmpl	$14, -108(%ebp)
	jne	.L2815
	leal	.LC96@GOTOFF(%ebx), %ecx
	movl	%ecx, -188(%ebp)
	jmp	.L2817
.L2815:
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, -188(%ebp)
.L2817:
	movl	-172(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-188(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2814:
	.loc 1 6971 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, last_line.22989@GOTOFF(%ebx)
	.loc 1 6972 0
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, last_file.22990@GOTOFF(%ebx)
.L2808:
	.loc 1 6975 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2806:
.LBE121:
	.loc 1 6977 0
	cmpl	$14, -108(%ebp)
	jne	.L2818
	.loc 1 6979 0
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -168(%ebp)
	.loc 1 6980 0
	movl	-172(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L2822
	.loc 1 6981 0
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	build_ptrmemfunc_type@PLT
	movl	%eax, -168(%ebp)
	jmp	.L2822
.L2818:
	.loc 1 6984 0
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	build_reference_type@PLT
	movl	%eax, -168(%ebp)
.L2822:
	.loc 1 6985 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -184(%ebp)
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2823
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2823
	movl	$1, -180(%ebp)
	jmp	.L2826
.L2823:
	movl	$0, -180(%ebp)
.L2826:
	movl	-180(%ebp), %eax
	sall	$3, %eax
	movl	-184(%ebp), %edx
	orl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, -168(%ebp)
	.loc 1 6987 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-168(%ebp), %eax
	je	.L2827
	.loc 1 6989 0
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
.L2827:
	.loc 1 6991 0
	movl	-168(%ebp), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2648:
.LBE120:
	.loc 1 6995 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -168(%ebp)
	.loc 1 6996 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-168(%ebp), %eax
	je	.L2829
	movl	-168(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2831
	movl	-168(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2831
	movl	-168(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2831
	movl	-168(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2831
	movl	-168(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L2831
.L2829:
	.loc 1 7005 0
	movl	16(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2836
	.loc 1 7006 0
	movl	-168(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC99@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2836:
	.loc 1 7007 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2831:
	.loc 1 7009 0
	movl	-172(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2838
	.loc 1 7011 0
	movl	16(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2840
	.loc 1 7012 0
	movl	-172(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC100@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2840:
	.loc 1 7014 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2838:
	.loc 1 7016 0
	movl	-172(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L2842
	leal	__FUNCTION__.22946@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7016, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2842:
	.loc 1 7017 0
	movl	-172(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L2844
	.loc 1 7028 0
	movl	-172(%ebp), %eax
	movl	16(%eax), %edx
	movl	-172(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-168(%ebp), %eax
	movl	72(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	build_cplus_method_type@PLT
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2844:
	.loc 1 7032 0
	movl	-172(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	build_offset_type@PLT
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2649:
.LBB122:
	.loc 1 7040 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_function_type
	movl	%eax, -104(%ebp)
	.loc 1 7041 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-104(%ebp), %eax
	jne	.L2846
	.loc 1 7042 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2846:
	.loc 1 7045 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -100(%ebp)
	.loc 1 7046 0
	cmpl	$0, -100(%ebp)
	je	.L2848
.LBB123:
	.loc 1 7048 0
	movl	$0, -96(%ebp)
	.loc 1 7050 0
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L2853
	.loc 1 7051 0
	movl	-100(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2852
.L2854:
.LBB124:
	.loc 1 7055 0
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 7057 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -92(%ebp)
	.loc 1 7058 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-92(%ebp), %eax
	jne	.L2855
	.loc 1 7059 0
	movl	-92(%ebp), %edx
	movl	%edx, -296(%ebp)
	jmp	.L2618
.L2855:
	.loc 1 7060 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	add_exception_specifier@PLT
	movl	%eax, -96(%ebp)
.LBE124:
	.loc 1 7053 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
.L2853:
	cmpl	$0, -100(%ebp)
	jne	.L2854
.L2852:
	.loc 1 7062 0
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	build_exception_variant@PLT
	movl	%eax, -104(%ebp)
.L2848:
.LBE123:
	.loc 1 7064 0
	movl	-104(%ebp), %ecx
	movl	%ecx, -296(%ebp)
	jmp	.L2618
.L2650:
.LBE122:
.LBB125:
	.loc 1 7068 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -88(%ebp)
	.loc 1 7069 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-88(%ebp), %eax
	jne	.L2857
	.loc 1 7070 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2857:
	.loc 1 7074 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-172(%ebp), %eax
	jne	.L2859
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-88(%ebp), %eax
	jne	.L2859
	.loc 1 7075 0
	movl	8(%ebp), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2859:
	.loc 1 7085 0
	movl	-172(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L2862
	movl	-172(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L2862
	movl	-172(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2865
.L2862:
	.loc 1 7089 0
	movl	16(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2866
	.loc 1 7090 0
	movl	-172(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC101@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2866:
	.loc 1 7091 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2865:
	.loc 1 7094 0
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cplus_array_type@PLT
	movl	%eax, -168(%ebp)
	.loc 1 7095 0
	movl	-168(%ebp), %edx
	movl	%edx, -296(%ebp)
	jmp	.L2618
.L2654:
.LBE125:
.LBB126:
	.loc 1 7101 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -84(%ebp)
	.loc 1 7102 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -80(%ebp)
	.loc 1 7104 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-84(%ebp), %eax
	je	.L2868
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-80(%ebp), %eax
	jne	.L2870
.L2868:
	.loc 1 7105 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2870:
	.loc 1 7107 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %ecx
	movl	-80(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2655:
.LBE126:
.LBB127:
	.loc 1 7113 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -76(%ebp)
	.loc 1 7114 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-76(%ebp), %eax
	jne	.L2871
	.loc 1 7115 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2871:
	.loc 1 7117 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2659:
.LBE127:
.LBB128:
	.loc 1 7123 0
	movl	8(%ebp), %eax
	movl	80(%eax), %edx
	movl	$1, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_aggr_type
	movl	%eax, -72(%ebp)
	.loc 1 7125 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, -68(%ebp)
	.loc 1 7127 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-72(%ebp), %eax
	je	.L2873
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-68(%ebp), %eax
	jne	.L2875
.L2873:
	.loc 1 7128 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2875:
	.loc 1 7130 0
	movl	-72(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2876
	movl	-72(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2876
	movl	-72(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2876
	movl	-72(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2876
	movl	-72(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L2876
	.loc 1 7132 0
	movl	16(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2882
	.loc 1 7133 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2882:
	.loc 1 7135 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2876:
	.loc 1 7137 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	jne	.L2884
	movl	-72(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L2884
	.loc 1 7147 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
	movl	%eax, -72(%ebp)
	.loc 1 7148 0
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L2884
	.loc 1 7150 0
	movl	16(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2888
	.loc 1 7151 0
	movl	$0, 8(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	cxx_incomplete_type_diagnostic@PLT
.L2888:
	.loc 1 7152 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2884:
	.loc 1 7156 0
	movl	16(%ebp), %eax
	andl	$1, %eax
	orl	$16, %eax
	movl	%eax, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	make_typename_type@PLT
	movl	%eax, -68(%ebp)
	.loc 1 7158 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-68(%ebp), %eax
	jne	.L2890
	.loc 1 7159 0
	movl	-68(%ebp), %ecx
	movl	%ecx, -296(%ebp)
	jmp	.L2618
.L2890:
	.loc 1 7160 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L2892
	.loc 1 7162 0
	orl	$8, 16(%ebp)
	.loc 1 7163 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
.L2892:
	.loc 1 7166 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%esi, %edx
	orl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2660:
.LBE128:
.LBB129:
	.loc 1 7173 0
	movl	8(%ebp), %eax
	movl	80(%eax), %edx
	movl	$1, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_aggr_type
	movl	%eax, -64(%ebp)
	.loc 1 7174 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 7176 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-64(%ebp), %eax
	je	.L2894
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-60(%ebp), %eax
	jne	.L2896
.L2894:
	.loc 1 7177 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2896:
	.loc 1 7179 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	make_unbound_class_template@PLT
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2651:
.LBE129:
.LBB130:
	.loc 1 7184 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -56(%ebp)
	.loc 1 7185 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-56(%ebp), %eax
	jne	.L2897
	.loc 1 7186 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2897:
	.loc 1 7187 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	make_pointer_declarator@PLT
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2656:
.LBE130:
.LBB131:
	.loc 1 7192 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -52(%ebp)
	.loc 1 7193 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-52(%ebp), %eax
	jne	.L2899
	.loc 1 7194 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2899:
	.loc 1 7195 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	make_reference_declarator@PLT
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2652:
.LBE131:
.LBB132:
	.loc 1 7200 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -48(%ebp)
	.loc 1 7201 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, -44(%ebp)
	.loc 1 7202 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-48(%ebp), %eax
	je	.L2901
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L2903
.L2901:
	.loc 1 7203 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2903:
	.loc 1 7205 0
	movl	tsubst_expr@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$44, (%esp)
	call	build_nt@PLT
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2653:
.LBE132:
.LBB133:
	.loc 1 7210 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -40(%ebp)
	.loc 1 7212 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	16(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_call_declarator_parms
	movl	%eax, -36(%ebp)
	.loc 1 7214 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -32(%ebp)
	.loc 1 7216 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-40(%ebp), %eax
	je	.L2904
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L2904
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L2907
.L2904:
	.loc 1 7218 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2907:
	.loc 1 7220 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	20(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	make_call_declarator@PLT
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2657:
.LBE133:
.LBB134:
	.loc 1 7225 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -28(%ebp)
	.loc 1 7226 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -24(%ebp)
	.loc 1 7227 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L2908
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L2910
.L2908:
	.loc 1 7228 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2910:
	.loc 1 7230 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_nt@PLT
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2661:
.LBE134:
.LBB135:
	.loc 1 7235 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, -20(%ebp)
	.loc 1 7236 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L2911
	.loc 1 7237 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2911:
	.loc 1 7239 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %esi
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%esi, %edx
	orl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %ecx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, -296(%ebp)
	jmp	.L2618
.L2641:
.LBE135:
	.loc 1 7246 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 4(%esp)
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sorry@PLT
	.loc 1 7248 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
.L2618:
	movl	-296(%ebp), %eax
	.loc 1 7250 0
	addl	$316, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE100:
	.size	tsubst, .-tsubst
	.section	.rodata
	.type	__FUNCTION__.23738, @object
	.size	__FUNCTION__.23738, 12
__FUNCTION__.23738:
	.string	"tsubst_copy"
	.text
.globl tsubst_copy
	.type	tsubst_copy, @function
tsubst_copy:
.LFB101:
	.loc 1 7261 0
	pushl	%ebp
.LCFI353:
	movl	%esp, %ebp
.LCFI354:
	pushl	%edi
.LCFI355:
	pushl	%esi
.LCFI356:
	pushl	%ebx
.LCFI357:
	subl	$108, %esp
.LCFI358:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7265 0
	cmpl	$0, 8(%ebp)
	je	.L2915
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2917
.L2915:
	.loc 1 7266 0
	movl	8(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2917:
	.loc 1 7268 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	.loc 1 7270 0
	cmpl	$215, -80(%ebp)
	ja	.L2919
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	.L2941@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L2941:
	.long	.L2919@GOTOFF
	.long	.L2920@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2921@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2922@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2922@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2922@GOTOFF
	.long	.L2922@GOTOFF
	.long	.L2922@GOTOFF
	.long	.L2922@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2922@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2922@GOTOFF
	.long	.L2922@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2922@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2923@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2924@GOTOFF
	.long	.L2922@GOTOFF
	.long	.L2923@GOTOFF
	.long	.L2925@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2926@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2928@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2929@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2930@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2931@GOTOFF
	.long	.L2932@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2928@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2928@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2928@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2928@GOTOFF
	.long	.L2933@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2928@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2928@GOTOFF
	.long	.L2928@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2934@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2928@GOTOFF
	.long	.L2928@GOTOFF
	.long	.L2928@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2935@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2936@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2937@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2928@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2938@GOTOFF
	.long	.L2922@GOTOFF
	.long	.L2922@GOTOFF
	.long	.L2922@GOTOFF
	.long	.L2922@GOTOFF
	.long	.L2922@GOTOFF
	.long	.L2922@GOTOFF
	.long	.L2922@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2939@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2919@GOTOFF
	.long	.L2940@GOTOFF
	.long	.L2930@GOTOFF
	.long	.L2933@GOTOFF
	.long	.L2933@GOTOFF
	.long	.L2933@GOTOFF
	.long	.L2933@GOTOFF
	.long	.L2933@GOTOFF
	.long	.L2927@GOTOFF
	.long	.L2928@GOTOFF
	.long	.L2930@GOTOFF
	.text
.L2925:
	.loc 1 7273 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	do_identifier@PLT
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2924:
.LBB136:
	.loc 1 7280 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	jne	.L2942
	.loc 1 7282 0
	movl	8(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2942:
	.loc 1 7294 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_aggr_type
	movl	%eax, -72(%ebp)
	.loc 1 7298 0
	movl	-72(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 7299 0
	jmp	.L2944
.L2945:
	.loc 1 7301 0
	movl	-68(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2946
	.loc 1 7302 0
	movl	-68(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2946:
	.loc 1 7300 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
.L2944:
	.loc 1 7299 0
	cmpl	$0, -68(%ebp)
	jne	.L2945
	.loc 1 7307 0
	leal	__FUNCTION__.23738@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7307, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2926:
.LBE136:
	.loc 1 7312 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L2949
.LBB137:
	.loc 1 7316 0
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	$1, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_aggr_type
	movl	%eax, -64(%ebp)
	.loc 1 7318 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	cmpl	-64(%ebp), %eax
	je	.L2949
	.loc 1 7319 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_field@PLT
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2949:
.LBE137:
	.loc 1 7321 0
	movl	8(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2923:
	.loc 1 7325 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L2952
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L2952
	.loc 1 7326 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, 8(%ebp)
.L2952:
	.loc 1 7327 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used@PLT
	.loc 1 7328 0
	movl	8(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2938:
	.loc 1 7331 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_member_template@PLT
	testl	%eax, %eax
	je	.L2955
	.loc 1 7332 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2955:
	.loc 1 7334 0
	movl	8(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2940:
.LBB138:
	.loc 1 7343 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, -60(%ebp)
	.loc 1 7345 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	-60(%ebp), %eax
	je	.L2957
	.loc 1 7347 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$206, (%esp)
	call	build_nt@PLT
	movl	%eax, -76(%ebp)
	.loc 1 7348 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	movl	-76(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	11(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 11(%edx)
	.loc 1 7349 0
	movl	-76(%ebp), %eax
	movl	%eax, 8(%ebp)
.L2957:
	.loc 1 7352 0
	movl	8(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2933:
.LBE138:
	.loc 1 7361 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	build1@PLT
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2928:
	.loc 1 7378 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	build1@PLT
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2927:
	.loc 1 7422 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	build_nt@PLT
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2931:
.LBB139:
	.loc 1 7428 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 7429 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	je	.L2959
	.loc 1 7430 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	get_first_fn@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, -56(%ebp)
	jmp	.L2961
.L2959:
	.loc 1 7433 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, -56(%ebp)
.L2961:
	.loc 1 7434 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	build_nt@PLT
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2932:
.LBE139:
.LBB140:
	.loc 1 7442 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 7443 0
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	jne	.L2962
	.loc 1 7445 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, -52(%ebp)
	.loc 1 7447 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$92, (%esp)
	call	build1@PLT
	movl	%eax, -52(%ebp)
	jmp	.L2964
.L2962:
	.loc 1 7449 0
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-71, %al
	jne	.L2965
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	jne	.L2965
.LBB141:
	.loc 1 7453 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, -48(%ebp)
	.loc 1 7454 0
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 7455 0
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L2968
	.loc 1 7456 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
.L2968:
	.loc 1 7457 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, -52(%ebp)
	.loc 1 7458 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$92, (%esp)
	call	build1@PLT
	movl	%eax, -52(%ebp)
	.loc 1 7459 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$185, (%esp)
	call	build_nt@PLT
	movl	%eax, -52(%ebp)
	.loc 1 7449 0
	jmp	.L2964
.L2965:
.LBE141:
	.loc 1 7462 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, -52(%ebp)
.L2964:
	.loc 1 7463 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	$0, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	build_nt@PLT
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2935:
.LBE140:
	.loc 1 7476 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L2970
.LBB142:
	.loc 1 7478 0
	call	begin_stmt_expr@PLT
	movl	%eax, -44(%ebp)
	.loc 1 7479 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	.loc 1 7480 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_stmt_expr@PLT
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2970:
.LBE142:
	.loc 1 7483 0
	movl	8(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2930:
	.loc 1 7489 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, %edi
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	build_nt@PLT
	movl	%eax, -76(%ebp)
	.loc 1 7493 0
	movl	-76(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2936:
	.loc 1 7498 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, %edi
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	build_nt@PLT
	movl	%eax, -76(%ebp)
	.loc 1 7502 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	movl	-76(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	11(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 11(%edx)
	.loc 1 7503 0
	movl	-76(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2937:
	.loc 1 7508 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	build_nt@PLT
	movl	%eax, -76(%ebp)
	.loc 1 7511 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	movl	-76(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	11(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 11(%edx)
	.loc 1 7512 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	-76(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	11(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 7513 0
	movl	-76(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2939:
.LBB143:
	.loc 1 7520 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, -40(%ebp)
	.loc 1 7522 0
	cmpl	$0, -40(%ebp)
	je	.L2972
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L2972
.LBB144:
	.loc 1 7525 0
	movl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L2975
.L2976:
	.loc 1 7526 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	maybe_fold_nontype_arg
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 7525 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L2975:
	cmpl	$0, -36(%ebp)
	jne	.L2976
	.loc 1 7522 0
	jmp	.L2978
.L2972:
.LBE144:
	.loc 1 7528 0
	cmpl	$0, -40(%ebp)
	je	.L2978
.LBB145:
	.loc 1 7531 0
	movl	$0, -32(%ebp)
	jmp	.L2980
.L2981:
	.loc 1 7532 0
	movl	-32(%ebp), %esi
	movl	-32(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	maybe_fold_nontype_arg
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, 20(%eax,%esi,4)
	.loc 1 7531 0
	addl	$1, -32(%ebp)
.L2980:
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-32(%ebp), %eax
	jg	.L2981
.L2978:
.LBE145:
	.loc 1 7536 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_template_function@PLT
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2921:
.LBE143:
.LBB146:
	.loc 1 7544 0
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2982
	.loc 1 7545 0
	movl	8(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2982:
	.loc 1 7547 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 7548 0
	cmpl	$0, -28(%ebp)
	je	.L2984
	.loc 1 7549 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, -28(%ebp)
.L2984:
	.loc 1 7550 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 7551 0
	cmpl	$0, -24(%ebp)
	je	.L2986
	.loc 1 7552 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, -24(%ebp)
.L2986:
	.loc 1 7553 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 7554 0
	cmpl	$0, -20(%ebp)
	je	.L2988
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L2988
	.loc 1 7555 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, -20(%ebp)
.L2988:
	.loc 1 7556 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L2991
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L2991
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L2991
	.loc 1 7559 0
	movl	8(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2991:
	.loc 1 7560 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2922:
.LBE146:
	.loc 1 7581 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2920:
	.loc 1 7584 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L2995
.LBB147:
	.loc 1 7586 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -16(%ebp)
	.loc 1 7587 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	mangle_conv_op_name_for_type@PLT
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2995:
.LBE147:
	.loc 1 7590 0
	movl	8(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2929:
	.loc 1 7594 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%esi, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$47, (%esp)
	call	build@PLT
	movl	%eax, -76(%ebp)
	.loc 1 7598 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	-76(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	11(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 7599 0
	movl	-76(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2934:
	.loc 1 7603 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	build_x_va_arg@PLT
	movl	%eax, -96(%ebp)
	jmp	.L2918
.L2919:
	.loc 1 7608 0
	movl	8(%ebp), %eax
	movl	%eax, -96(%ebp)
.L2918:
	movl	-96(%ebp), %eax
	.loc 1 7610 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE101:
	.size	tsubst_copy, .-tsubst_copy
	.section	.rodata
	.type	__FUNCTION__.24088, @object
	.size	__FUNCTION__.24088, 12
__FUNCTION__.24088:
	.string	"tsubst_expr"
	.text
.globl tsubst_expr
	.type	tsubst_expr, @function
tsubst_expr:
.LFB102:
	.loc 1 7619 0
	pushl	%ebp
.LCFI359:
	movl	%esp, %ebp
.LCFI360:
	pushl	%edi
.LCFI361:
	pushl	%esi
.LCFI362:
	pushl	%ebx
.LCFI363:
	subl	$92, %esp
.LCFI364:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7622 0
	cmpl	$0, 8(%ebp)
	je	.L2999
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L3001
.L2999:
	.loc 1 7623 0
	movl	8(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L3002
.L3001:
	.loc 1 7625 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L3003
	.loc 1 7626 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, -68(%ebp)
	jmp	.L3002
.L3003:
	.loc 1 7628 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	statement_code_p@PLT
	testl	%eax, %eax
	jne	.L3005
	.loc 1 7629 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, -68(%ebp)
	jmp	.L3002
.L3005:
	.loc 1 7631 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$156, %eax
	movl	%eax, -72(%ebp)
	cmpl	$66, -72(%ebp)
	ja	.L3007
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	.L3031@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L3031:
	.long	.L3008@GOTOFF
	.long	.L3009@GOTOFF
	.long	.L3010@GOTOFF
	.long	.L3011@GOTOFF
	.long	.L3012@GOTOFF
	.long	.L3013@GOTOFF
	.long	.L3014@GOTOFF
	.long	.L3015@GOTOFF
	.long	.L3016@GOTOFF
	.long	.L3017@GOTOFF
	.long	.L3018@GOTOFF
	.long	.L3019@GOTOFF
	.long	.L3020@GOTOFF
	.long	.L3021@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3022@GOTOFF
	.long	.L3023@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3024@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3025@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3026@GOTOFF
	.long	.L3027@GOTOFF
	.long	.L3028@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3029@GOTOFF
	.long	.L3007@GOTOFF
	.long	.L3030@GOTOFF
	.text
.L3027:
	.loc 1 7634 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prep_stmt@PLT
	.loc 1 7635 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	finish_named_return_value@PLT
	.loc 1 7638 0
	jmp	.L3032
.L3026:
	.loc 1 7641 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prep_stmt@PLT
	.loc 1 7642 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_initializer_list
	movl	%eax, (%esp)
	call	finish_mem_initializers@PLT
	.loc 1 7644 0
	jmp	.L3032
.L3015:
	.loc 1 7647 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prep_stmt@PLT
	.loc 1 7648 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, (%esp)
	call	finish_return_stmt@PLT
	.loc 1 7650 0
	jmp	.L3032
.L3008:
	.loc 1 7653 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prep_stmt@PLT
	.loc 1 7654 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	.loc 1 7656 0
	jmp	.L3032
.L3025:
	.loc 1 7659 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prep_stmt@PLT
	.loc 1 7660 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, (%esp)
	call	do_using_directive@PLT
	.loc 1 7662 0
	jmp	.L3032
.L3010:
.LBB148:
	.loc 1 7669 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prep_stmt@PLT
	.loc 1 7670 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 7671 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$32, %al
	jne	.L3033
	.loc 1 7672 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	finish_label_decl@PLT
	jmp	.L3035
.L3033:
	.loc 1 7673 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-56, %al
	jne	.L3036
.LBB149:
	.loc 1 7675 0
	movl	-40(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 7676 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 7678 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, -32(%ebp)
	.loc 1 7679 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$185, (%esp)
	call	build_nt@PLT
	movl	%eax, (%esp)
	call	do_local_using_decl@PLT
	jmp	.L3035
.L3036:
.LBE149:
	.loc 1 7683 0
	movl	-40(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 7684 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -40(%ebp)
	.loc 1 7685 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-40(%ebp), %eax
	je	.L3035
	.loc 1 7687 0
	cmpl	$0, -36(%ebp)
	je	.L3039
	.loc 1 7688 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 68(%eax)
.L3039:
	.loc 1 7694 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L3041
	.loc 1 7695 0
	movl	-40(%ebp), %eax
	movzbl	37(%eax), %edx
	orl	$64, %edx
	movb	%dl, 37(%eax)
.L3041:
	.loc 1 7696 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L3043
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L3045
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L3043
.L3045:
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L3047
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L3047
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L3047
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L3047
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L3043
.L3047:
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L3043
	.loc 1 7699 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_anon_union@PLT
	.loc 1 7696 0
	jmp	.L3035
.L3043:
	.loc 1 7702 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_push_decl@PLT
	.loc 1 7703 0
	movl	-40(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L3053
.LBB150:
	.loc 1 7708 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$2, 4(%esp)
	movl	%eax, (%esp)
	call	cxx_printable_name@PLT
	movl	%eax, -24(%ebp)
	.loc 1 7709 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_fname_init@PLT
	movl	%eax, -36(%ebp)
	.loc 1 7710 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L3055
.L3053:
.LBE150:
	.loc 1 7713 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, -36(%ebp)
.L3055:
	.loc 1 7714 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_finish_decl@PLT
.L3035:
	.loc 1 7722 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3032
	.loc 1 7723 0
	movl	-40(%ebp), %ecx
	movl	%ecx, -68(%ebp)
	jmp	.L3002
.L3012:
.LBE148:
	.loc 1 7729 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prep_stmt@PLT
	.loc 1 7731 0
	call	begin_for_stmt@PLT
	movl	%eax, -48(%ebp)
	.loc 1 7735 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	-48(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	9(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 7737 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	.loc 1 7738 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_for_init_stmt@PLT
	.loc 1 7739 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	finish_for_cond@PLT
	.loc 1 7742 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, -44(%ebp)
	.loc 1 7743 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_for_expr@PLT
	.loc 1 7744 0
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	.loc 1 7745 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_for_stmt@PLT
	.loc 1 7747 0
	jmp	.L3032
.L3013:
	.loc 1 7751 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prep_stmt@PLT
	.loc 1 7752 0
	call	begin_while_stmt@PLT
	movl	%eax, -48(%ebp)
	.loc 1 7753 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	finish_while_stmt_cond@PLT
	.loc 1 7756 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	.loc 1 7757 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_while_stmt@PLT
	.loc 1 7759 0
	jmp	.L3032
.L3014:
	.loc 1 7763 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prep_stmt@PLT
	.loc 1 7764 0
	call	begin_do_stmt@PLT
	movl	%eax, -48(%ebp)
	.loc 1 7765 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	.loc 1 7766 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_do_body@PLT
	.loc 1 7767 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	finish_do_stmt@PLT
	.loc 1 7771 0
	jmp	.L3032
.L3011:
	.loc 1 7775 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prep_stmt@PLT
	.loc 1 7776 0
	call	begin_if_stmt@PLT
	movl	%eax, -48(%ebp)
	.loc 1 7777 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	finish_if_stmt_cond@PLT
	.loc 1 7781 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L3058
	.loc 1 7783 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_expr@PLT
	.loc 1 7784 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_then_clause@PLT
.L3058:
	.loc 1 7787 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L3060
	.loc 1 7789 0
	call	begin_else_clause@PLT
	.loc 1 7790 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_expr@PLT
	.loc 1 7791 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_else_clause@PLT
.L3060:
	.loc 1 7794 0
	call	finish_if_stmt@PLT
	.loc 1 7796 0
	jmp	.L3032
.L3009:
	.loc 1 7800 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prep_stmt@PLT
	.loc 1 7801 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L3062
	.loc 1 7802 0
	call	begin_function_body@PLT
	movl	%eax, -48(%ebp)
	jmp	.L3064
.L3062:
	.loc 1 7804 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	begin_compound_stmt@PLT
	movl	%eax, -48(%ebp)
.L3064:
	.loc 1 7806 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	.loc 1 7808 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L3065
	.loc 1 7809 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_function_body@PLT
	jmp	.L3032
.L3065:
	.loc 1 7811 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	finish_compound_stmt@PLT
	.loc 1 7813 0
	jmp	.L3032
.L3016:
	.loc 1 7816 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prep_stmt@PLT
	.loc 1 7817 0
	call	finish_break_stmt@PLT
	.loc 1 7818 0
	jmp	.L3032
.L3017:
	.loc 1 7821 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prep_stmt@PLT
	.loc 1 7822 0
	call	finish_continue_stmt@PLT
	.loc 1 7823 0
	jmp	.L3032
.L3018:
.LBB151:
	.loc 1 7829 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prep_stmt@PLT
	.loc 1 7830 0
	call	begin_switch_stmt@PLT
	movl	%eax, -48(%ebp)
	.loc 1 7831 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, -20(%ebp)
	.loc 1 7832 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_switch_cond@PLT
	.loc 1 7833 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	.loc 1 7834 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_switch_stmt@PLT
	.loc 1 7836 0
	jmp	.L3032
.L3023:
.LBE151:
	.loc 1 7839 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prep_stmt@PLT
	.loc 1 7840 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	finish_case_label@PLT
	.loc 1 7843 0
	jmp	.L3032
.L3020:
	.loc 1 7846 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 7847 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	finish_label_stmt@PLT
	.loc 1 7848 0
	jmp	.L3032
.L3022:
	.loc 1 7851 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 7852 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$171, (%esp)
	call	build_nt@PLT
	movl	%eax, (%esp)
	call	add_stmt@PLT
	.loc 1 7853 0
	jmp	.L3032
.L3019:
	.loc 1 7856 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prep_stmt@PLT
	.loc 1 7857 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 7858 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$32, %al
	je	.L3068
	.loc 1 7862 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, -44(%ebp)
	jmp	.L3070
.L3068:
	.loc 1 7864 0
	movl	-44(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -44(%ebp)
.L3070:
	.loc 1 7865 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_goto_stmt@PLT
	.loc 1 7866 0
	jmp	.L3032
.L3021:
	.loc 1 7869 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prep_stmt@PLT
	.loc 1 7870 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, %edi
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, -64(%ebp)
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%esi, 16(%esp)
	movl	%edi, 12(%esp)
	movl	-64(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	finish_asm_stmt@PLT
	movl	%eax, -44(%ebp)
	.loc 1 7876 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	movl	-44(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	11(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 11(%edx)
	.loc 1 7877 0
	jmp	.L3032
.L3028:
	.loc 1 7880 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prep_stmt@PLT
	.loc 1 7881 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L3071
	.loc 1 7883 0
	call	begin_try_block@PLT
	movl	%eax, -48(%ebp)
	.loc 1 7884 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	.loc 1 7885 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_cleanup_try_block@PLT
	.loc 1 7886 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	finish_cleanup@PLT
	jmp	.L3032
.L3071:
	.loc 1 7892 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L3074
	.loc 1 7893 0
	call	begin_function_try_block@PLT
	movl	%eax, -48(%ebp)
	jmp	.L3076
.L3074:
	.loc 1 7895 0
	call	begin_try_block@PLT
	movl	%eax, -48(%ebp)
.L3076:
	.loc 1 7897 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	.loc 1 7899 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L3077
	.loc 1 7900 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_function_try_block@PLT
	jmp	.L3079
.L3077:
	.loc 1 7902 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_try_block@PLT
.L3079:
	.loc 1 7904 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	.loc 1 7905 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L3080
	.loc 1 7906 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_function_handler_sequence@PLT
	jmp	.L3032
.L3080:
	.loc 1 7908 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_handler_sequence@PLT
	.loc 1 7910 0
	jmp	.L3032
.L3029:
.LBB152:
	.loc 1 7916 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prep_stmt@PLT
	.loc 1 7917 0
	call	begin_handler@PLT
	movl	%eax, -48(%ebp)
	.loc 1 7918 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L3082
	.loc 1 7920 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 7921 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -16(%ebp)
	.loc 1 7925 0
	movl	-16(%ebp), %edx
	movzbl	37(%edx), %eax
	orl	$64, %eax
	movb	%al, 37(%edx)
	jmp	.L3084
.L3082:
	.loc 1 7928 0
	movl	$0, -16(%ebp)
.L3084:
	.loc 1 7929 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_handler_parms@PLT
	.loc 1 7930 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	.loc 1 7931 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_handler@PLT
	.loc 1 7933 0
	jmp	.L3032
.L3030:
.LBE152:
	.loc 1 7936 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prep_stmt@PLT
	.loc 1 7937 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	.loc 1 7938 0
	jmp	.L3032
.L3024:
	.loc 1 7944 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_omp_stmt@PLT
	movl	%eax, (%esp)
	call	add_stmt@PLT
	.loc 1 7945 0
	jmp	.L3032
.L3007:
	.loc 1 7949 0
	leal	__FUNCTION__.24088@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7949, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3032:
	.loc 1 7952 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, -68(%ebp)
.L3002:
	movl	-68(%ebp), %eax
	.loc 1 7953 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE102:
	.size	tsubst_expr, .-tsubst_expr
	.section	.rodata
	.type	__FUNCTION__.24309, @object
	.size	__FUNCTION__.24309, 21
__FUNCTION__.24309:
	.string	"instantiate_template"
	.align 4
.LC104:
	.string	"type `%T' composed from a local class is not a valid template-argument"
.LC105:
	.string	"  trying to instantiate `%D'"
	.text
.globl instantiate_template
	.type	instantiate_template, @function
instantiate_template:
.LFB103:
	.loc 1 7961 0
	pushl	%ebp
.LCFI365:
	movl	%esp, %ebp
.LCFI366:
	pushl	%ebx
.LCFI367:
	subl	$68, %esp
.LCFI368:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7968 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L3087
	.loc 1 7969 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L3089
.L3087:
	.loc 1 7971 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L3090
	leal	__FUNCTION__.24309@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7971, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3090:
	.loc 1 7974 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L3092
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L3094
.L3092:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L3094
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L3094
.LBB153:
	.loc 1 7976 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	instantiate_template@PLT
	movl	%eax, -20(%ebp)
	.loc 1 7980 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 7981 0
	jmp	.L3097
.L3098:
	.loc 1 7983 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3099
	.loc 1 7984 0
	movl	-16(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L3089
.L3099:
	.loc 1 7982 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L3097:
	.loc 1 7981 0
	cmpl	$0, -16(%ebp)
	je	.L3101
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L3103
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L3101
.L3103:
	movl	-16(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L3101
	movl	-16(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L3098
.L3101:
	.loc 1 7986 0
	leal	__FUNCTION__.24309@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7986, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3094:
.LBE153:
	.loc 1 7991 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	retrieve_specialization
	movl	%eax, -36(%ebp)
	.loc 1 7992 0
	cmpl	$0, -36(%ebp)
	je	.L3106
	.loc 1 7993 0
	movl	-36(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L3089
.L3106:
	.loc 1 7995 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	most_general_template@PLT
	movl	%eax, -40(%ebp)
	.loc 1 7996 0
	movl	8(%ebp), %eax
	cmpl	-40(%ebp), %eax
	je	.L3108
	.loc 1 8001 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_outermost_template_args
	movl	%eax, 12(%ebp)
	.loc 1 8005 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	retrieve_specialization
	movl	%eax, -36(%ebp)
	.loc 1 8006 0
	cmpl	$0, -36(%ebp)
	je	.L3108
	.loc 1 8007 0
	movl	-36(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L3089
.L3108:
	.loc 1 8010 0
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 8011 0
	movl	$1, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_innermost_template_args@PLT
	movl	%eax, -24(%ebp)
	.loc 1 8012 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 8013 0
	jmp	.L3130
.L3112:
.LBB154:
	.loc 1 8015 0
	movl	-32(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 8016 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L3111
.LBB155:
	.loc 1 8018 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	target_type@PLT
	movl	%eax, -8(%ebp)
	.loc 1 8019 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L3114
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L3114
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L3114
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L3114
	movl	-8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L3111
.L3114:
	movl	-8(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	decl_function_context@PLT
	testl	%eax, %eax
	je	.L3111
	.loc 1 8021 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC104@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 8022 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC105@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 8023 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L3089
.L3111:
.L3130:
.LBE155:
.LBE154:
	.loc 1 8013 0
	subl	$1, -32(%ebp)
	cmpl	$-1, -32(%ebp)
	jne	.L3112
	.loc 1 8031 0
	movl	-40(%ebp), %eax
	movl	56(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	push_access_scope_real
	.loc 1 8036 0
	movl	-40(%ebp), %eax
	movl	64(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -44(%ebp)
	.loc 1 8039 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	pop_access_scope
	.loc 1 8043 0
	movl	-44(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 8045 0
	movl	flag_external_templates@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3121
	.loc 1 8046 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	add_pending_template
.L3121:
	.loc 1 8052 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3123
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L3125
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L3123
.L3125:
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L3123
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L3123
	.loc 1 8053 0
	movl	$0, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	clone_function_decl@PLT
.L3123:
	.loc 1 8055 0
	movl	-44(%ebp), %eax
	movl	%eax, -56(%ebp)
.L3089:
	movl	-56(%ebp), %eax
	.loc 1 8056 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE103:
	.size	instantiate_template, .-instantiate_template
	.section	.rodata
	.type	__FUNCTION__.24438, @object
	.size	__FUNCTION__.24438, 20
__FUNCTION__.24438:
	.string	"fn_type_unification"
	.text
.globl fn_type_unification
	.type	fn_type_unification, @function
fn_type_unification:
.LFB104:
	.loc 1 8105 0
	pushl	%ebp
.LCFI369:
	movl	%esp, %ebp
.LCFI370:
	pushl	%ebx
.LCFI371:
	subl	$68, %esp
.LCFI372:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8110 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L3132
	leal	__FUNCTION__.24438@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$8110, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3132:
	.loc 1 8112 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 8113 0
	cmpl	$0, 12(%ebp)
	je	.L3134
.LBB156:
	.loc 1 8135 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %edx
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	coerce_template_parms
	movl	%eax, -8(%ebp)
	.loc 1 8139 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L3136
	.loc 1 8140 0
	movl	$1, -40(%ebp)
	jmp	.L3138
.L3136:
	.loc 1 8142 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -20(%ebp)
	.loc 1 8143 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L3139
	.loc 1 8144 0
	movl	$1, -40(%ebp)
	jmp	.L3138
.L3139:
	.loc 1 8147 0
	movl	$0, -12(%ebp)
	jmp	.L3141
.L3142:
	.loc 1 8148 0
	movl	-12(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	16(%ebp), %eax
	movl	%edx, 20(%eax,%ecx,4)
	.loc 1 8147 0
	addl	$1, -12(%ebp)
.L3141:
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L3142
.L3134:
.LBE156:
	.loc 1 8151 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 8153 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L3143
	.loc 1 8154 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L3143:
	.loc 1 8156 0
	cmpl	$0, 24(%ebp)
	je	.L3145
	.loc 1 8159 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -24(%ebp)
	.loc 1 8160 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, 20(%ebp)
	.loc 1 8161 0
	cmpl	$0, 32(%ebp)
	js	.L3145
	.loc 1 8162 0
	addl	$1, 32(%ebp)
.L3145:
	.loc 1 8169 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %edx
	movl	32(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$1, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	type_unification_real
	movl	%eax, -16(%ebp)
	.loc 1 8173 0
	cmpl	$0, -16(%ebp)
	jne	.L3148
	.loc 1 8183 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3148
	.loc 1 8185 0
	movl	$1, -40(%ebp)
	jmp	.L3138
.L3148:
	.loc 1 8187 0
	movl	-16(%ebp), %eax
	movl	%eax, -40(%ebp)
.L3138:
	movl	-40(%ebp), %eax
	.loc 1 8188 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE104:
	.size	fn_type_unification, .-fn_type_unification
	.section	.rodata
	.align 32
	.type	__FUNCTION__.24501, @object
	.size	__FUNCTION__.24501, 33
__FUNCTION__.24501:
	.string	"maybe_adjust_types_for_deduction"
	.text
	.type	maybe_adjust_types_for_deduction, @function
maybe_adjust_types_for_deduction:
.LFB105:
	.loc 1 8202 0
	pushl	%ebp
.LCFI373:
	movl	%esp, %ebp
.LCFI374:
	pushl	%ebx
.LCFI375:
	subl	$36, %esp
.LCFI376:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8203 0
	movl	$0, -12(%ebp)
	.loc 1 8205 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	cmpl	$1, -28(%ebp)
	je	.L3155
	cmpl	$1, -28(%ebp)
	jb	.L3158
	cmpl	$2, -28(%ebp)
	je	.L3156
	cmpl	$3, -28(%ebp)
	je	.L3157
	jmp	.L3153
.L3155:
.LBB157:
	.loc 1 8215 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 8216 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 8217 0
	movl	-8(%ebp), %eax
	movl	%eax, 16(%ebp)
	.loc 1 8218 0
	jmp	.L3158
.L3156:
.LBE157:
	.loc 1 8223 0
	movl	$0, -24(%ebp)
	jmp	.L3159
.L3157:
	.loc 1 8240 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L3158
	.loc 1 8242 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L3162
	.loc 1 8243 0
	movl	$0, -24(%ebp)
	jmp	.L3159
.L3162:
	.loc 1 8244 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 8246 0
	jmp	.L3158
.L3153:
	.loc 1 8248 0
	leal	__FUNCTION__.24501@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$8248, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3158:
	.loc 1 8251 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L3164
	.loc 1 8269 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L3166
	.loc 1 8270 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L3164
.L3166:
	.loc 1 8271 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L3168
	.loc 1 8272 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L3164
.L3168:
	.loc 1 8274 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	72(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
.L3164:
	.loc 1 8283 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	72(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 8284 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L3170
	.loc 1 8286 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 8287 0
	orl	$32, -12(%ebp)
.L3170:
	.loc 1 8292 0
	cmpl	$1, 8(%ebp)
	jne	.L3172
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L3172
	.loc 1 8293 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
.L3172:
	.loc 1 8295 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L3159:
	movl	-24(%ebp), %eax
	.loc 1 8296 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE105:
	.size	maybe_adjust_types_for_deduction, .-maybe_adjust_types_for_deduction
	.section	.rodata
	.type	__FUNCTION__.24570, @object
	.size	__FUNCTION__.24570, 22
__FUNCTION__.24570:
	.string	"type_unification_real"
.LC106:
	.string	"incomplete type unification"
	.text
	.type	type_unification_real, @function
type_unification_real:
.LFB106:
	.loc 1 8311 0
	pushl	%ebp
.LCFI377:
	movl	%esp, %ebp
.LCFI378:
	pushl	%ebx
.LCFI379:
	subl	$84, %esp
.LCFI380:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8314 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 8316 0
	movl	$0, -32(%ebp)
	.loc 1 8320 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	je	.L3177
	leal	__FUNCTION__.24570@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$8320, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3177:
	.loc 1 8321 0
	cmpl	$0, 16(%ebp)
	je	.L3179
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L3181
.L3179:
	movl	$1, -60(%ebp)
	jmp	.L3182
.L3181:
	movl	$0, -60(%ebp)
.L3182:
	cmpl	$0, -60(%ebp)
	jne	.L3183
	leal	__FUNCTION__.24570@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$8322, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3183:
	.loc 1 8324 0
	cmpl	$0, 20(%ebp)
	je	.L3185
	.loc 1 8325 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	je	.L3185
	leal	__FUNCTION__.24570@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$8325, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3185:
	.loc 1 8326 0
	cmpl	$0, -40(%ebp)
	jg	.L3189
	leal	__FUNCTION__.24570@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$8326, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3189:
	.loc 1 8328 0
	movl	28(%ebp), %eax
	movl	%eax, -64(%ebp)
	cmpl	$1, -64(%ebp)
	je	.L3193
	cmpl	$1, -64(%ebp)
	jb	.L3192
	cmpl	$2, -64(%ebp)
	je	.L3194
	cmpl	$3, -64(%ebp)
	je	.L3195
	jmp	.L3191
.L3192:
	.loc 1 8331 0
	movl	$21, -36(%ebp)
	.loc 1 8333 0
	jmp	.L3196
.L3193:
	.loc 1 8336 0
	movl	$2, -36(%ebp)
	.loc 1 8337 0
	jmp	.L3196
.L3194:
	.loc 1 8340 0
	movl	$0, -36(%ebp)
	.loc 1 8341 0
	jmp	.L3196
.L3195:
	.loc 1 8344 0
	movl	$0, -36(%ebp)
	.loc 1 8345 0
	jmp	.L3196
.L3191:
	.loc 1 8348 0
	leal	__FUNCTION__.24570@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$8348, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3196:
	.loc 1 8351 0
	cmpl	$0, 36(%ebp)
	jne	.L3197
	.loc 1 8352 0
	movl	$0, -56(%ebp)
	jmp	.L3199
.L3197:
	.loc 1 8355 0
	movl	16(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 8356 0
	movl	20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 8357 0
	movl	36(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 8359 0
	jmp	.L3249
.L3201:
	.loc 1 8364 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 8365 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 8366 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 8367 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 8369 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L3202
	.loc 1 8370 0
	movl	$1, -56(%ebp)
	jmp	.L3199
.L3202:
	.loc 1 8371 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	116(%eax), %edx
	movl	-52(%ebp), %eax
	cmpl	%eax, %edx
	je	.L3200
	.loc 1 8380 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	jne	.L3205
.LBB158:
	.loc 1 8384 0
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	je	.L3207
	.loc 1 8385 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L3209
.L3207:
	.loc 1 8388 0
	movl	-52(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 8389 0
	movl	$0, -52(%ebp)
.L3209:
	.loc 1 8392 0
	cmpl	$2, 28(%ebp)
	je	.L3210
	cmpl	$3, 28(%ebp)
	jne	.L3200
.L3210:
	.loc 1 8394 0
	movl	-48(%ebp), %eax
	movl	$0, 8(%esp)
	movl	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L3200
	.loc 1 8403 0
	movl	$1, -56(%ebp)
	jmp	.L3199
.L3205:
.LBE158:
	.loc 1 8406 0
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	je	.L3213
	.loc 1 8408 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L3215
	leal	__FUNCTION__.24570@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$8408, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3215:
	.loc 1 8409 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	type_unknown_p@PLT
	testl	%eax, %eax
	je	.L3217
	.loc 1 8417 0
	movl	-52(%ebp), %edx
	movl	-48(%ebp), %ecx
	movl	-36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_overloaded_unification
	testl	%eax, %eax
	je	.L3200
	.loc 1 8420 0
	movl	$1, -56(%ebp)
	jmp	.L3199
.L3217:
	.loc 1 8423 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
.L3213:
.LBB159:
	.loc 1 8427 0
	movl	-36(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 8429 0
	cmpl	$0, 24(%ebp)
	jne	.L3221
	.loc 1 8430 0
	leal	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_adjust_types_for_deduction
	orl	%eax, -12(%ebp)
.L3221:
	.loc 1 8432 0
	movl	-52(%ebp), %edx
	movl	-48(%ebp), %ecx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unify
	testl	%eax, %eax
	je	.L3223
	.loc 1 8433 0
	movl	$1, -56(%ebp)
	jmp	.L3199
.L3223:
.LBE159:
	.loc 1 8437 0
	subl	$1, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L3225
.L3200:
.L3249:
	.loc 1 8359 0
	cmpl	$0, -28(%ebp)
	je	.L3226
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L3226
	cmpl	$0, -24(%ebp)
	je	.L3226
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L3201
.L3226:
	.loc 1 8442 0
	cmpl	$0, -24(%ebp)
	je	.L3230
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L3230
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L3230
	.loc 1 8443 0
	movl	$1, -56(%ebp)
	jmp	.L3199
.L3230:
	.loc 1 8445 0
	cmpl	$0, -28(%ebp)
	je	.L3225
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L3225
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L3225
	.loc 1 8448 0
	movl	$1, -56(%ebp)
	jmp	.L3199
.L3225:
	.loc 1 8451 0
	cmpl	$0, 24(%ebp)
	jne	.L3237
	.loc 1 8452 0
	movl	$0, -44(%ebp)
	jmp	.L3239
.L3240:
	.loc 1 8453 0
	movl	-44(%ebp), %eax
	movl	12(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L3241
.LBB160:
	.loc 1 8455 0
	movl	-44(%ebp), %edx
	movl	8(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 8461 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L3243
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	je	.L3243
	addl	$1, -32(%ebp)
	cmpl	$1, -32(%ebp)
	je	.L3197
.L3243:
	.loc 1 8466 0
	cmpl	$0, 32(%ebp)
	jne	.L3246
	.loc 1 8467 0
	leal	.LC106@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L3246:
	.loc 1 8468 0
	movl	$2, -56(%ebp)
	jmp	.L3199
.L3241:
.LBE160:
	.loc 1 8452 0
	addl	$1, -44(%ebp)
.L3239:
	movl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jl	.L3240
.L3237:
	.loc 1 8470 0
	movl	$0, -56(%ebp)
.L3199:
	movl	-56(%ebp), %eax
	.loc 1 8471 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE106:
	.size	type_unification_real, .-type_unification_real
	.section	.rodata
	.align 4
	.type	__FUNCTION__.24737, @object
	.size	__FUNCTION__.24737, 31
__FUNCTION__.24737:
	.string	"resolve_overloaded_unification"
	.text
	.type	resolve_overloaded_unification, @function
resolve_overloaded_unification:
.LFB107:
	.loc 1 8484 0
	pushl	%ebp
.LCFI381:
	movl	%esp, %ebp
.LCFI382:
	pushl	%ebx
.LCFI383:
	subl	$100, %esp
.LCFI384:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8485 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -36(%ebp)
	.loc 1 8486 0
	movl	$0, -32(%ebp)
	.loc 1 8489 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L3251
	.loc 1 8491 0
	movl	20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 20(%ebp)
	.loc 1 8492 0
	movb	$1, -5(%ebp)
	jmp	.L3253
.L3251:
	.loc 1 8495 0
	movb	$0, -5(%ebp)
.L3253:
	.loc 1 8497 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	jne	.L3254
	.loc 1 8500 0
	movl	20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 20(%ebp)
.L3254:
	.loc 1 8502 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L3256
	.loc 1 8503 0
	movl	20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 20(%ebp)
.L3256:
	.loc 1 8506 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L3258
	.loc 1 8507 0
	movl	20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 20(%ebp)
.L3258:
	.loc 1 8509 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L3260
.LBB161:
	.loc 1 8515 0
	movl	20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 8516 0
	movl	20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 20(%ebp)
	.loc 1 8518 0
	jmp	.L3262
.L3263:
.LBB162:
	.loc 1 8520 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L3264
	movl	20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L3266
.L3264:
	movl	20(%ebp), %eax
	movl	%eax, -60(%ebp)
.L3266:
	movl	-60(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 8523 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L3267
	.loc 1 8526 0
	movl	-24(%ebp), %eax
	movl	64(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	get_bindings_overload
	movl	%eax, -20(%ebp)
	.loc 1 8528 0
	cmpl	$0, -20(%ebp)
	je	.L3267
	.loc 1 8530 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -16(%ebp)
	.loc 1 8531 0
	movzbl	-5(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	try_one_overload
	addl	%eax, -32(%ebp)
.L3267:
.LBE162:
	.loc 1 8518 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L3270
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L3272
.L3270:
	movl	$0, -56(%ebp)
.L3272:
	movl	-56(%ebp), %eax
	movl	%eax, 20(%ebp)
.L3262:
	cmpl	$0, 20(%ebp)
	jne	.L3263
	jmp	.L3274
.L3260:
.LBE161:
	.loc 1 8536 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	je	.L3278
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L3277
	.loc 1 8539 0
	jmp	.L3278
.L3279:
	.loc 1 8540 0
	movzbl	-5(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L3280
	movl	20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L3282
.L3280:
	movl	20(%ebp), %eax
	movl	%eax, -48(%ebp)
.L3282:
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	try_one_overload
	addl	%eax, -32(%ebp)
	.loc 1 8539 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L3283
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L3285
.L3283:
	movl	$0, -44(%ebp)
.L3285:
	movl	-44(%ebp), %eax
	movl	%eax, 20(%ebp)
.L3278:
	cmpl	$0, 20(%ebp)
	jne	.L3279
	.loc 1 8536 0
	jmp	.L3274
.L3277:
	.loc 1 8545 0
	leal	__FUNCTION__.24737@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$8545, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3274:
	.loc 1 8555 0
	cmpl	$1, -32(%ebp)
	jne	.L3287
.LBB163:
	.loc 1 8557 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 8558 0
	jmp	.L3296
.L3290:
	.loc 1 8559 0
	movl	-12(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L3289
	.loc 1 8560 0
	movl	-12(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	12(%ebp), %eax
	movl	%edx, 20(%eax,%ecx,4)
.L3289:
.L3296:
	.loc 1 8558 0
	subl	$1, -12(%ebp)
	cmpl	$-1, -12(%ebp)
	jne	.L3290
.L3287:
.LBE163:
	.loc 1 8562 0
	cmpl	$0, -32(%ebp)
	je	.L3292
	.loc 1 8563 0
	movl	$0, -40(%ebp)
	jmp	.L3294
.L3292:
	.loc 1 8565 0
	movl	$1, -40(%ebp)
.L3294:
	movl	-40(%ebp), %eax
	.loc 1 8566 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE107:
	.size	resolve_overloaded_unification, .-resolve_overloaded_unification
	.type	try_one_overload, @function
try_one_overload:
.LFB108:
	.loc 1 8585 0
	pushl	%ebp
.LCFI385:
	movl	%esp, %ebp
.LCFI386:
	pushl	%ebx
.LCFI387:
	subl	$68, %esp
.LCFI388:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	36(%ebp), %eax
	movb	%al, -40(%ebp)
	.loc 1 8597 0
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	je	.L3298
	.loc 1 8598 0
	movl	$1, -44(%ebp)
	jmp	.L3300
.L3298:
	.loc 1 8600 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L3301
	.loc 1 8601 0
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, (%esp)
	call	build_ptrmemfunc_type@PLT
	movl	%eax, 24(%ebp)
	jmp	.L3303
.L3301:
	.loc 1 8602 0
	cmpb	$0, -40(%ebp)
	je	.L3303
	.loc 1 8603 0
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, 24(%ebp)
.L3303:
	.loc 1 8605 0
	leal	24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_adjust_types_for_deduction
	orl	%eax, 32(%ebp)
	.loc 1 8611 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 8612 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -24(%ebp)
	.loc 1 8614 0
	movl	24(%ebp), %edx
	movl	20(%ebp), %ecx
	movl	32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unify
	testl	%eax, %eax
	je	.L3305
	.loc 1 8615 0
	movl	$0, -44(%ebp)
	jmp	.L3300
.L3305:
	.loc 1 8619 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L3320
.L3308:
.LBB164:
	.loc 1 8621 0
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 8622 0
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 8624 0
	cmpl	$0, -16(%ebp)
	je	.L3307
	.loc 1 8626 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	je	.L3310
	.loc 1 8631 0
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	$0, 20(%eax,%edx,4)
	.loc 1 8632 0
	jmp	.L3307
.L3310:
	.loc 1 8634 0
	cmpl	$0, -12(%ebp)
	je	.L3307
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	template_args_equal
	testl	%eax, %eax
	jne	.L3307
	.loc 1 8635 0
	movl	$0, -44(%ebp)
	jmp	.L3300
.L3307:
.L3320:
.LBE164:
	.loc 1 8619 0
	subl	$1, -20(%ebp)
	cmpl	$-1, -20(%ebp)
	jne	.L3308
	.loc 1 8638 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L3321
.L3316:
.LBB165:
	.loc 1 8640 0
	movl	-20(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 8642 0
	cmpl	$0, -8(%ebp)
	je	.L3315
	.loc 1 8643 0
	movl	-20(%ebp), %ecx
	movl	16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 20(%edx,%ecx,4)
.L3315:
.L3321:
.LBE165:
	.loc 1 8638 0
	subl	$1, -20(%ebp)
	cmpl	$-1, -20(%ebp)
	jne	.L3316
	.loc 1 8646 0
	movl	$1, -44(%ebp)
.L3300:
	movl	-44(%ebp), %eax
	.loc 1 8647 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE108:
	.size	try_one_overload, .-try_one_overload
	.type	verify_class_unification, @function
verify_class_unification:
.LFB109:
	.loc 1 8669 0
	pushl	%ebp
.LCFI389:
	movl	%esp, %ebp
.LCFI390:
	pushl	%ebx
.LCFI391:
	subl	$20, %esp
.LCFI392:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8670 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_outermost_template_args
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, 12(%ebp)
	.loc 1 8672 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L3323
	.loc 1 8673 0
	movl	$1, -8(%ebp)
	jmp	.L3325
.L3323:
	.loc 1 8675 0
	movl	$1, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_innermost_template_args@PLT
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	comp_template_args@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
.L3325:
	movl	-8(%ebp), %eax
	.loc 1 8676 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE109:
	.size	verify_class_unification, .-verify_class_unification
	.type	try_class_unification, @function
try_class_unification:
.LFB110:
	.loc 1 8689 0
	pushl	%ebp
.LCFI393:
	movl	%esp, %ebp
.LCFI394:
	pushl	%esi
.LCFI395:
	pushl	%ebx
.LCFI396:
	subl	$48, %esp
.LCFI397:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8692 0
	movl	20(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L3328
	movl	20(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	most_general_template@PLT
	movl	%eax, %esi
	movl	16(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	most_general_template@PLT
	cmpl	%eax, %esi
	je	.L3330
.L3328:
	.loc 1 8695 0
	movl	$0, -28(%ebp)
	jmp	.L3331
.L3330:
	.loc 1 8727 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -12(%ebp)
	.loc 1 8730 0
	movl	20(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %eax
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unify
	testl	%eax, %eax
	je	.L3332
	.loc 1 8732 0
	movl	$0, -28(%ebp)
	jmp	.L3331
.L3332:
	.loc 1 8734 0
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)
.L3331:
	movl	-28(%ebp), %eax
	.loc 1 8735 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE110:
	.size	try_class_unification, .-try_class_unification
	.type	get_template_base_recursive, @function
get_template_base_recursive:
.LFB111:
	.loc 1 8750 0
	pushl	%ebp
.LCFI398:
	movl	%esp, %ebp
.LCFI399:
	pushl	%edi
.LCFI400:
	pushl	%esi
.LCFI401:
	pushl	%ebx
.LCFI402:
	subl	$76, %esp
.LCFI403:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8753 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 8755 0
	movl	28(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L3336
.LBB166:
	.loc 1 8758 0
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	try_class_unification
	movl	%eax, -24(%ebp)
	.loc 1 8768 0
	cmpl	$0, -24(%ebp)
	je	.L3338
	cmpl	$0, 24(%ebp)
	je	.L3338
	movl	$0, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L3338
	.loc 1 8769 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L3342
.L3338:
	.loc 1 8770 0
	cmpl	$0, -24(%ebp)
	je	.L3336
	.loc 1 8771 0
	movl	-24(%ebp), %eax
	movl	%eax, 24(%ebp)
.L3336:
.LBE166:
	.loc 1 8774 0
	movl	20(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 8775 0
	cmpl	$0, -40(%ebp)
	je	.L3344
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L3346
.L3344:
	movl	$0, -56(%ebp)
.L3346:
	movl	-56(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 8778 0
	movl	$0, -36(%ebp)
	jmp	.L3347
.L3348:
.LBB167:
	.loc 1 8780 0
	movl	-36(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 8784 0
	movl	-20(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L3349
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L3351
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L3353
.L3351:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L3354
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L3354
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L3354
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L3354
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L3353
.L3354:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzwl	6(%eax), %eax
	shrw	$7, %ax
	andl	$63, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	movb	%al, -49(%ebp)
	jmp	.L3359
.L3353:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	88(%eax), %edx
	movl	84(%eax), %eax
	andl	$1, %eax
	movb	%al, -49(%ebp)
.L3359:
	movzbl	-49(%ebp), %eax
	movb	%al, -50(%ebp)
	jmp	.L3360
.L3349:
	movl	-20(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	setne	-50(%ebp)
.L3360:
	cmpb	$0, -50(%ebp)
	jne	.L3361
	.loc 1 8787 0
	movl	28(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L3363
	movl	-20(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L3365
.L3363:
	movl	$1, -48(%ebp)
	jmp	.L3366
.L3365:
	movl	$0, -48(%ebp)
.L3366:
	movl	-48(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 8792 0
	cmpl	$0, -16(%ebp)
	jne	.L3367
	.loc 1 8793 0
	movl	-20(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L3369
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L3371
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L3373
.L3371:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L3374
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L3374
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L3374
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L3374
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L3373
.L3374:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzwl	6(%eax), %eax
	shrw	$7, %ax
	andl	$63, %eax
	orl	$1, %eax
	andl	$63, %eax
	movzbw	%al, %ax
	andl	$63, %eax
	movl	%eax, %edx
	sall	$7, %edx
	movzwl	6(%ecx), %eax
	andw	$-8065, %ax
	orl	%edx, %eax
	movw	%ax, 6(%ecx)
	jmp	.L3367
.L3373:
	movl	-20(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	84(%eax), %esi
	movl	88(%eax), %edi
	movl	%esi, %eax
	orl	$1, %eax
	movl	%edi, %edx
	orb	$0, %dh
	movl	%eax, 84(%ecx)
	movl	%edx, 88(%ecx)
	jmp	.L3367
.L3369:
	movl	-20(%ebp), %eax
	movzbl	11(%eax), %edx
	orl	$1, %edx
	movb	%dl, 11(%eax)
.L3367:
	.loc 1 8795 0
	movl	-16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_template_base_recursive
	movl	%eax, 24(%ebp)
	.loc 1 8803 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	24(%ebp), %eax
	jne	.L3361
	.loc 1 8804 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L3342
.L3361:
.LBE167:
	.loc 1 8778 0
	addl	$1, -36(%ebp)
.L3347:
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jl	.L3348
	.loc 1 8807 0
	movl	24(%ebp), %eax
	movl	%eax, -60(%ebp)
.L3342:
	movl	-60(%ebp), %eax
	.loc 1 8808 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE111:
	.size	get_template_base_recursive, .-get_template_base_recursive
	.section	.rodata
	.type	__FUNCTION__.25070, @object
	.size	__FUNCTION__.25070, 18
__FUNCTION__.25070:
	.string	"get_template_base"
	.text
	.type	get_template_base, @function
get_template_base:
.LFB112:
	.loc 1 8823 0
	pushl	%ebp
.LCFI404:
	movl	%esp, %ebp
.LCFI405:
	pushl	%ebx
.LCFI406:
	subl	$52, %esp
.LCFI407:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8827 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L3384
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L3386
.L3384:
	movl	$1, -24(%ebp)
	jmp	.L3387
.L3386:
	movl	$0, -24(%ebp)
.L3387:
	cmpl	$0, -24(%ebp)
	jne	.L3388
	leal	__FUNCTION__.25070@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$8827, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3388:
	.loc 1 8829 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
	movl	76(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 8830 0
	movl	$2, 20(%esp)
	movl	$0, 16(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_template_base_recursive
	movl	%eax, -12(%ebp)
	.loc 1 8837 0
	movl	$0, 12(%esp)
	movl	markedp@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	dfs_unmark@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	dfs_walk@PLT
	.loc 1 8839 0
	movl	-12(%ebp), %eax
	.loc 1 8840 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE112:
	.size	get_template_base, .-get_template_base
	.section	.rodata
	.type	__FUNCTION__.25093, @object
	.size	__FUNCTION__.25093, 20
__FUNCTION__.25093:
	.string	"template_decl_level"
	.text
	.type	template_decl_level, @function
template_decl_level:
.LFB113:
	.loc 1 8847 0
	pushl	%ebp
.LCFI408:
	movl	%esp, %ebp
.LCFI409:
	pushl	%ebx
.LCFI410:
	subl	$20, %esp
.LCFI411:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8848 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	cmpl	$36, -12(%ebp)
	je	.L3394
	cmpl	$192, -12(%ebp)
	je	.L3393
	cmpl	$34, -12(%ebp)
	je	.L3393
	jmp	.L3392
.L3393:
	.loc 1 8852 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L3395
.L3394:
	.loc 1 8855 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L3395
.L3392:
	.loc 1 8858 0
	leal	__FUNCTION__.25093@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$8858, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3395:
	movl	-8(%ebp), %eax
	.loc 1 8861 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE113:
	.size	template_decl_level, .-template_decl_level
	.type	check_cv_quals_for_unify, @function
check_cv_quals_for_unify:
.LFB114:
	.loc 1 8872 0
	pushl	%ebp
.LCFI412:
	movl	%esp, %ebp
.LCFI413:
	pushl	%ebx
.LCFI414:
	subl	$36, %esp
.LCFI415:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8873 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, -12(%ebp)
	.loc 1 8874 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, -8(%ebp)
	.loc 1 8876 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	jne	.L3398
	.loc 1 8880 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L3400
	.loc 1 8881 0
	andl	$-4, -8(%ebp)
.L3400:
	.loc 1 8882 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L3398
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L3398
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L3398
	.loc 1 8884 0
	andl	$-5, -8(%ebp)
.L3398:
	.loc 1 8887 0
	movl	8(%ebp), %eax
	andl	$33, %eax
	testl	%eax, %eax
	jne	.L3405
	movl	-8(%ebp), %eax
	andl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L3405
	.loc 1 8889 0
	movl	$0, -24(%ebp)
	jmp	.L3408
.L3405:
	.loc 1 8891 0
	movl	8(%ebp), %eax
	andl	$66, %eax
	testl	%eax, %eax
	jne	.L3409
	movl	-12(%ebp), %eax
	andl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	.L3409
	.loc 1 8893 0
	movl	$0, -24(%ebp)
	jmp	.L3408
.L3409:
	.loc 1 8895 0
	movl	$1, -24(%ebp)
.L3408:
	movl	-24(%ebp), %eax
	.loc 1 8896 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE114:
	.size	check_cv_quals_for_unify, .-check_cv_quals_for_unify
	.section	.rodata
	.type	__FUNCTION__.25174, @object
	.size	__FUNCTION__.25174, 6
__FUNCTION__.25174:
	.string	"unify"
	.align 4
.LC107:
	.string	"use of `%s' in template type unification"
	.text
	.type	unify, @function
unify:
.LFB115:
	.loc 1 8941 0
	pushl	%ebp
.LCFI416:
	movl	%esp, %ebp
.LCFI417:
	pushl	%edi
.LCFI418:
	pushl	%esi
.LCFI419:
	pushl	%ebx
.LCFI420:
	subl	$172, %esp
.LCFI421:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8945 0
	movl	24(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 8951 0
	jmp	.L3414
.L3415:
	.loc 1 8952 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 16(%ebp)
.L3414:
	.loc 1 8951 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L3415
	.loc 1 8954 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	.L3417
	.loc 1 8955 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3417:
	.loc 1 8956 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	116(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	.L3420
	.loc 1 8959 0
	movl	$0, -148(%ebp)
	jmp	.L3419
.L3420:
	.loc 1 8965 0
	movl	20(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L3422
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	jne	.L3422
	.loc 1 8966 0
	movl	$0, -148(%ebp)
	jmp	.L3419
.L3422:
	.loc 1 8970 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	jne	.L3425
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L3425
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L3425
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L3425
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	check_cv_quals_for_unify
	testl	%eax, %eax
	jne	.L3425
	.loc 1 8982 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3425:
	.loc 1 8984 0
	movl	24(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L3431
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L3431
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L3431
	.loc 1 8986 0
	andl	$-2, 24(%ebp)
.L3431:
	.loc 1 8987 0
	andl	$-17, 24(%ebp)
	.loc 1 8988 0
	andl	$-5, 24(%ebp)
	.loc 1 8989 0
	andl	$-33, 24(%ebp)
	.loc 1 8990 0
	andl	$-65, 24(%ebp)
	.loc 1 8991 0
	andl	$-129, 24(%ebp)
	.loc 1 8993 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$4, %eax
	movl	%eax, -152(%ebp)
	cmpl	$194, -152(%ebp)
	ja	.L3435
	movl	-152(%ebp), %eax
	sall	$2, %eax
	movl	.L3451@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L3451:
	.long	.L3436@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3437@GOTOFF
	.long	.L3437@GOTOFF
	.long	.L3437@GOTOFF
	.long	.L3437@GOTOFF
	.long	.L3437@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3437@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3438@GOTOFF
	.long	.L3439@GOTOFF
	.long	.L3440@GOTOFF
	.long	.L3441@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3442@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3443@GOTOFF
	.long	.L3443@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3441@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3594@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3445@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3446@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3447@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3435@GOTOFF
	.long	.L3448@GOTOFF
	.long	.L3449@GOTOFF
	.long	.L3450@GOTOFF
	.long	.L3450@GOTOFF
	.long	.L3450@GOTOFF
	.long	.L3447@GOTOFF
	.long	.L3447@GOTOFF
	.text
.L3447:
	.loc 1 9001 0
	movl	$0, -148(%ebp)
	jmp	.L3419
.L3450:
	.loc 1 9006 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 9008 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %esi
	movl	28(%eax), %edi
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	template_decl_level
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L3452
	.loc 1 9012 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	jne	.L3454
	movl	$0, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L3456
.L3454:
	movl	$1, -144(%ebp)
	jmp	.L3457
.L3456:
	movl	$0, -144(%ebp)
.L3457:
	movl	-144(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	.L3419
.L3452:
	.loc 1 9014 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 9015 0
	movl	-76(%ebp), %edx
	movl	12(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -72(%ebp)
	.loc 1 9016 0
	movl	-76(%ebp), %edx
	movl	8(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	20(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 9019 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	jne	.L3458
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L3460
.L3458:
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-61, %al
	jne	.L3461
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L3461
.L3460:
	.loc 1 9023 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3461:
	.loc 1 9025 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L3463
	.loc 1 9029 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L3465
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L3467
	movl	20(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	jne	.L3465
.L3467:
	.loc 1 9031 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3465:
.LBB168:
	.loc 1 9034 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L3469
	movl	16(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -140(%ebp)
	jmp	.L3471
.L3469:
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L3472
	movl	16(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -136(%ebp)
	jmp	.L3474
.L3472:
	movl	16(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L3475
	movl	16(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -132(%ebp)
	jmp	.L3477
.L3475:
	movl	$0, -132(%ebp)
.L3477:
	movl	-132(%ebp), %edx
	movl	%edx, -136(%ebp)
.L3474:
	movl	-136(%ebp), %eax
	movl	%eax, -140(%ebp)
.L3471:
	movl	-140(%ebp), %edx
	movl	16(%edx), %eax
	movl	%eax, -60(%ebp)
	.loc 1 9035 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L3478
	movl	16(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -128(%ebp)
	jmp	.L3480
.L3478:
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L3481
	movl	16(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -124(%ebp)
	jmp	.L3483
.L3481:
	movl	16(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L3484
	movl	16(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L3486
.L3484:
	movl	$0, -120(%ebp)
.L3486:
	movl	-120(%ebp), %eax
	movl	%eax, -124(%ebp)
.L3483:
	movl	-124(%ebp), %edx
	movl	%edx, -128(%ebp)
.L3480:
	movl	-128(%ebp), %edx
	movl	20(%edx), %eax
	movl	%eax, -56(%ebp)
	.loc 1 9036 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L3487
	movl	20(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L3489
.L3487:
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L3490
	movl	20(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L3492
.L3490:
	movl	20(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L3493
	movl	20(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -108(%ebp)
	jmp	.L3495
.L3493:
	movl	$0, -108(%ebp)
.L3495:
	movl	-108(%ebp), %eax
	movl	%eax, -112(%ebp)
.L3492:
	movl	-112(%ebp), %edx
	movl	%edx, -116(%ebp)
.L3489:
	movl	-116(%ebp), %edx
	movl	20(%edx), %eax
	movl	%eax, -52(%ebp)
	.loc 1 9038 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L3496
	movl	20(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -104(%ebp)
	jmp	.L3498
.L3496:
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L3499
	movl	20(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L3501
.L3499:
	movl	20(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L3502
	movl	20(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L3504
.L3502:
	movl	$0, -96(%ebp)
.L3504:
	movl	-96(%ebp), %eax
	movl	%eax, -100(%ebp)
.L3501:
	movl	-100(%ebp), %edx
	movl	%edx, -104(%ebp)
.L3498:
	movl	-104(%ebp), %edx
	movl	16(%edx), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 9048 0
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	coerce_template_parms
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3505
	.loc 1 9050 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3505:
	.loc 1 9057 0
	movl	$0, -44(%ebp)
	jmp	.L3507
.L3508:
.LBB169:
	.loc 1 9059 0
	movl	-44(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -40(%ebp)
	.loc 1 9061 0
	movl	-44(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unify
	testl	%eax, %eax
	je	.L3509
	.loc 1 9064 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3509:
.LBE169:
	.loc 1 9057 0
	addl	$1, -44(%ebp)
.L3507:
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-44(%ebp), %eax
	jg	.L3508
.LBE168:
	.loc 1 9067 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L3512
	movl	20(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L3514
.L3512:
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L3515
	movl	20(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L3517
.L3515:
	movl	20(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L3518
	movl	20(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L3520
.L3518:
	movl	$0, -84(%ebp)
.L3520:
	movl	-84(%ebp), %eax
	movl	%eax, -88(%ebp)
.L3517:
	movl	-88(%ebp), %edx
	movl	%edx, -92(%ebp)
.L3514:
	movl	-92(%ebp), %edx
	movl	16(%edx), %eax
	movl	%eax, 20(%ebp)
.L3463:
	.loc 1 9072 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-61, %al
	je	.L3521
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L3523
.L3521:
	.loc 1 9078 0
	cmpl	$0, -72(%ebp)
	je	.L3524
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	template_args_equal
	testl	%eax, %eax
	je	.L3524
	.loc 1 9079 0
	movl	$0, -148(%ebp)
	jmp	.L3419
.L3524:
	.loc 1 9080 0
	cmpl	$0, -72(%ebp)
	je	.L3529
	.loc 1 9081 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3523:
	.loc 1 9088 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L3530
	.loc 1 9089 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3530:
	.loc 1 9095 0
	movl	-64(%ebp), %edx
	orl	$2, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	check_cv_quals_for_unify
	testl	%eax, %eax
	jne	.L3532
	.loc 1 9097 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3532:
	.loc 1 9101 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %esi
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	notl	%eax
	andl	%esi, %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, 20(%ebp)
	.loc 1 9103 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	.L3534
	.loc 1 9104 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3534:
	.loc 1 9107 0
	cmpl	$0, -72(%ebp)
	je	.L3536
	movl	$0, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L3536
	.loc 1 9108 0
	movl	$0, -148(%ebp)
	jmp	.L3419
.L3536:
	.loc 1 9109 0
	cmpl	$0, -72(%ebp)
	je	.L3539
	.loc 1 9110 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3539:
	.loc 1 9119 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	variably_modified_type_p@PLT
	testb	%al, %al
	je	.L3529
	.loc 1 9120 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3529:
	.loc 1 9123 0
	movl	-76(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 20(%edx,%ecx,4)
	.loc 1 9124 0
	movl	$0, -148(%ebp)
	jmp	.L3419
.L3449:
	.loc 1 9127 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 9129 0
	movl	16(%ebp), %eax
	movl	24(%eax), %esi
	movl	28(%eax), %edi
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	template_decl_level
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L3542
	.loc 1 9133 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	jne	.L3544
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_tree_equal@PLT
	testl	%eax, %eax
	jg	.L3546
.L3544:
	movl	$1, -80(%ebp)
	jmp	.L3547
.L3546:
	movl	$0, -80(%ebp)
.L3547:
	movl	-80(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	.L3419
.L3542:
	.loc 1 9136 0
	movl	16(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 9137 0
	movl	-76(%ebp), %edx
	movl	12(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -72(%ebp)
	.loc 1 9139 0
	cmpl	$0, -72(%ebp)
	je	.L3548
.LBB170:
	.loc 1 9141 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_tree_equal@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	.loc 1 9142 0
	cmpl	$1, -36(%ebp)
	jne	.L3550
	.loc 1 9143 0
	movl	$0, -148(%ebp)
	jmp	.L3419
.L3550:
	.loc 1 9144 0
	cmpl	$0, -36(%ebp)
	jne	.L3552
	.loc 1 9145 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3552:
	.loc 1 9147 0
	leal	__FUNCTION__.25174@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$9147, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3548:
.LBE170:
	.loc 1 9158 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	movl	%eax, -68(%ebp)
	.loc 1 9159 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L3554
	.loc 1 9163 0
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L3554
	.loc 1 9165 0
	movl	24(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L3557
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L3554
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	jne	.L3557
	jmp	.L3554
.L3557:
	.loc 1 9169 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	je	.L3561
	.loc 1 9172 0
	movl	$0, -148(%ebp)
	jmp	.L3419
.L3561:
	.loc 1 9174 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3554:
	.loc 1 9176 0
	movl	-76(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 20(%edx,%ecx,4)
	.loc 1 9177 0
	movl	$0, -148(%ebp)
	jmp	.L3419
.L3438:
	.loc 1 9181 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L3563
	.loc 1 9182 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3563:
	.loc 1 9194 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L3565
	.loc 1 9197 0
	movl	-64(%ebp), %eax
	andl	$4, %eax
	orl	%eax, 24(%ebp)
.L3565:
	.loc 1 9199 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L3567
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L3567
	.loc 1 9206 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 16(%ebp)
	.loc 1 9207 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 20(%ebp)
	.loc 1 9208 0
	jmp	.L3439
.L3567:
	.loc 1 9211 0
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %ecx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unify
	movl	%eax, -148(%ebp)
	jmp	.L3419
.L3440:
	.loc 1 9216 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L3570
	.loc 1 9217 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3570:
	.loc 1 9218 0
	movl	24(%ebp), %edx
	andl	$1, %edx
	movl	20(%ebp), %eax
	movl	4(%eax), %ecx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unify
	movl	%eax, -148(%ebp)
	jmp	.L3419
.L3442:
	.loc 1 9222 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L3572
	.loc 1 9223 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3572:
	.loc 1 9224 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	sete	%dl
	movl	20(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	sete	%al
	xorl	%edx, %eax
	testb	%al, %al
	je	.L3574
	.loc 1 9226 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3574:
	.loc 1 9227 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L3576
	movl	20(%ebp), %eax
	movl	16(%eax), %edx
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unify
	testl	%eax, %eax
	je	.L3576
	.loc 1 9230 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3576:
	.loc 1 9231 0
	movl	24(%ebp), %edx
	andl	$1, %edx
	movl	20(%ebp), %eax
	movl	4(%eax), %ecx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unify
	movl	%eax, -148(%ebp)
	jmp	.L3419
.L3437:
	.loc 1 9240 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	je	.L3579
	.loc 1 9241 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3579:
	.loc 1 9243 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L3581
	movl	16(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L3581
	.loc 1 9246 0
	movl	16(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L3584
	movl	20(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L3584
	movl	20(%ebp), %eax
	movl	60(%eax), %edx
	movl	16(%ebp), %eax
	movl	60(%eax), %eax
	movl	$8, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unify
	testl	%eax, %eax
	je	.L3584
	.loc 1 9249 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3584:
	.loc 1 9250 0
	movl	16(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L3592
	movl	20(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L3592
	movl	20(%ebp), %eax
	movl	64(%eax), %edx
	movl	16(%ebp), %eax
	movl	64(%eax), %eax
	movl	$136, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unify
	testl	%eax, %eax
	je	.L3592
	.loc 1 9254 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3581:
	.loc 1 9258 0
	movl	16(%ebp), %eax
	movl	72(%eax), %edx
	movl	20(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L3592
	.loc 1 9259 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3592:
	.loc 1 9263 0
	movl	$0, -148(%ebp)
	jmp	.L3419
.L3595:
	.loc 1 9269 0
	movl	20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 20(%ebp)
.L3594:
	.loc 1 9268 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L3595
	.loc 1 9271 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L3597
	.loc 1 9272 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3597:
	.loc 1 9273 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -148(%ebp)
	jmp	.L3419
.L3436:
.LBB171:
	.loc 1 9278 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	je	.L3599
	.loc 1 9279 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3599:
	.loc 1 9280 0
	movl	16(%ebp), %eax
	movl	16(%eax), %edx
	movl	20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L3601
	.loc 1 9281 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3601:
	.loc 1 9282 0
	movl	$0, -32(%ebp)
	jmp	.L3603
.L3604:
	.loc 1 9283 0
	movl	-32(%ebp), %edx
	movl	20(%ebp), %eax
	movl	20(%eax,%edx,4), %ecx
	movl	-32(%ebp), %edx
	movl	16(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	$0, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unify
	testl	%eax, %eax
	je	.L3605
	.loc 1 9286 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3605:
	.loc 1 9282 0
	addl	$1, -32(%ebp)
.L3603:
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-32(%ebp), %eax
	jg	.L3604
	.loc 1 9287 0
	movl	$0, -148(%ebp)
	jmp	.L3419
.L3443:
.LBE171:
	.loc 1 9292 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	je	.L3608
	.loc 1 9293 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3608:
	.loc 1 9295 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L3610
	movl	16(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L3610
	movl	16(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L3610
	.loc 1 9297 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L3614
	movl	20(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L3614
	movl	20(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L3617
.L3614:
	.loc 1 9298 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3617:
	.loc 1 9300 0
	movl	20(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %ecx
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unify
	movl	%eax, -148(%ebp)
	jmp	.L3419
.L3610:
	.loc 1 9306 0
	movl	16(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L3618
.LBB172:
	.loc 1 9308 0
	movl	$0, -28(%ebp)
	.loc 1 9310 0
	movl	-64(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L3620
	.loc 1 9313 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	try_class_unification
	movl	%eax, -28(%ebp)
	.loc 1 9316 0
	cmpl	$0, -28(%ebp)
	jne	.L3626
	.loc 1 9327 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_template_base
	movl	%eax, -28(%ebp)
	.loc 1 9330 0
	cmpl	$0, -28(%ebp)
	je	.L3624
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L3626
.L3624:
	.loc 1 9331 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3620:
	.loc 1 9334 0
	movl	20(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L3627
	movl	16(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %edx
	movl	20(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3627
	.loc 1 9339 0
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 9334 0
	jmp	.L3626
.L3627:
	.loc 1 9342 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3626:
	.loc 1 9344 0
	movl	-28(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %eax
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unify
	movl	%eax, -148(%ebp)
	jmp	.L3419
.L3618:
.LBE172:
	.loc 1 9347 0
	movl	20(%ebp), %eax
	movl	72(%eax), %edx
	movl	16(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L3630
	.loc 1 9348 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3630:
	.loc 1 9349 0
	movl	$0, -148(%ebp)
	jmp	.L3419
.L3441:
	.loc 1 9353 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	je	.L3632
	.loc 1 9354 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3632:
	.loc 1 9356 0
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unify
	testl	%eax, %eax
	je	.L3634
	.loc 1 9358 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3634:
	.loc 1 9359 0
	movl	20(%ebp), %eax
	movl	16(%eax), %edx
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	$-1, 28(%esp)
	movl	$0, 24(%esp)
	movl	$2, 20(%esp)
	movl	$1, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	type_unification_real
	movl	%eax, -148(%ebp)
	jmp	.L3419
.L3439:
	.loc 1 9365 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L3636
	.loc 1 9366 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3636:
	.loc 1 9367 0
	movl	20(%ebp), %eax
	movl	64(%eax), %edx
	movl	16(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unify
	testl	%eax, %eax
	je	.L3638
	.loc 1 9369 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3638:
	.loc 1 9370 0
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %ecx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unify
	movl	%eax, -148(%ebp)
	jmp	.L3419
.L3445:
	.loc 1 9374 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_constant_value@PLT
	cmpl	20(%ebp), %eax
	je	.L3640
	.loc 1 9375 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3640:
	.loc 1 9376 0
	movl	$0, -148(%ebp)
	jmp	.L3419
.L3448:
	.loc 1 9380 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3446:
	.loc 1 9383 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %edx
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	je	.L3435
	movl	-64(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L3435
.LBB173:
	.loc 1 9394 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 9395 0
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 9397 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -24(%ebp)
	.loc 1 9399 0
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unify
	movl	%eax, -148(%ebp)
	jmp	.L3419
.L3435:
.LBE173:
	.loc 1 9404 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	je	.L3644
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$49, %al
	je	.L3644
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$50, %al
	je	.L3644
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$101, %al
	jne	.L3648
.L3644:
	.loc 1 9426 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	jne	.L3649
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	template_args_equal
	testl	%eax, %eax
	jne	.L3649
	.loc 1 9428 0
	movl	$1, -148(%ebp)
	jmp	.L3419
.L3649:
	.loc 1 9430 0
	movl	$0, -148(%ebp)
	jmp	.L3419
.L3648:
	.loc 1 9433 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 4(%esp)
	leal	.LC107@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sorry@PLT
	.loc 1 9436 0
	movl	$1, -148(%ebp)
.L3419:
	movl	-148(%ebp), %eax
	.loc 1 9438 0
	addl	$172, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE115:
	.size	unify, .-unify
.globl mark_decl_instantiated
	.type	mark_decl_instantiated, @function
mark_decl_instantiated:
.LFB116:
	.loc 1 9448 0
	pushl	%ebp
.LCFI422:
	movl	%esp, %ebp
.LCFI423:
	pushl	%ebx
.LCFI424:
	subl	$4, %esp
.LCFI425:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 9454 0
	cmpl	$0, 12(%ebp)
	je	.L3654
	.loc 1 9455 0
	movl	8(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	orl	$6, %eax
	movb	%al, 6(%edx)
.L3654:
	.loc 1 9459 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L3667
	.loc 1 9462 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L3658
	.loc 1 9465 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %edx
	orl	$8, %edx
	movb	%dl, 10(%eax)
.L3658:
	.loc 1 9468 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %edx
	andl	$127, %edx
	movb	%dl, 35(%eax)
	.loc 1 9470 0
	cmpl	$0, 12(%ebp)
	jne	.L3660
	.loc 1 9472 0
	movl	8(%ebp), %edx
	movzbl	38(%edx), %eax
	orl	$4, %eax
	movb	%al, 38(%edx)
	.loc 1 9473 0
	movl	8(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	orl	$16, %eax
	movb	%al, 6(%edx)
	.loc 1 9476 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L3662
	movl	flag_weak@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3662
	.loc 1 9477 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comdat_linkage@PLT
	.loc 1 9476 0
	jmp	.L3660
.L3662:
	.loc 1 9480 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L3660
	.loc 1 9481 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_make_one_only@PLT
.L3660:
	.loc 1 9484 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L3667
	.loc 1 9485 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	defer_fn@PLT
.L3667:
	.loc 1 9486 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE116:
	.size	mark_decl_instantiated, .-mark_decl_instantiated
.globl more_specialized
	.type	more_specialized, @function
more_specialized:
.LFB117:
	.loc 1 9503 0
	pushl	%ebp
.LCFI426:
	movl	%esp, %ebp
.LCFI427:
	subl	$40, %esp
.LCFI428:
	.loc 1 9505 0
	movl	$0, -4(%ebp)
	.loc 1 9507 0
	movl	12(%ebp), %eax
	movl	64(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_bindings_real
	movl	%eax, -8(%ebp)
	.loc 1 9509 0
	cmpl	$0, -8(%ebp)
	je	.L3669
	.loc 1 9510 0
	subl	$1, -4(%ebp)
.L3669:
	.loc 1 9512 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_bindings_real
	movl	%eax, -8(%ebp)
	.loc 1 9514 0
	cmpl	$0, -8(%ebp)
	je	.L3671
	.loc 1 9515 0
	addl	$1, -4(%ebp)
.L3671:
	.loc 1 9517 0
	movl	-4(%ebp), %eax
	.loc 1 9518 0
	leave
	ret
.LFE117:
	.size	more_specialized, .-more_specialized
.globl more_specialized_class
	.type	more_specialized_class, @function
more_specialized_class:
.LFB118:
	.loc 1 9532 0
	pushl	%ebp
.LCFI429:
	movl	%esp, %ebp
.LCFI430:
	subl	$40, %esp
.LCFI431:
	.loc 1 9534 0
	movl	$0, -4(%ebp)
	.loc 1 9536 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_outermost_template_args
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %ecx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	get_class_bindings
	movl	%eax, -8(%ebp)
	.loc 1 9538 0
	cmpl	$0, -8(%ebp)
	je	.L3675
	.loc 1 9539 0
	subl	$1, -4(%ebp)
.L3675:
	.loc 1 9541 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_outermost_template_args
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	get_class_bindings
	movl	%eax, -8(%ebp)
	.loc 1 9543 0
	cmpl	$0, -8(%ebp)
	je	.L3677
	.loc 1 9544 0
	addl	$1, -4(%ebp)
.L3677:
	.loc 1 9546 0
	movl	-4(%ebp), %eax
	.loc 1 9547 0
	leave
	ret
.LFE118:
	.size	more_specialized_class, .-more_specialized_class
	.type	get_bindings_real, @function
get_bindings_real:
.LFB119:
	.loc 1 9559 0
	pushl	%ebp
.LCFI432:
	movl	%esp, %ebp
.LCFI433:
	pushl	%ebx
.LCFI434:
	subl	$84, %esp
.LCFI435:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 9560 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 9561 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -28(%ebp)
	.loc 1 9569 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 9570 0
	cmpl	$0, 16(%ebp)
	je	.L3681
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	je	.L3681
.LBB174:
	.loc 1 9575 0
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L3684
	.loc 1 9576 0
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 9581 0
	movl	-12(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %edx
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	coerce_template_parms
	movl	%eax, -8(%ebp)
	.loc 1 9585 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L3686
	jmp	.L3687
.L3684:
	.loc 1 9579 0
	movl	$0, -48(%ebp)
	jmp	.L3688
.L3686:
	.loc 1 9586 0
	movl	$0, -48(%ebp)
	jmp	.L3688
.L3687:
	.loc 1 9588 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -24(%ebp)
	.loc 1 9589 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L3681
	.loc 1 9590 0
	movl	$0, -48(%ebp)
	jmp	.L3688
.L3681:
.LBE174:
	.loc 1 9593 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 9595 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L3690
	.loc 1 9596 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L3690:
	.loc 1 9598 0
	movl	24(%ebp), %eax
	movl	%eax, -44(%ebp)
	cmpl	$0, 20(%ebp)
	jne	.L3692
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L3694
.L3692:
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L3695
.L3694:
	movl	$0, -40(%ebp)
.L3695:
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fn_type_unification@PLT
	movl	%eax, -16(%ebp)
	.loc 1 9604 0
	cmpl	$0, -16(%ebp)
	je	.L3696
	.loc 1 9605 0
	movl	$0, -48(%ebp)
	jmp	.L3688
.L3696:
	.loc 1 9607 0
	movl	-28(%ebp), %eax
	movl	%eax, -48(%ebp)
.L3688:
	movl	-48(%ebp), %eax
	.loc 1 9608 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE119:
	.size	get_bindings_real, .-get_bindings_real
.globl get_bindings
	.type	get_bindings, @function
get_bindings:
.LFB120:
	.loc 1 9615 0
	pushl	%ebp
.LCFI436:
	movl	%esp, %ebp
.LCFI437:
	subl	$24, %esp
.LCFI438:
	.loc 1 9616 0
	movl	$-1, 20(%esp)
	movl	$2, 16(%esp)
	movl	$1, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_bindings_real
	.loc 1 9617 0
	leave
	ret
.LFE120:
	.size	get_bindings, .-get_bindings
	.type	get_bindings_overload, @function
get_bindings_overload:
.LFB121:
	.loc 1 9625 0
	pushl	%ebp
.LCFI439:
	movl	%esp, %ebp
.LCFI440:
	subl	$24, %esp
.LCFI441:
	.loc 1 9626 0
	movl	$-1, 20(%esp)
	movl	$2, 16(%esp)
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_bindings_real
	.loc 1 9627 0
	leave
	ret
.LFE121:
	.size	get_bindings_overload, .-get_bindings_overload
	.type	get_class_bindings, @function
get_class_bindings:
.LFB122:
	.loc 1 9647 0
	pushl	%ebp
.LCFI442:
	movl	%esp, %ebp
.LCFI443:
	pushl	%ebx
.LCFI444:
	subl	$52, %esp
.LCFI445:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 9648 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 9649 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -8(%ebp)
	.loc 1 9651 0
	movl	$1, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_innermost_template_args@PLT
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unify
	testl	%eax, %eax
	je	.L3704
	.loc 1 9653 0
	movl	$0, -24(%ebp)
	jmp	.L3706
.L3704:
	.loc 1 9655 0
	movl	$0, -16(%ebp)
	jmp	.L3707
.L3708:
	.loc 1 9656 0
	movl	-16(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L3709
	.loc 1 9657 0
	movl	$0, -24(%ebp)
	jmp	.L3706
.L3709:
	.loc 1 9655 0
	addl	$1, -16(%ebp)
.L3707:
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L3708
	.loc 1 9659 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	verify_class_unification
	testl	%eax, %eax
	je	.L3712
	.loc 1 9660 0
	movl	$0, -24(%ebp)
	jmp	.L3706
.L3712:
	.loc 1 9662 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L3706:
	movl	-24(%ebp), %eax
	.loc 1 9663 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE122:
	.size	get_class_bindings, .-get_class_bindings
.globl most_specialized_instantiation
	.type	most_specialized_instantiation, @function
most_specialized_instantiation:
.LFB123:
	.loc 1 9675 0
	pushl	%ebp
.LCFI446:
	movl	%esp, %ebp
.LCFI447:
	pushl	%ebx
.LCFI448:
	subl	$52, %esp
.LCFI449:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 9679 0
	cmpl	$0, 8(%ebp)
	jne	.L3716
	.loc 1 9680 0
	movl	$0, -28(%ebp)
	jmp	.L3718
.L3716:
	.loc 1 9682 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 9683 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L3719
.L3720:
	.loc 1 9685 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	$-1, 12(%esp)
	movl	$2, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	more_specialized@PLT
	movl	%eax, -8(%ebp)
	.loc 1 9687 0
	cmpl	$1, -8(%ebp)
	je	.L3721
	.loc 1 9691 0
	cmpl	$0, -8(%ebp)
	jne	.L3723
	.loc 1 9693 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 9694 0
	cmpl	$0, -16(%ebp)
	jne	.L3723
	.loc 1 9695 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L3718
.L3723:
	.loc 1 9697 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
.L3721:
	.loc 1 9683 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L3719:
	cmpl	$0, -16(%ebp)
	jne	.L3720
	.loc 1 9701 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L3727
.L3728:
	.loc 1 9703 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	$-1, 12(%esp)
	movl	$2, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	more_specialized@PLT
	movl	%eax, -8(%ebp)
	.loc 1 9705 0
	cmpl	$1, -8(%ebp)
	je	.L3729
	.loc 1 9706 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L3718
.L3729:
	.loc 1 9701 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L3727:
	cmpl	$0, -16(%ebp)
	je	.L3731
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	.L3728
.L3731:
	.loc 1 9709 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L3733
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L3735
.L3733:
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L3735:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L3718:
	movl	-28(%ebp), %eax
	.loc 1 9710 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE123:
	.size	most_specialized_instantiation, .-most_specialized_instantiation
	.type	most_specialized, @function
most_specialized:
.LFB124:
	.loc 1 9719 0
	pushl	%ebp
.LCFI450:
	movl	%esp, %ebp
.LCFI451:
	pushl	%ebx
.LCFI452:
	subl	$36, %esp
.LCFI453:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 9720 0
	movl	$0, -20(%ebp)
	.loc 1 9723 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L3738
.L3739:
.LBB175:
	.loc 1 9725 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 9727 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_bindings@PLT
	movl	%eax, -12(%ebp)
	.loc 1 9728 0
	cmpl	$0, -12(%ebp)
	je	.L3740
	.loc 1 9729 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -20(%ebp)
.L3740:
.LBE175:
	.loc 1 9723 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L3738:
	cmpl	$0, -16(%ebp)
	jne	.L3739
	.loc 1 9732 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	most_specialized_instantiation@PLT
	.loc 1 9733 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE124:
	.size	most_specialized, .-most_specialized
.globl most_general_template
	.type	most_general_template, @function
most_general_template:
.LFB125:
	.loc 1 9754 0
	pushl	%ebp
.LCFI454:
	movl	%esp, %ebp
.LCFI455:
	subl	$8, %esp
.LCFI456:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 9757 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L3752
	.loc 1 9759 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L3747
	.loc 1 9760 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 9764 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L3752
	.loc 1 9765 0
	movl	$0, -8(%ebp)
	jmp	.L3751
.L3747:
	.loc 1 9767 0
	movl	$0, -8(%ebp)
	jmp	.L3751
.L3753:
	.loc 1 9775 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L3754
	.loc 1 9778 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L3756
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L3758
.L3756:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L3759
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L3759
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L3759
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L3759
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L3758
.L3759:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	cmpb	$8, %al
	je	.L3754
.L3758:
	.loc 1 9783 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L3764
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L3766
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L3766
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L3766
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L3766
.L3764:
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L3770
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L3772
.L3770:
	movl	global_namespace@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L3772:
	movl	-4(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$39, %al
	je	.L3773
.L3766:
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L3773
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	cmpb	$8, %al
	je	.L3754
.L3773:
	.loc 1 9788 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%ebp)
.L3752:
	.loc 1 9771 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L3753
.L3754:
	.loc 1 9791 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L3751:
	movl	-8(%ebp), %eax
	.loc 1 9792 0
	leave
	ret
.LFE125:
	.size	most_general_template, .-most_general_template
	.type	most_specialized_class, @function
most_specialized_class:
.LFB126:
	.loc 1 9802 0
	pushl	%ebp
.LCFI457:
	movl	%esp, %ebp
.LCFI458:
	pushl	%ebx
.LCFI459:
	subl	$52, %esp
.LCFI460:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 9803 0
	movl	$0, -24(%ebp)
	.loc 1 9808 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	most_general_template@PLT
	movl	%eax, 8(%ebp)
	.loc 1 9809 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L3777
.L3778:
.LBB176:
	.loc 1 9812 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %edx
	movl	-20(%ebp), %eax
	movl	20(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	get_class_bindings
	movl	%eax, -8(%ebp)
	.loc 1 9813 0
	cmpl	$0, -8(%ebp)
	je	.L3779
	.loc 1 9815 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	tree_cons@PLT
	movl	%eax, -24(%ebp)
	.loc 1 9816 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 4(%eax)
.L3779:
.LBE176:
	.loc 1 9809 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L3777:
	cmpl	$0, -20(%ebp)
	jne	.L3778
	.loc 1 9820 0
	cmpl	$0, -24(%ebp)
	jne	.L3782
	.loc 1 9821 0
	movl	$0, -40(%ebp)
	jmp	.L3784
.L3782:
	.loc 1 9823 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 9824 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 9825 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 9826 0
	jmp	.L3785
.L3786:
	.loc 1 9828 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	more_specialized_class@PLT
	movl	%eax, -12(%ebp)
	.loc 1 9829 0
	cmpl	$1, -12(%ebp)
	je	.L3787
	.loc 1 9833 0
	cmpl	$0, -12(%ebp)
	jne	.L3789
	.loc 1 9835 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 9836 0
	cmpl	$0, -20(%ebp)
	jne	.L3789
	.loc 1 9837 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L3784
.L3789:
	.loc 1 9839 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
.L3787:
	.loc 1 9826 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L3785:
	cmpl	$0, -20(%ebp)
	jne	.L3786
	.loc 1 9843 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L3793
.L3794:
	.loc 1 9845 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	more_specialized_class@PLT
	movl	%eax, -12(%ebp)
	.loc 1 9846 0
	cmpl	$1, -12(%ebp)
	je	.L3795
	.loc 1 9847 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L3784
.L3795:
	.loc 1 9843 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L3793:
	cmpl	$0, -20(%ebp)
	je	.L3797
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L3794
.L3797:
	.loc 1 9850 0
	movl	-16(%ebp), %eax
	movl	%eax, -40(%ebp)
.L3784:
	movl	-40(%ebp), %eax
	.loc 1 9851 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE126:
	.size	most_specialized_class, .-most_specialized_class
	.section	.rodata
	.align 4
.LC108:
	.string	"explicit instantiation of non-template `%#D'"
	.align 4
.LC109:
	.string	"no matching template for `%D' found"
	.align 4
.LC110:
	.string	"explicit instantiation of `%#D'"
	.align 4
.LC111:
	.string	"duplicate explicit instantiation of `%#D'"
	.align 4
.LC112:
	.string	"ISO C++ forbids the use of `extern' on explicit instantiations"
	.align 4
.LC113:
	.string	"storage class `%D' applied to template instantiation"
	.text
.globl do_decl_instantiation
	.type	do_decl_instantiation, @function
do_decl_instantiation:
.LFB127:
	.loc 1 9857 0
	pushl	%ebp
.LCFI461:
	movl	%esp, %ebp
.LCFI462:
	pushl	%ebx
.LCFI463:
	subl	$36, %esp
.LCFI464:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 9858 0
	movl	$0, -12(%ebp)
	.loc 1 9859 0
	movl	$0, -8(%ebp)
	.loc 1 9861 0
	cmpl	$0, 8(%ebp)
	je	.L3834
	.loc 1 9865 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	jne	.L3803
	.loc 1 9867 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC108@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 9868 0
	jmp	.L3834
.L3803:
	.loc 1 9870 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L3805
	.loc 1 9880 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_field@PLT
	movl	%eax, -12(%ebp)
	.loc 1 9881 0
	cmpl	$0, -12(%ebp)
	je	.L3810
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	je	.L3810
	.loc 1 9883 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC109@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 9884 0
	jmp	.L3834
.L3805:
	.loc 1 9887 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L3811
	.loc 1 9889 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 9890 0
	jmp	.L3834
.L3811:
	.loc 1 9893 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L3810:
	.loc 1 9900 0
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	je	.L3834
	.loc 1 9914 0
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$6, %al
	jne	.L3814
	.loc 1 9925 0
	movl	-12(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L3816
	cmpl	$0, -8(%ebp)
	jne	.L3816
	movl	flag_use_repository@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3816
	.loc 1 9926 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L3816:
	.loc 1 9929 0
	movl	-12(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L3834
	.loc 1 9930 0
	jmp	.L3821
.L3814:
	.loc 1 9932 0
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$2, %al
	je	.L3822
	.loc 1 9934 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC109@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 9935 0
	jmp	.L3834
.L3822:
	.loc 1 9937 0
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L3821
	.loc 1 9939 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC108@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 9940 0
	jmp	.L3834
.L3821:
	.loc 1 9943 0
	movl	flag_external_templates@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3834
	.loc 1 9946 0
	cmpl	$0, 12(%ebp)
	je	.L3826
	.loc 1 9948 0
	movl	ridpointers@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$16, %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L3828
	.loc 1 9950 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3830
	movl	in_system_header@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3830
	.loc 1 9951 0
	leal	.LC112@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L3830:
	.loc 1 9952 0
	movl	$1, -8(%ebp)
	jmp	.L3826
.L3828:
	.loc 1 9955 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC113@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L3826:
	.loc 1 9958 0
	movl	-12(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	orl	$6, %eax
	movb	%al, 6(%edx)
	.loc 1 9959 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_decl_instantiated@PLT
	.loc 1 9960 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	repo_template_instantiated@PLT
	.loc 1 9961 0
	cmpl	$0, -8(%ebp)
	jne	.L3834
	.loc 1 9962 0
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_decl@PLT
.L3834:
	.loc 1 9963 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE127:
	.size	do_decl_instantiation, .-do_decl_instantiation
.globl mark_class_instantiated
	.type	mark_class_instantiated, @function
mark_class_instantiated:
.LFB128:
	.loc 1 9969 0
	pushl	%ebp
.LCFI465:
	movl	%esp, %ebp
.LCFI466:
	pushl	%ebx
.LCFI467:
	subl	$20, %esp
.LCFI468:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 9970 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	8(%edx), %eax
	orl	$12, %eax
	movb	%al, 8(%edx)
	.loc 1 9971 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-65, %eax
	movb	%al, 6(%edx)
	.loc 1 9972 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	12(%ebp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	6(%ecx), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
	.loc 1 9973 0
	movl	8(%ebp), %eax
	movl	56(%eax), %ecx
	movl	12(%ebp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	33(%ecx), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, 33(%ecx)
	.loc 1 9974 0
	cmpl	$0, 12(%ebp)
	jne	.L3838
	.loc 1 9976 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	8(%edx), %eax
	orl	$2, %eax
	movb	%al, 8(%edx)
	.loc 1 9977 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rest_of_type_compilation@PLT
.L3838:
	.loc 1 9979 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE128:
	.size	mark_class_instantiated, .-mark_class_instantiated
	.type	bt_instantiate_type_proc, @function
bt_instantiate_type_proc:
.LFB129:
	.loc 1 9985 0
	pushl	%ebp
.LCFI469:
	movl	%esp, %ebp
.LCFI470:
	pushl	%ebx
.LCFI471:
	subl	$36, %esp
.LCFI472:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 9986 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 9988 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L3840
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L3840
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L3840
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L3840
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L3847
.L3840:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	jne	.L3847
	.loc 1 9990 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %eax
	movl	(%eax), %edx
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	do_type_instantiation@PLT
.L3847:
	.loc 1 9991 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE129:
	.size	bt_instantiate_type_proc, .-bt_instantiate_type_proc
	.section	.rodata
	.align 4
.LC114:
	.string	"explicit instantiation of non-template type `%T'"
	.align 4
.LC115:
	.string	"explicit instantiation of `%#T' before definition of template"
	.align 4
.LC116:
	.string	"ISO C++ forbids the use of `%s' on explicit instantiations"
	.align 4
.LC117:
	.string	"duplicate explicit instantiation of `%#T'"
	.text
.globl do_type_instantiation
	.type	do_type_instantiation, @function
do_type_instantiation:
.LFB130:
	.loc 1 10002 0
	pushl	%ebp
.LCFI473:
	movl	%esp, %ebp
.LCFI474:
	pushl	%ebx
.LCFI475:
	subl	$36, %esp
.LCFI476:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10003 0
	movl	$0, -20(%ebp)
	.loc 1 10004 0
	movl	$0, -16(%ebp)
	.loc 1 10005 0
	movl	$0, -12(%ebp)
	.loc 1 10007 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L3849
	.loc 1 10008 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L3849:
	.loc 1 10010 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L3851
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L3853
.L3851:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L3854
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L3854
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L3854
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L3854
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L3853
.L3854:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	jne	.L3859
.L3853:
	.loc 1 10012 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 10013 0
	jmp	.L3902
.L3859:
	.loc 1 10016 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
	.loc 1 10020 0
	movl	flag_external_templates@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3902
	.loc 1 10023 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L3862
	.loc 1 10025 0
	movl	16(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L3902
	.loc 1 10026 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 10028 0
	jmp	.L3902
.L3862:
	.loc 1 10031 0
	movl	12(%ebp), %eax
	testl	%eax, %eax
	je	.L3866
	.loc 1 10033 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3868
	movl	in_system_header@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3868
	.loc 1 10034 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC116@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L3868:
	.loc 1 10037 0
	movl	ridpointers@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$32, %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L3871
	.loc 1 10038 0
	movl	$1, -16(%ebp)
	jmp	.L3866
.L3871:
	.loc 1 10039 0
	movl	ridpointers@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$16, %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L3873
	.loc 1 10040 0
	movl	$1, -20(%ebp)
	jmp	.L3866
.L3873:
	.loc 1 10041 0
	movl	ridpointers@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L3875
	.loc 1 10042 0
	movl	$1, -12(%ebp)
	jmp	.L3866
.L3875:
	.loc 1 10045 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC113@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 10047 0
	movl	$0, -20(%ebp)
.L3866:
	.loc 1 10051 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	cmpb	$8, %al
	je	.L3902
	.loc 1 10065 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	cmpb	$12, %al
	jne	.L3878
	.loc 1 10076 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L3880
	cmpl	$0, -20(%ebp)
	jne	.L3880
	movl	flag_use_repository@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3880
	movl	16(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L3880
	.loc 1 10078 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC117@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L3880:
	.loc 1 10081 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L3902
.L3878:
	.loc 1 10085 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_class_instantiated@PLT
	.loc 1 10086 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	repo_template_instantiated@PLT
	.loc 1 10088 0
	cmpl	$0, -16(%ebp)
	jne	.L3902
.LBB177:
	.loc 1 10113 0
	cmpl	$0, -12(%ebp)
	jne	.L3886
	.loc 1 10114 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L3888
.L3889:
	.loc 1 10115 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L3890
	movl	-8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	%al
	andl	$3, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L3890
	.loc 1 10118 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_decl_instantiated@PLT
	.loc 1 10119 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	repo_template_instantiated@PLT
	.loc 1 10120 0
	cmpl	$0, -20(%ebp)
	jne	.L3890
	.loc 1 10121 0
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_decl@PLT
.L3890:
	.loc 1 10114 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L3888:
	cmpl	$0, -8(%ebp)
	jne	.L3889
.L3886:
	.loc 1 10124 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L3894
.L3895:
	.loc 1 10125 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L3896
	movl	-8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	%al
	andl	$3, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L3896
	.loc 1 10127 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_decl_instantiated@PLT
	.loc 1 10128 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	repo_template_instantiated@PLT
	.loc 1 10129 0
	cmpl	$0, -20(%ebp)
	jne	.L3896
	.loc 1 10130 0
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_decl@PLT
.L3896:
	.loc 1 10124 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L3894:
	cmpl	$0, -8(%ebp)
	jne	.L3895
	.loc 1 10133 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L3902
	.loc 1 10134 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	36(%eax), %edx
	leal	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	bt_instantiate_type_proc@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binding_table_foreach@PLT
.L3902:
.LBE177:
	.loc 1 10137 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE130:
	.size	do_type_instantiation, .-do_type_instantiation
	.section	.rodata
	.type	__FUNCTION__.26342, @object
	.size	__FUNCTION__.26342, 30
__FUNCTION__.26342:
	.string	"regenerate_decl_from_template"
	.text
	.type	regenerate_decl_from_template, @function
regenerate_decl_from_template:
.LFB131:
	.loc 1 10163 0
	pushl	%ebp
.LCFI477:
	movl	%esp, %ebp
.LCFI478:
	pushl	%ebx
.LCFI479:
	subl	$52, %esp
.LCFI480:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10173 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 10174 0
	movl	12(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 10181 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	most_general_template@PLT
	movl	%eax, -24(%ebp)
	.loc 1 10182 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	push_access_scope_real
	.loc 1 10183 0
	movl	$0, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reregister_specialization
	movl	%eax, -8(%ebp)
	.loc 1 10188 0
	cmpl	$0, -8(%ebp)
	jne	.L3904
	leal	__FUNCTION__.26342@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$10188, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3904:
	.loc 1 10192 0
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -12(%ebp)
	.loc 1 10194 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L3906
	.loc 1 10197 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L3910
	.loc 1 10198 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	68(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 68(%eax)
	jmp	.L3910
.L3906:
	.loc 1 10202 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L3910
	.loc 1 10206 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 10208 0
	movl	8(%ebp), %eax
	movl	$0, 68(%eax)
.L3910:
	.loc 1 10211 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pop_access_scope
	.loc 1 10220 0
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 16(%edx)
	.loc 1 10221 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L3912
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 92(%eax)
.L3912:
	.loc 1 10222 0
	movl	8(%ebp), %eax
	movl	104(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 104(%eax)
	.loc 1 10223 0
	movl	-12(%ebp), %eax
	movl	136(%eax), %ecx
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	%al
	andl	$3, %eax
	andl	$3, %eax
	leal	(%eax,%eax), %edx
	movzbl	6(%ecx), %eax
	andl	$-7, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
	.loc 1 10226 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	duplicate_decls@PLT
	.loc 1 10229 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	register_specialization
	.loc 1 10230 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE131:
	.size	regenerate_decl_from_template, .-regenerate_decl_from_template
	.section	.rodata
	.type	__FUNCTION__.26399, @object
	.size	__FUNCTION__.26399, 17
__FUNCTION__.26399:
	.string	"instantiate_decl"
	.align 4
.LC118:
	.string	"explicit instantiation of `%D' but no definition available"
	.text
.globl instantiate_decl
	.type	instantiate_decl, @function
instantiate_decl:
.LFB132:
	.loc 1 10240 0
	pushl	%ebp
.LCFI481:
	movl	%esp, %ebp
.LCFI482:
	pushl	%ebx
.LCFI483:
	subl	$100, %esp
.LCFI484:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10241 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 10249 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 10251 0
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 10255 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L3916
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L3918
.L3916:
	movl	$1, -88(%ebp)
	jmp	.L3919
.L3918:
	movl	$0, -88(%ebp)
.L3919:
	cmpl	$0, -88(%ebp)
	jne	.L3920
	leal	__FUNCTION__.26399@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$10256, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3920:
	.loc 1 10258 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L3922
	.loc 1 10259 0
	movl	$0, 12(%ebp)
.L3922:
	.loc 1 10263 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L3924
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L3926
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L3924
.L3926:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L3924
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L3924
	.loc 1 10264 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%ebp)
.L3924:
	.loc 1 10266 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L3930
	.loc 1 10272 0
	movl	8(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L3932
.L3930:
	.loc 1 10279 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	most_general_template@PLT
	movl	%eax, -40(%ebp)
	.loc 1 10280 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 10281 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	retrieve_specialization
	movl	%eax, -44(%ebp)
	.loc 1 10282 0
	cmpl	$0, -44(%ebp)
	je	.L3933
	movl	-44(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	jne	.L3933
	.loc 1 10283 0
	movl	-44(%ebp), %edx
	movl	%edx, -84(%ebp)
	jmp	.L3932
.L3933:
	.loc 1 10286 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_tinst_level@PLT
	testl	%eax, %eax
	jne	.L3936
	.loc 1 10287 0
	movl	8(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L3932
.L3936:
	.loc 1 10289 0
	movl	$10, (%esp)
	call	timevar_push@PLT
	.loc 1 10301 0
	movl	-64(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 10302 0
	jmp	.L3938
.L3939:
	.loc 1 10332 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L3940
	movl	-52(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L3942
.L3940:
	movl	$1, -80(%ebp)
	jmp	.L3943
.L3942:
	movl	$0, -80(%ebp)
.L3943:
	cmpl	$0, -80(%ebp)
	jne	.L3944
	leal	__FUNCTION__.26399@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$10334, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3944:
	.loc 1 10337 0
	movl	-52(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -52(%ebp)
.L3938:
	.loc 1 10302 0
	movl	-52(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	%al
	andl	$3, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L3939
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L3947
	movl	-52(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L3947
	movl	-52(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	testb	%al, %al
	jne	.L3947
	movl	-52(%ebp), %eax
	movl	64(%eax), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L3939
.L3947:
	.loc 1 10340 0
	movl	-52(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 10342 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L3951
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L3953
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L3953
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L3953
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L3953
.L3951:
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L3957
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L3959
.L3957:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
.L3959:
	movl	-76(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$39, %al
	jne	.L3953
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L3961
.L3953:
	movl	-52(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	jne	.L3962
.L3961:
	.loc 1 10347 0
	movl	-52(%ebp), %eax
	movl	60(%eax), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	get_innermost_template_args@PLT
	movl	%eax, -56(%ebp)
	.loc 1 10342 0
	jmp	.L3963
.L3962:
	.loc 1 10350 0
	movl	-60(%ebp), %eax
	movl	%eax, -56(%ebp)
.L3963:
	.loc 1 10352 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L3964
	.loc 1 10353 0
	movl	-48(%ebp), %eax
	movl	116(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	jmp	.L3966
.L3964:
	.loc 1 10355 0
	movl	-48(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
.L3966:
	.loc 1 10357 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 10358 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 10360 0
	cmpl	$0, -36(%ebp)
	je	.L3967
	.loc 1 10369 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L3969
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L3971
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L3973
.L3971:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L3973
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L3973
.L3969:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L3975
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L3977
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L3973
.L3977:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L3973
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L3975
.L3973:
.LBB178:
	.loc 1 10374 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 10375 0
	jmp	.L3980
.L3981:
	.loc 1 10377 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	repo_template_used@PLT
	.loc 1 10376 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L3980:
	.loc 1 10375 0
	cmpl	$0, -20(%ebp)
	je	.L3987
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L3984
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L3987
.L3984:
	movl	-20(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L3987
	movl	-20(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L3981
	.loc 1 10369 0
	jmp	.L3987
.L3975:
.LBE178:
	.loc 1 10380 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	repo_template_used@PLT
.L3987:
	.loc 1 10382 0
	movl	flag_external_templates@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3988
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L3988
	.loc 1 10384 0
	movl	flag_alt_external_templates@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3991
	.loc 1 10386 0
	movl	interface_unknown@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3988
	.loc 1 10387 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warn_if_unknown_interface@PLT
	jmp	.L3988
.L3991:
	.loc 1 10389 0
	movl	-48(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L3995
	.loc 1 10391 0
	movl	8(%ebp), %edx
	movzbl	38(%edx), %eax
	orl	$4, %eax
	movb	%al, 38(%edx)
	.loc 1 10392 0
	movl	8(%ebp), %eax
	movl	136(%eax), %ecx
	movl	-48(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	sete	%al
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	6(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
	jmp	.L3988
.L3995:
	.loc 1 10395 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	warn_if_unknown_interface@PLT
.L3988:
	.loc 1 10398 0
	movl	at_eof@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3967
	.loc 1 10399 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	import_export_decl@PLT
.L3967:
	.loc 1 10402 0
	cmpl	$0, 12(%ebp)
	jne	.L3998
.LBB179:
	.loc 1 10406 0
	movl	-40(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 10407 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 10412 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_access_scope
	.loc 1 10414 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L4000
	.loc 1 10416 0
	movl	-16(%ebp), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	.loc 1 10417 0
	movl	-12(%ebp), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst@PLT
	.loc 1 10423 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L4000:
	.loc 1 10425 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	.loc 1 10427 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pop_access_scope
.L3998:
.LBE179:
	.loc 1 10430 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L4002
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L4002
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L4002
	.loc 1 10433 0
	leal	__FUNCTION__.26399@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$10433, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L4002:
	.loc 1 10435 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L4006
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L4006
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L4009
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L4009
.L4006:
	.loc 1 10443 0
	cmpl	$0, -36(%ebp)
	je	.L4011
	cmpl	$0, 12(%ebp)
	je	.L4013
.L4011:
	.loc 1 10445 0
	movl	lineno@GOT(%ebx), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 10446 0
	movl	input_filename@GOT(%ebx), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 10448 0
	movl	at_eof@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L4014
	cmpl	$0, -36(%ebp)
	jne	.L4014
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$6, %al
	jne	.L4014
	.loc 1 10457 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L4014:
	.loc 1 10460 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_pending_template
	.loc 1 10461 0
	jmp	.L4009
.L4013:
	.loc 1 10464 0
	call	global_bindings_p@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 10465 0
	cmpl	$0, -28(%ebp)
	je	.L4018
	.loc 1 10466 0
	call	push_to_top_level@PLT
.L4018:
	.loc 1 10469 0
	movb	$1, regenerating_decl_from_template@GOTOFF(%ebx)
	.loc 1 10473 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	regenerate_decl_from_template
	.loc 1 10475 0
	movb	$0, regenerating_decl_from_template@GOTOFF(%ebx)
	.loc 1 10480 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 10481 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 10483 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L4020
	.loc 1 10487 0
	movl	8(%ebp), %eax
	movl	$0, 104(%eax)
	.loc 1 10489 0
	movl	8(%ebp), %edx
	movzbl	38(%edx), %eax
	andl	$-2, %eax
	movb	%al, 38(%edx)
	.loc 1 10490 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	import_export_decl@PLT
	.loc 1 10491 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	sete	%al
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	33(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 33(%edx)
	.loc 1 10493 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L4027
	.loc 1 10516 0
	movl	8(%ebp), %edx
	movzbl	37(%edx), %eax
	orl	$64, %eax
	movb	%al, 37(%edx)
	.loc 1 10517 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L4024
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L4026
.L4024:
	movl	$0, -72(%ebp)
.L4026:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_finish_decl@PLT
	jmp	.L4027
.L4020:
	.loc 1 10523 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L4027
.LBB180:
	.loc 1 10529 0
	movl	8(%ebp), %edx
	movzbl	37(%edx), %eax
	orl	$64, %eax
	movb	%al, 37(%edx)
	.loc 1 10533 0
	movl	local_specializations@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 10536 0
	movl	htab_eq_pointer@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	htab_hash_pointer@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$37, (%esp)
	call	htab_create@PLT
	movl	%eax, local_specializations@GOTOFF(%ebx)
	.loc 1 10542 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	import_export_decl@PLT
	.loc 1 10543 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	start_function@PLT
	.loc 1 10546 0
	movl	-48(%ebp), %eax
	movl	116(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	.loc 1 10550 0
	movl	local_specializations@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	htab_delete@PLT
	.loc 1 10551 0
	movl	-8(%ebp), %eax
	movl	%eax, local_specializations@GOTOFF(%ebx)
	.loc 1 10554 0
	movl	$0, (%esp)
	call	finish_function@PLT
	movl	%eax, 8(%ebp)
	.loc 1 10555 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_body@PLT
.L4027:
.LBE180:
	.loc 1 10559 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %edx
	movzbl	11(%edx), %eax
	andl	$-3, %eax
	movb	%al, 11(%edx)
	.loc 1 10561 0
	cmpl	$0, -28(%ebp)
	je	.L4009
	.loc 1 10562 0
	call	pop_from_top_level@PLT
.L4009:
	.loc 1 10565 0
	movl	lineno@GOT(%ebx), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 10566 0
	movl	input_filename@GOT(%ebx), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 10568 0
	call	pop_tinst_level@PLT
	.loc 1 10570 0
	movl	$10, (%esp)
	call	timevar_pop@PLT
	.loc 1 10572 0
	movl	8(%ebp), %edx
	movl	%edx, -84(%ebp)
.L3932:
	movl	-84(%ebp), %eax
	.loc 1 10573 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE132:
	.size	instantiate_decl, .-instantiate_decl
.globl instantiate_pending_templates
	.type	instantiate_pending_templates, @function
instantiate_pending_templates:
.LFB133:
	.loc 1 10580 0
	pushl	%ebp
.LCFI485:
	movl	%esp, %ebp
.LCFI486:
	pushl	%ebx
.LCFI487:
	subl	$52, %esp
.LCFI488:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10582 0
	movl	$0, -24(%ebp)
	.loc 1 10583 0
	movl	$0, -20(%ebp)
.L4032:
	.loc 1 10588 0
	movl	$0, -16(%ebp)
	.loc 1 10590 0
	leal	pending_templates@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	.loc 1 10591 0
	jmp	.L4033
.L4034:
.LBB181:
	.loc 1 10593 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 10595 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	reopen_tinst_level
	.loc 1 10597 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L4035
.LBB182:
	.loc 1 10601 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L4037
	.loc 1 10603 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_class_template@PLT
	.loc 1 10604 0
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	shrb	$2, %al
	andl	$3, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L4039
	.loc 1 10605 0
	movl	-12(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 10606 0
	jmp	.L4041
.L4042:
	.loc 1 10608 0
	movl	-8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L4043
	.loc 1 10609 0
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_decl@PLT
.L4043:
	.loc 1 10607 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L4041:
	.loc 1 10606 0
	cmpl	$0, -8(%ebp)
	jne	.L4042
.L4039:
	.loc 1 10610 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L4037
	.loc 1 10612 0
	movl	$1, -20(%ebp)
	.loc 1 10613 0
	movl	$1, -16(%ebp)
.L4037:
	.loc 1 10617 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L4046
	.loc 1 10620 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L4049
.L4046:
	.loc 1 10623 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 10624 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L4049
.L4035:
.LBE182:
	.loc 1 10629 0
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	je	.L4050
	movl	-12(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L4050
	.loc 1 10632 0
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_decl@PLT
	movl	%eax, -12(%ebp)
	.loc 1 10634 0
	movl	-12(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L4050
	.loc 1 10636 0
	movl	$1, -20(%ebp)
	.loc 1 10637 0
	movl	$1, -16(%ebp)
.L4050:
	.loc 1 10641 0
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	je	.L4054
	movl	-12(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L4056
.L4054:
	.loc 1 10645 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 10641 0
	jmp	.L4049
.L4056:
	.loc 1 10648 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 10649 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L4049:
	.loc 1 10652 0
	movl	$0, tinst_depth@GOTOFF(%ebx)
	.loc 1 10653 0
	movl	$0, current_tinst_level@GOTOFF(%ebx)
.L4033:
.LBE181:
	.loc 1 10591 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L4034
	.loc 1 10655 0
	movl	-24(%ebp), %eax
	movl	%eax, last_pending_template@GOTOFF(%ebx)
	.loc 1 10657 0
	cmpl	$0, -16(%ebp)
	jne	.L4032
	.loc 1 10659 0
	movl	-20(%ebp), %eax
	.loc 1 10660 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE133:
	.size	instantiate_pending_templates, .-instantiate_pending_templates
	.type	tsubst_initializer_list, @function
tsubst_initializer_list:
.LFB134:
	.loc 1 10670 0
	pushl	%ebp
.LCFI489:
	movl	%esp, %ebp
.LCFI490:
	pushl	%ebx
.LCFI491:
	subl	$36, %esp
.LCFI492:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10671 0
	movl	$0, -20(%ebp)
	.loc 1 10673 0
	jmp	.L4061
.L4062:
.LBB183:
	.loc 1 10679 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	$0, 12(%esp)
	movl	$3, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_copy@PLT
	movl	%eax, -16(%ebp)
	.loc 1 10681 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_member_init@PLT
	movl	%eax, -16(%ebp)
	.loc 1 10682 0
	cmpl	$0, -16(%ebp)
	je	.L4063
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	je	.L4063
	.loc 1 10683 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	$1, 64(%eax)
.L4063:
	.loc 1 10685 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	$0, 12(%esp)
	movl	$3, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 10687 0
	cmpl	$0, -12(%ebp)
	je	.L4066
	.loc 1 10689 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L4068
	.loc 1 10690 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L4070
.L4071:
	.loc 1 10691 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 10690 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L4070:
	cmpl	$0, -8(%ebp)
	jne	.L4071
	jmp	.L4066
.L4068:
	.loc 1 10692 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L4066
	.loc 1 10693 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, -12(%ebp)
.L4066:
	.loc 1 10695 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	$0, 64(%eax)
	.loc 1 10697 0
	cmpl	$0, -16(%ebp)
	je	.L4074
	.loc 1 10699 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -12(%ebp)
	.loc 1 10700 0
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 10701 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
.L4074:
.LBE183:
	.loc 1 10673 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L4061:
	cmpl	$0, 8(%ebp)
	jne	.L4062
	.loc 1 10704 0
	movl	-20(%ebp), %eax
	.loc 1 10705 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE134:
	.size	tsubst_initializer_list, .-tsubst_initializer_list
	.type	set_current_access_from_decl, @function
set_current_access_from_decl:
.LFB135:
	.loc 1 10712 0
	pushl	%ebp
.LCFI493:
	movl	%esp, %ebp
.LCFI494:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 10713 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L4079
	.loc 1 10714 0
	movl	scope_chain@GOT(%ecx), %eax
	movl	(%eax), %edx
	movl	cp_global_trees@GOT(%ecx), %eax
	movl	168(%eax), %eax
	movl	%eax, 20(%edx)
	jmp	.L4084
.L4079:
	.loc 1 10715 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L4082
	.loc 1 10716 0
	movl	scope_chain@GOT(%ecx), %eax
	movl	(%eax), %edx
	movl	cp_global_trees@GOT(%ecx), %eax
	movl	164(%eax), %eax
	movl	%eax, 20(%edx)
	jmp	.L4084
.L4082:
	.loc 1 10718 0
	movl	scope_chain@GOT(%ecx), %eax
	movl	(%eax), %edx
	movl	cp_global_trees@GOT(%ecx), %eax
	movl	160(%eax), %eax
	movl	%eax, 20(%edx)
.L4084:
	.loc 1 10719 0
	popl	%ebp
	ret
.LFE135:
	.size	set_current_access_from_decl, .-set_current_access_from_decl
	.type	tsubst_enum, @function
tsubst_enum:
.LFB136:
	.loc 1 10730 0
	pushl	%ebp
.LCFI495:
	movl	%esp, %ebp
.LCFI496:
	pushl	%ebx
.LCFI497:
	subl	$36, %esp
.LCFI498:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10733 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L4086
.L4087:
.LBB184:
	.loc 1 10739 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	68(%eax), %edx
	movl	$0, 12(%esp)
	movl	$3, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tsubst_expr@PLT
	movl	%eax, -8(%ebp)
	.loc 1 10744 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	set_current_access_from_decl
	.loc 1 10747 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_enumerator@PLT
.LBE184:
	.loc 1 10733 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L4086:
	cmpl	$0, -12(%ebp)
	jne	.L4087
	.loc 1 10750 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_enum@PLT
	.loc 1 10751 0
	movl	12(%ebp), %eax
	movl	56(%eax), %ecx
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	.loc 1 10753 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE136:
	.size	tsubst_enum, .-tsubst_enum
	.section	.rodata
	.align 32
	.type	__FUNCTION__.26851, @object
	.size	__FUNCTION__.26851, 38
__FUNCTION__.26851:
	.string	"get_mostly_instantiated_function_type"
	.text
.globl get_mostly_instantiated_function_type
	.type	get_mostly_instantiated_function_type, @function
get_mostly_instantiated_function_type:
.LFB137:
	.loc 1 10763 0
	pushl	%ebp
.LCFI499:
	movl	%esp, %ebp
.LCFI500:
	pushl	%esi
.LCFI501:
	pushl	%ebx
.LCFI502:
	subl	$80, %esp
.LCFI503:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10770 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	most_general_template@PLT
	movl	%eax, -32(%ebp)
	.loc 1 10771 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 10772 0
	movl	-32(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 10773 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 10777 0
	cmpl	$0, -28(%ebp)
	je	.L4091
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L4091
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L4091
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L4091
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L4091
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L4097
.L4091:
	movl	$1, -60(%ebp)
.L4097:
	movl	-60(%ebp), %eax
	cmpl	-20(%ebp), %eax
	je	.L4098
	leal	__FUNCTION__.26851@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$10777, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L4098:
	.loc 1 10779 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 10781 0
	cmpl	$1, -20(%ebp)
	je	.L4100
.LBB185:
	.loc 1 10791 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -12(%ebp)
	.loc 1 10792 0
	movl	$1, -16(%ebp)
	jmp	.L4102
.L4103:
	.loc 1 10793 0
	movl	-16(%ebp), %edx
	subl	$1, %edx
	movl	%edx, -56(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L4104
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L4104
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L4104
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L4104
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L4104
	movl	-16(%ebp), %edx
	subl	$1, %edx
	movl	-28(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	%edx, -52(%ebp)
	jmp	.L4110
.L4104:
	movl	-28(%ebp), %ecx
	movl	%ecx, -52(%ebp)
.L4110:
	movl	-12(%ebp), %eax
	movl	-52(%ebp), %ecx
	movl	-56(%ebp), %edx
	movl	%ecx, 20(%eax,%edx,4)
	.loc 1 10792 0
	addl	$1, -16(%ebp)
.L4102:
	cmpl	$0, -28(%ebp)
	je	.L4111
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L4111
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L4111
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L4111
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L4111
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L4117
.L4111:
	movl	$1, -48(%ebp)
.L4117:
	movl	-48(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jg	.L4103
	.loc 1 10795 0
	cmpl	$0, -28(%ebp)
	je	.L4119
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L4119
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L4119
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L4119
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L4119
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	subl	$1, %eax
	movl	%eax, -44(%ebp)
	jmp	.L4125
.L4119:
	movl	$0, -44(%ebp)
.L4125:
	movl	-44(%ebp), %esi
	movl	-32(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 20(%eax,%esi,4)
	.loc 1 10804 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_access_scope
	.loc 1 10808 0
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -36(%ebp)
	.loc 1 10814 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	leal	-1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 10815 0
	movl	$1, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst_template_parms
	movl	%eax, -24(%ebp)
	.loc 1 10817 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pop_access_scope
.L4100:
.LBE185:
	.loc 1 10820 0
	movl	-36(%ebp), %eax
	.loc 1 10821 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE137:
	.size	get_mostly_instantiated_function_type, .-get_mostly_instantiated_function_type
.globl problematic_instantiation_changed
	.type	problematic_instantiation_changed, @function
problematic_instantiation_changed:
.LFB138:
	.loc 1 10827 0
	pushl	%ebp
.LCFI504:
	movl	%esp, %ebp
.LCFI505:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 10828 0
	movl	last_template_error_tick@GOTOFF(%ecx), %edx
	movl	tinst_level_tick@GOTOFF(%ecx), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %eax
	.loc 1 10829 0
	popl	%ebp
	ret
.LFE138:
	.size	problematic_instantiation_changed, .-problematic_instantiation_changed
.globl record_last_problematic_instantiation
	.type	record_last_problematic_instantiation, @function
record_last_problematic_instantiation:
.LFB139:
	.loc 1 10834 0
	pushl	%ebp
.LCFI506:
	movl	%esp, %ebp
.LCFI507:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 10835 0
	movl	tinst_level_tick@GOTOFF(%ecx), %eax
	movl	%eax, last_template_error_tick@GOTOFF(%ecx)
	.loc 1 10836 0
	popl	%ebp
	ret
.LFE139:
	.size	record_last_problematic_instantiation, .-record_last_problematic_instantiation
.globl current_instantiation
	.type	current_instantiation, @function
current_instantiation:
.LFB140:
	.loc 1 10840 0
	pushl	%ebp
.LCFI508:
	movl	%esp, %ebp
.LCFI509:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 10841 0
	movl	current_tinst_level@GOTOFF(%ecx), %eax
	.loc 1 10842 0
	popl	%ebp
	ret
.LFE140:
	.size	current_instantiation, .-current_instantiation
	.section	.rodata
	.align 4
.LC119:
	.string	"`%#T' is not a valid type for a template constant parameter"
	.text
	.type	invalid_nontype_parm_type_p, @function
invalid_nontype_parm_type_p:
.LFB141:
	.loc 1 10852 0
	pushl	%ebp
.LCFI510:
	movl	%esp, %ebp
.LCFI511:
	pushl	%ebx
.LCFI512:
	subl	$20, %esp
.LCFI513:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10853 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L4134
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L4134
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L4134
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L4138
.L4134:
	.loc 1 10854 0
	movl	$0, -8(%ebp)
	jmp	.L4139
.L4138:
	.loc 1 10855 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L4140
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L4142
.L4140:
	.loc 1 10856 0
	movl	$0, -8(%ebp)
	jmp	.L4139
.L4142:
	.loc 1 10857 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L4143
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L4143
	.loc 1 10858 0
	movl	$0, -8(%ebp)
	jmp	.L4139
.L4143:
	.loc 1 10859 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L4146
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L4146
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L4146
	.loc 1 10860 0
	movl	$0, -8(%ebp)
	jmp	.L4139
.L4146:
	.loc 1 10861 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	jne	.L4150
	.loc 1 10862 0
	movl	$0, -8(%ebp)
	jmp	.L4139
.L4150:
	.loc 1 10863 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	jne	.L4152
	.loc 1 10864 0
	movl	$0, -8(%ebp)
	jmp	.L4139
.L4152:
	.loc 1 10866 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L4154
	.loc 1 10867 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC119@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L4154:
	.loc 1 10869 0
	movl	$1, -8(%ebp)
.L4139:
	movl	-8(%ebp), %eax
	.loc 1 10870 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE141:
	.size	invalid_nontype_parm_type_p, .-invalid_nontype_parm_type_p
.globl gt_ggc_r_gt_cp_pt_h
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	gt_ggc_r_gt_cp_pt_h, @object
	.size	gt_ggc_r_gt_cp_pt_h, 96
gt_ggc_r_gt_cp_pt_h:
	.long	saved_access_scope
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	current_tinst_level
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	inline_parm_levels
	.long	1
	.long	4
	.long	gt_ggc_mx_varray_head_tag
	.long	saved_trees
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	pending_templates
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	0
	.long	0
	.long	0
	.long	0
	.local	pending_templates
	.comm	pending_templates,4,4
	.local	last_pending_template
	.comm	last_pending_template,4,4
	.local	template_header_count
	.comm	template_header_count,4,4
	.local	saved_trees
	.comm	saved_trees,4,4
	.local	inline_parm_levels
	.comm	inline_parm_levels,4,4
	.local	inline_parm_levels_used
	.comm	inline_parm_levels_used,4,4
	.local	current_tinst_level
	.comm	current_tinst_level,4,4
	.local	saved_access_scope
	.comm	saved_access_scope,4,4
	.local	local_specializations
	.comm	local_specializations,4,4
	.local	tinst_depth
	.comm	tinst_depth,4,4
	.local	tinst_level_tick
	.comm	tinst_level_tick,4,4
	.local	last_template_error_tick
	.comm	last_template_error_tick,4,4
	.comm	processing_template_parmlist,4,4
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
	.long	.LCFI10-.LCFI8
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
	.long	.LCFI11-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI14-.LCFI12
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
	.long	.LCFI15-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI18-.LCFI16
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
	.long	.LCFI19-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI22-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI27-.LCFI23
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
	.long	.LCFI28-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI33-.LCFI29
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
	.byte	0x4
	.long	.LCFI41-.LCFI39
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
	.long	.LCFI42-.LFB25
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI46-.LFB26
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
	.long	.LCFI53-.LCFI51
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
	.long	.LCFI54-.LFB28
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
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI58-.LFB29
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
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI62-.LFB30
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI66-.LFB31
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
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI70-.LFB32
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
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI74-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI76-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI78-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI79-.LCFI78
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI80-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI83-.LCFI81
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
	.long	.LCFI84-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI85-.LCFI84
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI88-.LCFI85
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
	.long	.LCFI89-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI90-.LCFI89
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI92-.LCFI90
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
	.long	.LCFI93-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI94-.LCFI93
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI96-.LCFI94
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
	.long	.LCFI97-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI98-.LCFI97
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI100-.LCFI98
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
	.long	.LCFI101-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI102-.LCFI101
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI104-.LCFI102
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
	.long	.LCFI105-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI106-.LCFI105
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI108-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI109-.LCFI108
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI111-.LCFI109
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
	.long	.LCFI112-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI113-.LCFI112
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI115-.LCFI113
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
	.long	.LCFI116-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI117-.LCFI116
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI120-.LCFI117
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
	.long	.LCFI121-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI122-.LCFI121
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI124-.LCFI122
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
	.long	.LCFI125-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI126-.LCFI125
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI128-.LCFI126
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI129-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI130-.LCFI129
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI133-.LCFI130
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI134-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI135-.LCFI134
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI137-.LCFI135
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI138-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI139-.LCFI138
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI141-.LCFI139
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI142-.LFB51
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
	.long	.LCFI155-.LCFI151
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI156-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI157-.LCFI156
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI160-.LCFI157
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI161-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI162-.LCFI161
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI166-.LCFI162
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI167-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI168-.LCFI167
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI170-.LCFI168
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
	.long	.LCFI171-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI172-.LCFI171
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI174-.LCFI172
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
	.long	.LCFI175-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI176-.LCFI175
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI178-.LCFI176
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
	.long	.LCFI179-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI180-.LCFI179
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB60
	.long	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI182-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI183-.LCFI182
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI186-.LCFI183
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI187-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI188-.LCFI187
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI190-.LCFI188
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
	.long	.LCFI191-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI192-.LCFI191
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.long	.LFB63
	.long	.LFE63-.LFB63
	.byte	0x4
	.long	.LCFI194-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI195-.LCFI194
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI198-.LCFI195
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI199-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI200-.LCFI199
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI202-.LCFI200
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
	.long	.LCFI203-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI204-.LCFI203
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI206-.LCFI204
	.byte	0x83
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
	.long	.LCFI207-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI208-.LCFI207
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI210-.LCFI208
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
	.long	.LCFI211-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI212-.LCFI211
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI215-.LCFI212
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI216-.LFB68
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
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.long	.LFB69
	.long	.LFE69-.LFB69
	.byte	0x4
	.long	.LCFI220-.LFB69
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
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.long	.LFB70
	.long	.LFE70-.LFB70
	.byte	0x4
	.long	.LCFI224-.LFB70
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
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.long	.LFB71
	.long	.LFE71-.LFB71
	.byte	0x4
	.long	.LCFI228-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI229-.LCFI228
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.long	.LFB72
	.long	.LFE72-.LFB72
	.byte	0x4
	.long	.LCFI231-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI232-.LCFI231
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI236-.LCFI232
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI237-.LFB73
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
.LEFDE116:
.LSFDE118:
	.long	.LEFDE118-.LASFDE118
.LASFDE118:
	.long	.Lframe0
	.long	.LFB74
	.long	.LFE74-.LFB74
	.byte	0x4
	.long	.LCFI241-.LFB74
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI242-.LCFI241
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI244-.LCFI242
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
	.long	.LCFI245-.LFB75
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI246-.LCFI245
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI248-.LCFI246
	.byte	0x83
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
	.long	.LCFI249-.LFB76
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI250-.LCFI249
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.long	.LFB77
	.long	.LFE77-.LFB77
	.byte	0x4
	.long	.LCFI252-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI253-.LCFI252
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI256-.LCFI253
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
	.long	.LCFI257-.LFB78
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI258-.LCFI257
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI260-.LCFI258
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
	.long	.LCFI261-.LFB79
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI262-.LCFI261
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI264-.LCFI262
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
	.long	.LCFI265-.LFB80
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI266-.LCFI265
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE130:
.LSFDE132:
	.long	.LEFDE132-.LASFDE132
.LASFDE132:
	.long	.Lframe0
	.long	.LFB81
	.long	.LFE81-.LFB81
	.byte	0x4
	.long	.LCFI268-.LFB81
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI269-.LCFI268
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI271-.LCFI269
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
	.long	.LCFI272-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI273-.LCFI272
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI275-.LCFI273
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE134:
.LSFDE136:
	.long	.LEFDE136-.LASFDE136
.LASFDE136:
	.long	.Lframe0
	.long	.LFB83
	.long	.LFE83-.LFB83
	.byte	0x4
	.long	.LCFI276-.LFB83
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI277-.LCFI276
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI279-.LCFI277
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
	.long	.LCFI280-.LFB84
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI281-.LCFI280
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
	.long	.LCFI283-.LFB85
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI284-.LCFI283
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI287-.LCFI284
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
	.long	.LCFI288-.LFB86
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI289-.LCFI288
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI291-.LCFI289
	.byte	0x83
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
	.long	.LCFI292-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI293-.LCFI292
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI295-.LCFI293
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE144:
.LSFDE146:
	.long	.LEFDE146-.LASFDE146
.LASFDE146:
	.long	.Lframe0
	.long	.LFB88
	.long	.LFE88-.LFB88
	.byte	0x4
	.long	.LCFI296-.LFB88
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI297-.LCFI296
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI300-.LCFI297
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI301-.LFB89
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI302-.LCFI301
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
	.long	.LCFI304-.LFB90
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
.LEFDE150:
.LSFDE152:
	.long	.LEFDE152-.LASFDE152
.LASFDE152:
	.long	.Lframe0
	.long	.LFB91
	.long	.LFE91-.LFB91
	.byte	0x4
	.long	.LCFI308-.LFB91
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI309-.LCFI308
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI313-.LCFI309
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI314-.LFB92
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI315-.LCFI314
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI317-.LCFI315
	.byte	0x83
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
	.long	.LCFI318-.LFB93
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI319-.LCFI318
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI321-.LCFI319
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
	.long	.LCFI322-.LFB94
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI323-.LCFI322
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI325-.LCFI323
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
	.long	.LCFI326-.LFB95
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI327-.LCFI326
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI329-.LCFI327
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE160:
.LSFDE162:
	.long	.LEFDE162-.LASFDE162
.LASFDE162:
	.long	.Lframe0
	.long	.LFB96
	.long	.LFE96-.LFB96
	.byte	0x4
	.long	.LCFI330-.LFB96
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI331-.LCFI330
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI334-.LCFI331
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE162:
.LSFDE164:
	.long	.LEFDE164-.LASFDE164
.LASFDE164:
	.long	.Lframe0
	.long	.LFB97
	.long	.LFE97-.LFB97
	.byte	0x4
	.long	.LCFI335-.LFB97
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI336-.LCFI335
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI338-.LCFI336
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE164:
.LSFDE166:
	.long	.LEFDE166-.LASFDE166
.LASFDE166:
	.long	.Lframe0
	.long	.LFB98
	.long	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI339-.LFB98
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI340-.LCFI339
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI342-.LCFI340
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE166:
.LSFDE168:
	.long	.LEFDE168-.LASFDE168
.LASFDE168:
	.long	.Lframe0
	.long	.LFB99
	.long	.LFE99-.LFB99
	.byte	0x4
	.long	.LCFI343-.LFB99
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI344-.LCFI343
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI346-.LCFI344
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE168:
.LSFDE170:
	.long	.LEFDE170-.LASFDE170
.LASFDE170:
	.long	.Lframe0
	.long	.LFB100
	.long	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI347-.LFB100
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI348-.LCFI347
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI352-.LCFI348
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE170:
.LSFDE172:
	.long	.LEFDE172-.LASFDE172
.LASFDE172:
	.long	.Lframe0
	.long	.LFB101
	.long	.LFE101-.LFB101
	.byte	0x4
	.long	.LCFI353-.LFB101
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI354-.LCFI353
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI358-.LCFI354
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE172:
.LSFDE174:
	.long	.LEFDE174-.LASFDE174
.LASFDE174:
	.long	.Lframe0
	.long	.LFB102
	.long	.LFE102-.LFB102
	.byte	0x4
	.long	.LCFI359-.LFB102
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI360-.LCFI359
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI364-.LCFI360
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE174:
.LSFDE176:
	.long	.LEFDE176-.LASFDE176
.LASFDE176:
	.long	.Lframe0
	.long	.LFB103
	.long	.LFE103-.LFB103
	.byte	0x4
	.long	.LCFI365-.LFB103
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI366-.LCFI365
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI368-.LCFI366
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE176:
.LSFDE178:
	.long	.LEFDE178-.LASFDE178
.LASFDE178:
	.long	.Lframe0
	.long	.LFB104
	.long	.LFE104-.LFB104
	.byte	0x4
	.long	.LCFI369-.LFB104
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI370-.LCFI369
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI372-.LCFI370
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE178:
.LSFDE180:
	.long	.LEFDE180-.LASFDE180
.LASFDE180:
	.long	.Lframe0
	.long	.LFB105
	.long	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI373-.LFB105
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI374-.LCFI373
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI376-.LCFI374
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE180:
.LSFDE182:
	.long	.LEFDE182-.LASFDE182
.LASFDE182:
	.long	.Lframe0
	.long	.LFB106
	.long	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI377-.LFB106
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI378-.LCFI377
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI380-.LCFI378
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE182:
.LSFDE184:
	.long	.LEFDE184-.LASFDE184
.LASFDE184:
	.long	.Lframe0
	.long	.LFB107
	.long	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI381-.LFB107
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI382-.LCFI381
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI384-.LCFI382
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE184:
.LSFDE186:
	.long	.LEFDE186-.LASFDE186
.LASFDE186:
	.long	.Lframe0
	.long	.LFB108
	.long	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI385-.LFB108
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI386-.LCFI385
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI388-.LCFI386
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE186:
.LSFDE188:
	.long	.LEFDE188-.LASFDE188
.LASFDE188:
	.long	.Lframe0
	.long	.LFB109
	.long	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI389-.LFB109
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI390-.LCFI389
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI392-.LCFI390
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE188:
.LSFDE190:
	.long	.LEFDE190-.LASFDE190
.LASFDE190:
	.long	.Lframe0
	.long	.LFB110
	.long	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI393-.LFB110
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI394-.LCFI393
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI397-.LCFI394
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE190:
.LSFDE192:
	.long	.LEFDE192-.LASFDE192
.LASFDE192:
	.long	.Lframe0
	.long	.LFB111
	.long	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI398-.LFB111
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI399-.LCFI398
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI403-.LCFI399
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE192:
.LSFDE194:
	.long	.LEFDE194-.LASFDE194
.LASFDE194:
	.long	.Lframe0
	.long	.LFB112
	.long	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI404-.LFB112
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI405-.LCFI404
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI407-.LCFI405
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE194:
.LSFDE196:
	.long	.LEFDE196-.LASFDE196
.LASFDE196:
	.long	.Lframe0
	.long	.LFB113
	.long	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI408-.LFB113
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI409-.LCFI408
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI411-.LCFI409
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE196:
.LSFDE198:
	.long	.LEFDE198-.LASFDE198
.LASFDE198:
	.long	.Lframe0
	.long	.LFB114
	.long	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI412-.LFB114
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI413-.LCFI412
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI415-.LCFI413
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE198:
.LSFDE200:
	.long	.LEFDE200-.LASFDE200
.LASFDE200:
	.long	.Lframe0
	.long	.LFB115
	.long	.LFE115-.LFB115
	.byte	0x4
	.long	.LCFI416-.LFB115
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI417-.LCFI416
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI421-.LCFI417
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE200:
.LSFDE202:
	.long	.LEFDE202-.LASFDE202
.LASFDE202:
	.long	.Lframe0
	.long	.LFB116
	.long	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI422-.LFB116
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI423-.LCFI422
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI425-.LCFI423
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE202:
.LSFDE204:
	.long	.LEFDE204-.LASFDE204
.LASFDE204:
	.long	.Lframe0
	.long	.LFB117
	.long	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI426-.LFB117
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI427-.LCFI426
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE204:
.LSFDE206:
	.long	.LEFDE206-.LASFDE206
.LASFDE206:
	.long	.Lframe0
	.long	.LFB118
	.long	.LFE118-.LFB118
	.byte	0x4
	.long	.LCFI429-.LFB118
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI430-.LCFI429
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE206:
.LSFDE208:
	.long	.LEFDE208-.LASFDE208
.LASFDE208:
	.long	.Lframe0
	.long	.LFB119
	.long	.LFE119-.LFB119
	.byte	0x4
	.long	.LCFI432-.LFB119
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI433-.LCFI432
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI435-.LCFI433
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE208:
.LSFDE210:
	.long	.LEFDE210-.LASFDE210
.LASFDE210:
	.long	.Lframe0
	.long	.LFB120
	.long	.LFE120-.LFB120
	.byte	0x4
	.long	.LCFI436-.LFB120
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI437-.LCFI436
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE210:
.LSFDE212:
	.long	.LEFDE212-.LASFDE212
.LASFDE212:
	.long	.Lframe0
	.long	.LFB121
	.long	.LFE121-.LFB121
	.byte	0x4
	.long	.LCFI439-.LFB121
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI440-.LCFI439
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE212:
.LSFDE214:
	.long	.LEFDE214-.LASFDE214
.LASFDE214:
	.long	.Lframe0
	.long	.LFB122
	.long	.LFE122-.LFB122
	.byte	0x4
	.long	.LCFI442-.LFB122
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI443-.LCFI442
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI445-.LCFI443
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE214:
.LSFDE216:
	.long	.LEFDE216-.LASFDE216
.LASFDE216:
	.long	.Lframe0
	.long	.LFB123
	.long	.LFE123-.LFB123
	.byte	0x4
	.long	.LCFI446-.LFB123
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI447-.LCFI446
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI449-.LCFI447
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE216:
.LSFDE218:
	.long	.LEFDE218-.LASFDE218
.LASFDE218:
	.long	.Lframe0
	.long	.LFB124
	.long	.LFE124-.LFB124
	.byte	0x4
	.long	.LCFI450-.LFB124
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI451-.LCFI450
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI453-.LCFI451
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE218:
.LSFDE220:
	.long	.LEFDE220-.LASFDE220
.LASFDE220:
	.long	.Lframe0
	.long	.LFB125
	.long	.LFE125-.LFB125
	.byte	0x4
	.long	.LCFI454-.LFB125
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI455-.LCFI454
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE220:
.LSFDE222:
	.long	.LEFDE222-.LASFDE222
.LASFDE222:
	.long	.Lframe0
	.long	.LFB126
	.long	.LFE126-.LFB126
	.byte	0x4
	.long	.LCFI457-.LFB126
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI458-.LCFI457
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI460-.LCFI458
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE222:
.LSFDE224:
	.long	.LEFDE224-.LASFDE224
.LASFDE224:
	.long	.Lframe0
	.long	.LFB127
	.long	.LFE127-.LFB127
	.byte	0x4
	.long	.LCFI461-.LFB127
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI462-.LCFI461
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI464-.LCFI462
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE224:
.LSFDE226:
	.long	.LEFDE226-.LASFDE226
.LASFDE226:
	.long	.Lframe0
	.long	.LFB128
	.long	.LFE128-.LFB128
	.byte	0x4
	.long	.LCFI465-.LFB128
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI466-.LCFI465
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI468-.LCFI466
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE226:
.LSFDE228:
	.long	.LEFDE228-.LASFDE228
.LASFDE228:
	.long	.Lframe0
	.long	.LFB129
	.long	.LFE129-.LFB129
	.byte	0x4
	.long	.LCFI469-.LFB129
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI470-.LCFI469
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI472-.LCFI470
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE228:
.LSFDE230:
	.long	.LEFDE230-.LASFDE230
.LASFDE230:
	.long	.Lframe0
	.long	.LFB130
	.long	.LFE130-.LFB130
	.byte	0x4
	.long	.LCFI473-.LFB130
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI474-.LCFI473
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI476-.LCFI474
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE230:
.LSFDE232:
	.long	.LEFDE232-.LASFDE232
.LASFDE232:
	.long	.Lframe0
	.long	.LFB131
	.long	.LFE131-.LFB131
	.byte	0x4
	.long	.LCFI477-.LFB131
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI478-.LCFI477
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI480-.LCFI478
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE232:
.LSFDE234:
	.long	.LEFDE234-.LASFDE234
.LASFDE234:
	.long	.Lframe0
	.long	.LFB132
	.long	.LFE132-.LFB132
	.byte	0x4
	.long	.LCFI481-.LFB132
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI482-.LCFI481
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI484-.LCFI482
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE234:
.LSFDE236:
	.long	.LEFDE236-.LASFDE236
.LASFDE236:
	.long	.Lframe0
	.long	.LFB133
	.long	.LFE133-.LFB133
	.byte	0x4
	.long	.LCFI485-.LFB133
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI486-.LCFI485
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI488-.LCFI486
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE236:
.LSFDE238:
	.long	.LEFDE238-.LASFDE238
.LASFDE238:
	.long	.Lframe0
	.long	.LFB134
	.long	.LFE134-.LFB134
	.byte	0x4
	.long	.LCFI489-.LFB134
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI490-.LCFI489
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI492-.LCFI490
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE238:
.LSFDE240:
	.long	.LEFDE240-.LASFDE240
.LASFDE240:
	.long	.Lframe0
	.long	.LFB135
	.long	.LFE135-.LFB135
	.byte	0x4
	.long	.LCFI493-.LFB135
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI494-.LCFI493
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE240:
.LSFDE242:
	.long	.LEFDE242-.LASFDE242
.LASFDE242:
	.long	.Lframe0
	.long	.LFB136
	.long	.LFE136-.LFB136
	.byte	0x4
	.long	.LCFI495-.LFB136
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI496-.LCFI495
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI498-.LCFI496
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE242:
.LSFDE244:
	.long	.LEFDE244-.LASFDE244
.LASFDE244:
	.long	.Lframe0
	.long	.LFB137
	.long	.LFE137-.LFB137
	.byte	0x4
	.long	.LCFI499-.LFB137
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI500-.LCFI499
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI503-.LCFI500
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE244:
.LSFDE246:
	.long	.LEFDE246-.LASFDE246
.LASFDE246:
	.long	.Lframe0
	.long	.LFB138
	.long	.LFE138-.LFB138
	.byte	0x4
	.long	.LCFI504-.LFB138
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI505-.LCFI504
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE246:
.LSFDE248:
	.long	.LEFDE248-.LASFDE248
.LASFDE248:
	.long	.Lframe0
	.long	.LFB139
	.long	.LFE139-.LFB139
	.byte	0x4
	.long	.LCFI506-.LFB139
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI507-.LCFI506
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE248:
.LSFDE250:
	.long	.LEFDE250-.LASFDE250
.LASFDE250:
	.long	.Lframe0
	.long	.LFB140
	.long	.LFE140-.LFB140
	.byte	0x4
	.long	.LCFI508-.LFB140
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI509-.LCFI508
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE250:
.LSFDE252:
	.long	.LEFDE252-.LASFDE252
.LASFDE252:
	.long	.Lframe0
	.long	.LFB141
	.long	.LFE141-.LFB141
	.byte	0x4
	.long	.LCFI510-.LFB141
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI511-.LCFI510
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI513-.LCFI511
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE252:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/tree.h"
	.file 4 "../../../kg++fe/gnu/rtl.h"
	.file 5 "../../../kg++fe/gnu/machmode.h"
	.file 6 "../../../kg++fe/gnu/hashtable.h"
	.file 7 "../../../kg++fe/gnu/location.h"
	.file 8 "../../../kg++fe/gnu/function.h"
	.file 9 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 10 "../../../kg++fe/gnu/cp/cp-tree.h"
	.file 11 "../../../kg++fe/gnu/c-common.h"
	.file 12 "../../../kg++fe/gnu/varray.h"
	.file 13 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 14 "../../../kg++fe/omp_types.h"
	.file 15 "/usr/include/stdio.h"
	.file 16 "../../../include/gnu/obstack.h"
	.file 17 "../../../include/gnu/hashtab.h"
	.file 18 "../../../kg++fe/gnu/flags.h"
	.file 19 "../../../kg++fe/gnu/cp/decl.h"
	.file 20 "../../../kg++fe/gnu/MIPS/gt-cp-pt.h"
	.file 21 "../../../kg++fe/gnu/ggc.h"
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
	.long	.LCFI11-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI11-.Ltext0
	.long	.LCFI12-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI12-.Ltext0
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
	.long	.LCFI15-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI15-.Ltext0
	.long	.LCFI16-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI16-.Ltext0
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
	.long	.LCFI22-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI22-.Ltext0
	.long	.LCFI23-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI23-.Ltext0
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
	.long	.LCFI78-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI78-.Ltext0
	.long	.LCFI79-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI79-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI84-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI84-.Ltext0
	.long	.LCFI85-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI85-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
	.long	.LCFI89-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI89-.Ltext0
	.long	.LCFI90-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI90-.Ltext0
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
	.long	.LCFI93-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI93-.Ltext0
	.long	.LCFI94-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI94-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
	.long	.LCFI97-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI97-.Ltext0
	.long	.LCFI98-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI98-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
	.long	.LCFI101-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI101-.Ltext0
	.long	.LCFI102-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI102-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
	.long	.LCFI105-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI105-.Ltext0
	.long	.LCFI106-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI106-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
	.long	.LCFI112-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI112-.Ltext0
	.long	.LCFI113-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI113-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI116-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI116-.Ltext0
	.long	.LCFI117-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI117-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
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
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
	.long	.LCFI125-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI125-.Ltext0
	.long	.LCFI126-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI126-.Ltext0
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
	.long	.LCFI129-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI129-.Ltext0
	.long	.LCFI130-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI130-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
	.long	.LCFI134-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI134-.Ltext0
	.long	.LCFI135-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI135-.Ltext0
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
	.long	.LCFI138-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI138-.Ltext0
	.long	.LCFI139-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI139-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
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
	.long	.LFE51-.Ltext0
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
	.long	.LCFI156-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI156-.Ltext0
	.long	.LCFI157-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI157-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
	.long	.LCFI161-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI161-.Ltext0
	.long	.LCFI162-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI162-.Ltext0
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
	.long	.LCFI167-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI167-.Ltext0
	.long	.LCFI168-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI168-.Ltext0
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
	.long	.LCFI171-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI171-.Ltext0
	.long	.LCFI172-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI172-.Ltext0
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
	.long	.LCFI175-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI175-.Ltext0
	.long	.LCFI176-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI176-.Ltext0
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
	.long	.LCFI179-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI179-.Ltext0
	.long	.LCFI180-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI180-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
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
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB61-.Ltext0
	.long	.LCFI187-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI187-.Ltext0
	.long	.LCFI188-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI188-.Ltext0
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB62-.Ltext0
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
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB63-.Ltext0
	.long	.LCFI194-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI194-.Ltext0
	.long	.LCFI195-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI195-.Ltext0
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB64-.Ltext0
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
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB65-.Ltext0
	.long	.LCFI203-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI203-.Ltext0
	.long	.LCFI204-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI204-.Ltext0
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB66-.Ltext0
	.long	.LCFI207-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI207-.Ltext0
	.long	.LCFI208-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI208-.Ltext0
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB67-.Ltext0
	.long	.LCFI211-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI211-.Ltext0
	.long	.LCFI212-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI212-.Ltext0
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB68-.Ltext0
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
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB69-.Ltext0
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
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB70-.Ltext0
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
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB71-.Ltext0
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
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB72-.Ltext0
	.long	.LCFI231-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI231-.Ltext0
	.long	.LCFI232-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI232-.Ltext0
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB73-.Ltext0
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
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB74-.Ltext0
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
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LFB75-.Ltext0
	.long	.LCFI245-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI245-.Ltext0
	.long	.LCFI246-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI246-.Ltext0
	.long	.LFE75-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LFB76-.Ltext0
	.long	.LCFI249-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI249-.Ltext0
	.long	.LCFI250-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI250-.Ltext0
	.long	.LFE76-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LFB77-.Ltext0
	.long	.LCFI252-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI252-.Ltext0
	.long	.LCFI253-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI253-.Ltext0
	.long	.LFE77-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LFB78-.Ltext0
	.long	.LCFI257-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI257-.Ltext0
	.long	.LCFI258-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI258-.Ltext0
	.long	.LFE78-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LFB79-.Ltext0
	.long	.LCFI261-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI261-.Ltext0
	.long	.LCFI262-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI262-.Ltext0
	.long	.LFE79-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LFB80-.Ltext0
	.long	.LCFI265-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI265-.Ltext0
	.long	.LCFI266-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI266-.Ltext0
	.long	.LFE80-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST66:
	.long	.LFB81-.Ltext0
	.long	.LCFI268-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI268-.Ltext0
	.long	.LCFI269-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI269-.Ltext0
	.long	.LFE81-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LFB82-.Ltext0
	.long	.LCFI272-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI272-.Ltext0
	.long	.LCFI273-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI273-.Ltext0
	.long	.LFE82-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST68:
	.long	.LFB83-.Ltext0
	.long	.LCFI276-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI276-.Ltext0
	.long	.LCFI277-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI277-.Ltext0
	.long	.LFE83-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST69:
	.long	.LFB84-.Ltext0
	.long	.LCFI280-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI280-.Ltext0
	.long	.LCFI281-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI281-.Ltext0
	.long	.LFE84-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST70:
	.long	.LFB85-.Ltext0
	.long	.LCFI283-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI283-.Ltext0
	.long	.LCFI284-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI284-.Ltext0
	.long	.LFE85-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST71:
	.long	.LFB86-.Ltext0
	.long	.LCFI288-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI288-.Ltext0
	.long	.LCFI289-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI289-.Ltext0
	.long	.LFE86-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST72:
	.long	.LFB87-.Ltext0
	.long	.LCFI292-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI292-.Ltext0
	.long	.LCFI293-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI293-.Ltext0
	.long	.LFE87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST73:
	.long	.LFB88-.Ltext0
	.long	.LCFI296-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI296-.Ltext0
	.long	.LCFI297-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI297-.Ltext0
	.long	.LFE88-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST74:
	.long	.LFB89-.Ltext0
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
	.long	.LFE89-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST75:
	.long	.LFB90-.Ltext0
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
	.long	.LFE90-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST76:
	.long	.LFB91-.Ltext0
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
	.long	.LFE91-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST77:
	.long	.LFB92-.Ltext0
	.long	.LCFI314-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI314-.Ltext0
	.long	.LCFI315-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI315-.Ltext0
	.long	.LFE92-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST78:
	.long	.LFB93-.Ltext0
	.long	.LCFI318-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI318-.Ltext0
	.long	.LCFI319-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI319-.Ltext0
	.long	.LFE93-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST79:
	.long	.LFB94-.Ltext0
	.long	.LCFI322-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI322-.Ltext0
	.long	.LCFI323-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI323-.Ltext0
	.long	.LFE94-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST80:
	.long	.LFB95-.Ltext0
	.long	.LCFI326-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI326-.Ltext0
	.long	.LCFI327-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI327-.Ltext0
	.long	.LFE95-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST81:
	.long	.LFB96-.Ltext0
	.long	.LCFI330-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI330-.Ltext0
	.long	.LCFI331-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI331-.Ltext0
	.long	.LFE96-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST82:
	.long	.LFB97-.Ltext0
	.long	.LCFI335-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI335-.Ltext0
	.long	.LCFI336-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI336-.Ltext0
	.long	.LFE97-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST83:
	.long	.LFB98-.Ltext0
	.long	.LCFI339-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI339-.Ltext0
	.long	.LCFI340-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI340-.Ltext0
	.long	.LFE98-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST84:
	.long	.LFB99-.Ltext0
	.long	.LCFI343-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI343-.Ltext0
	.long	.LCFI344-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI344-.Ltext0
	.long	.LFE99-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST85:
	.long	.LFB100-.Ltext0
	.long	.LCFI347-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI347-.Ltext0
	.long	.LCFI348-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI348-.Ltext0
	.long	.LFE100-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST86:
	.long	.LFB101-.Ltext0
	.long	.LCFI353-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI353-.Ltext0
	.long	.LCFI354-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI354-.Ltext0
	.long	.LFE101-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST87:
	.long	.LFB102-.Ltext0
	.long	.LCFI359-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI359-.Ltext0
	.long	.LCFI360-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI360-.Ltext0
	.long	.LFE102-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST88:
	.long	.LFB103-.Ltext0
	.long	.LCFI365-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI365-.Ltext0
	.long	.LCFI366-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI366-.Ltext0
	.long	.LFE103-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST89:
	.long	.LFB104-.Ltext0
	.long	.LCFI369-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI369-.Ltext0
	.long	.LCFI370-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI370-.Ltext0
	.long	.LFE104-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST90:
	.long	.LFB105-.Ltext0
	.long	.LCFI373-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI373-.Ltext0
	.long	.LCFI374-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI374-.Ltext0
	.long	.LFE105-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST91:
	.long	.LFB106-.Ltext0
	.long	.LCFI377-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI377-.Ltext0
	.long	.LCFI378-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI378-.Ltext0
	.long	.LFE106-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST92:
	.long	.LFB107-.Ltext0
	.long	.LCFI381-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI381-.Ltext0
	.long	.LCFI382-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI382-.Ltext0
	.long	.LFE107-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST93:
	.long	.LFB108-.Ltext0
	.long	.LCFI385-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI385-.Ltext0
	.long	.LCFI386-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI386-.Ltext0
	.long	.LFE108-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST94:
	.long	.LFB109-.Ltext0
	.long	.LCFI389-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI389-.Ltext0
	.long	.LCFI390-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI390-.Ltext0
	.long	.LFE109-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST95:
	.long	.LFB110-.Ltext0
	.long	.LCFI393-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI393-.Ltext0
	.long	.LCFI394-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI394-.Ltext0
	.long	.LFE110-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST96:
	.long	.LFB111-.Ltext0
	.long	.LCFI398-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI398-.Ltext0
	.long	.LCFI399-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI399-.Ltext0
	.long	.LFE111-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST97:
	.long	.LFB112-.Ltext0
	.long	.LCFI404-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI404-.Ltext0
	.long	.LCFI405-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI405-.Ltext0
	.long	.LFE112-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST98:
	.long	.LFB113-.Ltext0
	.long	.LCFI408-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI408-.Ltext0
	.long	.LCFI409-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI409-.Ltext0
	.long	.LFE113-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST99:
	.long	.LFB114-.Ltext0
	.long	.LCFI412-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI412-.Ltext0
	.long	.LCFI413-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI413-.Ltext0
	.long	.LFE114-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST100:
	.long	.LFB115-.Ltext0
	.long	.LCFI416-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI416-.Ltext0
	.long	.LCFI417-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI417-.Ltext0
	.long	.LFE115-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST101:
	.long	.LFB116-.Ltext0
	.long	.LCFI422-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI422-.Ltext0
	.long	.LCFI423-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI423-.Ltext0
	.long	.LFE116-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST102:
	.long	.LFB117-.Ltext0
	.long	.LCFI426-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI426-.Ltext0
	.long	.LCFI427-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI427-.Ltext0
	.long	.LFE117-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST103:
	.long	.LFB118-.Ltext0
	.long	.LCFI429-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI429-.Ltext0
	.long	.LCFI430-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI430-.Ltext0
	.long	.LFE118-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST104:
	.long	.LFB119-.Ltext0
	.long	.LCFI432-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI432-.Ltext0
	.long	.LCFI433-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI433-.Ltext0
	.long	.LFE119-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST105:
	.long	.LFB120-.Ltext0
	.long	.LCFI436-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI436-.Ltext0
	.long	.LCFI437-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI437-.Ltext0
	.long	.LFE120-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST106:
	.long	.LFB121-.Ltext0
	.long	.LCFI439-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI439-.Ltext0
	.long	.LCFI440-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI440-.Ltext0
	.long	.LFE121-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST107:
	.long	.LFB122-.Ltext0
	.long	.LCFI442-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI442-.Ltext0
	.long	.LCFI443-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI443-.Ltext0
	.long	.LFE122-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST108:
	.long	.LFB123-.Ltext0
	.long	.LCFI446-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI446-.Ltext0
	.long	.LCFI447-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI447-.Ltext0
	.long	.LFE123-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST109:
	.long	.LFB124-.Ltext0
	.long	.LCFI450-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI450-.Ltext0
	.long	.LCFI451-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI451-.Ltext0
	.long	.LFE124-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST110:
	.long	.LFB125-.Ltext0
	.long	.LCFI454-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI454-.Ltext0
	.long	.LCFI455-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI455-.Ltext0
	.long	.LFE125-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST111:
	.long	.LFB126-.Ltext0
	.long	.LCFI457-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI457-.Ltext0
	.long	.LCFI458-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI458-.Ltext0
	.long	.LFE126-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST112:
	.long	.LFB127-.Ltext0
	.long	.LCFI461-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI461-.Ltext0
	.long	.LCFI462-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI462-.Ltext0
	.long	.LFE127-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST113:
	.long	.LFB128-.Ltext0
	.long	.LCFI465-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI465-.Ltext0
	.long	.LCFI466-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI466-.Ltext0
	.long	.LFE128-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST114:
	.long	.LFB129-.Ltext0
	.long	.LCFI469-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI469-.Ltext0
	.long	.LCFI470-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI470-.Ltext0
	.long	.LFE129-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST115:
	.long	.LFB130-.Ltext0
	.long	.LCFI473-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI473-.Ltext0
	.long	.LCFI474-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI474-.Ltext0
	.long	.LFE130-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST116:
	.long	.LFB131-.Ltext0
	.long	.LCFI477-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI477-.Ltext0
	.long	.LCFI478-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI478-.Ltext0
	.long	.LFE131-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST117:
	.long	.LFB132-.Ltext0
	.long	.LCFI481-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI481-.Ltext0
	.long	.LCFI482-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI482-.Ltext0
	.long	.LFE132-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST118:
	.long	.LFB133-.Ltext0
	.long	.LCFI485-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI485-.Ltext0
	.long	.LCFI486-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI486-.Ltext0
	.long	.LFE133-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST119:
	.long	.LFB134-.Ltext0
	.long	.LCFI489-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI489-.Ltext0
	.long	.LCFI490-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI490-.Ltext0
	.long	.LFE134-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST120:
	.long	.LFB135-.Ltext0
	.long	.LCFI493-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI493-.Ltext0
	.long	.LCFI494-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI494-.Ltext0
	.long	.LFE135-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST121:
	.long	.LFB136-.Ltext0
	.long	.LCFI495-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI495-.Ltext0
	.long	.LCFI496-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI496-.Ltext0
	.long	.LFE136-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST122:
	.long	.LFB137-.Ltext0
	.long	.LCFI499-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI499-.Ltext0
	.long	.LCFI500-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI500-.Ltext0
	.long	.LFE137-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST123:
	.long	.LFB138-.Ltext0
	.long	.LCFI504-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI504-.Ltext0
	.long	.LCFI505-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI505-.Ltext0
	.long	.LFE138-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST124:
	.long	.LFB139-.Ltext0
	.long	.LCFI506-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI506-.Ltext0
	.long	.LCFI507-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI507-.Ltext0
	.long	.LFE139-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST125:
	.long	.LFB140-.Ltext0
	.long	.LCFI508-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI508-.Ltext0
	.long	.LCFI509-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI509-.Ltext0
	.long	.LFE140-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST126:
	.long	.LFB141-.Ltext0
	.long	.LCFI510-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI510-.Ltext0
	.long	.LCFI511-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI511-.Ltext0
	.long	.LFE141-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xdbe7
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cp/pt.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa5
	.uleb128 0x3
	.byte	0x4
	.long	0xab
	.uleb128 0x4
	.long	0x19b
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x4
	.byte	0x84
	.long	0x6edd
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x4
	.byte	0x87
	.long	0x6d4
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x4
	.byte	0xce
	.long	0x7904
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1a8
	.uleb128 0x3
	.byte	0x4
	.long	0x1ae
	.uleb128 0x4
	.long	0x1e3
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x4
	.byte	0xf2
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x4
	.byte	0xf3
	.long	0x7914
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1ef
	.uleb128 0x3
	.byte	0x4
	.long	0x1f5
	.uleb128 0x7
	.long	0x2cd
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x3
	.value	0x887
	.long	0x2fd9
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x3
	.value	0x888
	.long	0x32f5
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x3
	.value	0x889
	.long	0x333d
	.uleb128 0x9
	.string	"vector"
	.byte	0x3
	.value	0x88a
	.long	0x345d
	.uleb128 0x9
	.string	"string"
	.byte	0x3
	.value	0x88b
	.long	0x339e
	.uleb128 0x9
	.string	"complex"
	.byte	0x3
	.value	0x88c
	.long	0x3408
	.uleb128 0x9
	.string	"identifier"
	.byte	0x3
	.value	0x88d
	.long	0x34e3
	.uleb128 0x8
	.long	.LASF1
	.byte	0x3
	.value	0x88e
	.long	0x4551
	.uleb128 0x8
	.long	.LASF2
	.byte	0x3
	.value	0x88f
	.long	0x373f
	.uleb128 0x9
	.string	"list"
	.byte	0x3
	.value	0x890
	.long	0x351a
	.uleb128 0x9
	.string	"vec"
	.byte	0x3
	.value	0x891
	.long	0x355b
	.uleb128 0x9
	.string	"exp"
	.byte	0x3
	.value	0x892
	.long	0x35a9
	.uleb128 0x9
	.string	"block"
	.byte	0x3
	.value	0x893
	.long	0x35f5
	.uleb128 0x9
	.string	"omp"
	.byte	0x3
	.value	0x895
	.long	0x4f4e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d3
	.uleb128 0xa
	.long	0x2d8
	.uleb128 0xb
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.long	0x3b9
	.string	"mips_args"
	.byte	0x40
	.byte	0x9
	.value	0xaaa
	.uleb128 0xd
	.string	"gp_reg_found"
	.byte	0x9
	.value	0xaad
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"arg_number"
	.byte	0x9
	.value	0xab0
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"num_gprs"
	.byte	0x9
	.value	0xab5
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"num_fprs"
	.byte	0x9
	.value	0xab8
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stack_words"
	.byte	0x9
	.value	0xabb
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"fp_code"
	.byte	0x9
	.value	0xac8
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"prototype"
	.byte	0x9
	.value	0xacb
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"num_adjusts"
	.byte	0x9
	.value	0xad3
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"adjust"
	.byte	0x9
	.value	0xad4
	.long	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xe
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	0x3d0
	.long	0x9a
	.uleb128 0x10
	.long	0x3d0
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.string	"CUMULATIVE_ARGS"
	.byte	0x9
	.value	0xad5
	.long	0x2e7
	.uleb128 0x2
	.string	"size_t"
	.byte	0xd
	.byte	0xd6
	.long	0x3b9
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
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2d8
	.uleb128 0xf
	.long	0x4a4
	.long	0x2d8
	.uleb128 0x10
	.long	0x3d0
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4aa
	.uleb128 0xa
	.long	0x3fd
	.uleb128 0x3
	.byte	0x4
	.long	0x3fd
	.uleb128 0x3
	.byte	0x4
	.long	0x48c
	.uleb128 0x3
	.byte	0x4
	.long	0x4c1
	.uleb128 0x13
	.long	0x4cd
	.byte	0x1
	.uleb128 0x14
	.long	0x48c
	.byte	0x0
	.uleb128 0xf
	.long	0x4dd
	.long	0x2d8
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x4ed
	.long	0x2d8
	.uleb128 0x10
	.long	0x3d0
	.byte	0x17
	.byte	0x0
	.uleb128 0xf
	.long	0x4fd
	.long	0x2d8
	.uleb128 0x10
	.long	0x3d0
	.byte	0x13
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2e0
	.uleb128 0x3
	.byte	0x4
	.long	0x509
	.uleb128 0x15
	.long	0x51e
	.byte	0x1
	.long	0x2e0
	.uleb128 0x14
	.long	0x51e
	.uleb128 0x14
	.long	0x51e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x524
	.uleb128 0x16
	.uleb128 0x4
	.long	0x56f
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x10
	.byte	0xa2
	.uleb128 0x6
	.string	"limit"
	.byte	0x10
	.byte	0xa3
	.long	0x48e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x10
	.byte	0xa4
	.long	0x56f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"contents"
	.byte	0x10
	.byte	0xa5
	.long	0x494
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x525
	.uleb128 0xc
	.long	0x6a2
	.string	"obstack"
	.byte	0x2c
	.byte	0xf
	.value	0x31b
	.uleb128 0x6
	.string	"chunk_size"
	.byte	0x10
	.byte	0xaa
	.long	0x480
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"chunk"
	.byte	0x10
	.byte	0xab
	.long	0x56f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"object_base"
	.byte	0x10
	.byte	0xac
	.long	0x48e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next_free"
	.byte	0x10
	.byte	0xad
	.long	0x48e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"chunk_limit"
	.byte	0x10
	.byte	0xae
	.long	0x48e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"temp"
	.byte	0x10
	.byte	0xaf
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"alignment_mask"
	.byte	0x10
	.byte	0xb0
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"chunkfun"
	.byte	0x10
	.byte	0xb5
	.long	0x6b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"freefun"
	.byte	0x10
	.byte	0xb6
	.long	0x6ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"extra_arg"
	.byte	0x10
	.byte	0xb7
	.long	0x48c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"use_extra_arg"
	.byte	0x10
	.byte	0xbd
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"maybe_empty_object"
	.byte	0x10
	.byte	0xbe
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"alloc_failed"
	.byte	0x10
	.byte	0xc2
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x15
	.long	0x6b7
	.byte	0x1
	.long	0x56f
	.uleb128 0x14
	.long	0x48c
	.uleb128 0x14
	.long	0x480
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6a2
	.uleb128 0x13
	.long	0x6ce
	.byte	0x1
	.uleb128 0x14
	.long	0x48c
	.uleb128 0x14
	.long	0x56f
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6bd
	.uleb128 0x17
	.long	0x91d
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.uleb128 0x18
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x18
	.string	"BImode"
	.sleb128 1
	.uleb128 0x18
	.string	"QImode"
	.sleb128 2
	.uleb128 0x18
	.string	"HImode"
	.sleb128 3
	.uleb128 0x18
	.string	"SImode"
	.sleb128 4
	.uleb128 0x18
	.string	"DImode"
	.sleb128 5
	.uleb128 0x18
	.string	"TImode"
	.sleb128 6
	.uleb128 0x18
	.string	"OImode"
	.sleb128 7
	.uleb128 0x18
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x18
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x18
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x18
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x18
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x18
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x18
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x18
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x18
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x18
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x18
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x18
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x18
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x18
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x18
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x18
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x18
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x18
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x18
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x18
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x18
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x18
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x18
	.string	"COImode"
	.sleb128 30
	.uleb128 0x18
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x18
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x18
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x18
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x18
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x18
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x18
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x18
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x18
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x18
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x18
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x18
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x18
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x18
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x18
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x18
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x18
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x18
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x18
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x18
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x18
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x18
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x18
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x18
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x4
	.long	0x94f
	.string	"location_s"
	.byte	0x8
	.byte	0x7
	.byte	0x1c
	.uleb128 0x6
	.string	"file"
	.byte	0x7
	.byte	0x1e
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line"
	.byte	0x7
	.byte	0x21
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x7
	.byte	0x23
	.long	0x91d
	.uleb128 0x17
	.long	0x1283
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
	.byte	0x25
	.uleb128 0x18
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x18
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x18
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x18
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x18
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x18
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x18
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x18
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x18
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x18
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x18
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x18
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x18
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x18
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x18
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x18
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x18
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x18
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x18
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x18
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x18
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x18
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x18
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x18
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x18
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x18
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x18
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x18
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x18
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x18
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x18
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x18
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x18
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x18
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x18
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x18
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x18
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x18
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x18
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x18
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x18
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x18
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x18
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x18
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x18
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x18
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x18
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x18
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x18
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x18
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x18
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x18
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x18
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x18
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x18
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x18
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x18
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x18
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x18
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x18
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x18
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x18
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x18
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x18
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x18
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x18
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x18
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x18
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x18
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x18
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x18
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x18
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x18
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x18
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x18
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x18
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x18
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x18
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x18
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x18
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x18
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x18
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x18
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x18
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x18
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x18
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x18
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x18
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x18
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x18
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x18
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x18
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x18
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x18
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x18
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x18
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x18
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x18
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x18
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x18
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x18
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x18
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x18
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x18
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x18
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x18
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x18
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x18
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x18
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x18
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x18
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x18
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x18
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x18
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x18
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x18
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x18
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x18
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x18
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x18
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x18
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x18
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x18
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x18
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x18
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x18
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x18
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x18
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x18
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x18
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x18
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x18
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x18
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x18
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x18
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x18
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x18
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x18
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x18
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x18
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x18
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x18
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x18
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x18
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x18
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x18
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x18
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x18
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x18
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x18
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x18
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x18
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x3
	.byte	0x2f
	.long	0x3b9
	.uleb128 0x4
	.long	0x12d0
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x30
	.uleb128 0x6
	.string	"block"
	.byte	0x3
	.byte	0x30
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.long	.LASF4
	.byte	0x3
	.byte	0x30
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x34
	.long	0x12da
	.uleb128 0x1a
	.string	"st"
	.byte	0x1
	.uleb128 0x1b
	.long	0x132f
	.long	.LASF5
	.byte	0x4
	.byte	0x3
	.byte	0x58
	.uleb128 0x18
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x18
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x18
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x18
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x17
	.long	0x2fd9
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x67
	.uleb128 0x18
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x18
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x18
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x18
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x18
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x18
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x18
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x18
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x18
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x18
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x18
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x18
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x18
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x18
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x18
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x18
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x18
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x18
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x18
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x18
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x18
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x18
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x18
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x18
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x18
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x18
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x18
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x18
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x18
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x18
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x18
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x18
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x18
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x18
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x18
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x18
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x18
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x18
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x18
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x18
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x18
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x18
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x18
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x18
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x18
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x18
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x18
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x18
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x18
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x18
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x18
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x18
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x18
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x18
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x18
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x18
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x18
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x18
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x18
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x18
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x18
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x18
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x18
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x18
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x18
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x18
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x18
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x18
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x18
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x18
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x18
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x18
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x18
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x18
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x18
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x18
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x18
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x18
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x18
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x18
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x18
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x18
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x18
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x18
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x18
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x18
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x18
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x18
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x18
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x18
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x18
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x18
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x18
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x18
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x18
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x18
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x18
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x18
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x18
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x18
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x18
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x18
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x18
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x18
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x18
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x18
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x18
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x18
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x18
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x18
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x18
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x18
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x18
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x18
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x18
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x18
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x18
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x18
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x18
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x18
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x18
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x18
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x18
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x18
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x18
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x18
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x18
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x18
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x18
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x18
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x18
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x18
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x18
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x18
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x18
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x18
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x18
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x18
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x18
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x18
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x18
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x18
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x18
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x18
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x18
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x18
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x18
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x18
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x18
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x18
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x18
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x18
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x18
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x18
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x18
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x18
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x18
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x18
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x18
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x18
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x18
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x18
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x18
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x18
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x18
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x18
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x18
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x18
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x18
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x18
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x18
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x18
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x18
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x18
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x18
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x18
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x18
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x18
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x18
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x18
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x18
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x18
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x18
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x18
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x18
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x18
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x18
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x18
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x18
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x18
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x18
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x18
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x18
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x18
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x18
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x18
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x18
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x18
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x18
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x18
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x18
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x18
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x18
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x18
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x18
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x18
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x18
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x18
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x18
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x18
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x18
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x18
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x18
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x18
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x18
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x18
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x18
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x18
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x18
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x18
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x18
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x18
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x18
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x18
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x18
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x18
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x18
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x18
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x18
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x18
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x18
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x18
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x18
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x18
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x18
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x18
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x18
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x18
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x18
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x18
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x18
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x18
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x18
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x18
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x18
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x18
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x18
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x18
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x18
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x18
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x18
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x18
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x18
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x18
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x18
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x18
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x18
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x18
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x18
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x18
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x18
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x18
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x18
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x18
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x18
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x18
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x18
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x18
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x18
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x18
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x18
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x18
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x18
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x18
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x18
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x18
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x18
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x18
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x18
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x18
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x18
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x18
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x18
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x18
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x18
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x18
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x18
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x32b9
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8c
	.uleb128 0x19
	.long	.LASF6
	.byte	0x3
	.byte	0x8d
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.long	.LASF2
	.byte	0x3
	.byte	0x8e
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x90
	.long	0x961
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"side_effects_flag"
	.byte	0x3
	.byte	0x92
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"constant_flag"
	.byte	0x3
	.byte	0x93
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"addressable_flag"
	.byte	0x3
	.byte	0x94
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"volatile_flag"
	.byte	0x3
	.byte	0x95
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"readonly_flag"
	.byte	0x3
	.byte	0x96
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unsigned_flag"
	.byte	0x3
	.byte	0x97
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"asm_written_flag"
	.byte	0x3
	.byte	0x98
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"not_emitted_by_gxx"
	.byte	0x3
	.byte	0x9a
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"used_flag"
	.byte	0x3
	.byte	0x9f
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"nothrow_flag"
	.byte	0x3
	.byte	0xa0
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"static_flag"
	.byte	0x3
	.byte	0xa1
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"public_flag"
	.byte	0x3
	.byte	0xa2
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"private_flag"
	.byte	0x3
	.byte	0xa3
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"protected_flag"
	.byte	0x3
	.byte	0xa4
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"bounded_flag"
	.byte	0x3
	.byte	0xa5
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"deprecated_flag"
	.byte	0x3
	.byte	0xa6
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF7
	.byte	0x3
	.byte	0xa8
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF8
	.byte	0x3
	.byte	0xa9
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF9
	.byte	0x3
	.byte	0xaa
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF10
	.byte	0x3
	.byte	0xab
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF11
	.byte	0x3
	.byte	0xac
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF12
	.byte	0x3
	.byte	0xad
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF13
	.byte	0x3
	.byte	0xae
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF14
	.byte	0x3
	.byte	0xb0
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"sbuf"
	.byte	0x3
	.byte	0xb5
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"sdram"
	.byte	0x3
	.byte	0xb6
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v1buf"
	.byte	0x3
	.byte	0xb7
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v2buf"
	.byte	0x3
	.byte	0xb8
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v4buf"
	.byte	0x3
	.byte	0xb9
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x32f5
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x30a
	.uleb128 0xd
	.string	"low"
	.byte	0x3
	.value	0x30b
	.long	0x466
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"high"
	.byte	0x3
	.value	0x30c
	.long	0x455
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x333d
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x303
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x304
	.long	0x2fd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x305
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"int_cst"
	.byte	0x3
	.value	0x30d
	.long	0x32b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x338b
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x31f
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x320
	.long	0x2fd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x321
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x322
	.long	0x3398
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1a
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x338b
	.uleb128 0xc
	.long	0x3402
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x333
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x334
	.long	0x2fd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x335
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1d
	.long	.LASF15
	.byte	0x3
	.value	0x336
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"pointer"
	.byte	0x3
	.value	0x337
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"st"
	.byte	0x3
	.value	0x339
	.long	0x3402
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x12d0
	.uleb128 0xc
	.long	0x345d
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x342
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x343
	.long	0x2fd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x344
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real"
	.byte	0x3
	.value	0x345
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"imag"
	.byte	0x3
	.value	0x346
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xc
	.long	0x34a5
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x355
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x356
	.long	0x2fd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x357
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"elements"
	.byte	0x3
	.value	0x358
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1e
	.long	0x34e3
	.long	.LASF16
	.byte	0xc
	.byte	0x6
	.byte	0x19
	.uleb128 0x6
	.string	"str"
	.byte	0x6
	.byte	0x1c
	.long	0x4a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0x6
	.byte	0x1d
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"hash_value"
	.byte	0x6
	.byte	0x1e
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x351a
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x376
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x377
	.long	0x2fd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"id"
	.byte	0x3
	.value	0x378
	.long	0x34a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x355b
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x380
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x381
	.long	0x2fd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF17
	.byte	0x3
	.value	0x382
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1d
	.long	.LASF18
	.byte	0x3
	.value	0x383
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x3599
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x38e
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x38f
	.long	0x2fd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF15
	.byte	0x3
	.value	0x390
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"a"
	.byte	0x3
	.value	0x391
	.long	0x3599
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x35a9
	.long	0x1e3
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x35f5
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3d4
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x3d5
	.long	0x2fd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"complexity"
	.byte	0x3
	.value	0x3d6
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"operands"
	.byte	0x3
	.value	0x3d9
	.long	0x3599
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x36e5
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x40a
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x40b
	.long	0x2fd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x40d
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.long	.LASF19
	.byte	0x3
	.value	0x40e
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.string	"block_num"
	.byte	0x3
	.value	0x40f
	.long	0x3b9
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"vars"
	.byte	0x3
	.value	0x411
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"subblocks"
	.byte	0x3
	.value	0x412
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"supercontext"
	.byte	0x3
	.value	0x413
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1d
	.long	.LASF20
	.byte	0x3
	.value	0x414
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"fragment_origin"
	.byte	0x3
	.value	0x415
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"fragment_chain"
	.byte	0x3
	.value	0x416
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x21
	.long	0x372c
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x570
	.uleb128 0x9
	.string	"address"
	.byte	0x3
	.value	0x571
	.long	0x2e0
	.uleb128 0x9
	.string	"pointer"
	.byte	0x3
	.value	0x572
	.long	0x48e
	.uleb128 0x9
	.string	"die"
	.byte	0x3
	.value	0x573
	.long	0x3739
	.byte	0x0
	.uleb128 0x1a
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x372c
	.uleb128 0xc
	.long	0x3a86
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x551
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x552
	.long	0x2fd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"values"
	.byte	0x3
	.value	0x553
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"size"
	.byte	0x3
	.value	0x554
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1d
	.long	.LASF21
	.byte	0x3
	.value	0x555
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1d
	.long	.LASF22
	.byte	0x3
	.value	0x556
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"uid"
	.byte	0x3
	.value	0x557
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"precision"
	.byte	0x3
	.value	0x559
	.long	0x3b9
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"mode"
	.byte	0x3
	.value	0x55a
	.long	0x6d4
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"string_flag"
	.byte	0x3
	.value	0x55c
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"no_force_blk_flag"
	.byte	0x3
	.value	0x55d
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"needs_constructing_flag"
	.byte	0x3
	.value	0x55e
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"transparent_union_flag"
	.byte	0x3
	.value	0x55f
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"packed_flag"
	.byte	0x3
	.value	0x560
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"restrict_flag"
	.byte	0x3
	.value	0x561
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF23
	.byte	0x3
	.value	0x562
	.long	0x3b9
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF7
	.byte	0x3
	.value	0x564
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF8
	.byte	0x3
	.value	0x565
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF9
	.byte	0x3
	.value	0x566
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF10
	.byte	0x3
	.value	0x567
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF11
	.byte	0x3
	.value	0x568
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF12
	.byte	0x3
	.value	0x569
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF13
	.byte	0x3
	.value	0x56a
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF24
	.byte	0x3
	.value	0x56b
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.long	.LASF25
	.byte	0x3
	.value	0x56d
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"pointer_to"
	.byte	0x3
	.value	0x56e
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"reference_to"
	.byte	0x3
	.value	0x56f
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"symtab"
	.byte	0x3
	.value	0x574
	.long	0x36e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1d
	.long	.LASF26
	.byte	0x3
	.value	0x576
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"minval"
	.byte	0x3
	.value	0x577
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"maxval"
	.byte	0x3
	.value	0x578
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"next_variant"
	.byte	0x3
	.value	0x579
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"main_variant"
	.byte	0x3
	.value	0x57a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"binfo"
	.byte	0x3
	.value	0x57b
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1d
	.long	.LASF27
	.byte	0x3
	.value	0x57c
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"alias_set"
	.byte	0x3
	.value	0x57d
	.long	0x455
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1d
	.long	.LASF28
	.byte	0x3
	.value	0x57f
	.long	0x3aa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"ty_idx"
	.byte	0x3
	.value	0x581
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"field_ids_used"
	.byte	0x3
	.value	0x582
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"dst_id"
	.byte	0x3
	.value	0x583
	.long	0x1294
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"extra_methods"
	.byte	0x3
	.value	0x58a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0xc
	.long	0x3aa7
	.string	"lang_type"
	.byte	0x4c
	.byte	0x3
	.value	0x57f
	.uleb128 0xd
	.string	"u"
	.byte	0xa
	.value	0x4e0
	.long	0x682a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3a86
	.uleb128 0xc
	.long	0x3af0
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x817
	.uleb128 0x20
	.long	.LASF25
	.byte	0x3
	.value	0x818
	.long	0x3b9
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"off_align"
	.byte	0x3
	.value	0x819
	.long	0x3b9
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x3b25
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x80e
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x811
	.long	0x132f
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x814
	.long	0x455
	.uleb128 0x9
	.string	"a"
	.byte	0x3
	.value	0x81a
	.long	0x3aad
	.byte	0x0
	.uleb128 0x21
	.long	0x3b64
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x837
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x838
	.long	0x4513
	.uleb128 0x9
	.string	"r"
	.byte	0x3
	.value	0x839
	.long	0x9a
	.uleb128 0x9
	.string	"t"
	.byte	0x3
	.value	0x83a
	.long	0x1e3
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x83b
	.long	0x2e0
	.byte	0x0
	.uleb128 0x22
	.long	0x4513
	.string	"function"
	.value	0x134
	.byte	0x3
	.value	0x7c2
	.uleb128 0x6
	.string	"eh"
	.byte	0x8
	.byte	0xb5
	.long	0x531d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0x8
	.byte	0xb6
	.long	0x5331
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0x8
	.byte	0xb7
	.long	0x5337
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0x8
	.byte	0xb8
	.long	0x533d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0x8
	.byte	0xb9
	.long	0x5353
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x19
	.long	.LASF26
	.byte	0x8
	.byte	0xbe
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x19
	.long	.LASF1
	.byte	0x8
	.byte	0xc1
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0x8
	.byte	0xc4
	.long	0x4513
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0x8
	.byte	0xc9
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"args_size"
	.byte	0x8
	.byte	0xce
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0x8
	.byte	0xd3
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0x8
	.byte	0xd7
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0x8
	.byte	0xdb
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0x8
	.byte	0xdf
	.long	0x3d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0x8
	.byte	0xe5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0x8
	.byte	0xe8
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x19
	.long	.LASF29
	.byte	0x8
	.byte	0xec
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0x8
	.byte	0xf0
	.long	0x5370
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0x8
	.byte	0xf3
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0x8
	.byte	0xf8
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x8
	.byte	0xfe
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x8
	.value	0x102
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x8
	.value	0x107
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"x_cleanup_label"
	.byte	0x8
	.value	0x10d
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.string	"x_return_label"
	.byte	0x8
	.value	0x112
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.string	"computed_goto_common_label"
	.byte	0x8
	.value	0x115
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"computed_goto_common_reg"
	.byte	0x8
	.value	0x116
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"x_save_expr_regs"
	.byte	0x8
	.value	0x11a
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"x_stack_slot_list"
	.byte	0x8
	.value	0x11e
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.string	"x_rtl_expr_chain"
	.byte	0x8
	.value	0x121
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"x_tail_recursion_label"
	.byte	0x8
	.value	0x125
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.string	"x_tail_recursion_reentry"
	.byte	0x8
	.value	0x128
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.string	"x_arg_pointer_save_area"
	.byte	0x8
	.value	0x12e
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"x_clobber_return_insn"
	.byte	0x8
	.value	0x133
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"x_frame_offset"
	.byte	0x8
	.value	0x138
	.long	0x455
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"x_context_display"
	.byte	0x8
	.value	0x13d
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"x_trampoline_list"
	.byte	0x8
	.value	0x146
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"x_parm_birth_insn"
	.byte	0x8
	.value	0x149
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"x_last_parm_insn"
	.byte	0x8
	.value	0x14d
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"x_max_parm_reg"
	.byte	0x8
	.value	0x151
	.long	0x3b9
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"x_parm_reg_stack_loc"
	.byte	0x8
	.value	0x157
	.long	0x51c1
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0x8
	.value	0x15a
	.long	0x5382
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"x_temp_slot_level"
	.byte	0x8
	.value	0x15d
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"x_var_temp_slot_level"
	.byte	0x8
	.value	0x160
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"x_target_temp_slot_level"
	.byte	0x8
	.value	0x166
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"fixup_var_refs_queue"
	.byte	0x8
	.value	0x16a
	.long	0x5017
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"inlinable"
	.byte	0x8
	.value	0x16d
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"no_debugging_symbols"
	.byte	0x8
	.value	0x16e
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xd
	.string	"original_arg_vector"
	.byte	0x8
	.value	0x16f
	.long	0x19b
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"original_decl_initial"
	.byte	0x8
	.value	0x170
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.string	"inl_last_parm_insn"
	.byte	0x8
	.value	0x173
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.string	"inl_max_label_num"
	.byte	0x8
	.value	0x175
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"funcdef_no"
	.byte	0x8
	.value	0x178
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.string	"machine"
	.byte	0x8
	.value	0x17d
	.long	0x539b
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.string	"stack_alignment_needed"
	.byte	0x8
	.value	0x17f
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.string	"preferred_stack_boundary"
	.byte	0x8
	.value	0x181
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0x1d
	.long	.LASF30
	.byte	0x8
	.value	0x184
	.long	0x55d7
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.string	"epilogue_delay_list"
	.byte	0x8
	.value	0x18a
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1f
	.string	"returns_struct"
	.byte	0x8
	.value	0x190
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"returns_pcc_struct"
	.byte	0x8
	.value	0x194
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"returns_pointer"
	.byte	0x8
	.value	0x197
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"needs_context"
	.byte	0x8
	.value	0x19a
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_setjmp"
	.byte	0x8
	.value	0x19d
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_longjmp"
	.byte	0x8
	.value	0x1a0
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_alloca"
	.byte	0x8
	.value	0x1a4
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_eh_return"
	.byte	0x8
	.value	0x1a7
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_nonlocal_label"
	.byte	0x8
	.value	0x1ab
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_nonlocal_goto"
	.byte	0x8
	.value	0x1af
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"contains_functions"
	.byte	0x8
	.value	0x1b2
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_computed_jump"
	.byte	0x8
	.value	0x1b5
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"is_thunk"
	.byte	0x8
	.value	0x1ba
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"all_throwers_are_sibcalls"
	.byte	0x8
	.value	0x1c1
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"instrument_entry_exit"
	.byte	0x8
	.value	0x1c5
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"arc_profile"
	.byte	0x8
	.value	0x1c8
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"profile"
	.byte	0x8
	.value	0x1cb
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"limit_stack"
	.byte	0x8
	.value	0x1cf
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"stdarg"
	.byte	0x8
	.value	0x1d2
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"x_whole_function_mode_p"
	.byte	0x8
	.value	0x1d8
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x8
	.value	0x1e1
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_const_pool"
	.byte	0x8
	.value	0x1e4
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_pic_offset_table"
	.byte	0x8
	.value	0x1e7
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_eh_lsda"
	.byte	0x8
	.value	0x1ea
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"arg_pointer_save_area_init"
	.byte	0x8
	.value	0x1ed
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.long	.LASF31
	.byte	0x8
	.value	0x1fa
	.long	0x52a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"max_jumptable_ents"
	.byte	0x8
	.value	0x1fe
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3b64
	.uleb128 0x23
	.long	0x4551
	.byte	0x4
	.byte	0x3
	.value	0x84e
	.uleb128 0x9
	.string	"st"
	.byte	0x3
	.value	0x84f
	.long	0x3402
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x3
	.value	0x850
	.long	0x1283
	.uleb128 0x9
	.string	"field_id"
	.byte	0x3
	.value	0x851
	.long	0x3b9
	.byte	0x0
	.uleb128 0xc
	.long	0x4c93
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x3
	.value	0x7c5
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x7c6
	.long	0x2fd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"locus"
	.byte	0x3
	.value	0x7c7
	.long	0x94f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"uid"
	.byte	0x3
	.value	0x7c8
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"size"
	.byte	0x3
	.value	0x7c9
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1f
	.string	"mode"
	.byte	0x3
	.value	0x7ca
	.long	0x6d4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"external_flag"
	.byte	0x3
	.value	0x7cc
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"nonlocal_flag"
	.byte	0x3
	.value	0x7cd
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"regdecl_flag"
	.byte	0x3
	.value	0x7ce
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"inline_flag"
	.byte	0x3
	.value	0x7cf
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"bit_field_flag"
	.byte	0x3
	.value	0x7d0
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"virtual_flag"
	.byte	0x3
	.value	0x7d1
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"ignored_flag"
	.byte	0x3
	.value	0x7d2
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.long	.LASF19
	.byte	0x3
	.value	0x7d3
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"sbuf_flag"
	.byte	0x3
	.value	0x7d7
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"sdram_flag"
	.byte	0x3
	.value	0x7d8
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"v1buf_flag"
	.byte	0x3
	.value	0x7d9
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"v2buf_flag"
	.byte	0x3
	.value	0x7da
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"v4buf_flag"
	.byte	0x3
	.value	0x7db
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"in_system_header_flag"
	.byte	0x3
	.value	0x7df
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"common_flag"
	.byte	0x3
	.value	0x7e0
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"defer_output"
	.byte	0x3
	.value	0x7e1
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"transparent_union"
	.byte	0x3
	.value	0x7e2
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"static_ctor_flag"
	.byte	0x3
	.value	0x7e3
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"static_dtor_flag"
	.byte	0x3
	.value	0x7e4
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"artificial_flag"
	.byte	0x3
	.value	0x7e5
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"weak_flag"
	.byte	0x3
	.value	0x7e6
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"non_addr_const_p"
	.byte	0x3
	.value	0x7e8
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"no_instrument_function_entry_exit"
	.byte	0x3
	.value	0x7e9
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"comdat_flag"
	.byte	0x3
	.value	0x7ea
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"malloc_flag"
	.byte	0x3
	.value	0x7eb
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"no_limit_stack"
	.byte	0x3
	.value	0x7ec
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF5
	.byte	0x3
	.value	0x7ed
	.long	0x12df
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"pure_flag"
	.byte	0x3
	.value	0x7ee
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF23
	.byte	0x3
	.value	0x7f0
	.long	0x3b9
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"non_addressable"
	.byte	0x3
	.value	0x7f1
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF24
	.byte	0x3
	.value	0x7f2
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"uninlinable"
	.byte	0x3
	.value	0x7f3
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"thread_local_flag"
	.byte	0x3
	.value	0x7f4
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"inlined_function_flag"
	.byte	0x3
	.value	0x7f5
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"threadprivate_flag"
	.byte	0x3
	.value	0x7f7
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF7
	.byte	0x3
	.value	0x7fa
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF8
	.byte	0x3
	.value	0x7fb
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF9
	.byte	0x3
	.value	0x7fc
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF10
	.byte	0x3
	.value	0x7fd
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF11
	.byte	0x3
	.value	0x7fe
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF12
	.byte	0x3
	.value	0x7ff
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF13
	.byte	0x3
	.value	0x800
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF14
	.byte	0x3
	.value	0x801
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"syscall_linkage_flag"
	.byte	0x3
	.value	0x804
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"widen_retval_flag"
	.byte	0x3
	.value	0x805
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"emitted_by_gxx"
	.byte	0x3
	.value	0x808
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"u1"
	.byte	0x3
	.value	0x81b
	.long	0x3af0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1d
	.long	.LASF21
	.byte	0x3
	.value	0x81d
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1d
	.long	.LASF26
	.byte	0x3
	.value	0x81e
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1d
	.long	.LASF27
	.byte	0x3
	.value	0x81f
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"arguments"
	.byte	0x3
	.value	0x820
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1d
	.long	.LASF32
	.byte	0x3
	.value	0x821
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"initial"
	.byte	0x3
	.value	0x822
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"initial_2"
	.byte	0x3
	.value	0x824
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"alias_target"
	.byte	0x3
	.value	0x825
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"thunk_delta"
	.byte	0x3
	.value	0x829
	.long	0x455
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1d
	.long	.LASF20
	.byte	0x3
	.value	0x82b
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"assembler_name"
	.byte	0x3
	.value	0x82c
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"section_name"
	.byte	0x3
	.value	0x82d
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1d
	.long	.LASF22
	.byte	0x3
	.value	0x82e
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x82f
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x830
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"u2"
	.byte	0x3
	.value	0x83c
	.long	0x3b25
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"saved_tree"
	.byte	0x3
	.value	0x83f
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"inlined_fns"
	.byte	0x3
	.value	0x843
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"vindex"
	.byte	0x3
	.value	0x845
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x846
	.long	0x455
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x1d
	.long	.LASF28
	.byte	0x3
	.value	0x848
	.long	0x4cca
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x1f
	.string	"symtab_idx"
	.byte	0x3
	.value	0x84b
	.long	0x3b9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x1f
	.string	"label_defined"
	.byte	0x3
	.value	0x84c
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"sgi_u1"
	.byte	0x3
	.value	0x852
	.long	0x4519
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x858
	.long	0x1294
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"sl_model_name"
	.byte	0x3
	.value	0x85c
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0xc
	.long	0x4cca
	.string	"lang_decl"
	.byte	0x34
	.byte	0x3
	.value	0x848
	.uleb128 0xd
	.string	"decl_flags"
	.byte	0xa
	.value	0x73a
	.long	0x68e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"u"
	.byte	0xa
	.value	0x763
	.long	0x6d02
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c93
	.uleb128 0x17
	.long	0x4f4e
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xe
	.byte	0x1d
	.uleb128 0x18
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x18
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x18
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x18
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x18
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x18
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x18
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x18
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x18
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x18
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x18
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x18
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x18
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x18
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x18
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x18
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x18
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x18
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x18
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x18
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x18
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x18
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x18
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x18
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x18
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x18
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x18
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x18
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x18
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x18
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x18
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x18
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x18
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x18
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x18
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0xc
	.long	0x4f9d
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x864
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x865
	.long	0x2fd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"choice"
	.byte	0x3
	.value	0x866
	.long	0x4cd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x867
	.long	0x48c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x2cd
	.uleb128 0xb
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x3
	.byte	0x4
	.long	0x1e3
	.uleb128 0x4
	.long	0x5017
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x8
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0x8
	.byte	0x18
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0x8
	.byte	0x19
	.long	0x6d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0x8
	.byte	0x1a
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0x8
	.byte	0x1b
	.long	0x5017
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4fb1
	.uleb128 0x1e
	.long	0x5066
	.long	.LASF33
	.byte	0x10
	.byte	0x8
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0x8
	.byte	0x26
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0x8
	.byte	0x27
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.long	.LASF34
	.byte	0x8
	.byte	0x28
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0x8
	.byte	0x29
	.long	0x5066
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x501d
	.uleb128 0x3
	.byte	0x4
	.long	0x575
	.uleb128 0x4
	.long	0x51c1
	.string	"emit_status"
	.byte	0x34
	.byte	0x8
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0x8
	.byte	0x3a
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0x8
	.byte	0x3d
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0x8
	.byte	0x44
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0x8
	.byte	0x45
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.long	.LASF34
	.byte	0x8
	.byte	0x4a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x19
	.long	.LASF33
	.byte	0x8
	.byte	0x50
	.long	0x5066
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0x8
	.byte	0x54
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0x8
	.byte	0x58
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0x8
	.byte	0x59
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0x8
	.byte	0x5f
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0x8
	.byte	0x65
	.long	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0x8
	.byte	0x69
	.long	0x4fab
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0x8
	.byte	0x70
	.long	0x51c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x52a7
	.string	"expr_status"
	.byte	0x1c
	.byte	0x8
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0x8
	.byte	0x80
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0x8
	.byte	0x91
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0x8
	.byte	0x97
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0x8
	.byte	0x9c
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0x8
	.byte	0x9f
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0x8
	.byte	0xa2
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0x8
	.byte	0xa5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x24
	.long	0x5311
	.long	.LASF31
	.byte	0x4
	.byte	0x8
	.value	0x1f1
	.uleb128 0x18
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x18
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x18
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1a
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5311
	.uleb128 0x1a
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5323
	.uleb128 0x3
	.byte	0x4
	.long	0x51c7
	.uleb128 0x3
	.byte	0x4
	.long	0x5072
	.uleb128 0x1a
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5343
	.uleb128 0x1a
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5359
	.uleb128 0x1a
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5376
	.uleb128 0x1a
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5388
	.uleb128 0xc
	.long	0x55d7
	.string	"language_function"
	.byte	0x64
	.byte	0x8
	.value	0x184
	.uleb128 0xd
	.string	"base"
	.byte	0xa
	.value	0x370
	.long	0x5cd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"x_dtor_label"
	.byte	0xa
	.value	0x372
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"x_current_class_ptr"
	.byte	0xa
	.value	0x373
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"x_current_class_ref"
	.byte	0xa
	.value	0x374
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"x_eh_spec_block"
	.byte	0xa
	.value	0x375
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"x_in_charge_parm"
	.byte	0xa
	.value	0x376
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"x_vtt_parm"
	.byte	0xa
	.value	0x377
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"x_return_value"
	.byte	0xa
	.value	0x378
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"returns_value"
	.byte	0xa
	.value	0x37a
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"returns_null"
	.byte	0xa
	.value	0x37b
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"returns_abnormally"
	.byte	0xa
	.value	0x37c
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"in_function_try_handler"
	.byte	0xa
	.value	0x37d
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"in_base_initializer"
	.byte	0xa
	.value	0x37e
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"x_expanding_p"
	.byte	0xa
	.value	0x37f
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1f
	.string	"can_throw"
	.byte	0xa
	.value	0x382
	.long	0x4fa2
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"x_named_label_uses"
	.byte	0xa
	.value	0x384
	.long	0x60a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"x_named_labels"
	.byte	0xa
	.value	0x385
	.long	0x60bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1d
	.long	.LASF35
	.byte	0xa
	.value	0x386
	.long	0x5d78
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"x_local_names"
	.byte	0xa
	.value	0x387
	.long	0x5c31
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1d
	.long	.LASF29
	.byte	0xa
	.value	0x389
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"unparsed_inlines"
	.byte	0xa
	.value	0x38a
	.long	0x60d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x53a1
	.uleb128 0x2
	.string	"hashval_t"
	.byte	0x11
	.byte	0x32
	.long	0x3b9
	.uleb128 0x2
	.string	"htab_hash"
	.byte	0x11
	.byte	0x37
	.long	0x55ff
	.uleb128 0x3
	.byte	0x4
	.long	0x5605
	.uleb128 0x15
	.long	0x5615
	.byte	0x1
	.long	0x55dd
	.uleb128 0x14
	.long	0x51e
	.byte	0x0
	.uleb128 0x2
	.string	"htab_eq"
	.byte	0x11
	.byte	0x3e
	.long	0x503
	.uleb128 0x2
	.string	"htab_del"
	.byte	0x11
	.byte	0x42
	.long	0x4bb
	.uleb128 0x2
	.string	"htab_alloc"
	.byte	0x11
	.byte	0x4e
	.long	0x5646
	.uleb128 0x3
	.byte	0x4
	.long	0x564c
	.uleb128 0x15
	.long	0x5661
	.byte	0x1
	.long	0x48c
	.uleb128 0x14
	.long	0x3ef
	.uleb128 0x14
	.long	0x3ef
	.byte	0x0
	.uleb128 0x2
	.string	"htab_free"
	.byte	0x11
	.byte	0x51
	.long	0x4bb
	.uleb128 0x4
	.long	0x5745
	.string	"htab"
	.byte	0x2c
	.byte	0x11
	.byte	0x59
	.uleb128 0x6
	.string	"hash_f"
	.byte	0x11
	.byte	0x5b
	.long	0x55ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"eq_f"
	.byte	0x11
	.byte	0x5e
	.long	0x5615
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"del_f"
	.byte	0x11
	.byte	0x61
	.long	0x5624
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"entries"
	.byte	0x11
	.byte	0x64
	.long	0x4b5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x11
	.byte	0x67
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"n_elements"
	.byte	0x11
	.byte	0x6a
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"n_deleted"
	.byte	0x11
	.byte	0x6d
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"searches"
	.byte	0x11
	.byte	0x71
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"collisions"
	.byte	0x11
	.byte	0x75
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"alloc_f"
	.byte	0x11
	.byte	0x78
	.long	0x5634
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"free_f"
	.byte	0x11
	.byte	0x79
	.long	0x5661
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x2
	.string	"htab_t"
	.byte	0x11
	.byte	0x7c
	.long	0x5753
	.uleb128 0x3
	.byte	0x4
	.long	0x5672
	.uleb128 0x4
	.long	0x578f
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xc
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0xc
	.byte	0x32
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0xc
	.byte	0x36
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x17
	.long	0x592a
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xc
	.byte	0x3c
	.uleb128 0x18
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x18
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x18
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x18
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x18
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x18
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x18
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x18
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x18
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x18
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x18
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x18
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x18
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x18
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x18
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x18
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x18
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x18
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x18
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x18
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x18
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x7
	.long	0x5a26
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xc
	.byte	0x55
	.uleb128 0x25
	.string	"c"
	.byte	0xc
	.byte	0x56
	.long	0x4cd
	.uleb128 0x25
	.string	"uc"
	.byte	0xc
	.byte	0x58
	.long	0x5a26
	.uleb128 0x25
	.string	"s"
	.byte	0xc
	.byte	0x5a
	.long	0x5a36
	.uleb128 0x25
	.string	"us"
	.byte	0xc
	.byte	0x5c
	.long	0x5a46
	.uleb128 0x25
	.string	"i"
	.byte	0xc
	.byte	0x5e
	.long	0x5a56
	.uleb128 0x25
	.string	"u"
	.byte	0xc
	.byte	0x60
	.long	0x5a66
	.uleb128 0x25
	.string	"l"
	.byte	0xc
	.byte	0x62
	.long	0x5a76
	.uleb128 0x25
	.string	"ul"
	.byte	0xc
	.byte	0x64
	.long	0x5a86
	.uleb128 0x25
	.string	"hint"
	.byte	0xc
	.byte	0x66
	.long	0x5a96
	.uleb128 0x25
	.string	"uhint"
	.byte	0xc
	.byte	0x68
	.long	0x5aa6
	.uleb128 0x25
	.string	"generic"
	.byte	0xc
	.byte	0x6a
	.long	0x5ab6
	.uleb128 0x25
	.string	"cptr"
	.byte	0xc
	.byte	0x6c
	.long	0x5ac6
	.uleb128 0x25
	.string	"rtx"
	.byte	0xc
	.byte	0x6e
	.long	0x5ad6
	.uleb128 0x25
	.string	"rtvec"
	.byte	0xc
	.byte	0x70
	.long	0x5ae6
	.uleb128 0x25
	.string	"tree"
	.byte	0xc
	.byte	0x72
	.long	0x5af6
	.uleb128 0x25
	.string	"bitmap"
	.byte	0xc
	.byte	0x74
	.long	0x5b06
	.uleb128 0x25
	.string	"reg"
	.byte	0xc
	.byte	0x76
	.long	0x5b2e
	.uleb128 0x25
	.string	"const_equiv"
	.byte	0xc
	.byte	0x78
	.long	0x5b53
	.uleb128 0x25
	.string	"bb"
	.byte	0xc
	.byte	0x7a
	.long	0x5b63
	.uleb128 0x25
	.string	"te"
	.byte	0xc
	.byte	0x7c
	.long	0x5b8b
	.byte	0x0
	.uleb128 0xf
	.long	0x5a36
	.long	0x3fd
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5a46
	.long	0x448
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5a56
	.long	0x40e
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5a66
	.long	0x2e0
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5a76
	.long	0x3b9
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5a86
	.long	0x480
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5a96
	.long	0x424
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5aa6
	.long	0x455
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5ab6
	.long	0x466
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5ac6
	.long	0x48c
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5ad6
	.long	0x48e
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5ae6
	.long	0xa5
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5af6
	.long	0x1a8
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5b06
	.long	0x1ef
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5b16
	.long	0x5b28
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5b16
	.uleb128 0xf
	.long	0x5b3e
	.long	0x5b4d
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5b3e
	.uleb128 0xf
	.long	0x5b63
	.long	0x5759
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5b73
	.long	0x5b85
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5b73
	.uleb128 0xf
	.long	0x5b9b
	.long	0x5ba6
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5b9b
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xc
	.byte	0x7e
	.long	0x592a
	.uleb128 0x4
	.long	0x5c31
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xc
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0xc
	.byte	0x82
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0xc
	.byte	0x83
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.long	.LASF2
	.byte	0xc
	.byte	0x85
	.long	0x578f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.long	.LASF26
	.byte	0xc
	.byte	0x86
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.long	.LASF36
	.byte	0xc
	.byte	0x87
	.long	0x5bac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xc
	.byte	0x8a
	.long	0x5c44
	.uleb128 0x3
	.byte	0x4
	.long	0x5bbf
	.uleb128 0xc
	.long	0x5cd5
	.string	"stmt_tree_s"
	.byte	0x10
	.byte	0xb
	.value	0x101
	.uleb128 0xd
	.string	"x_last_stmt"
	.byte	0xb
	.value	0x103
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"x_last_expr_type"
	.byte	0xb
	.value	0x106
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"x_last_expr_filename"
	.byte	0xb
	.value	0x108
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"stmts_are_full_exprs_p"
	.byte	0xb
	.value	0x117
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x5d20
	.string	"c_language_function"
	.byte	0x14
	.byte	0xb
	.value	0x11f
	.uleb128 0x1d
	.long	.LASF37
	.byte	0xb
	.value	0x122
	.long	0x5c4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"x_scope_stmt_stack"
	.byte	0xb
	.value	0x124
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x5d54
	.string	"c_lang_decl"
	.byte	0x4
	.byte	0xb
	.value	0x169
	.uleb128 0x1f
	.string	"declared_inline"
	.byte	0xb
	.value	0x16a
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LASF38
	.byte	0xa
	.byte	0xe4
	.long	0x5d5f
	.uleb128 0x27
	.long	.LASF38
	.byte	0x1
	.uleb128 0x1a
	.string	"cp_binding_level"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5d65
	.uleb128 0x11
	.string	"binding_table"
	.byte	0xa
	.value	0x103
	.long	0x5d94
	.uleb128 0x3
	.byte	0x4
	.long	0x5d9a
	.uleb128 0x1a
	.string	"binding_table_s"
	.byte	0x1
	.uleb128 0x11
	.string	"binding_entry"
	.byte	0xa
	.value	0x104
	.long	0x5dc2
	.uleb128 0x3
	.byte	0x4
	.long	0x5dc8
	.uleb128 0xc
	.long	0x5e0f
	.string	"binding_entry_s"
	.byte	0xc
	.byte	0xa
	.value	0x104
	.uleb128 0x1d
	.long	.LASF6
	.byte	0xa
	.value	0x10b
	.long	0x5dac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF26
	.byte	0xa
	.value	0x10c
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.long	.LASF2
	.byte	0xa
	.value	0x10d
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x6081
	.string	"saved_scope"
	.byte	0x6c
	.byte	0xa
	.value	0x316
	.uleb128 0xd
	.string	"old_bindings"
	.byte	0xa
	.value	0x317
	.long	0x6081
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"old_namespace"
	.byte	0xa
	.value	0x318
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"decl_ns_list"
	.byte	0xa
	.value	0x319
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"class_name"
	.byte	0xa
	.value	0x31a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"class_type"
	.byte	0xa
	.value	0x31b
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"access_specifier"
	.byte	0xa
	.value	0x31c
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"function_decl"
	.byte	0xa
	.value	0x31d
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"lang_base"
	.byte	0xa
	.value	0x31e
	.long	0x5c31
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"lang_name"
	.byte	0xa
	.value	0x31f
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"template_parms"
	.byte	0xa
	.value	0x320
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"x_previous_class_type"
	.byte	0xa
	.value	0x321
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"x_previous_class_values"
	.byte	0xa
	.value	0x322
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"x_saved_tree"
	.byte	0xa
	.value	0x323
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"lookups"
	.byte	0xa
	.value	0x324
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"last_parms"
	.byte	0xa
	.value	0x325
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"x_processing_template_decl"
	.byte	0xa
	.value	0x327
	.long	0x455
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"x_processing_specialization"
	.byte	0xa
	.value	0x328
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"x_processing_explicit_instantiation"
	.byte	0xa
	.value	0x329
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"need_pop_function_context"
	.byte	0xa
	.value	0x32a
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1d
	.long	.LASF37
	.byte	0xa
	.value	0x32c
	.long	0x5c4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"class_bindings"
	.byte	0xa
	.value	0x32e
	.long	0x5d78
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1d
	.long	.LASF35
	.byte	0xa
	.value	0x32f
	.long	0x5d78
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"prev"
	.byte	0xa
	.value	0x331
	.long	0x6087
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5d54
	.uleb128 0x3
	.byte	0x4
	.long	0x5e0f
	.uleb128 0x1a
	.string	"named_label_use_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x608d
	.uleb128 0x1a
	.string	"named_label_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x60aa
	.uleb128 0x1a
	.string	"unparsed_text"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x60c3
	.uleb128 0x28
	.long	0x6113
	.string	"languages"
	.byte	0x4
	.byte	0xa
	.value	0x3f1
	.uleb128 0x18
	.string	"lang_c"
	.sleb128 0
	.uleb128 0x18
	.string	"lang_cplusplus"
	.sleb128 1
	.uleb128 0x18
	.string	"lang_java"
	.sleb128 2
	.byte	0x0
	.uleb128 0xc
	.long	0x6232
	.string	"lang_type_header"
	.byte	0x4
	.byte	0xa
	.value	0x464
	.uleb128 0x1f
	.string	"is_lang_type_class"
	.byte	0xa
	.value	0x465
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"has_type_conversion"
	.byte	0xa
	.value	0x467
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"has_init_ref"
	.byte	0xa
	.value	0x468
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"has_default_ctor"
	.byte	0xa
	.value	0x469
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"uses_multiple_inheritance"
	.byte	0xa
	.value	0x46a
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"const_needs_init"
	.byte	0xa
	.value	0x46b
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"ref_needs_init"
	.byte	0xa
	.value	0x46c
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"has_const_assign_ref"
	.byte	0xa
	.value	0x46d
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x67f0
	.string	"lang_type_class"
	.byte	0x4c
	.byte	0xa
	.value	0x47e
	.uleb128 0xd
	.string	"h"
	.byte	0xa
	.value	0x47f
	.long	0x6113
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF25
	.byte	0xa
	.value	0x481
	.long	0x3fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_mutable"
	.byte	0xa
	.value	0x483
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"com_interface"
	.byte	0xa
	.value	0x484
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"non_pod_class"
	.byte	0xa
	.value	0x485
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"nearly_empty_p"
	.byte	0xa
	.value	0x486
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.long	.LASF24
	.byte	0xa
	.value	0x487
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_assign_ref"
	.byte	0xa
	.value	0x488
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_new"
	.byte	0xa
	.value	0x489
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_array_new"
	.byte	0xa
	.value	0x48a
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"gets_delete"
	.byte	0xa
	.value	0x48c
	.long	0x3b9
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_call_overloaded"
	.byte	0xa
	.value	0x48d
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_array_ref_overloaded"
	.byte	0xa
	.value	0x48e
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_arrow_overloaded"
	.byte	0xa
	.value	0x48f
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.long	.LASF39
	.byte	0xa
	.value	0x490
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.long	.LASF40
	.byte	0xa
	.value	0x491
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"marks"
	.byte	0xa
	.value	0x493
	.long	0x3b9
	.byte	0x4
	.byte	0x6
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"vec_new_uses_cookie"
	.byte	0xa
	.value	0x494
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"declared_class"
	.byte	0xa
	.value	0x495
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"being_defined"
	.byte	0xa
	.value	0x497
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"redefined"
	.byte	0xa
	.value	0x498
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"debug_requested"
	.byte	0xa
	.value	0x499
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF41
	.byte	0xa
	.value	0x49a
	.long	0x3b9
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"got_semicolon"
	.byte	0xa
	.value	0x49b
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"ptrmemfunc_flag"
	.byte	0xa
	.value	0x49c
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"was_anonymous"
	.byte	0xa
	.value	0x49d
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"has_real_assign_ref"
	.byte	0xa
	.value	0x49f
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"has_const_init_ref"
	.byte	0xa
	.value	0x4a0
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"has_complex_init_ref"
	.byte	0xa
	.value	0x4a1
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"has_complex_assign_ref"
	.byte	0xa
	.value	0x4a2
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"has_abstract_assign_ref"
	.byte	0xa
	.value	0x4a3
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"non_aggregate"
	.byte	0xa
	.value	0x4a4
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF42
	.byte	0xa
	.value	0x4a5
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"java_interface"
	.byte	0xa
	.value	0x4a6
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"anon_aggr"
	.byte	0xa
	.value	0x4a8
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"non_zero_init"
	.byte	0xa
	.value	0x4a9
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"empty_p"
	.byte	0xa
	.value	0x4aa
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"contains_empty_class_p"
	.byte	0xa
	.value	0x4ab
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"has_implicit_copy_constructor"
	.byte	0xa
	.value	0x4b7
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"dummy"
	.byte	0xa
	.value	0x4b8
	.long	0x3b9
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"primary_base"
	.byte	0xa
	.value	0x4bd
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"vfields"
	.byte	0xa
	.value	0x4be
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"vcall_indices"
	.byte	0xa
	.value	0x4bf
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"vtables"
	.byte	0xa
	.value	0x4c0
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"typeinfo_var"
	.byte	0xa
	.value	0x4c1
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"vbases"
	.byte	0xa
	.value	0x4c2
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"nested_udts"
	.byte	0xa
	.value	0x4c3
	.long	0x5d7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"as_base"
	.byte	0xa
	.value	0x4c4
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"pure_virtuals"
	.byte	0xa
	.value	0x4c5
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"friend_classes"
	.byte	0xa
	.value	0x4c6
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"methods"
	.byte	0xa
	.value	0x4c7
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"key_method"
	.byte	0xa
	.value	0x4c8
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"decl_list"
	.byte	0xa
	.value	0x4c9
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1d
	.long	.LASF43
	.byte	0xa
	.value	0x4ca
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x1d
	.long	.LASF44
	.byte	0xa
	.value	0x4cb
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"copy_constructor"
	.byte	0xa
	.value	0x4cf
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0xc
	.long	0x682a
	.string	"lang_type_ptrmem"
	.byte	0x8
	.byte	0xa
	.value	0x4d4
	.uleb128 0xd
	.string	"h"
	.byte	0xa
	.value	0x4d5
	.long	0x6113
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"record"
	.byte	0xa
	.value	0x4d6
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x21
	.long	0x6863
	.string	"lang_type_u"
	.byte	0x4c
	.byte	0xa
	.value	0x4dc
	.uleb128 0x9
	.string	"h"
	.byte	0xa
	.value	0x4dd
	.long	0x6113
	.uleb128 0x9
	.string	"c"
	.byte	0xa
	.value	0x4de
	.long	0x6232
	.uleb128 0x9
	.string	"ptrmem"
	.byte	0xa
	.value	0x4df
	.long	0x67f0
	.byte	0x0
	.uleb128 0x21
	.long	0x6891
	.string	"lang_decl_u"
	.byte	0x4
	.byte	0xa
	.value	0x722
	.uleb128 0x8
	.long	.LASF43
	.byte	0xa
	.value	0x725
	.long	0x1e3
	.uleb128 0x8
	.long	.LASF45
	.byte	0xa
	.value	0x728
	.long	0x5d78
	.byte	0x0
	.uleb128 0x21
	.long	0x68e2
	.string	"lang_decl_u2"
	.byte	0x4
	.byte	0xa
	.value	0x72b
	.uleb128 0x9
	.string	"access"
	.byte	0xa
	.value	0x72d
	.long	0x1e3
	.uleb128 0x9
	.string	"discriminator"
	.byte	0xa
	.value	0x730
	.long	0x2e0
	.uleb128 0x9
	.string	"vcall_offset"
	.byte	0xa
	.value	0x734
	.long	0x1e3
	.byte	0x0
	.uleb128 0xc
	.long	0x6bbe
	.string	"lang_decl_flags"
	.byte	0x10
	.byte	0xa
	.value	0x703
	.uleb128 0xd
	.string	"base"
	.byte	0xa
	.value	0x704
	.long	0x5d20
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.long	.LASF30
	.byte	0xa
	.value	0x706
	.long	0x60d9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"operator_attr"
	.byte	0xa
	.value	0x708
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"constructor_attr"
	.byte	0xa
	.value	0x709
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"destructor_attr"
	.byte	0xa
	.value	0x70a
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"friend_attr"
	.byte	0xa
	.value	0x70b
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"static_function"
	.byte	0xa
	.value	0x70c
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"pure_virtual"
	.byte	0xa
	.value	0x70d
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_in_charge_parm_p"
	.byte	0xa
	.value	0x70e
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_vtt_parm_p"
	.byte	0xa
	.value	0x70f
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"deferred"
	.byte	0xa
	.value	0x711
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.long	.LASF41
	.byte	0xa
	.value	0x712
	.long	0x3b9
	.byte	0x4
	.byte	0x2
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"nonconverting"
	.byte	0xa
	.value	0x713
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"not_really_extern"
	.byte	0xa
	.value	0x714
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"needs_final_overrider"
	.byte	0xa
	.value	0x715
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"initialized_in_class"
	.byte	0xa
	.value	0x716
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"assignment_operator_p"
	.byte	0xa
	.value	0x717
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"global_ctor_p"
	.byte	0xa
	.value	0x719
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"global_dtor_p"
	.byte	0xa
	.value	0x71a
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"anticipated_p"
	.byte	0xa
	.value	0x71b
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"template_conv_p"
	.byte	0xa
	.value	0x71c
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"u1sel"
	.byte	0xa
	.value	0x71d
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"u2sel"
	.byte	0xa
	.value	0x71e
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"can_be_full"
	.byte	0xa
	.value	0x71f
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"unused"
	.byte	0xa
	.value	0x720
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"u"
	.byte	0xa
	.value	0x729
	.long	0x6863
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"u2"
	.byte	0xa
	.value	0x735
	.long	0x6891
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x21
	.long	0x6c27
	.string	"lang_decl_u3"
	.byte	0x4
	.byte	0xa
	.value	0x75c
	.uleb128 0x9
	.string	"sorted_fields"
	.byte	0xa
	.value	0x75d
	.long	0x1e3
	.uleb128 0x9
	.string	"pending_inline_info"
	.byte	0xa
	.value	0x75e
	.long	0x60d3
	.uleb128 0x9
	.string	"saved_language_function"
	.byte	0xa
	.value	0x760
	.long	0x55d7
	.byte	0x0
	.uleb128 0xc
	.long	0x6d02
	.string	"full_lang_decl"
	.byte	0x24
	.byte	0xa
	.value	0x73f
	.uleb128 0x1d
	.long	.LASF44
	.byte	0xa
	.value	0x740
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF27
	.byte	0xa
	.value	0x745
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"cloned_function"
	.byte	0xa
	.value	0x748
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"delta"
	.byte	0xa
	.value	0x74c
	.long	0x455
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"named_return_object"
	.byte	0xa
	.value	0x751
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"operator_code"
	.byte	0xa
	.value	0x756
	.long	0x961
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1f
	.string	"u3sel"
	.byte	0xa
	.value	0x758
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1f
	.string	"pending_inline_p"
	.byte	0xa
	.value	0x759
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"u"
	.byte	0xa
	.value	0x761
	.long	0x6bbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x21
	.long	0x6d23
	.string	"lang_decl_u4"
	.byte	0x24
	.byte	0xa
	.value	0x73d
	.uleb128 0x9
	.string	"f"
	.byte	0xa
	.value	0x762
	.long	0x6c27
	.byte	0x0
	.uleb128 0x24
	.long	0x6dcc
	.long	.LASF46
	.byte	0x4
	.byte	0xa
	.value	0xc2b
	.uleb128 0x18
	.string	"tsk_none"
	.sleb128 0
	.uleb128 0x18
	.string	"tsk_invalid_member_spec"
	.sleb128 1
	.uleb128 0x18
	.string	"tsk_invalid_expl_inst"
	.sleb128 2
	.uleb128 0x18
	.string	"tsk_excessive_parms"
	.sleb128 3
	.uleb128 0x18
	.string	"tsk_insufficient_parms"
	.sleb128 4
	.uleb128 0x18
	.string	"tsk_template"
	.sleb128 5
	.uleb128 0x18
	.string	"tsk_expl_spec"
	.sleb128 6
	.uleb128 0x18
	.string	"tsk_expl_inst"
	.sleb128 7
	.byte	0x0
	.uleb128 0x29
	.long	.LASF46
	.byte	0xa
	.value	0xc3a
	.long	0x6d23
	.uleb128 0x24
	.long	0x6e62
	.long	.LASF47
	.byte	0x4
	.byte	0xa
	.value	0xc71
	.uleb128 0x18
	.string	"tf_none"
	.sleb128 0
	.uleb128 0x18
	.string	"tf_error"
	.sleb128 1
	.uleb128 0x18
	.string	"tf_warning"
	.sleb128 2
	.uleb128 0x18
	.string	"tf_no_attributes"
	.sleb128 4
	.uleb128 0x18
	.string	"tf_ignore_bad_quals"
	.sleb128 8
	.uleb128 0x18
	.string	"tf_keep_type_decl"
	.sleb128 16
	.uleb128 0x18
	.string	"tf_ptrmem_ok"
	.sleb128 32
	.uleb128 0x18
	.string	"tf_parsing"
	.sleb128 64
	.byte	0x0
	.uleb128 0x29
	.long	.LASF47
	.byte	0xa
	.value	0xc7e
	.long	0x6dd8
	.uleb128 0x24
	.long	0x6eb6
	.long	.LASF48
	.byte	0x4
	.byte	0xa
	.value	0xcb7
	.uleb128 0x18
	.string	"DEDUCE_CALL"
	.sleb128 0
	.uleb128 0x18
	.string	"DEDUCE_CONV"
	.sleb128 1
	.uleb128 0x18
	.string	"DEDUCE_EXACT"
	.sleb128 2
	.uleb128 0x18
	.string	"DEDUCE_ORDER"
	.sleb128 3
	.byte	0x0
	.uleb128 0x29
	.long	.LASF48
	.byte	0xa
	.value	0xcbc
	.long	0x6e6e
	.uleb128 0x3
	.byte	0x4
	.long	0x6ec8
	.uleb128 0x15
	.long	0x6edd
	.byte	0x1
	.long	0x2e0
	.uleb128 0x14
	.long	0x1e3
	.uleb128 0x14
	.long	0x48c
	.byte	0x0
	.uleb128 0x17
	.long	0x76ac
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
	.byte	0x29
	.uleb128 0x18
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x18
	.string	"NIL"
	.sleb128 1
	.uleb128 0x18
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x18
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x18
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x18
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x18
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x18
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x18
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x18
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x18
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x18
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x18
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x18
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x18
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x18
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x18
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x18
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x18
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x18
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x18
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x18
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x18
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x18
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x18
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x18
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x18
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x18
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x18
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x18
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x18
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x18
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x18
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x18
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x18
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x18
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x18
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x18
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x18
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x18
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x18
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x18
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x18
	.string	"INSN"
	.sleb128 42
	.uleb128 0x18
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x18
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x18
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x18
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x18
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x18
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x18
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x18
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x18
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x18
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x18
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x18
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x18
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x18
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x18
	.string	"SET"
	.sleb128 57
	.uleb128 0x18
	.string	"USE"
	.sleb128 58
	.uleb128 0x18
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x18
	.string	"CALL"
	.sleb128 60
	.uleb128 0x18
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x18
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x18
	.string	"RESX"
	.sleb128 63
	.uleb128 0x18
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x18
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x18
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x18
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x18
	.string	"CONST"
	.sleb128 68
	.uleb128 0x18
	.string	"PC"
	.sleb128 69
	.uleb128 0x18
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x18
	.string	"REG"
	.sleb128 71
	.uleb128 0x18
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x18
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x18
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x18
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x18
	.string	"MEM"
	.sleb128 76
	.uleb128 0x18
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x18
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x18
	.string	"CC0"
	.sleb128 79
	.uleb128 0x18
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x18
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x18
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x18
	.string	"COND"
	.sleb128 83
	.uleb128 0x18
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x18
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x18
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x18
	.string	"NEG"
	.sleb128 87
	.uleb128 0x18
	.string	"MULT"
	.sleb128 88
	.uleb128 0x18
	.string	"DIV"
	.sleb128 89
	.uleb128 0x18
	.string	"MOD"
	.sleb128 90
	.uleb128 0x18
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x18
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x18
	.string	"AND"
	.sleb128 93
	.uleb128 0x18
	.string	"IOR"
	.sleb128 94
	.uleb128 0x18
	.string	"XOR"
	.sleb128 95
	.uleb128 0x18
	.string	"NOT"
	.sleb128 96
	.uleb128 0x18
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x18
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x18
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x18
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x18
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x18
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x18
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x18
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x18
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x18
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x18
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x18
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x18
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x18
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x18
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x18
	.string	"NE"
	.sleb128 112
	.uleb128 0x18
	.string	"EQ"
	.sleb128 113
	.uleb128 0x18
	.string	"GE"
	.sleb128 114
	.uleb128 0x18
	.string	"GT"
	.sleb128 115
	.uleb128 0x18
	.string	"LE"
	.sleb128 116
	.uleb128 0x18
	.string	"LT"
	.sleb128 117
	.uleb128 0x18
	.string	"GEU"
	.sleb128 118
	.uleb128 0x18
	.string	"GTU"
	.sleb128 119
	.uleb128 0x18
	.string	"LEU"
	.sleb128 120
	.uleb128 0x18
	.string	"LTU"
	.sleb128 121
	.uleb128 0x18
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x18
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x18
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x18
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x18
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x18
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x18
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x18
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x18
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x18
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x18
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x18
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x18
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x18
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x18
	.string	"FIX"
	.sleb128 136
	.uleb128 0x18
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x18
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x18
	.string	"ABS"
	.sleb128 139
	.uleb128 0x18
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x18
	.string	"FFS"
	.sleb128 141
	.uleb128 0x18
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x18
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x18
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x18
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x18
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x18
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x18
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x18
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x18
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x18
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x18
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x18
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x18
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x18
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x18
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x18
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x18
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x18
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x18
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x18
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x18
	.string	"PHI"
	.sleb128 162
	.uleb128 0x18
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x2a
	.long	0x7786
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x49
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x76ac
	.uleb128 0x1e
	.long	0x77f8
	.long	.LASF49
	.byte	0x18
	.byte	0x4
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x4
	.byte	0x63
	.long	0x455
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x4
	.byte	0x64
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.long	.LASF4
	.byte	0x4
	.byte	0x65
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x4
	.byte	0x66
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x19
	.long	.LASF25
	.byte	0x4
	.byte	0x67
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x26
	.long	.LASF49
	.byte	0x4
	.byte	0x68
	.long	0x77a1
	.uleb128 0x7
	.long	0x78d5
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x6d
	.uleb128 0x25
	.string	"rtwint"
	.byte	0x4
	.byte	0x6e
	.long	0x455
	.uleb128 0x25
	.string	"rtint"
	.byte	0x4
	.byte	0x6f
	.long	0x2e0
	.uleb128 0x25
	.string	"rtuint"
	.byte	0x4
	.byte	0x70
	.long	0x3b9
	.uleb128 0x25
	.string	"rtstr"
	.byte	0x4
	.byte	0x71
	.long	0x2cd
	.uleb128 0x25
	.string	"rtx"
	.byte	0x4
	.byte	0x72
	.long	0x9a
	.uleb128 0x25
	.string	"rtvec"
	.byte	0x4
	.byte	0x73
	.long	0x19b
	.uleb128 0x25
	.string	"rttype"
	.byte	0x4
	.byte	0x74
	.long	0x6d4
	.uleb128 0x25
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x75
	.long	0x7786
	.uleb128 0x25
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x76
	.long	0x78e9
	.uleb128 0x25
	.string	"rtbit"
	.byte	0x4
	.byte	0x77
	.long	0x5b28
	.uleb128 0x25
	.string	"rttree"
	.byte	0x4
	.byte	0x78
	.long	0x1e3
	.uleb128 0x25
	.string	"bb"
	.byte	0x4
	.byte	0x79
	.long	0x5b85
	.uleb128 0x25
	.string	"rtmem"
	.byte	0x4
	.byte	0x7a
	.long	0x78ef
	.byte	0x0
	.uleb128 0x1a
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x78d5
	.uleb128 0x3
	.byte	0x4
	.long	0x77f8
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x7c
	.long	0x7803
	.uleb128 0xf
	.long	0x7914
	.long	0x78f5
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x7924
	.long	0x9a
	.uleb128 0x10
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x7976
	.string	"ggc_root_tab"
	.byte	0x10
	.byte	0x15
	.byte	0x32
	.uleb128 0x6
	.string	"base"
	.byte	0x15
	.byte	0x33
	.long	0x48c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"nelt"
	.byte	0x15
	.byte	0x34
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"stride"
	.byte	0x15
	.byte	0x35
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"cb"
	.byte	0x15
	.byte	0x36
	.long	0x4bb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xb
	.string	"float"
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.string	"tree_fn_t"
	.byte	0x1
	.byte	0x35
	.long	0x6ec2
	.uleb128 0x2b
	.long	0x7a0a
	.string	"push_access_scope_real"
	.byte	0x1
	.byte	0xc1
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.byte	0xc0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF50
	.byte	0x1
	.byte	0xc0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.byte	0xc0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2f
	.long	.LASF51
	.byte	0x1
	.byte	0xd3
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF52
	.byte	0x1
	.byte	0xd5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x7a3d
	.string	"push_access_scope"
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.byte	0xf0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2b
	.long	0x7a6f
	.string	"pop_access_scope"
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.byte	0xfa
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x30
	.long	0x7ace
	.byte	0x1
	.string	"finish_member_template_decl"
	.byte	0x1
	.value	0x110
	.byte	0x1
	.long	0x1e3
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x10f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0x11e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x7b43
	.string	"template_class_depth_real"
	.byte	0x1
	.value	0x14d
	.byte	0x1
	.long	0x2e0
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x14b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"count_specializations"
	.byte	0x1
	.value	0x14c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"depth"
	.byte	0x1
	.value	0x14e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x7b82
	.byte	0x1
	.string	"template_class_depth"
	.byte	0x1
	.value	0x173
	.byte	0x1
	.long	0x2e0
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x172
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x33
	.long	0x7bc7
	.string	"inline_needs_template_parms"
	.byte	0x1
	.value	0x17d
	.byte	0x1
	.long	0x2e0
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x17c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x36
	.long	0x7c82
	.string	"push_inline_template_parms_recursive"
	.byte	0x1
	.value	0x18e
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x31
	.long	.LASF54
	.byte	0x1
	.value	0x18c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF55
	.byte	0x1
	.value	0x18d
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF56
	.byte	0x1
	.value	0x18f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x190
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	0x7c71
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x32
	.long	.LASF57
	.byte	0x1
	.value	0x19e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x1ae
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd6ec
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16123
	.byte	0x0
	.uleb128 0x39
	.long	0x7ced
	.byte	0x1
	.string	"maybe_begin_member_template_processing"
	.byte	0x1
	.value	0x1c3
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x1c2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF56
	.byte	0x1
	.value	0x1c4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF55
	.byte	0x1
	.value	0x1c5
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x7d36
	.byte	0x1
	.string	"maybe_end_member_template_processing"
	.byte	0x1
	.value	0x1e3
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x1e4
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x7d71
	.byte	0x1
	.string	"is_member_template"
	.byte	0x1
	.value	0x206
	.byte	0x1
	.long	0x2e0
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0x205
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x33
	.long	0x7dfe
	.string	"add_to_template_args"
	.byte	0x1
	.value	0x23a
	.byte	0x1
	.long	0x1e3
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x238
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF59
	.byte	0x1
	.value	0x239
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF60
	.byte	0x1
	.value	0x23b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"extra_depth"
	.byte	0x1
	.value	0x23c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x23d
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"j"
	.byte	0x1
	.value	0x23e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	0x7e71
	.string	"add_outermost_template_args"
	.byte	0x1
	.value	0x257
	.byte	0x1
	.long	0x1e3
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x255
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF59
	.byte	0x1
	.value	0x256
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF60
	.byte	0x1
	.value	0x258
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.long	.LASF58
	.long	0xd6d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16350
	.byte	0x0
	.uleb128 0x30
	.long	0x7f08
	.byte	0x1
	.string	"get_innermost_template_args"
	.byte	0x1
	.value	0x275
	.byte	0x1
	.long	0x1e3
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x273
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"n"
	.byte	0x1
	.value	0x274
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF60
	.byte	0x1
	.value	0x276
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"extra_levels"
	.byte	0x1
	.value	0x277
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x278
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.long	.LASF58
	.long	0xd6d2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16449
	.byte	0x0
	.uleb128 0x3a
	.byte	0x1
	.string	"begin_template_parm_list"
	.byte	0x1
	.value	0x295
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x36
	.long	0x7f75
	.string	"check_specialization_scope"
	.byte	0x1
	.value	0x2af
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x35
	.string	"scope"
	.byte	0x1
	.value	0x2b0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3a
	.byte	0x1
	.string	"begin_specialization"
	.byte	0x1
	.value	0x2cf
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x3a
	.byte	0x1
	.string	"end_specialization"
	.byte	0x1
	.value	0x2da
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x3a
	.byte	0x1
	.string	"reset_specialization"
	.byte	0x1
	.value	0x2e4
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x36
	.long	0x8022
	.string	"note_template_header"
	.byte	0x1
	.value	0x2ef
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x31
	.long	.LASF61
	.byte	0x1
	.value	0x2ee
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x3a
	.byte	0x1
	.string	"begin_explicit_instantiation"
	.byte	0x1
	.value	0x2f8
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x39
	.long	0x8093
	.byte	0x1
	.string	"end_explicit_instantiation"
	.byte	0x1
	.value	0x2ff
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x38
	.long	.LASF58
	.long	0xd6bd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16565
	.byte	0x0
	.uleb128 0x39
	.long	0x8104
	.byte	0x1
	.string	"maybe_process_partial_specialization"
	.byte	0x1
	.value	0x30a
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x309
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF27
	.byte	0x1
	.value	0x30c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x345
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x8171
	.string	"retrieve_specialization"
	.byte	0x1
	.value	0x373
	.byte	0x1
	.long	0x1e3
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x31
	.long	.LASF53
	.byte	0x1
	.value	0x371
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x372
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"s"
	.byte	0x1
	.value	0x374
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.long	.LASF58
	.long	0xd6b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16734
	.byte	0x0
	.uleb128 0x33
	.long	0x81b8
	.string	"retrieve_local_specialization"
	.byte	0x1
	.value	0x38c
	.byte	0x1
	.long	0x1e3
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x31
	.long	.LASF53
	.byte	0x1
	.value	0x38b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x30
	.long	0x8223
	.byte	0x1
	.string	"is_specialization_of"
	.byte	0x1
	.value	0x396
	.byte	0x1
	.long	0x2e0
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x394
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF53
	.byte	0x1
	.value	0x395
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x397
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.long	.LASF58
	.long	0xd6b3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16786
	.byte	0x0
	.uleb128 0x33
	.long	0x82bb
	.string	"register_specialization"
	.byte	0x1
	.value	0x3b9
	.byte	0x1
	.long	0x1e3
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x31
	.long	.LASF52
	.byte	0x1
	.value	0x3b6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF53
	.byte	0x1
	.value	0x3b7
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x3b8
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.string	"s"
	.byte	0x1
	.value	0x3ba
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	0x82aa
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x3d7
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd6ae
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16833
	.byte	0x0
	.uleb128 0x33
	.long	0x832e
	.string	"reregister_specialization"
	.byte	0x1
	.value	0x422
	.byte	0x1
	.long	0x2e0
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x31
	.long	.LASF52
	.byte	0x1
	.value	0x421
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF53
	.byte	0x1
	.value	0x421
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"new_spec"
	.byte	0x1
	.value	0x421
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.string	"s"
	.byte	0x1
	.value	0x423
	.long	0x4fab
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x36
	.long	0x8390
	.string	"register_local_specialization"
	.byte	0x1
	.value	0x43b
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x31
	.long	.LASF52
	.byte	0x1
	.value	0x439
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF53
	.byte	0x1
	.value	0x43a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"slot"
	.byte	0x1
	.value	0x43c
	.long	0x4b5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x83fb
	.byte	0x1
	.string	"print_candidates"
	.byte	0x1
	.value	0x447
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x34
	.string	"fns"
	.byte	0x1
	.value	0x446
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x448
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"str"
	.byte	0x1
	.value	0x44a
	.long	0x2cd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x35
	.string	"f"
	.byte	0x1
	.value	0x44e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x853d
	.string	"determine_specialization"
	.byte	0x1
	.value	0x46c
	.byte	0x1
	.long	0x1e3
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x31
	.long	.LASF62
	.byte	0x1
	.value	0x468
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x469
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"targs_out"
	.byte	0x1
	.value	0x46a
	.long	0x4fab
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"need_member_template"
	.byte	0x1
	.value	0x46b
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.string	"fns"
	.byte	0x1
	.value	0x46d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.long	.LASF63
	.byte	0x1
	.value	0x46e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	.LASF64
	.byte	0x1
	.value	0x46f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.long	.LASF65
	.byte	0x1
	.value	0x470
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"templates"
	.byte	0x1
	.value	0x471
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	0x8523
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x48a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	0x8509
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x32
	.long	.LASF66
	.byte	0x1
	.value	0x48e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x32
	.long	.LASF66
	.byte	0x1
	.value	0x4c0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0x505
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x85a9
	.string	"copy_default_args_to_explicit_spec_1"
	.byte	0x1
	.value	0x53e
	.byte	0x1
	.long	0x1e3
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x31
	.long	.LASF67
	.byte	0x1
	.value	0x53c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF68
	.byte	0x1
	.value	0x53d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF69
	.byte	0x1
	.value	0x53f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0x8698
	.string	"copy_default_args_to_explicit_spec"
	.byte	0x1
	.value	0x560
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x55f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0x561
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.long	.LASF67
	.byte	0x1
	.value	0x562
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	.LASF68
	.byte	0x1
	.value	0x563
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.long	.LASF69
	.byte	0x1
	.value	0x564
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"old_type"
	.byte	0x1
	.value	0x565
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0x566
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x567
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"object_type"
	.byte	0x1
	.value	0x568
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"in_charge"
	.byte	0x1
	.value	0x569
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"vtt"
	.byte	0x1
	.value	0x56a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x894c
	.byte	0x1
	.string	"check_explicit_specialization"
	.byte	0x1
	.value	0x5d9
	.byte	0x1
	.long	0x1e3
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x34
	.string	"declarator"
	.byte	0x1
	.value	0x5d5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x5d6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"template_count"
	.byte	0x1
	.value	0x5d7
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"flags"
	.byte	0x1
	.value	0x5d8
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.string	"have_def"
	.byte	0x1
	.value	0x5da
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x32
	.long	.LASF71
	.byte	0x1
	.value	0x5db
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x32
	.long	.LASF61
	.byte	0x1
	.value	0x5dc
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x35
	.string	"explicit_instantiation"
	.byte	0x1
	.value	0x5dd
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x35
	.string	"member_specialization"
	.byte	0x1
	.value	0x5de
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x35
	.string	"ctype"
	.byte	0x1
	.value	0x5df
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x35
	.string	"dname"
	.byte	0x1
	.value	0x5e0
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.string	"tsk"
	.byte	0x1
	.value	0x5e1
	.long	0x6dcc
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x37
	.long	0x87ea
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x65c
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x37
	.long	0x893b
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0x66a
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.long	.LASF63
	.byte	0x1
	.value	0x66b
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x37
	.long	0x8834
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x35
	.string	"fns"
	.byte	0x1
	.value	0x670
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x37
	.long	0x88cd
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x32
	.long	.LASF26
	.byte	0x1
	.value	0x6a9
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.string	"fns"
	.byte	0x1
	.value	0x6aa
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.string	"idx"
	.byte	0x1
	.value	0x6ab
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x37
	.long	0x8896
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x35
	.string	"is_constructor"
	.byte	0x1
	.value	0x6af
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x35
	.string	"methods"
	.byte	0x1
	.value	0x6cb
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x35
	.string	"ovl"
	.byte	0x1
	.value	0x6d9
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x32
	.long	.LASF72
	.byte	0x1
	.value	0x702
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x32
	.long	.LASF73
	.byte	0x1
	.value	0x709
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF74
	.byte	0x1
	.value	0x70a
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x713
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"new_targs"
	.byte	0x1
	.value	0x714
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd6a9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17250
	.byte	0x0
	.uleb128 0x39
	.long	0x89af
	.byte	0x1
	.string	"maybe_check_template_type"
	.byte	0x1
	.value	0x75c
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x75b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x35
	.string	"context_depth"
	.byte	0x1
	.value	0x761
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x8a91
	.byte	0x1
	.string	"comp_template_parms"
	.byte	0x1
	.value	0x789
	.byte	0x1
	.long	0x2e0
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x34
	.string	"parms1"
	.byte	0x1
	.value	0x787
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"parms2"
	.byte	0x1
	.value	0x788
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"p1"
	.byte	0x1
	.value	0x78a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"p2"
	.byte	0x1
	.value	0x78b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	0x8a80
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x35
	.string	"t1"
	.byte	0x1
	.value	0x794
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"t2"
	.byte	0x1
	.value	0x795
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x796
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x35
	.string	"parm1"
	.byte	0x1
	.value	0x7a0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"parm2"
	.byte	0x1
	.value	0x7a1
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd6a4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17571
	.byte	0x0
	.uleb128 0x39
	.long	0x8ae0
	.byte	0x1
	.string	"check_template_shadow"
	.byte	0x1
	.value	0x7bd
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x7bc
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"olddecl"
	.byte	0x1
	.value	0x7be
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	0x8b75
	.string	"build_template_parm_index"
	.byte	0x1
	.value	0x7eb
	.byte	0x1
	.long	0x1e3
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x34
	.string	"index"
	.byte	0x1
	.value	0x7e6
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF45
	.byte	0x1
	.value	0x7e7
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"orig_level"
	.byte	0x1
	.value	0x7e8
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x7e9
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x7ea
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x7ec
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	0x8bff
	.string	"reduce_template_parm_level"
	.byte	0x1
	.value	0x800
	.byte	0x1
	.long	0x1e3
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x34
	.string	"index"
	.byte	0x1
	.value	0x7fd
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x7fe
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF55
	.byte	0x1
	.value	0x7ff
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x805
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x809
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x8ce8
	.byte	0x1
	.string	"process_template_parm"
	.byte	0x1
	.value	0x821
	.byte	0x1
	.long	0x1e3
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x34
	.string	"list"
	.byte	0x1
	.value	0x820
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"next"
	.byte	0x1
	.value	0x820
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF57
	.byte	0x1
	.value	0x822
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x823
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"defval"
	.byte	0x1
	.value	0x824
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"is_type"
	.byte	0x1
	.value	0x825
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"idx"
	.byte	0x1
	.value	0x825
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x37
	.long	0x8cbc
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.value	0x82f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x37
	.long	0x8cd7
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x854
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd69f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17743
	.byte	0x0
	.uleb128 0x30
	.long	0x8d71
	.byte	0x1
	.string	"end_template_parm_list"
	.byte	0x1
	.value	0x87e
	.byte	0x1
	.long	0x1e3
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x31
	.long	.LASF56
	.byte	0x1
	.value	0x87d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF75
	.byte	0x1
	.value	0x87f
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF57
	.byte	0x1
	.value	0x880
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"next"
	.byte	0x1
	.value	0x880
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"saved_parmlist"
	.byte	0x1
	.value	0x881
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x3a
	.byte	0x1
	.string	"end_template_decl"
	.byte	0x1
	.value	0x897
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x30
	.long	0x8e3e
	.byte	0x1
	.string	"current_template_args"
	.byte	0x1
	.value	0x8a9
	.byte	0x1
	.long	0x1e3
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x35
	.string	"header"
	.byte	0x1
	.value	0x8aa
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF50
	.byte	0x1
	.value	0x8ab
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF15
	.byte	0x1
	.value	0x8ac
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"l"
	.byte	0x1
	.value	0x8ad
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x35
	.string	"a"
	.byte	0x1
	.value	0x8b7
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x8b8
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x8bd
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x8e99
	.string	"build_template_decl"
	.byte	0x1
	.value	0x8df
	.byte	0x1
	.long	0x1e3
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x8dd
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF56
	.byte	0x1
	.value	0x8de
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0x8e0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xc
	.long	0x8f0e
	.string	"template_parm_data"
	.byte	0x10
	.byte	0x1
	.value	0x8f3
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.value	0x8f6
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"current_arg"
	.byte	0x1
	.value	0x8fa
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.long	.LASF56
	.byte	0x1
	.value	0x8ff
	.long	0x4fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"arg_uses_template_parms"
	.byte	0x1
	.value	0x904
	.long	0x4fd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x33
	.long	0x8f84
	.string	"mark_template_parm"
	.byte	0x1
	.value	0x911
	.byte	0x1
	.long	0x2e0
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0x90f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF36
	.byte	0x1
	.value	0x910
	.long	0x48c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF45
	.byte	0x1
	.value	0x912
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"idx"
	.byte	0x1
	.value	0x913
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x35
	.string	"tpd"
	.byte	0x1
	.value	0x914
	.long	0x8f84
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8e99
	.uleb128 0x33
	.long	0x910a
	.string	"process_partial_specialization"
	.byte	0x1
	.value	0x931
	.byte	0x1
	.long	0x1e3
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x930
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x32
	.long	.LASF2
	.byte	0x1
	.value	0x932
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.string	"maintmpl"
	.byte	0x1
	.value	0x933
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x35
	.string	"specargs"
	.byte	0x1
	.value	0x934
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.long	.LASF76
	.byte	0x1
	.value	0x935
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x32
	.long	.LASF77
	.byte	0x1
	.value	0x936
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.string	"main_inner_parms"
	.byte	0x1
	.value	0x937
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.long	.LASF78
	.byte	0x1
	.value	0x938
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	.LASF79
	.byte	0x1
	.value	0x939
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x93a
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"did_error_intro"
	.byte	0x1
	.value	0x93b
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"tpd"
	.byte	0x1
	.value	0x93c
	.long	0x8e99
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x35
	.string	"tpd2"
	.byte	0x1
	.value	0x93d
	.long	0x8e99
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x37
	.long	0x90f9
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x35
	.string	"arg"
	.byte	0x1
	.value	0x991
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x32
	.long	.LASF2
	.byte	0x1
	.value	0x9a1
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x35
	.string	"j"
	.byte	0x1
	.value	0x9c2
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd69a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18011
	.byte	0x0
	.uleb128 0x36
	.long	0x9260
	.string	"check_default_tmpl_args"
	.byte	0x1
	.value	0x9e7
	.byte	0x1
	.long	.LFB61
	.long	.LFE61
	.long	.LLST46
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x9e3
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF56
	.byte	0x1
	.value	0x9e4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"is_primary"
	.byte	0x1
	.value	0x9e5
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF80
	.byte	0x1
	.value	0x9e6
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.string	"msg"
	.byte	0x1
	.value	0x9e8
	.long	0x2cd
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.string	"last_level_to_check"
	.byte	0x1
	.value	0x9e9
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.string	"parm_level"
	.byte	0x1
	.value	0x9ea
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x37
	.long	0x922a
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x32
	.long	.LASF77
	.byte	0x1
	.value	0xa13
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	.LASF79
	.byte	0x1
	.value	0xa14
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.string	"seen_def_arg_p"
	.byte	0x1
	.value	0xa15
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0xa16
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x32
	.long	.LASF57
	.byte	0x1
	.value	0xa1a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x32
	.long	.LASF77
	.byte	0x1
	.value	0xa55
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0xa56
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF79
	.byte	0x1
	.value	0xa57
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x92d6
	.string	"template_parm_this_level_p"
	.byte	0x1
	.value	0xa78
	.byte	0x1
	.long	0x2e0
	.long	.LFB62
	.long	.LFE62
	.long	.LLST47
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0xa76
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF36
	.byte	0x1
	.value	0xa77
	.long	0x48c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"this_level"
	.byte	0x1
	.value	0xa79
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x32
	.long	.LASF45
	.byte	0x1
	.value	0xa7a
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x30
	.long	0x9432
	.byte	0x1
	.string	"push_template_decl_real"
	.byte	0x1
	.value	0xa8e
	.byte	0x1
	.long	0x1e3
	.long	.LFB63
	.long	.LFE63
	.long	.LLST48
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0xa8c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF71
	.byte	0x1
	.value	0xa8d
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0xa8f
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.long	.LASF50
	.byte	0x1
	.value	0xa90
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.string	"info"
	.byte	0x1
	.value	0xa91
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.string	"ctx"
	.byte	0x1
	.value	0xa92
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.string	"primary"
	.byte	0x1
	.value	0xa93
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.long	.LASF80
	.byte	0x1
	.value	0xa94
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"new_template_p"
	.byte	0x1
	.value	0xa95
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x37
	.long	0x9415
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x35
	.string	"a"
	.byte	0x1
	.value	0xafc
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0xafc
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"current"
	.byte	0x1
	.value	0xafc
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF56
	.byte	0x1
	.value	0xafc
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0xafd
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x35
	.string	"new_tmpl"
	.byte	0x1
	.value	0xb19
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x35
	.string	"depth"
	.byte	0x1
	.value	0xb65
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x946f
	.byte	0x1
	.string	"push_template_decl"
	.byte	0x1
	.value	0xb86
	.byte	0x1
	.long	0x1e3
	.long	.LFB64
	.long	.LFE64
	.long	.LLST49
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0xb85
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x39
	.long	0x954d
	.byte	0x1
	.string	"redeclare_class_template"
	.byte	0x1
	.value	0xb94
	.byte	0x1
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0xb92
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF56
	.byte	0x1
	.value	0xb93
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0xb95
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"tmpl_parms"
	.byte	0x1
	.value	0xb96
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0xb97
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x35
	.string	"tmpl_parm"
	.byte	0x1
	.value	0xbb5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF57
	.byte	0x1
	.value	0xbb6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"tmpl_default"
	.byte	0x1
	.value	0xbb7
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"parm_default"
	.byte	0x1
	.value	0xbb8
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x96ca
	.string	"convert_nontype_argument"
	.byte	0x1
	.value	0xbe5
	.byte	0x1
	.long	0x1e3
	.long	.LFB66
	.long	.LFE66
	.long	.LLST51
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0xbe3
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"expr"
	.byte	0x1
	.value	0xbe4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"expr_type"
	.byte	0x1
	.value	0xbe6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3b
	.string	"bad_argument"
	.byte	0x1
	.value	0xc24
	.long	.L1201
	.uleb128 0x3b
	.string	"non_constant"
	.byte	0x1
	.value	0xc6f
	.long	.L1260
	.uleb128 0x37
	.long	0x960c
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x35
	.string	"referent"
	.byte	0x1
	.value	0xc18
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.value	0xc19
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x37
	.long	0x9677
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x35
	.string	"type_pointed_to"
	.byte	0x1
	.value	0xc75
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	0x964f
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.value	0xc79
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x35
	.string	"fns"
	.byte	0x1
	.value	0xc92
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0xc93
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x96b9
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x35
	.string	"type_referred_to"
	.byte	0x1
	.value	0xcc7
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0xcd9
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd695
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19027
	.byte	0x0
	.uleb128 0x33
	.long	0x97eb
	.string	"coerce_template_template_parms"
	.byte	0x1
	.value	0xd4b
	.byte	0x1
	.long	0x2e0
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x34
	.string	"parm_parms"
	.byte	0x1
	.value	0xd48
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"arg_parms"
	.byte	0x1
	.value	0xd48
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF81
	.byte	0x1
	.value	0xd49
	.long	0x6e62
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF82
	.byte	0x1
	.value	0xd4a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"outer_args"
	.byte	0x1
	.value	0xd4a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.long	.LASF75
	.byte	0x1
	.value	0xd4c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.long	.LASF78
	.byte	0x1
	.value	0xd4c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0xd4c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF57
	.byte	0x1
	.value	0xd4d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"arg"
	.byte	0x1
	.value	0xd4d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x37
	.long	0x97da
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x32
	.long	.LASF83
	.byte	0x1
	.value	0xd71
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"argparm"
	.byte	0x1
	.value	0xd72
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd690
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19341
	.byte	0x0
	.uleb128 0x33
	.long	0x9959
	.string	"convert_template_argument"
	.byte	0x1
	.value	0xd9b
	.byte	0x1
	.long	0x1e3
	.long	.LFB68
	.long	.LFE68
	.long	.LLST53
	.uleb128 0x31
	.long	.LASF57
	.byte	0x1
	.value	0xd95
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"arg"
	.byte	0x1
	.value	0xd96
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0xd97
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF81
	.byte	0x1
	.value	0xd98
	.long	0x6e62
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0xd99
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.long	.LASF82
	.byte	0x1
	.value	0xd9a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x35
	.string	"val"
	.byte	0x1
	.value	0xd9c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.long	.LASF76
	.byte	0x1
	.value	0xd9d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"is_type"
	.byte	0x1
	.value	0xd9e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.string	"requires_type"
	.byte	0x1
	.value	0xd9e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"is_tmpl_type"
	.byte	0x1
	.value	0xd9e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"requires_tmpl_type"
	.byte	0x1
	.value	0xd9e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	0x9926
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x32
	.long	.LASF83
	.byte	0x1
	.value	0xe00
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"argparm"
	.byte	0x1
	.value	0xe01
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x37
	.long	0x9941
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0xe26
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0xe41
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x9a95
	.string	"coerce_template_parms"
	.byte	0x1
	.value	0xe76
	.byte	0x1
	.long	0x1e3
	.long	.LFB69
	.long	.LFE69
	.long	.LLST54
	.uleb128 0x31
	.long	.LASF56
	.byte	0x1
	.value	0xe72
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0xe72
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF82
	.byte	0x1
	.value	0xe73
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF81
	.byte	0x1
	.value	0xe74
	.long	0x6e62
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"require_all_arguments"
	.byte	0x1
	.value	0xe75
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.long	.LASF75
	.byte	0x1
	.value	0xe77
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	.LASF78
	.byte	0x1
	.value	0xe77
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0xe77
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"lost"
	.byte	0x1
	.value	0xe77
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF76
	.byte	0x1
	.value	0xe78
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF60
	.byte	0x1
	.value	0xe79
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"new_inner_args"
	.byte	0x1
	.value	0xe7a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	0x9a84
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x35
	.string	"arg"
	.byte	0x1
	.value	0xe95
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF57
	.byte	0x1
	.value	0xe96
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd68b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19675
	.byte	0x0
	.uleb128 0x33
	.long	0x9adf
	.string	"template_args_equal"
	.byte	0x1
	.value	0xed2
	.byte	0x1
	.long	0x2e0
	.long	.LFB70
	.long	.LFE70
	.long	.LLST55
	.uleb128 0x34
	.string	"ot"
	.byte	0x1
	.value	0xed1
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"nt"
	.byte	0x1
	.value	0xed1
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x30
	.long	0x9b66
	.byte	0x1
	.string	"comp_template_args"
	.byte	0x1
	.value	0xee7
	.byte	0x1
	.long	0x2e0
	.long	.LFB71
	.long	.LFE71
	.long	.LLST56
	.uleb128 0x34
	.string	"oldargs"
	.byte	0x1
	.value	0xee6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"newargs"
	.byte	0x1
	.value	0xee6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0xee8
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x35
	.string	"nt"
	.byte	0x1
	.value	0xeef
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x35
	.string	"ot"
	.byte	0x1
	.value	0xef0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x9f1a
	.string	"mangle_class_name_for_template"
	.byte	0x1
	.value	0xeff
	.byte	0x1
	.long	0x48e
	.long	.LFB72
	.long	.LFE72
	.long	.LLST57
	.uleb128 0x31
	.long	.LASF26
	.byte	0x1
	.value	0xefd
	.long	0x2cd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF56
	.byte	0x1
	.value	0xefe
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF84
	.byte	0x1
	.value	0xefe
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0xf02
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x32
	.long	.LASF75
	.byte	0x1
	.value	0xf02
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x37
	.long	0x9c19
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0xf07
	.long	0x506c
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x35
	.string	"__obj"
	.byte	0x1
	.value	0xf07
	.long	0x48c
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.byte	0x0
	.uleb128 0x37
	.long	0x9c90
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x35
	.string	"__h"
	.byte	0x1
	.value	0xf08
	.long	0x506c
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x37
	.long	0x9c64
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0xf08
	.long	0x506c
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x32
	.long	.LASF85
	.byte	0x1
	.value	0xf08
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x35
	.string	"__o1"
	.byte	0x1
	.value	0xf08
	.long	0x506c
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x32
	.long	.LASF18
	.byte	0x1
	.value	0xf08
	.long	0x48c
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x9cbe
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0xf0d
	.long	0x506c
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x32
	.long	.LASF85
	.byte	0x1
	.value	0xf0d
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0x0
	.uleb128 0x37
	.long	0x9cdc
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0xf0e
	.long	0x506c
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x0
	.uleb128 0x37
	.long	0x9e4c
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x32
	.long	.LASF57
	.byte	0x1
	.value	0xf14
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x35
	.string	"arg"
	.byte	0x1
	.value	0xf15
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x37
	.long	0x9d27
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0xf18
	.long	0x506c
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x37
	.long	0x9d55
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0xf1c
	.long	0x506c
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x32
	.long	.LASF85
	.byte	0x1
	.value	0xf1c
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.uleb128 0x37
	.long	0x9df7
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x32
	.long	.LASF27
	.byte	0x1
	.value	0xf25
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x37
	.long	0x9da0
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0xf2d
	.long	0x506c
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.long	.LASF85
	.byte	0x1
	.value	0xf2d
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x37
	.long	0x9dce
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0xf2e
	.long	0x506c
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.long	.LASF85
	.byte	0x1
	.value	0xf2e
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0xf30
	.long	0x506c
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.long	.LASF85
	.byte	0x1
	.value	0xf30
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x9e23
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0xf34
	.long	0x506c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.long	.LASF85
	.byte	0x1
	.value	0xf34
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0xf43
	.long	0x506c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	.LASF85
	.byte	0x1
	.value	0xf43
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x9e92
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x35
	.string	"bufp"
	.byte	0x1
	.value	0xf46
	.long	0x48e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF4
	.byte	0x1
	.value	0xf47
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0xf4e
	.long	0x506c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x9eaf
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0xf50
	.long	0x506c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x37
	.long	0x9ecc
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0xf51
	.long	0x506c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x35
	.string	"scratch_obstack"
	.byte	0x1
	.value	0xf00
	.long	0x575
	.byte	0x5
	.byte	0x3
	.long	scratch_obstack.19820
	.uleb128 0x35
	.string	"scratch_firstobj"
	.byte	0x1
	.value	0xf01
	.long	0x48e
	.byte	0x5
	.byte	0x3
	.long	scratch_firstobj.19821
	.uleb128 0x38
	.long	.LASF58
	.long	0xd686
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19836
	.byte	0x0
	.uleb128 0x33
	.long	0x9fb0
	.string	"classtype_mangled_name"
	.byte	0x1
	.value	0xf58
	.byte	0x1
	.long	0x1e3
	.long	.LFB73
	.long	.LFE73
	.long	.LLST58
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0xf57
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0xf5e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x32
	.long	.LASF26
	.byte	0x1
	.value	0xf64
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"mangled_name"
	.byte	0x1
	.value	0xf65
	.long	0x48e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"id"
	.byte	0x1
	.value	0xf69
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xa013
	.string	"add_pending_template"
	.byte	0x1
	.value	0xf75
	.byte	0x1
	.long	.LFB74
	.long	.LFE74
	.long	.LLST59
	.uleb128 0x34
	.string	"d"
	.byte	0x1
	.value	0xf74
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"ti"
	.byte	0x1
	.value	0xf76
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"pt"
	.byte	0x1
	.value	0xf79
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF45
	.byte	0x1
	.value	0xf7a
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0xa084
	.byte	0x1
	.string	"lookup_template_function"
	.byte	0x1
	.value	0xf9d
	.byte	0x1
	.long	0x1e3
	.long	.LFB75
	.long	.LFE75
	.long	.LLST60
	.uleb128 0x34
	.string	"fns"
	.byte	0x1
	.value	0xf9c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF84
	.byte	0x1
	.value	0xf9c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF2
	.byte	0x1
	.value	0xf9e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.long	.LASF58
	.long	0xd681
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20219
	.byte	0x0
	.uleb128 0x33
	.long	0xa0d4
	.string	"maybe_get_template_decl_from_type_decl"
	.byte	0x1
	.value	0xfcb
	.byte	0x1
	.long	0x1e3
	.long	.LFB76
	.long	.LFE76
	.long	.LLST61
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0xfca
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x30
	.long	0xa335
	.byte	0x1
	.string	"lookup_template_class"
	.byte	0x1
	.value	0xfef
	.byte	0x1
	.long	0x1e3
	.long	.LFB77
	.long	.LFE77
	.long	.LLST62
	.uleb128 0x34
	.string	"d1"
	.byte	0x1
	.value	0xfea
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF84
	.byte	0x1
	.value	0xfea
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF82
	.byte	0x1
	.value	0xfeb
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF27
	.byte	0x1
	.value	0xfec
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.long	.LASF86
	.byte	0x1
	.value	0xfed
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.long	.LASF81
	.byte	0x1
	.value	0xfee
	.long	0x6e62
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x32
	.long	.LASF87
	.byte	0x1
	.value	0xff0
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x32
	.long	.LASF54
	.byte	0x1
	.value	0xff0
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0xff1
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x3c
	.long	.LASF88
	.byte	0x1
	.value	0x1010
	.long	.L1731
	.uleb128 0x37
	.long	0xa1b5
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x32
	.long	.LASF2
	.byte	0x1
	.value	0x100f
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.uleb128 0x37
	.long	0xa1e8
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x32
	.long	.LASF57
	.byte	0x1
	.value	0x104d
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x35
	.string	"arglist2"
	.byte	0x1
	.value	0x104e
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x37
	.long	0xa324
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x35
	.string	"template_type"
	.byte	0x1
	.value	0x106f
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x32
	.long	.LASF72
	.byte	0x1
	.value	0x1070
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.long	.LASF88
	.byte	0x1
	.value	0x1071
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x35
	.string	"found"
	.byte	0x1
	.value	0x1072
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0x1073
	.long	0x4fab
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x32
	.long	.LASF73
	.byte	0x1
	.value	0x1074
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.long	.LASF74
	.byte	0x1
	.value	0x1075
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.long	.LASF42
	.byte	0x1
	.value	0x1076
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.long	0xa2da
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x109e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.string	"saved_depth"
	.byte	0x1
	.value	0x109f
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"bound_args"
	.byte	0x1
	.value	0x10a1
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LBB78
	.long	.LBE78
	.uleb128 0x35
	.string	"a"
	.byte	0x1
	.value	0x10a8
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xa2f7
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x35
	.string	"ctx"
	.byte	0x1
	.value	0x10d3
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x35
	.string	"success"
	.byte	0x1
	.value	0x114f
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0x1150
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd66c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20325
	.byte	0x0
	.uleb128 0xc
	.long	0xa37c
	.string	"pair_fn_data"
	.byte	0xc
	.byte	0x1
	.value	0x11a9
	.uleb128 0xd
	.string	"fn"
	.byte	0x1
	.value	0x11aa
	.long	0x797f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF36
	.byte	0x1
	.value	0x11ab
	.long	0x48c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"visited"
	.byte	0x1
	.value	0x11ac
	.long	0x5745
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x33
	.long	0xa445
	.string	"for_each_template_parm_r"
	.byte	0x1
	.value	0x11b6
	.byte	0x1
	.long	0x1e3
	.long	.LFB78
	.long	.LFE78
	.long	.LLST63
	.uleb128 0x34
	.string	"tp"
	.byte	0x1
	.value	0x11b3
	.long	0x4fab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"walk_subtrees"
	.byte	0x1
	.value	0x11b4
	.long	0x4fd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"d"
	.byte	0x1
	.value	0x11b5
	.long	0x48c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x11b7
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"pfd"
	.byte	0x1
	.value	0x11b8
	.long	0xa445
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x11b9
	.long	0x797f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF36
	.byte	0x1
	.value	0x11ba
	.long	0x48c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"slot"
	.byte	0x1
	.value	0x11bb
	.long	0x4b5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x32
	.long	.LASF57
	.byte	0x1
	.value	0x11ef
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xa335
	.uleb128 0x33
	.long	0xa4d7
	.string	"for_each_template_parm"
	.byte	0x1
	.value	0x126c
	.byte	0x1
	.long	0x2e0
	.long	.LFB79
	.long	.LFE79
	.long	.LLST64
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0x1268
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"fn"
	.byte	0x1
	.value	0x1269
	.long	0x797f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF36
	.byte	0x1
	.value	0x126a
	.long	0x48c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"visited"
	.byte	0x1
	.value	0x126b
	.long	0x5745
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.string	"pfd"
	.byte	0x1
	.value	0x126d
	.long	0xa335
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x126e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0xa513
	.byte	0x1
	.string	"uses_template_parms"
	.byte	0x1
	.value	0x128d
	.byte	0x1
	.long	0x2e0
	.long	.LFB80
	.long	.LFE80
	.long	.LLST65
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0x128c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x30
	.long	0xa55b
	.byte	0x1
	.string	"push_tinst_level"
	.byte	0x1
	.value	0x129f
	.byte	0x1
	.long	0x2e0
	.long	.LFB81
	.long	.LFE81
	.long	.LLST66
	.uleb128 0x34
	.string	"d"
	.byte	0x1
	.value	0x129e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"new"
	.byte	0x1
	.value	0x12a0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xa591
	.byte	0x1
	.string	"pop_tinst_level"
	.byte	0x1
	.value	0x12c6
	.byte	0x1
	.long	.LFB82
	.long	.LFE82
	.long	.LLST67
	.uleb128 0x35
	.string	"old"
	.byte	0x1
	.value	0x12c7
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0xa5d6
	.string	"reopen_tinst_level"
	.byte	0x1
	.value	0x12db
	.byte	0x1
	.long	.LFB83
	.long	.LFE83
	.long	.LLST68
	.uleb128 0x31
	.long	.LASF45
	.byte	0x1
	.value	0x12da
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x12dc
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0xa60d
	.byte	0x1
	.string	"tinst_for_decl"
	.byte	0x1
	.value	0x12eb
	.byte	0x1
	.long	0x1e3
	.long	.LFB84
	.long	.LFE84
	.long	.LLST69
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.value	0x12ec
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x33
	.long	0xa80c
	.string	"tsubst_friend_function"
	.byte	0x1
	.value	0x12fd
	.byte	0x1
	.long	0x1e3
	.long	.LFB85
	.long	.LFE85
	.long	.LLST70
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x12fb
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x12fc
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"new_friend"
	.byte	0x1
	.value	0x12fe
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x35
	.string	"line"
	.byte	0x1
	.value	0x12ff
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.string	"file"
	.byte	0x1
	.value	0x1300
	.long	0x2cd
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3b
	.string	"done"
	.byte	0x1
	.value	0x13d2
	.long	.L2051
	.uleb128 0x37
	.long	0xa70b
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x32
	.long	.LASF62
	.byte	0x1
	.value	0x1311
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.long	.LASF84
	.byte	0x1
	.value	0x1311
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x35
	.string	"fns"
	.byte	0x1
	.value	0x1311
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.long	.LASF60
	.byte	0x1
	.value	0x1312
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0x1313
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.string	"ns"
	.byte	0x1
	.value	0x1314
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x37
	.long	0xa7f3
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x35
	.string	"old_decl"
	.byte	0x1
	.value	0x1349
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.string	"new_friend_template_info"
	.byte	0x1
	.value	0x134a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"new_friend_result_template_info"
	.byte	0x1
	.value	0x134b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.string	"ns"
	.byte	0x1
	.value	0x134c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"new_friend_is_defn"
	.byte	0x1
	.value	0x134d
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x13a2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"new_friend_args"
	.byte	0x1
	.value	0x13a3
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LBB85
	.long	.LBE85
	.uleb128 0x32
	.long	.LASF52
	.byte	0x1
	.value	0x13ad
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x13cb
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0xa8a6
	.string	"tsubst_friend_class"
	.byte	0x1
	.value	0x13e2
	.byte	0x1
	.long	0x1e3
	.long	.LFB86
	.long	.LFE86
	.long	.LLST71
	.uleb128 0x34
	.string	"friend_tmpl"
	.byte	0x1
	.value	0x13e0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x13e1
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF89
	.byte	0x1
	.value	0x13e3
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0x13e4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF27
	.byte	0x1
	.value	0x13e5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x32
	.long	.LASF56
	.byte	0x1
	.value	0x1410
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0xa8f5
	.string	"can_complete_type_without_circularity"
	.byte	0x1
	.value	0x143c
	.byte	0x1
	.long	0x2e0
	.long	.LFB87
	.long	.LFE87
	.long	.LLST72
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x143b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x30
	.long	0xab88
	.byte	0x1
	.string	"instantiate_class_template"
	.byte	0x1
	.value	0x144c
	.byte	0x1
	.long	0x1e3
	.long	.LFB88
	.long	.LFE88
	.long	.LLST73
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x144b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF87
	.byte	0x1
	.value	0x144d
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x32
	.long	.LASF50
	.byte	0x1
	.value	0x144d
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x35
	.string	"pattern"
	.byte	0x1
	.value	0x144d
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x144d
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x35
	.string	"member"
	.byte	0x1
	.value	0x144d
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x35
	.string	"typedecl"
	.byte	0x1
	.value	0x144e
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x37
	.long	0xa9c1
	.long	.LBB88
	.long	.LBE88
	.uleb128 0x35
	.string	"str"
	.byte	0x1
	.value	0x1487
	.long	0x2cd
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.uleb128 0x37
	.long	0xa9df
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x32
	.long	.LASF76
	.byte	0x1
	.value	0x14cc
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.uleb128 0x37
	.long	0xaa63
	.long	.LBB90
	.long	.LBE90
	.uleb128 0x35
	.string	"base_list"
	.byte	0x1
	.value	0x1511
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x35
	.string	"pbases"
	.byte	0x1
	.value	0x1512
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x1513
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2e
	.long	.LBB91
	.long	.LBE91
	.uleb128 0x35
	.string	"base"
	.byte	0x1
	.value	0x1519
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.string	"access"
	.byte	0x1
	.value	0x151a
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x35
	.string	"pbase"
	.byte	0x1
	.value	0x151b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xab77
	.long	.LBB92
	.long	.LBE92
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x154d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x37
	.long	0xaabb
	.long	.LBB93
	.long	.LBE93
	.uleb128 0x35
	.string	"tag"
	.byte	0x1
	.value	0x1555
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.long	.LASF26
	.byte	0x1
	.value	0x1556
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.string	"newtag"
	.byte	0x1
	.value	0x1557
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x37
	.long	0xaad6
	.long	.LBB94
	.long	.LBE94
	.uleb128 0x35
	.string	"r"
	.byte	0x1
	.value	0x1577
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x37
	.long	0xab2a
	.long	.LBB95
	.long	.LBE95
	.uleb128 0x35
	.string	"r"
	.byte	0x1
	.value	0x1582
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.long	0xab0e
	.long	.LBB96
	.long	.LBE96
	.uleb128 0x35
	.string	"init"
	.byte	0x1
	.value	0x158d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB97
	.long	.LBE97
	.uleb128 0x35
	.string	"rtype"
	.byte	0x1
	.value	0x15a2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB98
	.long	.LBE98
	.uleb128 0x32
	.long	.LASF89
	.byte	0x1
	.value	0x15c1
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"new_friend_type"
	.byte	0x1
	.value	0x15c2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LBB99
	.long	.LBE99
	.uleb128 0x35
	.string	"ns"
	.byte	0x1
	.value	0x15cb
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd667
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.21521
	.byte	0x0
	.uleb128 0x33
	.long	0xabc6
	.string	"list_eq"
	.byte	0x1
	.value	0x1612
	.byte	0x1
	.long	0x2e0
	.long	.LFB89
	.long	.LFE89
	.long	.LLST74
	.uleb128 0x34
	.string	"t1"
	.byte	0x1
	.value	0x1611
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"t2"
	.byte	0x1
	.value	0x1611
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x33
	.long	0xac3a
	.string	"maybe_fold_nontype_arg"
	.byte	0x1
	.value	0x1625
	.byte	0x1
	.long	0x1e3
	.long	.LFB90
	.long	.LFE90
	.long	.LLST75
	.uleb128 0x34
	.string	"arg"
	.byte	0x1
	.value	0x1624
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LBB100
	.long	.LBE100
	.uleb128 0x35
	.string	"saved_processing_template_decl"
	.byte	0x1
	.value	0x1635
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0xacda
	.string	"tsubst_template_arg_vector"
	.byte	0x1
	.value	0x1647
	.byte	0x1
	.long	0x1e3
	.long	.LFB91
	.long	.LFE91
	.long	.LLST76
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0x1644
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x1645
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x31
	.long	.LASF81
	.byte	0x1
	.value	0x1646
	.long	0x6e62
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.string	"len"
	.byte	0x1
	.value	0x1648
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"need_new"
	.byte	0x1
	.value	0x1648
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x1648
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"elts"
	.byte	0x1
	.value	0x1649
	.long	0x4fab
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x33
	.long	0xadc6
	.string	"tsubst_template_parms"
	.byte	0x1
	.value	0x1675
	.byte	0x1
	.long	0x1e3
	.long	.LFB92
	.long	.LFE92
	.long	.LLST77
	.uleb128 0x31
	.long	.LASF56
	.byte	0x1
	.value	0x1672
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x1673
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF81
	.byte	0x1
	.value	0x1674
	.long	0x6e62
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.string	"r"
	.byte	0x1
	.value	0x1676
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.long	.LASF90
	.byte	0x1
	.value	0x1677
	.long	0x4fab
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LBB101
	.long	.LBE101
	.uleb128 0x35
	.string	"new_vec"
	.byte	0x1
	.value	0x167e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x1680
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LBB102
	.long	.LBE102
	.uleb128 0x35
	.string	"tuple"
	.byte	0x1
	.value	0x1684
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"default_value"
	.byte	0x1
	.value	0x1685
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"parm_decl"
	.byte	0x1
	.value	0x1686
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0xae6f
	.string	"tsubst_aggr_type"
	.byte	0x1
	.value	0x16a6
	.byte	0x1
	.long	0x1e3
	.long	.LFB93
	.long	.LFE93
	.long	.LLST78
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0x16a1
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x16a2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF81
	.byte	0x1
	.value	0x16a3
	.long	0x6e62
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF82
	.byte	0x1
	.value	0x16a4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.long	.LASF86
	.byte	0x1
	.value	0x16a5
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2e
	.long	.LBB103
	.long	.LBE103
	.uleb128 0x32
	.long	.LASF91
	.byte	0x1
	.value	0x16b5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF27
	.byte	0x1
	.value	0x16b6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"r"
	.byte	0x1
	.value	0x16b7
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0xaece
	.byte	0x1
	.string	"tsubst_default_argument"
	.byte	0x1
	.value	0x16e6
	.byte	0x1
	.long	0x1e3
	.long	.LFB94
	.long	.LFE94
	.long	.LLST79
	.uleb128 0x34
	.string	"fn"
	.byte	0x1
	.value	0x16e3
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x16e4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"arg"
	.byte	0x1
	.value	0x16e5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x36
	.long	0xaf29
	.string	"tsubst_default_arguments"
	.byte	0x1
	.value	0x170b
	.byte	0x1
	.long	.LFB95
	.long	.LFE95
	.long	.LLST80
	.uleb128 0x34
	.string	"fn"
	.byte	0x1
	.value	0x170a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"arg"
	.byte	0x1
	.value	0x170c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF92
	.byte	0x1
	.value	0x170d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	0xb1d7
	.string	"tsubst_decl"
	.byte	0x1
	.value	0x172a
	.byte	0x1
	.long	0x1e3
	.long	.LFB96
	.long	.LFE96
	.long	.LLST81
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0x1726
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x1727
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x1728
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF81
	.byte	0x1
	.value	0x1729
	.long	0x6e62
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.string	"saved_lineno"
	.byte	0x1
	.value	0x172b
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x35
	.string	"saved_filename"
	.byte	0x1
	.value	0x172c
	.long	0x2cd
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x35
	.string	"r"
	.byte	0x1
	.value	0x172d
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x32
	.long	.LASF82
	.byte	0x1
	.value	0x172e
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x37
	.long	0xb0b2
	.long	.LBB104
	.long	.LBE104
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x173c
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x32
	.long	.LASF52
	.byte	0x1
	.value	0x173d
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x35
	.string	"is_template_template_parm"
	.byte	0x1
	.value	0x173e
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x37
	.long	0xb05b
	.long	.LBB105
	.long	.LBE105
	.uleb128 0x32
	.long	.LASF92
	.byte	0x1
	.value	0x1746
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x32
	.long	.LASF51
	.byte	0x1
	.value	0x1749
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.uleb128 0x37
	.long	0xb079
	.long	.LBB106
	.long	.LBE106
	.uleb128 0x32
	.long	.LASF93
	.byte	0x1
	.value	0x1766
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x37
	.long	0xb097
	.long	.LBB107
	.long	.LBE107
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0x1774
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB108
	.long	.LBE108
	.uleb128 0x32
	.long	.LASF93
	.byte	0x1
	.value	0x177c
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xb15a
	.long	.LBB109
	.long	.LBE109
	.uleb128 0x35
	.string	"ctx"
	.byte	0x1
	.value	0x179f
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.long	.LASF91
	.byte	0x1
	.value	0x17a0
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x35
	.string	"friends"
	.byte	0x1
	.value	0x17a1
	.long	0x4fab
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.long	.LASF72
	.byte	0x1
	.value	0x17a2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.string	"member"
	.byte	0x1
	.value	0x17a3
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.string	"args_depth"
	.byte	0x1
	.value	0x17a4
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.string	"parms_depth"
	.byte	0x1
	.value	0x17a5
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LBB110
	.long	.LBE110
	.uleb128 0x32
	.long	.LASF52
	.byte	0x1
	.value	0x17ac
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xb1c6
	.long	.LBB111
	.long	.LBE111
	.uleb128 0x32
	.long	.LASF91
	.byte	0x1
	.value	0x18b2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF72
	.byte	0x1
	.value	0x18b3
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF52
	.byte	0x1
	.value	0x18b4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0x18b5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"ctx"
	.byte	0x1
	.value	0x18b6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"local_p"
	.byte	0x1
	.value	0x18b7
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd652
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.22340
	.byte	0x0
	.uleb128 0x33
	.long	0xb26c
	.string	"tsubst_arg_types"
	.byte	0x1
	.value	0x191e
	.byte	0x1
	.long	0x1e3
	.long	.LFB97
	.long	.LFE97
	.long	.LLST82
	.uleb128 0x31
	.long	.LASF94
	.byte	0x1
	.value	0x191a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x191b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF81
	.byte	0x1
	.value	0x191c
	.long	0x6e62
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF82
	.byte	0x1
	.value	0x191d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.string	"remaining_arg_types"
	.byte	0x1
	.value	0x191f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF2
	.byte	0x1
	.value	0x1920
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	0xb32d
	.string	"tsubst_function_type"
	.byte	0x1
	.value	0x195b
	.byte	0x1
	.long	0x1e3
	.long	.LFB98
	.long	.LFE98
	.long	.LLST83
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0x1957
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x1958
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF81
	.byte	0x1
	.value	0x1959
	.long	0x6e62
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF82
	.byte	0x1
	.value	0x195a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF95
	.byte	0x1
	.value	0x195c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF94
	.byte	0x1
	.value	0x195d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF96
	.byte	0x1
	.value	0x195e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x37
	.long	0xb31c
	.long	.LBB112
	.long	.LBE112
	.uleb128 0x35
	.string	"r"
	.byte	0x1
	.value	0x1973
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd64d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.22841
	.byte	0x0
	.uleb128 0x33
	.long	0xb3d0
	.string	"tsubst_call_declarator_parms"
	.byte	0x1
	.value	0x1994
	.byte	0x1
	.long	0x1e3
	.long	.LFB99
	.long	.LFE99
	.long	.LLST84
	.uleb128 0x31
	.long	.LASF56
	.byte	0x1
	.value	0x1990
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x1991
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF81
	.byte	0x1
	.value	0x1992
	.long	0x6e62
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF82
	.byte	0x1
	.value	0x1993
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF90
	.byte	0x1
	.value	0x1995
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF2
	.byte	0x1
	.value	0x1996
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"defarg"
	.byte	0x1
	.value	0x1997
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0xb7f4
	.byte	0x1
	.string	"tsubst"
	.byte	0x1
	.value	0x19cb
	.byte	0x1
	.long	0x1e3
	.long	.LFB100
	.long	.LFE100
	.long	.LLST85
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0x19c8
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x19c8
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF81
	.byte	0x1
	.value	0x19c9
	.long	0x6e62
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF82
	.byte	0x1
	.value	0x19ca
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF2
	.byte	0x1
	.value	0x19cc
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x35
	.string	"r"
	.byte	0x1
	.value	0x19cc
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x35
	.string	"new_t"
	.byte	0x1
	.value	0x19ce
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x37
	.long	0xb4a6
	.long	.LBB113
	.long	.LBE113
	.uleb128 0x35
	.string	"max"
	.byte	0x1
	.value	0x1a19
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x35
	.string	"omax"
	.byte	0x1
	.value	0x1a19
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2e
	.long	.LBB114
	.long	.LBE114
	.uleb128 0x35
	.string	"itype"
	.byte	0x1
	.value	0x1a2e
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xb536
	.long	.LBB115
	.long	.LBE115
	.uleb128 0x35
	.string	"idx"
	.byte	0x1
	.value	0x1a54
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x32
	.long	.LASF45
	.byte	0x1
	.value	0x1a55
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x32
	.long	.LASF55
	.byte	0x1
	.value	0x1a56
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x37
	.long	0xb51b
	.long	.LBB116
	.long	.LBE116
	.uleb128 0x35
	.string	"arg"
	.byte	0x1
	.value	0x1a69
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2e
	.long	.LBB117
	.long	.LBE117
	.uleb128 0x32
	.long	.LASF91
	.byte	0x1
	.value	0x1a7e
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB118
	.long	.LBE118
	.uleb128 0x32
	.long	.LASF91
	.byte	0x1
	.value	0x1abe
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xb584
	.long	.LBB119
	.long	.LBE119
	.uleb128 0x32
	.long	.LASF17
	.byte	0x1
	.value	0x1ad6
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x32
	.long	.LASF18
	.byte	0x1
	.value	0x1ad6
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x32
	.long	.LASF6
	.byte	0x1
	.value	0x1ad6
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x1ad6
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x0
	.uleb128 0x37
	.long	0xb5ac
	.long	.LBB120
	.long	.LBE120
	.uleb128 0x35
	.string	"code"
	.byte	0x1
	.value	0x1b19
	.long	0x961
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x3d
	.long	.LBB121
	.long	.LBE121
	.byte	0x0
	.uleb128 0x37
	.long	0xb612
	.long	.LBB122
	.long	.LBE122
	.uleb128 0x32
	.long	.LASF96
	.byte	0x1
	.value	0x1b7d
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x35
	.string	"raises"
	.byte	0x1
	.value	0x1b7e
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2e
	.long	.LBB123
	.long	.LBE123
	.uleb128 0x35
	.string	"list"
	.byte	0x1
	.value	0x1b88
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.long	.LBB124
	.long	.LBE124
	.uleb128 0x32
	.long	.LASF52
	.byte	0x1
	.value	0x1b8f
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xb633
	.long	.LBB125
	.long	.LBE125
	.uleb128 0x35
	.string	"domain"
	.byte	0x1
	.value	0x1b9c
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x37
	.long	0xb65f
	.long	.LBB126
	.long	.LBE126
	.uleb128 0x35
	.string	"e1"
	.byte	0x1
	.value	0x1bbd
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x35
	.string	"e2"
	.byte	0x1
	.value	0x1bbe
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.uleb128 0x37
	.long	0xb67b
	.long	.LBB127
	.long	.LBE127
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.value	0x1bc9
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x37
	.long	0xb6a7
	.long	.LBB128
	.long	.LBE128
	.uleb128 0x35
	.string	"ctx"
	.byte	0x1
	.value	0x1bd2
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.string	"f"
	.byte	0x1
	.value	0x1bd4
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x37
	.long	0xb6d5
	.long	.LBB129
	.long	.LBE129
	.uleb128 0x35
	.string	"ctx"
	.byte	0x1
	.value	0x1c04
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.long	.LASF26
	.byte	0x1
	.value	0x1c06
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x37
	.long	0xb6f0
	.long	.LBB130
	.long	.LBE130
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.value	0x1c10
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x37
	.long	0xb70b
	.long	.LBB131
	.long	.LBE131
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.value	0x1c18
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x37
	.long	0xb735
	.long	.LBB132
	.long	.LBE132
	.uleb128 0x35
	.string	"e1"
	.byte	0x1
	.value	0x1c20
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.string	"e2"
	.byte	0x1
	.value	0x1c21
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x37
	.long	0xb76d
	.long	.LBB133
	.long	.LBE133
	.uleb128 0x35
	.string	"e1"
	.byte	0x1
	.value	0x1c2a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"e2"
	.byte	0x1
	.value	0x1c2b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.string	"e3"
	.byte	0x1
	.value	0x1c2d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x37
	.long	0xb797
	.long	.LBB134
	.long	.LBE134
	.uleb128 0x35
	.string	"e1"
	.byte	0x1
	.value	0x1c39
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"e2"
	.byte	0x1
	.value	0x1c3a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x37
	.long	0xb7b3
	.long	.LBB135
	.long	.LBE135
	.uleb128 0x35
	.string	"e1"
	.byte	0x1
	.value	0x1c43
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd648
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.22946
	.uleb128 0x35
	.string	"last_line"
	.byte	0x1
	.value	0x1b2c
	.long	0x2e0
	.byte	0x5
	.byte	0x3
	.long	last_line.22989
	.uleb128 0x35
	.string	"last_file"
	.byte	0x1
	.value	0x1b2d
	.long	0x2cd
	.byte	0x5
	.byte	0x3
	.long	last_file.22990
	.byte	0x0
	.uleb128 0x30
	.long	0xba10
	.byte	0x1
	.string	"tsubst_copy"
	.byte	0x1
	.value	0x1c5d
	.byte	0x1
	.long	0x1e3
	.long	.LFB101
	.long	.LFE101
	.long	.LLST86
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0x1c5a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x1c5a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF81
	.byte	0x1
	.value	0x1c5b
	.long	0x6e62
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF82
	.byte	0x1
	.value	0x1c5c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.string	"code"
	.byte	0x1
	.value	0x1c5e
	.long	0x961
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x35
	.string	"r"
	.byte	0x1
	.value	0x1c5f
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x37
	.long	0xb8a5
	.long	.LBB136
	.long	.LBE136
	.uleb128 0x35
	.string	"enum_type"
	.byte	0x1
	.value	0x1c6d
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.string	"v"
	.byte	0x1
	.value	0x1c6e
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x37
	.long	0xb8c3
	.long	.LBB137
	.long	.LBE137
	.uleb128 0x35
	.string	"ctx"
	.byte	0x1
	.value	0x1c92
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x37
	.long	0xb8e0
	.long	.LBB138
	.long	.LBE138
	.uleb128 0x35
	.string	"id"
	.byte	0x1
	.value	0x1caf
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x37
	.long	0xb8fc
	.long	.LBB139
	.long	.LBE139
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x1d04
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x37
	.long	0xb933
	.long	.LBB140
	.long	.LBE140
	.uleb128 0x32
	.long	.LASF26
	.byte	0x1
	.value	0x1d12
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.long	.LBB141
	.long	.LBE141
	.uleb128 0x35
	.string	"base"
	.byte	0x1
	.value	0x1d1c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xb956
	.long	.LBB142
	.long	.LBE142
	.uleb128 0x35
	.string	"stmt_expr"
	.byte	0x1
	.value	0x1d36
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x37
	.long	0xb9a7
	.long	.LBB143
	.long	.LBE143
	.uleb128 0x32
	.long	.LASF63
	.byte	0x1
	.value	0x1d5f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.long	0xb98f
	.long	.LBB144
	.long	.LBE144
	.uleb128 0x32
	.long	.LASF6
	.byte	0x1
	.value	0x1d64
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB145
	.long	.LBE145
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x1d6a
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xb9e2
	.long	.LBB146
	.long	.LBE146
	.uleb128 0x32
	.long	.LASF17
	.byte	0x1
	.value	0x1d76
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF18
	.byte	0x1
	.value	0x1d76
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF6
	.byte	0x1
	.value	0x1d76
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x37
	.long	0xb9ff
	.long	.LBB147
	.long	.LBE147
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0x1da2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd633
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.23738
	.byte	0x0
	.uleb128 0x30
	.long	0xbb4e
	.byte	0x1
	.string	"tsubst_expr"
	.byte	0x1
	.value	0x1dc3
	.byte	0x1
	.long	0x1e3
	.long	.LFB102
	.long	.LFE102
	.long	.LLST87
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0x1dc0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x1dc0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF81
	.byte	0x1
	.value	0x1dc1
	.long	0x6e62
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF82
	.byte	0x1
	.value	0x1dc2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.string	"stmt"
	.byte	0x1
	.value	0x1dc4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.string	"tmp"
	.byte	0x1
	.value	0x1dc4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x37
	.long	0xbb03
	.long	.LBB148
	.long	.LBE148
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x1df2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"init"
	.byte	0x1
	.value	0x1df3
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x37
	.long	0xbae9
	.long	.LBB149
	.long	.LBE149
	.uleb128 0x35
	.string	"scope"
	.byte	0x1
	.value	0x1dfb
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF26
	.byte	0x1
	.value	0x1dfc
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB150
	.long	.LBE150
	.uleb128 0x32
	.long	.LASF26
	.byte	0x1
	.value	0x1e1b
	.long	0x4f9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xbb20
	.long	.LBB151
	.long	.LBE151
	.uleb128 0x35
	.string	"val"
	.byte	0x1
	.value	0x1e93
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x37
	.long	0xbb3d
	.long	.LBB152
	.long	.LBE152
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x1eea
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd62e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.24088
	.byte	0x0
	.uleb128 0x30
	.long	0xbc6d
	.byte	0x1
	.string	"instantiate_template"
	.byte	0x1
	.value	0x1f19
	.byte	0x1
	.long	0x1e3
	.long	.LFB103
	.long	.LFE103
	.long	.LLST88
	.uleb128 0x31
	.long	.LASF53
	.byte	0x1
	.value	0x1f18
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"targ_ptr"
	.byte	0x1
	.value	0x1f18
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"fndecl"
	.byte	0x1
	.value	0x1f1a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.long	.LASF72
	.byte	0x1
	.value	0x1f1b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	.LASF52
	.byte	0x1
	.value	0x1f1c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x1f1d
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"len"
	.byte	0x1
	.value	0x1f1d
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF76
	.byte	0x1
	.value	0x1f1e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	0xbc29
	.long	.LBB153
	.long	.LBE153
	.uleb128 0x32
	.long	.LASF52
	.byte	0x1
	.value	0x1f28
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"clone"
	.byte	0x1
	.value	0x1f29
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x37
	.long	0xbc5c
	.long	.LBB154
	.long	.LBE154
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x1f4f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LBB155
	.long	.LBE155
	.uleb128 0x35
	.string	"nt"
	.byte	0x1
	.value	0x1f52
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd619
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.24309
	.byte	0x0
	.uleb128 0x30
	.long	0xbd6b
	.byte	0x1
	.string	"fn_type_unification"
	.byte	0x1
	.value	0x1fa9
	.byte	0x1
	.long	0x2e0
	.long	.LFB104
	.long	.LFE104
	.long	.LLST89
	.uleb128 0x34
	.string	"fn"
	.byte	0x1
	.value	0x1fa6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF64
	.byte	0x1
	.value	0x1fa6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF63
	.byte	0x1
	.value	0x1fa6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x1fa6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.long	.LASF95
	.byte	0x1
	.value	0x1fa6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.long	.LASF97
	.byte	0x1
	.value	0x1fa7
	.long	0x6eb6
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x1fa8
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x32
	.long	.LASF56
	.byte	0x1
	.value	0x1faa
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF96
	.byte	0x1
	.value	0x1fab
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x1fac
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	0xbd5a
	.long	.LBB156
	.long	.LBE156
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x1fc4
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF98
	.byte	0x1
	.value	0x1fc5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd604
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.24438
	.byte	0x0
	.uleb128 0x33
	.long	0xbe10
	.string	"maybe_adjust_types_for_deduction"
	.byte	0x1
	.value	0x200a
	.byte	0x1
	.long	0x2e0
	.long	.LFB105
	.long	.LFE105
	.long	.LLST90
	.uleb128 0x31
	.long	.LASF97
	.byte	0x1
	.value	0x2007
	.long	0x6eb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF57
	.byte	0x1
	.value	0x2008
	.long	0x4fab
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"arg"
	.byte	0x1
	.value	0x2009
	.long	0x4fab
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x200b
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x37
	.long	0xbdff
	.long	.LBB157
	.long	.LBE157
	.uleb128 0x35
	.string	"temp"
	.byte	0x1
	.value	0x2017
	.long	0x4fab
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd5ff
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.24501
	.byte	0x0
	.uleb128 0x33
	.long	0xbfe6
	.string	"type_unification_real"
	.byte	0x1
	.value	0x2077
	.byte	0x1
	.long	0x2e0
	.long	.LFB106
	.long	.LFE106
	.long	.LLST91
	.uleb128 0x31
	.long	.LASF99
	.byte	0x1
	.value	0x2073
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF63
	.byte	0x1
	.value	0x2073
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"xparms"
	.byte	0x1
	.value	0x2073
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"xargs"
	.byte	0x1
	.value	0x2073
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"subr"
	.byte	0x1
	.value	0x2074
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.long	.LASF97
	.byte	0x1
	.value	0x2075
	.long	0x6eb6
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x34
	.string	"allow_incomplete"
	.byte	0x1
	.value	0x2076
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x34
	.string	"xlen"
	.byte	0x1
	.value	0x2076
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x32
	.long	.LASF57
	.byte	0x1
	.value	0x2078
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.string	"arg"
	.byte	0x1
	.value	0x2078
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x2079
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.long	.LASF79
	.byte	0x1
	.value	0x207a
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	.LASF100
	.byte	0x1
	.value	0x207b
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.string	"saw_undeduced"
	.byte	0x1
	.value	0x207c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF56
	.byte	0x1
	.value	0x207d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF50
	.byte	0x1
	.value	0x207d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"len"
	.byte	0x1
	.value	0x207e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3b
	.string	"again"
	.byte	0x1
	.value	0x2110
	.long	.L3197
	.uleb128 0x3b
	.string	"done"
	.byte	0x1
	.value	0x2102
	.long	.L3225
	.uleb128 0x37
	.long	0xbf92
	.long	.LBB158
	.long	.LBE158
	.uleb128 0x32
	.long	.LASF2
	.byte	0x1
	.value	0x20be
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x37
	.long	0xbfb6
	.long	.LBB159
	.long	.LBE159
	.uleb128 0x35
	.string	"arg_strict"
	.byte	0x1
	.value	0x20eb
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x37
	.long	0xbfd5
	.long	.LBB160
	.long	.LBE160
	.uleb128 0x35
	.string	"tparm"
	.byte	0x1
	.value	0x2107
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd5ea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.24570
	.byte	0x0
	.uleb128 0x33
	.long	0xc136
	.string	"resolve_overloaded_unification"
	.byte	0x1
	.value	0x2124
	.byte	0x1
	.long	0x2e0
	.long	.LFB107
	.long	.LFE107
	.long	.LLST92
	.uleb128 0x31
	.long	.LASF99
	.byte	0x1
	.value	0x2121
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF63
	.byte	0x1
	.value	0x2121
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF57
	.byte	0x1
	.value	0x2121
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"arg"
	.byte	0x1
	.value	0x2121
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.long	.LASF97
	.byte	0x1
	.value	0x2122
	.long	0x6eb6
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.long	.LASF100
	.byte	0x1
	.value	0x2123
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x32
	.long	.LASF101
	.byte	0x1
	.value	0x2125
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.string	"good"
	.byte	0x1
	.value	0x2126
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"addr_p"
	.byte	0x1
	.value	0x2127
	.long	0x4fa2
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x37
	.long	0xc10a
	.long	.LBB161
	.long	.LBE161
	.uleb128 0x35
	.string	"expl_subargs"
	.byte	0x1
	.value	0x2143
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LBB162
	.long	.LBE162
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x2148
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"subargs"
	.byte	0x1
	.value	0x2149
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"elem"
	.byte	0x1
	.value	0x2149
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xc125
	.long	.LBB163
	.long	.LBE163
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x216d
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd5d5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.24737
	.byte	0x0
	.uleb128 0x33
	.long	0xc256
	.string	"try_one_overload"
	.byte	0x1
	.value	0x2189
	.byte	0x1
	.long	0x2e0
	.long	.LFB108
	.long	.LFE108
	.long	.LLST93
	.uleb128 0x31
	.long	.LASF99
	.byte	0x1
	.value	0x2181
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"orig_targs"
	.byte	0x1
	.value	0x2182
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF63
	.byte	0x1
	.value	0x2183
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF57
	.byte	0x1
	.value	0x2184
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"arg"
	.byte	0x1
	.value	0x2185
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.long	.LASF97
	.byte	0x1
	.value	0x2186
	.long	0x6eb6
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x31
	.long	.LASF100
	.byte	0x1
	.value	0x2187
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x34
	.string	"addr_p"
	.byte	0x1
	.value	0x2188
	.long	0x4fa2
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	.LASF78
	.byte	0x1
	.value	0x218a
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF101
	.byte	0x1
	.value	0x218b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x218c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x37
	.long	0xc23c
	.long	.LBB164
	.long	.LBE164
	.uleb128 0x35
	.string	"elt"
	.byte	0x1
	.value	0x21ad
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"oldelt"
	.byte	0x1
	.value	0x21ae
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB165
	.long	.LBE165
	.uleb128 0x35
	.string	"elt"
	.byte	0x1
	.value	0x21c0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0xc2b6
	.string	"verify_class_unification"
	.byte	0x1
	.value	0x21dd
	.byte	0x1
	.long	0x2e0
	.long	.LFB109
	.long	.LFE109
	.long	.LLST94
	.uleb128 0x31
	.long	.LASF63
	.byte	0x1
	.value	0x21dc
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF56
	.byte	0x1
	.value	0x21dc
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x21dc
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x33
	.long	0xc33b
	.string	"try_class_unification"
	.byte	0x1
	.value	0x21f1
	.byte	0x1
	.long	0x1e3
	.long	.LFB110
	.long	.LFE110
	.long	.LLST95
	.uleb128 0x31
	.long	.LASF99
	.byte	0x1
	.value	0x21ed
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF63
	.byte	0x1
	.value	0x21ee
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF57
	.byte	0x1
	.value	0x21ef
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"arg"
	.byte	0x1
	.value	0x21f0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.string	"copy_of_targs"
	.byte	0x1
	.value	0x21f2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	0xc466
	.string	"get_template_base_recursive"
	.byte	0x1
	.value	0x222e
	.byte	0x1
	.long	0x1e3
	.long	.LFB111
	.long	.LFE111
	.long	.LLST96
	.uleb128 0x31
	.long	.LASF99
	.byte	0x1
	.value	0x2228
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF63
	.byte	0x1
	.value	0x2229
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF57
	.byte	0x1
	.value	0x222c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF102
	.byte	0x1
	.value	0x222a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"rval"
	.byte	0x1
	.value	0x222b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.string	"flags"
	.byte	0x1
	.value	0x222d
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x35
	.string	"binfos"
	.byte	0x1
	.value	0x222f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x2230
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.string	"n_baselinks"
	.byte	0x1
	.value	0x2230
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"arg"
	.byte	0x1
	.value	0x2231
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	0xc42d
	.long	.LBB166
	.long	.LBE166
	.uleb128 0x35
	.string	"r"
	.byte	0x1
	.value	0x2235
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB167
	.long	.LBE167
	.uleb128 0x35
	.string	"base_binfo"
	.byte	0x1
	.value	0x224c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"this_virtual"
	.byte	0x1
	.value	0x224d
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0xc4fd
	.string	"get_template_base"
	.byte	0x1
	.value	0x2277
	.byte	0x1
	.long	0x1e3
	.long	.LFB112
	.long	.LFE112
	.long	.LLST97
	.uleb128 0x31
	.long	.LASF99
	.byte	0x1
	.value	0x2273
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF63
	.byte	0x1
	.value	0x2274
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF57
	.byte	0x1
	.value	0x2275
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"arg"
	.byte	0x1
	.value	0x2276
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.string	"rval"
	.byte	0x1
	.value	0x2278
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF102
	.byte	0x1
	.value	0x2279
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.long	.LASF58
	.long	0xd5c0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.25070
	.byte	0x0
	.uleb128 0x33
	.long	0xc54a
	.string	"template_decl_level"
	.byte	0x1
	.value	0x228f
	.byte	0x1
	.long	0x2e0
	.long	.LFB113
	.long	.LFE113
	.long	.LLST98
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x228e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd5ab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.25093
	.byte	0x0
	.uleb128 0x33
	.long	0xc5d5
	.string	"check_cv_quals_for_unify"
	.byte	0x1
	.value	0x22a8
	.byte	0x1
	.long	0x2e0
	.long	.LFB114
	.long	.LFE114
	.long	.LLST99
	.uleb128 0x31
	.long	.LASF97
	.byte	0x1
	.value	0x22a5
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"arg"
	.byte	0x1
	.value	0x22a6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF57
	.byte	0x1
	.value	0x22a7
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.string	"arg_quals"
	.byte	0x1
	.value	0x22a9
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"parm_quals"
	.byte	0x1
	.value	0x22aa
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	0xc7ac
	.string	"unify"
	.byte	0x1
	.value	0x22ed
	.byte	0x1
	.long	0x2e0
	.long	.LFB115
	.long	.LFE115
	.long	.LLST100
	.uleb128 0x31
	.long	.LASF99
	.byte	0x1
	.value	0x22eb
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF63
	.byte	0x1
	.value	0x22eb
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF57
	.byte	0x1
	.value	0x22eb
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"arg"
	.byte	0x1
	.value	0x22eb
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.long	.LASF97
	.byte	0x1
	.value	0x22ec
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x35
	.string	"idx"
	.byte	0x1
	.value	0x22ee
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x35
	.string	"targ"
	.byte	0x1
	.value	0x22ef
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.string	"tparm"
	.byte	0x1
	.value	0x22f0
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x35
	.string	"strict_in"
	.byte	0x1
	.value	0x22f1
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3c
	.long	.LASF4
	.byte	0x1
	.value	0x2494
	.long	.L3439
	.uleb128 0x37
	.long	0xc713
	.long	.LBB168
	.long	.LBE168
	.uleb128 0x35
	.string	"parmtmpl"
	.byte	0x1
	.value	0x234a
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x35
	.string	"parmvec"
	.byte	0x1
	.value	0x234b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.long	.LASF91
	.byte	0x1
	.value	0x234c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.string	"argtmplvec"
	.byte	0x1
	.value	0x234d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x234f
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.long	.LBB169
	.long	.LBE169
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x2363
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xc72e
	.long	.LBB170
	.long	.LBE170
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x23b5
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x37
	.long	0xc749
	.long	.LBB171
	.long	.LBE171
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x243d
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x37
	.long	0xc764
	.long	.LBB172
	.long	.LBE172
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x245c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x37
	.long	0xc79b
	.long	.LBB173
	.long	.LBE173
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x24b1
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"t1"
	.byte	0x1
	.value	0x24b1
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"t2"
	.byte	0x1
	.value	0x24b1
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd5a6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.25174
	.byte	0x0
	.uleb128 0x39
	.long	0xc7f8
	.byte	0x1
	.string	"mark_decl_instantiated"
	.byte	0x1
	.value	0x24e8
	.byte	0x1
	.long	.LFB116
	.long	.LFE116
	.long	.LLST101
	.uleb128 0x31
	.long	.LASF32
	.byte	0x1
	.value	0x24e6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF103
	.byte	0x1
	.value	0x24e7
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x30
	.long	0xc886
	.byte	0x1
	.string	"more_specialized"
	.byte	0x1
	.value	0x251f
	.byte	0x1
	.long	0x2e0
	.long	.LFB117
	.long	.LFE117
	.long	.LLST102
	.uleb128 0x34
	.string	"pat1"
	.byte	0x1
	.value	0x251c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"pat2"
	.byte	0x1
	.value	0x251c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"deduce"
	.byte	0x1
	.value	0x251d
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x251e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF63
	.byte	0x1
	.value	0x2520
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x35
	.string	"winner"
	.byte	0x1
	.value	0x2521
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x30
	.long	0xc908
	.byte	0x1
	.string	"more_specialized_class"
	.byte	0x1
	.value	0x253c
	.byte	0x1
	.long	0x2e0
	.long	.LFB118
	.long	.LFE118
	.long	.LLST103
	.uleb128 0x34
	.string	"pat1"
	.byte	0x1
	.value	0x253b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"pat2"
	.byte	0x1
	.value	0x253b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF51
	.byte	0x1
	.value	0x253b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF63
	.byte	0x1
	.value	0x253d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x35
	.string	"winner"
	.byte	0x1
	.value	0x253e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x33
	.long	0xca11
	.string	"get_bindings_real"
	.byte	0x1
	.value	0x2557
	.byte	0x1
	.long	0x1e3
	.long	.LFB119
	.long	.LFE119
	.long	.LLST104
	.uleb128 0x34
	.string	"fn"
	.byte	0x1
	.value	0x2555
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x2555
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF104
	.byte	0x1
	.value	0x2555
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"check_rettype"
	.byte	0x1
	.value	0x2556
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"deduce"
	.byte	0x1
	.value	0x2556
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.string	"len"
	.byte	0x1
	.value	0x2556
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x32
	.long	.LASF79
	.byte	0x1
	.value	0x2558
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF63
	.byte	0x1
	.value	0x2559
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"decl_type"
	.byte	0x1
	.value	0x255a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF66
	.byte	0x1
	.value	0x255b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x255c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LBB174
	.long	.LBE174
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0x2564
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF98
	.byte	0x1
	.value	0x2565
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0xca65
	.byte	0x1
	.string	"get_bindings"
	.byte	0x1
	.value	0x258f
	.byte	0x1
	.long	0x1e3
	.long	.LFB120
	.long	.LFE120
	.long	.LLST105
	.uleb128 0x34
	.string	"fn"
	.byte	0x1
	.value	0x258e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x258e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF104
	.byte	0x1
	.value	0x258e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x33
	.long	0xcac1
	.string	"get_bindings_overload"
	.byte	0x1
	.value	0x2599
	.byte	0x1
	.long	0x1e3
	.long	.LFB121
	.long	.LFE121
	.long	.LLST106
	.uleb128 0x34
	.string	"fn"
	.byte	0x1
	.value	0x2598
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x2598
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF104
	.byte	0x1
	.value	0x2598
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x33
	.long	0xcb46
	.string	"get_class_bindings"
	.byte	0x1
	.value	0x25af
	.byte	0x1
	.long	0x1e3
	.long	.LFB122
	.long	.LFE122
	.long	.LLST107
	.uleb128 0x31
	.long	.LASF99
	.byte	0x1
	.value	0x25ae
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF56
	.byte	0x1
	.value	0x25ae
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x25ae
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x25b0
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF79
	.byte	0x1
	.value	0x25b0
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"vec"
	.byte	0x1
	.value	0x25b1
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0xcbc9
	.byte	0x1
	.string	"most_specialized_instantiation"
	.byte	0x1
	.value	0x25cb
	.byte	0x1
	.long	0x1e3
	.long	.LFB123
	.long	.LFE123
	.long	.LLST108
	.uleb128 0x34
	.string	"instantiations"
	.byte	0x1
	.value	0x25ca
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x25cc
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"champ"
	.byte	0x1
	.value	0x25cc
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"fate"
	.byte	0x1
	.value	0x25cd
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	0xcc6c
	.string	"most_specialized"
	.byte	0x1
	.value	0x25f7
	.byte	0x1
	.long	0x1e3
	.long	.LFB124
	.long	.LFE124
	.long	.LLST109
	.uleb128 0x34
	.string	"fns"
	.byte	0x1
	.value	0x25f6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x25f6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF104
	.byte	0x1
	.value	0x25f6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF65
	.byte	0x1
	.value	0x25f8
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x25f9
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF50
	.byte	0x1
	.value	0x25f9
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LBB175
	.long	.LBE175
	.uleb128 0x35
	.string	"candidate"
	.byte	0x1
	.value	0x25fd
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0xccac
	.byte	0x1
	.string	"most_general_template"
	.byte	0x1
	.value	0x261a
	.byte	0x1
	.long	0x1e3
	.long	.LFB125
	.long	.LFE125
	.long	.LLST110
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x2619
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x33
	.long	0xcd58
	.string	"most_specialized_class"
	.byte	0x1
	.value	0x264a
	.byte	0x1
	.long	0x1e3
	.long	.LFB126
	.long	.LFE126
	.long	.LLST111
	.uleb128 0x31
	.long	.LASF53
	.byte	0x1
	.value	0x2648
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x2649
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"list"
	.byte	0x1
	.value	0x264b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x264c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"champ"
	.byte	0x1
	.value	0x264d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"fate"
	.byte	0x1
	.value	0x264e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LBB176
	.long	.LBE176
	.uleb128 0x35
	.string	"spec_args"
	.byte	0x1
	.value	0x2653
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xcdc1
	.byte	0x1
	.string	"do_decl_instantiation"
	.byte	0x1
	.value	0x2681
	.byte	0x1
	.long	.LFB127
	.long	.LFE127
	.long	.LLST112
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x2680
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF105
	.byte	0x1
	.value	0x2680
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.value	0x2682
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF103
	.byte	0x1
	.value	0x2683
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xce0c
	.byte	0x1
	.string	"mark_class_instantiated"
	.byte	0x1
	.value	0x26f1
	.byte	0x1
	.long	.LFB128
	.long	.LFE128
	.long	.LLST113
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0x26ef
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF103
	.byte	0x1
	.value	0x26f0
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x36
	.long	0xce6a
	.string	"bt_instantiate_type_proc"
	.byte	0x1
	.value	0x2701
	.byte	0x1
	.long	.LFB129
	.long	.LFE129
	.long	.LLST114
	.uleb128 0x34
	.string	"entry"
	.byte	0x1
	.value	0x2700
	.long	0x5dac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF36
	.byte	0x1
	.value	0x2700
	.long	0x48c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF105
	.byte	0x1
	.value	0x2702
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xcf11
	.byte	0x1
	.string	"do_type_instantiation"
	.byte	0x1
	.value	0x2712
	.byte	0x1
	.long	.LFB130
	.long	.LFE130
	.long	.LLST115
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0x2710
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF105
	.byte	0x1
	.value	0x2710
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF81
	.byte	0x1
	.value	0x2711
	.long	0x6e62
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF103
	.byte	0x1
	.value	0x2713
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"nomem_p"
	.byte	0x1
	.value	0x2714
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"static_p"
	.byte	0x1
	.value	0x2715
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LBB177
	.long	.LBE177
	.uleb128 0x35
	.string	"tmp"
	.byte	0x1
	.value	0x276c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xcfc7
	.string	"regenerate_decl_from_template"
	.byte	0x1
	.value	0x27b3
	.byte	0x1
	.long	.LFB131
	.long	.LFE131
	.long	.LLST116
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x27b1
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF53
	.byte	0x1
	.value	0x27b2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF72
	.byte	0x1
	.value	0x27b5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF50
	.byte	0x1
	.value	0x27b8
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF106
	.byte	0x1
	.value	0x27b9
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF93
	.byte	0x1
	.value	0x27ba
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"unregistered"
	.byte	0x1
	.value	0x27bb
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.long	.LASF58
	.long	0xd591
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.26342
	.byte	0x0
	.uleb128 0x30
	.long	0xd16b
	.byte	0x1
	.string	"instantiate_decl"
	.byte	0x1
	.value	0x2800
	.byte	0x1
	.long	0x1e3
	.long	.LFB132
	.long	.LFE132
	.long	.LLST117
	.uleb128 0x34
	.string	"d"
	.byte	0x1
	.value	0x27fe
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"defer_ok"
	.byte	0x1
	.value	0x27ff
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0x2801
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.string	"gen_args"
	.byte	0x1
	.value	0x2802
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.long	.LASF50
	.byte	0x1
	.value	0x2803
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.string	"td"
	.byte	0x1
	.value	0x2804
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x32
	.long	.LASF106
	.byte	0x1
	.value	0x2805
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.long	.LASF52
	.byte	0x1
	.value	0x2806
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.long	.LASF72
	.byte	0x1
	.value	0x2807
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"pattern_defined"
	.byte	0x1
	.value	0x2808
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.string	"line"
	.byte	0x1
	.value	0x2809
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"need_push"
	.byte	0x1
	.value	0x280a
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"file"
	.byte	0x1
	.value	0x280b
	.long	0x2cd
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.string	"out"
	.byte	0x1
	.value	0x2944
	.long	.L4009
	.uleb128 0x37
	.long	0xd0f9
	.long	.LBB178
	.long	.LBE178
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x2884
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x37
	.long	0xd125
	.long	.LBB179
	.long	.LBE179
	.uleb128 0x35
	.string	"gen"
	.byte	0x1
	.value	0x28a6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF2
	.byte	0x1
	.value	0x28a7
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x37
	.long	0xd15a
	.long	.LBB180
	.long	.LBE180
	.uleb128 0x35
	.string	"saved_local_specializations"
	.byte	0x1
	.value	0x291d
	.long	0x5745
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd57c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.26399
	.byte	0x0
	.uleb128 0x30
	.long	0xd234
	.byte	0x1
	.string	"instantiate_pending_templates"
	.byte	0x1
	.value	0x2954
	.byte	0x1
	.long	0x2e0
	.long	.LFB133
	.long	.LFE133
	.long	.LLST118
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x2955
	.long	0x4fab
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"last"
	.byte	0x1
	.value	0x2956
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"instantiated_something"
	.byte	0x1
	.value	0x2957
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"reconsider"
	.byte	0x1
	.value	0x2958
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LBB181
	.long	.LBE181
	.uleb128 0x35
	.string	"instantiation"
	.byte	0x1
	.value	0x2961
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LBB182
	.long	.LBE182
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x2967
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0xd2cb
	.string	"tsubst_initializer_list"
	.byte	0x1
	.value	0x29ae
	.byte	0x1
	.long	0x1e3
	.long	.LFB134
	.long	.LFE134
	.long	.LLST119
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0x29ad
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF91
	.byte	0x1
	.value	0x29ad
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"inits"
	.byte	0x1
	.value	0x29af
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LBB183
	.long	.LBE183
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x29b3
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"init"
	.byte	0x1
	.value	0x29b4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"val"
	.byte	0x1
	.value	0x29b5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xd30d
	.string	"set_current_access_from_decl"
	.byte	0x1
	.value	0x29d8
	.byte	0x1
	.long	.LFB135
	.long	.LFE135
	.long	.LLST120
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x29d7
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x36
	.long	0xd385
	.string	"tsubst_enum"
	.byte	0x1
	.value	0x29ea
	.byte	0x1
	.long	.LFB136
	.long	.LFE136
	.long	.LLST121
	.uleb128 0x34
	.string	"tag"
	.byte	0x1
	.value	0x29e7
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"newtag"
	.byte	0x1
	.value	0x29e8
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF50
	.byte	0x1
	.value	0x29e9
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.value	0x29eb
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LBB184
	.long	.LBE184
	.uleb128 0x32
	.long	.LASF18
	.byte	0x1
	.value	0x29ef
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0xd467
	.byte	0x1
	.string	"get_mostly_instantiated_function_type"
	.byte	0x1
	.value	0x2a0b
	.byte	0x1
	.long	0x1e3
	.long	.LFB137
	.long	.LFE137
	.long	.LLST122
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x2a0a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"fn_type"
	.byte	0x1
	.value	0x2a0c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0x2a0d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF63
	.byte	0x1
	.value	0x2a0e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF99
	.byte	0x1
	.value	0x2a0f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF74
	.byte	0x1
	.value	0x2a10
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x37
	.long	0xd456
	.long	.LBB185
	.long	.LBE185
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x2a22
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"partial_args"
	.byte	0x1
	.value	0x2a23
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x38
	.long	.LASF58
	.long	0xd567
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.26851
	.byte	0x0
	.uleb128 0x3e
	.byte	0x1
	.string	"problematic_instantiation_changed"
	.byte	0x1
	.value	0x2a4b
	.byte	0x1
	.long	0x2e0
	.long	.LFB138
	.long	.LFE138
	.long	.LLST123
	.uleb128 0x3a
	.byte	0x1
	.string	"record_last_problematic_instantiation"
	.byte	0x1
	.value	0x2a52
	.byte	0x1
	.long	.LFB139
	.long	.LFE139
	.long	.LLST124
	.uleb128 0x3e
	.byte	0x1
	.string	"current_instantiation"
	.byte	0x1
	.value	0x2a58
	.byte	0x1
	.long	0x1e3
	.long	.LFB140
	.long	.LFE140
	.long	.LLST125
	.uleb128 0x33
	.long	0xd557
	.string	"invalid_nontype_parm_type_p"
	.byte	0x1
	.value	0x2a64
	.byte	0x1
	.long	0x2e0
	.long	.LFB141
	.long	.LFE141
	.long	.LLST126
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x2a62
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF81
	.byte	0x1
	.value	0x2a63
	.long	0x6e62
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xf
	.long	0xd567
	.long	0x2d8
	.uleb128 0x10
	.long	0x3d0
	.byte	0x25
	.byte	0x0
	.uleb128 0xa
	.long	0xd557
	.uleb128 0xf
	.long	0xd57c
	.long	0x2d8
	.uleb128 0x10
	.long	0x3d0
	.byte	0x10
	.byte	0x0
	.uleb128 0xa
	.long	0xd56c
	.uleb128 0xf
	.long	0xd591
	.long	0x2d8
	.uleb128 0x10
	.long	0x3d0
	.byte	0x1d
	.byte	0x0
	.uleb128 0xa
	.long	0xd581
	.uleb128 0xf
	.long	0xd5a6
	.long	0x2d8
	.uleb128 0x10
	.long	0x3d0
	.byte	0x5
	.byte	0x0
	.uleb128 0xa
	.long	0xd596
	.uleb128 0xa
	.long	0x4ed
	.uleb128 0xf
	.long	0xd5c0
	.long	0x2d8
	.uleb128 0x10
	.long	0x3d0
	.byte	0x11
	.byte	0x0
	.uleb128 0xa
	.long	0xd5b0
	.uleb128 0xf
	.long	0xd5d5
	.long	0x2d8
	.uleb128 0x10
	.long	0x3d0
	.byte	0x1e
	.byte	0x0
	.uleb128 0xa
	.long	0xd5c5
	.uleb128 0xf
	.long	0xd5ea
	.long	0x2d8
	.uleb128 0x10
	.long	0x3d0
	.byte	0x15
	.byte	0x0
	.uleb128 0xa
	.long	0xd5da
	.uleb128 0xf
	.long	0xd5ff
	.long	0x2d8
	.uleb128 0x10
	.long	0x3d0
	.byte	0x20
	.byte	0x0
	.uleb128 0xa
	.long	0xd5ef
	.uleb128 0xa
	.long	0x4ed
	.uleb128 0xf
	.long	0xd619
	.long	0x2d8
	.uleb128 0x10
	.long	0x3d0
	.byte	0x14
	.byte	0x0
	.uleb128 0xa
	.long	0xd609
	.uleb128 0xf
	.long	0xd62e
	.long	0x2d8
	.uleb128 0x10
	.long	0x3d0
	.byte	0xb
	.byte	0x0
	.uleb128 0xa
	.long	0xd61e
	.uleb128 0xa
	.long	0xd61e
	.uleb128 0xf
	.long	0xd648
	.long	0x2d8
	.uleb128 0x10
	.long	0x3d0
	.byte	0x6
	.byte	0x0
	.uleb128 0xa
	.long	0xd638
	.uleb128 0xa
	.long	0xd609
	.uleb128 0xa
	.long	0xd61e
	.uleb128 0xf
	.long	0xd667
	.long	0x2d8
	.uleb128 0x10
	.long	0x3d0
	.byte	0x1a
	.byte	0x0
	.uleb128 0xa
	.long	0xd657
	.uleb128 0xa
	.long	0xd5da
	.uleb128 0xf
	.long	0xd681
	.long	0x2d8
	.uleb128 0x10
	.long	0x3d0
	.byte	0x18
	.byte	0x0
	.uleb128 0xa
	.long	0xd671
	.uleb128 0xa
	.long	0xd5c5
	.uleb128 0xa
	.long	0xd5da
	.uleb128 0xa
	.long	0xd5c5
	.uleb128 0xa
	.long	0xd671
	.uleb128 0xa
	.long	0xd5c5
	.uleb128 0xa
	.long	0xd5da
	.uleb128 0xa
	.long	0x4ed
	.uleb128 0xa
	.long	0xd581
	.uleb128 0xa
	.long	0x4dd
	.uleb128 0xa
	.long	0xd609
	.uleb128 0xa
	.long	0x4dd
	.uleb128 0xa
	.long	0xd657
	.uleb128 0xf
	.long	0xd6d2
	.long	0x2d8
	.uleb128 0x10
	.long	0x3d0
	.byte	0x1b
	.byte	0x0
	.uleb128 0xa
	.long	0xd6c2
	.uleb128 0xa
	.long	0xd6c2
	.uleb128 0xf
	.long	0xd6ec
	.long	0x2d8
	.uleb128 0x10
	.long	0x3d0
	.byte	0x24
	.byte	0x0
	.uleb128 0xa
	.long	0xd6dc
	.uleb128 0x3f
	.string	"pending_templates"
	.byte	0x1
	.byte	0x3e
	.long	0x1e3
	.byte	0x5
	.byte	0x3
	.long	pending_templates
	.uleb128 0x3f
	.string	"last_pending_template"
	.byte	0x1
	.byte	0x3f
	.long	0x1e3
	.byte	0x5
	.byte	0x3
	.long	last_pending_template
	.uleb128 0x3f
	.string	"regenerating_decl_from_template"
	.byte	0x1
	.byte	0x42
	.long	0x4fa2
	.byte	0x5
	.byte	0x3
	.long	regenerating_decl_from_template
	.uleb128 0x3f
	.string	"template_header_count"
	.byte	0x1
	.byte	0x46
	.long	0x2e0
	.byte	0x5
	.byte	0x3
	.long	template_header_count
	.uleb128 0x3f
	.string	"saved_trees"
	.byte	0x1
	.byte	0x48
	.long	0x1e3
	.byte	0x5
	.byte	0x3
	.long	saved_trees
	.uleb128 0x3f
	.string	"inline_parm_levels"
	.byte	0x1
	.byte	0x49
	.long	0x5c31
	.byte	0x5
	.byte	0x3
	.long	inline_parm_levels
	.uleb128 0x3f
	.string	"inline_parm_levels_used"
	.byte	0x1
	.byte	0x4a
	.long	0x3ef
	.byte	0x5
	.byte	0x3
	.long	inline_parm_levels_used
	.uleb128 0x3f
	.string	"current_tinst_level"
	.byte	0x1
	.byte	0x4c
	.long	0x1e3
	.byte	0x5
	.byte	0x3
	.long	current_tinst_level
	.uleb128 0x3f
	.string	"saved_access_scope"
	.byte	0x1
	.byte	0x4e
	.long	0x1e3
	.byte	0x5
	.byte	0x3
	.long	saved_access_scope
	.uleb128 0x3f
	.string	"local_specializations"
	.byte	0x1
	.byte	0x53
	.long	0x5745
	.byte	0x5
	.byte	0x3
	.long	local_specializations
	.uleb128 0x35
	.string	"tinst_depth"
	.byte	0x1
	.value	0x1291
	.long	0x2e0
	.byte	0x5
	.byte	0x3
	.long	tinst_depth
	.uleb128 0x35
	.string	"tinst_level_tick"
	.byte	0x1
	.value	0x1296
	.long	0x2e0
	.byte	0x5
	.byte	0x3
	.long	tinst_level_tick
	.uleb128 0x35
	.string	"last_template_error_tick"
	.byte	0x1
	.value	0x1297
	.long	0x2e0
	.byte	0x5
	.byte	0x3
	.long	last_template_error_tick
	.uleb128 0xf
	.long	0xd8b0
	.long	0x2d8
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x41
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x43
	.long	0xd8c8
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0xd8a5
	.uleb128 0xf
	.long	0xd8d8
	.long	0x2cd
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x41
	.string	"tree_code_name"
	.byte	0x3
	.byte	0x53
	.long	0xd8f0
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0xd8cd
	.uleb128 0xf
	.long	0xd905
	.long	0x1e3
	.uleb128 0x10
	.long	0x3d0
	.byte	0x3f
	.byte	0x0
	.uleb128 0x42
	.string	"global_trees"
	.byte	0x3
	.value	0x8ee
	.long	0xd8f5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0xd92c
	.long	0x1e3
	.uleb128 0x10
	.long	0x3d0
	.byte	0xa
	.byte	0x0
	.uleb128 0x42
	.string	"integer_types"
	.byte	0x3
	.value	0x95f
	.long	0xd91c
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0xd954
	.long	0x1e3
	.uleb128 0x10
	.long	0x3d0
	.byte	0x5
	.byte	0x0
	.uleb128 0x42
	.string	"sizetype_tab"
	.byte	0x3
	.value	0xb10
	.long	0xd944
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"input_filename"
	.byte	0x3
	.value	0xbf6
	.long	0x2cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"lineno"
	.byte	0x3
	.value	0xbf9
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"current_function_decl"
	.byte	0x3
	.value	0xc07
	.long	0x1e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"pedantic"
	.byte	0x12
	.byte	0xe3
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"in_system_header"
	.byte	0x12
	.byte	0xe8
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"cfun"
	.byte	0x8
	.value	0x202
	.long	0x4513
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"htab_hash_pointer"
	.byte	0x11
	.byte	0xa0
	.long	0x55ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"htab_eq_pointer"
	.byte	0x11
	.byte	0xa3
	.long	0x5615
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"ridpointers"
	.byte	0xb
	.byte	0x8a
	.long	0x4fab
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_external_templates"
	.byte	0xb
	.value	0x293
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_alt_external_templates"
	.byte	0xb
	.value	0x299
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_use_repository"
	.byte	0xb
	.value	0x2a8
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_weak"
	.byte	0xb
	.value	0x2da
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"max_tinst_depth"
	.byte	0x1
	.value	0x1292
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0xdadd
	.long	0x1e3
	.uleb128 0x10
	.long	0x3d0
	.byte	0x49
	.byte	0x0
	.uleb128 0x42
	.string	"cp_global_trees"
	.byte	0xa
	.value	0x28f
	.long	0xdacd
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"scope_chain"
	.byte	0xa
	.value	0x368
	.long	0x6087
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"global_namespace"
	.byte	0xa
	.value	0x3d4
	.long	0x1e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.long	.LASF39
	.byte	0xa
	.value	0x3e6
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.long	.LASF40
	.byte	0xa
	.value	0x3e6
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"at_eof"
	.byte	0xa
	.value	0xd4d
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"processing_template_parmlist"
	.byte	0x1
	.byte	0x45
	.long	0x2e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	processing_template_parmlist
	.uleb128 0x41
	.string	"last_function_parms"
	.byte	0x13
	.byte	0x27
	.long	0x1e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_openmp"
	.byte	0x1
	.value	0x19b3
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0xdbc3
	.long	0x7924
	.uleb128 0x10
	.long	0x3d0
	.byte	0x5
	.byte	0x0
	.uleb128 0x44
	.string	"gt_ggc_r_gt_cp_pt_h"
	.byte	0x14
	.byte	0x19
	.long	0xdbe5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_r_gt_cp_pt_h
	.uleb128 0xa
	.long	0xdbb3
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
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
	.uleb128 0x44
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
	.long	0x61c
	.value	0x2
	.long	.Ldebug_info0
	.long	0xdbeb
	.long	0x7a6f
	.string	"finish_member_template_decl"
	.long	0x7b43
	.string	"template_class_depth"
	.long	0x7c82
	.string	"maybe_begin_member_template_processing"
	.long	0x7ced
	.string	"maybe_end_member_template_processing"
	.long	0x7d36
	.string	"is_member_template"
	.long	0x7e71
	.string	"get_innermost_template_args"
	.long	0x7f08
	.string	"begin_template_parm_list"
	.long	0x7f75
	.string	"begin_specialization"
	.long	0x7f9c
	.string	"end_specialization"
	.long	0x7fc1
	.string	"reset_specialization"
	.long	0x8022
	.string	"begin_explicit_instantiation"
	.long	0x8051
	.string	"end_explicit_instantiation"
	.long	0x8093
	.string	"maybe_process_partial_specialization"
	.long	0x81b8
	.string	"is_specialization_of"
	.long	0x8390
	.string	"print_candidates"
	.long	0x8698
	.string	"check_explicit_specialization"
	.long	0x894c
	.string	"maybe_check_template_type"
	.long	0x89af
	.string	"comp_template_parms"
	.long	0x8a91
	.string	"check_template_shadow"
	.long	0x8bff
	.string	"process_template_parm"
	.long	0x8ce8
	.string	"end_template_parm_list"
	.long	0x8d71
	.string	"end_template_decl"
	.long	0x8d95
	.string	"current_template_args"
	.long	0x92d6
	.string	"push_template_decl_real"
	.long	0x9432
	.string	"push_template_decl"
	.long	0x946f
	.string	"redeclare_class_template"
	.long	0x9adf
	.string	"comp_template_args"
	.long	0xa013
	.string	"lookup_template_function"
	.long	0xa0d4
	.string	"lookup_template_class"
	.long	0xa4d7
	.string	"uses_template_parms"
	.long	0xa513
	.string	"push_tinst_level"
	.long	0xa55b
	.string	"pop_tinst_level"
	.long	0xa5d6
	.string	"tinst_for_decl"
	.long	0xa8f5
	.string	"instantiate_class_template"
	.long	0xae6f
	.string	"tsubst_default_argument"
	.long	0xb3d0
	.string	"tsubst"
	.long	0xb7f4
	.string	"tsubst_copy"
	.long	0xba10
	.string	"tsubst_expr"
	.long	0xbb4e
	.string	"instantiate_template"
	.long	0xbc6d
	.string	"fn_type_unification"
	.long	0xc7ac
	.string	"mark_decl_instantiated"
	.long	0xc7f8
	.string	"more_specialized"
	.long	0xc886
	.string	"more_specialized_class"
	.long	0xca11
	.string	"get_bindings"
	.long	0xcb46
	.string	"most_specialized_instantiation"
	.long	0xcc6c
	.string	"most_general_template"
	.long	0xcd58
	.string	"do_decl_instantiation"
	.long	0xcdc1
	.string	"mark_class_instantiated"
	.long	0xce6a
	.string	"do_type_instantiation"
	.long	0xcfc7
	.string	"instantiate_decl"
	.long	0xd16b
	.string	"instantiate_pending_templates"
	.long	0xd385
	.string	"get_mostly_instantiated_function_type"
	.long	0xd467
	.string	"problematic_instantiation_changed"
	.long	0xd49f
	.string	"record_last_problematic_instantiation"
	.long	0xd4d7
	.string	"current_instantiation"
	.long	0xdb55
	.string	"processing_template_parmlist"
	.long	0xdbc3
	.string	"gt_ggc_r_gt_cp_pt_h"
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
.LASF61:
	.string	"specialization"
.LASF89:
	.string	"friend_type"
.LASF26:
	.string	"name"
.LASF87:
	.string	"template"
.LASF32:
	.string	"result"
.LASF95:
	.string	"return_type"
.LASF29:
	.string	"cannot_inline"
.LASF105:
	.string	"storage"
.LASF7:
	.string	"lang_flag_0"
.LASF9:
	.string	"lang_flag_2"
.LASF11:
	.string	"lang_flag_4"
.LASF13:
	.string	"lang_flag_6"
.LASF44:
	.string	"befriending_classes"
.LASF72:
	.string	"gen_tmpl"
.LASF57:
	.string	"parm"
.LASF42:
	.string	"is_partial_instantiation"
.LASF103:
	.string	"extern_p"
.LASF92:
	.string	"tmpl_args"
.LASF78:
	.string	"nargs"
.LASF49:
	.string	"mem_attrs"
.LASF35:
	.string	"bindings"
.LASF46:
	.string	"tmpl_spec_kind"
.LASF84:
	.string	"arglist"
.LASF40:
	.string	"interface_unknown"
.LASF76:
	.string	"inner_args"
.LASF71:
	.string	"is_friend"
.LASF83:
	.string	"parmparm"
.LASF102:
	.string	"arg_binfo"
.LASF90:
	.string	"new_parms"
.LASF0:
	.string	"common"
.LASF45:
	.string	"level"
.LASF28:
	.string	"lang_specific"
.LASF25:
	.string	"align"
.LASF34:
	.string	"sequence_rtl_expr"
.LASF60:
	.string	"new_args"
.LASF65:
	.string	"candidates"
.LASF38:
	.string	"cxx_saved_binding"
.LASF33:
	.string	"sequence_stack"
.LASF31:
	.string	"function_frequency"
.LASF8:
	.string	"lang_flag_1"
.LASF10:
	.string	"lang_flag_3"
.LASF14:
	.string	"lang_flag_7"
.LASF97:
	.string	"strict"
.LASF82:
	.string	"in_decl"
.LASF74:
	.string	"parm_depth"
.LASF3:
	.string	"unsigned int"
.LASF106:
	.string	"code_pattern"
.LASF20:
	.string	"abstract_origin"
.LASF94:
	.string	"arg_types"
.LASF23:
	.string	"pointer_depth"
.LASF41:
	.string	"use_template"
.LASF75:
	.string	"nparms"
.LASF48:
	.string	"unification_kind_t"
.LASF101:
	.string	"tempargs"
.LASF77:
	.string	"inner_parms"
.LASF63:
	.string	"targs"
.LASF56:
	.string	"parms"
.LASF24:
	.string	"user_align"
.LASF80:
	.string	"is_partial"
.LASF79:
	.string	"ntparms"
.LASF85:
	.string	"__len"
.LASF99:
	.string	"tparms"
.LASF81:
	.string	"complain"
.LASF21:
	.string	"size_unit"
.LASF2:
	.string	"type"
.LASF30:
	.string	"language"
.LASF6:
	.string	"chain"
.LASF39:
	.string	"interface_only"
.LASF18:
	.string	"value"
.LASF55:
	.string	"levels"
.LASF86:
	.string	"entering_scope"
.LASF52:
	.string	"spec"
.LASF104:
	.string	"explicit_args"
.LASF96:
	.string	"fntype"
.LASF98:
	.string	"converted_args"
.LASF5:
	.string	"built_in_class"
.LASF69:
	.string	"new_spec_types"
.LASF17:
	.string	"purpose"
.LASF12:
	.string	"lang_flag_5"
.LASF19:
	.string	"abstract_flag"
.LASF67:
	.string	"spec_types"
.LASF37:
	.string	"x_stmt_tree"
.LASF73:
	.string	"arg_depth"
.LASF27:
	.string	"context"
.LASF50:
	.string	"args"
.LASF4:
	.string	"offset"
.LASF36:
	.string	"data"
.LASF64:
	.string	"explicit_targs"
.LASF51:
	.string	"full_args"
.LASF91:
	.string	"argvec"
.LASF54:
	.string	"parmlist"
.LASF43:
	.string	"template_info"
.LASF70:
	.string	"new_type"
.LASF58:
	.string	"__FUNCTION__"
.LASF93:
	.string	"new_decl"
.LASF62:
	.string	"template_id"
.LASF100:
	.string	"sub_strict"
.LASF16:
	.string	"ht_identifier"
.LASF68:
	.string	"tmpl_types"
.LASF66:
	.string	"decl_arg_types"
.LASF88:
	.string	"type_decl"
.LASF53:
	.string	"tmpl"
.LASF59:
	.string	"extra_args"
.LASF22:
	.string	"attributes"
.LASF1:
	.string	"decl"
.LASF15:
	.string	"length"
.LASF47:
	.string	"tsubst_flags_t"
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
