	.file	"error.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.data.rel.local,"aw",@progbits
	.align 4
	.type	scratch_buffer, @object
	.size	scratch_buffer, 4
scratch_buffer:
	.long	scratch_buffer_rec
	.text
.globl init_error
	.type	init_error, @function
init_error:
.LFB15:
	.file 1 "../../../kg++fe/gnu/cp/error.c"
	.loc 1 128 0
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
	.loc 1 129 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	cp_diagnostic_starter@GOTOFF(%ebx), %eax
	movl	%eax, 244(%edx)
	.loc 1 130 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	cp_diagnostic_finalizer@GOTOFF(%ebx), %eax
	movl	%eax, 248(%edx)
	.loc 1 131 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	cp_printer@GOTOFF(%ebx), %eax
	movl	%eax, 204(%edx)
	.loc 1 133 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	init_output_buffer@PLT
	.loc 1 134 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	init_error, .-init_error
	.section	.rodata
.LC0:
	.string	"::"
	.text
	.type	dump_scope, @function
dump_scope:
.LFB16:
	.loc 1 142 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$36, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 143 0
	movl	12(%ebp), %eax
	andl	$3, %eax
	movl	%eax, -8(%ebp)
	.loc 1 145 0
	cmpl	$0, 8(%ebp)
	je	.L18
	.loc 1 148 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L6
	.loc 1 150 0
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 8(%ebp)
	je	.L18
	.loc 1 152 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_decl
	.loc 1 153 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L18
.L6:
	.loc 1 156 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L10
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L10
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L10
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	je	.L10
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$20, %al
	jne	.L15
.L10:
	.loc 1 158 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_type
	.loc 1 159 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 156 0
	jmp	.L18
.L15:
	.loc 1 161 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L18
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L18
	.loc 1 163 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_function_decl
	.loc 1 164 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L18:
	.loc 1 166 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	dump_scope, .-dump_scope
	.section	.rodata
.LC1:
	.string	"const"
.LC2:
	.string	"volatile"
.LC3:
	.string	"__restrict"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 4
	.type	names.15262, @object
	.size	names.15262, 12
names.15262:
	.long	.LC1
	.long	.LC2
	.long	.LC3
	.section	.rodata
	.align 4
	.type	masks.15261, @object
	.size	masks.15261, 12
masks.15261:
	.long	1
	.long	2
	.long	4
	.text
	.type	dump_qualifiers, @function
dump_qualifiers:
.LFB17:
	.loc 1 175 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$36, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 181 0
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
	jne	.L20
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L20
	movl	$1, -24(%ebp)
	jmp	.L23
.L20:
	movl	$0, -24(%ebp)
.L23:
	movl	-24(%ebp), %eax
	sall	$3, %eax
	orl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 182 0
	cmpl	$2, 12(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 184 0
	cmpl	$0, -12(%ebp)
	je	.L24
	.loc 1 186 0
	movl	$0, -16(%ebp)
	jmp	.L26
.L27:
	.loc 1 187 0
	movl	-16(%ebp), %eax
	movl	masks.15261@GOTOFF(%ebx,%eax,4), %eax
	andl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L28
	.loc 1 189 0
	cmpl	$1, 12(%ebp)
	jne	.L30
	.loc 1 190 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_add_space@PLT
.L30:
	.loc 1 191 0
	movl	$1, 12(%ebp)
	.loc 1 192 0
	movl	-16(%ebp), %eax
	movl	names.15262@GOTOFF(%ebx,%eax,4), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L28:
	.loc 1 186 0
	addl	$1, -16(%ebp)
.L26:
	cmpl	$3, -16(%ebp)
	jne	.L27
	.loc 1 194 0
	cmpl	$0, -8(%ebp)
	je	.L35
	.loc 1 195 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_add_space@PLT
	jmp	.L35
.L24:
	.loc 1 198 0
	movl	$0, 12(%ebp)
.L35:
	.loc 1 199 0
	movl	12(%ebp), %eax
	.loc 1 200 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	dump_qualifiers, .-dump_qualifiers
	.type	dump_template_argument, @function
dump_template_argument:
.LFB18:
	.loc 1 212 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$20, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 213 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	je	.L38
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L40
.L38:
	.loc 1 214 0
	movl	12(%ebp), %eax
	andl	$-9, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_type
	.loc 1 213 0
	jmp	.L42
.L40:
	.loc 1 216 0
	movl	12(%ebp), %eax
	andl	$-521, %eax
	orb	$2, %ah
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_expr
.L42:
	.loc 1 217 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	dump_template_argument, .-dump_template_argument
	.section	.rodata
.LC4:
	.string	", "
	.text
	.type	dump_template_argument_list, @function
dump_template_argument_list:
.LFB19:
	.loc 1 226 0
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
	.loc 1 227 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 228 0
	movl	$0, -12(%ebp)
	.loc 1 231 0
	movl	$0, -8(%ebp)
	jmp	.L44
.L45:
	.loc 1 233 0
	cmpl	$0, -12(%ebp)
	je	.L46
	.loc 1 234 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L46:
	.loc 1 235 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_template_argument
	.loc 1 236 0
	movl	$1, -12(%ebp)
	.loc 1 231 0
	addl	$1, -8(%ebp)
.L44:
	movl	-8(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L45
	.loc 1 238 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	dump_template_argument_list, .-dump_template_argument_list
	.section	.rodata
.LC5:
	.string	"class"
	.align 4
.LC6:
	.string	"{template default argument error}"
.LC7:
	.string	" = "
	.text
	.type	dump_template_parameter, @function
dump_template_parameter:
.LFB20:
	.loc 1 246 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	pushl	%ebx
.LCFI22:
	subl	$36, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 247 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 248 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 250 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L51
	.loc 1 252 0
	movl	12(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L53
	.loc 1 254 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 255 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L60
	.loc 1 257 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_add_space@PLT
	.loc 1 258 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L60
.L53:
	.loc 1 261 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L58
	.loc 1 262 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L60
.L58:
	.loc 1 264 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L60
.L51:
	.loc 1 267 0
	movl	12(%ebp), %eax
	orl	$4, %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_decl
.L60:
	.loc 1 269 0
	movl	12(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L67
	cmpl	$0, -8(%ebp)
	je	.L67
	.loc 1 271 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 272 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L64
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L66
.L64:
	.loc 1 273 0
	movl	12(%ebp), %eax
	andl	$-3, %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_type
	.loc 1 272 0
	jmp	.L67
.L66:
	.loc 1 275 0
	movl	12(%ebp), %eax
	orb	$2, %ah
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_expr
.L67:
	.loc 1 277 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	dump_template_parameter, .-dump_template_parameter
	.section	.rodata
.LC8:
	.string	"<missing>"
	.text
	.type	dump_template_bindings, @function
dump_template_bindings:
.LFB21:
	.loc 1 286 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$68, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 287 0
	movl	$0, -32(%ebp)
	.loc 1 289 0
	jmp	.L69
.L70:
.LBB2:
	.loc 1 291 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 292 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 293 0
	movl	$0, -20(%ebp)
	.loc 1 296 0
	movl	$0, -16(%ebp)
	jmp	.L71
.L72:
.LBB3:
	.loc 1 298 0
	movl	$0, -12(%ebp)
	.loc 1 301 0
	cmpl	$0, 12(%ebp)
	je	.L73
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L73
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L73
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L73
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L73
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L79
.L73:
	movl	$1, -52(%ebp)
.L79:
	movl	-52(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jl	.L80
.LBB4:
	.loc 1 303 0
	cmpl	$0, 12(%ebp)
	je	.L82
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L82
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L82
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L82
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L82
	movl	-24(%ebp), %edx
	subl	$1, %edx
	movl	12(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	%edx, -48(%ebp)
	jmp	.L88
.L82:
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
.L88:
	movl	-48(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 304 0
	cmpl	$0, -8(%ebp)
	je	.L89
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L91
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L93
.L91:
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	movl	%eax, -40(%ebp)
.L93:
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L94
.L89:
	movl	$0, -44(%ebp)
.L94:
	movl	-44(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jle	.L80
	.loc 1 305 0
	movl	-20(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
.L80:
.LBE4:
	.loc 1 308 0
	cmpl	$0, -32(%ebp)
	je	.L96
	.loc 1 309 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L96:
	.loc 1 310 0
	movl	-16(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dump_template_parameter
	.loc 1 311 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 312 0
	cmpl	$0, -12(%ebp)
	je	.L98
	.loc 1 313 0
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_template_argument
	jmp	.L100
.L98:
	.loc 1 315 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L100:
	.loc 1 317 0
	addl	$1, -20(%ebp)
	.loc 1 318 0
	movl	$1, -32(%ebp)
.LBE3:
	.loc 1 296 0
	addl	$1, -16(%ebp)
.L71:
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L72
	.loc 1 321 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L69:
.LBE2:
	.loc 1 289 0
	cmpl	$0, 8(%ebp)
	jne	.L70
	.loc 1 323 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	dump_template_bindings, .-dump_template_bindings
	.section	.rodata
	.type	__FUNCTION__.15494, @object
	.size	__FUNCTION__.15494, 10
__FUNCTION__.15494:
	.string	"dump_type"
.LC9:
	.string	"<unknown type>"
.LC10:
	.string	"__complex__ "
.LC11:
	.string	"vector "
.LC12:
	.string	"unsigned "
.LC13:
	.string	"signed "
.LC14:
	.string	"<anonymous>"
	.align 4
.LC15:
	.string	"<anonymous template template parameter>"
	.align 4
.LC16:
	.string	"<anonymous template type parameter>"
.LC17:
	.string	"typename "
.LC18:
	.string	"template "
.LC19:
	.string	"__typeof ("
.LC20:
	.string	"`%s' not supported by %s"
.LC21:
	.string	"<type error>"
	.text
	.type	dump_type, @function
dump_type:
.LFB22:
	.loc 1 332 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$52, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 333 0
	cmpl	$0, 8(%ebp)
	je	.L165
	.loc 1 336 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L107
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L107
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L110
.L107:
	.loc 1 339 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	cmpl	$199, -44(%ebp)
	ja	.L111
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	.L130@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L130:
	.long	.L112@GOTOFF
	.long	.L113@GOTOFF
	.long	.L111@GOTOFF
	.long	.L114@GOTOFF
	.long	.L115@GOTOFF
	.long	.L111@GOTOFF
	.long	.L116@GOTOFF
	.long	.L117@GOTOFF
	.long	.L116@GOTOFF
	.long	.L118@GOTOFF
	.long	.L119@GOTOFF
	.long	.L120@GOTOFF
	.long	.L116@GOTOFF
	.long	.L111@GOTOFF
	.long	.L110@GOTOFF
	.long	.L110@GOTOFF
	.long	.L110@GOTOFF
	.long	.L110@GOTOFF
	.long	.L111@GOTOFF
	.long	.L110@GOTOFF
	.long	.L111@GOTOFF
	.long	.L120@GOTOFF
	.long	.L120@GOTOFF
	.long	.L111@GOTOFF
	.long	.L110@GOTOFF
	.long	.L121@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L122@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L123@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L111@GOTOFF
	.long	.L123@GOTOFF
	.long	.L111@GOTOFF
	.long	.L124@GOTOFF
	.long	.L125@GOTOFF
	.long	.L126@GOTOFF
	.long	.L127@GOTOFF
	.long	.L128@GOTOFF
	.long	.L129@GOTOFF
	.text
.L121:
	.loc 1 342 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 343 0
	jmp	.L165
.L114:
	.loc 1 347 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_parameters
	.loc 1 348 0
	jmp	.L165
.L113:
	.loc 1 351 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 352 0
	jmp	.L165
.L115:
	.loc 1 355 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	.loc 1 356 0
	jmp	.L165
.L120:
	.loc 1 361 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_aggr_type
	.loc 1 362 0
	jmp	.L165
.L122:
	.loc 1 365 0
	movl	12(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L123
	.loc 1 367 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L132
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L134
.L132:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
.L134:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_type
	.loc 1 369 0
	jmp	.L165
.L123:
	.loc 1 375 0
	movl	12(%ebp), %eax
	andl	$-5, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_decl
	.loc 1 376 0
	jmp	.L165
.L118:
	.loc 1 379 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 380 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	.loc 1 381 0
	jmp	.L165
.L119:
	.loc 1 384 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.LBB5:
	.loc 1 389 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 390 0
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	c_common_type_for_mode@PLT
	movl	%eax, -16(%ebp)
	.loc 1 391 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_type
	.loc 1 393 0
	jmp	.L165
.L117:
.LBE5:
	.loc 1 396 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L135
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L135
	.loc 1 397 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 396 0
	jmp	.L116
.L135:
	.loc 1 398 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L116
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L116
	.loc 1 399 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L116:
.LBB6:
	.loc 1 407 0
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_qualifiers
	.loc 1 408 0
	movl	12(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L140
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L142
.L140:
	movl	8(%ebp), %edx
	movl	%edx, -36(%ebp)
.L142:
	movl	-36(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 409 0
	movl	-12(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L143
	movl	-12(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L143
	.loc 1 410 0
	movl	-12(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 409 0
	jmp	.L165
.L143:
	.loc 1 415 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 417 0
	jmp	.L165
.L125:
.LBE6:
	.loc 1 421 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L147
	.loc 1 422 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L165
.L147:
	.loc 1 424 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 426 0
	jmp	.L165
.L126:
.LBB7:
	.loc 1 430 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L150
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L152
.L150:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L153
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L155
.L153:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L156
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L158
.L156:
	movl	$0, -24(%ebp)
.L158:
	movl	-24(%ebp), %edx
	movl	%edx, -28(%ebp)
.L155:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
.L152:
	movl	-32(%ebp), %edx
	movl	20(%edx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 431 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 432 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$60, 4(%esp)
	movl	%eax, (%esp)
	call	print_non_consecutive_character
	.loc 1 433 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_template_argument_list
	.loc 1 434 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$62, 4(%esp)
	movl	%eax, (%esp)
	call	print_non_consecutive_character
	.loc 1 436 0
	jmp	.L165
.L124:
.LBE7:
	.loc 1 439 0
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_qualifiers
	.loc 1 440 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L159
	.loc 1 441 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L165
.L159:
	.loc 1 443 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 445 0
	jmp	.L165
.L110:
	.loc 1 457 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_type_prefix
	.loc 1 458 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_type_suffix
	.loc 1 459 0
	jmp	.L165
.L127:
	.loc 1 462 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	jne	.L162
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L164
.L162:
	.loc 1 463 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L164:
	.loc 1 464 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_typename
	.loc 1 465 0
	jmp	.L165
.L128:
	.loc 1 468 0
	movl	8(%ebp), %eax
	movl	80(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	.loc 1 469 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 470 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 471 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	.loc 1 472 0
	jmp	.L165
.L129:
	.loc 1 475 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 476 0
	movl	12(%ebp), %edx
	andb	$253, %dh
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 477 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 478 0
	jmp	.L165
.L111:
	.loc 1 481 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	leal	__FUNCTION__.15494@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sorry@PLT
.L112:
	.loc 1 485 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L165:
	.loc 1 488 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	dump_type, .-dump_type
	.type	dump_typename, @function
dump_typename:
.LFB23:
	.loc 1 497 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$36, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 498 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 500 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	jne	.L167
	.loc 1 501 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_typename
	jmp	.L169
.L167:
	.loc 1 503 0
	movl	12(%ebp), %eax
	andl	$-9, %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_type
.L169:
	.loc 1 504 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 505 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_decl
	.loc 1 506 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	dump_typename, .-dump_typename
	.section	.rodata
.LC22:
	.string	"enum"
.LC23:
	.string	"union"
.LC24:
	.string	"struct"
	.text
	.type	class_key_or_enum, @function
class_key_or_enum:
.LFB24:
	.loc 1 513 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	subl	$4, %esp
.LCFI38:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 514 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L172
	.loc 1 515 0
	leal	.LC22@GOTOFF(%ecx), %eax
	movl	%eax, -4(%ebp)
	jmp	.L174
.L172:
	.loc 1 516 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L175
	.loc 1 517 0
	leal	.LC23@GOTOFF(%ecx), %eax
	movl	%eax, -4(%ebp)
	jmp	.L174
.L175:
	.loc 1 518 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L177
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L177
	.loc 1 519 0
	leal	.LC5@GOTOFF(%ecx), %eax
	movl	%eax, -4(%ebp)
	jmp	.L174
.L177:
	.loc 1 521 0
	leal	.LC24@GOTOFF(%ecx), %eax
	movl	%eax, -4(%ebp)
.L174:
	movl	-4(%ebp), %eax
	.loc 1 522 0
	leave
	ret
.LFE24:
	.size	class_key_or_enum, .-class_key_or_enum
	.section	.rodata
.LC25:
	.string	"<anonymous %s>"
	.text
	.type	dump_aggr_type, @function
dump_aggr_type:
.LFB25:
	.loc 1 531 0
	pushl	%ebp
.LCFI39:
	movl	%esp, %ebp
.LCFI40:
	pushl	%ebx
.LCFI41:
	subl	$84, %esp
.LCFI42:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 533 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	class_key_or_enum
	movl	%eax, -20(%ebp)
	.loc 1 534 0
	movl	$0, -16(%ebp)
	.loc 1 535 0
	movl	$0, -12(%ebp)
	.loc 1 537 0
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_qualifiers
	.loc 1 539 0
	movl	12(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L182
	.loc 1 541 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_string@PLT
	.loc 1 542 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_add_space@PLT
.L182:
	.loc 1 545 0
	movl	12(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L184
	.loc 1 546 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, 8(%ebp)
.L184:
	.loc 1 548 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 550 0
	cmpl	$0, -24(%ebp)
	je	.L186
	.loc 1 552 0
	movl	-24(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 553 0
	cmpl	$0, -16(%ebp)
	jne	.L188
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L188
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L188
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L188
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	cmpb	$8, %al
	je	.L193
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L193
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	je	.L193
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
	jne	.L188
.L193:
	movl	$1, -68(%ebp)
	jmp	.L197
.L188:
	movl	$0, -68(%ebp)
.L197:
	movl	-68(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 559 0
	movl	12(%ebp), %eax
	orl	$1, %eax
	movl	%eax, -64(%ebp)
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L198
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L200
.L198:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
.L200:
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_scope
	.loc 1 560 0
	cmpl	$0, -12(%ebp)
	je	.L201
.LBB8:
	.loc 1 564 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 566 0
	jmp	.L203
.L204:
	.loc 1 567 0
	movl	-8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
.L203:
	.loc 1 566 0
	movl	-8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L204
	.loc 1 568 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L201:
.LBE8:
	.loc 1 570 0
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
.L186:
	.loc 1 573 0
	cmpl	$0, -24(%ebp)
	je	.L206
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L208
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L208
.L206:
	.loc 1 575 0
	movl	12(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L210
	.loc 1 576 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L213
.L210:
	.loc 1 578 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	.LC25@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	output_printf@PLT
	.loc 1 573 0
	jmp	.L213
.L208:
	.loc 1 581 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L213:
	.loc 1 582 0
	cmpl	$0, -12(%ebp)
	je	.L225
	.loc 1 583 0
	movl	12(%ebp), %eax
	andb	$127, %al
	movl	%eax, -56(%ebp)
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L216
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L218
.L216:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L219
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L221
.L219:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L222
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L224
.L222:
	movl	$0, -40(%ebp)
.L224:
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
.L221:
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
.L218:
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_template_parms
.L225:
	.loc 1 586 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	dump_aggr_type, .-dump_aggr_type
	.section	.rodata
	.type	__FUNCTION__.15820, @object
	.size	__FUNCTION__.15820, 17
__FUNCTION__.15820:
	.string	"dump_type_prefix"
.LC27:
	.string	"<typeprefixerror>"
.LC26:
	.string	"&*"
	.text
	.type	dump_type_prefix, @function
dump_type_prefix:
.LFB26:
	.loc 1 606 0
	pushl	%ebp
.LCFI43:
	movl	%esp, %ebp
.LCFI44:
	pushl	%ebx
.LCFI45:
	subl	$36, %esp
.LCFI46:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 607 0
	movl	$1, -12(%ebp)
	.loc 1 609 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L227
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L227
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L227
	.loc 1 611 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 612 0
	jmp	.L231
.L227:
	.loc 1 615 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$17, -24(%ebp)
	je	.L236
	cmpl	$17, -24(%ebp)
	ja	.L239
	cmpl	$12, -24(%ebp)
	ja	.L240
	cmpl	$6, -24(%ebp)
	jae	.L234
	cmpl	$1, -24(%ebp)
	je	.L234
	cmpl	$1, -24(%ebp)
	jb	.L233
	movl	-24(%ebp), %eax
	subl	$3, %eax
	cmpl	$1, %eax
	ja	.L232
	jmp	.L234
.L240:
	cmpl	$15, -24(%ebp)
	je	.L231
	cmpl	$15, -24(%ebp)
	ja	.L235
	cmpl	$14, -24(%ebp)
	je	.L235
	jmp	.L232
.L239:
	cmpl	$25, -24(%ebp)
	je	.L234
	cmpl	$25, -24(%ebp)
	ja	.L241
	cmpl	$22, -24(%ebp)
	ja	.L242
	cmpl	$21, -24(%ebp)
	jae	.L234
	cmpl	$19, -24(%ebp)
	je	.L237
	jmp	.L232
.L242:
	cmpl	$24, -24(%ebp)
	je	.L238
	jmp	.L232
.L241:
	cmpl	$197, -24(%ebp)
	ja	.L243
	cmpl	$194, -24(%ebp)
	jae	.L234
	cmpl	$34, -24(%ebp)
	je	.L234
	jmp	.L232
.L243:
	cmpl	$199, -24(%ebp)
	je	.L234
	jmp	.L232
.L235:
.LBB9:
	.loc 1 620 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 622 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_type_prefix
	movl	%eax, -12(%ebp)
	.loc 1 625 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L244
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L249
.L244:
	.loc 1 627 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L247
	.loc 1 629 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_add_space@PLT
	.loc 1 630 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
.L247:
	.loc 1 632 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	sete	%al
	movzbl	%al, %eax
	movzbl	.LC26@GOTOFF(%ebx,%eax), %eax
	movzbl	%al, %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_character@PLT
	.loc 1 634 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_qualifiers
	movl	%eax, -12(%ebp)
	.loc 1 637 0
	jmp	.L249
.L231:
.LBE9:
	.loc 1 641 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type_prefix
	movl	%eax, -12(%ebp)
	.loc 1 642 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L250
	.loc 1 644 0
	cmpl	$0, -12(%ebp)
	je	.L252
	.loc 1 645 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_add_space@PLT
.L252:
	.loc 1 646 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	.loc 1 647 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L250:
	.loc 1 649 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$42, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 650 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_qualifiers
	movl	%eax, -12(%ebp)
	.loc 1 651 0
	jmp	.L249
.L238:
	.loc 1 656 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type_prefix
	movl	%eax, -12(%ebp)
	.loc 1 657 0
	cmpl	$0, -12(%ebp)
	je	.L254
	.loc 1 658 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_add_space@PLT
.L254:
	.loc 1 659 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 660 0
	movl	$0, -12(%ebp)
	.loc 1 661 0
	jmp	.L249
.L236:
	.loc 1 664 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type_prefix
	movl	%eax, -12(%ebp)
	.loc 1 665 0
	cmpl	$0, -12(%ebp)
	je	.L256
	.loc 1 666 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_add_space@PLT
.L256:
	.loc 1 667 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 668 0
	movl	$0, -12(%ebp)
	.loc 1 669 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_aggr_type
	.loc 1 670 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 671 0
	jmp	.L249
.L237:
	.loc 1 674 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type_prefix
	movl	%eax, -12(%ebp)
	.loc 1 675 0
	jmp	.L249
.L234:
	.loc 1 696 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_type
	.loc 1 697 0
	movl	$1, -12(%ebp)
	.loc 1 698 0
	jmp	.L249
.L232:
	.loc 1 701 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	leal	__FUNCTION__.15820@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sorry@PLT
.L233:
	.loc 1 704 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L249:
	.loc 1 707 0
	movl	-12(%ebp), %eax
	.loc 1 708 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	dump_type_prefix, .-dump_type_prefix
	.section	.rodata
	.type	__FUNCTION__.15925, @object
	.size	__FUNCTION__.15925, 17
__FUNCTION__.15925:
	.string	"dump_type_suffix"
	.text
	.type	dump_type_suffix, @function
dump_type_suffix:
.LFB27:
	.loc 1 717 0
	pushl	%ebp
.LCFI47:
	movl	%esp, %ebp
.LCFI48:
	pushl	%esi
.LCFI49:
	pushl	%ebx
.LCFI50:
	subl	$48, %esp
.LCFI51:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 718 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L260
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L260
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L260
	.loc 1 719 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L260:
	.loc 1 721 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	cmpl	$17, -28(%ebp)
	je	.L268
	cmpl	$17, -28(%ebp)
	ja	.L270
	cmpl	$4, -28(%ebp)
	ja	.L271
	cmpl	$3, -28(%ebp)
	jae	.L287
	cmpl	$0, -28(%ebp)
	je	.L287
	cmpl	$1, -28(%ebp)
	je	.L287
	jmp	.L264
.L271:
	cmpl	$6, -28(%ebp)
	jb	.L264
	cmpl	$12, -28(%ebp)
	jbe	.L287
	cmpl	$14, -28(%ebp)
	jb	.L264
	jmp	.L267
.L270:
	cmpl	$25, -28(%ebp)
	je	.L287
	cmpl	$25, -28(%ebp)
	ja	.L272
	cmpl	$22, -28(%ebp)
	ja	.L273
	cmpl	$21, -28(%ebp)
	jae	.L287
	cmpl	$19, -28(%ebp)
	je	.L269
	jmp	.L264
.L273:
	cmpl	$24, -28(%ebp)
	je	.L268
	jmp	.L264
.L272:
	cmpl	$197, -28(%ebp)
	ja	.L274
	cmpl	$194, -28(%ebp)
	jae	.L287
	cmpl	$34, -28(%ebp)
	je	.L287
	jmp	.L264
.L274:
	cmpl	$199, -28(%ebp)
	je	.L287
	jmp	.L264
.L267:
	.loc 1 726 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L275
	.loc 1 727 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
.L275:
	.loc 1 728 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type_suffix
	.loc 1 729 0
	jmp	.L287
.L268:
.LBB10:
	.loc 1 736 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 737 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 738 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L277
	.loc 1 739 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L277:
	.loc 1 743 0
	movl	12(%ebp), %eax
	andl	$-33, %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_parameters
	.loc 1 745 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L279
	.loc 1 746 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	dump_qualifiers
.L279:
	.loc 1 748 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_exception_spec
	.loc 1 749 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type_suffix
	.loc 1 750 0
	jmp	.L287
.L269:
.LBE10:
	.loc 1 754 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$91, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 755 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L281
	.loc 1 757 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	64(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L283
	.loc 1 758 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	64(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	addl	$1, %eax
	adcl	$0, %edx
	movl	scratch_buffer@GOTOFF(%ebx), %ecx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	print_integer
	jmp	.L281
.L283:
	.loc 1 761 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$61, %al
	jne	.L285
	.loc 1 762 0
	movl	12(%ebp), %edx
	andb	$253, %dh
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	jmp	.L281
.L285:
	.loc 1 765 0
	movl	12(%ebp), %esi
	andl	$-513, %esi
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	64(%eax), %eax
	movl	$1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build_binary_op@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
.L281:
	.loc 1 770 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$93, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 771 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type_suffix
	.loc 1 772 0
	jmp	.L287
.L264:
	.loc 1 796 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	leal	__FUNCTION__.15925@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sorry@PLT
.L287:
	.loc 1 802 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE27:
	.size	dump_type_suffix, .-dump_type_suffix
	.section	.rodata
	.type	__FUNCTION__.16005, @object
	.size	__FUNCTION__.16005, 17
__FUNCTION__.16005:
	.string	"dump_global_iord"
.LC28:
	.string	"initializers"
.LC29:
	.string	"destructors"
	.align 4
.LC30:
	.string	"../../../kg++fe/gnu/cp/error.c"
.LC31:
	.string	"(static %s for %s)"
	.text
	.type	dump_global_iord, @function
dump_global_iord:
.LFB28:
	.loc 1 807 0
	pushl	%ebp
.LCFI52:
	movl	%esp, %ebp
.LCFI53:
	pushl	%ebx
.LCFI54:
	subl	$36, %esp
.LCFI55:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 808 0
	movl	$0, -8(%ebp)
	.loc 1 810 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L289
	.loc 1 811 0
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L291
.L289:
	.loc 1 812 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L292
	.loc 1 813 0
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L291
.L292:
	.loc 1 815 0
	leal	__FUNCTION__.16005@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$815, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L291:
	.loc 1 817 0
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_printf@PLT
	.loc 1 818 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	dump_global_iord, .-dump_global_iord
	.type	dump_simple_decl, @function
dump_simple_decl:
.LFB29:
	.loc 1 825 0
	pushl	%ebp
.LCFI56:
	movl	%esp, %ebp
.LCFI57:
	pushl	%ebx
.LCFI58:
	subl	$20, %esp
.LCFI59:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 826 0
	movl	16(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L296
	.loc 1 828 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_type_prefix
	testl	%eax, %eax
	je	.L296
	.loc 1 829 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_add_space@PLT
.L296:
	.loc 1 831 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L299
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-63, %al
	je	.L301
.L299:
	.loc 1 832 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L302
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L304
.L302:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L304:
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_scope
.L301:
	.loc 1 833 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L305
	.loc 1 834 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_decl
	jmp	.L307
.L305:
	.loc 1 836 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L307:
	.loc 1 837 0
	movl	16(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L310
	.loc 1 838 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_type_suffix
.L310:
	.loc 1 839 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	dump_simple_decl, .-dump_simple_decl
	.section	.rodata
	.type	__FUNCTION__.16059, @object
	.size	__FUNCTION__.16059, 10
__FUNCTION__.16059:
	.string	"dump_decl"
.LC32:
	.string	"class "
.LC33:
	.string	"typedef "
.LC34:
	.string	"vtable for "
.LC35:
	.string	"<return value> "
.LC36:
	.string	"<unnamed>"
.LC37:
	.string	"operator "
.LC38:
	.string	"<internal>"
.LC39:
	.string	"enumerator"
.LC40:
	.string	"using "
.LC41:
	.string	"<declaration error>"
	.text
	.type	dump_decl, @function
dump_decl:
.LFB30:
	.loc 1 847 0
	pushl	%ebp
.LCFI60:
	movl	%esp, %ebp
.LCFI61:
	pushl	%ebx
.LCFI62:
	subl	$52, %esp
.LCFI63:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 848 0
	cmpl	$0, 8(%ebp)
	je	.L396
	.loc 1 851 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	cmpl	$206, -40(%ebp)
	ja	.L314
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	.L335@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L335:
	.long	.L315@GOTOFF
	.long	.L316@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L317@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L317@GOTOFF
	.long	.L317@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L318@GOTOFF
	.long	.L319@GOTOFF
	.long	.L320@GOTOFF
	.long	.L321@GOTOFF
	.long	.L322@GOTOFF
	.long	.L323@GOTOFF
	.long	.L324@GOTOFF
	.long	.L323@GOTOFF
	.long	.L325@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L326@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L327@GOTOFF
	.long	.L314@GOTOFF
	.long	.L328@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L329@GOTOFF
	.long	.L330@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L331@GOTOFF
	.long	.L314@GOTOFF
	.long	.L314@GOTOFF
	.long	.L332@GOTOFF
	.long	.L333@GOTOFF
	.long	.L314@GOTOFF
	.long	.L334@GOTOFF
	.text
.L321:
	.loc 1 856 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L336
	.loc 1 858 0
	movl	12(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L338
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	jne	.L338
	.loc 1 861 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L338:
	.loc 1 863 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	.loc 1 864 0
	jmp	.L396
.L336:
	.loc 1 867 0
	movl	12(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L341
	.loc 1 868 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L341:
	.loc 1 869 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L343
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L345
.L343:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L345:
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_simple_decl
	.loc 1 872 0
	jmp	.L396
.L322:
	.loc 1 875 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L323
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$118, %al
	jne	.L323
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$116, %al
	jne	.L323
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L323
	.loc 1 877 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 878 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	je	.L350
	leal	__FUNCTION__.16059@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$878, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L350:
	.loc 1 879 0
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	.loc 1 880 0
	jmp	.L396
.L323:
	.loc 1 885 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_simple_decl
	.loc 1 886 0
	jmp	.L396
.L324:
	.loc 1 889 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 890 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_simple_decl
	.loc 1 891 0
	jmp	.L396
.L325:
	.loc 1 894 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L352
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L354
.L352:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L354:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_scope
	.loc 1 895 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	anonymous_namespace_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L355
	.loc 1 896 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L396
.L355:
	.loc 1 898 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 899 0
	jmp	.L396
.L327:
	.loc 1 902 0
	movl	12(%ebp), %edx
	andl	$-5, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_decl
	.loc 1 903 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 904 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_decl
	.loc 1 905 0
	jmp	.L396
.L326:
	.loc 1 908 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_decl
	.loc 1 909 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$91, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 910 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_decl
	.loc 1 911 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$93, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 912 0
	jmp	.L396
.L317:
	.loc 1 918 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_type
	.loc 1 919 0
	jmp	.L396
.L328:
	.loc 1 922 0
	leal	__FUNCTION__.16059@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$922, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L316:
	.loc 1 928 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L358
	.loc 1 930 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 932 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	.loc 1 933 0
	jmp	.L396
.L358:
	.loc 1 936 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 937 0
	jmp	.L396
.L333:
	.loc 1 940 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L360
	.loc 1 942 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L362
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L364
.L362:
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
.L364:
	movl	-28(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 943 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L365
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L365
	.loc 1 945 0
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	.loc 1 946 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 943 0
	jmp	.L368
.L365:
	.loc 1 948 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L368
	.loc 1 950 0
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_decl
	.loc 1 951 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L368:
	.loc 1 953 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_decl
	.loc 1 954 0
	jmp	.L396
.L360:
	.loc 1 959 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L370
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L372
.L370:
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L372:
	movl	-24(%ebp), %eax
	movl	%eax, 8(%ebp)
.L318:
	.loc 1 963 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L373
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L375
.L373:
	.loc 1 964 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_global_iord
	.loc 1 963 0
	jmp	.L396
.L375:
	.loc 1 965 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	jne	.L377
	.loc 1 966 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L396
.L377:
	.loc 1 968 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_function_decl
	.loc 1 969 0
	jmp	.L396
.L330:
	.loc 1 972 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_template_decl
	.loc 1 973 0
	jmp	.L396
.L332:
.LBB11:
	.loc 1 978 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 979 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	je	.L379
	.loc 1 980 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_first_fn@PLT
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
.L379:
	.loc 1 981 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_decl
	.loc 1 982 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$60, 4(%esp)
	movl	%eax, (%esp)
	call	print_non_consecutive_character
	.loc 1 983 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L381
.L382:
	.loc 1 985 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_template_argument
	.loc 1 986 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L383
	.loc 1 987 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L383:
	.loc 1 983 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L381:
	cmpl	$0, -12(%ebp)
	jne	.L382
	.loc 1 989 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$62, 4(%esp)
	movl	%eax, (%esp)
	call	print_non_consecutive_character
	.loc 1 991 0
	jmp	.L396
.L334:
.LBE11:
	.loc 1 994 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_decl
	.loc 1 995 0
	jmp	.L396
.L319:
	.loc 1 998 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 999 0
	jmp	.L396
.L320:
	.loc 1 1002 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L386
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L388
.L386:
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L389
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-63, %al
	jne	.L389
.L388:
	.loc 1 1005 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_simple_decl
	.loc 1 1002 0
	jmp	.L396
.L389:
	.loc 1 1006 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L392
	.loc 1 1007 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_decl
	jmp	.L396
.L392:
	.loc 1 1008 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L394
	.loc 1 1009 0
	movl	12(%ebp), %eax
	orb	$2, %ah
	movl	8(%ebp), %edx
	movl	68(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr
	jmp	.L396
.L394:
	.loc 1 1011 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1012 0
	jmp	.L396
.L331:
	.loc 1 1015 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1016 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	.loc 1 1017 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1018 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_decl
	.loc 1 1019 0
	jmp	.L396
.L329:
	.loc 1 1022 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_decl
	.loc 1 1023 0
	jmp	.L396
.L314:
	.loc 1 1026 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	leal	__FUNCTION__.16059@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sorry@PLT
.L315:
	.loc 1 1030 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L396:
	.loc 1 1033 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	dump_decl, .-dump_decl
	.section	.rodata
	.type	__FUNCTION__.16294, @object
	.size	__FUNCTION__.16294, 19
__FUNCTION__.16294:
	.string	"dump_template_decl"
.LC42:
	.string	"template<"
	.text
	.type	dump_template_decl, @function
dump_template_decl:
.LFB31:
	.loc 1 1042 0
	pushl	%ebp
.LCFI64:
	movl	%esp, %ebp
.LCFI65:
	pushl	%ebx
.LCFI66:
	subl	$68, %esp
.LCFI67:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1043 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1047 0
	movl	12(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L398
	.loc 1 1049 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1050 0
	jmp	.L400
.L401:
.LBB12:
	.loc 1 1053 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1054 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1056 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1060 0
	orl	$4, 12(%ebp)
	.loc 1 1062 0
	movl	$0, -16(%ebp)
	jmp	.L402
.L403:
	.loc 1 1064 0
	cmpl	$0, -16(%ebp)
	je	.L404
	.loc 1 1065 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L404:
	.loc 1 1066 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_template_parameter
	.loc 1 1062 0
	addl	$1, -16(%ebp)
.L402:
	movl	-16(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jl	.L403
	.loc 1 1068 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$62, 4(%esp)
	movl	%eax, (%esp)
	call	print_non_consecutive_character
	.loc 1 1069 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_add_space@PLT
.LBE12:
	.loc 1 1051 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L400:
	.loc 1 1050 0
	cmpl	$0, -20(%ebp)
	jne	.L401
	.loc 1 1071 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	.loc 1 1073 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L398
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L398
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L410
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L410
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L410
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L398
.L410:
	.loc 1 1075 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L398:
	.loc 1 1078 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L414
	.loc 1 1079 0
	movl	12(%ebp), %eax
	andl	$-265, %eax
	movl	%eax, -56(%ebp)
	movl	12(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L416
	movl	$8, -52(%ebp)
	jmp	.L418
.L416:
	movl	$0, -52(%ebp)
.L418:
	movl	-56(%ebp), %eax
	orl	-52(%ebp), %eax
	movl	%eax, %edx
	orb	$1, %dh
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_type
	jmp	.L429
.L414:
	.loc 1 1082 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L420
	.loc 1 1083 0
	movl	12(%ebp), %eax
	orb	$1, %ah
	movl	8(%ebp), %edx
	movl	64(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_decl
	jmp	.L429
.L420:
	.loc 1 1084 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L422
	.loc 1 1085 0
	leal	__FUNCTION__.16294@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1085, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L422:
	.loc 1 1087 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	cmpl	$17, -48(%ebp)
	je	.L425
	cmpl	$24, -48(%ebp)
	je	.L425
	jmp	.L424
.L425:
	.loc 1 1091 0
	movl	12(%ebp), %eax
	orb	$1, %ah
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_function_decl
	.loc 1 1092 0
	jmp	.L429
.L424:
	.loc 1 1095 0
	movl	12(%ebp), %eax
	andl	$-265, %eax
	movl	%eax, -44(%ebp)
	movl	12(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L426
	movl	$8, -40(%ebp)
	jmp	.L428
.L426:
	movl	$0, -40(%ebp)
.L428:
	movl	-44(%ebp), %eax
	orl	-40(%ebp), %eax
	movl	%eax, %edx
	orb	$1, %dh
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_type
.L429:
	.loc 1 1099 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	dump_template_decl, .-dump_template_decl
	.section	.rodata
.LC43:
	.string	"static "
.LC44:
	.string	"virtual "
.LC45:
	.string	" [with "
	.text
	.type	dump_function_decl, @function
dump_function_decl:
.LFB32:
	.loc 1 1110 0
	pushl	%ebp
.LCFI68:
	movl	%esp, %ebp
.LCFI69:
	pushl	%ebx
.LCFI70:
	subl	$52, %esp
.LCFI71:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1113 0
	movl	$0, -24(%ebp)
	.loc 1 1114 0
	movl	$0, -20(%ebp)
	.loc 1 1115 0
	movl	$0, -16(%ebp)
	.loc 1 1116 0
	movl	12(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L431
	movl	12(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L433
.L431:
	movl	$1, -48(%ebp)
	jmp	.L434
.L433:
	movl	$0, -48(%ebp)
.L434:
	movl	-48(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1118 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L435
	.loc 1 1119 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, 8(%ebp)
.L435:
	.loc 1 1122 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	testb	%al, %al
	je	.L437
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L437
.LBB13:
	.loc 1 1126 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1127 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	most_general_template@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1128 0
	cmpl	$0, -8(%ebp)
	je	.L437
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L437
	.loc 1 1130 0
	movl	-8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1131 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%ebp)
.L437:
.LBE13:
	.loc 1 1135 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1136 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_artificial_parms_for@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1138 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L442
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L442
	.loc 1 1139 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1138 0
	jmp	.L445
.L442:
	.loc 1 1141 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L445
	.loc 1 1142 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L445:
	.loc 1 1144 0
	movl	12(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L447
	.loc 1 1146 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L449
	.loc 1 1147 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L447
.L449:
	.loc 1 1148 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L447
	.loc 1 1149 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L447:
	.loc 1 1152 0
	cmpl	$0, -12(%ebp)
	je	.L452
	.loc 1 1153 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L454
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L454
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L454
	movl	$1, -44(%ebp)
	jmp	.L458
.L454:
	movl	$0, -44(%ebp)
.L458:
	movl	-44(%ebp), %eax
	movl	%eax, -12(%ebp)
.L452:
	.loc 1 1155 0
	cmpl	$0, -12(%ebp)
	je	.L459
	.loc 1 1157 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type_prefix
	.loc 1 1158 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_add_space@PLT
.L459:
	.loc 1 1162 0
	cmpl	$0, -24(%ebp)
	je	.L461
	.loc 1 1164 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_type
	.loc 1 1165 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L463
.L461:
	.loc 1 1168 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L464
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L466
.L464:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L466:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_scope
.L463:
	.loc 1 1170 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_function_name
	.loc 1 1174 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_parameters
	.loc 1 1176 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L467
	.loc 1 1177 0
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	dump_qualifiers
.L467:
	.loc 1 1180 0
	movl	12(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L469
	.loc 1 1181 0
	movl	-32(%ebp), %eax
	movl	76(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_exception_spec
.L469:
	.loc 1 1183 0
	cmpl	$0, -12(%ebp)
	je	.L471
	.loc 1 1184 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type_suffix
.L471:
	.loc 1 1188 0
	cmpl	$0, -16(%ebp)
	je	.L476
	cmpl	$0, -20(%ebp)
	je	.L476
	.loc 1 1190 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1191 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_template_bindings
	.loc 1 1192 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$93, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
.L476:
	.loc 1 1194 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	dump_function_decl, .-dump_function_decl
	.section	.rodata
.LC46:
	.string	"..."
	.text
	.type	dump_parameters, @function
dump_parameters:
.LFB33:
	.loc 1 1204 0
	pushl	%ebp
.LCFI72:
	movl	%esp, %ebp
.LCFI73:
	pushl	%ebx
.LCFI74:
	subl	$36, %esp
.LCFI75:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1207 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1209 0
	movl	$1, -8(%ebp)
	jmp	.L478
.L479:
	.loc 1 1212 0
	cmpl	$0, -8(%ebp)
	jne	.L480
	.loc 1 1213 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L480:
	.loc 1 1214 0
	movl	$0, -8(%ebp)
	.loc 1 1215 0
	cmpl	$0, 8(%ebp)
	jne	.L482
	.loc 1 1217 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1218 0
	jmp	.L484
.L482:
	.loc 1 1220 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	.loc 1 1222 0
	movl	12(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L485
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L485
	.loc 1 1224 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1225 0
	movl	12(%ebp), %edx
	orb	$2, %dh
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
.L485:
	.loc 1 1210 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L478:
	.loc 1 1209 0
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L479
.L484:
	.loc 1 1229 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1230 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	dump_parameters, .-dump_parameters
	.section	.rodata
.LC47:
	.string	" throw ("
	.text
	.type	dump_exception_spec, @function
dump_exception_spec:
.LFB34:
	.loc 1 1238 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	pushl	%ebx
.LCFI78:
	subl	$20, %esp
.LCFI79:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1239 0
	cmpl	$0, 8(%ebp)
	je	.L495
	.loc 1 1241 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1242 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L492
.L493:
	.loc 1 1245 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	.loc 1 1246 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1247 0
	cmpl	$0, 8(%ebp)
	je	.L492
	.loc 1 1249 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1250 0
	jmp	.L493
.L492:
	.loc 1 1251 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
.L495:
	.loc 1 1253 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	dump_exception_spec, .-dump_exception_spec
	.type	dump_function_name, @function
dump_function_name:
.LFB35:
	.loc 1 1262 0
	pushl	%ebp
.LCFI80:
	movl	%esp, %ebp
.LCFI81:
	pushl	%ebx
.LCFI82:
	subl	$36, %esp
.LCFI83:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1263 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1265 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L497
	.loc 1 1266 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, 8(%ebp)
.L497:
	.loc 1 1269 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L499
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L501
.L499:
	.loc 1 1271 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, (%esp)
	call	constructor_name@PLT
	movl	%eax, -8(%ebp)
.L501:
	.loc 1 1273 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L502
	.loc 1 1275 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$126, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1276 0
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_decl
	jmp	.L504
.L502:
	.loc 1 1278 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L505
	.loc 1 1286 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1287 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	jmp	.L504
.L505:
	.loc 1 1289 0
	movl	-8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L507
	.loc 1 1290 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L504
.L507:
	.loc 1 1292 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_decl
.L504:
	.loc 1 1294 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L518
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L518
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L512
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	testb	%al, %al
	je	.L518
.L512:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	je	.L514
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L514
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	je	.L514
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
	jne	.L518
.L514:
	.loc 1 1300 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %ecx
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dump_template_parms
.L518:
	.loc 1 1301 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	dump_function_name, .-dump_function_name
	.section	.rodata
.LC48:
	.string	"<template parameter error>"
	.text
	.type	dump_template_parms, @function
dump_template_parms:
.LFB36:
	.loc 1 1314 0
	pushl	%ebp
.LCFI84:
	movl	%esp, %ebp
.LCFI85:
	pushl	%ebx
.LCFI86:
	subl	$68, %esp
.LCFI87:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1315 0
	cmpl	$0, 8(%ebp)
	je	.L520
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L522
.L520:
	movl	$0, -64(%ebp)
.L522:
	movl	-64(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1317 0
	cmpl	$0, 12(%ebp)
	je	.L523
	movl	16(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L560
.L523:
	.loc 1 1319 0
	andl	$-265, 16(%ebp)
	.loc 1 1320 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$60, 4(%esp)
	movl	%eax, (%esp)
	call	print_non_consecutive_character
	.loc 1 1324 0
	cmpl	$0, -44(%ebp)
	je	.L526
	cmpl	$0, 12(%ebp)
	jne	.L526
.LBB14:
	.loc 1 1326 0
	movl	$0, -40(%ebp)
	.loc 1 1327 0
	movl	$0, -36(%ebp)
	.loc 1 1328 0
	movl	$0, -32(%ebp)
	.loc 1 1330 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L529
	.loc 1 1332 0
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L531
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L531
	.loc 1 1334 0
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	leal	-1(%eax), %edx
	movl	-44(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -44(%ebp)
.L531:
	.loc 1 1336 0
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L536
.L529:
	.loc 1 1338 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L536
	.loc 1 1339 0
	movl	$-1, -40(%ebp)
	.loc 1 1340 0
	jmp	.L536
.L537:
.LBB15:
	.loc 1 1343 0
	cmpl	$0, -40(%ebp)
	js	.L538
	.loc 1 1345 0
	movl	-36(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1346 0
	addl	$1, -36(%ebp)
	jmp	.L540
.L538:
	.loc 1 1350 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1351 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L540:
	.loc 1 1353 0
	cmpl	$0, -32(%ebp)
	je	.L541
	.loc 1 1354 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L541:
	.loc 1 1356 0
	cmpl	$0, -28(%ebp)
	jne	.L543
	.loc 1 1357 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L545
.L543:
	.loc 1 1359 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_template_argument
.L545:
	.loc 1 1360 0
	movl	$1, -32(%ebp)
.L536:
.LBE15:
	.loc 1 1340 0
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	je	.L548
	cmpl	$0, -44(%ebp)
	jne	.L537
	.loc 1 1324 0
	jmp	.L548
.L526:
.LBE14:
	.loc 1 1363 0
	cmpl	$0, 12(%ebp)
	je	.L548
.LBB16:
	.loc 1 1365 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1366 0
	movl	-24(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1369 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L550
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L552
.L550:
	movl	$0, -60(%ebp)
.L552:
	movl	-60(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1370 0
	cmpl	$0, -20(%ebp)
	je	.L553
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L555
.L553:
	movl	$0, -56(%ebp)
.L555:
	movl	-56(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1372 0
	movl	$0, -12(%ebp)
	jmp	.L556
.L557:
.LBB17:
	.loc 1 1374 0
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1376 0
	cmpl	$0, -12(%ebp)
	je	.L558
	.loc 1 1377 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L558:
	.loc 1 1379 0
	movl	16(%ebp), %eax
	andl	$-5, %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_decl
.LBE17:
	.loc 1 1372 0
	addl	$1, -12(%ebp)
.L556:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L557
.L548:
.LBE16:
	.loc 1 1382 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$62, 4(%esp)
	movl	%eax, (%esp)
	call	print_non_consecutive_character
.L560:
	.loc 1 1383 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	dump_template_parms, .-dump_template_parms
	.section	.rodata
.LC49:
	.string	"\\n"
.LC50:
	.string	"\\t"
.LC51:
	.string	"\\v"
.LC52:
	.string	"\\b"
.LC53:
	.string	"\\r"
.LC54:
	.string	"\\f"
.LC55:
	.string	"\\a"
.LC56:
	.string	"\\\\"
.LC57:
	.string	"\\'"
.LC58:
	.string	"\\\""
.LC59:
	.string	"\\%03o"
	.text
	.type	dump_char, @function
dump_char:
.LFB37:
	.loc 1 1388 0
	pushl	%ebp
.LCFI88:
	movl	%esp, %ebp
.LCFI89:
	pushl	%ebx
.LCFI90:
	subl	$20, %esp
.LCFI91:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1389 0
	movl	8(%ebp), %eax
	subl	$7, %eax
	movl	%eax, -8(%ebp)
	cmpl	$85, -8(%ebp)
	ja	.L562
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	.L573@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L573:
	.long	.L563@GOTOFF
	.long	.L564@GOTOFF
	.long	.L565@GOTOFF
	.long	.L566@GOTOFF
	.long	.L567@GOTOFF
	.long	.L568@GOTOFF
	.long	.L569@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L570@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L571@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L562@GOTOFF
	.long	.L572@GOTOFF
	.text
.L566:
	.loc 1 1392 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1393 0
	jmp	.L577
.L565:
	.loc 1 1395 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1396 0
	jmp	.L577
.L567:
	.loc 1 1398 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1399 0
	jmp	.L577
.L564:
	.loc 1 1401 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1402 0
	jmp	.L577
.L569:
	.loc 1 1404 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1405 0
	jmp	.L577
.L568:
	.loc 1 1407 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1408 0
	jmp	.L577
.L563:
	.loc 1 1410 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1411 0
	jmp	.L577
.L572:
	.loc 1 1413 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1414 0
	jmp	.L577
.L571:
	.loc 1 1416 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1417 0
	jmp	.L577
.L570:
	.loc 1 1419 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1420 0
	jmp	.L577
.L562:
	.loc 1 1422 0
	movzbl	8(%ebp),%edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L575
	.loc 1 1423 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_character@PLT
	jmp	.L577
.L575:
	.loc 1 1426 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	digit_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1427 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	digit_buffer@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L577:
	.loc 1 1430 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	dump_char, .-dump_char
	.type	dump_expr_list, @function
dump_expr_list:
.LFB38:
	.loc 1 1438 0
	pushl	%ebp
.LCFI92:
	movl	%esp, %ebp
.LCFI93:
	pushl	%ebx
.LCFI94:
	subl	$20, %esp
.LCFI95:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1439 0
	jmp	.L584
.L580:
	.loc 1 1441 0
	movl	12(%ebp), %edx
	orb	$2, %dh
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 1442 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1443 0
	cmpl	$0, 8(%ebp)
	je	.L579
	.loc 1 1444 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L579:
.L584:
	.loc 1 1439 0
	cmpl	$0, 8(%ebp)
	jne	.L580
	.loc 1 1446 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	dump_expr_list, .-dump_expr_list
	.local	format.16765
	.comm	format.16765,10,1
	.section	.rodata
	.type	__FUNCTION__.16758, @object
	.size	__FUNCTION__.16758, 10
__FUNCTION__.16758:
	.string	"dump_expr"
.LC60:
	.string	"false"
.LC61:
	.string	"true"
.LC62:
	.string	"\\x%x"
.LC63:
	.string	"%%x%%0%dx"
.LC64:
	.string	" ? "
.LC65:
	.string	" : "
.LC66:
	.string	"new "
.LC67:
	.string	"this"
.LC68:
	.string	"->"
.LC69:
	.string	") "
.LC70:
	.string	"/"
.LC71:
	.string	"%"
.LC72:
	.string	"+"
.LC73:
	.string	"&"
.LC74:
	.string	"*"
.LC75:
	.string	"(("
.LC76:
	.string	") 0)"
.LC77:
	.string	"->*"
.LC78:
	.string	".*"
.LC79:
	.string	")("
.LC80:
	.string	"static_cast<"
.LC81:
	.string	"reinterpret_cast<"
.LC82:
	.string	"const_cast<"
.LC83:
	.string	"dynamic_cast<"
.LC84:
	.string	">("
.LC85:
	.string	"sizeof ("
.LC86:
	.string	"__alignof__ ("
.LC87:
	.string	"<unparsed>"
.LC88:
	.string	"::~"
.LC89:
	.string	"({...})"
.LC90:
	.string	"while (1) { "
.LC91:
	.string	"if ("
.LC92:
	.string	") break; "
.LC93:
	.string	"<expression error>"
	.text
	.type	dump_expr, @function
dump_expr:
.LFB39:
	.loc 1 1454 0
	pushl	%ebp
.LCFI96:
	movl	%esp, %ebp
.LCFI97:
	pushl	%edi
.LCFI98:
	pushl	%esi
.LCFI99:
	pushl	%ebx
.LCFI100:
	subl	$156, %esp
.LCFI101:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1455 0
	cmpl	$0, 8(%ebp)
	je	.L795
	.loc 1 1458 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -112(%ebp)
	cmpl	$215, -112(%ebp)
	ja	.L588
	movl	-112(%ebp), %eax
	sall	$2, %eax
	movl	.L638@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L638:
	.long	.L589@GOTOFF
	.long	.L590@GOTOFF
	.long	.L588@GOTOFF
	.long	.L591@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L592@GOTOFF
	.long	.L593@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L594@GOTOFF
	.long	.L595@GOTOFF
	.long	.L588@GOTOFF
	.long	.L595@GOTOFF
	.long	.L588@GOTOFF
	.long	.L595@GOTOFF
	.long	.L595@GOTOFF
	.long	.L588@GOTOFF
	.long	.L595@GOTOFF
	.long	.L595@GOTOFF
	.long	.L596@GOTOFF
	.long	.L588@GOTOFF
	.long	.L597@GOTOFF
	.long	.L588@GOTOFF
	.long	.L598@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L599@GOTOFF
	.long	.L600@GOTOFF
	.long	.L601@GOTOFF
	.long	.L601@GOTOFF
	.long	.L602@GOTOFF
	.long	.L603@GOTOFF
	.long	.L604@GOTOFF
	.long	.L605@GOTOFF
	.long	.L588@GOTOFF
	.long	.L606@GOTOFF
	.long	.L606@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L601@GOTOFF
	.long	.L601@GOTOFF
	.long	.L601@GOTOFF
	.long	.L601@GOTOFF
	.long	.L607@GOTOFF
	.long	.L607@GOTOFF
	.long	.L607@GOTOFF
	.long	.L601@GOTOFF
	.long	.L608@GOTOFF
	.long	.L608@GOTOFF
	.long	.L608@GOTOFF
	.long	.L588@GOTOFF
	.long	.L601@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L609@GOTOFF
	.long	.L601@GOTOFF
	.long	.L601@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L601@GOTOFF
	.long	.L601@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L601@GOTOFF
	.long	.L601@GOTOFF
	.long	.L601@GOTOFF
	.long	.L601@GOTOFF
	.long	.L609@GOTOFF
	.long	.L601@GOTOFF
	.long	.L601@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L609@GOTOFF
	.long	.L601@GOTOFF
	.long	.L601@GOTOFF
	.long	.L601@GOTOFF
	.long	.L601@GOTOFF
	.long	.L601@GOTOFF
	.long	.L601@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L610@GOTOFF
	.long	.L611@GOTOFF
	.long	.L612@GOTOFF
	.long	.L588@GOTOFF
	.long	.L613@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L614@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L609@GOTOFF
	.long	.L609@GOTOFF
	.long	.L615@GOTOFF
	.long	.L615@GOTOFF
	.long	.L588@GOTOFF
	.long	.L606@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L616@GOTOFF
	.long	.L617@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L618@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L619@GOTOFF
	.long	.L620@GOTOFF
	.long	.L619@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L621@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L622@GOTOFF
	.long	.L623@GOTOFF
	.long	.L624@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L625@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L626@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L627@GOTOFF
	.long	.L595@GOTOFF
	.long	.L628@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L629@GOTOFF
	.long	.L630@GOTOFF
	.long	.L595@GOTOFF
	.long	.L588@GOTOFF
	.long	.L631@GOTOFF
	.long	.L588@GOTOFF
	.long	.L632@GOTOFF
	.long	.L633@GOTOFF
	.long	.L634@GOTOFF
	.long	.L635@GOTOFF
	.long	.L636@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L637@GOTOFF
	.text
.L595:
	.loc 1 1468 0
	movl	12(%ebp), %eax
	andl	$-5, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_decl
	.loc 1 1469 0
	jmp	.L795
.L592:
.LBB18:
	.loc 1 1473 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 1474 0
	cmpl	$0, -84(%ebp)
	jne	.L639
	leal	__FUNCTION__.16758@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1474, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L639:
	.loc 1 1477 0
	movl	-84(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L641
.LBB19:
	.loc 1 1479 0
	movl	-84(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 1481 0
	jmp	.L643
.L644:
	.loc 1 1483 0
	movl	-80(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	jne	.L645
	.loc 1 1482 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
.L643:
	.loc 1 1481 0
	cmpl	$0, -80(%ebp)
	jne	.L644
.L645:
	.loc 1 1486 0
	cmpl	$0, -80(%ebp)
	je	.L647
	.loc 1 1487 0
	movl	-80(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L795
.L647:
	.loc 1 1491 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1492 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_type
	.loc 1 1493 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1494 0
	jmp	.L650
.L641:
.LBE19:
	.loc 1 1497 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %eax
	cmpl	-84(%ebp), %eax
	jne	.L651
	.loc 1 1499 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	68(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L653
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L655
.L653:
	.loc 1 1500 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1499 0
	jmp	.L795
.L655:
	.loc 1 1501 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	64(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L795
	.loc 1 1502 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L795
.L651:
	.loc 1 1504 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-84(%ebp), %eax
	jne	.L650
	.loc 1 1506 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$39, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1507 0
	movl	-84(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L659
	.loc 1 1508 0
	movl	-84(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, (%esp)
	call	dump_char
	jmp	.L661
.L659:
	.loc 1 1510 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_printf@PLT
.L661:
	.loc 1 1512 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$39, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	jmp	.L795
.L650:
	.loc 1 1517 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	jne	.L662
.LBB20:
	.loc 1 1519 0
	movl	8(%ebp), %eax
	movl	%eax, -76(%ebp)
	.loc 1 1521 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_sgn@PLT
	testl	%eax, %eax
	jns	.L664
	.loc 1 1523 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$45, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1524 0
	movl	-76(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-76(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	sete	%cl
	movzbl	%cl, %eax
	movl	$0, %edx
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	-76(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -76(%ebp)
.L664:
.LBB21:
	.loc 1 1532 0
	movzbl	format.16765@GOTOFF(%ebx), %eax
	testb	%al, %al
	jne	.L666
	.loc 1 1533 0
	movl	$8, 8(%esp)
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	format.16765@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
.L666:
	.loc 1 1534 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	-76(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	format.16765@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	digit_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1536 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	digit_buffer@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L795
.L662:
.LBE21:
.LBE20:
	.loc 1 1540 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %ecx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	print_integer
	.loc 1 1543 0
	jmp	.L795
.L593:
.LBE18:
	.loc 1 1546 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	$128, 8(%esp)
	movl	%eax, 4(%esp)
	leal	digit_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	real_to_decimal@PLT
	.loc 1 1548 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	digit_buffer@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1549 0
	jmp	.L795
.L623:
	.loc 1 1552 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$38, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1553 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L668
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L668
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -108(%ebp)
	jmp	.L671
.L668:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -108(%ebp)
.L671:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_type
	.loc 1 1554 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1555 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1557 0
	jmp	.L795
.L594:
.LBB22:
	.loc 1 1561 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 1562 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	subl	$1, %eax
	movl	%eax, -68(%ebp)
	.loc 1 1565 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$34, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1566 0
	movl	$0, -64(%ebp)
	jmp	.L672
.L673:
	.loc 1 1567 0
	movl	-64(%ebp), %eax
	addl	-72(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	dump_char
	.loc 1 1566 0
	addl	$1, -64(%ebp)
.L672:
	movl	-64(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jl	.L673
	.loc 1 1568 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$34, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1570 0
	jmp	.L795
.L600:
.LBE22:
	.loc 1 1573 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1574 0
	movl	12(%ebp), %edx
	orb	$2, %dh
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 1575 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1576 0
	movl	12(%ebp), %edx
	orb	$2, %dh
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 1577 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1578 0
	jmp	.L795
.L603:
	.loc 1 1581 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1582 0
	movl	12(%ebp), %edx
	orb	$2, %dh
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 1583 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1584 0
	movl	12(%ebp), %edx
	orb	$2, %dh
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 1585 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1586 0
	movl	12(%ebp), %edx
	orb	$2, %dh
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 1587 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1588 0
	jmp	.L795
.L613:
	.loc 1 1591 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L675
	.loc 1 1593 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1594 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	jmp	.L795
.L675:
	.loc 1 1598 0
	movl	12(%ebp), %eax
	orb	$2, %ah
	movl	8(%ebp), %edx
	movl	20(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr
	.loc 1 1600 0
	jmp	.L795
.L626:
.LBB23:
	.loc 1 1604 0
	movl	$0, -60(%ebp)
	.loc 1 1606 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L678
	.loc 1 1607 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
.L678:
	.loc 1 1609 0
	cmpl	$0, -60(%ebp)
	je	.L680
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L680
	.loc 1 1611 0
	movl	-60(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L683
	.loc 1 1612 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L686
.L683:
	.loc 1 1615 0
	movl	$0, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_decl
	.loc 1 1609 0
	jmp	.L686
.L680:
	.loc 1 1618 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
.L686:
.LBE23:
	.loc 1 1620 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1621 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L687
	.loc 1 1622 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr_list
.L687:
	.loc 1 1623 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1624 0
	jmp	.L795
.L605:
.LBB24:
	.loc 1 1628 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1629 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1631 0
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L689
	.loc 1 1632 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
.L689:
	.loc 1 1634 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L691
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L691
.LBB25:
	.loc 1 1636 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1637 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L694
	.loc 1 1639 0
	movl	12(%ebp), %edx
	orb	$2, %dh
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 1640 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$46, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	jmp	.L696
.L694:
	.loc 1 1642 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L697
	movl	-48(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -116(%ebp)
	leal	.LC67@GOTOFF(%ebx), %ecx
	movl	%ecx, -120(%ebp)
	movl	$5, -124(%ebp)
	cld
	movl	-116(%ebp), %esi
	movl	-120(%ebp), %edi
	movl	-124(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L696
.L697:
	.loc 1 1645 0
	movl	12(%ebp), %eax
	orb	$2, %ah
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 1646 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L696:
	.loc 1 1648 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L691:
.LBE25:
	.loc 1 1650 0
	movl	12(%ebp), %eax
	orb	$2, %ah
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 1651 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1652 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_expr_list
	.loc 1 1653 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1655 0
	jmp	.L795
.L624:
.LBE24:
.LBB26:
	.loc 1 1659 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1660 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1661 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L699
	.loc 1 1662 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L699:
	.loc 1 1663 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1664 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L701
	.loc 1 1666 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1667 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr_list
	.loc 1 1668 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L701:
	.loc 1 1670 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$44, %al
	jne	.L703
	.loc 1 1671 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %edx
	movl	-44(%ebp), %eax
	movl	24(%eax), %ecx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, (%esp)
	call	build_index_type@PLT
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_cplus_array_type@PLT
	movl	%eax, -44(%ebp)
.L703:
	.loc 1 1676 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_type
	.loc 1 1677 0
	cmpl	$0, -40(%ebp)
	je	.L795
	.loc 1 1679 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1680 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L707
	.loc 1 1681 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_expr_list
	jmp	.L709
.L707:
	.loc 1 1682 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	120(%eax), %eax
	cmpl	-40(%ebp), %eax
	je	.L709
	.loc 1 1687 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_expr
.L709:
	.loc 1 1688 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1691 0
	jmp	.L795
.L602:
.LBE26:
	.loc 1 1699 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L795
	.loc 1 1700 0
	movl	12(%ebp), %eax
	orb	$2, %ah
	movl	8(%ebp), %edx
	movl	24(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr
	.loc 1 1701 0
	jmp	.L795
.L601:
	.loc 1 1727 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	operator_name_info@GOT(%ebx), %edx
	sall	$4, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_binary_op
	.loc 1 1728 0
	jmp	.L795
.L607:
	.loc 1 1733 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	dump_binary_op
	.loc 1 1734 0
	jmp	.L795
.L608:
	.loc 1 1739 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	dump_binary_op
	.loc 1 1740 0
	jmp	.L795
.L596:
.LBB27:
	.loc 1 1744 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1745 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$42, %al
	jne	.L713
	.loc 1 1747 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1748 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L715
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -128(%ebp)
	leal	.LC67@GOTOFF(%ebx), %esi
	movl	%esi, -132(%ebp)
	movl	$5, -136(%ebp)
	cld
	movl	-128(%ebp), %esi
	movl	-132(%ebp), %edi
	movl	-136(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L718
.L715:
	.loc 1 1751 0
	movl	12(%ebp), %eax
	orb	$2, %ah
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 1752 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L718
.L713:
	.loc 1 1757 0
	movl	12(%ebp), %eax
	orb	$2, %ah
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 1758 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$46, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
.L718:
	.loc 1 1760 0
	movl	12(%ebp), %eax
	andb	$253, %ah
	movl	8(%ebp), %edx
	movl	24(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr
	.loc 1 1762 0
	jmp	.L795
.L598:
.LBE27:
	.loc 1 1765 0
	movl	12(%ebp), %edx
	orb	$2, %dh
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 1766 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$91, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1767 0
	movl	12(%ebp), %edx
	orb	$2, %dh
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 1768 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$93, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1769 0
	jmp	.L795
.L610:
	.loc 1 1772 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L719
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L719
	.loc 1 1774 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1775 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	.loc 1 1776 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1777 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr
	.loc 1 1772 0
	jmp	.L795
.L719:
	.loc 1 1780 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	dump_unary_op
	.loc 1 1781 0
	jmp	.L795
.L614:
	.loc 1 1784 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L723
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	je	.L723
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L726
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L726
.L723:
	.loc 1 1791 0
	movl	12(%ebp), %eax
	orb	$2, %ah
	movl	8(%ebp), %edx
	movl	20(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr
	.loc 1 1784 0
	jmp	.L795
.L726:
	.loc 1 1793 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	dump_unary_op
	.loc 1 1794 0
	jmp	.L795
.L597:
	.loc 1 1797 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L729
	.loc 1 1799 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1800 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$54, %al
	je	.L731
	leal	__FUNCTION__.16758@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1800, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L731:
	.loc 1 1801 0
	movl	12(%ebp), %edx
	orb	$2, %dh
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 1802 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1803 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr_list
	.loc 1 1804 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	jmp	.L795
.L729:
	.loc 1 1808 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L734
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L734
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L734
	.loc 1 1811 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr
	.loc 1 1808 0
	jmp	.L795
.L734:
	.loc 1 1813 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	dump_unary_op
	.loc 1 1815 0
	jmp	.L795
.L609:
	.loc 1 1822 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	operator_name_info@GOT(%ebx), %edx
	sall	$4, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_unary_op
	.loc 1 1823 0
	jmp	.L795
.L615:
	.loc 1 1827 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1828 0
	movl	12(%ebp), %edx
	orb	$2, %dh
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 1829 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	operator_name_info@GOT(%ebx), %edx
	sall	$4, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1831 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1832 0
	jmp	.L795
.L612:
	.loc 1 1838 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L738
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L738
.LBB28:
	.loc 1 1840 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1842 0
	jmp	.L741
.L742:
	.loc 1 1843 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L741:
	.loc 1 1842 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L742
	.loc 1 1845 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L738
	.loc 1 1847 0
	movl	12(%ebp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L745
	.loc 1 1848 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
.L745:
	.loc 1 1849 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$42, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1850 0
	movl	12(%ebp), %edx
	andb	$253, %dh
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 1851 0
	movl	12(%ebp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L795
	.loc 1 1852 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1853 0
	jmp	.L795
.L738:
.LBE28:
	.loc 1 1857 0
	movl	12(%ebp), %eax
	orb	$2, %ah
	movl	8(%ebp), %edx
	movl	20(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr
	.loc 1 1858 0
	jmp	.L795
.L611:
	.loc 1 1861 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr
	.loc 1 1862 0
	jmp	.L795
.L618:
	.loc 1 1865 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr
	.loc 1 1866 0
	jmp	.L795
.L599:
	.loc 1 1869 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L749
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L749
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L749
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L749
.LBB29:
	.loc 1 1871 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	236(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_ptrmemfunc_access_expr@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1873 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L754
	.loc 1 1876 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1877 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	.loc 1 1878 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1879 0
	jmp	.L795
.L754:
	.loc 1 1881 0
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L795
.LBB30:
	.loc 1 1886 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1887 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1888 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	76(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1890 0
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	.loc 1 1894 0
	addl	$-1, -96(%ebp)
	adcl	$-1, -92(%ebp)
	.loc 1 1896 0
	jmp	.L758
.L759:
	.loc 1 1898 0
	addl	$-1, -96(%ebp)
	adcl	$-1, -92(%ebp)
	.loc 1 1899 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L758:
	.loc 1 1896 0
	movl	-96(%ebp), %eax
	orl	-92(%ebp), %eax
	testl	%eax, %eax
	je	.L760
	cmpl	$0, -24(%ebp)
	jne	.L759
.L760:
	.loc 1 1901 0
	cmpl	$0, -24(%ebp)
	je	.L795
	.loc 1 1903 0
	movl	12(%ebp), %eax
	orb	$2, %ah
	movl	-24(%ebp), %edx
	movl	20(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr
	.loc 1 1905 0
	jmp	.L795
.L749:
.LBE30:
.LBE29:
	.loc 1 1910 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L764
	.loc 1 1912 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	.loc 1 1913 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1914 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	jmp	.L795
.L764:
	.loc 1 1918 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$123, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1919 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr_list
	.loc 1 1920 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$125, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1922 0
	jmp	.L795
.L622:
.LBB31:
	.loc 1 1926 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1927 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	is_dummy_object@PLT
	testl	%eax, %eax
	je	.L766
	.loc 1 1929 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1930 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L768
	.loc 1 1932 0
	movl	12(%ebp), %eax
	orb	$2, %ah
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_expr
	jmp	.L795
.L768:
	.loc 1 1933 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L771
	.loc 1 1934 0
	movl	12(%ebp), %esi
	orl	$512, %esi
	movl	%esi, -104(%ebp)
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L773
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L775
.L773:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -100(%ebp)
.L775:
	movl	-104(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_expr
	jmp	.L795
.L771:
	.loc 1 1937 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_decl
	jmp	.L795
.L766:
	.loc 1 1941 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$42, %al
	jne	.L777
	.loc 1 1943 0
	movl	12(%ebp), %edx
	orb	$2, %dh
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 1944 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC77@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L779
.L777:
	.loc 1 1948 0
	movl	12(%ebp), %eax
	orb	$2, %ah
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 1949 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L779:
	.loc 1 1951 0
	movl	12(%ebp), %eax
	orb	$2, %ah
	movl	8(%ebp), %edx
	movl	24(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr
	.loc 1 1953 0
	jmp	.L795
.L628:
.LBE31:
	.loc 1 1957 0
	movl	12(%ebp), %eax
	andl	$-5, %eax
	movl	8(%ebp), %edx
	movl	40(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_decl
	.loc 1 1958 0
	jmp	.L795
.L590:
	.loc 1 1961 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1962 0
	jmp	.L795
.L625:
	.loc 1 1965 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	.loc 1 1966 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1967 0
	movl	12(%ebp), %edx
	orb	$2, %dh
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 1968 0
	jmp	.L795
.L632:
	.loc 1 1971 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L780
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L782
.L780:
	.loc 1 1974 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	.loc 1 1975 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1976 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr_list
	.loc 1 1977 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1971 0
	jmp	.L795
.L782:
	.loc 1 1981 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1982 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	.loc 1 1983 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC79@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1984 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr_list
	.loc 1 1985 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 1987 0
	jmp	.L795
.L635:
	.loc 1 1990 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC80@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1991 0
	jmp	.L784
.L633:
	.loc 1 1993 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC81@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1994 0
	jmp	.L784
.L634:
	.loc 1 1996 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 1997 0
	jmp	.L784
.L636:
	.loc 1 1999 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC83@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L784:
	.loc 1 2001 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	.loc 1 2002 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC84@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 2003 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr
	.loc 1 2004 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 2005 0
	jmp	.L795
.L631:
	.loc 1 2008 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	16(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 2009 0
	jmp	.L795
.L620:
	.loc 1 2012 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr
	.loc 1 2013 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 2014 0
	jmp	.L795
.L619:
	.loc 1 2018 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-103, %al
	jne	.L785
	.loc 1 2019 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC85@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L787
.L785:
	.loc 1 2022 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-101, %al
	je	.L788
	leal	__FUNCTION__.16758@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2022, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L788:
	.loc 1 2023 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L787:
	.loc 1 2025 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L790
	.loc 1 2026 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	jmp	.L792
.L790:
	.loc 1 2028 0
	movl	12(%ebp), %eax
	orb	$2, %ah
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	dump_unary_op
.L792:
	.loc 1 2029 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 2030 0
	jmp	.L795
.L629:
	.loc 1 2033 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 2034 0
	jmp	.L795
.L606:
	.loc 1 2039 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr
	.loc 1 2040 0
	jmp	.L795
.L637:
	.loc 1 2043 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_expr
	.loc 1 2044 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$46, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 2045 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	.loc 1 2046 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC88@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 2047 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
	.loc 1 2048 0
	jmp	.L795
.L630:
	.loc 1 2051 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_decl
	.loc 1 2052 0
	jmp	.L795
.L621:
	.loc 1 2057 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 2058 0
	jmp	.L795
.L604:
	.loc 1 2061 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$123, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 2062 0
	movl	12(%ebp), %edx
	andb	$253, %dh
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 2063 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$125, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 2064 0
	jmp	.L795
.L617:
	.loc 1 2067 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 2068 0
	movl	12(%ebp), %edx
	andb	$253, %dh
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 2069 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$125, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 2070 0
	jmp	.L795
.L616:
	.loc 1 2073 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 2074 0
	movl	12(%ebp), %edx
	andb	$253, %dh
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 2075 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 2076 0
	jmp	.L795
.L627:
	.loc 1 2079 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_first_fn@PLT
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 2080 0
	jmp	.L795
.L591:
	.loc 1 2083 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L588
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L588
	.loc 1 2085 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 2086 0
	jmp	.L795
.L588:
	.loc 1 2094 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	leal	__FUNCTION__.16758@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sorry@PLT
.L589:
	.loc 1 2097 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L795:
	.loc 1 2100 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE39:
	.size	dump_expr, .-dump_expr
	.section	.rodata
.LC94:
	.string	"<unknown operator>"
	.text
	.type	dump_binary_op, @function
dump_binary_op:
.LFB40:
	.loc 1 2107 0
	pushl	%ebp
.LCFI102:
	movl	%esp, %ebp
.LCFI103:
	pushl	%ebx
.LCFI104:
	subl	$20, %esp
.LCFI105:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2108 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 2109 0
	movl	16(%ebp), %edx
	orb	$2, %dh
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 2110 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_add_space@PLT
	.loc 1 2111 0
	cmpl	$0, 8(%ebp)
	je	.L797
	.loc 1 2112 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L799
.L797:
	.loc 1 2114 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L799:
	.loc 1 2115 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_add_space@PLT
	.loc 1 2116 0
	movl	16(%ebp), %edx
	orb	$2, %dh
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 2117 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 2118 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	dump_binary_op, .-dump_binary_op
	.type	dump_unary_op, @function
dump_unary_op:
.LFB41:
	.loc 1 2125 0
	pushl	%ebp
.LCFI106:
	movl	%esp, %ebp
.LCFI107:
	pushl	%ebx
.LCFI108:
	subl	$20, %esp
.LCFI109:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2126 0
	movl	16(%ebp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L802
	.loc 1 2127 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
.L802:
	.loc 1 2128 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	.loc 1 2129 0
	movl	16(%ebp), %edx
	andb	$253, %dh
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 2130 0
	movl	16(%ebp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L806
	.loc 1 2131 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	$41, 4(%esp)
	movl	%eax, (%esp)
	call	output_add_character@PLT
.L806:
	.loc 1 2132 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	dump_unary_op, .-dump_unary_op
.globl type_as_string
	.type	type_as_string, @function
type_as_string:
.LFB42:
	.loc 1 2141 0
	pushl	%ebp
.LCFI110:
	movl	%esp, %ebp
.LCFI111:
	pushl	%ebx
.LCFI112:
	subl	$20, %esp
.LCFI113:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2142 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_clear_message_text@PLT
	.loc 1 2144 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_type
	.loc 1 2146 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_finalize_message@PLT
	.loc 1 2147 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	type_as_string, .-type_as_string
.globl expr_as_string
	.type	expr_as_string, @function
expr_as_string:
.LFB43:
	.loc 1 2153 0
	pushl	%ebp
.LCFI114:
	movl	%esp, %ebp
.LCFI115:
	pushl	%ebx
.LCFI116:
	subl	$20, %esp
.LCFI117:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2154 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_clear_message_text@PLT
	.loc 1 2156 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 2158 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_finalize_message@PLT
	.loc 1 2159 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	expr_as_string, .-expr_as_string
.globl decl_as_string
	.type	decl_as_string, @function
decl_as_string:
.LFB44:
	.loc 1 2165 0
	pushl	%ebp
.LCFI118:
	movl	%esp, %ebp
.LCFI119:
	pushl	%ebx
.LCFI120:
	subl	$20, %esp
.LCFI121:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2166 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_clear_message_text@PLT
	.loc 1 2168 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_decl
	.loc 1 2170 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_finalize_message@PLT
	.loc 1 2171 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	decl_as_string, .-decl_as_string
.globl context_as_string
	.type	context_as_string, @function
context_as_string:
.LFB45:
	.loc 1 2177 0
	pushl	%ebp
.LCFI122:
	movl	%esp, %ebp
.LCFI123:
	pushl	%ebx
.LCFI124:
	subl	$20, %esp
.LCFI125:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2178 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_clear_message_text@PLT
	.loc 1 2180 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_scope
	.loc 1 2182 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_finalize_message@PLT
	.loc 1 2183 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	context_as_string, .-context_as_string
.globl lang_decl_name
	.type	lang_decl_name, @function
lang_decl_name:
.LFB46:
	.loc 1 2191 0
	pushl	%ebp
.LCFI126:
	movl	%esp, %ebp
.LCFI127:
	pushl	%ebx
.LCFI128:
	subl	$20, %esp
.LCFI129:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2192 0
	cmpl	$1, 12(%ebp)
	jle	.L816
	.loc 1 2193 0
	movl	$4, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_as_string@PLT
	movl	%eax, -12(%ebp)
	jmp	.L818
.L816:
	.loc 1 2195 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_clear_message_text@PLT
	.loc 1 2197 0
	cmpl	$1, 12(%ebp)
	jne	.L819
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L819
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L819
	.loc 1 2199 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L823
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L825
.L823:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L825:
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_type
	.loc 1 2200 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L819:
	.loc 1 2203 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L826
	.loc 1 2204 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_function_name
	jmp	.L828
.L826:
	.loc 1 2206 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dump_decl
.L828:
	.loc 1 2208 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_finalize_message@PLT
	movl	%eax, -12(%ebp)
.L818:
	movl	-12(%ebp), %eax
	.loc 1 2209 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	lang_decl_name, .-lang_decl_name
.globl cp_file_of
	.type	cp_file_of, @function
cp_file_of:
.LFB47:
	.loc 1 2214 0
	pushl	%ebp
.LCFI130:
	movl	%esp, %ebp
.LCFI131:
	subl	$4, %esp
.LCFI132:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2215 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L831
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L831
	.loc 1 2216 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L834
.L831:
	.loc 1 2217 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L835
	.loc 1 2218 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L834
.L835:
	.loc 1 2219 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L837
	.loc 1 2220 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L834
.L837:
	.loc 1 2222 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -4(%ebp)
.L834:
	movl	-4(%ebp), %eax
	.loc 1 2223 0
	leave
	ret
.LFE47:
	.size	cp_file_of, .-cp_file_of
.globl cp_line_of
	.type	cp_line_of, @function
cp_line_of:
.LFB48:
	.loc 1 2228 0
	pushl	%ebp
.LCFI133:
	movl	%esp, %ebp
.LCFI134:
	subl	$20, %esp
.LCFI135:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2229 0
	movl	$0, -4(%ebp)
	.loc 1 2230 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L841
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L841
	.loc 1 2231 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
.L841:
	.loc 1 2232 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L844
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L844
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L844
	.loc 1 2234 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L844:
	.loc 1 2236 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L848
	.loc 1 2237 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L850
.L848:
	.loc 1 2238 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L851
	.loc 1 2239 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L850
.L851:
	.loc 1 2241 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
.L850:
	.loc 1 2243 0
	cmpl	$0, -4(%ebp)
	jne	.L853
	.loc 1 2244 0
	movl	lineno@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L855
.L853:
	.loc 1 2246 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
.L855:
	movl	-20(%ebp), %eax
	.loc 1 2247 0
	leave
	ret
.LFE48:
	.size	cp_line_of, .-cp_line_of
	.type	decl_to_string, @function
decl_to_string:
.LFB49:
	.loc 1 2257 0
	pushl	%ebp
.LCFI136:
	movl	%esp, %ebp
.LCFI137:
	pushl	%ebx
.LCFI138:
	subl	$36, %esp
.LCFI139:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2258 0
	movl	$0, -8(%ebp)
	.loc 1 2260 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L858
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L858
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L858
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L862
.L858:
	.loc 1 2262 0
	movl	$8, -8(%ebp)
.L862:
	.loc 1 2263 0
	cmpl	$0, 12(%ebp)
	je	.L863
	.loc 1 2264 0
	orl	$4, -8(%ebp)
	jmp	.L865
.L863:
	.loc 1 2265 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L865
	.loc 1 2266 0
	orl	$20, -8(%ebp)
.L865:
	.loc 1 2267 0
	orl	$128, -8(%ebp)
	.loc 1 2269 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_clear_message_text@PLT
	.loc 1 2271 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_decl
	.loc 1 2273 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_finalize_message@PLT
	.loc 1 2274 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	decl_to_string, .-decl_to_string
	.type	expr_to_string, @function
expr_to_string:
.LFB50:
	.loc 1 2280 0
	pushl	%ebp
.LCFI140:
	movl	%esp, %ebp
.LCFI141:
	pushl	%ebx
.LCFI142:
	subl	$20, %esp
.LCFI143:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2281 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_clear_message_text@PLT
	.loc 1 2283 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_expr
	.loc 1 2285 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_finalize_message@PLT
	.loc 1 2286 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	expr_to_string, .-expr_to_string
	.type	fndecl_to_string, @function
fndecl_to_string:
.LFB51:
	.loc 1 2292 0
	pushl	%ebp
.LCFI144:
	movl	%esp, %ebp
.LCFI145:
	pushl	%ebx
.LCFI146:
	subl	$36, %esp
.LCFI147:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2295 0
	movl	$68, -8(%ebp)
	.loc 1 2296 0
	cmpl	$0, 12(%ebp)
	je	.L871
	.loc 1 2297 0
	orl	$32, -8(%ebp)
.L871:
	.loc 1 2298 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_clear_message_text@PLT
	.loc 1 2300 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_decl
	.loc 1 2302 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_finalize_message@PLT
	.loc 1 2303 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	fndecl_to_string, .-fndecl_to_string
	.type	code_to_string, @function
code_to_string:
.LFB52:
	.loc 1 2310 0
	pushl	%ebp
.LCFI148:
	movl	%esp, %ebp
.LCFI149:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2311 0
	movl	8(%ebp), %edx
	movl	tree_code_name@GOT(%ecx), %eax
	movl	(%eax,%edx,4), %eax
	.loc 1 2312 0
	popl	%ebp
	ret
.LFE52:
	.size	code_to_string, .-code_to_string
	.section	.rodata
	.type	__FUNCTION__.17648, @object
	.size	__FUNCTION__.17648, 19
__FUNCTION__.17648:
	.string	"language_to_string"
.LC95:
	.string	"C"
.LC96:
	.string	"C++"
.LC97:
	.string	"Java"
	.text
.globl language_to_string
	.type	language_to_string, @function
language_to_string:
.LFB53:
	.loc 1 2318 0
	pushl	%ebp
.LCFI150:
	movl	%esp, %ebp
.LCFI151:
	pushl	%ebx
.LCFI152:
	subl	$20, %esp
.LCFI153:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2319 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$1, -12(%ebp)
	je	.L879
	cmpl	$1, -12(%ebp)
	jb	.L878
	cmpl	$2, -12(%ebp)
	je	.L880
	jmp	.L877
.L878:
	.loc 1 2322 0
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L881
.L879:
	.loc 1 2325 0
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L881
.L880:
	.loc 1 2328 0
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L881
.L877:
	.loc 1 2331 0
	leal	__FUNCTION__.17648@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2331, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L881:
	movl	-8(%ebp), %eax
	.loc 1 2334 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	language_to_string, .-language_to_string
	.section	.rodata
.LC98:
	.string	"`this'"
.LC99:
	.string	"%d"
	.text
	.type	parm_to_string, @function
parm_to_string:
.LFB54:
	.loc 1 2342 0
	pushl	%ebp
.LCFI154:
	movl	%esp, %ebp
.LCFI155:
	pushl	%ebx
.LCFI156:
	subl	$20, %esp
.LCFI157:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2343 0
	cmpl	$0, 8(%ebp)
	jns	.L884
	.loc 1 2344 0
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L886
.L884:
	.loc 1 2346 0
	movl	8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 8(%esp)
	leal	.LC99@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	digit_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 2347 0
	leal	digit_buffer@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L886:
	movl	-8(%ebp), %eax
	.loc 1 2348 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	parm_to_string, .-parm_to_string
	.section	.rodata
.LC100:
	.string	"{unknown}"
	.text
	.type	op_to_string, @function
op_to_string:
.LFB55:
	.loc 1 2354 0
	pushl	%ebp
.LCFI158:
	movl	%esp, %ebp
.LCFI159:
	subl	$20, %esp
.LCFI160:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2357 0
	movl	8(%ebp), %eax
	movl	operator_name_info@GOT(%ecx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	movl	%eax, -4(%ebp)
	.loc 1 2358 0
	cmpl	$0, -4(%ebp)
	je	.L889
	movl	-4(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L891
.L889:
	leal	.LC100@GOTOFF(%ecx), %eax
	movl	%eax, -20(%ebp)
.L891:
	movl	-20(%ebp), %eax
	.loc 1 2359 0
	leave
	ret
.LFE55:
	.size	op_to_string, .-op_to_string
	.type	type_to_string, @function
type_to_string:
.LFB56:
	.loc 1 2365 0
	pushl	%ebp
.LCFI161:
	movl	%esp, %ebp
.LCFI162:
	pushl	%ebx
.LCFI163:
	subl	$36, %esp
.LCFI164:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2368 0
	movl	$0, -8(%ebp)
	.loc 1 2369 0
	cmpl	$0, 12(%ebp)
	je	.L894
	.loc 1 2370 0
	orl	$8, -8(%ebp)
.L894:
	.loc 1 2371 0
	orl	$128, -8(%ebp)
	.loc 1 2373 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_clear_message_text@PLT
	.loc 1 2375 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_type
	.loc 1 2377 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_finalize_message@PLT
	.loc 1 2378 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	type_to_string, .-type_to_string
	.type	assop_to_string, @function
assop_to_string:
.LFB57:
	.loc 1 2384 0
	pushl	%ebp
.LCFI165:
	movl	%esp, %ebp
.LCFI166:
	subl	$20, %esp
.LCFI167:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2387 0
	movl	8(%ebp), %eax
	movl	assignment_operator_name_info@GOT(%ecx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	movl	%eax, -4(%ebp)
	.loc 1 2388 0
	cmpl	$0, -4(%ebp)
	je	.L898
	movl	-4(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L900
.L898:
	leal	.LC100@GOTOFF(%ecx), %eax
	movl	%eax, -20(%ebp)
.L900:
	movl	-20(%ebp), %eax
	.loc 1 2389 0
	leave
	ret
.LFE57:
	.size	assop_to_string, .-assop_to_string
	.section	.rodata
.LC101:
	.string	""
.LC102:
	.string	"NULL"
	.text
	.type	args_to_string, @function
args_to_string:
.LFB58:
	.loc 1 2395 0
	pushl	%ebp
.LCFI168:
	movl	%esp, %ebp
.LCFI169:
	pushl	%ebx
.LCFI170:
	subl	$36, %esp
.LCFI171:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2396 0
	movl	$0, -8(%ebp)
	.loc 1 2397 0
	cmpl	$0, 12(%ebp)
	je	.L903
	.loc 1 2398 0
	orl	$8, -8(%ebp)
.L903:
	.loc 1 2400 0
	cmpl	$0, 8(%ebp)
	jne	.L905
	.loc 1 2401 0
	leal	.LC101@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L907
.L905:
	.loc 1 2403 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L908
	.loc 1 2404 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	type_as_string@PLT
	movl	%eax, -24(%ebp)
	jmp	.L907
.L908:
	.loc 1 2406 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_clear_message_text@PLT
	.loc 1 2407 0
	jmp	.L910
.L911:
	.loc 1 2409 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	264(%eax), %eax
	cmpl	%eax, %edx
	jne	.L912
	.loc 1 2410 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L914
.L912:
	.loc 1 2412 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	error_type@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_type
.L914:
	.loc 1 2413 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L915
	.loc 1 2414 0
	movl	scratch_buffer@GOTOFF(%ebx), %edx
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
.L915:
	.loc 1 2407 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L910:
	cmpl	$0, 8(%ebp)
	jne	.L911
	.loc 1 2416 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_finalize_message@PLT
	movl	%eax, -24(%ebp)
.L907:
	movl	-24(%ebp), %eax
	.loc 1 2417 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	args_to_string, .-args_to_string
	.type	cv_to_string, @function
cv_to_string:
.LFB59:
	.loc 1 2423 0
	pushl	%ebp
.LCFI172:
	movl	%esp, %ebp
.LCFI173:
	pushl	%ebx
.LCFI174:
	subl	$20, %esp
.LCFI175:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2424 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_clear_message_text@PLT
	.loc 1 2426 0
	cmpl	$0, 12(%ebp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_qualifiers
	.loc 1 2428 0
	movl	scratch_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_finalize_message@PLT
	.loc 1 2429 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE59:
	.size	cv_to_string, .-cv_to_string
.globl cxx_print_error_function
	.type	cxx_print_error_function, @function
cxx_print_error_function:
.LFB60:
	.loc 1 2436 0
	pushl	%ebp
.LCFI176:
	movl	%esp, %ebp
.LCFI177:
	pushl	%ebx
.LCFI178:
	subl	$20, %esp
.LCFI179:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2437 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lhd_print_error_function@PLT
	.loc 1 2438 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_set_prefix@PLT
	.loc 1 2439 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_print_instantiation_context
	.loc 1 2440 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE60:
	.size	cxx_print_error_function, .-cxx_print_error_function
	.type	cp_diagnostic_starter, @function
cp_diagnostic_starter:
.LFB61:
	.loc 1 2446 0
	pushl	%ebp
.LCFI180:
	movl	%esp, %ebp
.LCFI181:
	pushl	%ebx
.LCFI182:
	subl	$20, %esp
.LCFI183:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2447 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	diagnostic_report_current_module@PLT
	.loc 1 2448 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_print_error_function
	.loc 1 2449 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_print_instantiation_context
	.loc 1 2450 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	diagnostic_build_prefix@PLT
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_set_prefix@PLT
	.loc 1 2451 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE61:
	.size	cp_diagnostic_starter, .-cp_diagnostic_starter
	.type	cp_diagnostic_finalizer, @function
cp_diagnostic_finalizer:
.LFB62:
	.loc 1 2457 0
	pushl	%ebp
.LCFI184:
	movl	%esp, %ebp
.LCFI185:
	pushl	%ebx
.LCFI186:
	subl	$4, %esp
.LCFI187:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2458 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	output_destroy_prefix@PLT
	.loc 1 2459 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE62:
	.size	cp_diagnostic_finalizer, .-cp_diagnostic_finalizer
	.section	.rodata
.LC103:
	.string	"At global scope:"
.LC104:
	.string	"In %s `%s':"
	.text
	.type	cp_print_error_function, @function
cp_print_error_function:
.LFB63:
	.loc 1 2467 0
	pushl	%ebp
.LCFI188:
	movl	%esp, %ebp
.LCFI189:
	pushl	%esi
.LCFI190:
	pushl	%ebx
.LCFI191:
	subl	$48, %esp
.LCFI192:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2468 0
	movl	8(%ebp), %eax
	movl	256(%eax), %edx
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L936
.LBB32:
	.loc 1 2470 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2473 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L930
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	file_name_as_prefix@PLT
	movl	%eax, -28(%ebp)
	jmp	.L932
.L930:
	movl	$0, -28(%ebp)
.L932:
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2475 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_set_prefix@PLT
	.loc 1 2477 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L933
	.loc 1 2478 0
	movl	8(%ebp), %edx
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_add_string@PLT
	jmp	.L935
.L933:
	.loc 1 2480 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$2, 4(%esp)
	movl	%eax, (%esp)
	call	cxx_printable_name@PLT
	movl	%eax, %esi
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	function_category
	movl	8(%ebp), %edx
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC104@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_printf@PLT
.L935:
	.loc 1 2483 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	output_add_newline@PLT
	.loc 1 2485 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 256(%eax)
	.loc 1 2486 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	output_destroy_prefix@PLT
	.loc 1 2487 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
.L936:
.LBE32:
	.loc 1 2489 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE63:
	.size	cp_print_error_function, .-cp_print_error_function
	.section	.rodata
.LC105:
	.string	"static member function"
.LC106:
	.string	"copy constructor"
.LC107:
	.string	"constructor"
.LC108:
	.string	"destructor"
.LC109:
	.string	"member function"
.LC110:
	.string	"function"
	.text
	.type	function_category, @function
function_category:
.LFB64:
	.loc 1 2495 0
	pushl	%ebp
.LCFI193:
	movl	%esp, %ebp
.LCFI194:
	pushl	%ebx
.LCFI195:
	subl	$20, %esp
.LCFI196:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2496 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L938
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L940
.L938:
	.loc 1 2498 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L941
	.loc 1 2499 0
	leal	.LC105@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L943
.L941:
	.loc 1 2500 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L944
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_fn_p@PLT
	testl	%eax, %eax
	jle	.L944
	.loc 1 2501 0
	leal	.LC106@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L943
.L944:
	.loc 1 2502 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L947
	.loc 1 2503 0
	leal	.LC107@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L943
.L947:
	.loc 1 2504 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L949
	.loc 1 2505 0
	leal	.LC108@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L943
.L949:
	.loc 1 2507 0
	leal	.LC109@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L943
.L940:
	.loc 1 2510 0
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L943:
	movl	-8(%ebp), %eax
	.loc 1 2511 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE64:
	.size	function_category, .-function_category
	.section	.rodata
	.align 4
.LC111:
	.string	"%s: In instantiation of `%s':\n"
	.text
	.type	print_instantiation_full_context, @function
print_instantiation_full_context:
.LFB65:
	.loc 1 2518 0
	pushl	%ebp
.LCFI197:
	movl	%esp, %ebp
.LCFI198:
	pushl	%ebx
.LCFI199:
	subl	$36, %esp
.LCFI200:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2519 0
	call	current_instantiation@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2520 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2521 0
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2523 0
	cmpl	$0, -16(%ebp)
	je	.L953
	.loc 1 2525 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L955
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L955
	jmp	.L953
.L955:
	.loc 1 2533 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L958
	.loc 1 2536 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	$20, 4(%esp)
	movl	%eax, (%esp)
	call	decl_as_string@PLT
	movl	8(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_verbatim@PLT
.L958:
	.loc 1 2541 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	sarl	$12, %eax
	movl	%eax, -12(%ebp)
	.loc 1 2542 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2543 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L953:
	.loc 1 2547 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_instantiation_partial_context
	.loc 1 2548 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE65:
	.size	print_instantiation_full_context, .-print_instantiation_full_context
	.section	.rodata
	.align 4
.LC112:
	.string	"%s:%d:   instantiated from `%s'\n"
	.align 4
.LC113:
	.string	"%s:%d:   instantiated from here\n"
	.text
	.type	print_instantiation_partial_context, @function
print_instantiation_partial_context:
.LFB66:
	.loc 1 2557 0
	pushl	%ebp
.LCFI201:
	movl	%esp, %ebp
.LCFI202:
	pushl	%ebx
.LCFI203:
	subl	$20, %esp
.LCFI204:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2558 0
	jmp	.L962
.L963:
	.loc 1 2560 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	$20, 4(%esp)
	movl	%eax, (%esp)
	call	decl_as_string@PLT
	movl	8(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC112@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_verbatim@PLT
	.loc 1 2563 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	sarl	$12, %eax
	movl	%eax, 20(%ebp)
	.loc 1 2564 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 16(%ebp)
	.loc 1 2558 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
.L962:
	cmpl	$0, 12(%ebp)
	jne	.L963
	.loc 1 2566 0
	movl	8(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC113@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_verbatim@PLT
	.loc 1 2567 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE66:
	.size	print_instantiation_partial_context, .-print_instantiation_partial_context
	.type	maybe_print_instantiation_context, @function
maybe_print_instantiation_context:
.LFB67:
	.loc 1 2573 0
	pushl	%ebp
.LCFI205:
	movl	%esp, %ebp
.LCFI206:
	pushl	%ebx
.LCFI207:
	subl	$4, %esp
.LCFI208:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2574 0
	call	problematic_instantiation_changed@PLT
	testl	%eax, %eax
	je	.L971
	call	current_instantiation@PLT
	testl	%eax, %eax
	jne	.L969
	.loc 1 2575 0
	jmp	.L971
.L969:
	.loc 1 2577 0
	call	record_last_problematic_instantiation@PLT
	.loc 1 2578 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_instantiation_full_context
.L971:
	.loc 1 2579 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE67:
	.size	maybe_print_instantiation_context, .-maybe_print_instantiation_context
.globl print_instantiation_context
	.type	print_instantiation_context, @function
print_instantiation_context:
.LFB68:
	.loc 1 2584 0
	pushl	%ebp
.LCFI209:
	movl	%esp, %ebp
.LCFI210:
	pushl	%edi
.LCFI211:
	pushl	%esi
.LCFI212:
	pushl	%ebx
.LCFI213:
	subl	$28, %esp
.LCFI214:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2585 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %edi
	call	current_instantiation@PLT
	movl	%eax, %edx
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	print_instantiation_partial_context
	.loc 1 2587 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	diagnostic_flush_buffer@PLT
	.loc 1 2588 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE68:
	.size	print_instantiation_context, .-print_instantiation_context
	.type	cp_printer, @function
cp_printer:
.LFB69:
	.loc 1 2607 0
	pushl	%ebp
.LCFI215:
	movl	%esp, %ebp
.LCFI216:
	pushl	%ebx
.LCFI217:
	subl	$36, %esp
.LCFI218:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2608 0
	movl	$0, -12(%ebp)
	.loc 1 2615 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$43, %al
	jne	.L975
	.loc 1 2616 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L975:
	.loc 1 2617 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$35, %al
	jne	.L977
	.loc 1 2619 0
	movl	$1, -12(%ebp)
	.loc 1 2620 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L977:
	.loc 1 2623 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$65, %eax
	movl	%eax, -28(%ebp)
	cmpl	$21, -28(%ebp)
	ja	.L979
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	.L991@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L991:
	.long	.L980@GOTOFF
	.long	.L979@GOTOFF
	.long	.L981@GOTOFF
	.long	.L982@GOTOFF
	.long	.L983@GOTOFF
	.long	.L984@GOTOFF
	.long	.L979@GOTOFF
	.long	.L979@GOTOFF
	.long	.L979@GOTOFF
	.long	.L979@GOTOFF
	.long	.L979@GOTOFF
	.long	.L985@GOTOFF
	.long	.L979@GOTOFF
	.long	.L979@GOTOFF
	.long	.L986@GOTOFF
	.long	.L987@GOTOFF
	.long	.L988@GOTOFF
	.long	.L979@GOTOFF
	.long	.L979@GOTOFF
	.long	.L989@GOTOFF
	.long	.L979@GOTOFF
	.long	.L990@GOTOFF
	.text
.L980:
	.loc 1 2625 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%edx), %ecx
	leal	4(%ecx), %eax
	movl	%eax, (%edx)
	movl	%ecx, %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	args_to_string
	movl	%eax, -8(%ebp)
	jmp	.L992
.L981:
	.loc 1 2626 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%edx), %ecx
	leal	4(%ecx), %eax
	movl	%eax, (%edx)
	movl	%ecx, %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	code_to_string
	movl	%eax, -8(%ebp)
	jmp	.L992
.L982:
	.loc 1 2627 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%edx), %ecx
	leal	4(%ecx), %eax
	movl	%eax, (%edx)
	movl	%ecx, %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	decl_to_string
	movl	%eax, -8(%ebp)
	jmp	.L992
.L983:
	.loc 1 2628 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%edx), %ecx
	leal	4(%ecx), %eax
	movl	%eax, (%edx)
	movl	%ecx, %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expr_to_string
	movl	%eax, -8(%ebp)
	jmp	.L992
.L984:
	.loc 1 2629 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%edx), %ecx
	leal	4(%ecx), %eax
	movl	%eax, (%edx)
	movl	%ecx, %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fndecl_to_string
	movl	%eax, -8(%ebp)
	jmp	.L992
.L985:
	.loc 1 2630 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%edx), %ecx
	leal	4(%ecx), %eax
	movl	%eax, (%edx)
	movl	%ecx, %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	language_to_string@PLT
	movl	%eax, -8(%ebp)
	jmp	.L992
.L986:
	.loc 1 2631 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%edx), %ecx
	leal	4(%ecx), %eax
	movl	%eax, (%edx)
	movl	%ecx, %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	op_to_string
	movl	%eax, -8(%ebp)
	jmp	.L992
.L987:
	.loc 1 2632 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%edx), %ecx
	leal	4(%ecx), %eax
	movl	%eax, (%edx)
	movl	%ecx, %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	parm_to_string
	movl	%eax, -8(%ebp)
	jmp	.L992
.L988:
	.loc 1 2633 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%edx), %ecx
	leal	4(%ecx), %eax
	movl	%eax, (%edx)
	movl	%ecx, %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assop_to_string
	movl	%eax, -8(%ebp)
	jmp	.L992
.L989:
	.loc 1 2634 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%edx), %ecx
	leal	4(%ecx), %eax
	movl	%eax, (%edx)
	movl	%ecx, %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	type_to_string
	movl	%eax, -8(%ebp)
	jmp	.L992
.L990:
	.loc 1 2635 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%edx), %ecx
	leal	4(%ecx), %eax
	movl	%eax, (%edx)
	movl	%ecx, %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cv_to_string
	movl	%eax, -8(%ebp)
	jmp	.L992
.L979:
	.loc 1 2638 0
	movl	$0, -24(%ebp)
	jmp	.L993
.L992:
	.loc 1 2641 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	output_add_string@PLT
	.loc 1 2642 0
	movl	$1, -24(%ebp)
.L993:
	movl	-24(%ebp), %eax
	.loc 1 2647 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE69:
	.size	cp_printer, .-cp_printer
	.section	.rodata
.LC114:
	.string	"%lld"
	.text
	.type	print_integer, @function
print_integer:
.LFB70:
	.loc 1 2653 0
	pushl	%ebp
.LCFI219:
	movl	%esp, %ebp
.LCFI220:
	pushl	%ebx
.LCFI221:
	subl	$36, %esp
.LCFI222:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2654 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	digit_buffer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 2655 0
	leal	digit_buffer@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	output_add_string@PLT
	.loc 1 2656 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE70:
	.size	print_integer, .-print_integer
	.type	print_non_consecutive_character, @function
print_non_consecutive_character:
.LFB71:
	.loc 1 2662 0
	pushl	%ebp
.LCFI223:
	movl	%esp, %ebp
.LCFI224:
	pushl	%ebx
.LCFI225:
	subl	$36, %esp
.LCFI226:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2663 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	output_last_position@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2665 0
	cmpl	$0, -8(%ebp)
	je	.L998
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	jne	.L998
	.loc 1 2666 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	output_add_space@PLT
.L998:
	.loc 1 2667 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	output_add_character@PLT
	.loc 1 2668 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE71:
	.size	print_non_consecutive_character, .-print_non_consecutive_character
	.section	.rodata
	.align 4
.LC115:
	.string	"unexpected letter `%c' in locate_error\n"
	.text
	.type	locate_error, @function
locate_error:
.LFB72:
	.loc 1 2677 0
	pushl	%ebp
.LCFI227:
	movl	%esp, %ebp
.LCFI228:
	pushl	%ebx
.LCFI229:
	subl	$36, %esp
.LCFI230:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2678 0
	movl	$0, -20(%ebp)
	.loc 1 2679 0
	movl	$0, -12(%ebp)
	.loc 1 2682 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1003
.L1004:
	.loc 1 2684 0
	movl	$0, -12(%ebp)
	.loc 1 2685 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	jne	.L1005
	.loc 1 2687 0
	addl	$1, -8(%ebp)
	.loc 1 2688 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$43, %al
	jne	.L1007
	.loc 1 2689 0
	addl	$1, -8(%ebp)
	movl	$1, -12(%ebp)
.L1007:
	.loc 1 2690 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$35, %al
	jne	.L1009
	.loc 1 2691 0
	addl	$1, -8(%ebp)
.L1009:
	.loc 1 2693 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$37, %eax
	movl	%eax, -24(%ebp)
	cmpl	$78, -24(%ebp)
	ja	.L1011
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	.L1018@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1018:
	.long	.L1005@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1013@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1014@GOTOFF
	.long	.L1013@GOTOFF
	.long	.L1013@GOTOFF
	.long	.L1013@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1015@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1014@GOTOFF
	.long	.L1013@GOTOFF
	.long	.L1014@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1013@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1013@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1016@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1017@GOTOFF
	.text
.L1016:
	.loc 1 2697 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 12(%ebp)
	jmp	.L1005
.L1017:
	.loc 1 2698 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 12(%ebp)
	jmp	.L1005
.L1015:
	.loc 1 2699 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 12(%ebp)
	jmp	.L1005
.L1014:
	.loc 1 2702 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 12(%ebp)
	jmp	.L1005
.L1013:
	.loc 1 2713 0
	movl	12(%ebp), %edx
	leal	4(%edx), %eax
	movl	%eax, 12(%ebp)
	movl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2714 0
	cmpl	$0, -20(%ebp)
	je	.L1019
	cmpl	$0, -12(%ebp)
	je	.L1005
.L1019:
	.loc 1 2715 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2716 0
	jmp	.L1005
.L1011:
	.loc 1 2719 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 220(%eax)
	.loc 1 2720 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L1005:
	.loc 1 2682 0
	addl	$1, -8(%ebp)
.L1003:
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1004
	.loc 1 2725 0
	cmpl	$0, -20(%ebp)
	jne	.L1023
	.loc 1 2726 0
	movl	12(%ebp), %edx
	leal	4(%edx), %eax
	movl	%eax, 12(%ebp)
	movl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L1023:
	.loc 1 2728 0
	movl	-20(%ebp), %eax
	.loc 1 2729 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE72:
	.size	locate_error, .-locate_error
.globl cp_error_at
	.type	cp_error_at, @function
cp_error_at:
.LFB73:
	.loc 1 2734 0
	pushl	%ebp
.LCFI231:
	movl	%esp, %ebp
.LCFI232:
	pushl	%esi
.LCFI233:
	pushl	%ebx
.LCFI234:
	subl	$64, %esp
.LCFI235:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB33:
	.loc 1 2738 0
	leal	12(%ebp), %eax
	movl	%eax, -16(%ebp)
.LBB34:
	.loc 1 2740 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	locate_error
	movl	%eax, -12(%ebp)
.LBE34:
.LBE33:
.LBB35:
	.loc 1 2743 0
	leal	12(%ebp), %eax
	movl	%eax, -16(%ebp)
.LBB36:
	.loc 1 2746 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_line_of@PLT
	movl	%eax, %esi
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_file_of@PLT
	movl	$3, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%eax, 12(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	diagnostic_set_info@PLT
	.loc 1 2748 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	diagnostic_report_diagnostic@PLT
.LBE36:
.LBE35:
	.loc 1 2750 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE73:
	.size	cp_error_at, .-cp_error_at
.globl cp_warning_at
	.type	cp_warning_at, @function
cp_warning_at:
.LFB74:
	.loc 1 2754 0
	pushl	%ebp
.LCFI236:
	movl	%esp, %ebp
.LCFI237:
	pushl	%esi
.LCFI238:
	pushl	%ebx
.LCFI239:
	subl	$64, %esp
.LCFI240:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB37:
	.loc 1 2758 0
	leal	12(%ebp), %eax
	movl	%eax, -16(%ebp)
.LBB38:
	.loc 1 2760 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	locate_error
	movl	%eax, -12(%ebp)
.LBE38:
.LBE37:
.LBB39:
	.loc 1 2763 0
	leal	12(%ebp), %eax
	movl	%eax, -16(%ebp)
.LBB40:
	.loc 1 2766 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_line_of@PLT
	movl	%eax, %esi
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_file_of@PLT
	movl	$4, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%eax, 12(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	diagnostic_set_info@PLT
	.loc 1 2768 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	diagnostic_report_diagnostic@PLT
.LBE40:
.LBE39:
	.loc 1 2770 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE74:
	.size	cp_warning_at, .-cp_warning_at
.globl cp_pedwarn_at
	.type	cp_pedwarn_at, @function
cp_pedwarn_at:
.LFB75:
	.loc 1 2774 0
	pushl	%ebp
.LCFI241:
	movl	%esp, %ebp
.LCFI242:
	pushl	%esi
.LCFI243:
	pushl	%ebx
.LCFI244:
	subl	$64, %esp
.LCFI245:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB41:
	.loc 1 2778 0
	leal	12(%ebp), %eax
	movl	%eax, -16(%ebp)
.LBB42:
	.loc 1 2780 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	locate_error
	movl	%eax, -12(%ebp)
.LBE42:
.LBE41:
.LBB43:
	.loc 1 2783 0
	leal	12(%ebp), %eax
	movl	%eax, -16(%ebp)
.LBB44:
	.loc 1 2786 0
	movl	flag_pedantic_errors@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1031
	movl	$3, -44(%ebp)
	jmp	.L1033
.L1031:
	movl	$4, -44(%ebp)
.L1033:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_line_of@PLT
	movl	%eax, %esi
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_file_of@PLT
	movl	-44(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%eax, 12(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	diagnostic_set_info@PLT
	.loc 1 2789 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	diagnostic_report_diagnostic@PLT
.LBE44:
.LBE43:
	.loc 1 2791 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE75:
	.size	cp_pedwarn_at, .-cp_pedwarn_at
	.local	scratch_buffer_rec
	.comm	scratch_buffer_rec,208,32
	.local	digit_buffer
	.comm	digit_buffer,128,32
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
	.long	.LCFI23-.LCFI21
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
	.long	.LCFI24-.LFB21
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
	.long	.LCFI31-.LCFI29
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
	.long	.LCFI32-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI35-.LCFI33
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
	.long	.LCFI36-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI37-.LCFI36
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
	.long	.LCFI39-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI42-.LCFI40
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
	.long	.LCFI43-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI46-.LCFI44
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
	.long	.LCFI47-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI48-.LCFI47
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI51-.LCFI48
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
	.long	.LCFI52-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI55-.LCFI53
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
	.long	.LCFI56-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI57-.LCFI56
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI59-.LCFI57
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
	.long	.LCFI60-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI61-.LCFI60
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI63-.LCFI61
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
	.long	.LCFI64-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI65-.LCFI64
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI67-.LCFI65
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
	.long	.LCFI68-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI69-.LCFI68
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI71-.LCFI69
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
	.long	.LCFI72-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI73-.LCFI72
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI75-.LCFI73
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
	.long	.LCFI76-.LFB34
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
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI80-.LFB35
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
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI84-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI85-.LCFI84
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI87-.LCFI85
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
	.long	.LCFI88-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI89-.LCFI88
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI91-.LCFI89
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
	.long	.LCFI101-.LCFI97
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI102-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI103-.LCFI102
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI105-.LCFI103
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
	.long	.LCFI106-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI107-.LCFI106
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI109-.LCFI107
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
	.long	.LCFI110-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI111-.LCFI110
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI113-.LCFI111
	.byte	0x83
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
	.byte	0x4
	.long	.LCFI121-.LCFI119
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
	.long	.LCFI122-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI123-.LCFI122
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI125-.LCFI123
	.byte	0x83
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
	.long	.LCFI126-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI127-.LCFI126
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI129-.LCFI127
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
	.long	.LCFI130-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI131-.LCFI130
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
	.long	.LCFI133-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI134-.LCFI133
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
	.long	.LCFI136-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI137-.LCFI136
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI139-.LCFI137
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
	.long	.LCFI140-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI141-.LCFI140
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI143-.LCFI141
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
	.long	.LCFI144-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI145-.LCFI144
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI147-.LCFI145
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
	.long	.LCFI148-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI149-.LCFI148
	.byte	0xd
	.uleb128 0x5
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
	.align 4
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI161-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI162-.LCFI161
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI164-.LCFI162
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
	.long	.LCFI165-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI166-.LCFI165
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI168-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI169-.LCFI168
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI171-.LCFI169
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
	.long	.LCFI172-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI173-.LCFI172
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI175-.LCFI173
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
	.long	.LCFI176-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI177-.LCFI176
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI179-.LCFI177
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
	.long	.LCFI180-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI181-.LCFI180
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI183-.LCFI181
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
	.long	.LCFI184-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI185-.LCFI184
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI187-.LCFI185
	.byte	0x83
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
	.long	.LCFI188-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI189-.LCFI188
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI192-.LCFI189
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
	.long	.LCFI193-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI194-.LCFI193
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI196-.LCFI194
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
	.long	.LCFI197-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI198-.LCFI197
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI200-.LCFI198
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
	.long	.LCFI201-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI202-.LCFI201
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI204-.LCFI202
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
	.long	.LCFI205-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI206-.LCFI205
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI208-.LCFI206
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
	.long	.LCFI209-.LFB68
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI210-.LCFI209
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI214-.LCFI210
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI215-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI216-.LCFI215
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI218-.LCFI216
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
	.long	.LCFI219-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI220-.LCFI219
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI222-.LCFI220
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
	.long	.LCFI223-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI224-.LCFI223
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI226-.LCFI224
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
	.long	.LCFI227-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI228-.LCFI227
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI230-.LCFI228
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
	.long	.LCFI231-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI232-.LCFI231
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI235-.LCFI232
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
	.long	.LCFI236-.LFB74
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI237-.LCFI236
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI240-.LCFI237
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/tree.h"
	.file 4 "../../../kg++fe/gnu/rtl.h"
	.file 5 "../../../kg++fe/gnu/machmode.h"
	.file 6 "../../../kg++fe/gnu/real.h"
	.file 7 "../../../kg++fe/gnu/hashtable.h"
	.file 8 "../../../kg++fe/gnu/location.h"
	.file 9 "../../../kg++fe/gnu/function.h"
	.file 10 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 11 "../../../kg++fe/gnu/cp/cp-tree.h"
	.file 12 "../../../kg++fe/gnu/c-common.h"
	.file 13 "../../../kg++fe/gnu/varray.h"
	.file 14 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 15 "../../../kg++fe/omp_types.h"
	.file 16 "../../../kg++fe/gnu/diagnostic.h"
	.file 17 "/usr/include/stdio.h"
	.file 18 "/usr/include/libio.h"
	.file 19 "/usr/include/bits/types.h"
	.file 20 "../../../include/gnu/obstack.h"
	.file 21 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 22 "../../../include/gnu/safe-ctype.h"
	.file 23 "../../../kg++fe/gnu/flags.h"
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
	.long	.LCFI39-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI39-.Ltext0
	.long	.LCFI40-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI40-.Ltext0
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
	.long	.LCFI47-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI47-.Ltext0
	.long	.LCFI48-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI48-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
	.long	.LCFI56-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI56-.Ltext0
	.long	.LCFI57-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI57-.Ltext0
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
	.long	.LCFI60-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI60-.Ltext0
	.long	.LCFI61-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI61-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
	.long	.LCFI64-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI64-.Ltext0
	.long	.LCFI65-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI65-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI68-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI68-.Ltext0
	.long	.LCFI69-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI69-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
	.long	.LCFI72-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI72-.Ltext0
	.long	.LCFI73-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI73-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI88-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI88-.Ltext0
	.long	.LCFI89-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI89-.Ltext0
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
	.long	.LCFI102-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI102-.Ltext0
	.long	.LCFI103-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI103-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
	.long	.LCFI106-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI106-.Ltext0
	.long	.LCFI107-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI107-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
	.long	.LCFI110-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI110-.Ltext0
	.long	.LCFI111-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI111-.Ltext0
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
	.long	.LCFI122-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI122-.Ltext0
	.long	.LCFI123-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI123-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
	.long	.LCFI126-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI126-.Ltext0
	.long	.LCFI127-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI127-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
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
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
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
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
	.long	.LCFI136-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI136-.Ltext0
	.long	.LCFI137-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI137-.Ltext0
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
	.long	.LCFI140-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI140-.Ltext0
	.long	.LCFI141-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI141-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
	.long	.LCFI144-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI144-.Ltext0
	.long	.LCFI145-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI145-.Ltext0
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
	.long	.LCFI148-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI148-.Ltext0
	.long	.LCFI149-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI149-.Ltext0
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
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
	.long	.LCFI165-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI165-.Ltext0
	.long	.LCFI166-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI166-.Ltext0
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
	.long	.LCFI168-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI168-.Ltext0
	.long	.LCFI169-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI169-.Ltext0
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
	.long	.LCFI172-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI172-.Ltext0
	.long	.LCFI173-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI173-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
	.long	.LCFI176-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI176-.Ltext0
	.long	.LCFI177-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI177-.Ltext0
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB61-.Ltext0
	.long	.LCFI180-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI180-.Ltext0
	.long	.LCFI181-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI181-.Ltext0
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB62-.Ltext0
	.long	.LCFI184-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI184-.Ltext0
	.long	.LCFI185-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI185-.Ltext0
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB63-.Ltext0
	.long	.LCFI188-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI188-.Ltext0
	.long	.LCFI189-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI189-.Ltext0
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB64-.Ltext0
	.long	.LCFI193-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI193-.Ltext0
	.long	.LCFI194-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI194-.Ltext0
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB65-.Ltext0
	.long	.LCFI197-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI197-.Ltext0
	.long	.LCFI198-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI198-.Ltext0
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB66-.Ltext0
	.long	.LCFI201-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI201-.Ltext0
	.long	.LCFI202-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI202-.Ltext0
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB67-.Ltext0
	.long	.LCFI205-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI205-.Ltext0
	.long	.LCFI206-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI206-.Ltext0
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB68-.Ltext0
	.long	.LCFI209-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI209-.Ltext0
	.long	.LCFI210-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI210-.Ltext0
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB69-.Ltext0
	.long	.LCFI215-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI215-.Ltext0
	.long	.LCFI216-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI216-.Ltext0
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB70-.Ltext0
	.long	.LCFI219-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI219-.Ltext0
	.long	.LCFI220-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI220-.Ltext0
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB71-.Ltext0
	.long	.LCFI223-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI223-.Ltext0
	.long	.LCFI224-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI224-.Ltext0
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB72-.Ltext0
	.long	.LCFI227-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI227-.Ltext0
	.long	.LCFI228-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI228-.Ltext0
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB73-.Ltext0
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
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB74-.Ltext0
	.long	.LCFI236-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI236-.Ltext0
	.long	.LCFI237-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI237-.Ltext0
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
	.section	.debug_info
	.long	0x98b5
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cp/error.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa8
	.uleb128 0x3
	.byte	0x4
	.long	0xae
	.uleb128 0x4
	.long	0x19e
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x4
	.byte	0x84
	.long	0x71e4
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
	.long	0x816
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x7c0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1ab
	.uleb128 0x3
	.byte	0x4
	.long	0x1b1
	.uleb128 0x4
	.long	0x1e6
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x4
	.byte	0xf2
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x4
	.byte	0xf3
	.long	0x7c1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1f2
	.uleb128 0x3
	.byte	0x4
	.long	0x1f8
	.uleb128 0x7
	.long	0x2c9
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x3
	.value	0x887
	.long	0x311e
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x3
	.value	0x888
	.long	0x343c
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x3
	.value	0x889
	.long	0x3484
	.uleb128 0x9
	.string	"vector"
	.byte	0x3
	.value	0x88a
	.long	0x35f3
	.uleb128 0x9
	.string	"string"
	.byte	0x3
	.value	0x88b
	.long	0x3531
	.uleb128 0x9
	.string	"complex"
	.byte	0x3
	.value	0x88c
	.long	0x359e
	.uleb128 0x8
	.long	.LASF1
	.byte	0x3
	.value	0x88d
	.long	0x3828
	.uleb128 0x8
	.long	.LASF2
	.byte	0x3
	.value	0x88e
	.long	0x489f
	.uleb128 0x8
	.long	.LASF3
	.byte	0x3
	.value	0x88f
	.long	0x3a8d
	.uleb128 0x9
	.string	"list"
	.byte	0x3
	.value	0x890
	.long	0x385f
	.uleb128 0x9
	.string	"vec"
	.byte	0x3
	.value	0x891
	.long	0x38a6
	.uleb128 0x9
	.string	"exp"
	.byte	0x3
	.value	0x892
	.long	0x38f7
	.uleb128 0x9
	.string	"block"
	.byte	0x3
	.value	0x893
	.long	0x3943
	.uleb128 0x9
	.string	"omp"
	.byte	0x3
	.value	0x895
	.long	0x529f
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2cf
	.uleb128 0xa
	.long	0x2d4
	.uleb128 0xb
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.long	0x3b5
	.string	"mips_args"
	.byte	0x40
	.byte	0xa
	.value	0xaaa
	.uleb128 0xd
	.string	"gp_reg_found"
	.byte	0xa
	.value	0xaad
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"arg_number"
	.byte	0xa
	.value	0xab0
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"num_gprs"
	.byte	0xa
	.value	0xab5
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"num_fprs"
	.byte	0xa
	.value	0xab8
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stack_words"
	.byte	0xa
	.value	0xabb
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"fp_code"
	.byte	0xa
	.value	0xac8
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"prototype"
	.byte	0xa
	.value	0xacb
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"num_adjusts"
	.byte	0xa
	.value	0xad3
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"adjust"
	.byte	0xa
	.value	0xad4
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xe
	.long	.LASF4
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	0x3cc
	.long	0x9d
	.uleb128 0x10
	.long	0x3cc
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.long	.LASF4
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.string	"CUMULATIVE_ARGS"
	.byte	0xa
	.value	0xad5
	.long	0x2e3
	.uleb128 0x2
	.string	"__gnuc_va_list"
	.byte	0x15
	.byte	0x2b
	.long	0x401
	.uleb128 0x3
	.byte	0x4
	.long	0x2d4
	.uleb128 0x2
	.string	"va_list"
	.byte	0x15
	.byte	0x69
	.long	0x3eb
	.uleb128 0x2
	.string	"size_t"
	.byte	0xe
	.byte	0xd6
	.long	0x3b5
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
	.byte	0x13
	.byte	0x3b
	.long	0x47c
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x13
	.byte	0x90
	.long	0x4c6
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x13
	.byte	0x91
	.long	0x4a7
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2d4
	.uleb128 0x2
	.string	"FILE"
	.byte	0x11
	.byte	0x2e
	.long	0x4f7
	.uleb128 0x13
	.long	0x772
	.long	.LASF5
	.byte	0x94
	.byte	0x11
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x12
	.value	0x10c
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x12
	.value	0x111
	.long	0x4e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x12
	.value	0x112
	.long	0x4e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x12
	.value	0x113
	.long	0x4e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x12
	.value	0x114
	.long	0x4e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x12
	.value	0x115
	.long	0x4e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x12
	.value	0x116
	.long	0x4e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x12
	.value	0x117
	.long	0x4e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x12
	.value	0x118
	.long	0x4e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x12
	.value	0x11a
	.long	0x4e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x12
	.value	0x11b
	.long	0x4e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x12
	.value	0x11c
	.long	0x4e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x12
	.value	0x11e
	.long	0x7e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x12
	.value	0x120
	.long	0x7ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x12
	.value	0x122
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x12
	.value	0x126
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x12
	.value	0x128
	.long	0x4b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x12
	.value	0x12c
	.long	0x435
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x12
	.value	0x12d
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x12
	.value	0x12e
	.long	0x7f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x12
	.value	0x132
	.long	0x800
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x12
	.value	0x13b
	.long	0x4d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x12
	.value	0x144
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x12
	.value	0x145
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x12
	.value	0x146
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x12
	.value	0x147
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x12
	.value	0x148
	.long	0x416
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x12
	.value	0x14a
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x12
	.value	0x14c
	.long	0x806
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xf
	.long	0x782
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x788
	.uleb128 0xa
	.long	0x424
	.uleb128 0x3
	.byte	0x4
	.long	0x424
	.uleb128 0x14
	.string	"_IO_lock_t"
	.byte	0x12
	.byte	0xb0
	.uleb128 0x4
	.long	0x7e4
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x12
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x12
	.byte	0xb7
	.long	0x7e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x12
	.byte	0xb8
	.long	0x7ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x12
	.byte	0xbc
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7a1
	.uleb128 0x3
	.byte	0x4
	.long	0x4f7
	.uleb128 0xf
	.long	0x800
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x793
	.uleb128 0xf
	.long	0x816
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0x27
	.byte	0x0
	.uleb128 0x15
	.long	0xa5f
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.uleb128 0x16
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x16
	.string	"BImode"
	.sleb128 1
	.uleb128 0x16
	.string	"QImode"
	.sleb128 2
	.uleb128 0x16
	.string	"HImode"
	.sleb128 3
	.uleb128 0x16
	.string	"SImode"
	.sleb128 4
	.uleb128 0x16
	.string	"DImode"
	.sleb128 5
	.uleb128 0x16
	.string	"TImode"
	.sleb128 6
	.uleb128 0x16
	.string	"OImode"
	.sleb128 7
	.uleb128 0x16
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x16
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x16
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x16
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x16
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x16
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x16
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x16
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x16
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x16
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x16
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x16
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x16
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x16
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x16
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x16
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x16
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x16
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x16
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x16
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x16
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x16
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x16
	.string	"COImode"
	.sleb128 30
	.uleb128 0x16
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x16
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x16
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x16
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x16
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x16
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x16
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x16
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x16
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x16
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x16
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x16
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x16
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x16
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x16
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x16
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x16
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x16
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x16
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x16
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x16
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x16
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x16
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x16
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x4
	.long	0xa91
	.string	"location_s"
	.byte	0x8
	.byte	0x8
	.byte	0x1c
	.uleb128 0x6
	.string	"file"
	.byte	0x8
	.byte	0x1e
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line"
	.byte	0x8
	.byte	0x21
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x8
	.byte	0x23
	.long	0xa5f
	.uleb128 0x15
	.long	0x13c5
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
	.byte	0x25
	.uleb128 0x16
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x16
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x16
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x16
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x16
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x16
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x16
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x16
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x16
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x16
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x16
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x16
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x16
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x16
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x16
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x16
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x16
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x16
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x16
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x16
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x16
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x16
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x16
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x16
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x16
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x16
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x16
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x16
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x16
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x16
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x16
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x16
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x16
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x16
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x16
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x16
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x16
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x16
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x16
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x16
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x16
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x16
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x16
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x16
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x16
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x16
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x16
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x16
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x16
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x16
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x16
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x16
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x16
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x16
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x16
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x16
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x16
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x16
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x16
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x16
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x16
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x16
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x16
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x16
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x16
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x16
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x16
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x16
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x16
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x16
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x16
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x16
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x16
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x16
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x16
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x16
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x16
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x16
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x16
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x16
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x16
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x16
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x16
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x16
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x16
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x16
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x16
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x16
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x16
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x16
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x16
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x16
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x16
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x16
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x16
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x16
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x16
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x16
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x16
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x16
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x16
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x16
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x16
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x16
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x16
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x16
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x16
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x16
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x16
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x16
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x16
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x16
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x16
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x16
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x16
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x16
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x16
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x16
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x16
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x16
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x16
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x16
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x16
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x16
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x16
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x16
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x16
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x16
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x16
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x16
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x16
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x16
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x16
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x16
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x16
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x16
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x16
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x16
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x16
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x16
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x16
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x16
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x16
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x16
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x16
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x16
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x16
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x16
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x16
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x16
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x16
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x16
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x3
	.byte	0x2f
	.long	0x3b5
	.uleb128 0x4
	.long	0x1415
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x30
	.uleb128 0x6
	.string	"block"
	.byte	0x3
	.byte	0x30
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x30
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x34
	.long	0x141f
	.uleb128 0x17
	.string	"st"
	.byte	0x1
	.uleb128 0x18
	.long	0x1474
	.long	.LASF6
	.byte	0x4
	.byte	0x3
	.byte	0x58
	.uleb128 0x16
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x16
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x16
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x16
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x15
	.long	0x311e
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x67
	.uleb128 0x16
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x16
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x16
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x16
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x16
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x16
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x16
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x16
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x16
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x16
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x16
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x16
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x16
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x16
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x16
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x16
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x16
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x16
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x16
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x16
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x16
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x16
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x16
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x16
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x16
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x16
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x16
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x16
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x16
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x16
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x16
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x16
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x16
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x16
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x16
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x16
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x16
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x16
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x16
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x16
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x16
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x16
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x16
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x16
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x16
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x16
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x16
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x16
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x16
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x16
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x16
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x16
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x16
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x16
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x16
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x16
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x16
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x16
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x16
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x16
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x16
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x16
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x16
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x16
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x16
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x16
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x16
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x16
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x16
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x16
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x16
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x16
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x16
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x16
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x16
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x16
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x16
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x16
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x16
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x16
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x16
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x16
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x16
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x16
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x16
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x16
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x16
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x16
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x16
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x16
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x16
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x16
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x16
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x16
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x16
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x16
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x16
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x16
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x16
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x16
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x16
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x16
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x16
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x16
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x16
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x16
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x16
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x16
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x16
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x16
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x16
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x16
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x16
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x16
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x16
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x16
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x16
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x16
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x16
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x16
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x16
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x16
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x16
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x16
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x16
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x16
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x16
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x16
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x16
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x16
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x16
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x16
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x16
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x16
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x16
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x16
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x16
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x16
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x16
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x16
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x16
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x16
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x16
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x16
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x16
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x16
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x16
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x16
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x16
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x16
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x16
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x16
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x16
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x16
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x16
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x16
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x16
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x16
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x16
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x16
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x16
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x16
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x16
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x16
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x16
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x16
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x16
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x16
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x16
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x16
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x16
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x16
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x16
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x16
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x16
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x16
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x16
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x16
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x16
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x16
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x16
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x16
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x16
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x16
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x16
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x16
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x16
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x16
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x16
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x16
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x16
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x16
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x16
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x16
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x16
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x16
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x16
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x16
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x16
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x16
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x16
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x16
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x16
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x16
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x16
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x16
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x16
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x16
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x16
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x16
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x16
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x16
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x16
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x16
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x16
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x16
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x16
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x16
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x16
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x16
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x16
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x16
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x16
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x16
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x16
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x16
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x16
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x16
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x16
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x16
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x16
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x16
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x16
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x16
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x16
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x16
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x16
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x16
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x16
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x16
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x16
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x16
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x16
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x16
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x16
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x16
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x16
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x16
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x16
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x16
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x16
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x16
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x16
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x16
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x16
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x16
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x16
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x16
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x16
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x16
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x16
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x16
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x16
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x16
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x16
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x16
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x16
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x16
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x16
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x16
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x16
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x16
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x16
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x16
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x16
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x16
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x16
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x16
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x16
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x16
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x16
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x16
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x16
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x16
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x16
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x16
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x16
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x16
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x16
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x16
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x16
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x16
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x16
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x16
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x16
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x16
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x16
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x16
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x16
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x16
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x16
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x16
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x16
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x16
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x16
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x16
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x16
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x16
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x16
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x16
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x16
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x16
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x16
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x16
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x16
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x16
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x16
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x3400
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8c
	.uleb128 0x6
	.string	"chain"
	.byte	0x3
	.byte	0x8d
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.long	.LASF3
	.byte	0x3
	.byte	0x8e
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x90
	.long	0xaa3
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF7
	.byte	0x3
	.byte	0xa8
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF8
	.byte	0x3
	.byte	0xa9
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF9
	.byte	0x3
	.byte	0xaa
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x3
	.byte	0xab
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF11
	.byte	0x3
	.byte	0xac
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF12
	.byte	0x3
	.byte	0xad
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF13
	.byte	0x3
	.byte	0xae
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF14
	.byte	0x3
	.byte	0xb0
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x343c
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x30a
	.uleb128 0xd
	.string	"low"
	.byte	0x3
	.value	0x30b
	.long	0x48d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"high"
	.byte	0x3
	.value	0x30c
	.long	0x47c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x3484
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x303
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x3
	.value	0x304
	.long	0x311e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x305
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"int_cst"
	.byte	0x3
	.value	0x30d
	.long	0x3400
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x34d2
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x31f
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x3
	.value	0x320
	.long	0x311e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x321
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x322
	.long	0x352b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x352b
	.string	"real_value"
	.byte	0x18
	.byte	0x3
	.value	0x319
	.uleb128 0x5
	.string	"class"
	.byte	0x6
	.byte	0x35
	.long	0x6c9a
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"sign"
	.byte	0x6
	.byte	0x37
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"exp"
	.byte	0x6
	.byte	0x38
	.long	0x2dc
	.byte	0x4
	.byte	0x1d
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sig"
	.byte	0x6
	.byte	0x39
	.long	0x6ce0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x34d2
	.uleb128 0xc
	.long	0x3598
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x333
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x3
	.value	0x334
	.long	0x311e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x335
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"length"
	.byte	0x3
	.value	0x336
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"pointer"
	.byte	0x3
	.value	0x337
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"st"
	.byte	0x3
	.value	0x339
	.long	0x3598
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1415
	.uleb128 0xc
	.long	0x35f3
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x342
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x3
	.value	0x343
	.long	0x311e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x344
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real"
	.byte	0x3
	.value	0x345
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"imag"
	.byte	0x3
	.value	0x346
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xc
	.long	0x363b
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x355
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x3
	.value	0x356
	.long	0x311e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x357
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"elements"
	.byte	0x3
	.value	0x358
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x4
	.long	0x3685
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x14
	.byte	0xa2
	.uleb128 0x6
	.string	"limit"
	.byte	0x14
	.byte	0xa3
	.long	0x4e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x14
	.byte	0xa4
	.long	0x3685
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"contents"
	.byte	0x14
	.byte	0xa5
	.long	0x772
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x363b
	.uleb128 0xc
	.long	0x37b8
	.string	"obstack"
	.byte	0x2c
	.byte	0x11
	.value	0x31b
	.uleb128 0x6
	.string	"chunk_size"
	.byte	0x14
	.byte	0xaa
	.long	0x4c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"chunk"
	.byte	0x14
	.byte	0xab
	.long	0x3685
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"object_base"
	.byte	0x14
	.byte	0xac
	.long	0x4e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next_free"
	.byte	0x14
	.byte	0xad
	.long	0x4e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"chunk_limit"
	.byte	0x14
	.byte	0xae
	.long	0x4e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"temp"
	.byte	0x14
	.byte	0xaf
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"alignment_mask"
	.byte	0x14
	.byte	0xb0
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"chunkfun"
	.byte	0x14
	.byte	0xb5
	.long	0x37cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"freefun"
	.byte	0x14
	.byte	0xb6
	.long	0x37e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"extra_arg"
	.byte	0x14
	.byte	0xb7
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"use_extra_arg"
	.byte	0x14
	.byte	0xbd
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"maybe_empty_object"
	.byte	0x14
	.byte	0xbe
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"alloc_failed"
	.byte	0x14
	.byte	0xc2
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x1c
	.long	0x37cd
	.byte	0x1
	.long	0x3685
	.uleb128 0x1d
	.long	0x4e3
	.uleb128 0x1d
	.long	0x4c6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x37b8
	.uleb128 0x1e
	.long	0x37e4
	.byte	0x1
	.uleb128 0x1d
	.long	0x4e3
	.uleb128 0x1d
	.long	0x3685
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x37d3
	.uleb128 0x13
	.long	0x3828
	.long	.LASF15
	.byte	0xc
	.byte	0x7
	.byte	0x19
	.uleb128 0x6
	.string	"str"
	.byte	0x7
	.byte	0x1c
	.long	0x782
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0x7
	.byte	0x1d
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"hash_value"
	.byte	0x7
	.byte	0x1e
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x385f
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x376
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x3
	.value	0x377
	.long	0x311e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"id"
	.byte	0x3
	.value	0x378
	.long	0x37ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x38a6
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x380
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x3
	.value	0x381
	.long	0x311e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"purpose"
	.byte	0x3
	.value	0x382
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"value"
	.byte	0x3
	.value	0x383
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x38e7
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x38e
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x3
	.value	0x38f
	.long	0x311e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"length"
	.byte	0x3
	.value	0x390
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"a"
	.byte	0x3
	.value	0x391
	.long	0x38e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x38f7
	.long	0x1e6
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x3943
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3d4
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x3
	.value	0x3d5
	.long	0x311e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"complexity"
	.byte	0x3
	.value	0x3d6
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"operands"
	.byte	0x3
	.value	0x3d9
	.long	0x38e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x3a33
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x40a
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x3
	.value	0x40b
	.long	0x311e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x40d
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.long	.LASF16
	.byte	0x3
	.value	0x40e
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"subblocks"
	.byte	0x3
	.value	0x412
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"supercontext"
	.byte	0x3
	.value	0x413
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1b
	.long	.LASF17
	.byte	0x3
	.value	0x414
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"fragment_origin"
	.byte	0x3
	.value	0x415
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"fragment_chain"
	.byte	0x3
	.value	0x416
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x21
	.long	0x3a7a
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x570
	.uleb128 0x9
	.string	"address"
	.byte	0x3
	.value	0x571
	.long	0x2dc
	.uleb128 0x9
	.string	"pointer"
	.byte	0x3
	.value	0x572
	.long	0x4e5
	.uleb128 0x9
	.string	"die"
	.byte	0x3
	.value	0x573
	.long	0x3a87
	.byte	0x0
	.uleb128 0x17
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3a7a
	.uleb128 0xc
	.long	0x3dd4
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x551
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x3
	.value	0x552
	.long	0x311e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"values"
	.byte	0x3
	.value	0x553
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"size"
	.byte	0x3
	.value	0x554
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1b
	.long	.LASF18
	.byte	0x3
	.value	0x555
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1b
	.long	.LASF19
	.byte	0x3
	.value	0x556
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"uid"
	.byte	0x3
	.value	0x557
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"precision"
	.byte	0x3
	.value	0x559
	.long	0x3b5
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
	.long	0x816
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF20
	.byte	0x3
	.value	0x562
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF21
	.byte	0x3
	.value	0x56b
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.long	.LASF22
	.byte	0x3
	.value	0x56d
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"pointer_to"
	.byte	0x3
	.value	0x56e
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"reference_to"
	.byte	0x3
	.value	0x56f
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"symtab"
	.byte	0x3
	.value	0x574
	.long	0x3a33
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1b
	.long	.LASF23
	.byte	0x3
	.value	0x576
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"minval"
	.byte	0x3
	.value	0x577
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"maxval"
	.byte	0x3
	.value	0x578
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"next_variant"
	.byte	0x3
	.value	0x579
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"main_variant"
	.byte	0x3
	.value	0x57a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"binfo"
	.byte	0x3
	.value	0x57b
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1b
	.long	.LASF24
	.byte	0x3
	.value	0x57c
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"alias_set"
	.byte	0x3
	.value	0x57d
	.long	0x47c
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1b
	.long	.LASF25
	.byte	0x3
	.value	0x57f
	.long	0x3df5
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"ty_idx"
	.byte	0x3
	.value	0x581
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"field_ids_used"
	.byte	0x3
	.value	0x582
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"dst_id"
	.byte	0x3
	.value	0x583
	.long	0x13d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"extra_methods"
	.byte	0x3
	.value	0x58a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0xc
	.long	0x3df5
	.string	"lang_type"
	.byte	0x4c
	.byte	0x3
	.value	0x57f
	.uleb128 0xd
	.string	"u"
	.byte	0xb
	.value	0x4e0
	.long	0x673e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3dd4
	.uleb128 0xc
	.long	0x3e3e
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x817
	.uleb128 0x20
	.long	.LASF22
	.byte	0x3
	.value	0x818
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x3e73
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x80e
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x811
	.long	0x1474
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x814
	.long	0x47c
	.uleb128 0x9
	.string	"a"
	.byte	0x3
	.value	0x81a
	.long	0x3dfb
	.byte	0x0
	.uleb128 0x21
	.long	0x3eb2
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x837
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x838
	.long	0x4861
	.uleb128 0x9
	.string	"r"
	.byte	0x3
	.value	0x839
	.long	0x9d
	.uleb128 0x9
	.string	"t"
	.byte	0x3
	.value	0x83a
	.long	0x1e6
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x83b
	.long	0x2dc
	.byte	0x0
	.uleb128 0x22
	.long	0x4861
	.string	"function"
	.value	0x134
	.byte	0x3
	.value	0x7c2
	.uleb128 0x6
	.string	"eh"
	.byte	0x9
	.byte	0xb5
	.long	0x5663
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0x9
	.byte	0xb6
	.long	0x5677
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0x9
	.byte	0xb7
	.long	0x567d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0x9
	.byte	0xb8
	.long	0x5683
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0x9
	.byte	0xb9
	.long	0x5699
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x19
	.long	.LASF23
	.byte	0x9
	.byte	0xbe
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x19
	.long	.LASF2
	.byte	0x9
	.byte	0xc1
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0x9
	.byte	0xc4
	.long	0x4861
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0x9
	.byte	0xc9
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"args_size"
	.byte	0x9
	.byte	0xce
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0x9
	.byte	0xd3
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0x9
	.byte	0xd7
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0x9
	.byte	0xdb
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0x9
	.byte	0xdf
	.long	0x3d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0x9
	.byte	0xe5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0x9
	.byte	0xe8
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x19
	.long	.LASF26
	.byte	0x9
	.byte	0xec
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0x9
	.byte	0xf0
	.long	0x56b6
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0x9
	.byte	0xf3
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0x9
	.byte	0xf8
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x9
	.byte	0xfe
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x9
	.value	0x102
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x9
	.value	0x107
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"x_cleanup_label"
	.byte	0x9
	.value	0x10d
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.string	"x_return_label"
	.byte	0x9
	.value	0x112
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.string	"computed_goto_common_label"
	.byte	0x9
	.value	0x115
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"computed_goto_common_reg"
	.byte	0x9
	.value	0x116
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"x_save_expr_regs"
	.byte	0x9
	.value	0x11a
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"x_stack_slot_list"
	.byte	0x9
	.value	0x11e
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.string	"x_rtl_expr_chain"
	.byte	0x9
	.value	0x121
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"x_tail_recursion_label"
	.byte	0x9
	.value	0x125
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.string	"x_tail_recursion_reentry"
	.byte	0x9
	.value	0x128
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.string	"x_arg_pointer_save_area"
	.byte	0x9
	.value	0x12e
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"x_clobber_return_insn"
	.byte	0x9
	.value	0x133
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"x_frame_offset"
	.byte	0x9
	.value	0x138
	.long	0x47c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"x_context_display"
	.byte	0x9
	.value	0x13d
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"x_trampoline_list"
	.byte	0x9
	.value	0x146
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"x_parm_birth_insn"
	.byte	0x9
	.value	0x149
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"x_last_parm_insn"
	.byte	0x9
	.value	0x14d
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"x_max_parm_reg"
	.byte	0x9
	.value	0x151
	.long	0x3b5
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"x_parm_reg_stack_loc"
	.byte	0x9
	.value	0x157
	.long	0x5507
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0x9
	.value	0x15a
	.long	0x56c8
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"x_temp_slot_level"
	.byte	0x9
	.value	0x15d
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"x_var_temp_slot_level"
	.byte	0x9
	.value	0x160
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"x_target_temp_slot_level"
	.byte	0x9
	.value	0x166
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"fixup_var_refs_queue"
	.byte	0x9
	.value	0x16a
	.long	0x5363
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"inlinable"
	.byte	0x9
	.value	0x16d
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"no_debugging_symbols"
	.byte	0x9
	.value	0x16e
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xd
	.string	"original_arg_vector"
	.byte	0x9
	.value	0x16f
	.long	0x19e
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"original_decl_initial"
	.byte	0x9
	.value	0x170
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.string	"inl_last_parm_insn"
	.byte	0x9
	.value	0x173
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.string	"inl_max_label_num"
	.byte	0x9
	.value	0x175
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"funcdef_no"
	.byte	0x9
	.value	0x178
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.string	"machine"
	.byte	0x9
	.value	0x17d
	.long	0x56e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.string	"stack_alignment_needed"
	.byte	0x9
	.value	0x17f
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.string	"preferred_stack_boundary"
	.byte	0x9
	.value	0x181
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0x1b
	.long	.LASF27
	.byte	0x9
	.value	0x184
	.long	0x5922
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.string	"epilogue_delay_list"
	.byte	0x9
	.value	0x18a
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1f
	.string	"returns_struct"
	.byte	0x9
	.value	0x190
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.long	.LASF28
	.byte	0x9
	.value	0x1fa
	.long	0x55ed
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"max_jumptable_ents"
	.byte	0x9
	.value	0x1fe
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3eb2
	.uleb128 0x23
	.long	0x489f
	.byte	0x4
	.byte	0x3
	.value	0x84e
	.uleb128 0x9
	.string	"st"
	.byte	0x3
	.value	0x84f
	.long	0x3598
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x3
	.value	0x850
	.long	0x13c5
	.uleb128 0x9
	.string	"field_id"
	.byte	0x3
	.value	0x851
	.long	0x3b5
	.byte	0x0
	.uleb128 0xc
	.long	0x4fe4
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x3
	.value	0x7c5
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x3
	.value	0x7c6
	.long	0x311e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"locus"
	.byte	0x3
	.value	0x7c7
	.long	0xa91
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"uid"
	.byte	0x3
	.value	0x7c8
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"size"
	.byte	0x3
	.value	0x7c9
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1f
	.string	"mode"
	.byte	0x3
	.value	0x7ca
	.long	0x816
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.long	.LASF16
	.byte	0x3
	.value	0x7d3
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF6
	.byte	0x3
	.value	0x7ed
	.long	0x1424
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF20
	.byte	0x3
	.value	0x7f0
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF21
	.byte	0x3
	.value	0x7f2
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3e3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1b
	.long	.LASF18
	.byte	0x3
	.value	0x81d
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1b
	.long	.LASF23
	.byte	0x3
	.value	0x81e
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1b
	.long	.LASF24
	.byte	0x3
	.value	0x81f
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"arguments"
	.byte	0x3
	.value	0x820
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"result"
	.byte	0x3
	.value	0x821
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"initial"
	.byte	0x3
	.value	0x822
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"initial_2"
	.byte	0x3
	.value	0x824
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"alias_target"
	.byte	0x3
	.value	0x825
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"thunk_delta"
	.byte	0x3
	.value	0x829
	.long	0x47c
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1b
	.long	.LASF17
	.byte	0x3
	.value	0x82b
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"assembler_name"
	.byte	0x3
	.value	0x82c
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"section_name"
	.byte	0x3
	.value	0x82d
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1b
	.long	.LASF19
	.byte	0x3
	.value	0x82e
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x82f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x830
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"u2"
	.byte	0x3
	.value	0x83c
	.long	0x3e73
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"saved_tree"
	.byte	0x3
	.value	0x83f
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"inlined_fns"
	.byte	0x3
	.value	0x843
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"vindex"
	.byte	0x3
	.value	0x845
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x846
	.long	0x47c
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x1b
	.long	.LASF25
	.byte	0x3
	.value	0x848
	.long	0x501b
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x1f
	.string	"symtab_idx"
	.byte	0x3
	.value	0x84b
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x4867
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x858
	.long	0x13d6
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"sl_model_name"
	.byte	0x3
	.value	0x85c
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0xc
	.long	0x501b
	.string	"lang_decl"
	.byte	0x34
	.byte	0x3
	.value	0x848
	.uleb128 0xd
	.string	"decl_flags"
	.byte	0xb
	.value	0x73a
	.long	0x67f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"u"
	.byte	0xb
	.value	0x763
	.long	0x6c18
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4fe4
	.uleb128 0x15
	.long	0x529f
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xf
	.byte	0x1d
	.uleb128 0x16
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x16
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x16
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x16
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x16
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x16
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x16
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x16
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x16
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x16
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x16
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x16
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x16
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x16
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x16
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x16
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x16
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x16
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x16
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x16
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x16
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x16
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x16
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x16
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x16
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x16
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x16
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x16
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x16
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x16
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x16
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x16
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x16
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x16
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x16
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0xc
	.long	0x52ee
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x864
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x3
	.value	0x865
	.long	0x311e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"choice"
	.byte	0x3
	.value	0x866
	.long	0x5021
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x867
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xb
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x3
	.byte	0x4
	.long	0x1e6
	.uleb128 0x4
	.long	0x5363
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x9
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0x9
	.byte	0x18
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0x9
	.byte	0x19
	.long	0x816
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0x9
	.byte	0x1a
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0x9
	.byte	0x1b
	.long	0x5363
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x52fd
	.uleb128 0x13
	.long	0x53b2
	.long	.LASF29
	.byte	0x10
	.byte	0x9
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0x9
	.byte	0x26
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0x9
	.byte	0x27
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.long	.LASF30
	.byte	0x9
	.byte	0x28
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0x9
	.byte	0x29
	.long	0x53b2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5369
	.uleb128 0x4
	.long	0x5507
	.string	"emit_status"
	.byte	0x34
	.byte	0x9
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0x9
	.byte	0x3a
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0x9
	.byte	0x3d
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0x9
	.byte	0x44
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0x9
	.byte	0x45
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.long	.LASF30
	.byte	0x9
	.byte	0x4a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x19
	.long	.LASF29
	.byte	0x9
	.byte	0x50
	.long	0x53b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0x9
	.byte	0x54
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0x9
	.byte	0x58
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0x9
	.byte	0x59
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0x9
	.byte	0x5f
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0x9
	.byte	0x65
	.long	0x78d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0x9
	.byte	0x69
	.long	0x52f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0x9
	.byte	0x70
	.long	0x5507
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9d
	.uleb128 0x4
	.long	0x55ed
	.string	"expr_status"
	.byte	0x1c
	.byte	0x9
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0x9
	.byte	0x80
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0x9
	.byte	0x91
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0x9
	.byte	0x97
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0x9
	.byte	0x9c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0x9
	.byte	0x9f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0x9
	.byte	0xa2
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0x9
	.byte	0xa5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x24
	.long	0x5657
	.long	.LASF28
	.byte	0x4
	.byte	0x9
	.value	0x1f1
	.uleb128 0x16
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x16
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x16
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x17
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5657
	.uleb128 0x17
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5669
	.uleb128 0x3
	.byte	0x4
	.long	0x550d
	.uleb128 0x3
	.byte	0x4
	.long	0x53b8
	.uleb128 0x17
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5689
	.uleb128 0x17
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x569f
	.uleb128 0x17
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x56bc
	.uleb128 0x17
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x56ce
	.uleb128 0xc
	.long	0x5922
	.string	"language_function"
	.byte	0x64
	.byte	0x9
	.value	0x184
	.uleb128 0xd
	.string	"base"
	.byte	0xb
	.value	0x370
	.long	0x5ea5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"x_dtor_label"
	.byte	0xb
	.value	0x372
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"x_current_class_ptr"
	.byte	0xb
	.value	0x373
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"x_current_class_ref"
	.byte	0xb
	.value	0x374
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"x_eh_spec_block"
	.byte	0xb
	.value	0x375
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"x_in_charge_parm"
	.byte	0xb
	.value	0x376
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"x_vtt_parm"
	.byte	0xb
	.value	0x377
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"x_return_value"
	.byte	0xb
	.value	0x378
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"returns_value"
	.byte	0xb
	.value	0x37a
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"returns_null"
	.byte	0xb
	.value	0x37b
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"returns_abnormally"
	.byte	0xb
	.value	0x37c
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"in_function_try_handler"
	.byte	0xb
	.value	0x37d
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"in_base_initializer"
	.byte	0xb
	.value	0x37e
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"x_expanding_p"
	.byte	0xb
	.value	0x37f
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1f
	.string	"can_throw"
	.byte	0xb
	.value	0x382
	.long	0x52ee
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"x_named_label_uses"
	.byte	0xb
	.value	0x384
	.long	0x5f8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"x_named_labels"
	.byte	0xb
	.value	0x385
	.long	0x5fa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"bindings"
	.byte	0xb
	.value	0x386
	.long	0x5f3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"x_local_names"
	.byte	0xb
	.value	0x387
	.long	0x5e01
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1b
	.long	.LASF26
	.byte	0xb
	.value	0x389
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"unparsed_inlines"
	.byte	0xb
	.value	0x38a
	.long	0x5fb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x56e7
	.uleb128 0x4
	.long	0x595e
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xd
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0xd
	.byte	0x32
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0xd
	.byte	0x36
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x15
	.long	0x5af9
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xd
	.byte	0x3c
	.uleb128 0x16
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x16
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x16
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x16
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x16
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x16
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x16
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x16
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x16
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x16
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x16
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x16
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x16
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x16
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x16
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x16
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x16
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x16
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x16
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x16
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x16
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x7
	.long	0x5bf5
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xd
	.byte	0x55
	.uleb128 0x25
	.string	"c"
	.byte	0xd
	.byte	0x56
	.long	0x7f0
	.uleb128 0x25
	.string	"uc"
	.byte	0xd
	.byte	0x58
	.long	0x5bf5
	.uleb128 0x25
	.string	"s"
	.byte	0xd
	.byte	0x5a
	.long	0x5c05
	.uleb128 0x25
	.string	"us"
	.byte	0xd
	.byte	0x5c
	.long	0x5c15
	.uleb128 0x25
	.string	"i"
	.byte	0xd
	.byte	0x5e
	.long	0x5c25
	.uleb128 0x25
	.string	"u"
	.byte	0xd
	.byte	0x60
	.long	0x5c35
	.uleb128 0x25
	.string	"l"
	.byte	0xd
	.byte	0x62
	.long	0x5c45
	.uleb128 0x25
	.string	"ul"
	.byte	0xd
	.byte	0x64
	.long	0x5c55
	.uleb128 0x25
	.string	"hint"
	.byte	0xd
	.byte	0x66
	.long	0x5c65
	.uleb128 0x25
	.string	"uhint"
	.byte	0xd
	.byte	0x68
	.long	0x5c75
	.uleb128 0x25
	.string	"generic"
	.byte	0xd
	.byte	0x6a
	.long	0x5c85
	.uleb128 0x25
	.string	"cptr"
	.byte	0xd
	.byte	0x6c
	.long	0x5c95
	.uleb128 0x25
	.string	"rtx"
	.byte	0xd
	.byte	0x6e
	.long	0x5ca5
	.uleb128 0x25
	.string	"rtvec"
	.byte	0xd
	.byte	0x70
	.long	0x5cb5
	.uleb128 0x25
	.string	"tree"
	.byte	0xd
	.byte	0x72
	.long	0x5cc5
	.uleb128 0x25
	.string	"bitmap"
	.byte	0xd
	.byte	0x74
	.long	0x5cd5
	.uleb128 0x25
	.string	"reg"
	.byte	0xd
	.byte	0x76
	.long	0x5cfd
	.uleb128 0x25
	.string	"const_equiv"
	.byte	0xd
	.byte	0x78
	.long	0x5d22
	.uleb128 0x25
	.string	"bb"
	.byte	0xd
	.byte	0x7a
	.long	0x5d32
	.uleb128 0x25
	.string	"te"
	.byte	0xd
	.byte	0x7c
	.long	0x5d5a
	.byte	0x0
	.uleb128 0xf
	.long	0x5c05
	.long	0x424
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5c15
	.long	0x46f
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5c25
	.long	0x435
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5c35
	.long	0x2dc
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5c45
	.long	0x3b5
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5c55
	.long	0x4c6
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5c65
	.long	0x44b
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5c75
	.long	0x47c
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5c85
	.long	0x48d
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5c95
	.long	0x4e3
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5ca5
	.long	0x4e5
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5cb5
	.long	0xa8
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5cc5
	.long	0x1ab
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5cd5
	.long	0x1f2
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5ce5
	.long	0x5cf7
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5ce5
	.uleb128 0xf
	.long	0x5d0d
	.long	0x5d1c
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5d0d
	.uleb128 0xf
	.long	0x5d32
	.long	0x5928
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5d42
	.long	0x5d54
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5d42
	.uleb128 0xf
	.long	0x5d6a
	.long	0x5d75
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5d6a
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xd
	.byte	0x7e
	.long	0x5af9
	.uleb128 0x4
	.long	0x5e01
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xd
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0xd
	.byte	0x82
	.long	0x416
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0xd
	.byte	0x83
	.long	0x416
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.long	.LASF3
	.byte	0xd
	.byte	0x85
	.long	0x595e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.long	.LASF23
	.byte	0xd
	.byte	0x86
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0xd
	.byte	0x87
	.long	0x5d7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xd
	.byte	0x8a
	.long	0x5e14
	.uleb128 0x3
	.byte	0x4
	.long	0x5d8e
	.uleb128 0xc
	.long	0x5ea5
	.string	"stmt_tree_s"
	.byte	0x10
	.byte	0xc
	.value	0x101
	.uleb128 0xd
	.string	"x_last_stmt"
	.byte	0xc
	.value	0x103
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"x_last_expr_type"
	.byte	0xc
	.value	0x106
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"x_last_expr_filename"
	.byte	0xc
	.value	0x108
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"stmts_are_full_exprs_p"
	.byte	0xc
	.value	0x117
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x5ef8
	.string	"c_language_function"
	.byte	0x14
	.byte	0xc
	.value	0x11f
	.uleb128 0xd
	.string	"x_stmt_tree"
	.byte	0xc
	.value	0x122
	.long	0x5e1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"x_scope_stmt_stack"
	.byte	0xc
	.value	0x124
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x5f2c
	.string	"c_lang_decl"
	.byte	0x4
	.byte	0xc
	.value	0x169
	.uleb128 0x1f
	.string	"declared_inline"
	.byte	0xc
	.value	0x16a
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x17
	.string	"cp_binding_level"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5f2c
	.uleb128 0x11
	.string	"binding_table"
	.byte	0xb
	.value	0x103
	.long	0x5f5b
	.uleb128 0x3
	.byte	0x4
	.long	0x5f61
	.uleb128 0x17
	.string	"binding_table_s"
	.byte	0x1
	.uleb128 0x17
	.string	"named_label_use_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5f73
	.uleb128 0x17
	.string	"named_label_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5f90
	.uleb128 0x17
	.string	"unparsed_text"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5fa9
	.uleb128 0x26
	.long	0x5ff9
	.string	"languages"
	.byte	0x4
	.byte	0xb
	.value	0x3f1
	.uleb128 0x16
	.string	"lang_c"
	.sleb128 0
	.uleb128 0x16
	.string	"lang_cplusplus"
	.sleb128 1
	.uleb128 0x16
	.string	"lang_java"
	.sleb128 2
	.byte	0x0
	.uleb128 0xc
	.long	0x6118
	.string	"lang_type_header"
	.byte	0x4
	.byte	0xb
	.value	0x464
	.uleb128 0x1f
	.string	"is_lang_type_class"
	.byte	0xb
	.value	0x465
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x6704
	.string	"lang_type_class"
	.byte	0x4c
	.byte	0xb
	.value	0x47e
	.uleb128 0xd
	.string	"h"
	.byte	0xb
	.value	0x47f
	.long	0x5ff9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.long	.LASF22
	.byte	0xb
	.value	0x481
	.long	0x424
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_mutable"
	.byte	0xb
	.value	0x483
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.long	.LASF21
	.byte	0xb
	.value	0x487
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF31
	.byte	0xb
	.value	0x49a
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"primary_base"
	.byte	0xb
	.value	0x4bd
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"vfields"
	.byte	0xb
	.value	0x4be
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"vcall_indices"
	.byte	0xb
	.value	0x4bf
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"vtables"
	.byte	0xb
	.value	0x4c0
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"typeinfo_var"
	.byte	0xb
	.value	0x4c1
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"vbases"
	.byte	0xb
	.value	0x4c2
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"nested_udts"
	.byte	0xb
	.value	0x4c3
	.long	0x5f45
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"as_base"
	.byte	0xb
	.value	0x4c4
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"pure_virtuals"
	.byte	0xb
	.value	0x4c5
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"friend_classes"
	.byte	0xb
	.value	0x4c6
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"methods"
	.byte	0xb
	.value	0x4c7
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"key_method"
	.byte	0xb
	.value	0x4c8
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"decl_list"
	.byte	0xb
	.value	0x4c9
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1b
	.long	.LASF32
	.byte	0xb
	.value	0x4ca
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x1b
	.long	.LASF33
	.byte	0xb
	.value	0x4cb
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"copy_constructor"
	.byte	0xb
	.value	0x4cf
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0xc
	.long	0x673e
	.string	"lang_type_ptrmem"
	.byte	0x8
	.byte	0xb
	.value	0x4d4
	.uleb128 0xd
	.string	"h"
	.byte	0xb
	.value	0x4d5
	.long	0x5ff9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"record"
	.byte	0xb
	.value	0x4d6
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x21
	.long	0x6777
	.string	"lang_type_u"
	.byte	0x4c
	.byte	0xb
	.value	0x4dc
	.uleb128 0x9
	.string	"h"
	.byte	0xb
	.value	0x4dd
	.long	0x5ff9
	.uleb128 0x9
	.string	"c"
	.byte	0xb
	.value	0x4de
	.long	0x6118
	.uleb128 0x9
	.string	"ptrmem"
	.byte	0xb
	.value	0x4df
	.long	0x6704
	.byte	0x0
	.uleb128 0x21
	.long	0x67a7
	.string	"lang_decl_u"
	.byte	0x4
	.byte	0xb
	.value	0x722
	.uleb128 0x8
	.long	.LASF32
	.byte	0xb
	.value	0x725
	.long	0x1e6
	.uleb128 0x9
	.string	"level"
	.byte	0xb
	.value	0x728
	.long	0x5f3f
	.byte	0x0
	.uleb128 0x21
	.long	0x67f8
	.string	"lang_decl_u2"
	.byte	0x4
	.byte	0xb
	.value	0x72b
	.uleb128 0x9
	.string	"access"
	.byte	0xb
	.value	0x72d
	.long	0x1e6
	.uleb128 0x9
	.string	"discriminator"
	.byte	0xb
	.value	0x730
	.long	0x2dc
	.uleb128 0x9
	.string	"vcall_offset"
	.byte	0xb
	.value	0x734
	.long	0x1e6
	.byte	0x0
	.uleb128 0xc
	.long	0x6ad4
	.string	"lang_decl_flags"
	.byte	0x10
	.byte	0xb
	.value	0x703
	.uleb128 0xd
	.string	"base"
	.byte	0xb
	.value	0x704
	.long	0x5ef8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.long	.LASF27
	.byte	0xb
	.value	0x706
	.long	0x5fbf
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.long	.LASF31
	.byte	0xb
	.value	0x712
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"u"
	.byte	0xb
	.value	0x729
	.long	0x6777
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"u2"
	.byte	0xb
	.value	0x735
	.long	0x67a7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x21
	.long	0x6b3d
	.string	"lang_decl_u3"
	.byte	0x4
	.byte	0xb
	.value	0x75c
	.uleb128 0x9
	.string	"sorted_fields"
	.byte	0xb
	.value	0x75d
	.long	0x1e6
	.uleb128 0x9
	.string	"pending_inline_info"
	.byte	0xb
	.value	0x75e
	.long	0x5fb9
	.uleb128 0x9
	.string	"saved_language_function"
	.byte	0xb
	.value	0x760
	.long	0x5922
	.byte	0x0
	.uleb128 0xc
	.long	0x6c18
	.string	"full_lang_decl"
	.byte	0x24
	.byte	0xb
	.value	0x73f
	.uleb128 0x1b
	.long	.LASF33
	.byte	0xb
	.value	0x740
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.long	.LASF24
	.byte	0xb
	.value	0x745
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"cloned_function"
	.byte	0xb
	.value	0x748
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"delta"
	.byte	0xb
	.value	0x74c
	.long	0x47c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"named_return_object"
	.byte	0xb
	.value	0x751
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"operator_code"
	.byte	0xb
	.value	0x756
	.long	0xaa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1f
	.string	"u3sel"
	.byte	0xb
	.value	0x758
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"u"
	.byte	0xb
	.value	0x761
	.long	0x6ad4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x21
	.long	0x6c39
	.string	"lang_decl_u4"
	.byte	0x24
	.byte	0xb
	.value	0x73d
	.uleb128 0x9
	.string	"f"
	.byte	0xb
	.value	0x762
	.long	0x6b3d
	.byte	0x0
	.uleb128 0x27
	.long	0x6c8e
	.long	.LASF34
	.byte	0x10
	.byte	0xb
	.value	0xe26
	.uleb128 0x1b
	.long	.LASF1
	.byte	0xb
	.value	0xe28
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.long	.LASF23
	.byte	0xb
	.value	0xe2a
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"mangled_name"
	.byte	0xb
	.value	0xe2c
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"arity"
	.byte	0xb
	.value	0xe2e
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x28
	.long	.LASF34
	.byte	0xb
	.value	0xe2f
	.long	0x6c39
	.uleb128 0x15
	.long	0x6ce0
	.string	"real_value_class"
	.byte	0x4
	.byte	0x6
	.byte	0x22
	.uleb128 0x16
	.string	"rvc_zero"
	.sleb128 0
	.uleb128 0x16
	.string	"rvc_normal"
	.sleb128 1
	.uleb128 0x16
	.string	"rvc_inf"
	.sleb128 2
	.uleb128 0x16
	.string	"rvc_nan"
	.sleb128 3
	.byte	0x0
	.uleb128 0xf
	.long	0x6cf0
	.long	0x44b
	.uleb128 0x10
	.long	0x3cc
	.byte	0x4
	.byte	0x0
	.uleb128 0x29
	.long	0x6d22
	.byte	0x8
	.byte	0x10
	.byte	0x1f
	.uleb128 0x6
	.string	"format_spec"
	.byte	0x10
	.byte	0x20
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"args_ptr"
	.byte	0x10
	.byte	0x21
	.long	0x6d22
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x407
	.uleb128 0x2
	.string	"text_info"
	.byte	0x10
	.byte	0x22
	.long	0x6cf0
	.uleb128 0x2a
	.long	0x6db9
	.byte	0x4
	.byte	0x10
	.byte	0x26
	.uleb128 0x16
	.string	"DK_FATAL"
	.sleb128 0
	.uleb128 0x16
	.string	"DK_ICE"
	.sleb128 1
	.uleb128 0x16
	.string	"DK_SORRY"
	.sleb128 2
	.uleb128 0x16
	.string	"DK_ERROR"
	.sleb128 3
	.uleb128 0x16
	.string	"DK_WARNING"
	.sleb128 4
	.uleb128 0x16
	.string	"DK_ANACHRONISM"
	.sleb128 5
	.uleb128 0x16
	.string	"DK_NOTE"
	.sleb128 6
	.uleb128 0x16
	.string	"DK_DEBUG"
	.sleb128 7
	.uleb128 0x16
	.string	"DK_LAST_DIAGNOSTIC_KIND"
	.sleb128 8
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_t"
	.byte	0x10
	.byte	0x2b
	.long	0x6d39
	.uleb128 0x29
	.long	0x6e0a
	.byte	0x14
	.byte	0x10
	.byte	0x31
	.uleb128 0x6
	.string	"message"
	.byte	0x10
	.byte	0x32
	.long	0x6d28
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"location"
	.byte	0x10
	.byte	0x33
	.long	0xa91
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"kind"
	.byte	0x10
	.byte	0x35
	.long	0x6db9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_info"
	.byte	0x10
	.byte	0x36
	.long	0x6dcd
	.uleb128 0x2a
	.long	0x6e8e
	.byte	0x4
	.byte	0x10
	.byte	0x40
	.uleb128 0x16
	.string	"DIAGNOSTICS_SHOW_PREFIX_ONCE"
	.sleb128 0
	.uleb128 0x16
	.string	"DIAGNOSTICS_SHOW_PREFIX_NEVER"
	.sleb128 1
	.uleb128 0x16
	.string	"DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE"
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_prefixing_rule_t"
	.byte	0x10
	.byte	0x44
	.long	0x6e21
	.uleb128 0x29
	.long	0x6f66
	.byte	0x18
	.byte	0x10
	.byte	0x48
	.uleb128 0x6
	.string	"prefix"
	.byte	0x10
	.byte	0x4a
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"maximum_length"
	.byte	0x10
	.byte	0x4e
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"ideal_maximum_length"
	.byte	0x10
	.byte	0x52
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"indent_skip"
	.byte	0x10
	.byte	0x55
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"emitted_prefix_p"
	.byte	0x10
	.byte	0x58
	.long	0x52ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"need_newline_p"
	.byte	0x10
	.byte	0x5b
	.long	0x52ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x6
	.string	"prefixing_rule"
	.byte	0x10
	.byte	0x5e
	.long	0x6e8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.string	"output_state"
	.byte	0x10
	.byte	0x5f
	.long	0x6eb1
	.uleb128 0x2b
	.long	.LASF35
	.byte	0x10
	.byte	0x64
	.long	0x6f85
	.uleb128 0x13
	.long	0x7003
	.long	.LASF35
	.byte	0xd0
	.byte	0x10
	.byte	0x64
	.uleb128 0x6
	.string	"state"
	.byte	0x10
	.byte	0x6c
	.long	0x6f66
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stream"
	.byte	0x10
	.byte	0x6f
	.long	0x703c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"obstack"
	.byte	0x10
	.byte	0x72
	.long	0x368b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"line_length"
	.byte	0x10
	.byte	0x75
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x19
	.long	.LASF36
	.byte	0x10
	.byte	0x79
	.long	0x7042
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"format_decoder"
	.byte	0x10
	.byte	0x83
	.long	0x7003
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x2
	.string	"printer_fn"
	.byte	0x10
	.byte	0x65
	.long	0x7015
	.uleb128 0x3
	.byte	0x4
	.long	0x701b
	.uleb128 0x1c
	.long	0x7030
	.byte	0x1
	.long	0x52ee
	.uleb128 0x1d
	.long	0x7030
	.uleb128 0x1d
	.long	0x7036
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f7a
	.uleb128 0x3
	.byte	0x4
	.long	0x6d28
	.uleb128 0x3
	.byte	0x4
	.long	0x4eb
	.uleb128 0xf
	.long	0x7052
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0x7f
	.byte	0x0
	.uleb128 0x2b
	.long	.LASF37
	.byte	0x10
	.byte	0xac
	.long	0x705d
	.uleb128 0x2c
	.long	0x715e
	.long	.LASF37
	.value	0x110
	.byte	0xb
	.byte	0x29
	.uleb128 0x19
	.long	.LASF38
	.byte	0x10
	.byte	0xb8
	.long	0x6f7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"diagnostic_count"
	.byte	0x10
	.byte	0xbb
	.long	0x71bd
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x6
	.string	"warnings_are_errors_message"
	.byte	0x10
	.byte	0xbf
	.long	0x52ee
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x6
	.string	"begin_diagnostic"
	.byte	0x10
	.byte	0xc8
	.long	0x715e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x6
	.string	"end_diagnostic"
	.byte	0x10
	.byte	0xcb
	.long	0x719e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x6
	.string	"internal_error"
	.byte	0x10
	.byte	0xce
	.long	0x71de
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x6
	.string	"last_function"
	.byte	0x10
	.byte	0xd3
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x6
	.string	"last_module"
	.byte	0x10
	.byte	0xd6
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x6
	.string	"lock"
	.byte	0x10
	.byte	0xd8
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x6
	.string	"x_data"
	.byte	0x10
	.byte	0xdb
	.long	0x4e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_starter_fn"
	.byte	0x10
	.byte	0xad
	.long	0x717b
	.uleb128 0x3
	.byte	0x4
	.long	0x7181
	.uleb128 0x1e
	.long	0x7192
	.byte	0x1
	.uleb128 0x1d
	.long	0x7192
	.uleb128 0x1d
	.long	0x7198
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7052
	.uleb128 0x3
	.byte	0x4
	.long	0x6e0a
	.uleb128 0x2
	.string	"diagnostic_finalizer_fn"
	.byte	0x10
	.byte	0xaf
	.long	0x715e
	.uleb128 0xf
	.long	0x71cd
	.long	0x2dc
	.uleb128 0x10
	.long	0x3cc
	.byte	0x7
	.byte	0x0
	.uleb128 0x1e
	.long	0x71de
	.byte	0x1
	.uleb128 0x1d
	.long	0x2c9
	.uleb128 0x1d
	.long	0x6d22
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x71cd
	.uleb128 0x15
	.long	0x79b3
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
	.byte	0x29
	.uleb128 0x16
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x16
	.string	"NIL"
	.sleb128 1
	.uleb128 0x16
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x16
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x16
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x16
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x16
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x16
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x16
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x16
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x16
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x16
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x16
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x16
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x16
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x16
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x16
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x16
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x16
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x16
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x16
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x16
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x16
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x16
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x16
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x16
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x16
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x16
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x16
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x16
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x16
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x16
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x16
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x16
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x16
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x16
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x16
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x16
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x16
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x16
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x16
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x16
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x16
	.string	"INSN"
	.sleb128 42
	.uleb128 0x16
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x16
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x16
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x16
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x16
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x16
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x16
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x16
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x16
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x16
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x16
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x16
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x16
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x16
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x16
	.string	"SET"
	.sleb128 57
	.uleb128 0x16
	.string	"USE"
	.sleb128 58
	.uleb128 0x16
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x16
	.string	"CALL"
	.sleb128 60
	.uleb128 0x16
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x16
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x16
	.string	"RESX"
	.sleb128 63
	.uleb128 0x16
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x16
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x16
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x16
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x16
	.string	"CONST"
	.sleb128 68
	.uleb128 0x16
	.string	"PC"
	.sleb128 69
	.uleb128 0x16
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x16
	.string	"REG"
	.sleb128 71
	.uleb128 0x16
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x16
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x16
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x16
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x16
	.string	"MEM"
	.sleb128 76
	.uleb128 0x16
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x16
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x16
	.string	"CC0"
	.sleb128 79
	.uleb128 0x16
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x16
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x16
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x16
	.string	"COND"
	.sleb128 83
	.uleb128 0x16
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x16
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x16
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x16
	.string	"NEG"
	.sleb128 87
	.uleb128 0x16
	.string	"MULT"
	.sleb128 88
	.uleb128 0x16
	.string	"DIV"
	.sleb128 89
	.uleb128 0x16
	.string	"MOD"
	.sleb128 90
	.uleb128 0x16
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x16
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x16
	.string	"AND"
	.sleb128 93
	.uleb128 0x16
	.string	"IOR"
	.sleb128 94
	.uleb128 0x16
	.string	"XOR"
	.sleb128 95
	.uleb128 0x16
	.string	"NOT"
	.sleb128 96
	.uleb128 0x16
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x16
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x16
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x16
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x16
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x16
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x16
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x16
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x16
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x16
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x16
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x16
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x16
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x16
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x16
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x16
	.string	"NE"
	.sleb128 112
	.uleb128 0x16
	.string	"EQ"
	.sleb128 113
	.uleb128 0x16
	.string	"GE"
	.sleb128 114
	.uleb128 0x16
	.string	"GT"
	.sleb128 115
	.uleb128 0x16
	.string	"LE"
	.sleb128 116
	.uleb128 0x16
	.string	"LT"
	.sleb128 117
	.uleb128 0x16
	.string	"GEU"
	.sleb128 118
	.uleb128 0x16
	.string	"GTU"
	.sleb128 119
	.uleb128 0x16
	.string	"LEU"
	.sleb128 120
	.uleb128 0x16
	.string	"LTU"
	.sleb128 121
	.uleb128 0x16
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x16
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x16
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x16
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x16
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x16
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x16
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x16
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x16
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x16
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x16
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x16
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x16
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x16
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x16
	.string	"FIX"
	.sleb128 136
	.uleb128 0x16
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x16
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x16
	.string	"ABS"
	.sleb128 139
	.uleb128 0x16
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x16
	.string	"FFS"
	.sleb128 141
	.uleb128 0x16
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x16
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x16
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x16
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x16
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x16
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x16
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x16
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x16
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x16
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x16
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x16
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x16
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x16
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x16
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x16
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x16
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x16
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x16
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x16
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x16
	.string	"PHI"
	.sleb128 162
	.uleb128 0x16
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x29
	.long	0x7a8d
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x49
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x79b3
	.uleb128 0x13
	.long	0x7b02
	.long	.LASF39
	.byte	0x18
	.byte	0x4
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x4
	.byte	0x63
	.long	0x47c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x4
	.byte	0x64
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x4
	.byte	0x65
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x4
	.byte	0x66
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x19
	.long	.LASF22
	.byte	0x4
	.byte	0x67
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2b
	.long	.LASF39
	.byte	0x4
	.byte	0x68
	.long	0x7aa8
	.uleb128 0x7
	.long	0x7bdf
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x6d
	.uleb128 0x25
	.string	"rtwint"
	.byte	0x4
	.byte	0x6e
	.long	0x47c
	.uleb128 0x25
	.string	"rtint"
	.byte	0x4
	.byte	0x6f
	.long	0x2dc
	.uleb128 0x25
	.string	"rtuint"
	.byte	0x4
	.byte	0x70
	.long	0x3b5
	.uleb128 0x25
	.string	"rtstr"
	.byte	0x4
	.byte	0x71
	.long	0x2c9
	.uleb128 0x25
	.string	"rtx"
	.byte	0x4
	.byte	0x72
	.long	0x9d
	.uleb128 0x25
	.string	"rtvec"
	.byte	0x4
	.byte	0x73
	.long	0x19e
	.uleb128 0x25
	.string	"rttype"
	.byte	0x4
	.byte	0x74
	.long	0x816
	.uleb128 0x25
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x75
	.long	0x7a8d
	.uleb128 0x25
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x76
	.long	0x7bf3
	.uleb128 0x25
	.string	"rtbit"
	.byte	0x4
	.byte	0x77
	.long	0x5cf7
	.uleb128 0x25
	.string	"rttree"
	.byte	0x4
	.byte	0x78
	.long	0x1e6
	.uleb128 0x25
	.string	"bb"
	.byte	0x4
	.byte	0x79
	.long	0x5d54
	.uleb128 0x25
	.string	"rtmem"
	.byte	0x4
	.byte	0x7a
	.long	0x7bf9
	.byte	0x0
	.uleb128 0x17
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x7bdf
	.uleb128 0x3
	.byte	0x4
	.long	0x7b02
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x7c
	.long	0x7b0d
	.uleb128 0xf
	.long	0x7c1e
	.long	0x7bff
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x7c2e
	.long	0x9d
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.long	0x7c53
	.string	"pad"
	.byte	0x4
	.byte	0x1
	.byte	0x27
	.uleb128 0x16
	.string	"none"
	.sleb128 0
	.uleb128 0x16
	.string	"before"
	.sleb128 1
	.uleb128 0x16
	.string	"after"
	.sleb128 2
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.string	"init_error"
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2e
	.long	0x7cb9
	.string	"dump_scope"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2f
	.string	"scope"
	.byte	0x1
	.byte	0x8c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF40
	.byte	0x1
	.byte	0x8d
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"f"
	.byte	0x1
	.byte	0x8f
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x7d50
	.string	"dump_qualifiers"
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.long	0x7c2e
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.byte	0xad
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.byte	0xae
	.long	0x7c2e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"ix"
	.byte	0x1
	.byte	0xb4
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"quals"
	.byte	0x1
	.byte	0xb5
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"do_after"
	.byte	0x1
	.byte	0xb6
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x31
	.string	"masks"
	.byte	0x1
	.byte	0xb0
	.long	0x962a
	.byte	0x5
	.byte	0x3
	.long	masks.15261
	.uleb128 0x31
	.string	"names"
	.byte	0x1
	.byte	0xb2
	.long	0x963f
	.byte	0x5
	.byte	0x3
	.long	names.15262
	.byte	0x0
	.uleb128 0x2e
	.long	0x7d98
	.string	"dump_template_argument"
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2f
	.string	"arg"
	.byte	0x1
	.byte	0xd2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF40
	.byte	0x1
	.byte	0xd3
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2e
	.long	0x7e0b
	.string	"dump_template_argument_list"
	.byte	0x1
	.byte	0xe2
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x30
	.long	.LASF41
	.byte	0x1
	.byte	0xe0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF40
	.byte	0x1
	.byte	0xe1
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"n"
	.byte	0x1
	.byte	0xe3
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF42
	.byte	0x1
	.byte	0xe4
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.byte	0xe5
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x7e6d
	.string	"dump_template_parameter"
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x2f
	.string	"parm"
	.byte	0x1
	.byte	0xf4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF40
	.byte	0x1
	.byte	0xf5
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.byte	0xf7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"a"
	.byte	0x1
	.byte	0xf8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x7f46
	.string	"dump_template_bindings"
	.byte	0x1
	.value	0x11e
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x35
	.string	"parms"
	.byte	0x1
	.value	0x11d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF41
	.byte	0x1
	.value	0x11d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF42
	.byte	0x1
	.value	0x11f
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x39
	.string	"p"
	.byte	0x1
	.value	0x123
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x39
	.string	"lvl"
	.byte	0x1
	.value	0x124
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.string	"arg_idx"
	.byte	0x1
	.value	0x125
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.string	"i"
	.byte	0x1
	.value	0x126
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x39
	.string	"arg"
	.byte	0x1
	.value	0x12a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x39
	.string	"lvl_args"
	.byte	0x1
	.value	0x12f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x7ff5
	.string	"dump_type"
	.byte	0x1
	.value	0x14c
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x14a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x14b
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.long	.LASF44
	.byte	0x1
	.value	0x1c5
	.long	.L110
	.uleb128 0x3b
	.long	0x7faa
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x39
	.string	"elt"
	.byte	0x1
	.value	0x185
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x3b
	.long	0x7fc7
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x37
	.long	.LASF3
	.byte	0x1
	.value	0x196
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3b
	.long	0x7fe4
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x37
	.long	.LASF41
	.byte	0x1
	.value	0x1ae
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF43
	.long	0x9615
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15494
	.byte	0x0
	.uleb128 0x34
	.long	0x8044
	.string	"dump_typename"
	.byte	0x1
	.value	0x1f1
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x1ef
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x1f0
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"ctx"
	.byte	0x1
	.value	0x1f2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3d
	.long	0x807d
	.string	"class_key_or_enum"
	.byte	0x1
	.value	0x201
	.byte	0x1
	.long	0x2c9
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x200
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x34
	.long	0x811e
	.string	"dump_aggr_type"
	.byte	0x1
	.value	0x213
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x211
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x212
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF23
	.byte	0x1
	.value	0x214
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.string	"variety"
	.byte	0x1
	.value	0x215
	.long	0x2c9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.string	"typdef"
	.byte	0x1
	.value	0x216
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.string	"tmplate"
	.byte	0x1
	.value	0x217
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x39
	.string	"tpl"
	.byte	0x1
	.value	0x234
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.long	0x81b1
	.string	"dump_type_prefix"
	.byte	0x1
	.value	0x25e
	.byte	0x1
	.long	0x7c2e
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x25c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x25d
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"padding"
	.byte	0x1
	.value	0x25f
	.long	0x7c2e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3a
	.long	.LASF44
	.byte	0x1
	.value	0x280
	.long	.L231
	.uleb128 0x3b
	.long	0x81a0
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x39
	.string	"sub"
	.byte	0x1
	.value	0x26c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF43
	.long	0x9610
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15820
	.byte	0x0
	.uleb128 0x34
	.long	0x8221
	.string	"dump_type_suffix"
	.byte	0x1
	.value	0x2cd
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x2cb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x2cc
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	0x8210
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x39
	.string	"arg"
	.byte	0x1
	.value	0x2df
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF43
	.long	0x960b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15925
	.byte	0x0
	.uleb128 0x34
	.long	0x8272
	.string	"dump_global_iord"
	.byte	0x1
	.value	0x327
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x326
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"p"
	.byte	0x1
	.value	0x328
	.long	0x2c9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3c
	.long	.LASF43
	.long	0x9606
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16005
	.byte	0x0
	.uleb128 0x34
	.long	0x82c4
	.string	"dump_simple_decl"
	.byte	0x1
	.value	0x339
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x336
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF3
	.byte	0x1
	.value	0x337
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x338
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x34
	.long	0x833c
	.string	"dump_decl"
	.byte	0x1
	.value	0x34f
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x34d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x34e
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	0x832b
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x37
	.long	.LASF41
	.byte	0x1
	.value	0x3d1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x37
	.long	.LASF23
	.byte	0x1
	.value	0x3d2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF43
	.long	0x95f1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16059
	.byte	0x0
	.uleb128 0x34
	.long	0x83f9
	.string	"dump_template_decl"
	.byte	0x1
	.value	0x412
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x410
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x411
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"orig_parms"
	.byte	0x1
	.value	0x413
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.string	"parms"
	.byte	0x1
	.value	0x414
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.string	"i"
	.byte	0x1
	.value	0x415
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	0x83e8
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x39
	.string	"inner_parms"
	.byte	0x1
	.value	0x41d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.string	"len"
	.byte	0x1
	.value	0x41e
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF43
	.long	0x95ec
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16294
	.byte	0x0
	.uleb128 0x34
	.long	0x84d4
	.string	"dump_function_decl"
	.byte	0x1
	.value	0x456
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x454
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x455
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"fntype"
	.byte	0x1
	.value	0x457
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x458
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x39
	.string	"cname"
	.byte	0x1
	.value	0x459
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.string	"template_args"
	.byte	0x1
	.value	0x45a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.string	"template_parms"
	.byte	0x1
	.value	0x45b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.string	"show_return"
	.byte	0x1
	.value	0x45c
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x39
	.string	"tmpl"
	.byte	0x1
	.value	0x464
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x8529
	.string	"dump_parameters"
	.byte	0x1
	.value	0x4b4
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x36
	.long	.LASF45
	.byte	0x1
	.value	0x4b2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x4b3
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"first"
	.byte	0x1
	.value	0x4b5
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x856f
	.string	"dump_exception_spec"
	.byte	0x1
	.value	0x4d6
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x4d4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x4d5
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x34
	.long	0x85c3
	.string	"dump_function_name"
	.byte	0x1
	.value	0x4ee
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x4ec
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x4ed
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF23
	.byte	0x1
	.value	0x4ef
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x86e2
	.string	"dump_template_parms"
	.byte	0x1
	.value	0x522
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x35
	.string	"info"
	.byte	0x1
	.value	0x51f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"primary"
	.byte	0x1
	.value	0x520
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x521
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF41
	.byte	0x1
	.value	0x523
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3b
	.long	0x8680
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x39
	.string	"len"
	.byte	0x1
	.value	0x52e
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x39
	.string	"ix"
	.byte	0x1
	.value	0x52f
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x37
	.long	.LASF42
	.byte	0x1
	.value	0x530
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x39
	.string	"arg"
	.byte	0x1
	.value	0x53e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x39
	.string	"tpl"
	.byte	0x1
	.value	0x555
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.string	"parms"
	.byte	0x1
	.value	0x556
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.string	"len"
	.byte	0x1
	.value	0x557
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.string	"ix"
	.byte	0x1
	.value	0x557
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x39
	.string	"parm"
	.byte	0x1
	.value	0x55e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x870f
	.string	"dump_char"
	.byte	0x1
	.value	0x56c
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x35
	.string	"c"
	.byte	0x1
	.value	0x56b
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x34
	.long	0x8750
	.string	"dump_expr_list"
	.byte	0x1
	.value	0x59e
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x35
	.string	"l"
	.byte	0x1
	.value	0x59c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x59d
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x34
	.long	0x8995
	.string	"dump_expr"
	.byte	0x1
	.value	0x5ae
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x5ac
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x5ad
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3e
	.string	"do_int"
	.byte	0x1
	.value	0x5ec
	.long	.L650
	.uleb128 0x3e
	.string	"cast"
	.byte	0x1
	.value	0x7d0
	.long	.L784
	.uleb128 0x3b
	.long	0x8809
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x37
	.long	.LASF3
	.byte	0x1
	.value	0x5c1
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x3b
	.long	0x87e5
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x39
	.string	"values"
	.byte	0x1
	.value	0x5c7
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.uleb128 0x38
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x39
	.string	"val"
	.byte	0x1
	.value	0x5ef
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3f
	.long	.LBB21
	.long	.LBE21
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x8843
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x39
	.string	"p"
	.byte	0x1
	.value	0x619
	.long	0x2c9
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x39
	.string	"len"
	.byte	0x1
	.value	0x61a
	.long	0x2dc
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x39
	.string	"i"
	.byte	0x1
	.value	0x61b
	.long	0x2dc
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x3b
	.long	0x8860
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x39
	.string	"fn"
	.byte	0x1
	.value	0x644
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x3b
	.long	0x88a3
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x39
	.string	"fn"
	.byte	0x1
	.value	0x65c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.long	.LASF41
	.byte	0x1
	.value	0x65d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x39
	.string	"ob"
	.byte	0x1
	.value	0x664
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x88d0
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x37
	.long	.LASF3
	.byte	0x1
	.value	0x67b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x39
	.string	"init"
	.byte	0x1
	.value	0x67c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x3b
	.long	0x88ec
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x39
	.string	"ob"
	.byte	0x1
	.value	0x6d0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x3b
	.long	0x890a
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x39
	.string	"next"
	.byte	0x1
	.value	0x730
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x3b
	.long	0x8953
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x39
	.string	"idx"
	.byte	0x1
	.value	0x74f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x39
	.string	"virtuals"
	.byte	0x1
	.value	0x75b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.string	"n"
	.byte	0x1
	.value	0x75c
	.long	0x48d
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x896f
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x39
	.string	"ob"
	.byte	0x1
	.value	0x786
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF43
	.long	0x95e7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16758
	.uleb128 0x39
	.string	"format"
	.byte	0x1
	.value	0x5fb
	.long	0x95d7
	.byte	0x5
	.byte	0x3
	.long	format.16765
	.byte	0x0
	.uleb128 0x34
	.long	0x89e5
	.string	"dump_binary_op"
	.byte	0x1
	.value	0x83b
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x36
	.long	.LASF46
	.byte	0x1
	.value	0x838
	.long	0x2c9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x839
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x83a
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x34
	.long	0x8a34
	.string	"dump_unary_op"
	.byte	0x1
	.value	0x84d
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x36
	.long	.LASF46
	.byte	0x1
	.value	0x84a
	.long	0x2c9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x84b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x84c
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x40
	.long	0x8a7c
	.byte	0x1
	.string	"type_as_string"
	.byte	0x1
	.value	0x85d
	.byte	0x1
	.long	0x2c9
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x35
	.string	"typ"
	.byte	0x1
	.value	0x85b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x85c
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x40
	.long	0x8ac4
	.byte	0x1
	.string	"expr_as_string"
	.byte	0x1
	.value	0x869
	.byte	0x1
	.long	0x2c9
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x867
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x868
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x40
	.long	0x8b0c
	.byte	0x1
	.string	"decl_as_string"
	.byte	0x1
	.value	0x875
	.byte	0x1
	.long	0x2c9
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x873
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x874
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x40
	.long	0x8b57
	.byte	0x1
	.string	"context_as_string"
	.byte	0x1
	.value	0x881
	.byte	0x1
	.long	0x2c9
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0x87f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x880
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x40
	.long	0x8b9d
	.byte	0x1
	.string	"lang_decl_name"
	.byte	0x1
	.value	0x88f
	.byte	0x1
	.long	0x2c9
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x88d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"v"
	.byte	0x1
	.value	0x88e
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x40
	.long	0x8bd0
	.byte	0x1
	.string	"cp_file_of"
	.byte	0x1
	.value	0x8a6
	.byte	0x1
	.long	0x2c9
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x8a5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x40
	.long	0x8c13
	.byte	0x1
	.string	"cp_line_of"
	.byte	0x1
	.value	0x8b4
	.byte	0x1
	.long	0x2dc
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x8b3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"line"
	.byte	0x1
	.value	0x8b5
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3d
	.long	0x8c69
	.string	"decl_to_string"
	.byte	0x1
	.value	0x8d1
	.byte	0x1
	.long	0x2c9
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x8cf
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF47
	.byte	0x1
	.value	0x8d0
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF40
	.byte	0x1
	.value	0x8d2
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3d
	.long	0x8cb0
	.string	"expr_to_string"
	.byte	0x1
	.value	0x8e8
	.byte	0x1
	.long	0x2c9
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x8e6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF47
	.byte	0x1
	.value	0x8e7
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3d
	.long	0x8d0b
	.string	"fndecl_to_string"
	.byte	0x1
	.value	0x8f4
	.byte	0x1
	.long	0x2c9
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x35
	.string	"fndecl"
	.byte	0x1
	.value	0x8f2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF47
	.byte	0x1
	.value	0x8f3
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF40
	.byte	0x1
	.value	0x8f5
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3d
	.long	0x8d4e
	.string	"code_to_string"
	.byte	0x1
	.value	0x906
	.byte	0x1
	.long	0x2c9
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x35
	.string	"c"
	.byte	0x1
	.value	0x904
	.long	0xaa3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"v"
	.byte	0x1
	.value	0x905
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x40
	.long	0x8da6
	.byte	0x1
	.string	"language_to_string"
	.byte	0x1
	.value	0x90e
	.byte	0x1
	.long	0x2c9
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x35
	.string	"c"
	.byte	0x1
	.value	0x90c
	.long	0x5fbf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"v"
	.byte	0x1
	.value	0x90d
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3c
	.long	.LASF43
	.long	0x95d2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17648
	.byte	0x0
	.uleb128 0x3d
	.long	0x8de9
	.string	"parm_to_string"
	.byte	0x1
	.value	0x926
	.byte	0x1
	.long	0x2c9
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.value	0x924
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"v"
	.byte	0x1
	.value	0x925
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3d
	.long	0x8e38
	.string	"op_to_string"
	.byte	0x1
	.value	0x932
	.byte	0x1
	.long	0x2c9
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.value	0x930
	.long	0xaa3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"v"
	.byte	0x1
	.value	0x931
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"id"
	.byte	0x1
	.value	0x933
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3d
	.long	0x8e8e
	.string	"type_to_string"
	.byte	0x1
	.value	0x93d
	.byte	0x1
	.long	0x2c9
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x35
	.string	"typ"
	.byte	0x1
	.value	0x93b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF47
	.byte	0x1
	.value	0x93c
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF40
	.byte	0x1
	.value	0x93e
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3d
	.long	0x8ee0
	.string	"assop_to_string"
	.byte	0x1
	.value	0x950
	.byte	0x1
	.long	0x2c9
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.value	0x94e
	.long	0xaa3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"v"
	.byte	0x1
	.value	0x94f
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"id"
	.byte	0x1
	.value	0x951
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3d
	.long	0x8f34
	.string	"args_to_string"
	.byte	0x1
	.value	0x95b
	.byte	0x1
	.long	0x2c9
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.value	0x959
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF47
	.byte	0x1
	.value	0x95a
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF40
	.byte	0x1
	.value	0x95c
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3d
	.long	0x8f75
	.string	"cv_to_string"
	.byte	0x1
	.value	0x977
	.byte	0x1
	.long	0x2c9
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.value	0x975
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"v"
	.byte	0x1
	.value	0x976
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x41
	.long	0x8fc4
	.byte	0x1
	.string	"cxx_print_error_function"
	.byte	0x1
	.value	0x984
	.byte	0x1
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0x982
	.long	0x7192
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"file"
	.byte	0x1
	.value	0x983
	.long	0x2c9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x34
	.long	0x900e
	.string	"cp_diagnostic_starter"
	.byte	0x1
	.value	0x98e
	.byte	0x1
	.long	.LFB61
	.long	.LFE61
	.long	.LLST46
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0x98c
	.long	0x7192
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF48
	.byte	0x1
	.value	0x98d
	.long	0x7198
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x34
	.long	0x905a
	.string	"cp_diagnostic_finalizer"
	.byte	0x1
	.value	0x999
	.byte	0x1
	.long	.LFB62
	.long	.LFE62
	.long	.LLST47
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0x997
	.long	0x7192
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF48
	.byte	0x1
	.value	0x998
	.long	0x7198
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x34
	.long	0x90dc
	.string	"cp_print_error_function"
	.byte	0x1
	.value	0x9a3
	.byte	0x1
	.long	.LFB63
	.long	.LFE63
	.long	.LLST48
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0x9a1
	.long	0x7192
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF48
	.byte	0x1
	.value	0x9a2
	.long	0x7198
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x39
	.string	"old_prefix"
	.byte	0x1
	.value	0x9a6
	.long	0x2c9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.string	"new_prefix"
	.byte	0x1
	.value	0x9a7
	.long	0x4e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.long	0x9116
	.string	"function_category"
	.byte	0x1
	.value	0x9bf
	.byte	0x1
	.long	0x2c9
	.long	.LFB64
	.long	.LFE64
	.long	.LLST49
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x9be
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x34
	.long	0x9189
	.string	"print_instantiation_full_context"
	.byte	0x1
	.value	0x9d6
	.byte	0x1
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0x9d5
	.long	0x7192
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"p"
	.byte	0x1
	.value	0x9d7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.string	"line"
	.byte	0x1
	.value	0x9d8
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.string	"file"
	.byte	0x1
	.value	0x9d9
	.long	0x2c9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x91ff
	.string	"print_instantiation_partial_context"
	.byte	0x1
	.value	0x9fd
	.byte	0x1
	.long	.LFB66
	.long	.LFE66
	.long	.LLST51
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0x9f9
	.long	0x7192
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x9fa
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"file"
	.byte	0x1
	.value	0x9fb
	.long	0x2c9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.string	"line"
	.byte	0x1
	.value	0x9fc
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x34
	.long	0x9246
	.string	"maybe_print_instantiation_context"
	.byte	0x1
	.value	0xa0d
	.byte	0x1
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0xa0c
	.long	0x7192
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x42
	.byte	0x1
	.string	"print_instantiation_context"
	.byte	0x1
	.value	0xa18
	.byte	0x1
	.long	.LFB68
	.long	.LFE68
	.long	.LLST53
	.uleb128 0x3d
	.long	0x92d9
	.string	"cp_printer"
	.byte	0x1
	.value	0xa2f
	.byte	0x1
	.long	0x52ee
	.long	.LFB69
	.long	.LFE69
	.long	.LLST54
	.uleb128 0x36
	.long	.LASF38
	.byte	0x1
	.value	0xa2d
	.long	0x7030
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"text"
	.byte	0x1
	.value	0xa2e
	.long	0x7036
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF47
	.byte	0x1
	.value	0xa30
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.string	"result"
	.byte	0x1
	.value	0xa31
	.long	0x2c9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x9319
	.string	"print_integer"
	.byte	0x1
	.value	0xa5d
	.byte	0x1
	.long	.LFB70
	.long	.LFE70
	.long	.LLST55
	.uleb128 0x36
	.long	.LASF38
	.byte	0x1
	.value	0xa5b
	.long	0x7030
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0xa5c
	.long	0x47c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x34
	.long	0x9378
	.string	"print_non_consecutive_character"
	.byte	0x1
	.value	0xa66
	.byte	0x1
	.long	.LFB71
	.long	.LFE71
	.long	.LLST56
	.uleb128 0x36
	.long	.LASF38
	.byte	0x1
	.value	0xa64
	.long	0x7030
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"c"
	.byte	0x1
	.value	0xa65
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"p"
	.byte	0x1
	.value	0xa67
	.long	0x2c9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3d
	.long	0x93f6
	.string	"locate_error"
	.byte	0x1
	.value	0xa75
	.byte	0x1
	.long	0x1e6
	.long	.LFB72
	.long	.LFE72
	.long	.LLST57
	.uleb128 0x36
	.long	.LASF49
	.byte	0x1
	.value	0xa73
	.long	0x2c9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"ap"
	.byte	0x1
	.value	0xa74
	.long	0x407
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"here"
	.byte	0x1
	.value	0xa76
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.string	"t"
	.byte	0x1
	.value	0xa76
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.string	"plus"
	.byte	0x1
	.value	0xa77
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.string	"f"
	.byte	0x1
	.value	0xa78
	.long	0x2c9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x41
	.long	0x948e
	.byte	0x1
	.string	"cp_error_at"
	.byte	0x1
	.value	0xaae
	.byte	0x1
	.long	.LFB73
	.long	.LFE73
	.long	.LLST58
	.uleb128 0x36
	.long	.LASF49
	.byte	0x1
	.value	0xaad
	.long	0x2c9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x43
	.uleb128 0x39
	.string	"here"
	.byte	0x1
	.value	0xaaf
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x37
	.long	.LASF48
	.byte	0x1
	.value	0xab0
	.long	0x6e0a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3b
	.long	0x946c
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x39
	.string	"ap"
	.byte	0x1
	.value	0xab2
	.long	0x407
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3f
	.long	.LBB34
	.long	.LBE34
	.byte	0x0
	.uleb128 0x38
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x39
	.string	"ap"
	.byte	0x1
	.value	0xab7
	.long	0x407
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3f
	.long	.LBB36
	.long	.LBE36
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
	.long	0x9528
	.byte	0x1
	.string	"cp_warning_at"
	.byte	0x1
	.value	0xac2
	.byte	0x1
	.long	.LFB74
	.long	.LFE74
	.long	.LLST59
	.uleb128 0x36
	.long	.LASF49
	.byte	0x1
	.value	0xac1
	.long	0x2c9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x43
	.uleb128 0x39
	.string	"here"
	.byte	0x1
	.value	0xac3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x37
	.long	.LASF48
	.byte	0x1
	.value	0xac4
	.long	0x6e0a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3b
	.long	0x9506
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x39
	.string	"ap"
	.byte	0x1
	.value	0xac6
	.long	0x407
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3f
	.long	.LBB38
	.long	.LBE38
	.byte	0x0
	.uleb128 0x38
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x39
	.string	"ap"
	.byte	0x1
	.value	0xacb
	.long	0x407
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3f
	.long	.LBB40
	.long	.LBE40
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
	.long	0x95c2
	.byte	0x1
	.string	"cp_pedwarn_at"
	.byte	0x1
	.value	0xad6
	.byte	0x1
	.long	.LFB75
	.long	.LFE75
	.long	.LLST60
	.uleb128 0x36
	.long	.LASF49
	.byte	0x1
	.value	0xad5
	.long	0x2c9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x43
	.uleb128 0x39
	.string	"here"
	.byte	0x1
	.value	0xad7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x37
	.long	.LASF48
	.byte	0x1
	.value	0xad8
	.long	0x6e0a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3b
	.long	0x95a0
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x39
	.string	"ap"
	.byte	0x1
	.value	0xada
	.long	0x407
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3f
	.long	.LBB42
	.long	.LBE42
	.byte	0x0
	.uleb128 0x38
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x39
	.string	"ap"
	.byte	0x1
	.value	0xadf
	.long	0x407
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3f
	.long	.LBB44
	.long	.LBE44
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x95d2
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0x12
	.byte	0x0
	.uleb128 0xa
	.long	0x95c2
	.uleb128 0xf
	.long	0x95e7
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0x9
	.byte	0x0
	.uleb128 0xa
	.long	0x95d7
	.uleb128 0xa
	.long	0x95c2
	.uleb128 0xa
	.long	0x95d7
	.uleb128 0xf
	.long	0x9606
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x95f6
	.uleb128 0xa
	.long	0x95f6
	.uleb128 0xa
	.long	0x95f6
	.uleb128 0xa
	.long	0x95d7
	.uleb128 0xf
	.long	0x962a
	.long	0x2dc
	.uleb128 0x10
	.long	0x3cc
	.byte	0x2
	.byte	0x0
	.uleb128 0xa
	.long	0x961a
	.uleb128 0xf
	.long	0x963f
	.long	0x2c9
	.uleb128 0x10
	.long	0x3cc
	.byte	0x2
	.byte	0x0
	.uleb128 0xa
	.long	0x962f
	.uleb128 0x31
	.string	"scratch_buffer_rec"
	.byte	0x1
	.byte	0x3e
	.long	0x6f7a
	.byte	0x5
	.byte	0x3
	.long	scratch_buffer_rec
	.uleb128 0x31
	.string	"scratch_buffer"
	.byte	0x1
	.byte	0x3f
	.long	0x7030
	.byte	0x5
	.byte	0x3
	.long	scratch_buffer
	.uleb128 0x33
	.long	.LASF36
	.byte	0x1
	.byte	0xcc
	.long	0x7042
	.byte	0x5
	.byte	0x3
	.long	digit_buffer
	.uleb128 0xf
	.long	0x96a1
	.long	0x435
	.uleb128 0x10
	.long	0x3cc
	.byte	0xff
	.byte	0x0
	.uleb128 0x44
	.string	"_sch_istable"
	.byte	0x16
	.byte	0x48
	.long	0x96b7
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x9691
	.uleb128 0xf
	.long	0x96c7
	.long	0x2d4
	.uleb128 0x45
	.byte	0x0
	.uleb128 0x44
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x43
	.long	0x96df
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x96bc
	.uleb128 0xf
	.long	0x96ef
	.long	0x2c9
	.uleb128 0x45
	.byte	0x0
	.uleb128 0x44
	.string	"tree_code_name"
	.byte	0x3
	.byte	0x53
	.long	0x9707
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x96e4
	.uleb128 0xf
	.long	0x971c
	.long	0x1e6
	.uleb128 0x10
	.long	0x3cc
	.byte	0x3f
	.byte	0x0
	.uleb128 0x46
	.string	"global_trees"
	.byte	0x3
	.value	0x8ee
	.long	0x970c
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x9743
	.long	0x1e6
	.uleb128 0x10
	.long	0x3cc
	.byte	0xa
	.byte	0x0
	.uleb128 0x46
	.string	"integer_types"
	.byte	0x3
	.value	0x95f
	.long	0x9733
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"input_filename"
	.byte	0x3
	.value	0xbf6
	.long	0x2c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"lineno"
	.byte	0x3
	.value	0xbf9
	.long	0x2dc
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"current_function_decl"
	.byte	0x3
	.value	0xc07
	.long	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x97b5
	.long	0x1e6
	.uleb128 0x10
	.long	0x3cc
	.byte	0x1e
	.byte	0x0
	.uleb128 0x44
	.string	"c_global_trees"
	.byte	0xc
	.byte	0xee
	.long	0x97a5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x97dd
	.long	0x1e6
	.uleb128 0x10
	.long	0x3cc
	.byte	0x49
	.byte	0x0
	.uleb128 0x46
	.string	"cp_global_trees"
	.byte	0xb
	.value	0x28f
	.long	0x97cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"global_namespace"
	.byte	0xb
	.value	0x3d4
	.long	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"anonymous_namespace_name"
	.byte	0xb
	.value	0xcaa
	.long	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x9840
	.long	0x6c8e
	.uleb128 0x45
	.byte	0x0
	.uleb128 0x46
	.string	"operator_name_info"
	.byte	0xb
	.value	0xe32
	.long	0x9835
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"assignment_operator_name_info"
	.byte	0xb
	.value	0xe34
	.long	0x9835
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"flag_pedantic_errors"
	.byte	0x17
	.value	0x1d8
	.long	0x2dc
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"global_dc"
	.byte	0x10
	.value	0x109
	.long	0x7192
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x32
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x18
	.byte	0x0
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x45
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x46
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
	.long	0x125
	.value	0x2
	.long	.Ldebug_info0
	.long	0x98b9
	.long	0x7c53
	.string	"init_error"
	.long	0x8a34
	.string	"type_as_string"
	.long	0x8a7c
	.string	"expr_as_string"
	.long	0x8ac4
	.string	"decl_as_string"
	.long	0x8b0c
	.string	"context_as_string"
	.long	0x8b57
	.string	"lang_decl_name"
	.long	0x8b9d
	.string	"cp_file_of"
	.long	0x8bd0
	.string	"cp_line_of"
	.long	0x8d4e
	.string	"language_to_string"
	.long	0x8f75
	.string	"cxx_print_error_function"
	.long	0x9246
	.string	"print_instantiation_context"
	.long	0x93f6
	.string	"cp_error_at"
	.long	0x948e
	.string	"cp_warning_at"
	.long	0x9528
	.string	"cp_pedwarn_at"
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
.LASF44:
	.string	"offset_type"
.LASF23:
	.string	"name"
.LASF26:
	.string	"cannot_inline"
.LASF7:
	.string	"lang_flag_0"
.LASF9:
	.string	"lang_flag_2"
.LASF11:
	.string	"lang_flag_4"
.LASF13:
	.string	"lang_flag_6"
.LASF29:
	.string	"sequence_stack"
.LASF45:
	.string	"parmtypes"
.LASF39:
	.string	"mem_attrs"
.LASF48:
	.string	"diagnostic"
.LASF49:
	.string	"msgid"
.LASF37:
	.string	"diagnostic_context"
.LASF0:
	.string	"common"
.LASF47:
	.string	"verbose"
.LASF25:
	.string	"lang_specific"
.LASF22:
	.string	"align"
.LASF30:
	.string	"sequence_rtl_expr"
.LASF33:
	.string	"befriending_classes"
.LASF28:
	.string	"function_frequency"
.LASF8:
	.string	"lang_flag_1"
.LASF10:
	.string	"lang_flag_3"
.LASF14:
	.string	"lang_flag_7"
.LASF4:
	.string	"unsigned int"
.LASF34:
	.string	"operator_name_info_t"
.LASF17:
	.string	"abstract_origin"
.LASF20:
	.string	"pointer_depth"
.LASF31:
	.string	"use_template"
.LASF21:
	.string	"user_align"
.LASF18:
	.string	"size_unit"
.LASF3:
	.string	"type"
.LASF27:
	.string	"language"
.LASF35:
	.string	"output_buffer"
.LASF42:
	.string	"need_comma"
.LASF6:
	.string	"built_in_class"
.LASF1:
	.string	"identifier"
.LASF36:
	.string	"digit_buffer"
.LASF12:
	.string	"lang_flag_5"
.LASF16:
	.string	"abstract_flag"
.LASF46:
	.string	"opstring"
.LASF24:
	.string	"context"
.LASF32:
	.string	"template_info"
.LASF41:
	.string	"args"
.LASF40:
	.string	"flags"
.LASF43:
	.string	"__FUNCTION__"
.LASF38:
	.string	"buffer"
.LASF15:
	.string	"ht_identifier"
.LASF5:
	.string	"_IO_FILE"
.LASF19:
	.string	"attributes"
.LASF2:
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
