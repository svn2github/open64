	.file	"c-semantics.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl begin_stmt_tree
	.type	begin_stmt_tree, @function
begin_stmt_tree:
.LFB15:
	.file 1 "../../../kg++fe/gnu/c-semantics.c"
	.loc 1 67 0
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
	.loc 1 71 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	120(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$156, (%esp)
	call	build_nt@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 72 0
	call	current_stmt_tree@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 73 0
	call	current_stmt_tree@PLT
	movl	$0, 4(%eax)
	.loc 1 74 0
	call	current_stmt_tree@PLT
	movl	%eax, %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%edx)
	.loc 1 75 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	begin_stmt_tree, .-begin_stmt_tree
.globl add_stmt
	.type	add_stmt, @function
add_stmt:
.LFB16:
	.loc 1 82 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%esi
.LCFI6:
	pushl	%ebx
.LCFI7:
	subl	$32, %esp
.LCFI8:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 83 0
	call	current_stmt_tree@PLT
	movl	8(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L4
.LBB2:
	.loc 1 87 0
	call	current_stmt_tree@PLT
	movl	8(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 88 0
	call	current_stmt_tree@PLT
	movl	%eax, %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%edx)
	.loc 1 89 0
	cmpl	$0, -16(%ebp)
	je	.L4
.LBB3:
	.loc 1 91 0
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, 4(%esp)
	movl	$171, (%esp)
	call	build_nt@PLT
	movl	%eax, -12(%ebp)
	.loc 1 92 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_stmt@PLT
.L4:
.LBE3:
.LBE2:
	.loc 1 97 0
	call	current_stmt_tree@PLT
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 98 0
	call	current_stmt_tree@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 102 0
	call	current_stmt_tree@PLT
	movl	(%eax), %esi
	call	stmts_are_full_exprs_p@PLT
	andl	$1, %eax
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	11(%esi), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 11(%esi)
	.loc 1 105 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L7
	.loc 1 106 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	40(%ecx), %eax
	movl	44(%ecx), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, 40(%ecx)
	movl	%edx, 44(%ecx)
.L7:
	.loc 1 108 0
	movl	8(%ebp), %eax
	.loc 1 109 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE16:
	.size	add_stmt, .-add_stmt
.globl add_decl_stmt
	.type	add_decl_stmt, @function
add_decl_stmt:
.LFB17:
	.loc 1 117 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	pushl	%ebx
.LCFI11:
	subl	$36, %esp
.LCFI12:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 121 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$158, (%esp)
	call	build_stmt@PLT
	movl	%eax, -8(%ebp)
	.loc 1 122 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_stmt@PLT
	.loc 1 123 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	add_decl_stmt, .-add_decl_stmt
.globl add_scope_stmt
	.type	add_scope_stmt, @function
add_scope_stmt:
.LFB18:
	.loc 1 139 0
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
	.loc 1 140 0
	call	current_scope_stmt_stack@PLT
	movl	%eax, -16(%ebp)
	.loc 1 142 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 145 0
	movl	$0, 4(%esp)
	movl	$170, (%esp)
	call	build_stmt@PLT
	movl	%eax, -12(%ebp)
	.loc 1 146 0
	movl	8(%ebp), %eax
	andl	$1, %eax
	movl	-12(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	11(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 11(%edx)
	.loc 1 147 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	movl	-12(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	11(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 150 0
	cmpl	$0, 8(%ebp)
	je	.L13
	.loc 1 152 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -8(%ebp)
	.loc 1 153 0
	movl	-16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L15
.L13:
	.loc 1 157 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 158 0
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
.L15:
	.loc 1 162 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_stmt@PLT
	.loc 1 164 0
	movl	-8(%ebp), %eax
	.loc 1 165 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	add_scope_stmt, .-add_scope_stmt
.globl finish_stmt_tree
	.type	finish_stmt_tree, @function
finish_stmt_tree:
.LFB19:
	.loc 1 172 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%ebx
.LCFI19:
	subl	$20, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 176 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 177 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 178 0
	call	current_stmt_tree@PLT
	movl	$0, (%eax)
	.loc 1 180 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L21
	cmpl	$0, -8(%ebp)
	je	.L21
	.loc 1 184 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 185 0
	movl	-8(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$4, %eax
	movb	%al, 11(%edx)
.L21:
	.loc 1 187 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	finish_stmt_tree, .-finish_stmt_tree
.globl build_stmt
	.type	build_stmt, @function
build_stmt:
.LFB20:
	.loc 1 197 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%ebx
.LCFI23:
	subl	$20, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB4:
	.loc 1 202 0
	leal	12(%ebp), %eax
	movl	%eax, -20(%ebp)
.LBB5:
	.loc 1 205 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_node@PLT
	movl	%eax, -16(%ebp)
	.loc 1 206 0
	movl	8(%ebp), %edx
	movl	tree_code_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 207 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 209 0
	movl	$0, -8(%ebp)
	jmp	.L23
.L24:
	.loc 1 210 0
	movl	-8(%ebp), %ecx
	movl	-20(%ebp), %edx
	leal	4(%edx), %eax
	movl	%eax, -20(%ebp)
	movl	%edx, %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 20(%eax,%ecx,4)
	.loc 1 209 0
	addl	$1, -8(%ebp)
.L23:
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L24
.LBE5:
.LBE4:
	.loc 1 213 0
	movl	-16(%ebp), %eax
	.loc 1 214 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	build_stmt, .-build_stmt
.globl expand_cond
	.type	expand_cond, @function
expand_cond:
.LFB21:
	.loc 1 224 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	pushl	%ebx
.LCFI27:
	subl	$20, %esp
.LCFI28:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 225 0
	cmpl	$0, 8(%ebp)
	je	.L28
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L28
	.loc 1 227 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	expand_stmt@PLT
	.loc 1 228 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L31
.L28:
	.loc 1 231 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L31:
	movl	-8(%ebp), %eax
	.loc 1 232 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	expand_cond, .-expand_cond
.globl make_rtl_for_local_static
	.type	make_rtl_for_local_static, @function
make_rtl_for_local_static:
.LFB22:
	.loc 1 239 0
	pushl	%ebp
.LCFI29:
	movl	%esp, %ebp
.LCFI30:
	pushl	%ebx
.LCFI31:
	subl	$36, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 240 0
	movl	$0, -8(%ebp)
	.loc 1 244 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L39
	.loc 1 263 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	%eax, %edx
	je	.L36
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	jne	.L36
	.loc 1 265 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
.L36:
	.loc 1 267 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rest_of_decl_compilation@PLT
.L39:
	.loc 1 268 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	make_rtl_for_local_static, .-make_rtl_for_local_static
.globl emit_local_var
	.type	emit_local_var, @function
emit_local_var:
.LFB23:
	.loc 1 275 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	pushl	%ebx
.LCFI35:
	subl	$20, %esp
.LCFI36:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 277 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	jne	.L41
	.loc 1 279 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L43
	.loc 1 282 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	16(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rest_of_decl_compilation@PLT
	jmp	.L41
.L43:
	.loc 1 286 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_decl@PLT
.L41:
	.loc 1 290 0
	call	stmts_are_full_exprs_p@PLT
	testl	%eax, %eax
	je	.L45
	.loc 1 291 0
	call	expand_start_target_temps@PLT
.L45:
	.loc 1 293 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_decl_init@PLT
	.loc 1 295 0
	call	stmts_are_full_exprs_p@PLT
	testl	%eax, %eax
	je	.L49
	.loc 1 296 0
	call	expand_end_target_temps@PLT
.L49:
	.loc 1 297 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	emit_local_var, .-emit_local_var
.globl genrtl_do_pushlevel
	.type	genrtl_do_pushlevel, @function
genrtl_do_pushlevel:
.LFB24:
	.loc 1 303 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	pushl	%ebx
.LCFI39:
	subl	$20, %esp
.LCFI40:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 304 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_line_note@PLT
	.loc 1 305 0
	call	clear_last_expr@PLT
	.loc 1 306 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	genrtl_do_pushlevel, .-genrtl_do_pushlevel
	.section	.rodata
	.type	__FUNCTION__.13406, @object
	.size	__FUNCTION__.13406, 17
__FUNCTION__.13406:
	.string	"genrtl_goto_stmt"
	.align 4
.LC0:
	.string	"../../../kg++fe/gnu/c-semantics.c"
	.text
.globl genrtl_goto_stmt
	.type	genrtl_goto_stmt, @function
genrtl_goto_stmt:
.LFB25:
	.loc 1 313 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	pushl	%ebx
.LCFI43:
	subl	$20, %esp
.LCFI44:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 314 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L53
	.loc 1 315 0
	leal	__FUNCTION__.13406@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$315, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L53:
	.loc 1 319 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$32, %al
	jne	.L55
	.loc 1 320 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %edx
	orl	$1, %edx
	movb	%dl, 10(%eax)
.L55:
	.loc 1 322 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_line_note@PLT
	.loc 1 324 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$32, %al
	jne	.L57
	.loc 1 326 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	label_rtx@PLT
	.loc 1 327 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_goto@PLT
	jmp	.L60
.L57:
	.loc 1 330 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_computed_goto@PLT
.L60:
	.loc 1 331 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	genrtl_goto_stmt, .-genrtl_goto_stmt
.globl genrtl_expr_stmt
	.type	genrtl_expr_stmt, @function
genrtl_expr_stmt:
.LFB26:
	.loc 1 340 0
	pushl	%ebp
.LCFI45:
	movl	%esp, %ebp
.LCFI46:
	pushl	%ebx
.LCFI47:
	subl	$20, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 341 0
	movl	$1, 8(%esp)
	movl	$-1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	genrtl_expr_stmt_value@PLT
	.loc 1 342 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	genrtl_expr_stmt, .-genrtl_expr_stmt
.globl genrtl_expr_stmt_value
	.type	genrtl_expr_stmt_value, @function
genrtl_expr_stmt_value:
.LFB27:
	.loc 1 355 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	pushl	%ebx
.LCFI51:
	subl	$20, %esp
.LCFI52:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 356 0
	cmpl	$0, 8(%ebp)
	je	.L71
	.loc 1 358 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_line_note@PLT
	.loc 1 360 0
	call	stmts_are_full_exprs_p@PLT
	testl	%eax, %eax
	je	.L66
	.loc 1 361 0
	call	expand_start_target_temps@PLT
.L66:
	.loc 1 363 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L68
	.loc 1 364 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr_stmt_value@PLT
.L68:
	.loc 1 366 0
	call	stmts_are_full_exprs_p@PLT
	testl	%eax, %eax
	je	.L71
	.loc 1 367 0
	call	expand_end_target_temps@PLT
.L71:
	.loc 1 369 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	genrtl_expr_stmt_value, .-genrtl_expr_stmt_value
.globl genrtl_decl_stmt
	.type	genrtl_decl_stmt, @function
genrtl_decl_stmt:
.LFB28:
	.loc 1 376 0
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
	.loc 1 378 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_line_note@PLT
	.loc 1 379 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 386 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L73
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L73
	movl	-8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L73
	.loc 1 391 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	anon_aggr_type_p@PLT
	testl	%eax, %eax
	jne	.L77
	.loc 1 392 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_local_var@PLT
	jmp	.L88
.L77:
	.loc 1 394 0
	movl	-8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_anon_union_decl@PLT
	.loc 1 386 0
	jmp	.L88
.L73:
	.loc 1 397 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L81
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L81
	.loc 1 398 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_rtl_for_local_static@PLT
	.loc 1 397 0
	jmp	.L88
.L81:
	.loc 1 399 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$32, %al
	jne	.L84
	movl	-8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L84
	.loc 1 401 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	declare_nonlocal_label@PLT
	.loc 1 399 0
	jmp	.L88
.L84:
	.loc 1 402 0
	movl	lang_expand_decl_stmt@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L88
	.loc 1 403 0
	movl	lang_expand_decl_stmt@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L88:
	.loc 1 404 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	genrtl_decl_stmt, .-genrtl_decl_stmt
.globl genrtl_if_stmt
	.type	genrtl_if_stmt, @function
genrtl_if_stmt:
.LFB29:
	.loc 1 411 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	pushl	%ebx
.LCFI59:
	subl	$36, %esp
.LCFI60:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 413 0
	call	genrtl_do_pushlevel@PLT
	.loc 1 414 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	expand_cond@PLT
	movl	%eax, -8(%ebp)
	.loc 1 415 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_line_note@PLT
	.loc 1 416 0
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_start_cond@PLT
	.loc 1 417 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L90
	.loc 1 418 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	expand_stmt@PLT
.L90:
	.loc 1 419 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L92
	.loc 1 421 0
	call	expand_start_else@PLT
	.loc 1 422 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	expand_stmt@PLT
.L92:
	.loc 1 424 0
	call	expand_end_cond@PLT
	.loc 1 425 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	genrtl_if_stmt, .-genrtl_if_stmt
.globl genrtl_while_stmt
	.type	genrtl_while_stmt, @function
genrtl_while_stmt:
.LFB30:
	.loc 1 432 0
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
	.loc 1 434 0
	call	emit_nop@PLT
	.loc 1 435 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_line_note@PLT
	.loc 1 436 0
	movl	$1, (%esp)
	call	expand_start_loop@PLT
	.loc 1 437 0
	call	genrtl_do_pushlevel@PLT
	.loc 1 439 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	expand_cond@PLT
	movl	%eax, -8(%ebp)
	.loc 1 440 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_line_note@PLT
	.loc 1 441 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	expand_exit_loop_top_cond@PLT
	.loc 1 442 0
	call	genrtl_do_pushlevel@PLT
	.loc 1 444 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	expand_stmt@PLT
	.loc 1 446 0
	call	expand_end_loop@PLT
	.loc 1 447 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	genrtl_while_stmt, .-genrtl_while_stmt
.globl genrtl_do_stmt
	.type	genrtl_do_stmt, @function
genrtl_do_stmt:
.LFB31:
	.loc 1 454 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	pushl	%ebx
.LCFI67:
	subl	$36, %esp
.LCFI68:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 455 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 462 0
	cmpl	$0, -8(%ebp)
	je	.L98
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L100
.L98:
	.loc 1 464 0
	call	expand_start_null_loop@PLT
	.loc 1 465 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	expand_stmt@PLT
	.loc 1 466 0
	call	expand_end_null_loop@PLT
	.loc 1 462 0
	jmp	.L102
.L100:
	.loc 1 470 0
	call	emit_nop@PLT
	.loc 1 471 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_line_note@PLT
	.loc 1 472 0
	movl	$1, (%esp)
	call	expand_start_loop_continue_elsewhere@PLT
	.loc 1 474 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	expand_stmt@PLT
	.loc 1 476 0
	call	expand_loop_continue_here@PLT
	.loc 1 477 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_cond@PLT
	movl	%eax, -8(%ebp)
	.loc 1 478 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_line_note@PLT
	.loc 1 479 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	expand_exit_loop_if_false@PLT
	.loc 1 480 0
	call	expand_end_loop@PLT
.L102:
	.loc 1 482 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	genrtl_do_stmt, .-genrtl_do_stmt
.globl build_return_stmt
	.type	build_return_stmt, @function
build_return_stmt:
.LFB32:
	.loc 1 489 0
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	pushl	%ebx
.LCFI71:
	subl	$20, %esp
.LCFI72:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 490 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$163, (%esp)
	call	build_stmt@PLT
	.loc 1 491 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	build_return_stmt, .-build_return_stmt
.globl genrtl_return_stmt
	.type	genrtl_return_stmt, @function
genrtl_return_stmt:
.LFB33:
	.loc 1 498 0
	pushl	%ebp
.LCFI73:
	movl	%esp, %ebp
.LCFI74:
	pushl	%ebx
.LCFI75:
	subl	$36, %esp
.LCFI76:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 501 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 503 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_line_note@PLT
	.loc 1 504 0
	cmpl	$0, -8(%ebp)
	jne	.L106
	.loc 1 505 0
	call	expand_null_return@PLT
	jmp	.L109
.L106:
	.loc 1 508 0
	call	expand_start_target_temps@PLT
	.loc 1 509 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_return@PLT
	.loc 1 510 0
	call	expand_end_target_temps@PLT
.L109:
	.loc 1 512 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	genrtl_return_stmt, .-genrtl_return_stmt
.globl genrtl_for_stmt
	.type	genrtl_for_stmt, @function
genrtl_for_stmt:
.LFB34:
	.loc 1 519 0
	pushl	%ebp
.LCFI77:
	movl	%esp, %ebp
.LCFI78:
	pushl	%ebx
.LCFI79:
	subl	$36, %esp
.LCFI80:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 524 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L111
	.loc 1 525 0
	call	genrtl_do_pushlevel@PLT
.L111:
	.loc 1 527 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	expand_stmt@PLT
	.loc 1 530 0
	call	emit_nop@PLT
	.loc 1 531 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_line_note@PLT
	.loc 1 532 0
	movl	$1, (%esp)
	call	expand_start_loop_continue_elsewhere@PLT
	.loc 1 533 0
	call	genrtl_do_pushlevel@PLT
	.loc 1 534 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	expand_cond@PLT
	movl	%eax, -16(%ebp)
	.loc 1 538 0
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 539 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 542 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_line_note@PLT
	.loc 1 543 0
	cmpl	$0, -16(%ebp)
	je	.L113
	.loc 1 544 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	expand_exit_loop_top_cond@PLT
.L113:
	.loc 1 547 0
	call	genrtl_do_pushlevel@PLT
	.loc 1 548 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	call	expand_stmt@PLT
	.loc 1 551 0
	movl	input_filename@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 552 0
	movl	lineno@GOT(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 553 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_line_note@PLT
	.loc 1 554 0
	call	expand_loop_continue_here@PLT
	.loc 1 555 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L115
	.loc 1 556 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	genrtl_expr_stmt@PLT
.L115:
	.loc 1 557 0
	call	expand_end_loop@PLT
	.loc 1 558 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	genrtl_for_stmt, .-genrtl_for_stmt
.globl build_break_stmt
	.type	build_break_stmt, @function
build_break_stmt:
.LFB35:
	.loc 1 564 0
	pushl	%ebp
.LCFI81:
	movl	%esp, %ebp
.LCFI82:
	pushl	%ebx
.LCFI83:
	subl	$4, %esp
.LCFI84:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 565 0
	movl	$164, (%esp)
	call	build_stmt@PLT
	.loc 1 566 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	build_break_stmt, .-build_break_stmt
	.section	.rodata
	.align 4
.LC1:
	.string	"break statement not within loop or switch"
	.text
.globl genrtl_break_stmt
	.type	genrtl_break_stmt, @function
genrtl_break_stmt:
.LFB36:
	.loc 1 572 0
	pushl	%ebp
.LCFI85:
	movl	%esp, %ebp
.LCFI86:
	pushl	%ebx
.LCFI87:
	subl	$20, %esp
.LCFI88:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 573 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_line_note@PLT
	.loc 1 574 0
	call	expand_exit_something@PLT
	testl	%eax, %eax
	jne	.L123
	.loc 1 575 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L123:
	.loc 1 576 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	genrtl_break_stmt, .-genrtl_break_stmt
.globl build_continue_stmt
	.type	build_continue_stmt, @function
build_continue_stmt:
.LFB37:
	.loc 1 582 0
	pushl	%ebp
.LCFI89:
	movl	%esp, %ebp
.LCFI90:
	pushl	%ebx
.LCFI91:
	subl	$4, %esp
.LCFI92:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 583 0
	movl	$165, (%esp)
	call	build_stmt@PLT
	.loc 1 584 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	build_continue_stmt, .-build_continue_stmt
.globl build_omp_stmt
	.type	build_omp_stmt, @function
build_omp_stmt:
.LFB38:
	.loc 1 590 0
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
	.loc 1 591 0
	movl	$176, (%esp)
	call	build_stmt@PLT
	movl	%eax, -8(%ebp)
	.loc 1 592 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 593 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 595 0
	movl	-8(%ebp), %eax
	.loc 1 596 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	build_omp_stmt, .-build_omp_stmt
	.section	.rodata
	.align 4
.LC2:
	.string	"continue statement not within a loop"
	.text
.globl genrtl_continue_stmt
	.type	genrtl_continue_stmt, @function
genrtl_continue_stmt:
.LFB39:
	.loc 1 603 0
	pushl	%ebp
.LCFI97:
	movl	%esp, %ebp
.LCFI98:
	pushl	%ebx
.LCFI99:
	subl	$20, %esp
.LCFI100:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 604 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_line_note@PLT
	.loc 1 605 0
	movl	$0, (%esp)
	call	expand_continue_loop@PLT
	testl	%eax, %eax
	jne	.L131
	.loc 1 606 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L131:
	.loc 1 607 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	genrtl_continue_stmt, .-genrtl_continue_stmt
.globl genrtl_scope_stmt
	.type	genrtl_scope_stmt, @function
genrtl_scope_stmt:
.LFB40:
	.loc 1 614 0
	pushl	%ebp
.LCFI101:
	movl	%esp, %ebp
.LCFI102:
	pushl	%ebx
.LCFI103:
	subl	$36, %esp
.LCFI104:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 615 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 617 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L133
	.loc 1 619 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L135
	.loc 1 620 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L137
	movl	$2, -28(%ebp)
	jmp	.L139
.L137:
	movl	$0, -28(%ebp)
.L139:
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_start_bindings_and_block@PLT
	jmp	.L142
.L135:
	.loc 1 621 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L142
	.loc 1 622 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	expand_end_bindings@PLT
	jmp	.L142
.L133:
	.loc 1 624 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L142
.LBB6:
	.loc 1 629 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L144
	movl	$-98, -24(%ebp)
	jmp	.L146
.L144:
	movl	$-97, -24(%ebp)
.L146:
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	emit_note@PLT
	movl	%eax, -12(%ebp)
	.loc 1 630 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 36(%edx)
.L142:
.LBE6:
	.loc 1 635 0
	cmpl	$0, -16(%ebp)
	je	.L158
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L158
.LBB7:
	.loc 1 639 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L150
.L151:
	.loc 1 641 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L152
	movl	-8(%ebp), %eax
	movl	56(%eax), %edx
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L152
	movl	-8(%ebp), %eax
	movl	112(%eax), %eax
	testl	%eax, %eax
	je	.L152
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L152
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L152
	.loc 1 647 0
	call	push_function_context@PLT
	.loc 1 648 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	output_inline_function@PLT
	.loc 1 649 0
	call	pop_function_context@PLT
.L152:
	.loc 1 639 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L150:
	cmpl	$0, -8(%ebp)
	jne	.L151
.L158:
.LBE7:
	.loc 1 653 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	genrtl_scope_stmt, .-genrtl_scope_stmt
	.section	.rodata
.LC3:
	.string	"switch statement"
	.text
.globl genrtl_switch_stmt
	.type	genrtl_switch_stmt, @function
genrtl_switch_stmt:
.LFB41:
	.loc 1 660 0
	pushl	%ebp
.LCFI105:
	movl	%esp, %ebp
.LCFI106:
	pushl	%ebx
.LCFI107:
	subl	$36, %esp
.LCFI108:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 662 0
	call	genrtl_do_pushlevel@PLT
	.loc 1 664 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	expand_cond@PLT
	movl	%eax, -8(%ebp)
	.loc 1 665 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L160
	.loc 1 668 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	68(%eax), %eax
	movl	%eax, -8(%ebp)
.L160:
	.loc 1 670 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_line_note@PLT
	.loc 1 671 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	expand_start_case@PLT
	.loc 1 672 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	expand_stmt@PLT
	.loc 1 673 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_end_case_type@PLT
	.loc 1 674 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	genrtl_switch_stmt, .-genrtl_switch_stmt
.globl build_case_label
	.type	build_case_label, @function
build_case_label:
.LFB42:
	.loc 1 683 0
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
	.loc 1 684 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$172, (%esp)
	call	build_stmt@PLT
	.loc 1 685 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	build_case_label, .-build_case_label
	.local	explained.13687
	.comm	explained.13687,4,4
	.section	.rodata
.LC4:
	.string	"destructor needed for `%#D'"
.LC5:
	.string	"where case label appears here"
	.align 4
.LC6:
	.string	"(enclose actions of previous case statements requiring destructors in their own scope.)"
	.text
.globl genrtl_case_label
	.type	genrtl_case_label, @function
genrtl_case_label:
.LFB43:
	.loc 1 693 0
	pushl	%ebp
.LCFI113:
	movl	%esp, %ebp
.LCFI114:
	pushl	%esi
.LCFI115:
	pushl	%ebx
.LCFI116:
	subl	$32, %esp
.LCFI117:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 697 0
	call	last_cleanup_this_contour@PLT
	movl	%eax, -12(%ebp)
	.loc 1 698 0
	cmpl	$0, -12(%ebp)
	je	.L166
.LBB8:
	.loc 1 701 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 702 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 703 0
	movl	explained.13687@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L166
	.loc 1 705 0
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 706 0
	movl	$1, explained.13687@GOTOFF(%ebx)
.L166:
.LBE8:
	.loc 1 710 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	8(%ebp), %eax
	movl	24(%eax), %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	leal	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	add_case_node@PLT
	.loc 1 712 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE43:
	.size	genrtl_case_label, .-genrtl_case_label
.globl genrtl_compound_stmt
	.type	genrtl_compound_stmt, @function
genrtl_compound_stmt:
.LFB44:
	.loc 1 719 0
	pushl	%ebp
.LCFI118:
	movl	%esp, %ebp
.LCFI119:
	pushl	%ebx
.LCFI120:
	subl	$4, %esp
.LCFI121:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 724 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	expand_stmt@PLT
	.loc 1 731 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	genrtl_compound_stmt, .-genrtl_compound_stmt
	.section	.rodata
.LC7:
	.string	"%s qualifier ignored on asm"
	.text
.globl genrtl_asm_stmt
	.type	genrtl_asm_stmt, @function
genrtl_asm_stmt:
.LFB45:
	.loc 1 744 0
	pushl	%ebp
.LCFI122:
	movl	%esp, %ebp
.LCFI123:
	pushl	%ebx
.LCFI124:
	subl	$36, %esp
.LCFI125:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 745 0
	cmpl	$0, 8(%ebp)
	je	.L173
	movl	ridpointers@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$36, %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L173
	.loc 1 748 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 750 0
	movl	$0, 8(%ebp)
.L173:
	.loc 1 753 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_line_note@PLT
	.loc 1 754 0
	cmpl	$0, 28(%ebp)
	je	.L176
	.loc 1 755 0
	cmpl	$0, 8(%ebp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_asm@PLT
	jmp	.L179
.L176:
	.loc 1 757 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %edx
	cmpl	$0, 8(%ebp)
	setne	%al
	movzbl	%al, %eax
	movl	%ecx, 24(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	c_expand_asm_operands@PLT
.L179:
	.loc 1 760 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	genrtl_asm_stmt, .-genrtl_asm_stmt
.globl genrtl_decl_cleanup
	.type	genrtl_decl_cleanup, @function
genrtl_decl_cleanup:
.LFB46:
	.loc 1 767 0
	pushl	%ebp
.LCFI126:
	movl	%esp, %ebp
.LCFI127:
	pushl	%ebx
.LCFI128:
	subl	$36, %esp
.LCFI129:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 768 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 769 0
	cmpl	$0, -8(%ebp)
	je	.L181
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L185
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L185
.L181:
	.loc 1 770 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_decl_cleanup_eh@PLT
.L185:
	.loc 1 771 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	genrtl_decl_cleanup, .-genrtl_decl_cleanup
.globl prep_stmt
	.type	prep_stmt, @function
prep_stmt:
.LFB47:
	.loc 1 779 0
	pushl	%ebp
.LCFI130:
	movl	%esp, %ebp
.LCFI131:
	pushl	%ebx
.LCFI132:
	subl	$4, %esp
.LCFI133:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 780 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L187
	.loc 1 781 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L187:
	.loc 1 782 0
	call	current_stmt_tree@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, 12(%edx)
	.loc 1 783 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	prep_stmt, .-prep_stmt
	.section	.rodata
	.type	__FUNCTION__.13779, @object
	.size	__FUNCTION__.13779, 12
__FUNCTION__.13779:
	.string	"expand_stmt"
	.text
.globl expand_stmt
	.type	expand_stmt, @function
expand_stmt:
.LFB48:
	.loc 1 791 0
	pushl	%ebp
.LCFI134:
	movl	%esp, %ebp
.LCFI135:
	pushl	%edi
.LCFI136:
	pushl	%esi
.LCFI137:
	pushl	%ebx
.LCFI138:
	subl	$60, %esp
.LCFI139:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB9:
	.loc 1 792 0
	jmp	.L191
.L192:
	.loc 1 797 0
	call	stmts_are_full_exprs_p@PLT
	movl	%eax, -20(%ebp)
	.loc 1 798 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prep_stmt@PLT
	.loc 1 800 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$156, %eax
	movl	%eax, -40(%ebp)
	cmpl	$20, -40(%ebp)
	ja	.L193
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	.L213@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L213:
	.long	.L194@GOTOFF
	.long	.L195@GOTOFF
	.long	.L196@GOTOFF
	.long	.L197@GOTOFF
	.long	.L198@GOTOFF
	.long	.L199@GOTOFF
	.long	.L200@GOTOFF
	.long	.L201@GOTOFF
	.long	.L202@GOTOFF
	.long	.L203@GOTOFF
	.long	.L204@GOTOFF
	.long	.L205@GOTOFF
	.long	.L206@GOTOFF
	.long	.L207@GOTOFF
	.long	.L208@GOTOFF
	.long	.L209@GOTOFF
	.long	.L210@GOTOFF
	.long	.L193@GOTOFF
	.long	.L193@GOTOFF
	.long	.L211@GOTOFF
	.long	.L214@GOTOFF
	.text
.L209:
	.loc 1 803 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 804 0
	jmp	.L214
.L201:
	.loc 1 807 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	genrtl_return_stmt@PLT
	.loc 1 808 0
	jmp	.L214
.L194:
	.loc 1 811 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L215
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-86, %al
	jne	.L217
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L217
.L215:
	movl	$1, -36(%ebp)
	jmp	.L219
.L217:
	movl	$0, -36(%ebp)
.L219:
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	-36(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	genrtl_expr_stmt_value@PLT
	.loc 1 815 0
	jmp	.L214
.L196:
	.loc 1 818 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	genrtl_decl_stmt@PLT
	.loc 1 819 0
	jmp	.L214
.L198:
	.loc 1 822 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	genrtl_for_stmt@PLT
	.loc 1 823 0
	jmp	.L214
.L199:
	.loc 1 826 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	genrtl_while_stmt@PLT
	.loc 1 827 0
	jmp	.L214
.L200:
	.loc 1 830 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	genrtl_do_stmt@PLT
	.loc 1 831 0
	jmp	.L214
.L197:
	.loc 1 834 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	genrtl_if_stmt@PLT
	.loc 1 835 0
	jmp	.L214
.L195:
	.loc 1 838 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	genrtl_compound_stmt@PLT
	.loc 1 839 0
	jmp	.L214
.L202:
	.loc 1 842 0
	call	genrtl_break_stmt@PLT
	.loc 1 843 0
	jmp	.L214
.L203:
	.loc 1 846 0
	call	genrtl_continue_stmt@PLT
	.loc 1 847 0
	jmp	.L214
.L204:
	.loc 1 850 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	genrtl_switch_stmt@PLT
	.loc 1 851 0
	jmp	.L214
.L210:
	.loc 1 854 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	genrtl_case_label@PLT
	.loc 1 855 0
	jmp	.L214
.L206:
	.loc 1 858 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	expand_label@PLT
	.loc 1 859 0
	jmp	.L214
.L205:
	.loc 1 863 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L220
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$32, %al
	jne	.L220
	movl	flag_guess_branch_prob@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L220
.LBB10:
	.loc 1 867 0
	movl	$-81, 4(%esp)
	movl	$0, (%esp)
	call	emit_note@PLT
	movl	%eax, -16(%ebp)
	.loc 1 869 0
	movl	-16(%ebp), %eax
	movl	$5120, 36(%eax)
.L220:
.LBE10:
	.loc 1 871 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	genrtl_goto_stmt@PLT
	.loc 1 872 0
	jmp	.L214
.L207:
	.loc 1 875 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	32(%eax), %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %esi
	movl	8(%ebp), %eax
	movl	24(%eax), %edi
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	-44(%ebp), %ecx
	movl	%ecx, (%esp)
	call	genrtl_asm_stmt@PLT
	.loc 1 878 0
	jmp	.L214
.L208:
	.loc 1 881 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	genrtl_scope_stmt@PLT
	.loc 1 882 0
	jmp	.L214
.L211:
	.loc 1 885 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	genrtl_decl_cleanup@PLT
	.loc 1 886 0
	jmp	.L214
.L193:
	.loc 1 894 0
	movl	lang_expand_stmt@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L224
	.loc 1 895 0
	movl	lang_expand_stmt@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	jmp	.L214
.L224:
	.loc 1 897 0
	leal	__FUNCTION__.13779@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$897, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L214:
	.loc 1 902 0
	call	current_stmt_tree@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 906 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L191:
.LBE9:
	.loc 1 792 0
	cmpl	$0, 8(%ebp)
	je	.L228
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L192
.L228:
	.loc 1 908 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE48:
	.size	expand_stmt, .-expand_stmt
	.comm	lang_expand_stmt,4,4
	.comm	lang_expand_decl_stmt,4,4
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
	.long	.LCFI8-.LCFI5
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI12-.LCFI10
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
	.long	.LCFI24-.LCFI22
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
	.long	.LCFI28-.LCFI26
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
	.long	.LCFI29-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI32-.LCFI30
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
	.long	.LCFI33-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI36-.LCFI34
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
	.byte	0x4
	.long	.LCFI44-.LCFI42
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
	.long	.LCFI45-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI48-.LCFI46
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
	.long	.LCFI49-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI52-.LCFI50
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
	.long	.LCFI53-.LFB28
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
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI57-.LFB29
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
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI61-.LFB30
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI65-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI66-.LCFI65
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI68-.LCFI66
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
	.long	.LCFI69-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI72-.LCFI70
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
	.long	.LCFI73-.LFB33
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
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI77-.LFB34
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
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI81-.LFB35
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
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI85-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI86-.LCFI85
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI88-.LCFI86
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
	.long	.LCFI89-.LFB37
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
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI93-.LFB38
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
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI97-.LFB39
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
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI101-.LFB40
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
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI105-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI106-.LCFI105
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI108-.LCFI106
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
	.long	.LCFI109-.LFB42
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
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI113-.LFB43
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
	.byte	0x4
	.long	.LCFI133-.LCFI131
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
	.long	.LCFI134-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI135-.LCFI134
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI139-.LCFI135
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE66:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/tree.h"
	.file 4 "../../../kg++fe/gnu/rtl.h"
	.file 5 "../../../kg++fe/gnu/machmode.h"
	.file 6 "../../../kg++fe/gnu/hashtable.h"
	.file 7 "../../../kg++fe/gnu/location.h"
	.file 8 "../../../kg++fe/gnu/function.h"
	.file 9 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 10 "../../../kg++fe/omp_types.h"
	.file 11 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 12 "../../../kg++fe/gnu/c-common.h"
	.file 13 "../../../kg++fe/gnu/flags.h"
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
	.long	.LCFI29-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI29-.Ltext0
	.long	.LCFI30-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI30-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
	.long	.LCFI33-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI33-.Ltext0
	.long	.LCFI34-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI34-.Ltext0
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
	.long	.LCFI45-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI45-.Ltext0
	.long	.LCFI46-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI46-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
	.long	.LCFI49-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI49-.Ltext0
	.long	.LCFI50-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI50-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI69-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI69-.Ltext0
	.long	.LCFI70-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI70-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x680f
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/c-semantics.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xab
	.uleb128 0x3
	.byte	0x4
	.long	0xb1
	.uleb128 0x4
	.long	0x1a1
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x4
	.byte	0x84
	.long	0x712
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
	.long	0x4c9
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x116d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1ae
	.uleb128 0x3
	.byte	0x4
	.long	0x1b4
	.uleb128 0x4
	.long	0x1e9
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x4
	.byte	0xf2
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x4
	.byte	0xf3
	.long	0x117d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1f5
	.uleb128 0x3
	.byte	0x4
	.long	0x1fb
	.uleb128 0x7
	.long	0x2d4
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x3
	.value	0x887
	.long	0x3852
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x3
	.value	0x888
	.long	0x3b71
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x3
	.value	0x889
	.long	0x3bb9
	.uleb128 0x9
	.string	"vector"
	.byte	0x3
	.value	0x88a
	.long	0x3cd9
	.uleb128 0x9
	.string	"string"
	.byte	0x3
	.value	0x88b
	.long	0x3c1a
	.uleb128 0x9
	.string	"complex"
	.byte	0x3
	.value	0x88c
	.long	0x3c84
	.uleb128 0x9
	.string	"identifier"
	.byte	0x3
	.value	0x88d
	.long	0x3d5f
	.uleb128 0x8
	.long	.LASF1
	.byte	0x3
	.value	0x88e
	.long	0x4dcf
	.uleb128 0x9
	.string	"type"
	.byte	0x3
	.value	0x88f
	.long	0x3fc1
	.uleb128 0x9
	.string	"list"
	.byte	0x3
	.value	0x890
	.long	0x3d96
	.uleb128 0x9
	.string	"vec"
	.byte	0x3
	.value	0x891
	.long	0x3ddd
	.uleb128 0x9
	.string	"exp"
	.byte	0x3
	.value	0x892
	.long	0x3e2b
	.uleb128 0x9
	.string	"block"
	.byte	0x3
	.value	0x893
	.long	0x3e77
	.uleb128 0x9
	.string	"omp"
	.byte	0x3
	.value	0x895
	.long	0x57a9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2da
	.uleb128 0xa
	.long	0x2df
	.uleb128 0xb
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.long	0x3c0
	.string	"mips_args"
	.byte	0x40
	.byte	0x9
	.value	0xaaa
	.uleb128 0xd
	.string	"gp_reg_found"
	.byte	0x9
	.value	0xaad
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"arg_number"
	.byte	0x9
	.value	0xab0
	.long	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"num_gprs"
	.byte	0x9
	.value	0xab5
	.long	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"num_fprs"
	.byte	0x9
	.value	0xab8
	.long	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stack_words"
	.byte	0x9
	.value	0xabb
	.long	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"fp_code"
	.byte	0x9
	.value	0xac8
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"prototype"
	.byte	0x9
	.value	0xacb
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"num_adjusts"
	.byte	0x9
	.value	0xad3
	.long	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"adjust"
	.byte	0x9
	.value	0xad4
	.long	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xe
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	0x3d7
	.long	0xa0
	.uleb128 0x10
	.long	0x3d7
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.string	"CUMULATIVE_ARGS"
	.byte	0x9
	.value	0xad5
	.long	0x2ee
	.uleb128 0x2
	.string	"__gnuc_va_list"
	.byte	0xb
	.byte	0x2b
	.long	0x40c
	.uleb128 0x3
	.byte	0x4
	.long	0x2df
	.uleb128 0x2
	.string	"va_list"
	.byte	0xb
	.byte	0x69
	.long	0x3f6
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
	.long	0x2df
	.uleb128 0x3
	.byte	0x4
	.long	0x4be
	.uleb128 0xa
	.long	0x421
	.uleb128 0x3
	.byte	0x4
	.long	0x421
	.uleb128 0x13
	.long	0x712
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
	.uleb128 0x13
	.long	0xee1
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
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
	.uleb128 0x15
	.long	0xfbb
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x49
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0xee1
	.uleb128 0x16
	.long	0x1031
	.long	.LASF3
	.byte	0x18
	.byte	0x4
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x4
	.byte	0x63
	.long	0x479
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.long	.LASF4
	.byte	0x4
	.byte	0x64
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x4
	.byte	0x65
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x4
	.byte	0x66
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x4
	.byte	0x67
	.long	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x18
	.long	.LASF3
	.byte	0x4
	.byte	0x68
	.long	0xfd6
	.uleb128 0x7
	.long	0x110e
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x6d
	.uleb128 0x19
	.string	"rtwint"
	.byte	0x4
	.byte	0x6e
	.long	0x479
	.uleb128 0x19
	.string	"rtint"
	.byte	0x4
	.byte	0x6f
	.long	0x2e7
	.uleb128 0x19
	.string	"rtuint"
	.byte	0x4
	.byte	0x70
	.long	0x3c0
	.uleb128 0x19
	.string	"rtstr"
	.byte	0x4
	.byte	0x71
	.long	0x2d4
	.uleb128 0x19
	.string	"rtx"
	.byte	0x4
	.byte	0x72
	.long	0xa0
	.uleb128 0x19
	.string	"rtvec"
	.byte	0x4
	.byte	0x73
	.long	0x1a1
	.uleb128 0x19
	.string	"rttype"
	.byte	0x4
	.byte	0x74
	.long	0x4c9
	.uleb128 0x19
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x75
	.long	0xfbb
	.uleb128 0x19
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x76
	.long	0x1122
	.uleb128 0x19
	.string	"rtbit"
	.byte	0x4
	.byte	0x77
	.long	0x113a
	.uleb128 0x19
	.string	"rttree"
	.byte	0x4
	.byte	0x78
	.long	0x1e9
	.uleb128 0x19
	.string	"bb"
	.byte	0x4
	.byte	0x79
	.long	0x1152
	.uleb128 0x19
	.string	"rtmem"
	.byte	0x4
	.byte	0x7a
	.long	0x1158
	.byte	0x0
	.uleb128 0x1a
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x110e
	.uleb128 0x1a
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1128
	.uleb128 0x1a
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1140
	.uleb128 0x3
	.byte	0x4
	.long	0x1031
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x7c
	.long	0x103c
	.uleb128 0xf
	.long	0x117d
	.long	0x115e
	.uleb128 0x10
	.long	0x3d7
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x118d
	.long	0xa0
	.uleb128 0x10
	.long	0x3d7
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xa0
	.uleb128 0x4
	.long	0x11c5
	.string	"location_s"
	.byte	0x8
	.byte	0x7
	.byte	0x1c
	.uleb128 0x6
	.string	"file"
	.byte	0x7
	.byte	0x1e
	.long	0x2d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line"
	.byte	0x7
	.byte	0x21
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x7
	.byte	0x23
	.long	0x1193
	.uleb128 0x13
	.long	0x1af9
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
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
	.byte	0x3
	.byte	0x2f
	.long	0x3c0
	.uleb128 0x4
	.long	0x1b49
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x30
	.uleb128 0x6
	.string	"block"
	.byte	0x3
	.byte	0x30
	.long	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x30
	.long	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x34
	.long	0x1b53
	.uleb128 0x1a
	.string	"st"
	.byte	0x1
	.uleb128 0x1b
	.long	0x1ba8
	.long	.LASF5
	.byte	0x4
	.byte	0x3
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
	.long	0x3852
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
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
	.long	0x3b35
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8c
	.uleb128 0x6
	.string	"chain"
	.byte	0x3
	.byte	0x8d
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type"
	.byte	0x3
	.byte	0x8e
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x90
	.long	0x11d7
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x3
	.byte	0xa8
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF7
	.byte	0x3
	.byte	0xa9
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF8
	.byte	0x3
	.byte	0xaa
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF9
	.byte	0x3
	.byte	0xab
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF10
	.byte	0x3
	.byte	0xac
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF11
	.byte	0x3
	.byte	0xad
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF12
	.byte	0x3
	.byte	0xae
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF13
	.byte	0x3
	.byte	0xb0
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
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
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x3b71
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x30a
	.uleb128 0xd
	.string	"low"
	.byte	0x3
	.value	0x30b
	.long	0x48a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"high"
	.byte	0x3
	.value	0x30c
	.long	0x479
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x3bb9
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x303
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x304
	.long	0x3852
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x305
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"int_cst"
	.byte	0x3
	.value	0x30d
	.long	0x3b35
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x3c07
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x31f
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x320
	.long	0x3852
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x321
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x322
	.long	0x3c14
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1a
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3c07
	.uleb128 0xc
	.long	0x3c7e
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x333
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x334
	.long	0x3852
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x335
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1d
	.long	.LASF14
	.byte	0x3
	.value	0x336
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"pointer"
	.byte	0x3
	.value	0x337
	.long	0x2d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"st"
	.byte	0x3
	.value	0x339
	.long	0x3c7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1b49
	.uleb128 0xc
	.long	0x3cd9
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x342
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x343
	.long	0x3852
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x344
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real"
	.byte	0x3
	.value	0x345
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"imag"
	.byte	0x3
	.value	0x346
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xc
	.long	0x3d21
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x355
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x356
	.long	0x3852
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x357
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"elements"
	.byte	0x3
	.value	0x358
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x16
	.long	0x3d5f
	.long	.LASF15
	.byte	0xc
	.byte	0x6
	.byte	0x19
	.uleb128 0x6
	.string	"str"
	.byte	0x6
	.byte	0x1c
	.long	0x4b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0x6
	.byte	0x1d
	.long	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"hash_value"
	.byte	0x6
	.byte	0x1e
	.long	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x3d96
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x376
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x377
	.long	0x3852
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"id"
	.byte	0x3
	.value	0x378
	.long	0x3d21
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x3ddd
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x380
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x381
	.long	0x3852
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"purpose"
	.byte	0x3
	.value	0x382
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"value"
	.byte	0x3
	.value	0x383
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x3e1b
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x38e
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x38f
	.long	0x3852
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF14
	.byte	0x3
	.value	0x390
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"a"
	.byte	0x3
	.value	0x391
	.long	0x3e1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x3e2b
	.long	0x1e9
	.uleb128 0x10
	.long	0x3d7
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x3e77
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3d4
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x3d5
	.long	0x3852
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"complexity"
	.byte	0x3
	.value	0x3d6
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"operands"
	.byte	0x3
	.value	0x3d9
	.long	0x3e1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x3f67
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x40a
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x40b
	.long	0x3852
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x40d
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.long	.LASF16
	.byte	0x3
	.value	0x40e
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.string	"block_num"
	.byte	0x3
	.value	0x40f
	.long	0x3c0
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
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"subblocks"
	.byte	0x3
	.value	0x412
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"supercontext"
	.byte	0x3
	.value	0x413
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1d
	.long	.LASF17
	.byte	0x3
	.value	0x414
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"fragment_origin"
	.byte	0x3
	.value	0x415
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"fragment_chain"
	.byte	0x3
	.value	0x416
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x20
	.long	0x3fae
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x570
	.uleb128 0x9
	.string	"address"
	.byte	0x3
	.value	0x571
	.long	0x2e7
	.uleb128 0x9
	.string	"pointer"
	.byte	0x3
	.value	0x572
	.long	0x4b2
	.uleb128 0x9
	.string	"die"
	.byte	0x3
	.value	0x573
	.long	0x3fbb
	.byte	0x0
	.uleb128 0x1a
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3fae
	.uleb128 0xc
	.long	0x430f
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x551
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x552
	.long	0x3852
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"values"
	.byte	0x3
	.value	0x553
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"size"
	.byte	0x3
	.value	0x554
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1d
	.long	.LASF18
	.byte	0x3
	.value	0x555
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1d
	.long	.LASF19
	.byte	0x3
	.value	0x556
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"uid"
	.byte	0x3
	.value	0x557
	.long	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"precision"
	.byte	0x3
	.value	0x559
	.long	0x3c0
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"mode"
	.byte	0x3
	.value	0x55a
	.long	0x4c9
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"string_flag"
	.byte	0x3
	.value	0x55c
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"no_force_blk_flag"
	.byte	0x3
	.value	0x55d
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"needs_constructing_flag"
	.byte	0x3
	.value	0x55e
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"transparent_union_flag"
	.byte	0x3
	.value	0x55f
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"packed_flag"
	.byte	0x3
	.value	0x560
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"restrict_flag"
	.byte	0x3
	.value	0x561
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF20
	.byte	0x3
	.value	0x562
	.long	0x3c0
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF6
	.byte	0x3
	.value	0x564
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF7
	.byte	0x3
	.value	0x565
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF8
	.byte	0x3
	.value	0x566
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF9
	.byte	0x3
	.value	0x567
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x3
	.value	0x568
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF11
	.byte	0x3
	.value	0x569
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF12
	.byte	0x3
	.value	0x56a
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF21
	.byte	0x3
	.value	0x56b
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"align"
	.byte	0x3
	.value	0x56d
	.long	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"pointer_to"
	.byte	0x3
	.value	0x56e
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"reference_to"
	.byte	0x3
	.value	0x56f
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"symtab"
	.byte	0x3
	.value	0x574
	.long	0x3f67
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"name"
	.byte	0x3
	.value	0x576
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"minval"
	.byte	0x3
	.value	0x577
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"maxval"
	.byte	0x3
	.value	0x578
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"next_variant"
	.byte	0x3
	.value	0x579
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"main_variant"
	.byte	0x3
	.value	0x57a
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"binfo"
	.byte	0x3
	.value	0x57b
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"context"
	.byte	0x3
	.value	0x57c
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"alias_set"
	.byte	0x3
	.value	0x57d
	.long	0x479
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1d
	.long	.LASF22
	.byte	0x3
	.value	0x57f
	.long	0x431b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"ty_idx"
	.byte	0x3
	.value	0x581
	.long	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"field_ids_used"
	.byte	0x3
	.value	0x582
	.long	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"dst_id"
	.byte	0x3
	.value	0x583
	.long	0x1b0a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"extra_methods"
	.byte	0x3
	.value	0x58a
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x1a
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x430f
	.uleb128 0xc
	.long	0x4366
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x817
	.uleb128 0x1e
	.string	"align"
	.byte	0x3
	.value	0x818
	.long	0x3c0
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.string	"off_align"
	.byte	0x3
	.value	0x819
	.long	0x3c0
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x439b
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x80e
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x811
	.long	0x1ba8
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x814
	.long	0x479
	.uleb128 0x9
	.string	"a"
	.byte	0x3
	.value	0x81a
	.long	0x4321
	.byte	0x0
	.uleb128 0x20
	.long	0x43da
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x837
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x838
	.long	0x4d91
	.uleb128 0x9
	.string	"r"
	.byte	0x3
	.value	0x839
	.long	0xa0
	.uleb128 0x9
	.string	"t"
	.byte	0x3
	.value	0x83a
	.long	0x1e9
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x83b
	.long	0x2e7
	.byte	0x0
	.uleb128 0x21
	.long	0x4d91
	.string	"function"
	.value	0x134
	.byte	0x4
	.byte	0x19
	.uleb128 0x6
	.string	"eh"
	.byte	0x8
	.byte	0xb5
	.long	0x5b67
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0x8
	.byte	0xb6
	.long	0x5b7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.long	.LASF4
	.byte	0x8
	.byte	0xb7
	.long	0x5b81
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0x8
	.byte	0xb8
	.long	0x5b87
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0x8
	.byte	0xb9
	.long	0x5b9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"name"
	.byte	0x8
	.byte	0xbe
	.long	0x2d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.long	.LASF1
	.byte	0x8
	.byte	0xc1
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0x8
	.byte	0xc4
	.long	0x4d91
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0x8
	.byte	0xc9
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.long	.LASF23
	.byte	0x8
	.byte	0xce
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0x8
	.byte	0xd3
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0x8
	.byte	0xd7
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0x8
	.byte	0xdb
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0x8
	.byte	0xdf
	.long	0x3de
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0x8
	.byte	0xe5
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0x8
	.byte	0xe8
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0x8
	.byte	0xec
	.long	0x2d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0x8
	.byte	0xf0
	.long	0x5bba
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0x8
	.byte	0xf3
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0x8
	.byte	0xf8
	.long	0x1e9
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x8
	.byte	0xfe
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x8
	.value	0x102
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x8
	.value	0x107
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"x_cleanup_label"
	.byte	0x8
	.value	0x10d
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.string	"x_return_label"
	.byte	0x8
	.value	0x112
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.string	"computed_goto_common_label"
	.byte	0x8
	.value	0x115
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"computed_goto_common_reg"
	.byte	0x8
	.value	0x116
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"x_save_expr_regs"
	.byte	0x8
	.value	0x11a
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"x_stack_slot_list"
	.byte	0x8
	.value	0x11e
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.string	"x_rtl_expr_chain"
	.byte	0x8
	.value	0x121
	.long	0x1e9
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"x_tail_recursion_label"
	.byte	0x8
	.value	0x125
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.string	"x_tail_recursion_reentry"
	.byte	0x8
	.value	0x128
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.string	"x_arg_pointer_save_area"
	.byte	0x8
	.value	0x12e
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"x_clobber_return_insn"
	.byte	0x8
	.value	0x133
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"x_frame_offset"
	.byte	0x8
	.value	0x138
	.long	0x479
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"x_context_display"
	.byte	0x8
	.value	0x13d
	.long	0x1e9
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"x_trampoline_list"
	.byte	0x8
	.value	0x146
	.long	0x1e9
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"x_parm_birth_insn"
	.byte	0x8
	.value	0x149
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"x_last_parm_insn"
	.byte	0x8
	.value	0x14d
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"x_max_parm_reg"
	.byte	0x8
	.value	0x151
	.long	0x3c0
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"x_parm_reg_stack_loc"
	.byte	0x8
	.value	0x157
	.long	0x118d
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0x8
	.value	0x15a
	.long	0x5bcc
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"x_temp_slot_level"
	.byte	0x8
	.value	0x15d
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"x_var_temp_slot_level"
	.byte	0x8
	.value	0x160
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"x_target_temp_slot_level"
	.byte	0x8
	.value	0x166
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"fixup_var_refs_queue"
	.byte	0x8
	.value	0x16a
	.long	0x586d
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"inlinable"
	.byte	0x8
	.value	0x16d
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"no_debugging_symbols"
	.byte	0x8
	.value	0x16e
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xd
	.string	"original_arg_vector"
	.byte	0x8
	.value	0x16f
	.long	0x1a1
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"original_decl_initial"
	.byte	0x8
	.value	0x170
	.long	0x1e9
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.string	"inl_last_parm_insn"
	.byte	0x8
	.value	0x173
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.string	"inl_max_label_num"
	.byte	0x8
	.value	0x175
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"funcdef_no"
	.byte	0x8
	.value	0x178
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.string	"machine"
	.byte	0x8
	.value	0x17d
	.long	0x5be5
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.string	"stack_alignment_needed"
	.byte	0x8
	.value	0x17f
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.string	"preferred_stack_boundary"
	.byte	0x8
	.value	0x181
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xd
	.string	"language"
	.byte	0x8
	.value	0x184
	.long	0x5bff
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.string	"epilogue_delay_list"
	.byte	0x8
	.value	0x18a
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1e
	.string	"returns_struct"
	.byte	0x8
	.value	0x190
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"returns_pcc_struct"
	.byte	0x8
	.value	0x194
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"returns_pointer"
	.byte	0x8
	.value	0x197
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"needs_context"
	.byte	0x8
	.value	0x19a
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_setjmp"
	.byte	0x8
	.value	0x19d
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_longjmp"
	.byte	0x8
	.value	0x1a0
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_alloca"
	.byte	0x8
	.value	0x1a4
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_eh_return"
	.byte	0x8
	.value	0x1a7
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_nonlocal_label"
	.byte	0x8
	.value	0x1ab
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_nonlocal_goto"
	.byte	0x8
	.value	0x1af
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"contains_functions"
	.byte	0x8
	.value	0x1b2
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_computed_jump"
	.byte	0x8
	.value	0x1b5
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"is_thunk"
	.byte	0x8
	.value	0x1ba
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"all_throwers_are_sibcalls"
	.byte	0x8
	.value	0x1c1
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"instrument_entry_exit"
	.byte	0x8
	.value	0x1c5
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"arc_profile"
	.byte	0x8
	.value	0x1c8
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"profile"
	.byte	0x8
	.value	0x1cb
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"limit_stack"
	.byte	0x8
	.value	0x1cf
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"stdarg"
	.byte	0x8
	.value	0x1d2
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"x_whole_function_mode_p"
	.byte	0x8
	.value	0x1d8
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x8
	.value	0x1e1
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_const_pool"
	.byte	0x8
	.value	0x1e4
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_pic_offset_table"
	.byte	0x8
	.value	0x1e7
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_eh_lsda"
	.byte	0x8
	.value	0x1ea
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"arg_pointer_save_area_init"
	.byte	0x8
	.value	0x1ed
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.long	.LASF24
	.byte	0x8
	.value	0x1fa
	.long	0x5af1
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"max_jumptable_ents"
	.byte	0x8
	.value	0x1fe
	.long	0x2e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x43da
	.uleb128 0x22
	.long	0x4dcf
	.byte	0x4
	.byte	0x3
	.value	0x84e
	.uleb128 0x9
	.string	"st"
	.byte	0x3
	.value	0x84f
	.long	0x3c7e
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x3
	.value	0x850
	.long	0x1af9
	.uleb128 0x9
	.string	"field_id"
	.byte	0x3
	.value	0x851
	.long	0x3c0
	.byte	0x0
	.uleb128 0xc
	.long	0x5519
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x3
	.value	0x7c5
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x7c6
	.long	0x3852
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"locus"
	.byte	0x3
	.value	0x7c7
	.long	0x11c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"uid"
	.byte	0x3
	.value	0x7c8
	.long	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"size"
	.byte	0x3
	.value	0x7c9
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1e
	.string	"mode"
	.byte	0x3
	.value	0x7ca
	.long	0x4c9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"external_flag"
	.byte	0x3
	.value	0x7cc
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"nonlocal_flag"
	.byte	0x3
	.value	0x7cd
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"regdecl_flag"
	.byte	0x3
	.value	0x7ce
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"inline_flag"
	.byte	0x3
	.value	0x7cf
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"bit_field_flag"
	.byte	0x3
	.value	0x7d0
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"virtual_flag"
	.byte	0x3
	.value	0x7d1
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"ignored_flag"
	.byte	0x3
	.value	0x7d2
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.long	.LASF16
	.byte	0x3
	.value	0x7d3
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"sbuf_flag"
	.byte	0x3
	.value	0x7d7
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"sdram_flag"
	.byte	0x3
	.value	0x7d8
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"v1buf_flag"
	.byte	0x3
	.value	0x7d9
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"v2buf_flag"
	.byte	0x3
	.value	0x7da
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"v4buf_flag"
	.byte	0x3
	.value	0x7db
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"in_system_header_flag"
	.byte	0x3
	.value	0x7df
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"common_flag"
	.byte	0x3
	.value	0x7e0
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"defer_output"
	.byte	0x3
	.value	0x7e1
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"transparent_union"
	.byte	0x3
	.value	0x7e2
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"static_ctor_flag"
	.byte	0x3
	.value	0x7e3
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"static_dtor_flag"
	.byte	0x3
	.value	0x7e4
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"artificial_flag"
	.byte	0x3
	.value	0x7e5
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"weak_flag"
	.byte	0x3
	.value	0x7e6
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"non_addr_const_p"
	.byte	0x3
	.value	0x7e8
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"no_instrument_function_entry_exit"
	.byte	0x3
	.value	0x7e9
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"comdat_flag"
	.byte	0x3
	.value	0x7ea
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"malloc_flag"
	.byte	0x3
	.value	0x7eb
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"no_limit_stack"
	.byte	0x3
	.value	0x7ec
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF5
	.byte	0x3
	.value	0x7ed
	.long	0x1b58
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"pure_flag"
	.byte	0x3
	.value	0x7ee
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF20
	.byte	0x3
	.value	0x7f0
	.long	0x3c0
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"non_addressable"
	.byte	0x3
	.value	0x7f1
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF21
	.byte	0x3
	.value	0x7f2
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"uninlinable"
	.byte	0x3
	.value	0x7f3
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"thread_local_flag"
	.byte	0x3
	.value	0x7f4
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"inlined_function_flag"
	.byte	0x3
	.value	0x7f5
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"threadprivate_flag"
	.byte	0x3
	.value	0x7f7
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF6
	.byte	0x3
	.value	0x7fa
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF7
	.byte	0x3
	.value	0x7fb
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF8
	.byte	0x3
	.value	0x7fc
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF9
	.byte	0x3
	.value	0x7fd
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x3
	.value	0x7fe
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF11
	.byte	0x3
	.value	0x7ff
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF12
	.byte	0x3
	.value	0x800
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF13
	.byte	0x3
	.value	0x801
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"syscall_linkage_flag"
	.byte	0x3
	.value	0x804
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"widen_retval_flag"
	.byte	0x3
	.value	0x805
	.long	0x3c0
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"emitted_by_gxx"
	.byte	0x3
	.value	0x808
	.long	0x3c0
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
	.long	0x4366
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1d
	.long	.LASF18
	.byte	0x3
	.value	0x81d
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"name"
	.byte	0x3
	.value	0x81e
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"context"
	.byte	0x3
	.value	0x81f
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"arguments"
	.byte	0x3
	.value	0x820
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"result"
	.byte	0x3
	.value	0x821
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"initial"
	.byte	0x3
	.value	0x822
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"initial_2"
	.byte	0x3
	.value	0x824
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"alias_target"
	.byte	0x3
	.value	0x825
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"thunk_delta"
	.byte	0x3
	.value	0x829
	.long	0x479
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1d
	.long	.LASF17
	.byte	0x3
	.value	0x82b
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"assembler_name"
	.byte	0x3
	.value	0x82c
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"section_name"
	.byte	0x3
	.value	0x82d
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1d
	.long	.LASF19
	.byte	0x3
	.value	0x82e
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x82f
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x830
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"u2"
	.byte	0x3
	.value	0x83c
	.long	0x439b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"saved_tree"
	.byte	0x3
	.value	0x83f
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"inlined_fns"
	.byte	0x3
	.value	0x843
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"vindex"
	.byte	0x3
	.value	0x845
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x846
	.long	0x479
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x1d
	.long	.LASF22
	.byte	0x3
	.value	0x848
	.long	0x5525
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x1e
	.string	"symtab_idx"
	.byte	0x3
	.value	0x84b
	.long	0x3c0
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x1e
	.string	"label_defined"
	.byte	0x3
	.value	0x84c
	.long	0x3c0
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
	.long	0x4d97
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x858
	.long	0x1b0a
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"sl_model_name"
	.byte	0x3
	.value	0x85c
	.long	0x1e9
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0x1a
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5519
	.uleb128 0x13
	.long	0x57a9
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
	.uleb128 0xc
	.long	0x57f8
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x864
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x865
	.long	0x3852
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"choice"
	.byte	0x3
	.value	0x866
	.long	0x552b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x867
	.long	0x4b0
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
	.long	0x1e9
	.uleb128 0x4
	.long	0x586d
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x8
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0x8
	.byte	0x18
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0x8
	.byte	0x19
	.long	0x4c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0x8
	.byte	0x1a
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0x8
	.byte	0x1b
	.long	0x586d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5807
	.uleb128 0x16
	.long	0x58bc
	.long	.LASF25
	.byte	0x10
	.byte	0x8
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0x8
	.byte	0x26
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0x8
	.byte	0x27
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.long	.LASF26
	.byte	0x8
	.byte	0x28
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0x8
	.byte	0x29
	.long	0x58bc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5873
	.uleb128 0x4
	.long	0x5a11
	.string	"emit_status"
	.byte	0x34
	.byte	0x8
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0x8
	.byte	0x3a
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0x8
	.byte	0x3d
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0x8
	.byte	0x44
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0x8
	.byte	0x45
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.long	.LASF26
	.byte	0x8
	.byte	0x4a
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.long	.LASF25
	.byte	0x8
	.byte	0x50
	.long	0x58bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0x8
	.byte	0x54
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0x8
	.byte	0x58
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0x8
	.byte	0x59
	.long	0x2d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0x8
	.byte	0x5f
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0x8
	.byte	0x65
	.long	0x4c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0x8
	.byte	0x69
	.long	0x5801
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0x8
	.byte	0x70
	.long	0x118d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x5af1
	.string	"expr_status"
	.byte	0x1c
	.byte	0x8
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0x8
	.byte	0x80
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0x8
	.byte	0x91
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0x8
	.byte	0x97
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0x8
	.byte	0x9c
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0x8
	.byte	0x9f
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0x8
	.byte	0xa2
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0x8
	.byte	0xa5
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x23
	.long	0x5b5b
	.long	.LASF24
	.byte	0x4
	.byte	0x8
	.value	0x1f1
	.uleb128 0x14
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x14
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x14
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1a
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5b5b
	.uleb128 0x1a
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5b6d
	.uleb128 0x3
	.byte	0x4
	.long	0x5a11
	.uleb128 0x3
	.byte	0x4
	.long	0x58c2
	.uleb128 0x1a
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5b8d
	.uleb128 0x1a
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5ba3
	.uleb128 0x1a
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5bc0
	.uleb128 0x1a
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5bd2
	.uleb128 0x1a
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5beb
	.uleb128 0xb
	.string	"float"
	.byte	0x4
	.byte	0x4
	.uleb128 0x24
	.long	0x5c40
	.byte	0x1
	.string	"begin_stmt_tree"
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.byte	0x42
	.long	0x5801
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x26
	.long	0x5c9f
	.byte	0x1
	.string	"add_stmt"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.long	0x1e9
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.byte	0x51
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x28
	.string	"add"
	.byte	0x1
	.byte	0x57
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x28
	.string	"pos"
	.byte	0x1
	.byte	0x5b
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x5ce5
	.byte	0x1
	.string	"add_decl_stmt"
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x29
	.long	.LASF1
	.byte	0x1
	.byte	0x74
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"decl_stmt"
	.byte	0x1
	.byte	0x76
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x26
	.long	0x5d63
	.byte	0x1
	.string	"add_scope_stmt"
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.long	0x1e9
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x25
	.string	"begin_p"
	.byte	0x1
	.byte	0x89
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"partial_p"
	.byte	0x1
	.byte	0x8a
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"stack_ptr"
	.byte	0x1
	.byte	0x8c
	.long	0x5801
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"ss"
	.byte	0x1
	.byte	0x8d
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"top"
	.byte	0x1
	.byte	0x8e
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x5da5
	.byte	0x1
	.string	"finish_stmt_tree"
	.byte	0x1
	.byte	0xac
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.byte	0xab
	.long	0x5801
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"stmt"
	.byte	0x1
	.byte	0xad
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x26
	.long	0x5e1f
	.byte	0x1
	.string	"build_stmt"
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.long	0x1e9
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x25
	.string	"code"
	.byte	0x1
	.byte	0xc4
	.long	0x11d7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x28
	.string	"t"
	.byte	0x1
	.byte	0xc6
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF14
	.byte	0x1
	.byte	0xc7
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0xc8
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x27
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.byte	0xca
	.long	0x412
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LBB5
	.long	.LBE5
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x5e51
	.byte	0x1
	.string	"expand_cond"
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.long	0x1e9
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.byte	0xdf
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x24
	.long	0x5ea1
	.byte	0x1
	.string	"make_rtl_for_local_static"
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x29
	.long	.LASF1
	.byte	0x1
	.byte	0xee
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"asmspec"
	.byte	0x1
	.byte	0xf0
	.long	0x2d4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x5ed6
	.byte	0x1
	.string	"emit_local_var"
	.byte	0x1
	.value	0x113
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2e
	.long	.LASF1
	.byte	0x1
	.value	0x112
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.byte	0x1
	.string	"genrtl_do_pushlevel"
	.byte	0x1
	.value	0x12f
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2d
	.long	0x5f4b
	.byte	0x1
	.string	"genrtl_goto_stmt"
	.byte	0x1
	.value	0x139
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x30
	.string	"destination"
	.byte	0x1
	.value	0x138
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF27
	.long	0x66b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13406
	.byte	0x0
	.uleb128 0x2d
	.long	0x5f82
	.byte	0x1
	.string	"genrtl_expr_stmt"
	.byte	0x1
	.value	0x154
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2e
	.long	.LASF4
	.byte	0x1
	.value	0x153
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x5feb
	.byte	0x1
	.string	"genrtl_expr_stmt_value"
	.byte	0x1
	.value	0x163
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x2e
	.long	.LASF4
	.byte	0x1
	.value	0x161
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"want_value"
	.byte	0x1
	.value	0x162
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"maybe_last"
	.byte	0x1
	.value	0x162
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2d
	.long	0x602f
	.byte	0x1
	.string	"genrtl_decl_stmt"
	.byte	0x1
	.value	0x178
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x30
	.string	"t"
	.byte	0x1
	.value	0x177
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x179
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x6072
	.byte	0x1
	.string	"genrtl_if_stmt"
	.byte	0x1
	.value	0x19b
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x30
	.string	"t"
	.byte	0x1
	.value	0x19a
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"cond"
	.byte	0x1
	.value	0x19c
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x60b8
	.byte	0x1
	.string	"genrtl_while_stmt"
	.byte	0x1
	.value	0x1b0
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x30
	.string	"t"
	.byte	0x1
	.value	0x1af
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"cond"
	.byte	0x1
	.value	0x1b1
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x60fb
	.byte	0x1
	.string	"genrtl_do_stmt"
	.byte	0x1
	.value	0x1c6
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x30
	.string	"t"
	.byte	0x1
	.value	0x1c5
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"cond"
	.byte	0x1
	.value	0x1c7
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x6137
	.byte	0x1
	.string	"build_return_stmt"
	.byte	0x1
	.value	0x1e9
	.byte	0x1
	.long	0x1e9
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x2e
	.long	.LASF4
	.byte	0x1
	.value	0x1e8
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x6180
	.byte	0x1
	.string	"genrtl_return_stmt"
	.byte	0x1
	.value	0x1f2
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x30
	.string	"stmt"
	.byte	0x1
	.value	0x1f1
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF4
	.byte	0x1
	.value	0x1f3
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x61f6
	.byte	0x1
	.string	"genrtl_for_stmt"
	.byte	0x1
	.value	0x207
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x30
	.string	"t"
	.byte	0x1
	.value	0x206
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"cond"
	.byte	0x1
	.value	0x208
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"saved_filename"
	.byte	0x1
	.value	0x209
	.long	0x2d4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"saved_lineno"
	.byte	0x1
	.value	0x20a
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.byte	0x1
	.string	"build_break_stmt"
	.byte	0x1
	.value	0x234
	.byte	0x1
	.long	0x1e9
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x2f
	.byte	0x1
	.string	"genrtl_break_stmt"
	.byte	0x1
	.value	0x23c
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x35
	.byte	0x1
	.string	"build_continue_stmt"
	.byte	0x1
	.value	0x246
	.byte	0x1
	.long	0x1e9
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x34
	.long	0x62bc
	.byte	0x1
	.string	"build_omp_stmt"
	.byte	0x1
	.value	0x24e
	.byte	0x1
	.long	0x1e9
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x30
	.string	"c"
	.byte	0x1
	.value	0x24d
	.long	0x552b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"p"
	.byte	0x1
	.value	0x24d
	.long	0x4b0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x24f
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.byte	0x1
	.string	"genrtl_continue_stmt"
	.byte	0x1
	.value	0x25b
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x2d
	.long	0x6360
	.byte	0x1
	.string	"genrtl_scope_stmt"
	.byte	0x1
	.value	0x266
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x30
	.string	"t"
	.byte	0x1
	.value	0x265
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"block"
	.byte	0x1
	.value	0x267
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	0x6347
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x33
	.string	"note"
	.byte	0x1
	.value	0x272
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x27
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x33
	.string	"fn"
	.byte	0x1
	.value	0x27d
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x63a7
	.byte	0x1
	.string	"genrtl_switch_stmt"
	.byte	0x1
	.value	0x294
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x30
	.string	"t"
	.byte	0x1
	.value	0x293
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"cond"
	.byte	0x1
	.value	0x295
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x6414
	.byte	0x1
	.string	"build_case_label"
	.byte	0x1
	.value	0x2ab
	.byte	0x1
	.long	0x1e9
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x30
	.string	"low_value"
	.byte	0x1
	.value	0x2a8
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"high_value"
	.byte	0x1
	.value	0x2a9
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"label_decl"
	.byte	0x1
	.value	0x2aa
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2d
	.long	0x649c
	.byte	0x1
	.string	"genrtl_case_label"
	.byte	0x1
	.value	0x2b5
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x30
	.string	"case_label"
	.byte	0x1
	.value	0x2b4
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"duplicate"
	.byte	0x1
	.value	0x2b6
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"cleanup"
	.byte	0x1
	.value	0x2b7
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x33
	.string	"explained"
	.byte	0x1
	.value	0x2bc
	.long	0x2e7
	.byte	0x5
	.byte	0x3
	.long	explained.13687
	.byte	0x0
	.uleb128 0x2d
	.long	0x64d5
	.byte	0x1
	.string	"genrtl_compound_stmt"
	.byte	0x1
	.value	0x2cf
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x30
	.string	"t"
	.byte	0x1
	.value	0x2ce
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x6586
	.byte	0x1
	.string	"genrtl_asm_stmt"
	.byte	0x1
	.value	0x2e8
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x30
	.string	"cv_qualifier"
	.byte	0x1
	.value	0x2e2
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"string"
	.byte	0x1
	.value	0x2e3
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"output_operands"
	.byte	0x1
	.value	0x2e4
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.string	"input_operands"
	.byte	0x1
	.value	0x2e5
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.string	"clobbers"
	.byte	0x1
	.value	0x2e6
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x30
	.string	"asm_input_p"
	.byte	0x1
	.value	0x2e7
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0x0
	.uleb128 0x2d
	.long	0x65cd
	.byte	0x1
	.string	"genrtl_decl_cleanup"
	.byte	0x1
	.value	0x2ff
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x30
	.string	"t"
	.byte	0x1
	.value	0x2fe
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x300
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x65fb
	.byte	0x1
	.string	"prep_stmt"
	.byte	0x1
	.value	0x30b
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x30
	.string	"t"
	.byte	0x1
	.value	0x30a
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x668b
	.byte	0x1
	.string	"expand_stmt"
	.byte	0x1
	.value	0x317
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x30
	.string	"t"
	.byte	0x1
	.value	0x316
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	0x667a
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x33
	.string	"saved_stmts_are_full_exprs_p"
	.byte	0x1
	.value	0x31a
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x33
	.string	"note"
	.byte	0x1
	.value	0x363
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	.LASF27
	.long	0x669b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13779
	.byte	0x0
	.uleb128 0xf
	.long	0x669b
	.long	0x2df
	.uleb128 0x10
	.long	0x3d7
	.byte	0xb
	.byte	0x0
	.uleb128 0xa
	.long	0x668b
	.uleb128 0xf
	.long	0x66b0
	.long	0x2df
	.uleb128 0x10
	.long	0x3d7
	.byte	0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x66a0
	.uleb128 0xf
	.long	0x66c0
	.long	0x421
	.uleb128 0x37
	.byte	0x0
	.uleb128 0x38
	.string	"tree_code_length"
	.byte	0x3
	.byte	0x4e
	.long	0x66da
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x66b5
	.uleb128 0xf
	.long	0x66ef
	.long	0x1e9
	.uleb128 0x10
	.long	0x3d7
	.byte	0x3f
	.byte	0x0
	.uleb128 0x39
	.string	"global_trees"
	.byte	0x3
	.value	0x8ee
	.long	0x66df
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"input_filename"
	.byte	0x3
	.value	0xbf6
	.long	0x2d4
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"lineno"
	.byte	0x3
	.value	0xbf9
	.long	0x2e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"current_function_decl"
	.byte	0x3
	.value	0xc07
	.long	0x1e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"cfun"
	.byte	0x8
	.value	0x202
	.long	0x4d91
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"ridpointers"
	.byte	0xc
	.byte	0x8a
	.long	0x5801
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x6784
	.long	0x1e9
	.uleb128 0x10
	.long	0x3d7
	.byte	0x1e
	.byte	0x0
	.uleb128 0x38
	.string	"c_global_trees"
	.byte	0xc
	.byte	0xee
	.long	0x6774
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.long	0x67a8
	.byte	0x1
	.uleb128 0x3b
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3c
	.string	"lang_expand_stmt"
	.byte	0x1
	.byte	0x35
	.long	0x67c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lang_expand_stmt
	.uleb128 0x3
	.byte	0x4
	.long	0x679c
	.uleb128 0x3c
	.string	"lang_expand_decl_stmt"
	.byte	0x1
	.byte	0x3c
	.long	0x67c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lang_expand_decl_stmt
	.uleb128 0x39
	.string	"flag_guess_branch_prob"
	.byte	0xd
	.value	0x252
	.long	0x2e7
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
	.uleb128 0x16
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x31
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
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
	.long	0x301
	.value	0x2
	.long	.Ldebug_info0
	.long	0x6813
	.long	0x5c0e
	.string	"begin_stmt_tree"
	.long	0x5c40
	.string	"add_stmt"
	.long	0x5c9f
	.string	"add_decl_stmt"
	.long	0x5ce5
	.string	"add_scope_stmt"
	.long	0x5d63
	.string	"finish_stmt_tree"
	.long	0x5da5
	.string	"build_stmt"
	.long	0x5e1f
	.string	"expand_cond"
	.long	0x5e51
	.string	"make_rtl_for_local_static"
	.long	0x5ea1
	.string	"emit_local_var"
	.long	0x5ed6
	.string	"genrtl_do_pushlevel"
	.long	0x5efc
	.string	"genrtl_goto_stmt"
	.long	0x5f4b
	.string	"genrtl_expr_stmt"
	.long	0x5f82
	.string	"genrtl_expr_stmt_value"
	.long	0x5feb
	.string	"genrtl_decl_stmt"
	.long	0x602f
	.string	"genrtl_if_stmt"
	.long	0x6072
	.string	"genrtl_while_stmt"
	.long	0x60b8
	.string	"genrtl_do_stmt"
	.long	0x60fb
	.string	"build_return_stmt"
	.long	0x6137
	.string	"genrtl_return_stmt"
	.long	0x6180
	.string	"genrtl_for_stmt"
	.long	0x61f6
	.string	"build_break_stmt"
	.long	0x621d
	.string	"genrtl_break_stmt"
	.long	0x6241
	.string	"build_continue_stmt"
	.long	0x626b
	.string	"build_omp_stmt"
	.long	0x62bc
	.string	"genrtl_continue_stmt"
	.long	0x62e3
	.string	"genrtl_scope_stmt"
	.long	0x6360
	.string	"genrtl_switch_stmt"
	.long	0x63a7
	.string	"build_case_label"
	.long	0x6414
	.string	"genrtl_case_label"
	.long	0x649c
	.string	"genrtl_compound_stmt"
	.long	0x64d5
	.string	"genrtl_asm_stmt"
	.long	0x6586
	.string	"genrtl_decl_cleanup"
	.long	0x65cd
	.string	"prep_stmt"
	.long	0x65fb
	.string	"expand_stmt"
	.long	0x67a8
	.string	"lang_expand_stmt"
	.long	0x67cd
	.string	"lang_expand_decl_stmt"
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
.LASF6:
	.string	"lang_flag_0"
.LASF7:
	.string	"lang_flag_1"
.LASF8:
	.string	"lang_flag_2"
.LASF12:
	.string	"lang_flag_6"
.LASF3:
	.string	"mem_attrs"
.LASF4:
	.string	"expr"
.LASF0:
	.string	"common"
.LASF22:
	.string	"lang_specific"
.LASF26:
	.string	"sequence_rtl_expr"
.LASF25:
	.string	"sequence_stack"
.LASF24:
	.string	"function_frequency"
.LASF9:
	.string	"lang_flag_3"
.LASF2:
	.string	"unsigned int"
.LASF17:
	.string	"abstract_origin"
.LASF20:
	.string	"pointer_depth"
.LASF21:
	.string	"user_align"
.LASF18:
	.string	"size_unit"
.LASF23:
	.string	"args_size"
.LASF10:
	.string	"lang_flag_4"
.LASF11:
	.string	"lang_flag_5"
.LASF13:
	.string	"lang_flag_7"
.LASF16:
	.string	"abstract_flag"
.LASF15:
	.string	"ht_identifier"
.LASF27:
	.string	"__FUNCTION__"
.LASF5:
	.string	"built_in_class"
.LASF19:
	.string	"attributes"
.LASF1:
	.string	"decl"
.LASF14:
	.string	"length"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
