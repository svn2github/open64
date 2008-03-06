	.file	"method.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl init_method
	.type	init_method, @function
init_method:
.LFB15:
	.file 1 "../../../kg++fe/gnu/cp/method.c"
	.loc 1 72 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$4, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 73 0
	call	init_mangle@PLT
	.loc 1 74 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	init_method, .-init_method
.globl set_mangled_name_for_decl
	.type	set_mangled_name_for_decl, @function
set_mangled_name_for_decl:
.LFB16:
	.loc 1 82 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$4, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 83 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L6
	.loc 1 87 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mangle_decl@PLT
.L6:
	.loc 1 88 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	set_mangled_name_for_decl, .-set_mangled_name_for_decl
.globl build_opfncall
	.type	build_opfncall, @function
build_opfncall:
.LFB17:
	.loc 1 119 0
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
	.loc 1 120 0
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
	call	build_new_op@PLT
	.loc 1 121 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	build_opfncall, .-build_opfncall
	.section	.rodata
	.align 4
.LC0:
	.string	"invalid use of member `%D' in static member function"
.LC1:
	.string	"invalid use of member `%D'"
	.align 4
.LC2:
	.string	"use of namespace `%D' as expression"
	.align 4
.LC3:
	.string	"use of class template `%T' as expression"
.LC4:
	.string	"`auto' variable"
.LC5:
	.string	"parameter"
	.align 4
.LC6:
	.string	"use of %s from containing function"
.LC7:
	.string	"  `%#D' declared here"
	.align 4
.LC8:
	.string	"request for member `%D' is ambiguous in multiple inheritance lattice"
	.text
.globl hack_identifier
	.type	hack_identifier, @function
hack_identifier:
.LFB18:
	.loc 1 145 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$84, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 148 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L10
	.loc 1 149 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L12
.L10:
	.loc 1 151 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 152 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L13
	.loc 1 154 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L15
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L17
.L15:
	.loc 1 156 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L18
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L18
	.loc 1 158 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 156 0
	jmp	.L21
.L18:
	.loc 1 164 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L21:
	.loc 1 166 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L12
.L17:
	.loc 1 168 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L22
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L24
.L22:
	movl	$0, -64(%ebp)
.L24:
	movl	-64(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movl	-64(%ebp), %edx
	movb	%al, 10(%edx)
	.loc 1 169 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L25
	.loc 1 170 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L27
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L29
.L27:
	movl	$0, -60(%ebp)
.L29:
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$40, (%esp)
	call	build_min_nt@PLT
	movl	%eax, 8(%ebp)
	jmp	.L39
.L25:
.LBB2:
	.loc 1 173 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 175 0
	jmp	.L31
.L32:
	.loc 1 178 0
	movl	-24(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 179 0
	jmp	.L33
.L34:
	.loc 1 180 0
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -24(%ebp)
.L33:
	.loc 1 179 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	je	.L34
.L31:
	.loc 1 175 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	context_for_name_lookup@PLT
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	je	.L32
	.loc 1 183 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	enforce_access@PLT
	.loc 1 184 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L36
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L38
.L36:
	movl	$0, -56(%ebp)
.L38:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %edx
	movl	%edx, (%esp)
	call	build_class_member_access_expr@PLT
	movl	%eax, 8(%ebp)
	jmp	.L39
.L13:
.LBE2:
	.loc 1 190 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L40
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L42
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L42
.L40:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L44
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L46
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L48
.L46:
	movl	8(%ebp), %eax
	movl	%eax, -52(%ebp)
.L48:
	movl	-52(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L42
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L50
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L52
.L50:
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
.L52:
	movl	-48(%ebp), %edx
	movl	136(%edx), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L44
.L42:
.LBB3:
	.loc 1 197 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L53
	.loc 1 198 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L55
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L57
.L55:
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
.L57:
	movl	-44(%ebp), %edx
	movl	%edx, 8(%ebp)
.L53:
	.loc 1 200 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	maybe_dummy_object@PLT
	movl	%eax, -20(%ebp)
	.loc 1 201 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_class_member_access_expr@PLT
	movl	%eax, 8(%ebp)
	.loc 1 190 0
	jmp	.L39
.L44:
.LBE3:
	.loc 1 203 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	really_overloaded_fn@PLT
	testl	%eax, %eax
	jne	.L39
	.loc 1 205 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L59
	.loc 1 207 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	mark_used@PLT
	jmp	.L39
.L59:
	.loc 1 208 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L61
.LBB4:
	.loc 1 211 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 212 0
	jmp	.L63
.L64:
	.loc 1 214 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	mark_used@PLT
	.loc 1 215 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L63:
	.loc 1 212 0
	cmpl	$0, -16(%ebp)
	je	.L39
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	je	.L64
	jmp	.L39
.L61:
.LBE4:
	.loc 1 218 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L67
	.loc 1 220 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 221 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L12
.L67:
	.loc 1 223 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L69
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L69
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L72
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L72
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L69
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L69
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L69
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L69
.L72:
	.loc 1 225 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 226 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L12
.L69:
	.loc 1 229 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used@PLT
.L39:
	.loc 1 231 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	je	.L78
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L78
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$37, %al
	jne	.L81
.L78:
.LBB5:
	.loc 1 234 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_function_context@PLT
	movl	%eax, -12(%ebp)
	.loc 1 235 0
	cmpl	$0, -12(%ebp)
	je	.L81
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -12(%ebp)
	je	.L81
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L81
	.loc 1 238 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L85
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	jmp	.L87
.L85:
	leal	.LC5@GOTOFF(%ebx), %edx
	movl	%edx, -40(%ebp)
.L87:
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 241 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 242 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L81:
.LBE5:
	.loc 1 246 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L88
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L88
	.loc 1 248 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L95
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L95
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L95
.LBB6:
	.loc 1 252 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, (%esp)
	call	currently_open_derived_class@PLT
	movl	%eax, -8(%ebp)
	.loc 1 253 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	enforce_access@PLT
	.loc 1 246 0
	jmp	.L95
.L88:
.LBE6:
	.loc 1 256 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L95
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L95
	.loc 1 259 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 262 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_candidates@PLT
	.loc 1 263 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L12
.L95:
	.loc 1 266 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L98
	.loc 1 267 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, 8(%ebp)
.L98:
	.loc 1 268 0
	movl	8(%ebp), %edx
	movl	%edx, -68(%ebp)
.L12:
	movl	-68(%ebp), %eax
	.loc 1 269 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	hack_identifier, .-hack_identifier
	.section	.rodata
	.type	__FUNCTION__.16671, @object
	.size	__FUNCTION__.16671, 11
__FUNCTION__.16671:
	.string	"make_thunk"
	.align 4
.LC9:
	.string	"../../../kg++fe/gnu/cp/method.c"
	.text
.globl make_thunk
	.type	make_thunk, @function
make_thunk:
.LFB19:
	.loc 1 282 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%ebx
.LCFI18:
	subl	$68, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 288 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L102
	leal	__FUNCTION__.16671@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$288, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L102:
	.loc 1 291 0
	cmpl	$0, 16(%ebp)
	je	.L104
	.loc 1 292 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	24(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	size_binop@PLT
	movl	%eax, -12(%ebp)
	jmp	.L106
.L104:
	.loc 1 298 0
	movl	$0, -12(%ebp)
.L106:
	.loc 1 300 0
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 303 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L107
.L108:
	.loc 1 304 0
	movl	-16(%ebp), %eax
	movl	84(%eax), %edx
	movl	80(%eax), %eax
	movl	%edx, %ecx
	xorl	-28(%ebp), %ecx
	xorl	-32(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L109
	movl	-16(%ebp), %eax
	movl	136(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	sete	%dl
	cmpl	$0, -12(%ebp)
	setne	%al
	xorl	%edx, %eax
	testb	%al, %al
	je	.L109
	movl	-16(%ebp), %eax
	movl	136(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L112
	movl	-16(%ebp), %eax
	movl	136(%eax), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	je	.L109
.L112:
	.loc 1 311 0
	movl	-16(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L114
.L109:
	.loc 1 303 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L107:
	cmpl	$0, -16(%ebp)
	jne	.L108
	.loc 1 316 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L116
	leal	__FUNCTION__.16671@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$316, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L116:
	.loc 1 318 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mangle_thunk@PLT
	movl	%eax, -20(%ebp)
	.loc 1 319 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$31, (%esp)
	call	build_decl@PLT
	movl	%eax, -16(%ebp)
	.loc 1 320 0
	movl	8(%ebp), %eax
	movl	136(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 136(%eax)
	.loc 1 321 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_dup_lang_specific_decl@PLT
	.loc 1 322 0
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 92(%edx)
	.loc 1 323 0
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 324 0
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
	.loc 1 325 0
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
	.loc 1 326 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	-16(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 327 0
	movl	flag_weak@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L118
	.loc 1 328 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	comdat_linkage@PLT
.L118:
	.loc 1 329 0
	movl	-16(%ebp), %edx
	movzbl	38(%edx), %eax
	orl	$16, %eax
	movb	%al, 38(%edx)
	movl	-16(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	44(%edx), %eax
	orl	$1, %eax
	movb	%al, 44(%edx)
	.loc 1 330 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 331 0
	movl	-16(%ebp), %ecx
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 80(%ecx)
	movl	%edx, 84(%ecx)
	.loc 1 332 0
	movl	-16(%ebp), %eax
	movl	136(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 335 0
	movl	-16(%ebp), %edx
	movzbl	38(%edx), %eax
	orl	$4, %eax
	movb	%al, 38(%edx)
	.loc 1 336 0
	movl	-16(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	orl	$16, %eax
	movb	%al, 6(%edx)
	.loc 1 337 0
	movl	-16(%ebp), %eax
	movl	136(%eax), %eax
	movl	$0, 48(%eax)
	.loc 1 338 0
	movl	-16(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	5(%edx), %eax
	andl	$-5, %eax
	movb	%al, 5(%edx)
	.loc 1 339 0
	movl	-16(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	5(%edx), %eax
	andl	$-3, %eax
	movb	%al, 5(%edx)
	.loc 1 341 0
	movl	-16(%ebp), %eax
	movl	136(%eax), %eax
	movl	$0, 24(%eax)
	.loc 1 342 0
	movl	-16(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$1, %eax
	movb	%al, 33(%edx)
	.loc 1 343 0
	movl	-16(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 346 0
	movl	-16(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$4, %eax
	movb	%al, 33(%edx)
	.loc 1 348 0
	movl	-16(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	44(%edx), %eax
	andl	$-3, %eax
	movb	%al, 44(%edx)
	.loc 1 349 0
	movl	-16(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$-9, %eax
	movb	%al, 33(%edx)
	.loc 1 350 0
	movl	-16(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	(%edx), %eax
	andl	$-2, %eax
	movb	%al, (%edx)
	.loc 1 352 0
	movl	-16(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-2, %eax
	movb	%al, 6(%edx)
	.loc 1 354 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 355 0
	movl	8(%ebp), %eax
	movl	136(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 357 0
	movl	-16(%ebp), %eax
	movl	%eax, -44(%ebp)
.L114:
	movl	-44(%ebp), %eax
	.loc 1 358 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	make_thunk, .-make_thunk
	.section	.rodata
.LC10:
	.string	"LTHUNK"
.LC11:
	.string	"$"
.LC12:
	.string	"*%s%s%ld"
	.text
	.type	make_alias_for_thunk, @function
make_alias_for_thunk:
.LFB20:
	.loc 1 366 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	pushl	%esi
.LCFI22:
	pushl	%ebx
.LCFI23:
	subl	$304, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -284(%ebp)
	.loc 1 366 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 370 0
	movl	thunk_labelno@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-268(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 371 0
	movl	thunk_labelno@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, thunk_labelno@GOTOFF(%ebx)
	.loc 1 372 0
	movl	-284(%ebp), %eax
	movl	4(%eax), %esi
	leal	-268(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$31, (%esp)
	call	build_decl@PLT
	movl	%eax, -272(%ebp)
	.loc 1 374 0
	movl	-284(%ebp), %eax
	movl	136(%eax), %edx
	movl	-272(%ebp), %eax
	movl	%edx, 136(%eax)
	.loc 1 375 0
	movl	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_dup_lang_specific_decl@PLT
	.loc 1 376 0
	movl	-272(%ebp), %eax
	movl	$0, 56(%eax)
	.loc 1 377 0
	movl	-284(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	-272(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	9(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 378 0
	movl	-284(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	-272(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	9(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 379 0
	movl	-272(%ebp), %edx
	movzbl	10(%edx), %eax
	andl	$-9, %eax
	movb	%al, 10(%edx)
	.loc 1 380 0
	movl	-272(%ebp), %edx
	movzbl	38(%edx), %eax
	orl	$4, %eax
	movb	%al, 38(%edx)
	.loc 1 381 0
	movl	-272(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	orl	$16, %eax
	movb	%al, 6(%edx)
	.loc 1 382 0
	movl	-272(%ebp), %edx
	movzbl	38(%edx), %eax
	orl	$8, %eax
	movb	%al, 38(%edx)
	.loc 1 383 0
	movl	-272(%ebp), %eax
	movl	136(%eax), %eax
	movl	$0, 48(%eax)
	.loc 1 384 0
	movl	-272(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	5(%edx), %eax
	andl	$-5, %eax
	movb	%al, 5(%edx)
	.loc 1 385 0
	movl	-272(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	5(%edx), %eax
	andl	$-3, %eax
	movb	%al, 5(%edx)
	.loc 1 386 0
	movl	-272(%ebp), %eax
	movl	136(%eax), %eax
	movl	$0, 24(%eax)
	.loc 1 387 0
	movl	-272(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$-2, %eax
	movb	%al, 33(%edx)
	.loc 1 388 0
	movl	-272(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 389 0
	movl	-272(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$4, %eax
	movb	%al, 33(%edx)
	.loc 1 390 0
	movl	-272(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	44(%edx), %eax
	andl	$-3, %eax
	movb	%al, 44(%edx)
	.loc 1 391 0
	movl	-272(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$-9, %eax
	movb	%al, 33(%edx)
	.loc 1 392 0
	movl	-272(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	(%edx), %eax
	andl	$-2, %eax
	movb	%al, (%edx)
	.loc 1 393 0
	movl	-272(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-2, %eax
	movb	%al, 6(%edx)
	.loc 1 394 0
	movl	-272(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-7, %eax
	movb	%al, 6(%edx)
	.loc 1 395 0
	movl	-272(%ebp), %edx
	movzbl	37(%edx), %eax
	andl	$-65, %eax
	movb	%al, 37(%edx)
	.loc 1 396 0
	movl	-272(%ebp), %eax
	movl	136(%eax), %eax
	movl	$0, 8(%eax)
	.loc 1 397 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-272(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 398 0
	movl	-272(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$4, %eax
	movb	%al, 9(%edx)
	.loc 1 399 0
	movl	-272(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 400 0
	movl	-272(%ebp), %eax
	movl	52(%eax), %edx
	movl	-272(%ebp), %eax
	movl	%edx, 92(%eax)
	.loc 1 401 0
	movl	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	.loc 1 402 0
	movl	flag_syntax_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L122
	.loc 1 403 0
	movl	-284(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, 4(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_alias@PLT
.L122:
	.loc 1 404 0
	movl	-272(%ebp), %eax
	.loc 1 405 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L125
	call	__stack_chk_fail_local
.L125:
	addl	$304, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE20:
	.size	make_alias_for_thunk, .-make_alias_for_thunk
	.section	.rodata
	.type	__FUNCTION__.16791, @object
	.size	__FUNCTION__.16791, 10
__FUNCTION__.16791:
	.string	"use_thunk"
	.align 4
.LC13:
	.string	"generic thunk code fails for method `%#D' which uses `...'"
	.text
.globl use_thunk
	.type	use_thunk, @function
use_thunk:
.LFB21:
	.loc 1 418 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	pushl	%esi
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$112, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 424 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L162
	.loc 1 427 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 428 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L162
	.loc 1 434 0
	movl	8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$4, %eax
	movb	%al, 9(%edx)
	.loc 1 438 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 439 0
	movl	-40(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$4, %eax
	movb	%al, 9(%edx)
	.loc 1 440 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used@PLT
	.loc 1 441 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	.loc 1 442 0
	cmpl	$0, 12(%ebp)
	je	.L162
	.loc 1 446 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	make_alias_for_thunk
	movl	%eax, -36(%ebp)
	.loc 1 451 0
	movl	8(%ebp), %eax
	movl	84(%eax), %edx
	movl	80(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 452 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 454 0
	cmpl	$0, -32(%ebp)
	je	.L131
	.loc 1 456 0
	movl	$0, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 459 0
	movl	-56(%ebp), %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	jne	.L135
	.loc 1 460 0
	leal	__FUNCTION__.16791@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$460, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L131:
	.loc 1 463 0
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
.L135:
	.loc 1 466 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used@PLT
	.loc 1 468 0
	movl	8(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$-2, %eax
	movb	%al, 33(%edx)
	.loc 1 471 0
	movl	-40(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 473 0
	movl	flag_syntax_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L136
	.loc 1 475 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$64, %edx
	movb	%dl, 9(%eax)
	.loc 1 476 0
	jmp	.L162
.L136:
	.loc 1 479 0
	call	push_to_top_level@PLT
	.loc 1 482 0
	movl	targetm@GOT(%ebx), %eax
	movzbl	244(%eax), %eax
	testb	%al, %al
	je	.L138
	.loc 1 484 0
	movl	flag_function_sections@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_unique_section@PLT
	.loc 1 486 0
	movl	-40(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L138
	movl	-40(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L138
	.loc 1 488 0
	movl	flag_function_sections@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_unique_section@PLT
	.loc 1 491 0
	movl	-40(%ebp), %eax
	movl	96(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 96(%eax)
.L138:
	.loc 1 498 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 72(%eax)
	.loc 1 499 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gxx_emits_decl@PLT
	.loc 1 504 0
	movl	$5, (%esp)
	call	make_node@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 505 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, 20(%edx)
	.loc 1 508 0
	movl	targetm@GOT(%ebx), %eax
	movl	108(%eax), %ecx
	movl	-36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
	testb	%al, %al
	je	.L142
.LBB7:
	.loc 1 512 0
	movl	current_function_decl@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 513 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$37, (%esp)
	call	build_decl@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 515 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L144
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L146
.L144:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -76(%ebp)
.L146:
	movl	-76(%ebp), %edx
	movl	4(%edx), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 516 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	init_function_start@PLT
	.loc 1 517 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	297(%edx), %eax
	orl	$16, %eax
	movb	%al, 297(%edx)
	.loc 1 518 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_start_function@PLT
	.loc 1 520 0
	movl	targetm@GOT(%ebx), %eax
	movl	104(%eax), %esi
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-36(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	*%esi
	.loc 1 523 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_end_function@PLT
	.loc 1 524 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 525 0
	movl	cfun@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 528 0
	movl	immediate_size_expand@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	immediate_size_expand@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 529 0
	movl	8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$64, %eax
	movb	%al, 9(%edx)
	jmp	.L147
.L142:
.LBE7:
.LBB8:
	.loc 1 539 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	varargs_function_p@PLT
	testl	%eax, %eax
	je	.L148
	.loc 1 540 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L148:
	.loc 1 544 0
	movl	$0, -20(%ebp)
	.loc 1 545 0
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L150
.L151:
.LBB9:
	.loc 1 547 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -16(%ebp)
	.loc 1 548 0
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 549 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 56(%edx)
	.loc 1 550 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.LBE9:
	.loc 1 545 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L150:
	cmpl	$0, -24(%ebp)
	jne	.L151
	.loc 1 552 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, -24(%ebp)
	.loc 1 553 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 60(%edx)
	.loc 1 554 0
	movl	8(%ebp), %eax
	movl	$0, 64(%eax)
	.loc 1 556 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	start_function@PLT
	.loc 1 560 0
	movl	$1, 8(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -20(%ebp)
	.loc 1 561 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -20(%ebp)
	.loc 1 565 0
	cmpl	$0, -32(%ebp)
	je	.L153
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L153
.LBB10:
	.loc 1 569 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, -20(%ebp)
	.loc 1 570 0
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 572 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, -20(%ebp)
	.loc 1 577 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, -20(%ebp)
	.loc 1 579 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, -20(%ebp)
	.loc 1 581 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, -20(%ebp)
	.loc 1 583 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -20(%ebp)
.L153:
.LBE10:
	.loc 1 590 0
	movl	$0, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -20(%ebp)
	.loc 1 591 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L156
.L157:
	.loc 1 592 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -20(%ebp)
	.loc 1 591 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L156:
	cmpl	$0, -24(%ebp)
	jne	.L157
	.loc 1 593 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, -20(%ebp)
	.loc 1 594 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build_call@PLT
	movl	%eax, -20(%ebp)
	.loc 1 595 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L159
	.loc 1 596 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	jmp	.L161
.L159:
	.loc 1 598 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_return_stmt@PLT
.L161:
	.loc 1 602 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	.loc 1 605 0
	movl	8(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$64, %eax
	movb	%al, 33(%edx)
	.loc 1 607 0
	movl	$0, (%esp)
	call	finish_function@PLT
	movl	%eax, (%esp)
	call	expand_body@PLT
.L147:
.LBE8:
	.loc 1 610 0
	call	pop_from_top_level@PLT
.L162:
	.loc 1 611 0
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE21:
	.size	use_thunk, .-use_thunk
	.section	.rodata
.LC14:
	.string	"_vptr."
	.text
	.type	do_build_copy_constructor, @function
do_build_copy_constructor:
.LFB22:
	.loc 1 620 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	pushl	%edi
.LCFI32:
	pushl	%esi
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$108, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 621 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_artificial_parms_for@PLT
	movl	%eax, -64(%ebp)
	.loc 1 624 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, -64(%ebp)
	.loc 1 626 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L164
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L164
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	is_empty_class@PLT
	testl	%eax, %eax
	je	.L164
	jmp	.L207
.L164:
	.loc 1 630 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L169
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L169
	.loc 1 632 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L172
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L174
.L172:
	movl	$0, -84(%ebp)
.L174:
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$50, (%esp)
	call	build@PLT
	movl	%eax, -60(%ebp)
	.loc 1 633 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	.loc 1 630 0
	jmp	.L207
.L169:
.LBB11:
	.loc 1 637 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 638 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L175
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L177
.L175:
	movl	$0, -80(%ebp)
.L177:
	movl	-80(%ebp), %ecx
	movl	%ecx, -52(%ebp)
	.loc 1 639 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 640 0
	movl	$0, -44(%ebp)
	.loc 1 641 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, -40(%ebp)
	.loc 1 649 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	92(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L178
.L179:
.LBB12:
	.loc 1 652 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 654 0
	movl	$1, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build_base_path@PLT
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -44(%ebp)
.LBE12:
	.loc 1 650 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
.L178:
	.loc 1 649 0
	cmpl	$0, -60(%ebp)
	jne	.L179
	.loc 1 662 0
	movl	$0, -36(%ebp)
	jmp	.L181
.L182:
.LBB13:
	.loc 1 664 0
	movl	-36(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 665 0
	movl	-28(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L183
	.loc 1 668 0
	movl	$1, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build_base_path@PLT
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -44(%ebp)
.L183:
.LBE13:
	.loc 1 662 0
	addl	$1, -36(%ebp)
.L181:
	movl	-36(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jl	.L182
	.loc 1 676 0
	jmp	.L186
.L187:
.LBB14:
	.loc 1 679 0
	movl	-56(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 682 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L188
	.loc 1 685 0
	movl	-64(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 686 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L190
	.loc 1 688 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -88(%ebp)
	leal	.LC14@GOTOFF(%ebx), %esi
	movl	%esi, -92(%ebp)
	movl	$6, -96(%ebp)
	cld
	movl	-88(%ebp), %esi
	movl	-92(%ebp), %edi
	movl	-96(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L188
	.loc 1 692 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	48(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L188
	.loc 1 693 0
	jmp	.L194
.L190:
	.loc 1 695 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	cmpl	$0, -60(%ebp)
	je	.L188
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L196
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L188
.L196:
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L198
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L198
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L198
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L198
	movl	-60(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L188
.L198:
	movl	-60(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L188
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L188
.L194:
	.loc 1 708 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 709 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L204
	.loc 1 710 0
	movl	$3, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, -16(%ebp)
.L204:
	.loc 1 711 0
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$40, (%esp)
	call	build@PLT
	movl	%eax, -24(%ebp)
	.loc 1 712 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -24(%ebp)
	.loc 1 714 0
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -44(%ebp)
.L188:
.LBE14:
	.loc 1 676 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L186:
	cmpl	$0, -56(%ebp)
	jne	.L187
	.loc 1 717 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_mem_initializers@PLT
.L207:
.LBE11:
	.loc 1 719 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	do_build_copy_constructor, .-do_build_copy_constructor
	.section	.rodata
	.align 4
.LC15:
	.string	"non-static const member `%#D', can't use default assignment operator"
	.align 4
.LC16:
	.string	"non-static reference member `%#D', can't use default assignment operator"
	.text
	.type	do_build_assign_ref, @function
do_build_assign_ref:
.LFB23:
	.loc 1 724 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	pushl	%edi
.LCFI38:
	pushl	%esi
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$108, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 725 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 728 0
	movl	$0, (%esp)
	call	begin_compound_stmt@PLT
	movl	%eax, -56(%ebp)
	.loc 1 729 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, -60(%ebp)
	.loc 1 731 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L209
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L209
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	is_empty_class@PLT
	testl	%eax, %eax
	je	.L209
	jmp	.L213
.L209:
	.loc 1 735 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L214
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L214
.LBB15:
	.loc 1 737 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L217
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L219
.L217:
	movl	$0, -88(%ebp)
.L219:
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$49, (%esp)
	call	build@PLT
	movl	%eax, -52(%ebp)
	.loc 1 738 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	.loc 1 735 0
	jmp	.L213
.L214:
.LBE15:
.LBB16:
	.loc 1 743 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, -44(%ebp)
	.loc 1 747 0
	movl	$0, -40(%ebp)
	jmp	.L220
.L221:
.LBB17:
	.loc 1 752 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %edx
	movl	-40(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -36(%ebp)
	.loc 1 755 0
	movl	$1, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build_base_path@PLT
	movl	%eax, -32(%ebp)
	.loc 1 757 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -84(%ebp)
	movl	assignment_operator_name_info@GOT(%ebx), %eax
	movl	1872(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L222
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L224
.L222:
	movl	$0, -76(%ebp)
.L224:
	movl	$11, 16(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-84(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-80(%ebp), %esi
	movl	%esi, 4(%esp)
	movl	-76(%ebp), %edi
	movl	%edi, (%esp)
	call	build_special_member_call@PLT
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
.LBE17:
	.loc 1 747 0
	addl	$1, -40(%ebp)
.L220:
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L225
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L227
.L225:
	movl	$0, -72(%ebp)
.L227:
	movl	-72(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jg	.L221
	.loc 1 767 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 768 0
	jmp	.L229
.L230:
.LBB18:
	.loc 1 772 0
	movl	-48(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 774 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L231
	movl	-16(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L231
	.loc 1 777 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	andl	$1, %eax
	testb	%al, %al
	je	.L234
	.loc 1 779 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 780 0
	jmp	.L231
.L234:
	.loc 1 782 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L236
	.loc 1 784 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 785 0
	jmp	.L231
.L236:
	.loc 1 788 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L238
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L240
.L238:
	movl	$0, -68(%ebp)
.L240:
	movl	-68(%ebp), %ecx
	movl	%ecx, -28(%ebp)
	.loc 1 789 0
	movl	-60(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 791 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L241
	.loc 1 793 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -92(%ebp)
	leal	.LC14@GOTOFF(%ebx), %esi
	movl	%esi, -96(%ebp)
	movl	$6, -100(%ebp)
	cld
	movl	-92(%ebp), %esi
	movl	-96(%ebp), %edi
	movl	-100(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L231
	.loc 1 797 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	48(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L231
	.loc 1 798 0
	jmp	.L245
.L241:
	.loc 1 800 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L231
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L247
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L231
.L247:
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L249
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L249
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L249
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L249
	movl	-20(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L231
.L249:
	movl	-20(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L231
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L231
.L245:
	.loc 1 808 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$40, (%esp)
	call	build@PLT
	movl	%eax, -28(%ebp)
	.loc 1 809 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	$3, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$40, (%esp)
	call	build@PLT
	movl	%eax, -24(%ebp)
	.loc 1 813 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L255
	.loc 1 814 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$117, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	jmp	.L231
.L255:
	.loc 1 816 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$49, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
.L231:
.LBE18:
	.loc 1 769 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L229:
	.loc 1 768 0
	cmpl	$0, -48(%ebp)
	jne	.L230
.L213:
.LBE16:
	.loc 1 820 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L257
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L259
.L257:
	movl	$0, -64(%ebp)
.L259:
	movl	-64(%ebp), %esi
	movl	%esi, (%esp)
	call	finish_return_stmt@PLT
	.loc 1 821 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	finish_compound_stmt@PLT
	.loc 1 822 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE23:
	.size	do_build_assign_ref, .-do_build_assign_ref
.globl synthesize_method
	.type	synthesize_method, @function
synthesize_method:
.LFB24:
	.loc 1 827 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$52, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 828 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 829 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_function_context@PLT
	movl	%eax, -24(%ebp)
	.loc 1 830 0
	movl	$1, -20(%ebp)
	.loc 1 833 0
	movl	at_eof@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L262
	.loc 1 834 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	import_export_decl@PLT
.L262:
	.loc 1 839 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L264
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L266
.L264:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L266
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L266
	.loc 1 841 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	synthesize_method@PLT
	.loc 1 842 0
	jmp	.L287
.L266:
	.loc 1 845 0
	cmpl	$0, -24(%ebp)
	jne	.L270
	.loc 1 846 0
	call	push_to_top_level@PLT
	jmp	.L272
.L270:
	.loc 1 847 0
	cmpl	$0, -28(%ebp)
	je	.L272
	.loc 1 848 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	push_function_context_to@PLT
.L272:
	.loc 1 856 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 857 0
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 859 0
	movl	interface_unknown@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 860 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	start_function@PLT
	.loc 1 861 0
	call	clear_last_expr@PLT
	.loc 1 862 0
	call	begin_function_body@PLT
	movl	%eax, -16(%ebp)
	.loc 1 864 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L274
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	40(%eax), %eax
	cmpl	$117, %eax
	jne	.L274
	.loc 1 866 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_build_assign_ref
	.loc 1 867 0
	movl	$0, -20(%ebp)
	.loc 1 864 0
	jmp	.L277
.L274:
	.loc 1 869 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L277
.LBB19:
	.loc 1 871 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_artificial_parms_for@PLT
	movl	%eax, -12(%ebp)
	.loc 1 872 0
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L279
	.loc 1 873 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_build_copy_constructor
	jmp	.L277
.L279:
	.loc 1 874 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L277
	.loc 1 875 0
	movl	$0, (%esp)
	call	finish_mem_initializers@PLT
.L277:
.LBE19:
	.loc 1 880 0
	cmpl	$0, -20(%ebp)
	je	.L282
.LBB20:
	.loc 1 883 0
	movl	$0, (%esp)
	call	begin_compound_stmt@PLT
	movl	%eax, -8(%ebp)
	.loc 1 884 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	finish_compound_stmt@PLT
.L282:
.LBE20:
	.loc 1 887 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_function_body@PLT
	.loc 1 888 0
	movl	$0, (%esp)
	call	finish_function@PLT
	movl	%eax, (%esp)
	call	expand_body@PLT
	.loc 1 890 0
	call	extract_interface_info@PLT
	.loc 1 891 0
	cmpl	$0, -24(%ebp)
	jne	.L284
	.loc 1 892 0
	call	pop_from_top_level@PLT
	jmp	.L287
.L284:
	.loc 1 893 0
	cmpl	$0, -28(%ebp)
	je	.L287
	.loc 1 894 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	pop_function_context_from@PLT
.L287:
	.loc 1 895 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	synthesize_method, .-synthesize_method
	.type	synthesize_exception_spec, @function
synthesize_exception_spec:
.LFB25:
	.loc 1 908 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$68, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 909 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 910 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 911 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L289
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L291
.L289:
	movl	$0, -56(%ebp)
.L291:
	movl	-56(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 912 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 914 0
	movl	$0, -40(%ebp)
	jmp	.L292
.L293:
.LBB21:
	.loc 1 916 0
	movl	-40(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 917 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	movl	%eax, -24(%ebp)
	.loc 1 918 0
	cmpl	$0, -24(%ebp)
	je	.L294
.LBB22:
	.loc 1 920 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 922 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_exception_specifiers@PLT
	movl	%eax, -48(%ebp)
.L294:
.LBE22:
.LBE21:
	.loc 1 914 0
	addl	$1, -40(%ebp)
.L292:
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jne	.L293
	.loc 1 925 0
	jmp	.L297
.L298:
.LBB23:
	.loc 1 927 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 930 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L299
	movl	-44(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L299
	.loc 1 932 0
	jmp	.L302
.L303:
	.loc 1 933 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L302:
	.loc 1 932 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L303
	.loc 1 934 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L299
	.loc 1 937 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	movl	%eax, -12(%ebp)
	.loc 1 938 0
	cmpl	$0, -12(%ebp)
	je	.L299
.LBB24:
	.loc 1 940 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 942 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_exception_specifiers@PLT
	movl	%eax, -48(%ebp)
.L299:
.LBE24:
.LBE23:
	.loc 1 925 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L297:
	cmpl	$0, -44(%ebp)
	jne	.L298
	.loc 1 945 0
	movl	-48(%ebp), %eax
	.loc 1 946 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	synthesize_exception_spec, .-synthesize_exception_spec
	.type	locate_dtor, @function
locate_dtor:
.LFB26:
	.loc 1 954 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	subl	$20, %esp
.LCFI52:
	.loc 1 957 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L310
	.loc 1 958 0
	movl	$0, -20(%ebp)
	jmp	.L312
.L310:
	.loc 1 959 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 961 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
.L312:
	movl	-20(%ebp), %eax
	.loc 1 962 0
	leave
	ret
.LFE26:
	.size	locate_dtor, .-locate_dtor
	.type	locate_ctor, @function
locate_ctor:
.LFB27:
	.loc 1 970 0
	pushl	%ebp
.LCFI53:
	movl	%esp, %ebp
.LCFI54:
	pushl	%ebx
.LCFI55:
	subl	$36, %esp
.LCFI56:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 973 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L315
	.loc 1 974 0
	movl	$0, -32(%ebp)
	jmp	.L317
.L315:
	.loc 1 976 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 978 0
	jmp	.L318
.L319:
.LBB25:
	.loc 1 980 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L320
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L322
.L320:
	movl	-16(%ebp), %eax
	movl	%eax, -28(%ebp)
.L322:
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 981 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 983 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sufficient_parms_p@PLT
	testl	%eax, %eax
	je	.L323
	.loc 1 984 0
	movl	-12(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L317
.L323:
.LBE25:
	.loc 1 978 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L325
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L327
.L325:
	movl	$0, -24(%ebp)
.L327:
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
.L318:
	cmpl	$0, -16(%ebp)
	jne	.L319
	.loc 1 986 0
	movl	$0, -32(%ebp)
.L317:
	movl	-32(%ebp), %eax
	.loc 1 987 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	locate_ctor, .-locate_ctor
	.type	locate_copy, @function
locate_copy:
.LFB28:
	.loc 1 1003 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	pushl	%ebx
.LCFI59:
	subl	$84, %esp
.LCFI60:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1004 0
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1006 0
	movl	$-1, -36(%ebp)
	.loc 1 1007 0
	movl	$0, -32(%ebp)
	.loc 1 1008 0
	movl	$0, -28(%ebp)
	.loc 1 1010 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L331
	.loc 1 1012 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L335
	.loc 1 1013 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_fnfields_1@PLT
	movl	%eax, -36(%ebp)
	jmp	.L335
.L331:
	.loc 1 1015 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L335
	.loc 1 1016 0
	movl	$0, -36(%ebp)
.L335:
	.loc 1 1017 0
	cmpl	$0, -36(%ebp)
	jns	.L337
	.loc 1 1018 0
	movl	$0, -64(%ebp)
	jmp	.L339
.L337:
	.loc 1 1019 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %edx
	movl	-36(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1021 0
	jmp	.L340
.L341:
.LBB26:
	.loc 1 1023 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L342
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L344
.L342:
	movl	-40(%ebp), %eax
	movl	%eax, -60(%ebp)
.L344:
	movl	-60(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1024 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1029 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1030 0
	cmpl	$0, -20(%ebp)
	je	.L345
	.loc 1 1032 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1033 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L347
	.loc 1 1034 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L347:
	.loc 1 1035 0
	movl	8(%ebp), %eax
	movl	72(%eax), %edx
	movl	-16(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L345
	.loc 1 1037 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sufficient_parms_p@PLT
	testl	%eax, %eax
	je	.L345
	.loc 1 1039 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1040 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	notl	%eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L345
	.loc 1 1042 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	notl	%eax
	andl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1043 0
	cmpl	$0, -32(%ebp)
	je	.L352
	cmpl	$0, -28(%ebp)
	je	.L354
	cmpl	$0, -12(%ebp)
	jne	.L354
.L352:
	.loc 1 1045 0
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1046 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1043 0
	jmp	.L345
.L354:
	.loc 1 1050 0
	movl	$0, -64(%ebp)
	jmp	.L339
.L345:
.LBE26:
	.loc 1 1021 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L356
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L358
.L356:
	movl	$0, -56(%ebp)
.L358:
	movl	-56(%ebp), %eax
	movl	%eax, -40(%ebp)
.L340:
	cmpl	$0, -40(%ebp)
	jne	.L341
	.loc 1 1052 0
	movl	-32(%ebp), %eax
	movl	%eax, -64(%ebp)
.L339:
	movl	-64(%ebp), %eax
	.loc 1 1053 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	locate_copy, .-locate_copy
	.section	.rodata
	.type	__FUNCTION__.17502, @object
	.size	__FUNCTION__.17502, 22
__FUNCTION__.17502:
	.string	"implicitly_declare_fn"
.LC17:
	.string	"_ctor_arg"
	.text
.globl implicitly_declare_fn
	.type	implicitly_declare_fn, @function
implicitly_declare_fn:
.LFB29:
	.loc 1 1065 0
	pushl	%ebp
.LCFI61:
	movl	%esp, %ebp
.LCFI62:
	pushl	%esi
.LCFI63:
	pushl	%ebx
.LCFI64:
	subl	$80, %esp
.LCFI65:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1066 0
	movl	$0, -44(%ebp)
	.loc 1 1067 0
	movl	$0, -36(%ebp)
	.loc 1 1068 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1069 0
	movl	$0, -28(%ebp)
	.loc 1 1070 0
	movl	$0, -24(%ebp)
	.loc 1 1071 0
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	constructor_name@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1073 0
	movl	8(%ebp), %eax
	movl	%eax, -60(%ebp)
	cmpl	$3, -60(%ebp)
	ja	.L366
	cmpl	$2, -60(%ebp)
	jae	.L364
	cmpl	$1, -60(%ebp)
	je	.L363
	jmp	.L362
.L366:
	cmpl	$4, -60(%ebp)
	je	.L365
	jmp	.L362
.L365:
	.loc 1 1077 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$92, (%esp)
	call	build_nt@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1078 0
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1079 0
	movl	$0, 8(%esp)
	leal	locate_dtor@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	synthesize_exception_spec
	movl	%eax, -32(%ebp)
	.loc 1 1080 0
	jmp	.L367
.L363:
	.loc 1 1084 0
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1085 0
	movl	$0, 8(%esp)
	leal	locate_ctor@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	synthesize_exception_spec
	movl	%eax, -32(%ebp)
	.loc 1 1086 0
	jmp	.L367
.L364:
.LBB27:
	.loc 1 1092 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1094 0
	movl	$1, -24(%ebp)
	.loc 1 1095 0
	movl	$0, -52(%ebp)
	.loc 1 1096 0
	movl	$0, -48(%ebp)
	.loc 1 1097 0
	cmpl	$3, 8(%ebp)
	jne	.L368
	.loc 1 1099 0
	movl	$1, -28(%ebp)
	.loc 1 1100 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1102 0
	movl	assignment_operator_name_info@GOT(%ebx), %eax
	movl	1872(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1103 0
	movl	-20(%ebp), %eax
	movl	%eax, -52(%ebp)
.L368:
	.loc 1 1105 0
	cmpl	$0, 16(%ebp)
	je	.L370
	.loc 1 1107 0
	movl	$1, -48(%ebp)
	.loc 1 1108 0
	movl	$1, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	%eax, -16(%ebp)
.L370:
	.loc 1 1111 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_reference_type@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1112 0
	movl	$9, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%eax, %esi
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	hash_tree_chain@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1114 0
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1116 0
	leal	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	locate_copy@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	synthesize_exception_spec
	movl	%eax, -32(%ebp)
	.loc 1 1117 0
	jmp	.L367
.L362:
.LBE27:
	.loc 1 1120 0
	leal	__FUNCTION__.17502@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1120, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L367:
	.loc 1 1123 0
	movl	-36(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$4, %eax
	movb	%al, 11(%edx)
.LBB28:
	.loc 1 1126 0
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	make_call_declarator@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1128 0
	cmpl	$0, -28(%ebp)
	je	.L372
	.loc 1 1129 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_nt@PLT
	movl	%eax, -12(%ebp)
.L372:
	.loc 1 1131 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	grokfield@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1132 0
	cmpl	$0, -24(%ebp)
	je	.L374
	.loc 1 1133 0
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_artificial_parms_for@PLT
	movl	%eax, %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
.L374:
.LBE28:
	.loc 1 1136 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L376
	leal	__FUNCTION__.17502@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1136, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L376:
	.loc 1 1138 0
	movl	-40(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 1139 0
	movl	-40(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	orl	$16, %eax
	movb	%al, 6(%edx)
	.loc 1 1140 0
	movl	-40(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	(%edx), %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 1141 0
	movl	-40(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$8, %eax
	movb	%al, 33(%edx)
	.loc 1 1142 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	defer_fn@PLT
	.loc 1 1144 0
	movl	-40(%ebp), %eax
	.loc 1 1145 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE29:
	.size	implicitly_declare_fn, .-implicitly_declare_fn
.globl skip_artificial_parms_for
	.type	skip_artificial_parms_for, @function
skip_artificial_parms_for:
.LFB30:
	.loc 1 1153 0
	pushl	%ebp
.LCFI66:
	movl	%esp, %ebp
.LCFI67:
	subl	$4, %esp
.LCFI68:
	.loc 1 1154 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L380
	.loc 1 1155 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1159 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L382
	jmp	.L383
.L380:
	.loc 1 1157 0
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L384
.L382:
	.loc 1 1160 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
.L383:
	.loc 1 1161 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L385
	.loc 1 1162 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
.L385:
	.loc 1 1163 0
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
.L384:
	movl	-4(%ebp), %eax
	.loc 1 1164 0
	leave
	ret
.LFE30:
	.size	skip_artificial_parms_for, .-skip_artificial_parms_for
	.local	thunk_labelno
	.comm	thunk_labelno,4,4
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
	.long	.LCFI24-.LCFI21
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
	.long	.LCFI25-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI29-.LCFI26
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI35-.LCFI31
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
	.long	.LCFI36-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI41-.LCFI37
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.align 4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI53-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI56-.LCFI54
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
	.long	.LCFI57-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI60-.LCFI58
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
	.long	.LCFI65-.LCFI62
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.align 4
.LEFDE30:
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
	.file 15 "../../../kg++fe/gnu/output.h"
	.file 16 "/usr/include/stdio.h"
	.file 17 "/usr/include/libio.h"
	.file 18 "/usr/include/bits/types.h"
	.file 19 "../../../kg++fe/gnu/flags.h"
	.file 20 "../../../kg++fe/gnu/target.h"
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
	.long	.LCFI25-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI25-.Ltext0
	.long	.LCFI26-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI26-.Ltext0
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
	.long	.LCFI36-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI36-.Ltext0
	.long	.LCFI37-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI37-.Ltext0
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
	.long	.LCFI53-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI53-.Ltext0
	.long	.LCFI54-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI54-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.section	.debug_info
	.long	0x91f3
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cp/method.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa9
	.uleb128 0x3
	.byte	0x4
	.long	0xaf
	.uleb128 0x4
	.long	0x19f
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x4
	.byte	0x84
	.long	0x6ea6
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
	.long	0x7f0
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x78d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1ac
	.uleb128 0x3
	.byte	0x4
	.long	0x1b2
	.uleb128 0x4
	.long	0x1e7
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x4
	.byte	0xf2
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x4
	.byte	0xf3
	.long	0x78e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1f3
	.uleb128 0x3
	.byte	0x4
	.long	0x1f9
	.uleb128 0x7
	.long	0x2cb
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x3
	.value	0x887
	.long	0x30f8
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x3
	.value	0x888
	.long	0x3416
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x3
	.value	0x889
	.long	0x345e
	.uleb128 0x9
	.string	"vector"
	.byte	0x3
	.value	0x88a
	.long	0x3581
	.uleb128 0x9
	.string	"string"
	.byte	0x3
	.value	0x88b
	.long	0x34bf
	.uleb128 0x9
	.string	"complex"
	.byte	0x3
	.value	0x88c
	.long	0x352c
	.uleb128 0x8
	.long	.LASF1
	.byte	0x3
	.value	0x88d
	.long	0x3607
	.uleb128 0x9
	.string	"decl"
	.byte	0x3
	.value	0x88e
	.long	0x4672
	.uleb128 0x8
	.long	.LASF2
	.byte	0x3
	.value	0x88f
	.long	0x386c
	.uleb128 0x9
	.string	"list"
	.byte	0x3
	.value	0x890
	.long	0x363e
	.uleb128 0x9
	.string	"vec"
	.byte	0x3
	.value	0x891
	.long	0x3685
	.uleb128 0x9
	.string	"exp"
	.byte	0x3
	.value	0x892
	.long	0x36d6
	.uleb128 0x9
	.string	"block"
	.byte	0x3
	.value	0x893
	.long	0x3722
	.uleb128 0x9
	.string	"omp"
	.byte	0x3
	.value	0x895
	.long	0x5072
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d1
	.uleb128 0xa
	.long	0x2d6
	.uleb128 0xb
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.long	0x3b7
	.string	"mips_args"
	.byte	0x40
	.byte	0x9
	.value	0xaaa
	.uleb128 0xd
	.string	"gp_reg_found"
	.byte	0x9
	.value	0xaad
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"arg_number"
	.byte	0x9
	.value	0xab0
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"num_gprs"
	.byte	0x9
	.value	0xab5
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"num_fprs"
	.byte	0x9
	.value	0xab8
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stack_words"
	.byte	0x9
	.value	0xabb
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"fp_code"
	.byte	0x9
	.value	0xac8
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"prototype"
	.byte	0x9
	.value	0xacb
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"num_adjusts"
	.byte	0x9
	.value	0xad3
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"adjust"
	.byte	0x9
	.value	0xad4
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xe
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	0x3ce
	.long	0x9e
	.uleb128 0x10
	.long	0x3ce
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
	.long	0x2e5
	.uleb128 0x2
	.string	"size_t"
	.byte	0xd
	.byte	0xd6
	.long	0x3b7
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
	.byte	0x12
	.byte	0x3b
	.long	0x453
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x12
	.byte	0x90
	.long	0x49d
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x12
	.byte	0x91
	.long	0x47e
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2d6
	.uleb128 0x2
	.string	"FILE"
	.byte	0x10
	.byte	0x2e
	.long	0x4ce
	.uleb128 0x13
	.long	0x749
	.long	.LASF4
	.byte	0x94
	.byte	0x10
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x11
	.value	0x10c
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x11
	.value	0x111
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x11
	.value	0x112
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x11
	.value	0x113
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x11
	.value	0x114
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x11
	.value	0x115
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x11
	.value	0x116
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x11
	.value	0x117
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x11
	.value	0x118
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x11
	.value	0x11a
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x11
	.value	0x11b
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x11
	.value	0x11c
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x11
	.value	0x11e
	.long	0x7ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x11
	.value	0x120
	.long	0x7b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x11
	.value	0x122
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x11
	.value	0x126
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x11
	.value	0x128
	.long	0x48e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x11
	.value	0x12c
	.long	0x40c
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x11
	.value	0x12d
	.long	0x437
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x11
	.value	0x12e
	.long	0x7b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x11
	.value	0x132
	.long	0x7c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x11
	.value	0x13b
	.long	0x4a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x11
	.value	0x144
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x11
	.value	0x145
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x11
	.value	0x146
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x11
	.value	0x147
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x11
	.value	0x148
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x11
	.value	0x14a
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x11
	.value	0x14c
	.long	0x7cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x74f
	.uleb128 0xa
	.long	0x3fb
	.uleb128 0x3
	.byte	0x4
	.long	0x3fb
	.uleb128 0x14
	.string	"_IO_lock_t"
	.byte	0x11
	.byte	0xb0
	.uleb128 0x4
	.long	0x7ab
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x11
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x11
	.byte	0xb7
	.long	0x7ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x11
	.byte	0xb8
	.long	0x7b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x11
	.byte	0xbc
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x768
	.uleb128 0x3
	.byte	0x4
	.long	0x4ce
	.uleb128 0xf
	.long	0x7c7
	.long	0x2d6
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x75a
	.uleb128 0xf
	.long	0x7dd
	.long	0x2d6
	.uleb128 0x10
	.long	0x3ce
	.byte	0x27
	.byte	0x0
	.uleb128 0xa
	.long	0x2de
	.uleb128 0x3
	.byte	0x4
	.long	0x2de
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x7e8
	.uleb128 0x16
	.long	0xa39
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
	.uleb128 0x4
	.long	0xa6b
	.string	"location_s"
	.byte	0x8
	.byte	0x7
	.byte	0x1c
	.uleb128 0x6
	.string	"file"
	.byte	0x7
	.byte	0x1e
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line"
	.byte	0x7
	.byte	0x21
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x7
	.byte	0x23
	.long	0xa39
	.uleb128 0x16
	.long	0x139f
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
	.byte	0x25
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
	.byte	0x3
	.byte	0x2f
	.long	0x3b7
	.uleb128 0x4
	.long	0x13ef
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x30
	.uleb128 0x6
	.string	"block"
	.byte	0x3
	.byte	0x30
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x30
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x34
	.long	0x13f9
	.uleb128 0x18
	.string	"st"
	.byte	0x1
	.uleb128 0x19
	.long	0x144e
	.long	.LASF5
	.byte	0x4
	.byte	0x3
	.byte	0x58
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
	.long	0x30f8
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x67
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
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x17
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x17
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x17
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x17
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x17
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x17
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x17
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x17
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x17
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x17
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x17
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x17
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x17
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x17
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x17
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x17
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x17
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x17
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x17
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x17
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x17
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x17
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x17
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x17
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x17
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x17
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x17
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x17
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x17
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x17
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x17
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x17
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x17
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x17
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x17
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x17
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x17
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x17
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x17
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x17
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x17
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x17
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x17
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x17
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x17
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x17
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x17
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x17
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x17
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x17
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x17
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x17
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x17
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x17
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x17
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x17
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x17
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x17
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x17
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x17
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x17
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x17
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x17
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x17
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x17
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x17
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x17
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x17
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x17
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x17
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x17
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x17
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x17
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x17
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x17
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x17
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x17
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x17
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x17
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x17
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x17
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x17
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x17
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x17
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x17
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x17
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x17
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x17
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x17
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x17
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x17
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x17
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x17
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x17
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x17
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x17
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x17
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x17
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x17
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x17
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x17
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x17
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x17
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x17
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x17
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x17
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x17
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x17
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x17
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x17
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x17
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x17
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x17
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x17
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x17
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x17
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x17
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x17
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x17
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x17
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x17
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x17
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x17
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x17
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x17
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x17
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x17
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x17
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x17
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x17
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x17
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x17
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x17
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x17
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x17
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x17
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x17
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x17
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x17
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x17
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x17
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x17
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x17
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x17
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x17
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x17
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x17
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x17
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x17
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x17
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x17
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x17
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x17
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x17
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x17
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x17
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x17
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x17
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x17
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x17
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x17
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x17
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x17
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x17
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x17
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x17
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x17
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x17
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x17
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x17
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x17
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x17
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x17
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x17
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x17
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x17
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x17
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x17
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x17
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x17
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x17
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x17
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x17
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x17
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x17
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x17
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x17
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x17
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x17
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x17
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x17
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x17
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x17
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x17
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x17
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x17
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x17
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x17
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x17
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x17
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x17
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x17
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x17
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x17
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x17
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x17
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x17
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x17
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x17
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x17
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x17
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x17
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x17
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x17
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x17
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x17
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x17
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x17
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x17
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x17
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x17
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x17
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x17
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x17
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x17
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x17
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x33da
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8c
	.uleb128 0x6
	.string	"chain"
	.byte	0x3
	.byte	0x8d
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.long	.LASF2
	.byte	0x3
	.byte	0x8e
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x90
	.long	0xa7d
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF6
	.byte	0x3
	.byte	0xa8
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF7
	.byte	0x3
	.byte	0xa9
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF8
	.byte	0x3
	.byte	0xaa
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF9
	.byte	0x3
	.byte	0xab
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF10
	.byte	0x3
	.byte	0xac
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF11
	.byte	0x3
	.byte	0xad
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF12
	.byte	0x3
	.byte	0xae
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF13
	.byte	0x3
	.byte	0xb0
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x3416
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x30a
	.uleb128 0xd
	.string	"low"
	.byte	0x3
	.value	0x30b
	.long	0x464
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"high"
	.byte	0x3
	.value	0x30c
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x345e
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x303
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x304
	.long	0x30f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x305
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"int_cst"
	.byte	0x3
	.value	0x30d
	.long	0x33da
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x34ac
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x31f
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x320
	.long	0x30f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x321
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x322
	.long	0x34b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x18
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x34ac
	.uleb128 0xc
	.long	0x3526
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x333
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x334
	.long	0x30f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x335
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"length"
	.byte	0x3
	.value	0x336
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"pointer"
	.byte	0x3
	.value	0x337
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"st"
	.byte	0x3
	.value	0x339
	.long	0x3526
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x13ef
	.uleb128 0xc
	.long	0x3581
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x342
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x343
	.long	0x30f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x344
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real"
	.byte	0x3
	.value	0x345
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"imag"
	.byte	0x3
	.value	0x346
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xc
	.long	0x35c9
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x355
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x356
	.long	0x30f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x357
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"elements"
	.byte	0x3
	.value	0x358
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x13
	.long	0x3607
	.long	.LASF14
	.byte	0xc
	.byte	0x6
	.byte	0x19
	.uleb128 0x6
	.string	"str"
	.byte	0x6
	.byte	0x1c
	.long	0x749
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0x6
	.byte	0x1d
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"hash_value"
	.byte	0x6
	.byte	0x1e
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x363e
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x376
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x377
	.long	0x30f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"id"
	.byte	0x3
	.value	0x378
	.long	0x35c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x3685
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x380
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x381
	.long	0x30f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"purpose"
	.byte	0x3
	.value	0x382
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"value"
	.byte	0x3
	.value	0x383
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x36c6
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x38e
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x38f
	.long	0x30f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"length"
	.byte	0x3
	.value	0x390
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"a"
	.byte	0x3
	.value	0x391
	.long	0x36c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x36d6
	.long	0x1e7
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x3722
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3d4
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x3d5
	.long	0x30f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"complexity"
	.byte	0x3
	.value	0x3d6
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"operands"
	.byte	0x3
	.value	0x3d9
	.long	0x36c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x3812
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x40a
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x40b
	.long	0x30f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x40d
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF15
	.byte	0x3
	.value	0x40e
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1d
	.string	"block_num"
	.byte	0x3
	.value	0x40f
	.long	0x3b7
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
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"subblocks"
	.byte	0x3
	.value	0x412
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"supercontext"
	.byte	0x3
	.value	0x413
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1c
	.long	.LASF16
	.byte	0x3
	.value	0x414
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"fragment_origin"
	.byte	0x3
	.value	0x415
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"fragment_chain"
	.byte	0x3
	.value	0x416
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x1f
	.long	0x3859
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x570
	.uleb128 0x9
	.string	"address"
	.byte	0x3
	.value	0x571
	.long	0x2de
	.uleb128 0x9
	.string	"pointer"
	.byte	0x3
	.value	0x572
	.long	0x4bc
	.uleb128 0x9
	.string	"die"
	.byte	0x3
	.value	0x573
	.long	0x3866
	.byte	0x0
	.uleb128 0x18
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3859
	.uleb128 0xc
	.long	0x3bb1
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x551
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x552
	.long	0x30f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"values"
	.byte	0x3
	.value	0x553
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"size"
	.byte	0x3
	.value	0x554
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF17
	.byte	0x3
	.value	0x555
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1c
	.long	.LASF18
	.byte	0x3
	.value	0x556
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"uid"
	.byte	0x3
	.value	0x557
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"precision"
	.byte	0x3
	.value	0x559
	.long	0x3b7
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.string	"mode"
	.byte	0x3
	.value	0x55a
	.long	0x7f0
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.string	"string_flag"
	.byte	0x3
	.value	0x55c
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.string	"no_force_blk_flag"
	.byte	0x3
	.value	0x55d
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.string	"needs_constructing_flag"
	.byte	0x3
	.value	0x55e
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.string	"transparent_union_flag"
	.byte	0x3
	.value	0x55f
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.string	"packed_flag"
	.byte	0x3
	.value	0x560
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.string	"restrict_flag"
	.byte	0x3
	.value	0x561
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF19
	.byte	0x3
	.value	0x562
	.long	0x3b7
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x3
	.value	0x564
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x3
	.value	0x565
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x3
	.value	0x566
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x3
	.value	0x567
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF10
	.byte	0x3
	.value	0x568
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF11
	.byte	0x3
	.value	0x569
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x3
	.value	0x56a
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF20
	.byte	0x3
	.value	0x56b
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF21
	.byte	0x3
	.value	0x56d
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"pointer_to"
	.byte	0x3
	.value	0x56e
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"reference_to"
	.byte	0x3
	.value	0x56f
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"symtab"
	.byte	0x3
	.value	0x574
	.long	0x3812
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1c
	.long	.LASF22
	.byte	0x3
	.value	0x576
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"minval"
	.byte	0x3
	.value	0x577
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"maxval"
	.byte	0x3
	.value	0x578
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"next_variant"
	.byte	0x3
	.value	0x579
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"main_variant"
	.byte	0x3
	.value	0x57a
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1c
	.long	.LASF23
	.byte	0x3
	.value	0x57b
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1c
	.long	.LASF24
	.byte	0x3
	.value	0x57c
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"alias_set"
	.byte	0x3
	.value	0x57d
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1c
	.long	.LASF25
	.byte	0x3
	.value	0x57f
	.long	0x3bd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"ty_idx"
	.byte	0x3
	.value	0x581
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"field_ids_used"
	.byte	0x3
	.value	0x582
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"dst_id"
	.byte	0x3
	.value	0x583
	.long	0x13b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"extra_methods"
	.byte	0x3
	.value	0x58a
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0xc
	.long	0x3bd2
	.string	"lang_type"
	.byte	0x4c
	.byte	0x3
	.value	0x57f
	.uleb128 0xd
	.string	"u"
	.byte	0xa
	.value	0x4e0
	.long	0x687f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3bb1
	.uleb128 0xc
	.long	0x3c1b
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x817
	.uleb128 0x1e
	.long	.LASF21
	.byte	0x3
	.value	0x818
	.long	0x3b7
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.string	"off_align"
	.byte	0x3
	.value	0x819
	.long	0x3b7
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0x3c50
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x80e
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x811
	.long	0x144e
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x814
	.long	0x453
	.uleb128 0x9
	.string	"a"
	.byte	0x3
	.value	0x81a
	.long	0x3bd8
	.byte	0x0
	.uleb128 0x1f
	.long	0x3c8f
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x837
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x838
	.long	0x4634
	.uleb128 0x9
	.string	"r"
	.byte	0x3
	.value	0x839
	.long	0x9e
	.uleb128 0x9
	.string	"t"
	.byte	0x3
	.value	0x83a
	.long	0x1e7
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x83b
	.long	0x2de
	.byte	0x0
	.uleb128 0x20
	.long	0x4634
	.long	.LASF26
	.value	0x134
	.byte	0x3
	.value	0x7c2
	.uleb128 0x6
	.string	"eh"
	.byte	0x8
	.byte	0xb5
	.long	0x5530
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0x8
	.byte	0xb6
	.long	0x5544
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0x8
	.byte	0xb7
	.long	0x554a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0x8
	.byte	0xb8
	.long	0x5550
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0x8
	.byte	0xb9
	.long	0x5566
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.long	.LASF22
	.byte	0x8
	.byte	0xbe
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"decl"
	.byte	0x8
	.byte	0xc1
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0x8
	.byte	0xc4
	.long	0x4634
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0x8
	.byte	0xc9
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.long	.LASF27
	.byte	0x8
	.byte	0xce
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0x8
	.byte	0xd3
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0x8
	.byte	0xd7
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0x8
	.byte	0xdb
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0x8
	.byte	0xdf
	.long	0x3d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0x8
	.byte	0xe5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0x8
	.byte	0xe8
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x1a
	.long	.LASF28
	.byte	0x8
	.byte	0xec
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0x8
	.byte	0xf0
	.long	0x5583
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0x8
	.byte	0xf3
	.long	0x2de
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0x8
	.byte	0xf8
	.long	0x1e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x8
	.byte	0xfe
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x8
	.value	0x102
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x8
	.value	0x107
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"x_cleanup_label"
	.byte	0x8
	.value	0x10d
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.string	"x_return_label"
	.byte	0x8
	.value	0x112
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.string	"computed_goto_common_label"
	.byte	0x8
	.value	0x115
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"computed_goto_common_reg"
	.byte	0x8
	.value	0x116
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"x_save_expr_regs"
	.byte	0x8
	.value	0x11a
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"x_stack_slot_list"
	.byte	0x8
	.value	0x11e
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.string	"x_rtl_expr_chain"
	.byte	0x8
	.value	0x121
	.long	0x1e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"x_tail_recursion_label"
	.byte	0x8
	.value	0x125
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.string	"x_tail_recursion_reentry"
	.byte	0x8
	.value	0x128
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.string	"x_arg_pointer_save_area"
	.byte	0x8
	.value	0x12e
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"x_clobber_return_insn"
	.byte	0x8
	.value	0x133
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"x_frame_offset"
	.byte	0x8
	.value	0x138
	.long	0x453
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"x_context_display"
	.byte	0x8
	.value	0x13d
	.long	0x1e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"x_trampoline_list"
	.byte	0x8
	.value	0x146
	.long	0x1e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"x_parm_birth_insn"
	.byte	0x8
	.value	0x149
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"x_last_parm_insn"
	.byte	0x8
	.value	0x14d
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"x_max_parm_reg"
	.byte	0x8
	.value	0x151
	.long	0x3b7
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"x_parm_reg_stack_loc"
	.byte	0x8
	.value	0x157
	.long	0x53d4
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0x8
	.value	0x15a
	.long	0x5595
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"x_temp_slot_level"
	.byte	0x8
	.value	0x15d
	.long	0x2de
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"x_var_temp_slot_level"
	.byte	0x8
	.value	0x160
	.long	0x2de
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"x_target_temp_slot_level"
	.byte	0x8
	.value	0x166
	.long	0x2de
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"fixup_var_refs_queue"
	.byte	0x8
	.value	0x16a
	.long	0x5230
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"inlinable"
	.byte	0x8
	.value	0x16d
	.long	0x2de
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"no_debugging_symbols"
	.byte	0x8
	.value	0x16e
	.long	0x2de
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xd
	.string	"original_arg_vector"
	.byte	0x8
	.value	0x16f
	.long	0x19f
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"original_decl_initial"
	.byte	0x8
	.value	0x170
	.long	0x1e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.string	"inl_last_parm_insn"
	.byte	0x8
	.value	0x173
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.string	"inl_max_label_num"
	.byte	0x8
	.value	0x175
	.long	0x2de
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"funcdef_no"
	.byte	0x8
	.value	0x178
	.long	0x2de
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.string	"machine"
	.byte	0x8
	.value	0x17d
	.long	0x55ae
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.string	"stack_alignment_needed"
	.byte	0x8
	.value	0x17f
	.long	0x2de
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.string	"preferred_stack_boundary"
	.byte	0x8
	.value	0x181
	.long	0x2de
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0x1c
	.long	.LASF29
	.byte	0x8
	.value	0x184
	.long	0x57ea
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.string	"epilogue_delay_list"
	.byte	0x8
	.value	0x18a
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1d
	.string	"returns_struct"
	.byte	0x8
	.value	0x190
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"returns_pcc_struct"
	.byte	0x8
	.value	0x194
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"returns_pointer"
	.byte	0x8
	.value	0x197
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"needs_context"
	.byte	0x8
	.value	0x19a
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"calls_setjmp"
	.byte	0x8
	.value	0x19d
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"calls_longjmp"
	.byte	0x8
	.value	0x1a0
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"calls_alloca"
	.byte	0x8
	.value	0x1a4
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"calls_eh_return"
	.byte	0x8
	.value	0x1a7
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"has_nonlocal_label"
	.byte	0x8
	.value	0x1ab
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"has_nonlocal_goto"
	.byte	0x8
	.value	0x1af
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"contains_functions"
	.byte	0x8
	.value	0x1b2
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"has_computed_jump"
	.byte	0x8
	.value	0x1b5
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"is_thunk"
	.byte	0x8
	.value	0x1ba
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"all_throwers_are_sibcalls"
	.byte	0x8
	.value	0x1c1
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"instrument_entry_exit"
	.byte	0x8
	.value	0x1c5
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"arc_profile"
	.byte	0x8
	.value	0x1c8
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"profile"
	.byte	0x8
	.value	0x1cb
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"limit_stack"
	.byte	0x8
	.value	0x1cf
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"stdarg"
	.byte	0x8
	.value	0x1d2
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"x_whole_function_mode_p"
	.byte	0x8
	.value	0x1d8
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x8
	.value	0x1e1
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"uses_const_pool"
	.byte	0x8
	.value	0x1e4
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"uses_pic_offset_table"
	.byte	0x8
	.value	0x1e7
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"uses_eh_lsda"
	.byte	0x8
	.value	0x1ea
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"arg_pointer_save_area_init"
	.byte	0x8
	.value	0x1ed
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1c
	.long	.LASF30
	.byte	0x8
	.value	0x1fa
	.long	0x54ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"max_jumptable_ents"
	.byte	0x8
	.value	0x1fe
	.long	0x2de
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3c8f
	.uleb128 0x21
	.long	0x4672
	.byte	0x4
	.byte	0x3
	.value	0x84e
	.uleb128 0x9
	.string	"st"
	.byte	0x3
	.value	0x84f
	.long	0x3526
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x3
	.value	0x850
	.long	0x139f
	.uleb128 0x9
	.string	"field_id"
	.byte	0x3
	.value	0x851
	.long	0x3b7
	.byte	0x0
	.uleb128 0xc
	.long	0x4db7
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x3
	.value	0x7c5
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x7c6
	.long	0x30f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"locus"
	.byte	0x3
	.value	0x7c7
	.long	0xa6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"uid"
	.byte	0x3
	.value	0x7c8
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"size"
	.byte	0x3
	.value	0x7c9
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1d
	.string	"mode"
	.byte	0x3
	.value	0x7ca
	.long	0x7f0
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"external_flag"
	.byte	0x3
	.value	0x7cc
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"nonlocal_flag"
	.byte	0x3
	.value	0x7cd
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"regdecl_flag"
	.byte	0x3
	.value	0x7ce
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"inline_flag"
	.byte	0x3
	.value	0x7cf
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"bit_field_flag"
	.byte	0x3
	.value	0x7d0
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"virtual_flag"
	.byte	0x3
	.value	0x7d1
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"ignored_flag"
	.byte	0x3
	.value	0x7d2
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.long	.LASF15
	.byte	0x3
	.value	0x7d3
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"sbuf_flag"
	.byte	0x3
	.value	0x7d7
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"sdram_flag"
	.byte	0x3
	.value	0x7d8
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"v1buf_flag"
	.byte	0x3
	.value	0x7d9
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"v2buf_flag"
	.byte	0x3
	.value	0x7da
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"v4buf_flag"
	.byte	0x3
	.value	0x7db
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"in_system_header_flag"
	.byte	0x3
	.value	0x7df
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"common_flag"
	.byte	0x3
	.value	0x7e0
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"defer_output"
	.byte	0x3
	.value	0x7e1
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"transparent_union"
	.byte	0x3
	.value	0x7e2
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"static_ctor_flag"
	.byte	0x3
	.value	0x7e3
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"static_dtor_flag"
	.byte	0x3
	.value	0x7e4
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"artificial_flag"
	.byte	0x3
	.value	0x7e5
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"weak_flag"
	.byte	0x3
	.value	0x7e6
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"non_addr_const_p"
	.byte	0x3
	.value	0x7e8
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"no_instrument_function_entry_exit"
	.byte	0x3
	.value	0x7e9
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"comdat_flag"
	.byte	0x3
	.value	0x7ea
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"malloc_flag"
	.byte	0x3
	.value	0x7eb
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.string	"no_limit_stack"
	.byte	0x3
	.value	0x7ec
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF5
	.byte	0x3
	.value	0x7ed
	.long	0x13fe
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.string	"pure_flag"
	.byte	0x3
	.value	0x7ee
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF19
	.byte	0x3
	.value	0x7f0
	.long	0x3b7
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.string	"non_addressable"
	.byte	0x3
	.value	0x7f1
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF20
	.byte	0x3
	.value	0x7f2
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.string	"uninlinable"
	.byte	0x3
	.value	0x7f3
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.string	"thread_local_flag"
	.byte	0x3
	.value	0x7f4
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.string	"inlined_function_flag"
	.byte	0x3
	.value	0x7f5
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.string	"threadprivate_flag"
	.byte	0x3
	.value	0x7f7
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x3
	.value	0x7fa
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x3
	.value	0x7fb
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x3
	.value	0x7fc
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x3
	.value	0x7fd
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF10
	.byte	0x3
	.value	0x7fe
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF11
	.byte	0x3
	.value	0x7ff
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x3
	.value	0x800
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF13
	.byte	0x3
	.value	0x801
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.string	"syscall_linkage_flag"
	.byte	0x3
	.value	0x804
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.string	"widen_retval_flag"
	.byte	0x3
	.value	0x805
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.string	"emitted_by_gxx"
	.byte	0x3
	.value	0x808
	.long	0x3b7
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
	.long	0x3c1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1c
	.long	.LASF17
	.byte	0x3
	.value	0x81d
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1c
	.long	.LASF22
	.byte	0x3
	.value	0x81e
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1c
	.long	.LASF24
	.byte	0x3
	.value	0x81f
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"arguments"
	.byte	0x3
	.value	0x820
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"result"
	.byte	0x3
	.value	0x821
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"initial"
	.byte	0x3
	.value	0x822
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"initial_2"
	.byte	0x3
	.value	0x824
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"alias_target"
	.byte	0x3
	.value	0x825
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"thunk_delta"
	.byte	0x3
	.value	0x829
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1c
	.long	.LASF16
	.byte	0x3
	.value	0x82b
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"assembler_name"
	.byte	0x3
	.value	0x82c
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"section_name"
	.byte	0x3
	.value	0x82d
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1c
	.long	.LASF18
	.byte	0x3
	.value	0x82e
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x82f
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x830
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"u2"
	.byte	0x3
	.value	0x83c
	.long	0x3c50
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"saved_tree"
	.byte	0x3
	.value	0x83f
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"inlined_fns"
	.byte	0x3
	.value	0x843
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"vindex"
	.byte	0x3
	.value	0x845
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x846
	.long	0x453
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x1c
	.long	.LASF25
	.byte	0x3
	.value	0x848
	.long	0x4dee
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x1d
	.string	"symtab_idx"
	.byte	0x3
	.value	0x84b
	.long	0x3b7
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x1d
	.string	"label_defined"
	.byte	0x3
	.value	0x84c
	.long	0x3b7
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
	.long	0x463a
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x858
	.long	0x13b0
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"sl_model_name"
	.byte	0x3
	.value	0x85c
	.long	0x1e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0xc
	.long	0x4dee
	.string	"lang_decl"
	.byte	0x34
	.byte	0x3
	.value	0x848
	.uleb128 0xd
	.string	"decl_flags"
	.byte	0xa
	.value	0x73a
	.long	0x6930
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"u"
	.byte	0xa
	.value	0x763
	.long	0x6d50
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4db7
	.uleb128 0x16
	.long	0x5072
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xe
	.byte	0x1d
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
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x17
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x17
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x17
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x17
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x17
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x17
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x17
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x17
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x17
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x17
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x17
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x17
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x17
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0xc
	.long	0x50c1
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x864
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x865
	.long	0x30f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"choice"
	.byte	0x3
	.value	0x866
	.long	0x4df4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x867
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x517c
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x3
	.value	0xa1d
	.uleb128 0x1c
	.long	.LASF22
	.byte	0x3
	.value	0xa20
	.long	0x517c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"min_length"
	.byte	0x3
	.value	0xa22
	.long	0x7dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"max_length"
	.byte	0x3
	.value	0xa25
	.long	0x7dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"decl_required"
	.byte	0x3
	.value	0xa2d
	.long	0x5181
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"type_required"
	.byte	0x3
	.value	0xa30
	.long	0x5181
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xd
	.string	"function_type_required"
	.byte	0x3
	.value	0xa35
	.long	0x5181
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.string	"handler"
	.byte	0x3
	.value	0xa44
	.long	0x51bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x2cb
	.uleb128 0xa
	.long	0x5186
	.uleb128 0xb
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x22
	.long	0x51b3
	.byte	0x1
	.long	0x1e7
	.uleb128 0x23
	.long	0x51b3
	.uleb128 0x23
	.long	0x1e7
	.uleb128 0x23
	.long	0x1e7
	.uleb128 0x23
	.long	0x2de
	.uleb128 0x23
	.long	0x51b9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e7
	.uleb128 0x3
	.byte	0x4
	.long	0x5186
	.uleb128 0xa
	.long	0x51c4
	.uleb128 0x3
	.byte	0x4
	.long	0x518f
	.uleb128 0x4
	.long	0x5230
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x8
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0x8
	.byte	0x18
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0x8
	.byte	0x19
	.long	0x7f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0x8
	.byte	0x1a
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0x8
	.byte	0x1b
	.long	0x5230
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x51ca
	.uleb128 0x13
	.long	0x527f
	.long	.LASF31
	.byte	0x10
	.byte	0x8
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0x8
	.byte	0x26
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0x8
	.byte	0x27
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.long	.LASF32
	.byte	0x8
	.byte	0x28
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0x8
	.byte	0x29
	.long	0x527f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5236
	.uleb128 0x4
	.long	0x53d4
	.string	"emit_status"
	.byte	0x34
	.byte	0x8
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0x8
	.byte	0x3a
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0x8
	.byte	0x3d
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0x8
	.byte	0x44
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0x8
	.byte	0x45
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.long	.LASF32
	.byte	0x8
	.byte	0x4a
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.long	.LASF31
	.byte	0x8
	.byte	0x50
	.long	0x527f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0x8
	.byte	0x54
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0x8
	.byte	0x58
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0x8
	.byte	0x59
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0x8
	.byte	0x5f
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0x8
	.byte	0x65
	.long	0x754
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0x8
	.byte	0x69
	.long	0x51b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0x8
	.byte	0x70
	.long	0x53d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9e
	.uleb128 0x4
	.long	0x54ba
	.string	"expr_status"
	.byte	0x1c
	.byte	0x8
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0x8
	.byte	0x80
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0x8
	.byte	0x91
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0x8
	.byte	0x97
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0x8
	.byte	0x9c
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0x8
	.byte	0x9f
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0x8
	.byte	0xa2
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0x8
	.byte	0xa5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x24
	.long	0x5524
	.long	.LASF30
	.byte	0x4
	.byte	0x8
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
	.uleb128 0x18
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5524
	.uleb128 0x18
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5536
	.uleb128 0x3
	.byte	0x4
	.long	0x53da
	.uleb128 0x3
	.byte	0x4
	.long	0x5285
	.uleb128 0x18
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5556
	.uleb128 0x18
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x556c
	.uleb128 0x18
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5589
	.uleb128 0x18
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x559b
	.uleb128 0xc
	.long	0x57ea
	.string	"language_function"
	.byte	0x64
	.byte	0x8
	.value	0x184
	.uleb128 0xd
	.string	"base"
	.byte	0xa
	.value	0x370
	.long	0x5d6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"x_dtor_label"
	.byte	0xa
	.value	0x372
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"x_current_class_ptr"
	.byte	0xa
	.value	0x373
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"x_current_class_ref"
	.byte	0xa
	.value	0x374
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"x_eh_spec_block"
	.byte	0xa
	.value	0x375
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"x_in_charge_parm"
	.byte	0xa
	.value	0x376
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"x_vtt_parm"
	.byte	0xa
	.value	0x377
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"x_return_value"
	.byte	0xa
	.value	0x378
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"returns_value"
	.byte	0xa
	.value	0x37a
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"returns_null"
	.byte	0xa
	.value	0x37b
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"returns_abnormally"
	.byte	0xa
	.value	0x37c
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"in_function_try_handler"
	.byte	0xa
	.value	0x37d
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"in_base_initializer"
	.byte	0xa
	.value	0x37e
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"x_expanding_p"
	.byte	0xa
	.value	0x37f
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1d
	.string	"can_throw"
	.byte	0xa
	.value	0x382
	.long	0x5186
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
	.long	0x60d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"x_named_labels"
	.byte	0xa
	.value	0x385
	.long	0x60f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1c
	.long	.LASF33
	.byte	0xa
	.value	0x386
	.long	0x5e10
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"x_local_names"
	.byte	0xa
	.value	0x387
	.long	0x5cc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1c
	.long	.LASF28
	.byte	0xa
	.value	0x389
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"unparsed_inlines"
	.byte	0xa
	.value	0x38a
	.long	0x6108
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x55b4
	.uleb128 0x4
	.long	0x5826
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xc
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0xc
	.byte	0x32
	.long	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0xc
	.byte	0x36
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x16
	.long	0x59c1
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xc
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
	.long	0x5abd
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xc
	.byte	0x55
	.uleb128 0x25
	.string	"c"
	.byte	0xc
	.byte	0x56
	.long	0x7b7
	.uleb128 0x25
	.string	"uc"
	.byte	0xc
	.byte	0x58
	.long	0x5abd
	.uleb128 0x25
	.string	"s"
	.byte	0xc
	.byte	0x5a
	.long	0x5acd
	.uleb128 0x25
	.string	"us"
	.byte	0xc
	.byte	0x5c
	.long	0x5add
	.uleb128 0x25
	.string	"i"
	.byte	0xc
	.byte	0x5e
	.long	0x5aed
	.uleb128 0x25
	.string	"u"
	.byte	0xc
	.byte	0x60
	.long	0x5afd
	.uleb128 0x25
	.string	"l"
	.byte	0xc
	.byte	0x62
	.long	0x5b0d
	.uleb128 0x25
	.string	"ul"
	.byte	0xc
	.byte	0x64
	.long	0x5b1d
	.uleb128 0x25
	.string	"hint"
	.byte	0xc
	.byte	0x66
	.long	0x5b2d
	.uleb128 0x25
	.string	"uhint"
	.byte	0xc
	.byte	0x68
	.long	0x5b3d
	.uleb128 0x25
	.string	"generic"
	.byte	0xc
	.byte	0x6a
	.long	0x5b4d
	.uleb128 0x25
	.string	"cptr"
	.byte	0xc
	.byte	0x6c
	.long	0x5b5d
	.uleb128 0x25
	.string	"rtx"
	.byte	0xc
	.byte	0x6e
	.long	0x5b6d
	.uleb128 0x25
	.string	"rtvec"
	.byte	0xc
	.byte	0x70
	.long	0x5b7d
	.uleb128 0x25
	.string	"tree"
	.byte	0xc
	.byte	0x72
	.long	0x5b8d
	.uleb128 0x25
	.string	"bitmap"
	.byte	0xc
	.byte	0x74
	.long	0x5b9d
	.uleb128 0x25
	.string	"reg"
	.byte	0xc
	.byte	0x76
	.long	0x5bc5
	.uleb128 0x25
	.string	"const_equiv"
	.byte	0xc
	.byte	0x78
	.long	0x5bea
	.uleb128 0x25
	.string	"bb"
	.byte	0xc
	.byte	0x7a
	.long	0x5bfa
	.uleb128 0x25
	.string	"te"
	.byte	0xc
	.byte	0x7c
	.long	0x5c22
	.byte	0x0
	.uleb128 0xf
	.long	0x5acd
	.long	0x3fb
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5add
	.long	0x446
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5aed
	.long	0x40c
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5afd
	.long	0x2de
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5b0d
	.long	0x3b7
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5b1d
	.long	0x49d
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5b2d
	.long	0x422
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5b3d
	.long	0x453
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5b4d
	.long	0x464
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5b5d
	.long	0x4ba
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5b6d
	.long	0x4bc
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5b7d
	.long	0xa9
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5b8d
	.long	0x1ac
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5b9d
	.long	0x1f3
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5bad
	.long	0x5bbf
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5bad
	.uleb128 0xf
	.long	0x5bd5
	.long	0x5be4
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5bd5
	.uleb128 0xf
	.long	0x5bfa
	.long	0x57f0
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5c0a
	.long	0x5c1c
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5c0a
	.uleb128 0xf
	.long	0x5c32
	.long	0x5c3d
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5c32
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xc
	.byte	0x7e
	.long	0x59c1
	.uleb128 0x4
	.long	0x5cc9
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xc
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0xc
	.byte	0x82
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0xc
	.byte	0x83
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.long	.LASF2
	.byte	0xc
	.byte	0x85
	.long	0x5826
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF22
	.byte	0xc
	.byte	0x86
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0xc
	.byte	0x87
	.long	0x5c43
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xc
	.byte	0x8a
	.long	0x5cdc
	.uleb128 0x3
	.byte	0x4
	.long	0x5c56
	.uleb128 0xc
	.long	0x5d6d
	.string	"stmt_tree_s"
	.byte	0x10
	.byte	0xb
	.value	0x101
	.uleb128 0xd
	.string	"x_last_stmt"
	.byte	0xb
	.value	0x103
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"x_last_expr_type"
	.byte	0xb
	.value	0x106
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"x_last_expr_filename"
	.byte	0xb
	.value	0x108
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"stmts_are_full_exprs_p"
	.byte	0xb
	.value	0x117
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x5db8
	.string	"c_language_function"
	.byte	0x14
	.byte	0xb
	.value	0x11f
	.uleb128 0x1c
	.long	.LASF34
	.byte	0xb
	.value	0x122
	.long	0x5ce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"x_scope_stmt_stack"
	.byte	0xb
	.value	0x124
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x5dec
	.string	"c_lang_decl"
	.byte	0x4
	.byte	0xb
	.value	0x169
	.uleb128 0x1d
	.string	"declared_inline"
	.byte	0xb
	.value	0x16a
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LASF35
	.byte	0xa
	.byte	0xe4
	.long	0x5df7
	.uleb128 0x27
	.long	.LASF35
	.byte	0x1
	.uleb128 0x18
	.string	"cp_binding_level"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5dfd
	.uleb128 0x11
	.string	"binding_table"
	.byte	0xa
	.value	0x103
	.long	0x5e2c
	.uleb128 0x3
	.byte	0x4
	.long	0x5e32
	.uleb128 0x18
	.string	"binding_table_s"
	.byte	0x1
	.uleb128 0xc
	.long	0x60b6
	.string	"saved_scope"
	.byte	0x6c
	.byte	0xa
	.value	0x316
	.uleb128 0xd
	.string	"old_bindings"
	.byte	0xa
	.value	0x317
	.long	0x60b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"old_namespace"
	.byte	0xa
	.value	0x318
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"decl_ns_list"
	.byte	0xa
	.value	0x319
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"class_name"
	.byte	0xa
	.value	0x31a
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"class_type"
	.byte	0xa
	.value	0x31b
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"access_specifier"
	.byte	0xa
	.value	0x31c
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"function_decl"
	.byte	0xa
	.value	0x31d
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"lang_base"
	.byte	0xa
	.value	0x31e
	.long	0x5cc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"lang_name"
	.byte	0xa
	.value	0x31f
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"template_parms"
	.byte	0xa
	.value	0x320
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"x_previous_class_type"
	.byte	0xa
	.value	0x321
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"x_previous_class_values"
	.byte	0xa
	.value	0x322
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"x_saved_tree"
	.byte	0xa
	.value	0x323
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"lookups"
	.byte	0xa
	.value	0x324
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"last_parms"
	.byte	0xa
	.value	0x325
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"x_processing_template_decl"
	.byte	0xa
	.value	0x327
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"x_processing_specialization"
	.byte	0xa
	.value	0x328
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"x_processing_explicit_instantiation"
	.byte	0xa
	.value	0x329
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"need_pop_function_context"
	.byte	0xa
	.value	0x32a
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1c
	.long	.LASF34
	.byte	0xa
	.value	0x32c
	.long	0x5ce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"class_bindings"
	.byte	0xa
	.value	0x32e
	.long	0x5e10
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1c
	.long	.LASF33
	.byte	0xa
	.value	0x32f
	.long	0x5e10
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"prev"
	.byte	0xa
	.value	0x331
	.long	0x60bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5dec
	.uleb128 0x3
	.byte	0x4
	.long	0x5e44
	.uleb128 0x18
	.string	"named_label_use_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x60c2
	.uleb128 0x18
	.string	"named_label_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x60df
	.uleb128 0x18
	.string	"unparsed_text"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x60f8
	.uleb128 0x28
	.long	0x6148
	.string	"languages"
	.byte	0x4
	.byte	0xa
	.value	0x3f1
	.uleb128 0x17
	.string	"lang_c"
	.sleb128 0
	.uleb128 0x17
	.string	"lang_cplusplus"
	.sleb128 1
	.uleb128 0x17
	.string	"lang_java"
	.sleb128 2
	.byte	0x0
	.uleb128 0xc
	.long	0x6267
	.string	"lang_type_header"
	.byte	0x4
	.byte	0xa
	.value	0x464
	.uleb128 0x1d
	.string	"is_lang_type_class"
	.byte	0xa
	.value	0x465
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.string	"has_type_conversion"
	.byte	0xa
	.value	0x467
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.string	"has_init_ref"
	.byte	0xa
	.value	0x468
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.string	"has_default_ctor"
	.byte	0xa
	.value	0x469
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.string	"uses_multiple_inheritance"
	.byte	0xa
	.value	0x46a
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.string	"const_needs_init"
	.byte	0xa
	.value	0x46b
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.string	"ref_needs_init"
	.byte	0xa
	.value	0x46c
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.string	"has_const_assign_ref"
	.byte	0xa
	.value	0x46d
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x6845
	.string	"lang_type_class"
	.byte	0x4c
	.byte	0xa
	.value	0x47e
	.uleb128 0xd
	.string	"h"
	.byte	0xa
	.value	0x47f
	.long	0x6148
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF21
	.byte	0xa
	.value	0x481
	.long	0x3fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"has_mutable"
	.byte	0xa
	.value	0x483
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"com_interface"
	.byte	0xa
	.value	0x484
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"non_pod_class"
	.byte	0xa
	.value	0x485
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"nearly_empty_p"
	.byte	0xa
	.value	0x486
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.long	.LASF20
	.byte	0xa
	.value	0x487
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"has_assign_ref"
	.byte	0xa
	.value	0x488
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"has_new"
	.byte	0xa
	.value	0x489
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"has_array_new"
	.byte	0xa
	.value	0x48a
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"gets_delete"
	.byte	0xa
	.value	0x48c
	.long	0x3b7
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"has_call_overloaded"
	.byte	0xa
	.value	0x48d
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"has_array_ref_overloaded"
	.byte	0xa
	.value	0x48e
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"has_arrow_overloaded"
	.byte	0xa
	.value	0x48f
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"interface_only"
	.byte	0xa
	.value	0x490
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.long	.LASF36
	.byte	0xa
	.value	0x491
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"marks"
	.byte	0xa
	.value	0x493
	.long	0x3b7
	.byte	0x4
	.byte	0x6
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"vec_new_uses_cookie"
	.byte	0xa
	.value	0x494
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"declared_class"
	.byte	0xa
	.value	0x495
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"being_defined"
	.byte	0xa
	.value	0x497
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"redefined"
	.byte	0xa
	.value	0x498
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"debug_requested"
	.byte	0xa
	.value	0x499
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF37
	.byte	0xa
	.value	0x49a
	.long	0x3b7
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"got_semicolon"
	.byte	0xa
	.value	0x49b
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"ptrmemfunc_flag"
	.byte	0xa
	.value	0x49c
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"was_anonymous"
	.byte	0xa
	.value	0x49d
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"has_real_assign_ref"
	.byte	0xa
	.value	0x49f
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"has_const_init_ref"
	.byte	0xa
	.value	0x4a0
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"has_complex_init_ref"
	.byte	0xa
	.value	0x4a1
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"has_complex_assign_ref"
	.byte	0xa
	.value	0x4a2
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"has_abstract_assign_ref"
	.byte	0xa
	.value	0x4a3
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"non_aggregate"
	.byte	0xa
	.value	0x4a4
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"is_partial_instantiation"
	.byte	0xa
	.value	0x4a5
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"java_interface"
	.byte	0xa
	.value	0x4a6
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"anon_aggr"
	.byte	0xa
	.value	0x4a8
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"non_zero_init"
	.byte	0xa
	.value	0x4a9
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"empty_p"
	.byte	0xa
	.value	0x4aa
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"contains_empty_class_p"
	.byte	0xa
	.value	0x4ab
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"has_implicit_copy_constructor"
	.byte	0xa
	.value	0x4b7
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"dummy"
	.byte	0xa
	.value	0x4b8
	.long	0x3b7
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
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"vfields"
	.byte	0xa
	.value	0x4be
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"vcall_indices"
	.byte	0xa
	.value	0x4bf
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"vtables"
	.byte	0xa
	.value	0x4c0
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"typeinfo_var"
	.byte	0xa
	.value	0x4c1
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"vbases"
	.byte	0xa
	.value	0x4c2
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"nested_udts"
	.byte	0xa
	.value	0x4c3
	.long	0x5e16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"as_base"
	.byte	0xa
	.value	0x4c4
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"pure_virtuals"
	.byte	0xa
	.value	0x4c5
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"friend_classes"
	.byte	0xa
	.value	0x4c6
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"methods"
	.byte	0xa
	.value	0x4c7
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"key_method"
	.byte	0xa
	.value	0x4c8
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"decl_list"
	.byte	0xa
	.value	0x4c9
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1c
	.long	.LASF38
	.byte	0xa
	.value	0x4ca
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x1c
	.long	.LASF39
	.byte	0xa
	.value	0x4cb
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"copy_constructor"
	.byte	0xa
	.value	0x4cf
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0xc
	.long	0x687f
	.string	"lang_type_ptrmem"
	.byte	0x8
	.byte	0xa
	.value	0x4d4
	.uleb128 0xd
	.string	"h"
	.byte	0xa
	.value	0x4d5
	.long	0x6148
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"record"
	.byte	0xa
	.value	0x4d6
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1f
	.long	0x68b8
	.string	"lang_type_u"
	.byte	0x4c
	.byte	0xa
	.value	0x4dc
	.uleb128 0x9
	.string	"h"
	.byte	0xa
	.value	0x4dd
	.long	0x6148
	.uleb128 0x9
	.string	"c"
	.byte	0xa
	.value	0x4de
	.long	0x6267
	.uleb128 0x9
	.string	"ptrmem"
	.byte	0xa
	.value	0x4df
	.long	0x6845
	.byte	0x0
	.uleb128 0x1f
	.long	0x68e8
	.string	"lang_decl_u"
	.byte	0x4
	.byte	0xa
	.value	0x722
	.uleb128 0x8
	.long	.LASF38
	.byte	0xa
	.value	0x725
	.long	0x1e7
	.uleb128 0x9
	.string	"level"
	.byte	0xa
	.value	0x728
	.long	0x5e10
	.byte	0x0
	.uleb128 0x1f
	.long	0x6930
	.string	"lang_decl_u2"
	.byte	0x4
	.byte	0xa
	.value	0x72b
	.uleb128 0x9
	.string	"access"
	.byte	0xa
	.value	0x72d
	.long	0x1e7
	.uleb128 0x9
	.string	"discriminator"
	.byte	0xa
	.value	0x730
	.long	0x2de
	.uleb128 0x8
	.long	.LASF40
	.byte	0xa
	.value	0x734
	.long	0x1e7
	.byte	0x0
	.uleb128 0xc
	.long	0x6c0c
	.string	"lang_decl_flags"
	.byte	0x10
	.byte	0xa
	.value	0x703
	.uleb128 0xd
	.string	"base"
	.byte	0xa
	.value	0x704
	.long	0x5db8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF29
	.byte	0xa
	.value	0x706
	.long	0x610e
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"operator_attr"
	.byte	0xa
	.value	0x708
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"constructor_attr"
	.byte	0xa
	.value	0x709
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"destructor_attr"
	.byte	0xa
	.value	0x70a
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"friend_attr"
	.byte	0xa
	.value	0x70b
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"static_function"
	.byte	0xa
	.value	0x70c
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"pure_virtual"
	.byte	0xa
	.value	0x70d
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"has_in_charge_parm_p"
	.byte	0xa
	.value	0x70e
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"has_vtt_parm_p"
	.byte	0xa
	.value	0x70f
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"deferred"
	.byte	0xa
	.value	0x711
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.long	.LASF37
	.byte	0xa
	.value	0x712
	.long	0x3b7
	.byte	0x4
	.byte	0x2
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"nonconverting"
	.byte	0xa
	.value	0x713
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"not_really_extern"
	.byte	0xa
	.value	0x714
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"needs_final_overrider"
	.byte	0xa
	.value	0x715
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"initialized_in_class"
	.byte	0xa
	.value	0x716
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"assignment_operator_p"
	.byte	0xa
	.value	0x717
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"global_ctor_p"
	.byte	0xa
	.value	0x719
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"global_dtor_p"
	.byte	0xa
	.value	0x71a
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"anticipated_p"
	.byte	0xa
	.value	0x71b
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"template_conv_p"
	.byte	0xa
	.value	0x71c
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"u1sel"
	.byte	0xa
	.value	0x71d
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"u2sel"
	.byte	0xa
	.value	0x71e
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"can_be_full"
	.byte	0xa
	.value	0x71f
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"unused"
	.byte	0xa
	.value	0x720
	.long	0x3b7
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
	.long	0x68b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"u2"
	.byte	0xa
	.value	0x735
	.long	0x68e8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x1f
	.long	0x6c75
	.string	"lang_decl_u3"
	.byte	0x4
	.byte	0xa
	.value	0x75c
	.uleb128 0x9
	.string	"sorted_fields"
	.byte	0xa
	.value	0x75d
	.long	0x1e7
	.uleb128 0x9
	.string	"pending_inline_info"
	.byte	0xa
	.value	0x75e
	.long	0x6108
	.uleb128 0x9
	.string	"saved_language_function"
	.byte	0xa
	.value	0x760
	.long	0x57ea
	.byte	0x0
	.uleb128 0xc
	.long	0x6d50
	.string	"full_lang_decl"
	.byte	0x24
	.byte	0xa
	.value	0x73f
	.uleb128 0x1c
	.long	.LASF39
	.byte	0xa
	.value	0x740
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF24
	.byte	0xa
	.value	0x745
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"cloned_function"
	.byte	0xa
	.value	0x748
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"delta"
	.byte	0xa
	.value	0x74c
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"named_return_object"
	.byte	0xa
	.value	0x751
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"operator_code"
	.byte	0xa
	.value	0x756
	.long	0xa7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1d
	.string	"u3sel"
	.byte	0xa
	.value	0x758
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1d
	.string	"pending_inline_p"
	.byte	0xa
	.value	0x759
	.long	0x3b7
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
	.long	0x6c0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x1f
	.long	0x6d71
	.string	"lang_decl_u4"
	.byte	0x24
	.byte	0xa
	.value	0x73d
	.uleb128 0x9
	.string	"f"
	.byte	0xa
	.value	0x762
	.long	0x6c75
	.byte	0x0
	.uleb128 0x24
	.long	0x6e39
	.long	.LASF41
	.byte	0x4
	.byte	0xa
	.value	0xc49
	.uleb128 0x17
	.string	"sfk_none"
	.sleb128 0
	.uleb128 0x17
	.string	"sfk_constructor"
	.sleb128 1
	.uleb128 0x17
	.string	"sfk_copy_constructor"
	.sleb128 2
	.uleb128 0x17
	.string	"sfk_assignment_operator"
	.sleb128 3
	.uleb128 0x17
	.string	"sfk_destructor"
	.sleb128 4
	.uleb128 0x17
	.string	"sfk_complete_destructor"
	.sleb128 5
	.uleb128 0x17
	.string	"sfk_base_destructor"
	.sleb128 6
	.uleb128 0x17
	.string	"sfk_deleting_destructor"
	.sleb128 7
	.uleb128 0x17
	.string	"sfk_conversion"
	.sleb128 8
	.byte	0x0
	.uleb128 0x29
	.long	.LASF41
	.byte	0xa
	.value	0xc57
	.long	0x6d71
	.uleb128 0x2a
	.long	0x6e9a
	.long	.LASF42
	.byte	0x10
	.byte	0xa
	.value	0xe26
	.uleb128 0x1c
	.long	.LASF1
	.byte	0xa
	.value	0xe28
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF22
	.byte	0xa
	.value	0xe2a
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"mangled_name"
	.byte	0xa
	.value	0xe2c
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"arity"
	.byte	0xa
	.value	0xe2e
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x29
	.long	.LASF42
	.byte	0xa
	.value	0xe2f
	.long	0x6e45
	.uleb128 0x16
	.long	0x7675
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
	.byte	0x29
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
	.uleb128 0x2b
	.long	0x774f
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x49
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x7675
	.uleb128 0x13
	.long	0x77c4
	.long	.LASF43
	.byte	0x18
	.byte	0x4
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x4
	.byte	0x63
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x4
	.byte	0x64
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x4
	.byte	0x65
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x4
	.byte	0x66
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.long	.LASF21
	.byte	0x4
	.byte	0x67
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x26
	.long	.LASF43
	.byte	0x4
	.byte	0x68
	.long	0x776a
	.uleb128 0x7
	.long	0x78a1
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x6d
	.uleb128 0x25
	.string	"rtwint"
	.byte	0x4
	.byte	0x6e
	.long	0x453
	.uleb128 0x25
	.string	"rtint"
	.byte	0x4
	.byte	0x6f
	.long	0x2de
	.uleb128 0x25
	.string	"rtuint"
	.byte	0x4
	.byte	0x70
	.long	0x3b7
	.uleb128 0x25
	.string	"rtstr"
	.byte	0x4
	.byte	0x71
	.long	0x2cb
	.uleb128 0x25
	.string	"rtx"
	.byte	0x4
	.byte	0x72
	.long	0x9e
	.uleb128 0x25
	.string	"rtvec"
	.byte	0x4
	.byte	0x73
	.long	0x19f
	.uleb128 0x25
	.string	"rttype"
	.byte	0x4
	.byte	0x74
	.long	0x7f0
	.uleb128 0x25
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x75
	.long	0x774f
	.uleb128 0x25
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x76
	.long	0x78b5
	.uleb128 0x25
	.string	"rtbit"
	.byte	0x4
	.byte	0x77
	.long	0x5bbf
	.uleb128 0x25
	.string	"rttree"
	.byte	0x4
	.byte	0x78
	.long	0x1e7
	.uleb128 0x25
	.string	"bb"
	.byte	0x4
	.byte	0x79
	.long	0x5c1c
	.uleb128 0x25
	.string	"rtmem"
	.byte	0x4
	.byte	0x7a
	.long	0x78bb
	.byte	0x0
	.uleb128 0x18
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x78a1
	.uleb128 0x3
	.byte	0x4
	.long	0x77c4
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x7c
	.long	0x77cf
	.uleb128 0xf
	.long	0x78e0
	.long	0x78c1
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x78f0
	.long	0x9e
	.uleb128 0x10
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x7938
	.string	"asm_int_op"
	.byte	0x10
	.byte	0x14
	.byte	0x3a
	.uleb128 0x6
	.string	"hi"
	.byte	0x14
	.byte	0x3b
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"si"
	.byte	0x14
	.byte	0x3c
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"di"
	.byte	0x14
	.byte	0x3d
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"ti"
	.byte	0x14
	.byte	0x3e
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x7b6e
	.string	"asm_out"
	.byte	0x70
	.byte	0x14
	.byte	0x33
	.uleb128 0x6
	.string	"open_paren"
	.byte	0x14
	.byte	0x35
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"close_paren"
	.byte	0x14
	.byte	0x35
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"byte_op"
	.byte	0x14
	.byte	0x38
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"aligned_op"
	.byte	0x14
	.byte	0x3f
	.long	0x78f0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"unaligned_op"
	.byte	0x14
	.byte	0x3f
	.long	0x78f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"integer"
	.byte	0x14
	.byte	0x46
	.long	0x7b88
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"globalize_label"
	.byte	0x14
	.byte	0x49
	.long	0x7ba5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"visibility"
	.byte	0x14
	.byte	0x4d
	.long	0x7bbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"function_prologue"
	.byte	0x14
	.byte	0x50
	.long	0x7bd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"function_end_prologue"
	.byte	0x14
	.byte	0x53
	.long	0x7be5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"function_begin_epilogue"
	.byte	0x14
	.byte	0x56
	.long	0x7be5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"function_epilogue"
	.byte	0x14
	.byte	0x59
	.long	0x7bd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"named_section"
	.byte	0x14
	.byte	0x5d
	.long	0x7bfc
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"exception_section"
	.byte	0x14
	.byte	0x60
	.long	0x7ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"eh_frame_section"
	.byte	0x14
	.byte	0x63
	.long	0x7ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.string	"select_section"
	.byte	0x14
	.byte	0x6a
	.long	0x7c18
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"select_rtx_section"
	.byte	0x14
	.byte	0x6e
	.long	0x7c34
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.string	"unique_section"
	.byte	0x14
	.byte	0x73
	.long	0x7bbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.string	"constructor"
	.byte	0x14
	.byte	0x76
	.long	0x7c4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.string	"destructor"
	.byte	0x14
	.byte	0x79
	.long	0x7c4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x6
	.string	"output_mi_thunk"
	.byte	0x14
	.byte	0x80
	.long	0x7c71
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x6
	.string	"can_output_mi_thunk"
	.byte	0x14
	.byte	0x8b
	.long	0x7c96
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x22
	.long	0x7b88
	.byte	0x1
	.long	0x5186
	.uleb128 0x23
	.long	0x9e
	.uleb128 0x23
	.long	0x3b7
	.uleb128 0x23
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b6e
	.uleb128 0x2c
	.long	0x7b9f
	.byte	0x1
	.uleb128 0x23
	.long	0x7b9f
	.uleb128 0x23
	.long	0x2cb
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c2
	.uleb128 0x3
	.byte	0x4
	.long	0x7b8e
	.uleb128 0x2c
	.long	0x7bbc
	.byte	0x1
	.uleb128 0x23
	.long	0x1e7
	.uleb128 0x23
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7bab
	.uleb128 0x2c
	.long	0x7bd3
	.byte	0x1
	.uleb128 0x23
	.long	0x7b9f
	.uleb128 0x23
	.long	0x453
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7bc2
	.uleb128 0x2c
	.long	0x7be5
	.byte	0x1
	.uleb128 0x23
	.long	0x7b9f
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7bd9
	.uleb128 0x2c
	.long	0x7bfc
	.byte	0x1
	.uleb128 0x23
	.long	0x2cb
	.uleb128 0x23
	.long	0x3b7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7beb
	.uleb128 0x2c
	.long	0x7c18
	.byte	0x1
	.uleb128 0x23
	.long	0x1e7
	.uleb128 0x23
	.long	0x2de
	.uleb128 0x23
	.long	0x464
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7c02
	.uleb128 0x2c
	.long	0x7c34
	.byte	0x1
	.uleb128 0x23
	.long	0x7f0
	.uleb128 0x23
	.long	0x9e
	.uleb128 0x23
	.long	0x464
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7c1e
	.uleb128 0x2c
	.long	0x7c4b
	.byte	0x1
	.uleb128 0x23
	.long	0x9e
	.uleb128 0x23
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7c3a
	.uleb128 0x2c
	.long	0x7c71
	.byte	0x1
	.uleb128 0x23
	.long	0x7b9f
	.uleb128 0x23
	.long	0x1e7
	.uleb128 0x23
	.long	0x453
	.uleb128 0x23
	.long	0x453
	.uleb128 0x23
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7c51
	.uleb128 0x22
	.long	0x7c96
	.byte	0x1
	.long	0x5186
	.uleb128 0x23
	.long	0x1e7
	.uleb128 0x23
	.long	0x453
	.uleb128 0x23
	.long	0x453
	.uleb128 0x23
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7c77
	.uleb128 0x4
	.long	0x7e57
	.string	"sched"
	.byte	0x40
	.byte	0x14
	.byte	0x93
	.uleb128 0x6
	.string	"adjust_cost"
	.byte	0x14
	.byte	0x97
	.long	0x7e76
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"adjust_priority"
	.byte	0x14
	.byte	0x9b
	.long	0x7e91
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"issue_rate"
	.byte	0x14
	.byte	0xa0
	.long	0x7e9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"variable_issue"
	.byte	0x14
	.byte	0xa4
	.long	0x7ec2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"md_init"
	.byte	0x14
	.byte	0xa7
	.long	0x7ede
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"md_finish"
	.byte	0x14
	.byte	0xaa
	.long	0x7ef5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"reorder"
	.byte	0x14
	.byte	0xae
	.long	0x7f1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"reorder2"
	.byte	0x14
	.byte	0xaf
	.long	0x7f1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"use_dfa_pipeline_interface"
	.byte	0x14
	.byte	0xb4
	.long	0x7e9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"init_dfa_pre_cycle_insn"
	.byte	0x14
	.byte	0xc2
	.long	0x7ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"dfa_pre_cycle_insn"
	.byte	0x14
	.byte	0xc3
	.long	0x7f2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"init_dfa_post_cycle_insn"
	.byte	0x14
	.byte	0xc4
	.long	0x7ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"dfa_post_cycle_insn"
	.byte	0x14
	.byte	0xc5
	.long	0x7f2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x14
	.byte	0xcd
	.long	0x7e9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"init_dfa_bubbles"
	.byte	0x14
	.byte	0xd8
	.long	0x7ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"dfa_bubble"
	.byte	0x14
	.byte	0xd9
	.long	0x7f41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x22
	.long	0x7e76
	.byte	0x1
	.long	0x2de
	.uleb128 0x23
	.long	0x9e
	.uleb128 0x23
	.long	0x9e
	.uleb128 0x23
	.long	0x9e
	.uleb128 0x23
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7e57
	.uleb128 0x22
	.long	0x7e91
	.byte	0x1
	.long	0x2de
	.uleb128 0x23
	.long	0x9e
	.uleb128 0x23
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7e7c
	.uleb128 0x2d
	.byte	0x1
	.long	0x2de
	.uleb128 0x3
	.byte	0x4
	.long	0x7e97
	.uleb128 0x22
	.long	0x7ec2
	.byte	0x1
	.long	0x2de
	.uleb128 0x23
	.long	0x7b9f
	.uleb128 0x23
	.long	0x2de
	.uleb128 0x23
	.long	0x9e
	.uleb128 0x23
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ea3
	.uleb128 0x2c
	.long	0x7ede
	.byte	0x1
	.uleb128 0x23
	.long	0x7b9f
	.uleb128 0x23
	.long	0x2de
	.uleb128 0x23
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ec8
	.uleb128 0x2c
	.long	0x7ef5
	.byte	0x1
	.uleb128 0x23
	.long	0x7b9f
	.uleb128 0x23
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ee4
	.uleb128 0x22
	.long	0x7f1f
	.byte	0x1
	.long	0x2de
	.uleb128 0x23
	.long	0x7b9f
	.uleb128 0x23
	.long	0x2de
	.uleb128 0x23
	.long	0x53d4
	.uleb128 0x23
	.long	0x7e2
	.uleb128 0x23
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7efb
	.uleb128 0x2d
	.byte	0x1
	.long	0x9e
	.uleb128 0x3
	.byte	0x4
	.long	0x7f25
	.uleb128 0x22
	.long	0x7f41
	.byte	0x1
	.long	0x9e
	.uleb128 0x23
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f31
	.uleb128 0x4
	.long	0x8230
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x14
	.byte	0x30
	.uleb128 0x6
	.string	"asm_out"
	.byte	0x14
	.byte	0x8f
	.long	0x7938
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sched"
	.byte	0x14
	.byte	0xda
	.long	0x7c9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x6
	.string	"merge_decl_attributes"
	.byte	0x14
	.byte	0xdd
	.long	0x8245
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x6
	.string	"merge_type_attributes"
	.byte	0x14
	.byte	0xe0
	.long	0x8245
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x6
	.string	"attribute_table"
	.byte	0x14
	.byte	0xe4
	.long	0x824b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x6
	.string	"comp_type_attributes"
	.byte	0x14
	.byte	0xe9
	.long	0x826b
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x6
	.string	"set_default_type_attributes"
	.byte	0x14
	.byte	0xec
	.long	0x827d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x6
	.string	"insert_attributes"
	.byte	0x14
	.byte	0xef
	.long	0x8294
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x6
	.string	"function_attribute_inlinable_p"
	.byte	0x14
	.byte	0xf3
	.long	0x82aa
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x6
	.string	"ms_bitfield_layout_p"
	.byte	0x14
	.byte	0xf7
	.long	0x82aa
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x6
	.string	"init_builtins"
	.byte	0x14
	.byte	0xfa
	.long	0x7ea
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x6
	.string	"expand_builtin"
	.byte	0x14
	.byte	0xfd
	.long	0x82d4
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"section_type_flags"
	.byte	0x14
	.value	0x103
	.long	0x82f4
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"cannot_modify_jumps_p"
	.byte	0x14
	.value	0x107
	.long	0x8300
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"cannot_force_const_mem"
	.byte	0x14
	.value	0x10a
	.long	0x8316
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"in_small_data_p"
	.byte	0x14
	.value	0x10d
	.long	0x82aa
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"binds_local_p"
	.byte	0x14
	.value	0x111
	.long	0x82aa
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"encode_section_info"
	.byte	0x14
	.value	0x115
	.long	0x7bbc
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"strip_name_encoding"
	.byte	0x14
	.value	0x118
	.long	0x832c
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"have_named_sections"
	.byte	0x14
	.value	0x11d
	.long	0x5186
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"have_ctors_dtors"
	.byte	0x14
	.value	0x121
	.long	0x5186
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xd
	.string	"have_tls"
	.byte	0x14
	.value	0x124
	.long	0x5186
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xd
	.string	"have_srodata_section"
	.byte	0x14
	.value	0x127
	.long	0x5186
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xd
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x14
	.value	0x12a
	.long	0x5186
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x22
	.long	0x8245
	.byte	0x1
	.long	0x1e7
	.uleb128 0x23
	.long	0x1e7
	.uleb128 0x23
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8230
	.uleb128 0x3
	.byte	0x4
	.long	0x8251
	.uleb128 0xa
	.long	0x50c1
	.uleb128 0x22
	.long	0x826b
	.byte	0x1
	.long	0x2de
	.uleb128 0x23
	.long	0x1e7
	.uleb128 0x23
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8256
	.uleb128 0x2c
	.long	0x827d
	.byte	0x1
	.uleb128 0x23
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8271
	.uleb128 0x2c
	.long	0x8294
	.byte	0x1
	.uleb128 0x23
	.long	0x1e7
	.uleb128 0x23
	.long	0x51b3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8283
	.uleb128 0x22
	.long	0x82aa
	.byte	0x1
	.long	0x5186
	.uleb128 0x23
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x829a
	.uleb128 0x22
	.long	0x82d4
	.byte	0x1
	.long	0x9e
	.uleb128 0x23
	.long	0x1e7
	.uleb128 0x23
	.long	0x9e
	.uleb128 0x23
	.long	0x9e
	.uleb128 0x23
	.long	0x7f0
	.uleb128 0x23
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x82b0
	.uleb128 0x22
	.long	0x82f4
	.byte	0x1
	.long	0x3b7
	.uleb128 0x23
	.long	0x1e7
	.uleb128 0x23
	.long	0x2cb
	.uleb128 0x23
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x82da
	.uleb128 0x2d
	.byte	0x1
	.long	0x5186
	.uleb128 0x3
	.byte	0x4
	.long	0x82fa
	.uleb128 0x22
	.long	0x8316
	.byte	0x1
	.long	0x5186
	.uleb128 0x23
	.long	0x9e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8306
	.uleb128 0x22
	.long	0x832c
	.byte	0x1
	.long	0x2cb
	.uleb128 0x23
	.long	0x2cb
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x831c
	.uleb128 0x2e
	.byte	0x1
	.string	"init_method"
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2f
	.long	0x838e
	.byte	0x1
	.string	"set_mangled_name_for_decl"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x30
	.string	"decl"
	.byte	0x1
	.byte	0x51
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	0x8405
	.byte	0x1
	.string	"build_opfncall"
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.long	0x1e7
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x30
	.string	"code"
	.byte	0x1
	.byte	0x74
	.long	0xa7d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"flags"
	.byte	0x1
	.byte	0x75
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"xarg1"
	.byte	0x1
	.byte	0x76
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.string	"xarg2"
	.byte	0x1
	.byte	0x76
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.string	"arg3"
	.byte	0x1
	.byte	0x76
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.uleb128 0x31
	.long	0x84eb
	.byte	0x1
	.string	"hack_identifier"
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.long	0x1e7
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x30
	.string	"value"
	.byte	0x1
	.byte	0x90
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF22
	.byte	0x1
	.byte	0x90
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF2
	.byte	0x1
	.byte	0x92
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	0x847e
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x35
	.string	"access_type"
	.byte	0x1
	.byte	0xad
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x34
	.long	0x849b
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x35
	.string	"decl"
	.byte	0x1
	.byte	0xc3
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x34
	.long	0x84b5
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.byte	0xd3
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x34
	.long	0x84d1
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x33
	.long	.LASF24
	.byte	0x1
	.byte	0xea
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x36
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x35
	.string	"path"
	.byte	0x1
	.byte	0xfb
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x8599
	.byte	0x1
	.string	"make_thunk"
	.byte	0x1
	.value	0x11a
	.byte	0x1
	.long	0x1e7
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x38
	.long	.LASF26
	.byte	0x1
	.value	0x117
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"delta"
	.byte	0x1
	.value	0x118
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"vcall_index"
	.byte	0x1
	.value	0x119
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.string	"thunk_id"
	.byte	0x1
	.value	0x11b
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3a
	.string	"thunk"
	.byte	0x1
	.value	0x11c
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LASF40
	.byte	0x1
	.value	0x11d
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3a
	.string	"d"
	.byte	0x1
	.value	0x11e
	.long	0x453
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3c
	.long	.LASF44
	.long	0x8fb3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16671
	.byte	0x0
	.uleb128 0x3d
	.long	0x85fa
	.string	"make_alias_for_thunk"
	.byte	0x1
	.value	0x16e
	.byte	0x1
	.long	0x1e7
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x38
	.long	.LASF26
	.byte	0x1
	.value	0x16d
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x3a
	.string	"alias"
	.byte	0x1
	.value	0x16f
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x3a
	.string	"buf"
	.byte	0x1
	.value	0x170
	.long	0x85fa
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.byte	0x0
	.uleb128 0xf
	.long	0x860a
	.long	0x2d6
	.uleb128 0x10
	.long	0x3ce
	.byte	0xff
	.byte	0x0
	.uleb128 0x3e
	.long	0x8751
	.byte	0x1
	.string	"use_thunk"
	.byte	0x1
	.value	0x1a2
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x39
	.string	"thunk_fndecl"
	.byte	0x1
	.value	0x1a0
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"emit_p"
	.byte	0x1
	.value	0x1a1
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"fnaddr"
	.byte	0x1
	.value	0x1a3
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3b
	.long	.LASF26
	.byte	0x1
	.value	0x1a4
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3a
	.string	"alias"
	.byte	0x1
	.value	0x1a4
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3b
	.long	.LASF40
	.byte	0x1
	.value	0x1a5
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3a
	.string	"delta"
	.byte	0x1
	.value	0x1a6
	.long	0x453
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3a
	.string	"vcall_value"
	.byte	0x1
	.value	0x1a6
	.long	0x453
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	0x86de
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x3a
	.string	"fnname"
	.byte	0x1
	.value	0x1ff
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x34
	.long	0x8740
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x3a
	.string	"a"
	.byte	0x1
	.value	0x219
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3a
	.string	"t"
	.byte	0x1
	.value	0x219
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	0x8720
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x3a
	.string	"x"
	.byte	0x1
	.value	0x223
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x36
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x3a
	.string	"orig_this"
	.byte	0x1
	.value	0x237
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF44
	.long	0x8f9e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16791
	.byte	0x0
	.uleb128 0x3f
	.long	0x88a3
	.string	"do_build_copy_constructor"
	.byte	0x1
	.value	0x26c
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x38
	.long	.LASF45
	.byte	0x1
	.value	0x26b
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"parm"
	.byte	0x1
	.value	0x26d
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3a
	.string	"t"
	.byte	0x1
	.value	0x26e
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x36
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x3b
	.long	.LASF46
	.byte	0x1
	.value	0x27d
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3a
	.string	"n_bases"
	.byte	0x1
	.value	0x27e
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3a
	.string	"binfos"
	.byte	0x1
	.value	0x27f
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3a
	.string	"member_init_list"
	.byte	0x1
	.value	0x280
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3a
	.string	"cvquals"
	.byte	0x1
	.value	0x281
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.value	0x282
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	0x8844
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x3b
	.long	.LASF23
	.byte	0x1
	.value	0x28c
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x34
	.long	0x8861
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x3b
	.long	.LASF23
	.byte	0x1
	.value	0x298
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x36
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x3a
	.string	"init"
	.byte	0x1
	.value	0x2a6
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3a
	.string	"field"
	.byte	0x1
	.value	0x2a7
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3a
	.string	"expr_type"
	.byte	0x1
	.value	0x2a8
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.long	0x89cf
	.string	"do_build_assign_ref"
	.byte	0x1
	.value	0x2d4
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x38
	.long	.LASF45
	.byte	0x1
	.value	0x2d3
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"parm"
	.byte	0x1
	.value	0x2d5
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3b
	.long	.LASF47
	.byte	0x1
	.value	0x2d6
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	0x8916
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x3a
	.string	"t"
	.byte	0x1
	.value	0x2e1
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x36
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x3b
	.long	.LASF46
	.byte	0x1
	.value	0x2e6
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3a
	.string	"cvquals"
	.byte	0x1
	.value	0x2e7
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.value	0x2e8
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	0x8985
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x3b
	.long	.LASF23
	.byte	0x1
	.value	0x2ed
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3a
	.string	"converted_parm"
	.byte	0x1
	.value	0x2ee
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x36
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x3a
	.string	"comp"
	.byte	0x1
	.value	0x303
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3a
	.string	"init"
	.byte	0x1
	.value	0x303
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3a
	.string	"t"
	.byte	0x1
	.value	0x303
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3a
	.string	"field"
	.byte	0x1
	.value	0x304
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0x8a89
	.byte	0x1
	.string	"synthesize_method"
	.byte	0x1
	.value	0x33b
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x38
	.long	.LASF45
	.byte	0x1
	.value	0x33a
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"nested"
	.byte	0x1
	.value	0x33c
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3b
	.long	.LASF24
	.byte	0x1
	.value	0x33d
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3a
	.string	"need_body"
	.byte	0x1
	.value	0x33e
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3a
	.string	"stmt"
	.byte	0x1
	.value	0x33f
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	0x8a6f
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x3a
	.string	"arg_chain"
	.byte	0x1
	.value	0x367
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x36
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x3b
	.long	.LASF47
	.byte	0x1
	.value	0x372
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.long	0x8bc8
	.string	"synthesize_exception_spec"
	.byte	0x1
	.value	0x38c
	.byte	0x1
	.long	0x1e7
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x38
	.long	.LASF2
	.byte	0x1
	.value	0x389
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"extractor"
	.byte	0x1
	.value	0x38a
	.long	0x8bdd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.long	.LASF48
	.byte	0x1
	.value	0x38b
	.long	0x4ba
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.string	"raises"
	.byte	0x1
	.value	0x38d
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3b
	.long	.LASF46
	.byte	0x1
	.value	0x38e
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.value	0x38f
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3a
	.string	"n_bases"
	.byte	0x1
	.value	0x38f
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3a
	.string	"binfos"
	.byte	0x1
	.value	0x390
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	0x8b87
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x3a
	.string	"base"
	.byte	0x1
	.value	0x394
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3a
	.string	"fn"
	.byte	0x1
	.value	0x395
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x3b
	.long	.LASF49
	.byte	0x1
	.value	0x398
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x3b
	.long	.LASF2
	.byte	0x1
	.value	0x39f
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3a
	.string	"fn"
	.byte	0x1
	.value	0x3a0
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x3b
	.long	.LASF49
	.byte	0x1
	.value	0x3ac
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0x8bdd
	.byte	0x1
	.long	0x1e7
	.uleb128 0x23
	.long	0x1e7
	.uleb128 0x23
	.long	0x4ba
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8bc8
	.uleb128 0x3d
	.long	0x8c36
	.string	"locate_dtor"
	.byte	0x1
	.value	0x3ba
	.byte	0x1
	.long	0x1e7
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x38
	.long	.LASF2
	.byte	0x1
	.value	0x3b8
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.long	.LASF48
	.byte	0x1
	.value	0x3b9
	.long	0x4ba
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"fns"
	.byte	0x1
	.value	0x3bb
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3d
	.long	0x8cb2
	.string	"locate_ctor"
	.byte	0x1
	.value	0x3ca
	.byte	0x1
	.long	0x1e7
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x38
	.long	.LASF2
	.byte	0x1
	.value	0x3c8
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.long	.LASF48
	.byte	0x1
	.value	0x3c9
	.long	0x4ba
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"fns"
	.byte	0x1
	.value	0x3cb
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x3a
	.string	"fn"
	.byte	0x1
	.value	0x3d4
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3a
	.string	"parms"
	.byte	0x1
	.value	0x3d5
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x8ce6
	.string	"copy_data"
	.byte	0x8
	.byte	0x1
	.value	0x3de
	.uleb128 0x1c
	.long	.LASF22
	.byte	0x1
	.value	0x3df
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"quals"
	.byte	0x1
	.value	0x3e0
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3d
	.long	0x8dde
	.string	"locate_copy"
	.byte	0x1
	.value	0x3eb
	.byte	0x1
	.long	0x1e7
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x38
	.long	.LASF2
	.byte	0x1
	.value	0x3e9
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"client_"
	.byte	0x1
	.value	0x3ea
	.long	0x4ba
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF48
	.byte	0x1
	.value	0x3ec
	.long	0x8dde
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3a
	.string	"fns"
	.byte	0x1
	.value	0x3ed
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3a
	.string	"ix"
	.byte	0x1
	.value	0x3ee
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3a
	.string	"best"
	.byte	0x1
	.value	0x3ef
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3a
	.string	"excess_p"
	.byte	0x1
	.value	0x3f0
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x3a
	.string	"fn"
	.byte	0x1
	.value	0x3ff
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3a
	.string	"parms"
	.byte	0x1
	.value	0x400
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3a
	.string	"src_type"
	.byte	0x1
	.value	0x401
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3a
	.string	"excess"
	.byte	0x1
	.value	0x402
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3a
	.string	"quals"
	.byte	0x1
	.value	0x403
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8cb2
	.uleb128 0x37
	.long	0x8f26
	.byte	0x1
	.string	"implicitly_declare_fn"
	.byte	0x1
	.value	0x429
	.byte	0x1
	.long	0x1e7
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x39
	.string	"kind"
	.byte	0x1
	.value	0x426
	.long	0x6e39
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.long	.LASF2
	.byte	0x1
	.value	0x427
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"const_p"
	.byte	0x1
	.value	0x428
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.string	"declspecs"
	.byte	0x1
	.value	0x42a
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3a
	.string	"fn"
	.byte	0x1
	.value	0x42b
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3a
	.string	"args"
	.byte	0x1
	.value	0x42b
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3a
	.string	"raises"
	.byte	0x1
	.value	0x42c
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3a
	.string	"retref"
	.byte	0x1
	.value	0x42d
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3a
	.string	"has_parm"
	.byte	0x1
	.value	0x42e
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.long	.LASF22
	.byte	0x1
	.value	0x42f
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	0x8ef1
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x3a
	.string	"data"
	.byte	0x1
	.value	0x443
	.long	0x8cb2
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3a
	.string	"argtype"
	.byte	0x1
	.value	0x444
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x34
	.long	0x8f15
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x3a
	.string	"declarator"
	.byte	0x1
	.value	0x466
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF44
	.long	0x8f89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17502
	.byte	0x0
	.uleb128 0x37
	.long	0x8f79
	.byte	0x1
	.string	"skip_artificial_parms_for"
	.byte	0x1
	.value	0x481
	.byte	0x1
	.long	0x1e7
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x39
	.string	"fn"
	.byte	0x1
	.value	0x480
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"list"
	.byte	0x1
	.value	0x480
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xf
	.long	0x8f89
	.long	0x2d6
	.uleb128 0x10
	.long	0x3ce
	.byte	0x15
	.byte	0x0
	.uleb128 0xa
	.long	0x8f79
	.uleb128 0xf
	.long	0x8f9e
	.long	0x2d6
	.uleb128 0x10
	.long	0x3ce
	.byte	0x9
	.byte	0x0
	.uleb128 0xa
	.long	0x8f8e
	.uleb128 0xf
	.long	0x8fb3
	.long	0x2d6
	.uleb128 0x10
	.long	0x3ce
	.byte	0xa
	.byte	0x0
	.uleb128 0xa
	.long	0x8fa3
	.uleb128 0x3a
	.string	"thunk_labelno"
	.byte	0x1
	.value	0x168
	.long	0x2de
	.byte	0x5
	.byte	0x3
	.long	thunk_labelno
	.uleb128 0xf
	.long	0x8fdf
	.long	0x2d6
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x41
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x43
	.long	0x8ff7
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x8fd4
	.uleb128 0xf
	.long	0x900c
	.long	0x1e7
	.uleb128 0x10
	.long	0x3ce
	.byte	0x3f
	.byte	0x0
	.uleb128 0x42
	.string	"global_trees"
	.byte	0x3
	.value	0x8ee
	.long	0x8ffc
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x9033
	.long	0x1e7
	.uleb128 0x10
	.long	0x3ce
	.byte	0xa
	.byte	0x0
	.uleb128 0x42
	.string	"integer_types"
	.byte	0x3
	.value	0x95f
	.long	0x9023
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x905b
	.long	0x1e7
	.uleb128 0x10
	.long	0x3ce
	.byte	0x5
	.byte	0x0
	.uleb128 0x42
	.string	"sizetype_tab"
	.byte	0x3
	.value	0xb10
	.long	0x904b
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"input_filename"
	.byte	0x3
	.value	0xbf6
	.long	0x2cb
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"lineno"
	.byte	0x3
	.value	0xbf9
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"immediate_size_expand"
	.byte	0x3
	.value	0xc03
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"current_function_decl"
	.byte	0x3
	.value	0xc07
	.long	0x1e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"cfun"
	.byte	0x8
	.value	0x202
	.long	0x4634
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_weak"
	.byte	0xb
	.value	0x2da
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x910f
	.long	0x1e7
	.uleb128 0x10
	.long	0x3ce
	.byte	0x49
	.byte	0x0
	.uleb128 0x42
	.string	"cp_global_trees"
	.byte	0xa
	.value	0x28f
	.long	0x90ff
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"scope_chain"
	.byte	0xa
	.value	0x368
	.long	0x60bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.long	.LASF36
	.byte	0xa
	.value	0x3e6
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"at_eof"
	.byte	0xa
	.value	0xd4d
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x9169
	.long	0x6e9a
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x42
	.string	"assignment_operator_name_info"
	.byte	0xa
	.value	0xe34
	.long	0x915e
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"asm_out_file"
	.byte	0xf
	.value	0x194
	.long	0x7b9f
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_syntax_only"
	.byte	0x13
	.value	0x1a1
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_function_sections"
	.byte	0x13
	.value	0x20a
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"targetm"
	.byte	0x14
	.value	0x12d
	.long	0x7f47
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
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
	.uleb128 0x30
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3f
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xce
	.value	0x2
	.long	.Ldebug_info0
	.long	0x91f7
	.long	0x8332
	.string	"init_method"
	.long	0x834f
	.string	"set_mangled_name_for_decl"
	.long	0x838e
	.string	"build_opfncall"
	.long	0x8405
	.string	"hack_identifier"
	.long	0x84eb
	.string	"make_thunk"
	.long	0x860a
	.string	"use_thunk"
	.long	0x89cf
	.string	"synthesize_method"
	.long	0x8de4
	.string	"implicitly_declare_fn"
	.long	0x8f26
	.string	"skip_artificial_parms_for"
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
.LASF28:
	.string	"cannot_inline"
.LASF40:
	.string	"vcall_offset"
.LASF6:
	.string	"lang_flag_0"
.LASF8:
	.string	"lang_flag_2"
.LASF10:
	.string	"lang_flag_4"
.LASF12:
	.string	"lang_flag_6"
.LASF31:
	.string	"sequence_stack"
.LASF47:
	.string	"compound_stmt"
.LASF43:
	.string	"mem_attrs"
.LASF33:
	.string	"bindings"
.LASF36:
	.string	"interface_unknown"
.LASF23:
	.string	"binfo"
.LASF0:
	.string	"common"
.LASF46:
	.string	"fields"
.LASF25:
	.string	"lang_specific"
.LASF21:
	.string	"align"
.LASF32:
	.string	"sequence_rtl_expr"
.LASF35:
	.string	"cxx_saved_binding"
.LASF39:
	.string	"befriending_classes"
.LASF30:
	.string	"function_frequency"
.LASF7:
	.string	"lang_flag_1"
.LASF9:
	.string	"lang_flag_3"
.LASF13:
	.string	"lang_flag_7"
.LASF26:
	.string	"function"
.LASF49:
	.string	"fn_raises"
.LASF3:
	.string	"unsigned int"
.LASF42:
	.string	"operator_name_info_t"
.LASF16:
	.string	"abstract_origin"
.LASF19:
	.string	"pointer_depth"
.LASF37:
	.string	"use_template"
.LASF20:
	.string	"user_align"
.LASF17:
	.string	"size_unit"
.LASF48:
	.string	"client"
.LASF2:
	.string	"type"
.LASF29:
	.string	"language"
.LASF27:
	.string	"args_size"
.LASF41:
	.string	"special_function_kind"
.LASF45:
	.string	"fndecl"
.LASF5:
	.string	"built_in_class"
.LASF1:
	.string	"identifier"
.LASF11:
	.string	"lang_flag_5"
.LASF15:
	.string	"abstract_flag"
.LASF34:
	.string	"x_stmt_tree"
.LASF24:
	.string	"context"
.LASF38:
	.string	"template_info"
.LASF44:
	.string	"__FUNCTION__"
.LASF14:
	.string	"ht_identifier"
.LASF4:
	.string	"_IO_FILE"
.LASF18:
	.string	"attributes"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
