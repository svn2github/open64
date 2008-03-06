	.file	"decl2.c"
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
	.string	"member function"
.LC1:
	.string	"type"
	.align 4
.LC2:
	.string	"duplicate type qualifiers in %s declaration"
	.text
.globl grok_method_quals
	.type	grok_method_quals, @function
grok_method_quals:
.LFB15:
	.file 1 "../../../kg++fe/gnu/cp/decl2.c"
	.loc 1 150 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$52, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 151 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 152 0
	movl	-28(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 153 0
	movl	$0, -20(%ebp)
	.loc 1 154 0
	movl	$0, -16(%ebp)
	.loc 1 155 0
	movl	$0, -12(%ebp)
.L2:
.LBB2:
	.loc 1 159 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	cp_type_qual_from_rid@PLT
	movl	%eax, -8(%ebp)
	.loc 1 161 0
	movl	-12(%ebp), %eax
	orl	-20(%ebp), %eax
	andl	-8(%ebp), %eax
	testl	%eax, %eax
	je	.L3
	.loc 1 162 0
	movl	-8(%ebp), %eax
	orl	%eax, -16(%ebp)
	jmp	.L5
.L3:
	.loc 1 163 0
	movl	-8(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L6
	.loc 1 164 0
	movl	-8(%ebp), %eax
	orl	%eax, -12(%ebp)
	jmp	.L5
.L6:
	.loc 1 166 0
	movl	-8(%ebp), %eax
	orl	%eax, -20(%ebp)
.L5:
	.loc 1 167 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ebp)
.LBE2:
	.loc 1 169 0
	cmpl	$0, 16(%ebp)
	jne	.L2
	.loc 1 171 0
	cmpl	$0, -16(%ebp)
	je	.L9
	.loc 1 172 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L11
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
	jmp	.L13
.L11:
	leal	.LC1@GOTOFF(%ebx), %edx
	movl	%edx, -44(%ebp)
.L13:
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L9:
	.loc 1 176 0
	movl	$3, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, 8(%ebp)
	.loc 1 177 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L14
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L16
.L14:
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
.L16:
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	-40(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cplus_method_type@PLT
	movl	%eax, -28(%ebp)
	.loc 1 181 0
	cmpl	$0, -24(%ebp)
	je	.L17
	.loc 1 182 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_exception_variant@PLT
	movl	%eax, -28(%ebp)
.L17:
	.loc 1 184 0
	movl	12(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 185 0
	movl	-12(%ebp), %eax
	.loc 1 186 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	grok_method_quals, .-grok_method_quals
	.local	already_warned.16362
	.comm	already_warned.16362,4,4
	.section	.rodata
	.align 4
.LC3:
	.string	"template `%#D' instantiated in file without #pragma interface"
	.align 4
.LC4:
	.string	"template `%#D' defined in file without #pragma interface"
	.text
.globl warn_if_unknown_interface
	.type	warn_if_unknown_interface, @function
warn_if_unknown_interface:
.LFB16:
	.loc 1 195 0
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
	.loc 1 197 0
	movl	already_warned.16362@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, already_warned.16362@GOTOFF(%ebx)
	movl	already_warned.16362@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L27
	.loc 1 200 0
	movl	flag_alt_external_templates@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L23
.LBB3:
	.loc 1 202 0
	call	tinst_for_decl@PLT
	movl	%eax, -16(%ebp)
	.loc 1 203 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 204 0
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 206 0
	cmpl	$0, -16(%ebp)
	je	.L25
	.loc 1 208 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	sarl	$12, %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 209 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L25:
	.loc 1 211 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 213 0
	movl	lineno@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 214 0
	movl	input_filename@GOT(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L27
.L23:
.LBE3:
	.loc 1 217 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_warning_at@PLT
.L27:
	.loc 1 219 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	warn_if_unknown_interface, .-warn_if_unknown_interface
.globl grok_x_components
	.type	grok_x_components, @function
grok_x_components:
.LFB17:
	.loc 1 226 0
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
	.loc 1 229 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strip_attrs@PLT
	movl	%eax, 8(%ebp)
	.loc 1 231 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_tag_decl@PLT
	.loc 1 232 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_tree_list@PLT
	movl	%eax, (%esp)
	call	groktypename@PLT
	movl	%eax, -8(%ebp)
	.loc 1 236 0
	cmpl	$0, -8(%ebp)
	je	.L40
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L31
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L40
.L31:
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L33
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L33
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L33
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L33
	movl	-8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L40
.L33:
	movl	-8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L38
	.loc 1 237 0
	jmp	.L40
.L38:
	.loc 1 239 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_anonymous_aggr@PLT
	.loc 1 240 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, (%esp)
	call	finish_member_declaration@PLT
.L40:
	.loc 1 241 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	grok_x_components, .-grok_x_components
.globl cp_build_parm_decl
	.type	cp_build_parm_decl, @function
cp_build_parm_decl:
.LFB18:
	.loc 1 250 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$36, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 251 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$36, (%esp)
	call	build_decl@PLT
	movl	%eax, -8(%ebp)
	.loc 1 252 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	type_passed_as@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 253 0
	movl	-8(%ebp), %eax
	.loc 1 254 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	cp_build_parm_decl, .-cp_build_parm_decl
.globl build_artificial_parm
	.type	build_artificial_parm, @function
build_artificial_parm:
.LFB19:
	.loc 1 263 0
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
	.loc 1 264 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_build_parm_decl@PLT
	movl	%eax, -8(%ebp)
	.loc 1 265 0
	movl	-8(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 268 0
	movl	-8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$16, %eax
	movb	%al, 9(%edx)
	.loc 1 269 0
	movl	-8(%ebp), %eax
	.loc 1 270 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	build_artificial_parm, .-build_artificial_parm
.globl maybe_retrofit_in_chrg
	.type	maybe_retrofit_in_chrg, @function
maybe_retrofit_in_chrg:
.LFB20:
	.loc 1 288 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	pushl	%ebx
.LCFI22:
	subl	$52, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 292 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L55
	.loc 1 297 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	jne	.L55
	.loc 1 302 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L49
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L55
.L49:
	.loc 1 306 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 307 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 308 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 310 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 314 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L51
	.loc 1 316 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	52(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	224(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_artificial_parm@PLT
	movl	%eax, -12(%ebp)
	.loc 1 319 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 320 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 323 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	52(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	hash_tree_chain@PLT
	movl	%eax, -20(%ebp)
	.loc 1 325 0
	movl	8(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	5(%edx), %eax
	orl	$-128, %eax
	movb	%al, 5(%edx)
.L51:
	.loc 1 329 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	220(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_artificial_parm@PLT
	movl	%eax, -12(%ebp)
	.loc 1 330 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 331 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 332 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	hash_tree_chain@PLT
	movl	%eax, -20(%ebp)
	.loc 1 335 0
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 338 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cplus_method_type@PLT
	movl	%eax, -8(%ebp)
	.loc 1 340 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L53
	.loc 1 341 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_exception_variant@PLT
	movl	%eax, -8(%ebp)
.L53:
	.loc 1 343 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 346 0
	movl	8(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	5(%edx), %eax
	orl	$64, %eax
	movb	%al, 5(%edx)
.L55:
	.loc 1 347 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	maybe_retrofit_in_chrg, .-maybe_retrofit_in_chrg
	.section	.rodata
	.align 4
.LC5:
	.string	"name missing for member function"
.LC6:
	.string	"<anonymous>"
	.text
.globl grokclassfn
	.type	grokclassfn, @function
grokclassfn:
.LFB21:
	.loc 1 374 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$52, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 375 0
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 376 0
	movl	$0, -20(%ebp)
	.loc 1 380 0
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movb	$1, 4(%eax)
	.loc 1 382 0
	cmpl	$0, -24(%ebp)
	jne	.L57
	.loc 1 384 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 385 0
	movl	$11, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%eax, -24(%ebp)
	.loc 1 386 0
	movl	12(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 52(%edx)
.L57:
	.loc 1 389 0
	cmpl	$0, 20(%ebp)
	je	.L59
	.loc 1 390 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	grok_method_quals@PLT
	movl	%eax, -20(%ebp)
.L59:
	.loc 1 392 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L61
.LBB4:
	.loc 1 397 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 403 0
	orl	$1, -20(%ebp)
	.loc 1 404 0
	movl	$3, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, -12(%ebp)
	.loc 1 405 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	232(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_artificial_parm@PLT
	movl	%eax, -8(%ebp)
	.loc 1 406 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	c_apply_type_quals_to_decl@PLT
	.loc 1 407 0
	movl	last_function_parms@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 408 0
	movl	last_function_parms@GOT(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
.L61:
.LBE4:
	.loc 1 411 0
	movl	last_function_parms@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 412 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 56(%edx)
	.loc 1 414 0
	cmpl	$1, 16(%ebp)
	jne	.L63
	.loc 1 415 0
	movl	12(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	5(%edx), %eax
	orl	$4, %eax
	movb	%al, 5(%edx)
.L63:
	.loc 1 417 0
	cmpl	$1, 16(%ebp)
	je	.L65
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L67
.L65:
	.loc 1 418 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_retrofit_in_chrg@PLT
.L67:
	.loc 1 420 0
	cmpl	$1, 16(%ebp)
	jne	.L70
	.loc 1 422 0
	movl	12(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	5(%edx), %eax
	orl	$4, %eax
	movb	%al, 5(%edx)
	.loc 1 423 0
	movl	8(%ebp), %edx
	movzbl	39(%edx), %eax
	orl	$4, %eax
	movb	%al, 39(%edx)
.L70:
	.loc 1 425 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	grokclassfn, .-grokclassfn
	.section	.rodata
	.align 4
.LC7:
	.string	"parser may be lost: is there a '{' missing somewhere?"
	.align 4
.LC8:
	.string	"ambiguous conversion for array subscript"
	.align 4
.LC9:
	.string	"invalid types `%T[%T]' for array subscript"
	.text
.globl grok_array_decl
	.type	grok_array_decl, @function
grok_array_decl:
.LFB22:
	.loc 1 433 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$68, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 434 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 437 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L72
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L74
.L72:
	.loc 1 438 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L75
.L74:
	.loc 1 439 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L76
	.loc 1 440 0
	cmpl	$0, -24(%ebp)
	je	.L78
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L80
.L78:
	movl	$0, -40(%ebp)
.L80:
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$44, (%esp)
	call	build_min@PLT
	movl	%eax, -44(%ebp)
	jmp	.L75
.L76:
	.loc 1 443 0
	cmpl	$0, -24(%ebp)
	jne	.L81
	.loc 1 447 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 448 0
	movl	$0, -44(%ebp)
	jmp	.L75
.L81:
	.loc 1 451 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L83
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L85
.L83:
	.loc 1 453 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L85:
	.loc 1 456 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L86
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L86
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L86
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L86
	movl	-24(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L86
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L86
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L86
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L86
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L86
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L96
.L86:
	.loc 1 457 0
	movl	$0, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	$44, (%esp)
	call	build_opfncall@PLT
	movl	%eax, -44(%ebp)
	jmp	.L75
.L96:
	.loc 1 464 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L97
	.loc 1 465 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L99
.L97:
	.loc 1 467 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	build_expr_type_conversion@PLT
	movl	%eax, -20(%ebp)
.L99:
	.loc 1 469 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L100
	.loc 1 470 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L102
.L100:
	.loc 1 472 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	build_expr_type_conversion@PLT
	movl	%eax, -16(%ebp)
.L102:
	.loc 1 474 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$5, (%esp)
	call	build_expr_type_conversion@PLT
	movl	%eax, -12(%ebp)
	.loc 1 475 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$5, (%esp)
	call	build_expr_type_conversion@PLT
	movl	%eax, -8(%ebp)
	.loc 1 477 0
	cmpl	$0, -20(%ebp)
	je	.L103
	cmpl	$0, -8(%ebp)
	je	.L103
	cmpl	$0, -12(%ebp)
	je	.L103
	cmpl	$0, -16(%ebp)
	je	.L103
	.loc 1 478 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L103:
	.loc 1 480 0
	cmpl	$0, -20(%ebp)
	je	.L108
	cmpl	$0, -8(%ebp)
	je	.L108
	.loc 1 481 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 480 0
	jmp	.L111
.L108:
	.loc 1 482 0
	cmpl	$0, -12(%ebp)
	je	.L112
	cmpl	$0, -16(%ebp)
	je	.L112
	.loc 1 483 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 482 0
	jmp	.L111
.L112:
	.loc 1 486 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 488 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L75
.L111:
	.loc 1 491 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L115
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L117
.L115:
	.loc 1 492 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L117:
	.loc 1 494 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_array_ref@PLT
	movl	%eax, -44(%ebp)
.L75:
	movl	-44(%ebp), %eax
	.loc 1 495 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	grok_array_decl, .-grok_array_decl
	.section	.rodata
	.align 4
.LC10:
	.string	"type `%#T' argument given to `delete', expected pointer"
	.align 4
.LC11:
	.string	"anachronistic use of array size in vector delete"
	.align 4
.LC12:
	.string	"cannot delete a function.  Only pointer-to-objects are valid arguments to `delete'"
.LC13:
	.string	"deleting `%T' is undefined"
.LC14:
	.string	"deleting array `%#D'"
	.text
.globl delete_sanity
	.type	delete_sanity, @function
delete_sanity:
.LFB23:
	.loc 1 509 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$52, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 513 0
	movl	$0, -8(%ebp)
	.loc 1 515 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L120
	.loc 1 516 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L122
.L120:
	.loc 1 518 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L123
	.loc 1 520 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$183, (%esp)
	call	build_min@PLT
	movl	%eax, -16(%ebp)
	.loc 1 521 0
	movl	20(%ebp), %eax
	andl	$1, %eax
	movl	-16(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	11(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 11(%edx)
	.loc 1 522 0
	movl	16(%ebp), %eax
	andl	$1, %eax
	movl	-16(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	11(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 523 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L122
.L123:
	.loc 1 526 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L125
	.loc 1 527 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 8(%ebp)
.L125:
	.loc 1 528 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, 8(%ebp)
	.loc 1 529 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	stabilize_reference@PLT
	movl	%eax, -16(%ebp)
	.loc 1 530 0
	movl	$1, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	build_expr_type_conversion@PLT
	movl	%eax, -16(%ebp)
	.loc 1 532 0
	cmpl	$0, -16(%ebp)
	je	.L127
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L129
.L127:
	.loc 1 534 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 536 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L122
.L129:
	.loc 1 539 0
	cmpl	$2, 16(%ebp)
	jne	.L130
	.loc 1 541 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -8(%ebp)
	.loc 1 542 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L130:
	.loc 1 545 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 550 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L132
	.loc 1 552 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 553 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L122
.L132:
	.loc 1 557 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L134
	.loc 1 559 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 560 0
	movl	$0, 16(%ebp)
.L134:
	.loc 1 564 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L136
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L136
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L136
	.loc 1 567 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L136:
	.loc 1 570 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L140
	.loc 1 571 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, -24(%ebp)
	jmp	.L122
.L140:
	.loc 1 573 0
	cmpl	$0, 16(%ebp)
	je	.L142
	.loc 1 574 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vec_delete@PLT
	movl	%eax, -24(%ebp)
	jmp	.L122
.L142:
	.loc 1 577 0
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$3, 12(%esp)
	movl	$7, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_delete@PLT
	movl	%eax, -24(%ebp)
.L122:
	movl	-24(%ebp), %eax
	.loc 1 579 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	delete_sanity, .-delete_sanity
	.section	.rodata
	.type	__FUNCTION__.16697, @object
	.size	__FUNCTION__.16697, 22
__FUNCTION__.16697:
	.string	"check_member_template"
	.align 4
.LC15:
	.string	"../../../kg++fe/gnu/cp/decl2.c"
	.align 4
.LC16:
	.string	"invalid declaration of member template `%#D' in local class"
	.align 4
.LC17:
	.string	"invalid use of `virtual' in template declaration of `%#D'"
.LC18:
	.string	"template declaration of `%#D'"
	.text
.globl check_member_template
	.type	check_member_template, @function
check_member_template:
.LFB24:
	.loc 1 587 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	pushl	%ebx
.LCFI38:
	subl	$36, %esp
.LCFI39:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 590 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L146
	leal	__FUNCTION__.16697@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$590, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L146:
	.loc 1 591 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 593 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L148
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L150
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L148
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L148
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L148
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L148
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L150
.L148:
	.loc 1 597 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L156
	.loc 1 601 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L156:
	.loc 1 604 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L158
	movl	-8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L158
	.loc 1 609 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 612 0
	movl	-8(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$-33, %eax
	movb	%al, 33(%edx)
.L158:
	.loc 1 617 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %edx
	orl	$64, %edx
	movb	%dl, 33(%eax)
	.loc 1 593 0
	jmp	.L162
.L150:
	.loc 1 620 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L162:
	.loc 1 621 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	check_member_template, .-check_member_template
	.type	acceptable_java_type, @function
acceptable_java_type:
.LFB25:
	.loc 1 628 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	subl	$20, %esp
.LCFI42:
	.loc 1 629 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L164
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L166
.L164:
	.loc 1 630 0
	movl	$1, -20(%ebp)
	jmp	.L167
.L166:
	.loc 1 631 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L168
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L170
.L168:
	.loc 1 633 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 634 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L170
.LBB5:
	.loc 1 637 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L172
	.loc 1 638 0
	movl	$0, -20(%ebp)
	jmp	.L167
.L172:
	.loc 1 639 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	jne	.L174
	.loc 1 640 0
	movl	$1, -20(%ebp)
	jmp	.L167
.L174:
	.loc 1 641 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 642 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 643 0
	jmp	.L176
.L177:
	.loc 1 645 0
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, 8(%ebp)
	.loc 1 646 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L178
	.loc 1 647 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L178:
	.loc 1 648 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L176
	.loc 1 649 0
	movl	$0, -20(%ebp)
	jmp	.L167
.L176:
	.loc 1 643 0
	subl	$1, -4(%ebp)
	cmpl	$0, -4(%ebp)
	jns	.L177
	.loc 1 651 0
	movl	$1, -20(%ebp)
	jmp	.L167
.L170:
.LBE5:
	.loc 1 654 0
	movl	$0, -20(%ebp)
.L167:
	movl	-20(%ebp), %eax
	.loc 1 655 0
	leave
	ret
.LFE25:
	.size	acceptable_java_type, .-acceptable_java_type
	.section	.rodata
	.align 4
.LC19:
	.string	"Java method '%D' has non-Java return type `%T'"
	.align 4
.LC20:
	.string	"Java method '%D' has non-Java parameter type `%T'"
	.text
.globl check_java_method
	.type	check_java_method, @function
check_java_method:
.LFB26:
	.loc 1 664 0
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
	.loc 1 665 0
	movl	$0, -20(%ebp)
	.loc 1 666 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 667 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 668 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	acceptable_java_type
	testl	%eax, %eax
	jne	.L186
	.loc 1 670 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 672 0
	addl	$1, -20(%ebp)
	.loc 1 674 0
	jmp	.L186
.L187:
.LBB6:
	.loc 1 676 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 677 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	acceptable_java_type
	testl	%eax, %eax
	jne	.L188
	.loc 1 679 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 681 0
	addl	$1, -20(%ebp)
.L188:
.LBE6:
	.loc 1 674 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L186:
	cmpl	$0, -16(%ebp)
	jne	.L187
	.loc 1 684 0
	cmpl	$0, -20(%ebp)
	sete	%al
	movzbl	%al, %eax
	.loc 1 685 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	check_java_method, .-check_java_method
	.section	.rodata
	.align 4
.LC21:
	.string	"prototype for `%#D' does not match any in class `%T'"
.LC22:
	.string	"                %#D"
.LC23:
	.string	"candidates are: %#D"
.LC24:
	.string	"candidate is: %#D"
	.align 4
.LC25:
	.string	"no `%#D' member function declared in class `%T'"
	.text
.globl check_classfn
	.type	check_classfn, @function
check_classfn:
.LFB27:
	.loc 1 694 0
	pushl	%ebp
.LCFI47:
	movl	%esp, %ebp
.LCFI48:
	pushl	%edi
.LCFI49:
	pushl	%esi
.LCFI50:
	pushl	%ebx
.LCFI51:
	subl	$108, %esp
.LCFI52:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 698 0
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	testb	%al, %al
	je	.L193
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L195
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	je	.L193
.L195:
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	is_member_template@PLT
	testl	%eax, %eax
	je	.L193
	.loc 1 712 0
	movl	$0, -96(%ebp)
	jmp	.L198
.L193:
	.loc 1 715 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L199
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	60(%eax), %esi
	movl	64(%eax), %edi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	template_class_depth@PLT
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L201
.L199:
	movl	$1, -92(%ebp)
	jmp	.L202
.L201:
	movl	$0, -92(%ebp)
.L202:
	movl	-92(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 718 0
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L203
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	188(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L205
.L203:
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L206
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	200(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L208
.L206:
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -84(%ebp)
.L208:
	movl	-84(%ebp), %edx
	movl	%edx, -88(%ebp)
.L205:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
	movl	-88(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_fnfields_1@PLT
	movl	%eax, -48(%ebp)
	.loc 1 723 0
	cmpl	$0, -48(%ebp)
	js	.L209
.LBB7:
	.loc 1 725 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 726 0
	movl	$0, -32(%ebp)
	.loc 1 728 0
	movl	$0, -28(%ebp)
	.loc 1 730 0
	movl	-48(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -36(%ebp)
	.loc 1 731 0
	jmp	.L211
.L212:
.LBB8:
	.loc 1 735 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L213
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L215
.L213:
	movl	-36(%ebp), %eax
	movl	%eax, -80(%ebp)
.L215:
	movl	-80(%ebp), %edx
	movl	%edx, -32(%ebp)
	.loc 1 736 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 737 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 746 0
	movl	-32(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L216
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L216
	.loc 1 748 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L216:
	.loc 1 752 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	sete	%al
	movzbl	%al, %eax
	cmpl	-44(%ebp), %eax
	jne	.L219
	.loc 1 755 0
	movl	-32(%ebp), %eax
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
	je	.L219
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	compparms@PLT
	testl	%eax, %eax
	je	.L219
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	setne	%dl
	movl	-32(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	sete	%al
	xorl	%edx, %eax
	testb	%al, %al
	je	.L219
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	jne	.L224
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %edx
	movl	-32(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jne	.L219
.L224:
	.loc 1 763 0
	movl	-32(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L198
.L219:
.LBE8:
	.loc 1 731 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L226
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L228
.L226:
	movl	$0, -76(%ebp)
.L228:
	movl	-76(%ebp), %edx
	movl	%edx, -36(%ebp)
.L211:
	cmpl	$0, -36(%ebp)
	jne	.L212
	.loc 1 765 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 767 0
	movl	-32(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	setne	%al
	movb	%al, -13(%ebp)
	.loc 1 769 0
	cmpb	$0, -13(%ebp)
	je	.L230
	.loc 1 770 0
	movl	$2, -48(%ebp)
.L230:
	.loc 1 771 0
	movl	-48(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -36(%ebp)
	.loc 1 772 0
	jmp	.L232
.L233:
	.loc 1 774 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L234
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L236
.L234:
	movl	-36(%ebp), %eax
	movl	%eax, -72(%ebp)
.L236:
	movl	-72(%ebp), %edx
	movl	%edx, -32(%ebp)
	.loc 1 775 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L237
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L239
.L237:
	movl	$0, -68(%ebp)
.L239:
	movl	-68(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 777 0
	cmpl	$0, -36(%ebp)
	jne	.L240
	cmpb	$0, -13(%ebp)
	je	.L240
	.loc 1 779 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-48(%ebp), %eax
	jle	.L243
	.loc 1 781 0
	addl	$1, -48(%ebp)
	.loc 1 782 0
	movl	-48(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -36(%ebp)
	.loc 1 783 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L245
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L247
.L245:
	movl	-36(%ebp), %edx
	movl	%edx, -64(%ebp)
.L247:
	movl	-64(%ebp), %edx
	movl	52(%edx), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L240
	.loc 1 785 0
	movl	$0, -36(%ebp)
	.loc 1 786 0
	movb	$0, -13(%ebp)
	jmp	.L240
.L243:
	.loc 1 790 0
	movb	$0, -13(%ebp)
.L240:
	.loc 1 792 0
	cmpl	$0, -28(%ebp)
	je	.L250
	.loc 1 793 0
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	.L252
.L250:
	.loc 1 794 0
	cmpl	$0, -36(%ebp)
	je	.L253
	.loc 1 795 0
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	.L252
.L253:
	.loc 1 797 0
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.L252:
	.loc 1 798 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
.L232:
	.loc 1 772 0
	cmpl	$0, -36(%ebp)
	jne	.L233
	jmp	.L256
.L209:
.LBE7:
	.loc 1 801 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L257
	.loc 1 802 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_incomplete_type_diagnostic@PLT
	jmp	.L256
.L257:
	.loc 1 804 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L256:
	.loc 1 811 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L259
	.loc 1 812 0
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_method@PLT
.L259:
	.loc 1 813 0
	movl	$0, -96(%ebp)
.L198:
	movl	-96(%ebp), %eax
	.loc 1 814 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE27:
	.size	check_classfn, .-check_classfn
	.local	explained.16983
	.comm	explained.16983,4,4
	.section	.rodata
	.align 4
	.type	__FUNCTION__.16982, @object
	.size	__FUNCTION__.16982, 31
__FUNCTION__.16982:
	.string	"finish_static_data_member_decl"
.LC26:
	.string	"pending_statics"
	.align 4
.LC27:
	.string	"local class `%#T' shall not have static data member `%#D'"
	.align 4
.LC28:
	.string	"initializer invalid for static member with constructor"
	.align 4
.LC29:
	.string	"(an out of class initialization is required)"
	.text
.globl finish_static_data_member_decl
	.type	finish_static_data_member_decl, @function
finish_static_data_member_decl:
.LFB28:
	.loc 1 827 0
	pushl	%ebp
.LCFI53:
	movl	%esp, %ebp
.LCFI54:
	pushl	%esi
.LCFI55:
	pushl	%ebx
.LCFI56:
	subl	$16, %esp
.LCFI57:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 828 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L263
	leal	__FUNCTION__.16982@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$828, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L263:
	.loc 1 830 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 836 0
	cmpl	$0, 16(%ebp)
	jne	.L265
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L265
	.loc 1 837 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 68(%eax)
.L265:
	.loc 1 839 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L268
	.loc 1 841 0
	movl	pending_statics@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L270
	.loc 1 842 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$14, 4(%esp)
	movl	$32, (%esp)
	call	varray_init@PLT
	movl	%eax, pending_statics@GOTOFF(%ebx)
.L270:
	.loc 1 843 0
	movl	pending_statics@GOTOFF(%ebx), %eax
	movl	4(%eax), %edx
	movl	pending_statics@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L272
	movl	pending_statics@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	pending_statics@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	varray_grow@PLT
	movl	%eax, pending_statics@GOTOFF(%ebx)
.L272:
	movl	pending_statics@GOTOFF(%ebx), %esi
	movl	pending_statics@GOTOFF(%ebx), %ecx
	movl	4(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
.L268:
	.loc 1 846 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	decl_function_context@PLT
	testl	%eax, %eax
	je	.L274
	.loc 1 847 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L274:
	.loc 1 851 0
	cmpl	$0, 12(%ebp)
	je	.L276
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L276
.LBB9:
	.loc 1 855 0
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 856 0
	movl	explained.16983@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L279
	.loc 1 858 0
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 859 0
	movl	$1, explained.16983@GOTOFF(%ebx)
.L279:
	.loc 1 861 0
	movl	$0, 12(%ebp)
.L276:
.LBE9:
	.loc 1 865 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	andl	$1, %eax
	testb	%al, %al
	je	.L281
	cmpl	$0, 12(%ebp)
	jne	.L281
	.loc 1 866 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %edx
	orl	$1, %edx
	movb	%dl, 10(%eax)
.L281:
	.loc 1 867 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 68(%edx)
	.loc 1 868 0
	movl	8(%ebp), %edx
	movzbl	38(%edx), %eax
	orl	$1, %eax
	movb	%al, 38(%edx)
	.loc 1 870 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_finish_decl@PLT
	.loc 1 871 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE28:
	.size	finish_static_data_member_decl, .-finish_static_data_member_decl
	.local	explained.17059
	.comm	explained.17059,4,4
	.section	.rodata
	.type	__FUNCTION__.17060, @object
	.size	__FUNCTION__.17060, 10
__FUNCTION__.17060:
	.string	"grokfield"
	.align 4
.LC30:
	.string	"invalid data member initialization"
	.align 4
.LC31:
	.string	"(use `=' to initialize static data members)"
	.align 4
.LC32:
	.string	"typedef `%D' is initialized (use __typeof__ instead)"
.LC33:
	.string	"_vptr"
	.align 4
.LC34:
	.string	"member `%D' conflicts with virtual function table field name"
	.align 4
.LC35:
	.string	"`%D' is already defined in `%T'"
	.align 4
.LC36:
	.string	"field initializer is not constant"
	.align 4
.LC37:
	.string	"`asm' specifiers are not permitted on non-static data members"
	.text
.globl grokfield
	.type	grokfield, @function
grokfield:
.LFB29:
	.loc 1 894 0
	pushl	%ebp
.LCFI58:
	movl	%esp, %ebp
.LCFI59:
	pushl	%edi
.LCFI60:
	pushl	%esi
.LCFI61:
	pushl	%ebx
.LCFI62:
	subl	$60, %esp
.LCFI63:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 896 0
	movl	$0, -20(%ebp)
	.loc 1 897 0
	movl	$128, -16(%ebp)
	.loc 1 900 0
	cmpl	$0, 16(%ebp)
	jne	.L286
	cmpl	$0, 8(%ebp)
	je	.L286
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$54, %al
	jne	.L286
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L286
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	je	.L291
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-71, %al
	jne	.L286
.L291:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	parmlist_is_exprlist@PLT
	testl	%eax, %eax
	je	.L286
.LBB10:
	.loc 1 917 0
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 918 0
	movl	explained.17059@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L294
	.loc 1 920 0
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 921 0
	movl	$1, explained.17059@GOTOFF(%ebx)
.L294:
	.loc 1 924 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 925 0
	movl	$0, -16(%ebp)
.L286:
.LBE10:
	.loc 1 928 0
	cmpl	$0, 12(%ebp)
	jne	.L296
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-71, %al
	jne	.L296
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L296
	.loc 1 933 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L300
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L300
	jmp	.L303
.L300:
	.loc 1 935 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L303
	.loc 1 936 0
	call	pop_nested_class@PLT
.L303:
	.loc 1 937 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_class_using_decl@PLT
	movl	%eax, -32(%ebp)
	jmp	.L305
.L296:
	.loc 1 940 0
	cmpl	$0, 16(%ebp)
	je	.L306
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L306
	movl	16(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L306
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L306
	.loc 1 944 0
	movl	$0, 16(%ebp)
.L306:
	.loc 1 946 0
	cmpl	$0, 16(%ebp)
	setne	%al
	movzbl	%al, %edx
	leal	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$4, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	grokdeclarator@PLT
	movl	%eax, -24(%ebp)
	.loc 1 947 0
	movl	-24(%ebp), %eax
	testl	%eax, %eax
	je	.L311
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L313
.L311:
	.loc 1 949 0
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L305
.L313:
	.loc 1 950 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L314
	.loc 1 951 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L305
.L314:
	.loc 1 953 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L316
	cmpl	$0, 16(%ebp)
	je	.L316
	.loc 1 955 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 956 0
	movl	$0, 16(%ebp)
.L316:
	.loc 1 960 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L319
	.loc 1 961 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L305
.L319:
	.loc 1 963 0
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L321
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L321
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	leal	.LC33@GOTOFF(%ebx), %ecx
	movl	%ecx, -40(%ebp)
	movl	$6, -44(%ebp)
	cld
	movl	-36(%ebp), %esi
	movl	-40(%ebp), %edi
	movl	-44(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L321
	.loc 1 966 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L321:
	.loc 1 970 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L325
	.loc 1 972 0
	movl	-24(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$2, %eax
	movb	%al, 33(%edx)
	.loc 1 973 0
	movl	-24(%ebp), %edx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 56(%edx)
	.loc 1 975 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L327
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L329
.L327:
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L330
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L330
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L330
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L330
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L329
.L330:
	.loc 1 976 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %edx
	movzbl	8(%edx), %eax
	orl	$16, %eax
	movb	%al, 8(%edx)
.L329:
	.loc 1 978 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L335
	.loc 1 979 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	push_template_decl@PLT
	movl	%eax, -24(%ebp)
.L335:
	.loc 1 981 0
	movl	-24(%ebp), %esi
	movl	%esi, -32(%ebp)
	jmp	.L305
.L325:
	.loc 1 984 0
	movl	-24(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L337
	.loc 1 986 0
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 988 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L305
.L337:
	.loc 1 991 0
	cmpl	$0, 20(%ebp)
	je	.L339
	.loc 1 992 0
	movl	20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
.L339:
	.loc 1 994 0
	cmpl	$0, 16(%ebp)
	je	.L341
	.loc 1 996 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L343
	.loc 1 998 0
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	grok_function_init
	.loc 1 999 0
	movl	$0, 16(%ebp)
	jmp	.L341
.L343:
	.loc 1 1001 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L345
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	je	.L345
	.loc 1 1003 0
	movl	$0, 16(%ebp)
	.loc 1 1001 0
	jmp	.L341
.L345:
	.loc 1 1008 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L348
	.loc 1 1010 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L350
	.loc 1 1011 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 16(%ebp)
	jmp	.L348
.L350:
	.loc 1 1013 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	digest_init@PLT
	movl	%eax, 16(%ebp)
.L348:
	.loc 1 1016 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L341
	.loc 1 1018 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	jne	.L353
	.loc 1 1019 0
	movl	16(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 16(%ebp)
	jmp	.L355
.L353:
	.loc 1 1020 0
	movl	16(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L356
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L356
	.loc 1 1021 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_constant_value@PLT
	movl	%eax, 16(%ebp)
	.loc 1 1020 0
	jmp	.L355
.L356:
	.loc 1 1022 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L355
	.loc 1 1023 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	digest_init@PLT
	movl	%eax, 16(%ebp)
.L355:
	.loc 1 1024 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L341
	movl	16(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L341
	.loc 1 1029 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L362
	movl	16(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L341
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L362
	movl	16(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L341
.L362:
	.loc 1 1033 0
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1034 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ebp)
.L341:
	.loc 1 1041 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L366
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	je	.L368
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L366
.L368:
	.loc 1 1043 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	push_template_decl@PLT
	movl	%eax, -24(%ebp)
.L366:
	.loc 1 1045 0
	movl	24(%ebp), %eax
	testl	%eax, %eax
	je	.L370
	.loc 1 1046 0
	movl	24(%ebp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	cplus_decl_attributes@PLT
.L370:
	.loc 1 1048 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L372
	.loc 1 1050 0
	movl	-24(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	finish_static_data_member_decl@PLT
	.loc 1 1052 0
	movl	-24(%ebp), %edi
	movl	%edi, -32(%ebp)
	jmp	.L305
.L372:
	.loc 1 1054 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L374
	.loc 1 1056 0
	cmpl	$0, -20(%ebp)
	je	.L376
	.loc 1 1057 0
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L376:
	.loc 1 1058 0
	movl	-24(%ebp), %eax
	movl	68(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L378
	.loc 1 1059 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ebp)
.L378:
	.loc 1 1060 0
	movl	-24(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_finish_decl@PLT
	.loc 1 1061 0
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 68(%edx)
	.loc 1 1062 0
	movl	-24(%ebp), %edx
	movzbl	38(%edx), %eax
	orl	$1, %eax
	movb	%al, 38(%edx)
	.loc 1 1063 0
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L305
.L374:
	.loc 1 1065 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L380
	.loc 1 1067 0
	cmpl	$0, -20(%ebp)
	je	.L382
	.loc 1 1071 0
	movl	-24(%ebp), %eax
	movl	$0, 104(%eax)
	.loc 1 1072 0
	movl	-24(%ebp), %esi
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, 92(%esi)
.L382:
	.loc 1 1074 0
	movl	-24(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L384
	.loc 1 1075 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	grok_special_member_properties@PLT
.L384:
	.loc 1 1077 0
	movl	-24(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_finish_decl@PLT
	.loc 1 1080 0
	movl	-24(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L386
	.loc 1 1081 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L305
.L386:
	.loc 1 1083 0
	movl	-24(%ebp), %eax
	movzbl	38(%eax), %edx
	orl	$1, %edx
	movb	%dl, 38(%eax)
	.loc 1 1084 0
	movl	-24(%ebp), %ecx
	movl	%ecx, -32(%ebp)
	jmp	.L305
.L380:
	.loc 1 1086 0
	leal	__FUNCTION__.17060@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1086, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L305:
	movl	-32(%ebp), %eax
	.loc 1 1089 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE29:
	.size	grokfield, .-grokfield
	.section	.rodata
	.align 4
.LC38:
	.string	"cannot declare `%D' to be a bit-field type"
	.align 4
.LC39:
	.string	"cannot declare bit-field `%D' with function type"
	.align 4
.LC40:
	.string	"`%D' is already defined in the class %T"
	.align 4
.LC41:
	.string	"static member `%D' cannot be a bit-field"
	.text
.globl grokbitfield
	.type	grokbitfield, @function
grokbitfield:
.LFB30:
	.loc 1 1097 0
	pushl	%ebp
.LCFI64:
	movl	%esp, %ebp
.LCFI65:
	pushl	%ebx
.LCFI66:
	subl	$36, %esp
.LCFI67:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1099 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$5, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	grokdeclarator@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1101 0
	cmpl	$0, -8(%ebp)
	jne	.L390
	movl	$0, -12(%ebp)
	jmp	.L392
.L390:
	.loc 1 1104 0
	movl	-8(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$6, %al
	jne	.L393
	.loc 1 1105 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L392
.L393:
	.loc 1 1107 0
	movl	-8(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$34, %al
	jne	.L395
	.loc 1 1109 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1110 0
	movl	$0, -12(%ebp)
	jmp	.L392
.L395:
	.loc 1 1117 0
	movl	-8(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$31, %al
	jne	.L397
	.loc 1 1119 0
	movl	-8(%ebp), %edx
	movl	52(%edx), %eax
	movl	%eax, 4(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1121 0
	movl	$0, -12(%ebp)
	jmp	.L392
.L397:
	.loc 1 1124 0
	movl	-8(%ebp), %edx
	movzbl	38(%edx), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L399
	.loc 1 1126 0
	movl	-8(%ebp), %edx
	movl	56(%edx), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1128 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L392
.L399:
	.loc 1 1131 0
	movl	-8(%ebp), %edx
	movzbl	10(%edx), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L401
	.loc 1 1133 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1134 0
	movl	$0, -12(%ebp)
	jmp	.L392
.L401:
	.loc 1 1136 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-8(%ebp), %edx
	movl	%edx, (%esp)
	call	cp_finish_decl@PLT
	.loc 1 1138 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L403
	.loc 1 1140 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	constant_expression_warning@PLT
	.loc 1 1141 0
	movl	16(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%eax, 68(%edx)
	.loc 1 1142 0
	movl	-8(%ebp), %edx
	movzbl	38(%edx), %eax
	orl	$2, %eax
	movl	-8(%ebp), %edx
	movb	%al, 38(%edx)
.L403:
	.loc 1 1145 0
	movl	-8(%ebp), %edx
	movzbl	38(%edx), %eax
	orl	$1, %eax
	movl	-8(%ebp), %edx
	movb	%al, 38(%edx)
	.loc 1 1146 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L392:
	movl	-12(%ebp), %eax
	.loc 1 1147 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	grokbitfield, .-grokbitfield
.globl grokoptypename
	.type	grokoptypename, @function
grokoptypename:
.LFB31:
	.loc 1 1156 0
	pushl	%ebp
.LCFI68:
	movl	%esp, %ebp
.LCFI69:
	pushl	%ebx
.LCFI70:
	subl	$36, %esp
.LCFI71:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1157 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$6, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	grokdeclarator@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1161 0
	cmpl	$0, 16(%ebp)
	je	.L407
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L407
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	je	.L407
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	je	.L407
.LBB11:
	.loc 1 1165 0
	call	current_template_args@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1167 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	push_scope@PLT
	.loc 1 1168 0
	movl	$0, 12(%esp)
	movl	$3, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	tsubst@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1169 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	pop_scope@PLT
.L407:
.LBE11:
	.loc 1 1172 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	mangle_conv_op_name_for_type@PLT
	.loc 1 1173 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	grokoptypename, .-grokoptypename
	.section	.rodata
	.align 4
.LC42:
	.string	"initializer specified for non-member function `%D'"
	.align 4
.LC43:
	.string	"invalid initializer for virtual method `%D'"
	.text
	.type	grok_function_init, @function
grok_function_init:
.LFB32:
	.loc 1 1214 0
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
	.loc 1 1217 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1219 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L414
	.loc 1 1220 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L419
.L414:
	.loc 1 1221 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L417
	.loc 1 1222 0
	movl	8(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	5(%edx), %eax
	orl	$32, %eax
	movb	%al, 5(%edx)
	jmp	.L419
.L417:
	.loc 1 1224 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L419:
	.loc 1 1225 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	grok_function_init, .-grok_function_init
.globl cplus_decl_attributes
	.type	cplus_decl_attributes, @function
cplus_decl_attributes:
.LFB33:
	.loc 1 1231 0
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
	.loc 1 1232 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L428
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	%eax, %edx
	jne	.L423
	.loc 1 1233 0
	jmp	.L428
.L423:
	.loc 1 1235 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L425
	.loc 1 1236 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$64, %eax
	movl	%eax, 8(%ebp)
.L425:
	.loc 1 1238 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_attributes@PLT
	.loc 1 1240 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L428
	.loc 1 1241 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%edx)
.L428:
	.loc 1 1242 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	cplus_decl_attributes, .-cplus_decl_attributes
	.section	.rodata
	.type	__FUNCTION__.17453, @object
	.size	__FUNCTION__.17453, 22
__FUNCTION__.17453:
	.string	"constructor_name_full"
	.text
.globl constructor_name_full
	.type	constructor_name_full, @function
constructor_name_full:
.LFB34:
	.loc 1 1253 0
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
	.loc 1 1254 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L430
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L430
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	jne	.L433
.L430:
	.loc 1 1257 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1254 0
	jmp	.L434
.L433:
	.loc 1 1258 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L435
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L434
.L435:
	.loc 1 1260 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L437
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L437
	.loc 1 1261 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L440
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	movl	20(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L442
.L440:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L442:
	movl	-8(%ebp), %edx
	movl	52(%edx), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1260 0
	jmp	.L434
.L437:
	.loc 1 1263 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, 8(%ebp)
.L434:
	.loc 1 1265 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L443
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L445
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L445
.L443:
	.loc 1 1268 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 8(%ebp)
.L445:
	.loc 1 1269 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	je	.L447
	leal	__FUNCTION__.17453@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1269, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L447:
	.loc 1 1270 0
	movl	8(%ebp), %eax
	.loc 1 1271 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	constructor_name_full, .-constructor_name_full
.globl constructor_name
	.type	constructor_name, @function
constructor_name:
.LFB35:
	.loc 1 1282 0
	pushl	%ebp
.LCFI84:
	movl	%esp, %ebp
.LCFI85:
	pushl	%ebx
.LCFI86:
	subl	$36, %esp
.LCFI87:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1284 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	constructor_name_full@PLT
	movl	%eax, 8(%ebp)
	.loc 1 1285 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1286 0
	cmpl	$0, -8(%ebp)
	jne	.L451
	.loc 1 1287 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L453
.L451:
	.loc 1 1288 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L453:
	movl	-24(%ebp), %eax
	.loc 1 1289 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	constructor_name, .-constructor_name
.globl constructor_name_p
	.type	constructor_name_p, @function
constructor_name_p:
.LFB36:
	.loc 1 1295 0
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
	.loc 1 1296 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	constructor_name@PLT
	cmpl	8(%ebp), %eax
	je	.L456
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	constructor_name_full@PLT
	cmpl	8(%ebp), %eax
	jne	.L458
.L456:
	movl	$1, -8(%ebp)
	jmp	.L459
.L458:
	movl	$0, -8(%ebp)
.L459:
	movzbl	-8(%ebp), %eax
	movzbl	%al, %eax
	.loc 1 1298 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	constructor_name_p, .-constructor_name_p
	.section	.rodata
.LC44:
	.string	"deferred_fns"
	.text
.globl defer_fn
	.type	defer_fn, @function
defer_fn:
.LFB37:
	.loc 1 1306 0
	pushl	%ebp
.LCFI92:
	movl	%esp, %ebp
.LCFI93:
	pushl	%esi
.LCFI94:
	pushl	%ebx
.LCFI95:
	subl	$16, %esp
.LCFI96:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1307 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L468
	.loc 1 1309 0
	movl	8(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	orl	$1, %eax
	movb	%al, 6(%edx)
	.loc 1 1310 0
	movl	deferred_fns@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L464
	.loc 1 1311 0
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$14, 4(%esp)
	movl	$32, (%esp)
	call	varray_init@PLT
	movl	%eax, deferred_fns@GOTOFF(%ebx)
.L464:
	.loc 1 1313 0
	movl	deferred_fns@GOTOFF(%ebx), %eax
	movl	4(%eax), %edx
	movl	deferred_fns@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L466
	movl	deferred_fns@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	deferred_fns@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	varray_grow@PLT
	movl	%eax, deferred_fns@GOTOFF(%ebx)
.L466:
	movl	deferred_fns@GOTOFF(%ebx), %esi
	movl	deferred_fns@GOTOFF(%ebx), %ecx
	movl	4(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
.L468:
	.loc 1 1314 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE37:
	.size	defer_fn, .-defer_fn
	.section	.rodata
	.align 4
.LC45:
	.string	"anonymous struct not inside named type"
	.align 4
.LC46:
	.string	"`%#D' invalid; an anonymous union can only have non-static data members"
	.align 4
.LC47:
	.string	"private member `%#D' in anonymous union"
	.align 4
.LC48:
	.string	"protected member `%#D' in anonymous union"
	.text
	.type	build_anon_union_vars, @function
build_anon_union_vars:
.LFB38:
	.loc 1 1330 0
	pushl	%ebp
.LCFI97:
	movl	%esp, %ebp
.LCFI98:
	pushl	%ebx
.LCFI99:
	subl	$36, %esp
.LCFI100:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1331 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1332 0
	movl	$0, -16(%ebp)
	.loc 1 1337 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L470
	.loc 1 1338 0
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L470:
	.loc 1 1340 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1341 0
	jmp	.L472
.L473:
.LBB12:
	.loc 1 1346 0
	movl	-12(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L474
	.loc 1 1348 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	je	.L476
	.loc 1 1350 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_pedwarn_at@PLT
	.loc 1 1352 0
	jmp	.L474
.L476:
	.loc 1 1355 0
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L478
	.loc 1 1356 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_pedwarn_at@PLT
	jmp	.L480
.L478:
	.loc 1 1357 0
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L480
	.loc 1 1358 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_pedwarn_at@PLT
.L480:
	.loc 1 1360 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L482
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L484
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L482
.L484:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L486
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L486
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L486
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L486
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L482
.L486:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L482
	.loc 1 1363 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_anon_union_vars
	movl	%eax, -8(%ebp)
	.loc 1 1364 0
	cmpl	$0, -8(%ebp)
	je	.L474
	.loc 1 1360 0
	jmp	.L493
.L482:
	.loc 1 1367 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L474
	.loc 1 1371 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$35, (%esp)
	call	build_decl@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1373 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 1374 0
	movl	-8(%ebp), %edx
	movzbl	10(%edx), %eax
	andl	$-9, %eax
	movb	%al, 10(%edx)
	.loc 1 1375 0
	movl	16(%ebp), %eax
	andl	$1, %eax
	movl	-8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	10(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 1376 0
	movl	20(%ebp), %eax
	andl	$1, %eax
	movl	-8(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	33(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 33(%edx)
	.loc 1 1377 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1378 0
	movl	-8(%ebp), %eax
	movl	$0, 68(%eax)
.L493:
	.loc 1 1385 0
	cmpl	$0, -16(%ebp)
	je	.L495
	movl	-8(%ebp), %eax
	movl	28(%eax), %edx
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L497
.L495:
	.loc 1 1388 0
	cmpl	$0, -16(%ebp)
	je	.L498
	.loc 1 1389 0
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$64, %edx
	movb	%dl, 9(%eax)
.L498:
	.loc 1 1390 0
	movl	-8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1385 0
	jmp	.L500
.L497:
	.loc 1 1395 0
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$64, %edx
	movb	%dl, 9(%eax)
.L500:
	.loc 1 1397 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L501
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L503
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L501
.L503:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L505
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L505
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L505
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L505
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L501
.L505:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L474
.L501:
	.loc 1 1405 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1406 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%edx)
.L474:
.LBE12:
	.loc 1 1342 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L472:
	.loc 1 1341 0
	cmpl	$0, -12(%ebp)
	jne	.L473
	.loc 1 1409 0
	movl	-16(%ebp), %eax
	.loc 1 1410 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	build_anon_union_vars, .-build_anon_union_vars
	.section	.rodata
	.align 4
.LC49:
	.string	"namespace-scope anonymous aggregates must be static"
	.align 4
.LC50:
	.string	"anonymous aggregate with no members"
	.text
.globl finish_anon_union
	.type	finish_anon_union, @function
finish_anon_union:
.LFB39:
	.loc 1 1419 0
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
	.loc 1 1420 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1422 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1423 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1424 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 1427 0
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	movl	56(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 1429 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L522
	.loc 1 1432 0
	cmpl	$0, -16(%ebp)
	je	.L515
	.loc 1 1434 0
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1435 0
	jmp	.L522
.L515:
	.loc 1 1438 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L517
	.loc 1 1440 0
	movl	8(%ebp), %edx
	addl	$60, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_anon_union_vars
	movl	%eax, -20(%ebp)
	.loc 1 1445 0
	cmpl	$0, -20(%ebp)
	jne	.L519
	.loc 1 1447 0
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 1448 0
	jmp	.L522
.L519:
	.loc 1 1451 0
	cmpl	$0, -12(%ebp)
	je	.L517
	.loc 1 1453 0
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	.loc 1 1454 0
	movl	-20(%ebp), %eax
	movl	104(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 104(%eax)
	.loc 1 1455 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_anon_union_decl@PLT
	.loc 1 1458 0
	jmp	.L522
.L517:
	.loc 1 1462 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_decl_stmt@PLT
.L522:
	.loc 1 1463 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	finish_anon_union, .-finish_anon_union
.globl finish_builtin_type
	.type	finish_builtin_type, @function
finish_builtin_type:
.LFB40:
	.loc 1 1479 0
	pushl	%ebp
.LCFI105:
	movl	%esp, %ebp
.LCFI106:
	pushl	%ebx
.LCFI107:
	subl	$20, %esp
.LCFI108:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1482 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 1483 0
	movl	$0, -8(%ebp)
	jmp	.L524
.L525:
	.loc 1 1485 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
	.loc 1 1486 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 56(%edx)
	.loc 1 1487 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 1483 0
	addl	$1, -8(%ebp)
.L524:
	movl	-8(%ebp), %eax
	cmpl	20(%ebp), %eax
	jl	.L525
	.loc 1 1489 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 56(%edx)
	.loc 1 1490 0
	movl	24(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 1491 0
	movl	24(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$7, %al
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	sall	$7, %ecx
	movzbl	39(%edx), %eax
	andl	$127, %eax
	orl	%ecx, %eax
	movb	%al, 39(%edx)
	.loc 1 1492 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
	.loc 1 1496 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$34, (%esp)
	call	build_decl@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 1498 0
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1499 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	layout_decl@PLT
	.loc 1 1500 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	finish_builtin_type, .-finish_builtin_type
	.section	.rodata
	.type	__FUNCTION__.17758, @object
	.size	__FUNCTION__.17758, 16
__FUNCTION__.17758:
	.string	"coerce_new_type"
	.align 4
.LC51:
	.string	"`operator new' must return type `%T'"
	.align 4
.LC52:
	.string	"`operator new' takes type `size_t' (`%T') as first parameter"
	.text
.globl coerce_new_type
	.type	coerce_new_type, @function
coerce_new_type:
.LFB41:
	.loc 1 1509 0
	pushl	%ebp
.LCFI109:
	movl	%esp, %ebp
.LCFI110:
	pushl	%esi
.LCFI111:
	pushl	%ebx
.LCFI112:
	subl	$32, %esp
.LCFI113:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1510 0
	movl	$0, -16(%ebp)
	.loc 1 1511 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1513 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L529
	leal	__FUNCTION__.17758@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1513, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L529:
	.loc 1 1515 0
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L531
	.loc 1 1516 0
	movl	$1, -16(%ebp)
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L531:
	.loc 1 1518 0
	cmpl	$0, -12(%ebp)
	je	.L533
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L533
	movl	global_trees@GOT(%ebx), %eax
	movl	140(%eax), %edx
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L536
.L533:
	.loc 1 1521 0
	movl	$2, -16(%ebp)
	.loc 1 1522 0
	cmpl	$0, -12(%ebp)
	je	.L537
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L537
	.loc 1 1523 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L537:
	.loc 1 1524 0
	movl	global_trees@GOT(%ebx), %eax
	movl	140(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L536:
	.loc 1 1526 0
	movl	-16(%ebp), %eax
	movl	%eax, -28(%ebp)
	cmpl	$1, -28(%ebp)
	je	.L541
	cmpl	$2, -28(%ebp)
	je	.L542
	jmp	.L540
.L542:
	.loc 1 1529 0
	movl	global_trees@GOT(%ebx), %eax
	movl	140(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -12(%ebp)
.L541:
	.loc 1 1532 0
	movl	8(%ebp), %eax
	movl	76(%eax), %esi
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_function_type@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	build_exception_variant@PLT
	movl	%eax, 8(%ebp)
.L540:
	.loc 1 1538 0
	movl	8(%ebp), %eax
	.loc 1 1539 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE41:
	.size	coerce_new_type, .-coerce_new_type
	.section	.rodata
	.type	__FUNCTION__.17800, @object
	.size	__FUNCTION__.17800, 19
__FUNCTION__.17800:
	.string	"coerce_delete_type"
	.align 4
.LC53:
	.string	"`operator delete' must return type `%T'"
	.align 4
.LC54:
	.string	"`operator delete' takes type `%T' as first parameter"
	.text
.globl coerce_delete_type
	.type	coerce_delete_type, @function
coerce_delete_type:
.LFB42:
	.loc 1 1544 0
	pushl	%ebp
.LCFI114:
	movl	%esp, %ebp
.LCFI115:
	pushl	%esi
.LCFI116:
	pushl	%ebx
.LCFI117:
	subl	$32, %esp
.LCFI118:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1545 0
	movl	$0, -16(%ebp)
	.loc 1 1546 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1548 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L545
	leal	__FUNCTION__.17800@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1548, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L545:
	.loc 1 1550 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L547
	.loc 1 1551 0
	movl	$1, -16(%ebp)
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L547:
	.loc 1 1553 0
	cmpl	$0, -12(%ebp)
	je	.L549
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L549
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %edx
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L552
.L549:
	.loc 1 1556 0
	movl	$2, -16(%ebp)
	.loc 1 1557 0
	cmpl	$0, -12(%ebp)
	je	.L553
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L553
	.loc 1 1558 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L553:
	.loc 1 1559 0
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L552:
	.loc 1 1561 0
	movl	-16(%ebp), %eax
	movl	%eax, -28(%ebp)
	cmpl	$1, -28(%ebp)
	je	.L557
	cmpl	$2, -28(%ebp)
	je	.L558
	jmp	.L556
.L558:
	.loc 1 1564 0
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -12(%ebp)
.L557:
	.loc 1 1567 0
	movl	8(%ebp), %eax
	movl	76(%eax), %esi
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_function_type@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	build_exception_variant@PLT
	movl	%eax, 8(%ebp)
.L556:
	.loc 1 1574 0
	movl	8(%ebp), %eax
	.loc 1 1575 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE42:
	.size	coerce_delete_type, .-coerce_delete_type
	.type	mark_vtable_entries, @function
mark_vtable_entries:
.LFB43:
	.loc 1 1580 0
	pushl	%ebp
.LCFI119:
	movl	%esp, %ebp
.LCFI120:
	pushl	%ebx
.LCFI121:
	subl	$36, %esp
.LCFI122:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1581 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1583 0
	jmp	.L561
.L562:
.LBB13:
	.loc 1 1585 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1588 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	je	.L563
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$126, %al
	jne	.L565
.L563:
	.loc 1 1594 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1595 0
	movl	-8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$4, %eax
	movb	%al, 9(%edx)
	.loc 1 1600 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L566
	movl	-8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L566
	.loc 1 1601 0
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	use_thunk@PLT
.L566:
	.loc 1 1602 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used@PLT
.L565:
.LBE13:
	.loc 1 1583 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L561:
	cmpl	$0, -16(%ebp)
	jne	.L562
	.loc 1 1604 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	mark_vtable_entries, .-mark_vtable_entries
.globl comdat_linkage
	.type	comdat_linkage, @function
comdat_linkage:
.LFB44:
	.loc 1 1612 0
	pushl	%ebp
.LCFI123:
	movl	%esp, %ebp
.LCFI124:
	pushl	%ebx
.LCFI125:
	subl	$4, %esp
.LCFI126:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1613 0
	movl	flag_weak@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L572
	.loc 1 1614 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_one_only@PLT
	jmp	.L574
.L572:
	.loc 1 1615 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L575
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L577
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L577
.L575:
	.loc 1 1633 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %edx
	andl	$-9, %edx
	movb	%dl, 10(%eax)
	.loc 1 1615 0
	jmp	.L574
.L577:
	.loc 1 1638 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L579
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L581
.L579:
	.loc 1 1640 0
	movl	8(%ebp), %eax
	movzbl	34(%eax), %edx
	orl	$64, %edx
	movb	%dl, 34(%eax)
	.loc 1 1638 0
	jmp	.L574
.L581:
	.loc 1 1641 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L582
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L582
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L582
	.loc 1 1643 0
	movl	8(%ebp), %edx
	movzbl	34(%edx), %eax
	orl	$64, %eax
	movb	%al, 34(%edx)
	.loc 1 1644 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 1641 0
	jmp	.L574
.L582:
	.loc 1 1646 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$6, %al
	je	.L574
	.loc 1 1650 0
	movl	8(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$1, %eax
	movb	%al, 33(%edx)
	.loc 1 1651 0
	movl	8(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-17, %eax
	movb	%al, 6(%edx)
.L574:
	.loc 1 1655 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L589
	.loc 1 1656 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %edx
	orl	$-128, %edx
	movb	%dl, 35(%eax)
.L589:
	.loc 1 1657 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	comdat_linkage, .-comdat_linkage
.globl maybe_make_one_only
	.type	maybe_make_one_only, @function
maybe_make_one_only:
.LFB45:
	.loc 1 1666 0
	pushl	%ebp
.LCFI127:
	movl	%esp, %ebp
.LCFI128:
	pushl	%ebx
.LCFI129:
	subl	$4, %esp
.LCFI130:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1673 0
	movl	flag_weak@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L594
	.loc 1 1681 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_one_only@PLT
	.loc 1 1683 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L594
	.loc 1 1685 0
	movl	8(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$-128, %eax
	movb	%al, 35(%edx)
	.loc 1 1687 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
.L594:
	.loc 1 1689 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	maybe_make_one_only, .-maybe_make_one_only
.globl import_export_vtable
	.type	import_export_vtable, @function
import_export_vtable:
.LFB46:
	.loc 1 1702 0
	pushl	%ebp
.LCFI131:
	movl	%esp, %ebp
.LCFI132:
	pushl	%ebx
.LCFI133:
	subl	$36, %esp
.LCFI134:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1703 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L609
	.loc 1 1706 0
	movl	12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L598
	.loc 1 1708 0
	movl	8(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$8, %eax
	movb	%al, 10(%edx)
	.loc 1 1709 0
	movl	8(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$1, %eax
	movb	%al, 33(%edx)
	.loc 1 1710 0
	movl	8(%ebp), %edx
	movzbl	38(%edx), %eax
	orl	$4, %eax
	movb	%al, 38(%edx)
	jmp	.L609
.L598:
	.loc 1 1712 0
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L600
	.loc 1 1714 0
	movl	8(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$8, %eax
	movb	%al, 10(%edx)
	.loc 1 1715 0
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	33(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 33(%edx)
	.loc 1 1716 0
	movl	8(%ebp), %edx
	movzbl	38(%edx), %eax
	orl	$4, %eax
	movb	%al, 38(%edx)
	jmp	.L609
.L600:
.LBB14:
	.loc 1 1724 0
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	shrb	$2, %al
	andl	$3, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L602
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L604
.L602:
	movl	$1, -24(%ebp)
	jmp	.L605
.L604:
	movl	$0, -24(%ebp)
.L605:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1726 0
	cmpl	$0, 16(%ebp)
	jne	.L606
	cmpl	$0, -8(%ebp)
	jne	.L608
.L606:
	.loc 1 1728 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comdat_linkage@PLT
	.loc 1 1729 0
	movl	8(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$-2, %eax
	movb	%al, 33(%edx)
	.loc 1 1726 0
	jmp	.L609
.L608:
	.loc 1 1733 0
	movl	8(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$8, %eax
	movb	%al, 10(%edx)
	.loc 1 1734 0
	movl	8(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$1, %eax
	movb	%al, 33(%edx)
.L609:
.LBE14:
	.loc 1 1737 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	import_export_vtable, .-import_export_vtable
	.section	.rodata
	.type	__FUNCTION__.17958, @object
	.size	__FUNCTION__.17958, 20
__FUNCTION__.17958:
	.string	"import_export_class"
.LC55:
	.string	"dllimport"
.LC56:
	.string	"dllexport"
	.text
	.type	import_export_class, @function
import_export_class:
.LFB47:
	.loc 1 1745 0
	pushl	%ebp
.LCFI135:
	movl	%esp, %ebp
.LCFI136:
	pushl	%ebx
.LCFI137:
	subl	$36, %esp
.LCFI138:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1747 0
	movl	$0, -12(%ebp)
	.loc 1 1754 0
	movl	at_eof@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L611
	leal	__FUNCTION__.17958@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1754, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L611:
	.loc 1 1756 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L633
	.loc 1 1764 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L633
	.loc 1 1767 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lookup_attribute@PLT
	testl	%eax, %eax
	je	.L616
	.loc 1 1768 0
	movl	$-1, -12(%ebp)
	jmp	.L618
.L616:
	.loc 1 1769 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lookup_attribute@PLT
	testl	%eax, %eax
	je	.L618
	.loc 1 1770 0
	movl	$1, -12(%ebp)
.L618:
	.loc 1 1774 0
	cmpl	$0, -12(%ebp)
	jne	.L620
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	cmpb	$4, %al
	jne	.L620
	movl	flag_implicit_templates@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L620
	.loc 1 1777 0
	movl	$-1, -12(%ebp)
.L620:
	.loc 1 1781 0
	cmpl	$0, -12(%ebp)
	jne	.L624
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L624
.LBB15:
	.loc 1 1784 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	56(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1785 0
	cmpl	$0, -8(%ebp)
	je	.L624
	.loc 1 1786 0
	movl	-8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L628
	movl	-8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L628
	movl	$-1, -24(%ebp)
	jmp	.L631
.L628:
	movl	$1, -24(%ebp)
.L631:
	movl	-24(%ebp), %eax
	movl	%eax, -12(%ebp)
.L624:
.LBE15:
	.loc 1 1794 0
	cmpl	$0, -12(%ebp)
	je	.L633
	.loc 1 1796 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-65, %eax
	movb	%al, 6(%edx)
	.loc 1 1797 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-12(%ebp), %eax
	shrl	$31, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	6(%ecx), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
.L633:
	.loc 1 1799 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	import_export_class, .-import_export_class
	.section	.rodata
	.type	__FUNCTION__.18023, @object
	.size	__FUNCTION__.18023, 22
__FUNCTION__.18023:
	.string	"output_vtable_inherit"
	.text
	.type	output_vtable_inherit, @function
output_vtable_inherit:
.LFB48:
	.loc 1 1807 0
	pushl	%ebp
.LCFI139:
	movl	%esp, %ebp
.LCFI140:
	pushl	%ebx
.LCFI141:
	subl	$36, %esp
.LCFI142:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1811 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L635
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L637
.L635:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -28(%ebp)
.L637:
	movl	-28(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1813 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	binfo_for_vtable@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1815 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	76(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L638
	.loc 1 1816 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L640
.L638:
	.loc 1 1817 0
	cmpl	$0, -16(%ebp)
	je	.L641
	.loc 1 1819 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	get_vtbl_decl_for_binfo@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1820 0
	movl	-16(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L643
	movl	-16(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L645
.L643:
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-16(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -24(%ebp)
.L645:
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L640
.L641:
	.loc 1 1823 0
	leal	__FUNCTION__.18023@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1823, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L640:
	.loc 1 1825 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_vtable_inherit@PLT
	.loc 1 1826 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	output_vtable_inherit, .-output_vtable_inherit
	.type	maybe_emit_vtables, @function
maybe_emit_vtables:
.LFB49:
	.loc 1 1833 0
	pushl	%ebp
.LCFI143:
	movl	%esp, %ebp
.LCFI144:
	pushl	%ebx
.LCFI145:
	subl	$36, %esp
.LCFI146:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1839 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1840 0
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L648
	.loc 1 1841 0
	movl	$0, -24(%ebp)
	jmp	.L650
.L648:
	.loc 1 1843 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	%eax, %edx
	jne	.L651
	.loc 1 1844 0
	movl	$0, -24(%ebp)
	jmp	.L650
.L651:
	.loc 1 1846 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	import_export_class
	.loc 1 1847 0
	movl	$1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	import_export_vtable@PLT
	.loc 1 1850 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L653
.L654:
	.loc 1 1851 0
	movl	-12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L655
	movl	at_eof@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L657
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L657
	movl	-12(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L660
.L657:
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L661
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L660
.L661:
	movl	flag_syntax_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L655
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L660
.L655:
	.loc 1 1850 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L653:
	cmpl	$0, -12(%ebp)
	jne	.L654
.L660:
	.loc 1 1854 0
	cmpl	$0, -12(%ebp)
	jne	.L664
	.loc 1 1859 0
	movl	-8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L666
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L666
	.loc 1 1861 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	note_debug_info_needed@PLT
.L666:
	.loc 1 1862 0
	movl	$0, -24(%ebp)
	jmp	.L650
.L664:
	.loc 1 1867 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L669
.L670:
	.loc 1 1870 0
	movl	$1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	import_export_vtable@PLT
	.loc 1 1871 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_vtable_entries
	.loc 1 1872 0
	movl	-12(%ebp), %eax
	movl	68(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L671
	.loc 1 1873 0
	movl	-12(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	store_init_value@PLT
.L671:
	.loc 1 1875 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L673
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L675
.L673:
	.loc 1 1898 0
	movl	-12(%ebp), %eax
	movzbl	33(%eax), %edx
	orl	$64, %edx
	movb	%dl, 33(%eax)
.L675:
	.loc 1 1902 0
	movl	flag_weak@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L676
	.loc 1 1903 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	comdat_linkage@PLT
.L676:
	.loc 1 1905 0
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	rest_of_decl_compilation@PLT
	.loc 1 1907 0
	movl	flag_vtable_gc@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L678
	.loc 1 1908 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	output_vtable_inherit
.L678:
	.loc 1 1912 0
	movl	flag_syntax_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L680
	.loc 1 1913 0
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$64, %edx
	movb	%dl, 9(%eax)
.L680:
	.loc 1 1867 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L669:
	cmpl	$0, -12(%ebp)
	jne	.L670
	.loc 1 1918 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	note_debug_info_needed@PLT
	.loc 1 1920 0
	movl	$1, -24(%ebp)
.L650:
	movl	-24(%ebp), %eax
	.loc 1 1921 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	maybe_emit_vtables, .-maybe_emit_vtables
.globl import_export_decl
	.type	import_export_decl, @function
import_export_decl:
.LFB50:
	.loc 1 1929 0
	pushl	%ebp
.LCFI147:
	movl	%esp, %ebp
.LCFI148:
	pushl	%ebx
.LCFI149:
	subl	$36, %esp
.LCFI150:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1930 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L721
	.loc 1 1933 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	%al
	andl	$3, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L687
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L689
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	testb	%al, %al
	jne	.L689
.L687:
	.loc 1 1936 0
	movl	8(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	orl	$16, %eax
	movb	%al, 6(%edx)
	.loc 1 1937 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$2, %al
	je	.L691
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L693
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	testb	%al, %al
	jne	.L693
.L691:
	movl	flag_implicit_templates@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L695
	movl	flag_implicit_inline_templates@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L693
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L693
.L695:
	.loc 1 1943 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L701
	.loc 1 1948 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comdat_linkage@PLT
	.loc 1 1937 0
	jmp	.L701
.L693:
	.loc 1 1952 0
	movl	8(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$1, %eax
	movb	%al, 33(%edx)
	.loc 1 1953 0
	movl	8(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-17, %eax
	movb	%al, 6(%edx)
	.loc 1 1933 0
	jmp	.L701
.L689:
	.loc 1 1956 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L702
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L704
.L702:
	.loc 1 1958 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L705
.LBB16:
	.loc 1 1960 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1961 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	import_export_class
	.loc 1 1962 0
	movl	-8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L701
	.loc 1 1964 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L709
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L711
	movl	flag_implement_inlines@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L711
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	je	.L709
.L711:
	movl	$1, -24(%ebp)
	jmp	.L714
.L709:
	movl	$0, -24(%ebp)
.L714:
	movzbl	-24(%ebp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movl	-28(%ebp), %ecx
	movzbl	6(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movl	-28(%ebp), %edx
	movb	%al, 6(%edx)
	.loc 1 1970 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L715
	.loc 1 1971 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %edx
	orl	$1, %edx
	movb	%dl, 33(%eax)
.L715:
	.loc 1 1974 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L717
	movl	flag_weak@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L717
	.loc 1 1975 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comdat_linkage@PLT
	.loc 1 1974 0
	jmp	.L701
.L717:
	.loc 1 1977 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_make_one_only@PLT
	jmp	.L701
.L705:
.LBE16:
	.loc 1 1981 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comdat_linkage@PLT
	.loc 1 1956 0
	jmp	.L701
.L704:
	.loc 1 1984 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comdat_linkage@PLT
.L701:
	.loc 1 1986 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %edx
	orl	$4, %edx
	movb	%dl, 38(%eax)
.L721:
	.loc 1 1987 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	import_export_decl, .-import_export_decl
.globl import_export_tinfo
	.type	import_export_tinfo, @function
import_export_tinfo:
.LFB51:
	.loc 1 1998 0
	pushl	%ebp
.LCFI151:
	movl	%esp, %ebp
.LCFI152:
	pushl	%ebx
.LCFI153:
	subl	$4, %esp
.LCFI154:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1999 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L745
	.loc 1 2002 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L725
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L725
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L725
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L725
	movl	12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L730
.L725:
	.loc 1 2003 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	import_export_class
.L730:
	.loc 1 2005 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L731
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L731
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L731
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L731
	movl	12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L736
.L731:
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L736
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L736
	movl	flag_rtti@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L736
	.loc 1 2012 0
	movl	8(%ebp), %eax
	movl	136(%eax), %ecx
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	sete	%al
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	6(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
	.loc 1 2013 0
	movl	8(%ebp), %edx
	movzbl	35(%edx), %eax
	andl	$127, %eax
	movb	%al, 35(%edx)
	.loc 1 2005 0
	jmp	.L740
.L736:
	.loc 1 2017 0
	movl	8(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	orl	$16, %eax
	movb	%al, 6(%edx)
	.loc 1 2018 0
	movl	8(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$-128, %eax
	movb	%al, 35(%edx)
.L740:
	.loc 1 2022 0
	movl	flag_weak@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L741
	.loc 1 2023 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %edx
	orl	$-128, %edx
	movb	%dl, 35(%eax)
	jmp	.L743
.L741:
	.loc 1 2024 0
	cmpl	$0, 16(%ebp)
	je	.L743
	.loc 1 2025 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %edx
	andl	$127, %edx
	movb	%dl, 35(%eax)
.L743:
	.loc 1 2027 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %edx
	orl	$4, %edx
	movb	%dl, 38(%eax)
.L745:
	.loc 1 2028 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	import_export_tinfo, .-import_export_tinfo
	.section	.rodata
	.type	__FUNCTION__.18283, @object
	.size	__FUNCTION__.18283, 14
__FUNCTION__.18283:
	.string	"build_cleanup"
	.text
.globl build_cleanup
	.type	build_cleanup, @function
build_cleanup:
.LFB52:
	.loc 1 2037 0
	pushl	%ebp
.LCFI155:
	movl	%esp, %ebp
.LCFI156:
	pushl	%ebx
.LCFI157:
	subl	$36, %esp
.LCFI158:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2039 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2043 0
	movl	-8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L747
	leal	__FUNCTION__.18283@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2043, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L747:
	.loc 1 2047 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used@PLT
	.loc 1 2049 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L749
	.loc 1 2050 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L751
.L749:
	.loc 1 2053 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_mark_addressable@PLT
	.loc 1 2054 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, -12(%ebp)
.L751:
	.loc 1 2056 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 16(%esp)
	movl	$523, 12(%esp)
	movl	$5, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_delete@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2059 0
	movl	-12(%ebp), %eax
	.loc 1 2060 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	build_cleanup, .-build_cleanup
.globl get_guard
	.type	get_guard, @function
get_guard:
.LFB53:
	.loc 1 2068 0
	pushl	%ebp
.LCFI159:
	movl	%esp, %ebp
.LCFI160:
	pushl	%ebx
.LCFI161:
	subl	$36, %esp
.LCFI162:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2072 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mangle_guard_variable@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2073 0
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	namespace_binding@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2074 0
	cmpl	$0, -12(%ebp)
	jne	.L754
.LBB17:
	.loc 1 2080 0
	movl	integer_types@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2081 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$35, (%esp)
	call	build_decl@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2084 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	-12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 2085 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	-12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	10(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 2086 0
	movl	8(%ebp), %eax
	movzbl	34(%eax), %eax
	shrb	$6, %al
	andl	$1, %eax
	movl	-12(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$6, %edx
	movzbl	34(%ecx), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, 34(%ecx)
	.loc 1 2087 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$1, %eax
	movl	-12(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	35(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 35(%edx)
	.loc 1 2088 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L756
	.loc 1 2089 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	-12(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	35(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 35(%ecx)
.L756:
	.loc 1 2091 0
	movl	-12(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 2092 0
	movl	-12(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 2093 0
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl_top_level_and_finish@PLT
.L754:
.LBE17:
	.loc 1 2095 0
	movl	-12(%ebp), %eax
	.loc 1 2096 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	get_guard, .-get_guard
	.type	get_guard_bits, @function
get_guard_bits:
.LFB54:
	.loc 1 2104 0
	pushl	%ebp
.LCFI163:
	movl	%esp, %ebp
.LCFI164:
	pushl	%ebx
.LCFI165:
	subl	$20, %esp
.LCFI166:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2107 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, 8(%ebp)
	.loc 1 2110 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, 8(%ebp)
	.loc 1 2113 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, 8(%ebp)
	.loc 1 2115 0
	movl	8(%ebp), %eax
	.loc 1 2116 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	get_guard_bits, .-get_guard_bits
.globl get_guard_cond
	.type	get_guard_cond, @function
get_guard_cond:
.LFB55:
	.loc 1 2124 0
	pushl	%ebp
.LCFI167:
	movl	%esp, %ebp
.LCFI168:
	pushl	%ebx
.LCFI169:
	subl	$36, %esp
.LCFI170:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2128 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_guard_bits
	movl	%eax, 8(%ebp)
	.loc 1 2129 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2130 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L762
	.loc 1 2131 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -8(%ebp)
.L762:
	.loc 1 2132 0
	movl	$1, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$103, (%esp)
	call	build_binary_op@PLT
	.loc 1 2133 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	get_guard_cond, .-get_guard_cond
.globl set_guard
	.type	set_guard, @function
set_guard:
.LFB56:
	.loc 1 2141 0
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
	.loc 1 2145 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_guard_bits
	movl	%eax, 8(%ebp)
	.loc 1 2146 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2147 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L766
	.loc 1 2148 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -8(%ebp)
.L766:
	.loc 1 2149 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$117, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_modify_expr@PLT
	.loc 1 2150 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	set_guard, .-set_guard
	.section	.rodata
.LC57:
	.string	"%c%c%.5u"
.LC58:
	.string	"%c"
	.align 4
.LC59:
	.string	"static constructors and destructors cannot be inlined"
	.text
	.type	start_objects, @function
start_objects:
.LFB57:
	.loc 1 2158 0
	pushl	%ebp
.LCFI175:
	movl	%esp, %ebp
.LCFI176:
	pushl	%ebx
.LCFI177:
	subl	$52, %esp
.LCFI178:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2158 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 2165 0
	cmpl	$65535, 12(%ebp)
	je	.L770
.LBB18:
	.loc 1 2170 0
	movb	$46, -19(%ebp)
	.loc 1 2175 0
	movzbl	-19(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-18(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	jmp	.L772
.L770:
.LBE18:
	.loc 1 2178 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-18(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
.L772:
	.loc 1 2180 0
	leal	-18(%ebp), %eax
	movl	%eax, (%esp)
	call	get_file_function_name_long@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2182 0
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	make_call_declarator@PLT
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	start_function@PLT
	.loc 1 2189 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	targetm@GOT(%ebx), %eax
	movzbl	245(%eax), %eax
	xorl	$1, %eax
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 2192 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 2195 0
	cmpl	$73, 8(%ebp)
	jne	.L773
	.loc 1 2196 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %edx
	movzbl	7(%edx), %eax
	orl	$1, %eax
	movb	%al, 7(%edx)
	jmp	.L775
.L773:
	.loc 1 2198 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %edx
	movzbl	7(%edx), %eax
	orl	$2, %eax
	movb	%al, 7(%edx)
.L775:
	.loc 1 2199 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %edx
	movzbl	7(%edx), %eax
	orl	$32, %eax
	movb	%al, 7(%edx)
	.loc 1 2201 0
	movl	$0, (%esp)
	call	begin_compound_stmt@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2207 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, 124(%edx)
	.loc 1 2210 0
	movl	-24(%ebp), %eax
	.loc 1 2211 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L777
	call	__stack_chk_fail_local
.L777:
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	start_objects, .-start_objects
	.type	finish_objects, @function
finish_objects:
.LFB58:
	.loc 1 2220 0
	pushl	%ebp
.LCFI179:
	movl	%esp, %ebp
.LCFI180:
	pushl	%ebx
.LCFI181:
	subl	$36, %esp
.LCFI182:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2224 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	finish_compound_stmt@PLT
	.loc 1 2225 0
	movl	$0, (%esp)
	call	finish_function@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2226 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_body@PLT
	.loc 1 2244 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	finish_objects, .-finish_objects
	.section	.rodata
	.align 32
	.type	__FUNCTION__.18437, @object
	.size	__FUNCTION__.18437, 39
__FUNCTION__.18437:
	.string	"start_static_storage_duration_function"
	.local	ssdf_number.18432
	.comm	ssdf_number.18432,4,4
	.align 4
.LC60:
	.string	"__static_initialization_and_destruction"
.LC61:
	.string	"%s_%u"
	.align 4
.LC62:
	.string	"too many initialization functions required"
.LC63:
	.string	"ssdf_decls"
.LC64:
	.string	"__initialize_p"
.LC65:
	.string	"__priority"
	.align 4
.LC66:
	.string	"static storage duration functions cannot be inlined"
	.text
	.type	start_static_storage_duration_function, @function
start_static_storage_duration_function:
.LFB59:
	.loc 1 2288 0
	pushl	%ebp
.LCFI183:
	movl	%esp, %ebp
.LCFI184:
	pushl	%esi
.LCFI185:
	pushl	%ebx
.LCFI186:
	subl	$112, %esp
.LCFI187:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2288 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 2298 0
	movl	ssdf_number.18432@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	addl	$1, %eax
	movl	%eax, ssdf_number.18432@GOTOFF(%ebx)
	movl	%edx, 12(%esp)
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-85(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 2299 0
	movl	ssdf_number.18432@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L781
	.loc 1 2303 0
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sorry@PLT
	.loc 1 2304 0
	leal	__FUNCTION__.18437@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2304, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L781:
	.loc 1 2308 0
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	movl	%eax, -100(%ebp)
	.loc 1 2309 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -100(%ebp)
	.loc 1 2310 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -100(%ebp)
	.loc 1 2311 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_function_type@PLT
	movl	%eax, -96(%ebp)
	.loc 1 2314 0
	leal	-85(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, %edx
	movl	-96(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$31, (%esp)
	call	build_lang_decl@PLT
	movl	%eax, ssdf_decl@GOTOFF(%ebx)
	.loc 1 2317 0
	movl	ssdf_decl@GOTOFF(%ebx), %edx
	movzbl	10(%edx), %eax
	andl	$-9, %eax
	movb	%al, 10(%edx)
	.loc 1 2318 0
	movl	ssdf_decl@GOTOFF(%ebx), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 2322 0
	movl	ssdf_decls@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L783
	.loc 1 2324 0
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$14, 4(%esp)
	movl	$32, (%esp)
	call	varray_init@PLT
	movl	%eax, ssdf_decls@GOTOFF(%ebx)
	.loc 1 2328 0
	movl	free@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	splay_tree_compare_ints@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	splay_tree_new@PLT
	movl	%eax, priority_info_map@GOTOFF(%ebx)
	.loc 1 2337 0
	movl	$65535, (%esp)
	call	get_priority_info
.L783:
	.loc 1 2340 0
	movl	ssdf_decls@GOTOFF(%ebx), %eax
	movl	4(%eax), %edx
	movl	ssdf_decls@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L785
	movl	ssdf_decls@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	ssdf_decls@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	varray_grow@PLT
	movl	%eax, ssdf_decls@GOTOFF(%ebx)
.L785:
	movl	ssdf_decls@GOTOFF(%ebx), %esi
	movl	ssdf_decls@GOTOFF(%ebx), %ecx
	movl	4(%ecx), %edx
	movl	ssdf_decl@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
	.loc 1 2343 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %esi
	movl	$14, 4(%esp)
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	cp_build_parm_decl@PLT
	movl	%eax, initialize_p_decl@GOTOFF(%ebx)
	.loc 1 2345 0
	movl	initialize_p_decl@GOTOFF(%ebx), %edx
	movl	ssdf_decl@GOTOFF(%ebx), %eax
	movl	%eax, 56(%edx)
	.loc 1 2346 0
	movl	initialize_p_decl@GOTOFF(%ebx), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 2347 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %esi
	movl	$10, 4(%esp)
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	cp_build_parm_decl@PLT
	movl	%eax, priority_decl@GOTOFF(%ebx)
	.loc 1 2349 0
	movl	priority_decl@GOTOFF(%ebx), %edx
	movl	ssdf_decl@GOTOFF(%ebx), %eax
	movl	%eax, 56(%edx)
	.loc 1 2350 0
	movl	priority_decl@GOTOFF(%ebx), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 2352 0
	movl	initialize_p_decl@GOTOFF(%ebx), %edx
	movl	priority_decl@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 2353 0
	movl	ssdf_decl@GOTOFF(%ebx), %edx
	movl	initialize_p_decl@GOTOFF(%ebx), %eax
	movl	%eax, 60(%edx)
	.loc 1 2356 0
	movl	ssdf_decl@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pushdecl@PLT
	.loc 1 2365 0
	movl	ssdf_decl@GOTOFF(%ebx), %eax
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	start_function@PLT
	.loc 1 2371 0
	movl	$0, (%esp)
	call	begin_compound_stmt@PLT
	movl	%eax, -92(%ebp)
	.loc 1 2375 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, 124(%edx)
	.loc 1 2378 0
	movl	-92(%ebp), %eax
	.loc 1 2379 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L788
	call	__stack_chk_fail_local
.L788:
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE59:
	.size	start_static_storage_duration_function, .-start_static_storage_duration_function
	.type	finish_static_storage_duration_function, @function
finish_static_storage_duration_function:
.LFB60:
	.loc 1 2388 0
	pushl	%ebp
.LCFI188:
	movl	%esp, %ebp
.LCFI189:
	pushl	%ebx
.LCFI190:
	subl	$20, %esp
.LCFI191:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2390 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	finish_compound_stmt@PLT
	.loc 1 2391 0
	movl	$0, (%esp)
	call	finish_function@PLT
	movl	%eax, (%esp)
	call	expand_body@PLT
	.loc 1 2392 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE60:
	.size	finish_static_storage_duration_function, .-finish_static_storage_duration_function
	.type	get_priority_info, @function
get_priority_info:
.LFB61:
	.loc 1 2401 0
	pushl	%ebp
.LCFI192:
	movl	%esp, %ebp
.LCFI193:
	pushl	%ebx
.LCFI194:
	subl	$36, %esp
.LCFI195:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2405 0
	movl	8(%ebp), %eax
	movl	priority_info_map@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	splay_tree_lookup@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2407 0
	cmpl	$0, -8(%ebp)
	jne	.L792
	.loc 1 2411 0
	movl	$8, (%esp)
	call	xmalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2412 0
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 2413 0
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 2414 0
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	priority_info_map@GOTOFF(%ebx), %ecx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	splay_tree_insert@PLT
	jmp	.L794
.L792:
	.loc 1 2419 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L794:
	.loc 1 2421 0
	movl	-12(%ebp), %eax
	.loc 1 2422 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE61:
	.size	get_priority_info, .-get_priority_info
	.section	.rodata
	.align 32
	.type	__FUNCTION__.18533, @object
	.size	__FUNCTION__.18533, 43
__FUNCTION__.18533:
	.string	"start_static_initialization_or_destruction"
	.text
	.type	start_static_initialization_or_destruction, @function
start_static_initialization_or_destruction:
.LFB62:
	.loc 1 2432 0
	pushl	%ebp
.LCFI196:
	movl	%esp, %ebp
.LCFI197:
	pushl	%esi
.LCFI198:
	pushl	%ebx
.LCFI199:
	subl	$64, %esp
.LCFI200:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2433 0
	movl	$0, -36(%ebp)
	.loc 1 2441 0
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2442 0
	cmpl	$0, -32(%ebp)
	jne	.L797
	.loc 1 2443 0
	movl	$65535, -32(%ebp)
.L797:
	.loc 1 2447 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	get_priority_info
	movl	%eax, -16(%ebp)
	.loc 1 2448 0
	cmpl	$0, 12(%ebp)
	je	.L799
	.loc 1 2449 0
	movl	-16(%ebp), %eax
	movl	$1, (%eax)
	jmp	.L801
.L799:
	.loc 1 2451 0
	movl	-16(%ebp), %eax
	movl	$1, 4(%eax)
.L801:
	.loc 1 2457 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2458 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2472 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	member_p@PLT
	testl	%eax, %eax
	je	.L802
	.loc 1 2474 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, 56(%edx)
	.loc 1 2475 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %edx
	movzbl	5(%edx), %eax
	orl	$16, %eax
	movb	%al, 5(%edx)
.L802:
	.loc 1 2480 0
	call	begin_if_stmt@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2481 0
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	priority_decl@GOTOFF(%ebx), %edx
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$103, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2484 0
	cmpl	$0, 12(%ebp)
	je	.L804
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L806
.L804:
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -44(%ebp)
.L806:
	movl	-44(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2485 0
	movl	initialize_p_decl@GOTOFF(%ebx), %edx
	movl	$1, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$103, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2488 0
	movl	$1, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$93, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2491 0
	movl	$0, -24(%ebp)
	.loc 1 2496 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L807
	movl	8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L809
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L809
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L807
.L809:
.LBB19:
	.loc 1 2502 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_guard@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2506 0
	movl	flag_use_cxa_atexit@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L812
	.loc 1 2510 0
	cmpl	$0, 12(%ebp)
	jne	.L814
	leal	__FUNCTION__.18533@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2510, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L814:
	.loc 1 2511 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	get_guard_cond@PLT
	movl	%eax, -12(%ebp)
	jmp	.L816
.L812:
	.loc 1 2520 0
	cmpl	$0, 12(%ebp)
	je	.L817
	.loc 1 2521 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %esi
	movl	$1, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$132, (%esp)
	call	build_unary_op@PLT
	movl	$1, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$103, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -12(%ebp)
	jmp	.L816
.L817:
	.loc 1 2528 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %esi
	movl	$1, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$131, (%esp)
	call	build_unary_op@PLT
	movl	$1, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$103, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -12(%ebp)
.L816:
	.loc 1 2535 0
	movl	$1, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$93, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -28(%ebp)
.L807:
.LBE19:
	.loc 1 2538 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_if_stmt_cond@PLT
	.loc 1 2542 0
	cmpl	$0, -24(%ebp)
	je	.L819
	cmpl	$0, 12(%ebp)
	je	.L819
	movl	flag_use_cxa_atexit@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L819
	.loc 1 2543 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	set_guard@PLT
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
.L819:
	.loc 1 2545 0
	movl	-36(%ebp), %eax
	.loc 1 2546 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE62:
	.size	start_static_initialization_or_destruction, .-start_static_initialization_or_destruction
	.type	finish_static_initialization_or_destruction, @function
finish_static_initialization_or_destruction:
.LFB63:
	.loc 1 2555 0
	pushl	%ebp
.LCFI201:
	movl	%esp, %ebp
.LCFI202:
	pushl	%ebx
.LCFI203:
	subl	$4, %esp
.LCFI204:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2556 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_then_clause@PLT
	.loc 1 2557 0
	call	finish_if_stmt@PLT
	.loc 1 2561 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 56(%eax)
	.loc 1 2562 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %edx
	movzbl	5(%edx), %eax
	andl	$-17, %eax
	movb	%al, 5(%edx)
	.loc 1 2563 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE63:
	.size	finish_static_initialization_or_destruction, .-finish_static_initialization_or_destruction
	.type	do_static_initialization, @function
do_static_initialization:
.LFB64:
	.loc 1 2572 0
	pushl	%ebp
.LCFI205:
	movl	%esp, %ebp
.LCFI206:
	pushl	%ebx
.LCFI207:
	subl	$36, %esp
.LCFI208:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2576 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	start_static_initialization_or_destruction
	movl	%eax, -8(%ebp)
	.loc 1 2581 0
	cmpl	$0, 12(%ebp)
	je	.L827
	.loc 1 2582 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
.L827:
	.loc 1 2586 0
	movl	flag_use_cxa_atexit@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L829
	.loc 1 2587 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	register_dtor_fn@PLT
.L829:
	.loc 1 2590 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_static_initialization_or_destruction
	.loc 1 2591 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE64:
	.size	do_static_initialization, .-do_static_initialization
	.section	.rodata
	.type	__FUNCTION__.18626, @object
	.size	__FUNCTION__.18626, 22
__FUNCTION__.18626:
	.string	"do_static_destruction"
	.text
	.type	do_static_destruction, @function
do_static_destruction:
.LFB65:
	.loc 1 2601 0
	pushl	%ebp
.LCFI209:
	movl	%esp, %ebp
.LCFI210:
	pushl	%ebx
.LCFI211:
	subl	$36, %esp
.LCFI212:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2606 0
	movl	flag_use_cxa_atexit@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L833
	leal	__FUNCTION__.18626@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2606, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L833:
	.loc 1 2609 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L837
	.loc 1 2613 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	start_static_initialization_or_destruction
	movl	%eax, -8(%ebp)
	.loc 1 2615 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cleanup@PLT
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	.loc 1 2616 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_static_initialization_or_destruction
.L837:
	.loc 1 2617 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE65:
	.size	do_static_destruction, .-do_static_destruction
	.section	.rodata
	.align 32
	.type	__FUNCTION__.18648, @object
	.size	__FUNCTION__.18648, 37
__FUNCTION__.18648:
	.string	"prune_vars_needing_no_initialization"
	.text
	.type	prune_vars_needing_no_initialization, @function
prune_vars_needing_no_initialization:
.LFB66:
	.loc 1 2630 0
	pushl	%ebp
.LCFI213:
	movl	%esp, %ebp
.LCFI214:
	pushl	%ebx
.LCFI215:
	subl	$52, %esp
.LCFI216:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2631 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2632 0
	movl	$0, -20(%ebp)
	.loc 1 2634 0
	jmp	.L853
.L840:
.LBB20:
	.loc 1 2636 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2637 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2638 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2641 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L841
	.loc 1 2643 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2644 0
	jmp	.L839
.L841:
	.loc 1 2648 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	je	.L843
	leal	__FUNCTION__.18648@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2648, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L843:
	.loc 1 2652 0
	movl	-12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L845
	.loc 1 2654 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2655 0
	jmp	.L839
.L845:
	.loc 1 2660 0
	cmpl	$0, -8(%ebp)
	je	.L847
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L847
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	value_member@PLT
	testl	%eax, %eax
	je	.L847
	.loc 1 2663 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2664 0
	jmp	.L839
.L847:
	.loc 1 2669 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2670 0
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2671 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L839:
.L853:
.LBE20:
	.loc 1 2634 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L840
	.loc 1 2674 0
	movl	-20(%ebp), %eax
	.loc 1 2675 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE66:
	.size	prune_vars_needing_no_initialization, .-prune_vars_needing_no_initialization
	.type	write_out_vars, @function
write_out_vars:
.LFB67:
	.loc 1 2683 0
	pushl	%ebp
.LCFI217:
	movl	%esp, %ebp
.LCFI218:
	pushl	%ebx
.LCFI219:
	subl	$36, %esp
.LCFI220:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2686 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L855
.L856:
	.loc 1 2687 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L857
	.loc 1 2688 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	rest_of_decl_compilation@PLT
.L857:
	.loc 1 2686 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L855:
	cmpl	$0, -8(%ebp)
	jne	.L856
	.loc 1 2689 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE67:
	.size	write_out_vars, .-write_out_vars
	.type	generate_ctor_or_dtor_function, @function
generate_ctor_or_dtor_function:
.LFB68:
	.loc 1 2699 0
	pushl	%ebp
.LCFI221:
	movl	%esp, %ebp
.LCFI222:
	pushl	%ebx
.LCFI223:
	subl	$52, %esp
.LCFI224:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2707 0
	cmpl	$0, 8(%ebp)
	je	.L862
	.loc 1 2708 0
	movb	$73, -5(%ebp)
	jmp	.L864
.L862:
	.loc 1 2710 0
	movb	$68, -5(%ebp)
.L864:
	.loc 1 2713 0
	movzbl	-5(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	start_objects
	movl	%eax, -20(%ebp)
	.loc 1 2717 0
	movl	ssdf_decls@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L865
	.loc 1 2718 0
	movl	$0, -16(%ebp)
	jmp	.L867
.L868:
	.loc 1 2720 0
	movl	12(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2722 0
	movl	8(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2724 0
	movl	ssdf_decls@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_function_call@PLT
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	.loc 1 2718 0
	addl	$1, -16(%ebp)
.L867:
	movl	ssdf_decls@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	cmpl	-16(%ebp), %eax
	ja	.L868
.L865:
	.loc 1 2731 0
	cmpl	$65535, 12(%ebp)
	jne	.L869
.LBB21:
	.loc 1 2735 0
	cmpl	$0, 8(%ebp)
	je	.L871
	movl	static_ctors@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L873
.L871:
	movl	static_dtors@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L873:
	movl	-40(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2736 0
	jmp	.L874
.L875:
	.loc 1 2738 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	build_function_call@PLT
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	.loc 1 2737 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L874:
	.loc 1 2736 0
	cmpl	$0, -12(%ebp)
	jne	.L875
.L869:
.LBE21:
	.loc 1 2742 0
	movzbl	-5(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	finish_objects
	.loc 1 2743 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE68:
	.size	generate_ctor_or_dtor_function, .-generate_ctor_or_dtor_function
	.type	generate_ctor_and_dtor_functions_for_priority, @function
generate_ctor_and_dtor_functions_for_priority:
.LFB69:
	.loc 1 2752 0
	pushl	%ebp
.LCFI225:
	movl	%esp, %ebp
.LCFI226:
	pushl	%ebx
.LCFI227:
	subl	$36, %esp
.LCFI228:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2753 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2754 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2758 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L878
	cmpl	$65535, -12(%ebp)
	jne	.L880
	movl	static_ctors@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L880
.L878:
	.loc 1 2760 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	generate_ctor_or_dtor_function
.L880:
	.loc 1 2762 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L882
	cmpl	$65535, -12(%ebp)
	jne	.L884
	movl	static_dtors@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L884
.L882:
	.loc 1 2764 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	generate_ctor_or_dtor_function
.L884:
	.loc 1 2768 0
	movl	$0, %eax
	.loc 1 2769 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE69:
	.size	generate_ctor_and_dtor_functions_for_priority, .-generate_ctor_and_dtor_functions_for_priority
	.section	.rodata
	.align 4
.LC67:
	.string	"inline function `%D' used but never defined"
	.text
.globl finish_file
	.type	finish_file, @function
finish_file:
.LFB70:
	.loc 1 2778 0
	pushl	%ebp
.LCFI229:
	movl	%esp, %ebp
.LCFI230:
	pushl	%ebx
.LCFI231:
	subl	$100, %esp
.LCFI232:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2783 0
	movl	at_eof@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 2786 0
	call	global_bindings_p@PLT
	testl	%eax, %eax
	je	.L1011
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L1011
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L891
	.loc 1 2787 0
	jmp	.L1011
.L891:
	.loc 1 2791 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2793 0
	movl	interface_unknown@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 2794 0
	movl	interface_only@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 2812 0
	movl	$15, (%esp)
	call	timevar_push@PLT
	.loc 1 2814 0
	call	emit_support_tinfos@PLT
.L893:
.LBB22:
	.loc 1 2820 0
	movl	$0, -52(%ebp)
	.loc 1 2824 0
	call	instantiate_pending_templates@PLT
	.loc 1 2832 0
	jmp	.L894
.L895:
	.loc 1 2835 0
	movl	$1, -52(%ebp)
	.loc 1 2836 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	292(%eax), %eax
	movl	(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 292(%eax)
.L894:
	.loc 1 2832 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	292(%eax), %eax
	testl	%eax, %eax
	je	.L896
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	292(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	maybe_emit_vtables
	testl	%eax, %eax
	jne	.L895
.L896:
	.loc 1 2839 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	292(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2840 0
	cmpl	$0, -40(%ebp)
	je	.L898
.LBB23:
	.loc 1 2842 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2844 0
	jmp	.L900
.L901:
	.loc 1 2846 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	maybe_emit_vtables
	testl	%eax, %eax
	je	.L902
	.loc 1 2848 0
	movl	$1, -52(%ebp)
	.loc 1 2849 0
	movl	-36(%ebp), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L904
.L902:
	.loc 1 2852 0
	movl	-36(%ebp), %eax
	movl	%eax, -40(%ebp)
.L904:
	.loc 1 2854 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L900:
	.loc 1 2844 0
	cmpl	$0, -36(%ebp)
	jne	.L901
.L898:
.LBE23:
	.loc 1 2860 0
	movl	$0, 8(%esp)
	movl	emit_tinfo_decl@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	unemitted_tinfo_decl_p@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	walk_globals@PLT
	testl	%eax, %eax
	je	.L905
	.loc 1 2861 0
	movl	$1, -52(%ebp)
.L905:
	.loc 1 2868 0
	movl	static_aggregates@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	prune_vars_needing_no_initialization
	movl	%eax, -48(%ebp)
	.loc 1 2870 0
	cmpl	$0, -48(%ebp)
	je	.L907
.LBB24:
	.loc 1 2881 0
	call	start_static_storage_duration_function
	movl	%eax, -28(%ebp)
	.loc 1 2884 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	write_out_vars
	.loc 1 2887 0
	movl	-48(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L909
.L910:
	.loc 1 2888 0
	movl	-32(%ebp), %eax
	movl	16(%eax), %edx
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	do_static_initialization
	.loc 1 2887 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L909:
	cmpl	$0, -32(%ebp)
	jne	.L910
	.loc 1 2897 0
	movl	flag_use_cxa_atexit@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L912
	.loc 1 2899 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, -48(%ebp)
	.loc 1 2900 0
	movl	-48(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L914
.L915:
	.loc 1 2901 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	do_static_destruction
	.loc 1 2900 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L914:
	cmpl	$0, -32(%ebp)
	jne	.L915
	jmp	.L917
.L912:
	.loc 1 2904 0
	movl	$0, -48(%ebp)
.L917:
	.loc 1 2908 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_static_storage_duration_function
	.loc 1 2913 0
	movl	$1, -52(%ebp)
.L907:
.LBE24:
	.loc 1 2916 0
	movl	$0, -44(%ebp)
	jmp	.L918
.L919:
.LBB25:
	.loc 1 2918 0
	movl	deferred_fns@GOTOFF(%ebx), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2921 0
	movl	-24(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L920
	movl	-24(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L920
	movl	-24(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L920
	movl	-24(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L924
	movl	-24(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L924
	movl	-24(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L920
.L924:
	.loc 1 2930 0
	call	push_to_top_level@PLT
	.loc 1 2931 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	synthesize_method@PLT
	.loc 1 2932 0
	call	pop_from_top_level@PLT
	.loc 1 2933 0
	movl	$1, -52(%ebp)
.L920:
	.loc 1 2942 0
	movl	-24(%ebp), %eax
	movl	116(%eax), %eax
	testl	%eax, %eax
	je	.L927
	.loc 1 2945 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	import_export_decl@PLT
	.loc 1 2957 0
	movl	-24(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L929
	movl	-24(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L929
	movl	at_eof@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L932
	movl	-24(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L932
	movl	-24(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L935
.L932:
	movl	-24(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L936
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L935
.L936:
	movl	flag_syntax_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L929
	movl	-24(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L929
.L935:
	.loc 1 2960 0
	movl	-24(%ebp), %eax
	movzbl	33(%eax), %edx
	andl	$-2, %edx
	movb	%dl, 33(%eax)
.L929:
	.loc 1 2966 0
	movl	-24(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L927
	movl	at_eof@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L940
	movl	-24(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L940
	movl	-24(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L943
.L940:
	movl	-24(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L944
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L943
.L944:
	movl	flag_syntax_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L927
	movl	-24(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L927
.L943:
	movl	-24(%ebp), %eax
	movl	116(%eax), %eax
	testl	%eax, %eax
	je	.L927
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L927
.LBB26:
	.loc 1 2976 0
	movl	-24(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 2979 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_body@PLT
	.loc 1 2981 0
	movl	-24(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$-2, %eax
	movb	%al, 33(%edx)
	.loc 1 2982 0
	movl	-24(%ebp), %eax
	movl	136(%eax), %ecx
	movl	-20(%ebp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	6(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
	.loc 1 2986 0
	movl	flag_syntax_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L949
	.loc 1 2987 0
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$64, %edx
	movb	%dl, 9(%eax)
.L949:
	.loc 1 2988 0
	movl	$1, -52(%ebp)
	.loc 1 2994 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	gxx_emits_decl@PLT
.L927:
.LBE26:
.LBE25:
	.loc 1 2916 0
	addl	$1, -44(%ebp)
.L918:
	movl	deferred_fns@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L951
	movl	deferred_fns@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L953
.L951:
	movl	$0, -92(%ebp)
.L953:
	movl	-92(%ebp), %eax
	cmpl	-44(%ebp), %eax
	ja	.L919
	.loc 1 2999 0
	movl	deferred_fns@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L955
	movl	deferred_fns@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L955
	movl	deferred_fns@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L958
	movl	deferred_fns@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L960
.L958:
	movl	$0, -88(%ebp)
.L960:
	movl	deferred_fns@GOTOFF(%ebx), %eax
	addl	$16, %eax
	movl	-88(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	wrapup_global_declarations@PLT
	testl	%eax, %eax
	je	.L955
	.loc 1 3002 0
	movl	$1, -52(%ebp)
.L955:
	.loc 1 3003 0
	movl	$0, 4(%esp)
	movl	wrapup_globals_for_namespace@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	walk_namespaces@PLT
	testl	%eax, %eax
	je	.L962
	.loc 1 3004 0
	movl	$1, -52(%ebp)
.L962:
	.loc 1 3007 0
	movl	$0, -44(%ebp)
	jmp	.L964
.L965:
.LBB27:
	.loc 1 3009 0
	movl	pending_statics@GOTOFF(%ebx), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3010 0
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L966
	.loc 1 3012 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	import_export_decl@PLT
	.loc 1 3013 0
	movl	-16(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L966
	movl	-16(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L966
	.loc 1 3014 0
	movl	-16(%ebp), %eax
	movzbl	33(%eax), %edx
	andl	$-2, %edx
	movb	%dl, 33(%eax)
.L966:
.LBE27:
	.loc 1 3007 0
	addl	$1, -44(%ebp)
.L964:
	movl	pending_statics@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L970
	movl	pending_statics@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L972
.L970:
	movl	$0, -84(%ebp)
.L972:
	movl	-84(%ebp), %eax
	cmpl	-44(%ebp), %eax
	ja	.L965
	.loc 1 3016 0
	movl	pending_statics@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L974
	movl	pending_statics@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L976
	movl	pending_statics@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L978
.L976:
	movl	$0, -80(%ebp)
.L978:
	movl	pending_statics@GOTOFF(%ebx), %eax
	addl	$16, %eax
	movl	-80(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	wrapup_global_declarations@PLT
	testl	%eax, %eax
	je	.L974
	.loc 1 3019 0
	movl	$1, -52(%ebp)
.L974:
.LBE22:
	.loc 1 3021 0
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	jne	.L893
	.loc 1 3024 0
	movl	$0, -44(%ebp)
	jmp	.L981
.L982:
.LBB28:
	.loc 1 3026 0
	movl	deferred_fns@GOTOFF(%ebx), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3028 0
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L983
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L983
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L983
	movl	-12(%ebp), %eax
	movl	116(%eax), %eax
	testl	%eax, %eax
	jne	.L983
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$6, %al
	je	.L983
	.loc 1 3034 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_warning_at@PLT
.L983:
.LBE28:
	.loc 1 3024 0
	addl	$1, -44(%ebp)
.L981:
	movl	deferred_fns@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L989
	movl	deferred_fns@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L991
.L989:
	movl	$0, -76(%ebp)
.L991:
	movl	-76(%ebp), %eax
	cmpl	-44(%ebp), %eax
	ja	.L982
	.loc 1 3038 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	248(%eax), %eax
	movl	%eax, (%esp)
	call	push_lang_context@PLT
	.loc 1 3042 0
	movl	priority_info_map@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L993
	.loc 1 3043 0
	movl	priority_info_map@GOTOFF(%ebx), %edx
	movl	$0, 8(%esp)
	leal	generate_ctor_and_dtor_functions_for_priority@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	splay_tree_foreach@PLT
	jmp	.L995
.L993:
	.loc 1 3048 0
	movl	static_ctors@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L996
	.loc 1 3049 0
	movl	$65535, 4(%esp)
	movl	$1, (%esp)
	call	generate_ctor_or_dtor_function
.L996:
	.loc 1 3051 0
	movl	static_dtors@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L995
	.loc 1 3052 0
	movl	$65535, 4(%esp)
	movl	$0, (%esp)
	call	generate_ctor_or_dtor_function
.L995:
	.loc 1 3057 0
	movl	priority_info_map@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L999
	.loc 1 3058 0
	movl	priority_info_map@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	splay_tree_delete@PLT
.L999:
	.loc 1 3062 0
	call	pop_lang_context@PLT
	.loc 1 3066 0
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	wrapup_globals_for_namespace@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	walk_namespaces@PLT
	.loc 1 3067 0
	movl	pending_statics@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1001
	.loc 1 3068 0
	movl	pending_statics@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1003
	movl	pending_statics@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1005
.L1003:
	movl	$0, -72(%ebp)
.L1005:
	movl	pending_statics@GOTOFF(%ebx), %eax
	addl	$16, %eax
	movl	-72(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	check_global_declarations@PLT
.L1001:
	.loc 1 3071 0
	call	finish_repo@PLT
.LBB29:
	.loc 1 3077 0
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	dump_begin@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3079 0
	cmpl	$0, -8(%ebp)
	je	.L1006
	.loc 1 3081 0
	movl	-56(%ebp), %eax
	movl	%eax, %edx
	andl	$-3, %edx
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	dump_node@PLT
	.loc 1 3082 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	dump_end@PLT
.L1006:
.LBE29:
	.loc 1 3089 0
	movl	back_end_hook@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1008
	.loc 1 3090 0
	movl	back_end_hook@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
.L1008:
	.loc 1 3093 0
	movl	$15, (%esp)
	call	timevar_pop@PLT
	.loc 1 3095 0
	movl	flag_detailed_statistics@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1011
	.loc 1 3097 0
	call	dump_tree_statistics@PLT
	.loc 1 3098 0
	call	dump_time_statistics@PLT
.L1011:
	.loc 1 3100 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE70:
	.size	finish_file, .-finish_file
.globl reparse_absdcl_as_expr
	.type	reparse_absdcl_as_expr, @function
reparse_absdcl_as_expr:
.LFB71:
	.loc 1 3114 0
	pushl	%ebp
.LCFI233:
	movl	%esp, %ebp
.LCFI234:
	pushl	%ebx
.LCFI235:
	subl	$20, %esp
.LCFI236:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3116 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1013
	.loc 1 3117 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_functional_cast@PLT
	movl	%eax, -8(%ebp)
	jmp	.L1015
.L1013:
	.loc 1 3120 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reparse_absdcl_as_expr@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3122 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_call_expr@PLT
	movl	%eax, -8(%ebp)
.L1015:
	movl	-8(%ebp), %eax
	.loc 1 3123 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE71:
	.size	reparse_absdcl_as_expr, .-reparse_absdcl_as_expr
	.section	.rodata
	.type	__FUNCTION__.19085, @object
	.size	__FUNCTION__.19085, 24
__FUNCTION__.19085:
	.string	"reparse_absdcl_as_casts"
.LC68:
	.string	"use of old-style cast"
	.text
.globl reparse_absdcl_as_casts
	.type	reparse_absdcl_as_casts, @function
reparse_absdcl_as_casts:
.LFB72:
	.loc 1 3136 0
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
	.loc 1 3138 0
	movl	$0, -12(%ebp)
	.loc 1 3140 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L1027
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L1027
	.loc 1 3143 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	groktypename@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3144 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 3146 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1021
	.loc 1 3147 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L1027
.L1021:
	.loc 1 3150 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	digest_init@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3151 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1027
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1027
.LBB30:
	.loc 1 3153 0
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_array_type@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3154 0
	cmpl	$0, -8(%ebp)
	je	.L1027
	leal	__FUNCTION__.19085@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3154, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1028:
.LBE30:
	.loc 1 3161 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	groktypename@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3162 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 3163 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1029
	.loc 1 3164 0
	movl	$1, -12(%ebp)
.L1029:
	.loc 1 3165 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_c_cast@PLT
	movl	%eax, 12(%ebp)
.L1027:
	.loc 1 3159 0
	cmpl	$0, 8(%ebp)
	jne	.L1028
	.loc 1 3168 0
	movl	warn_old_style_cast@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1032
	movl	in_system_header@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1032
	cmpl	$0, -12(%ebp)
	je	.L1032
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	32(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	248(%eax), %eax
	cmpl	%eax, %edx
	je	.L1032
	.loc 1 3170 0
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1032:
	.loc 1 3172 0
	movl	12(%ebp), %eax
	.loc 1 3173 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE72:
	.size	reparse_absdcl_as_casts, .-reparse_absdcl_as_casts
	.section	.rodata
	.type	__FUNCTION__.19209, @object
	.size	__FUNCTION__.19209, 21
__FUNCTION__.19209:
	.string	"build_expr_from_tree"
.LC69:
	.string	"unary *"
	.text
.globl build_expr_from_tree
	.type	build_expr_from_tree, @function
build_expr_from_tree:
.LFB73:
	.loc 1 3181 0
	pushl	%ebp
.LCFI241:
	movl	%esp, %ebp
.LCFI242:
	pushl	%edi
.LCFI243:
	pushl	%esi
.LCFI244:
	pushl	%ebx
.LCFI245:
	subl	$156, %esp
.LCFI246:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3182 0
	cmpl	$0, 8(%ebp)
	je	.L1039
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1041
.L1039:
	.loc 1 3183 0
	movl	8(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1041:
	.loc 1 3185 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -144(%ebp)
	cmpl	$215, -144(%ebp)
	ja	.L1043
	movl	-144(%ebp), %eax
	sall	$2, %eax
	movl	.L1075@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1075:
	.long	.L1043@GOTOFF
	.long	.L1044@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1045@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1046@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1047@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1048@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1049@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1051@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1052@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1053@GOTOFF
	.long	.L1054@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1056@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1056@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1056@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1056@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1056@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1056@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1056@GOTOFF
	.long	.L1056@GOTOFF
	.long	.L1056@GOTOFF
	.long	.L1056@GOTOFF
	.long	.L1056@GOTOFF
	.long	.L1056@GOTOFF
	.long	.L1057@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1059@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1060@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1061@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1062@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1063@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1064@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1043@GOTOFF
	.long	.L1065@GOTOFF
	.long	.L1066@GOTOFF
	.long	.L1067@GOTOFF
	.long	.L1068@GOTOFF
	.long	.L1069@GOTOFF
	.long	.L1070@GOTOFF
	.long	.L1071@GOTOFF
	.long	.L1072@GOTOFF
	.long	.L1073@GOTOFF
	.long	.L1074@GOTOFF
	.text
.L1044:
	.loc 1 3188 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_identifier@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1065:
	.loc 1 3191 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1076
.LBB31:
	.loc 1 3193 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -116(%ebp)
	.loc 1 3194 0
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	namespace_binding@PLT
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	do_scoped_id@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1076:
.LBE31:
	.loc 1 3197 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	do_identifier@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1064:
.LBB32:
	.loc 1 3205 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, -112(%ebp)
	.loc 1 3206 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, -108(%ebp)
	.loc 1 3208 0
	movl	-112(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	jne	.L1078
	.loc 1 3210 0
	movl	-112(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -104(%ebp)
	.loc 1 3211 0
	movl	-112(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L1080
.L1078:
	.loc 1 3214 0
	movl	$0, -104(%ebp)
.L1080:
	.loc 1 3216 0
	movl	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_template_function@PLT
	movl	%eax, -112(%ebp)
	.loc 1 3217 0
	cmpl	$0, -104(%ebp)
	je	.L1081
	.loc 1 3218 0
	movl	-112(%ebp), %eax
	movl	4(%eax), %edx
	movl	-112(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$40, (%esp)
	call	build@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1081:
	.loc 1 3221 0
	movl	-112(%ebp), %edx
	movl	%edx, -148(%ebp)
	jmp	.L1042
.L1048:
.LBE32:
	.loc 1 3225 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %edx
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_x_indirect_ref@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1067:
	.loc 1 3229 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_functional_cast@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1068:
	.loc 1 3233 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_reinterpret_cast@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1069:
	.loc 1 3237 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_const_cast@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1071:
	.loc 1 3241 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_dynamic_cast@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1070:
	.loc 1 3245 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_static_cast@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1056:
	.loc 1 3260 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1083
	.loc 1 3261 0
	movl	8(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1083:
	.loc 1 3262 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_x_unary_op@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1055:
	.loc 1 3296 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_x_binary_op@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1072:
	.loc 1 3302 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	build_m_component_ref@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1062:
	.loc 1 3307 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_offset_ref@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1049:
	.loc 1 3310 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1085
	.loc 1 3312 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$44, (%esp)
	call	build_nt@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1085:
	.loc 1 3314 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	grok_array_decl@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1058:
.LBB33:
	.loc 1 3320 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, -100(%ebp)
	.loc 1 3321 0
	movl	-100(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	je	.L1087
	.loc 1 3322 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-103, %al
	jne	.L1089
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	expr_sizeof@PLT
	movl	%eax, -140(%ebp)
	jmp	.L1091
.L1089:
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	c_alignof_expr@PLT
	movl	%eax, -140(%ebp)
.L1091:
	movl	-140(%ebp), %edx
	movl	%edx, -148(%ebp)
	jmp	.L1042
.L1087:
	.loc 1 3324 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_sizeof_or_alignof_type@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1066:
.LBE33:
	.loc 1 3328 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edi
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	build_x_modify_expr@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1059:
	.loc 1 3334 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, (%esp)
	call	build_x_arrow@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1060:
	.loc 1 3338 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %edi
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, -136(%ebp)
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%edi, 12(%esp)
	movl	-136(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	build_new@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1061:
	.loc 1 3345 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %edi
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -132(%ebp)
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%edi, 12(%esp)
	movl	-132(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	delete_sanity@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1051:
	.loc 1 3351 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L1092
	.loc 1 3352 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, (%esp)
	call	build_x_compound_expr@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1092:
	.loc 1 3355 0
	leal	__FUNCTION__.19209@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3355, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1054:
	.loc 1 3358 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-71, %al
	jne	.L1094
.LBB34:
	.loc 1 3360 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 3361 0
	movl	-96(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 3363 0
	movl	-92(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L1096
	.loc 1 3364 0
	movl	-92(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %edx
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$203, (%esp)
	call	build_nt@PLT
	movl	%eax, -92(%ebp)
.L1096:
	.loc 1 3368 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %edi
	movl	-96(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %edx
	movl	%edi, 12(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	build_scoped_method_call@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1094:
.LBE34:
.LBB35:
	.loc 1 3376 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 3387 0
	movl	-88(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L1098
	.loc 1 3388 0
	movl	-88(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %edx
	movl	-88(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_template_function@PLT
	movl	%eax, -88(%ebp)
.L1098:
	.loc 1 3392 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %edx
	movl	$3, 16(%esp)
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_method_call@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1053:
.LBE35:
	.loc 1 3400 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-71, %al
	jne	.L1100
.LBB36:
	.loc 1 3402 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 3403 0
	movl	-84(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 3406 0
	movl	-80(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L1102
	.loc 1 3407 0
	movl	-80(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %edx
	movl	-80(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$203, (%esp)
	call	build_nt@PLT
	movl	%eax, -80(%ebp)
.L1102:
	.loc 1 3411 0
	movl	-84(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, -72(%ebp)
	.loc 1 3412 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, -68(%ebp)
	.loc 1 3413 0
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_scoped_fn_name@PLT
	movl	%eax, -76(%ebp)
	.loc 1 3415 0
	movl	$1, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	build_call_from_tree@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1100:
.LBE36:
.LBB37:
	.loc 1 3419 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 3421 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, -56(%ebp)
	.loc 1 3422 0
	cmpl	$0, -56(%ebp)
	je	.L1104
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-50, %al
	jne	.L1104
	movl	-64(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1104
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L1104
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1109
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_member@PLT
	testl	%eax, %eax
	jne	.L1104
.L1109:
	.loc 1 3429 0
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	do_identifier@PLT
	movl	%eax, -64(%ebp)
	.loc 1 3422 0
	jmp	.L1111
.L1104:
	.loc 1 3431 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	je	.L1112
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	really_overloaded_fn@PLT
	testl	%eax, %eax
	jne	.L1111
.L1112:
	.loc 1 3433 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, -64(%ebp)
.L1111:
	.loc 1 3435 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L1114
	.loc 1 3436 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	build_offset_ref_call_from_tree@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1114:
	.loc 1 3437 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	jne	.L1116
	.loc 1 3438 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %edx
	movl	-64(%ebp), %eax
	movl	24(%eax), %ecx
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	finish_object_call_expr@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1116:
	.loc 1 3441 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, -64(%ebp)
	.loc 1 3442 0
	movl	$0, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	build_call_from_tree@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1052:
.LBE37:
	.loc 1 3447 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %edi
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	build_x_conditional_expr@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1074:
	.loc 1 3453 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %edi
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	finish_pseudo_destructor_call_expr@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1045:
.LBB38:
	.loc 1 3462 0
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1118
	.loc 1 3463 0
	movl	8(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1118:
	.loc 1 3465 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 3466 0
	cmpl	$0, -52(%ebp)
	je	.L1120
	.loc 1 3467 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, -52(%ebp)
.L1120:
	.loc 1 3468 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 3469 0
	cmpl	$0, -48(%ebp)
	je	.L1122
	.loc 1 3470 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, -48(%ebp)
.L1122:
	.loc 1 3471 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3472 0
	cmpl	$0, -44(%ebp)
	je	.L1124
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	-44(%ebp), %eax
	je	.L1124
	.loc 1 3473 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, -44(%ebp)
.L1124:
	.loc 1 3474 0
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1047:
.LBE38:
.LBB39:
	.loc 1 3479 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, -40(%ebp)
	.loc 1 3480 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_class_member_access_expr@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1063:
.LBE39:
	.loc 1 3485 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, (%esp)
	call	build_throw@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1050:
.LBB40:
	.loc 1 3491 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3495 0
	cmpl	$0, -28(%ebp)
	je	.L1127
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1127
	movl	-28(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1127
	movl	-28(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1127
	.loc 1 3496 0
	movl	8(%ebp), %edx
	movl	%edx, -148(%ebp)
	jmp	.L1042
.L1127:
	.loc 1 3498 0
	movl	$0, -36(%ebp)
	.loc 1 3502 0
	cmpl	$0, -28(%ebp)
	je	.L1132
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1134
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1134
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1134
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1134
	movl	-28(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1134
.L1132:
	movl	$1, -128(%ebp)
	jmp	.L1139
.L1134:
	movl	$0, -128(%ebp)
.L1139:
	movzbl	-128(%ebp), %eax
	movb	%al, -13(%ebp)
	.loc 1 3503 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1140
.L1141:
.LBB41:
	.loc 1 3505 0
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3506 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3508 0
	cmpl	$0, -24(%ebp)
	je	.L1142
	cmpb	$0, -13(%ebp)
	je	.L1142
	.loc 1 3509 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, -24(%ebp)
.L1142:
	.loc 1 3510 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3511 0
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -36(%ebp)
.LBE41:
	.loc 1 3503 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L1140:
	cmpl	$0, -32(%ebp)
	jne	.L1141
	.loc 1 3514 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$47, (%esp)
	call	build_nt@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3515 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	-36(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	11(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 3517 0
	cmpl	$0, -28(%ebp)
	je	.L1146
	.loc 1 3518 0
	movl	$0, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	digest_init@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1146:
	.loc 1 3519 0
	movl	-36(%ebp), %edx
	movl	%edx, -148(%ebp)
	jmp	.L1042
.L1073:
.LBE40:
	.loc 1 3523 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L1148
	.loc 1 3524 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	get_typeid@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1148:
	.loc 1 3525 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, (%esp)
	call	build_typeid@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1046:
	.loc 1 3528 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1057:
	.loc 1 3531 0
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	build_va_arg@PLT
	movl	%eax, -148(%ebp)
	jmp	.L1042
.L1043:
	.loc 1 3535 0
	movl	8(%ebp), %eax
	movl	%eax, -148(%ebp)
.L1042:
	movl	-148(%ebp), %eax
	.loc 1 3537 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE73:
	.size	build_expr_from_tree, .-build_expr_from_tree
	.section	.rodata
	.align 32
	.type	__FUNCTION__.19570, @object
	.size	__FUNCTION__.19570, 32
__FUNCTION__.19570:
	.string	"build_offset_ref_call_from_tree"
	.text
.globl build_offset_ref_call_from_tree
	.type	build_offset_ref_call_from_tree, @function
build_offset_ref_call_from_tree:
.LFB74:
	.loc 1 3546 0
	pushl	%ebp
.LCFI247:
	movl	%esp, %ebp
.LCFI248:
	pushl	%ebx
.LCFI249:
	subl	$36, %esp
.LCFI250:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3549 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	je	.L1152
	leal	__FUNCTION__.19570@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3549, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1152:
	.loc 1 3567 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L1154
	.loc 1 3568 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 8(%ebp)
	jmp	.L1156
.L1154:
	.loc 1 3571 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3572 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 3573 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_member_function_from_ptrfunc@PLT
	movl	%eax, 8(%ebp)
	.loc 1 3574 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, 12(%ebp)
.L1156:
	.loc 1 3576 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_call@PLT
	.loc 1 3577 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE74:
	.size	build_offset_ref_call_from_tree, .-build_offset_ref_call_from_tree
	.section	.rodata
	.type	__FUNCTION__.19598, @object
	.size	__FUNCTION__.19598, 21
__FUNCTION__.19598:
	.string	"build_call_from_tree"
	.text
.globl build_call_from_tree
	.type	build_call_from_tree, @function
build_call_from_tree:
.LFB75:
	.loc 1 3587 0
	pushl	%ebp
.LCFI251:
	movl	%esp, %ebp
.LCFI252:
	pushl	%ebx
.LCFI253:
	subl	$52, %esp
.LCFI254:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movb	%al, -24(%ebp)
	.loc 1 3593 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L1159
	leal	__FUNCTION__.19598@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3593, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1159:
	.loc 1 3594 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-71, %al
	jne	.L1161
	leal	__FUNCTION__.19598@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3594, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1161:
	.loc 1 3601 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L1163
	.loc 1 3603 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3604 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3605 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	jmp	.L1165
.L1163:
	.loc 1 3609 0
	movl	$0, -12(%ebp)
	.loc 1 3610 0
	movl	$0, -16(%ebp)
.L1165:
	.loc 1 3613 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1166
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_first_fn@PLT
	movl	%eax, -28(%ebp)
	jmp	.L1168
.L1166:
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
.L1168:
	movl	-28(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3616 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1169
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1171
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L1173
	movl	-8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1173
.L1171:
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1169
	movl	-8(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1169
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L1173
	movl	-8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1169
.L1173:
	.loc 1 3622 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %edx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_member@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3624 0
	cmpl	$0, -8(%ebp)
	je	.L1169
	.loc 1 3625 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%ebp)
.L1169:
	.loc 1 3628 0
	cmpl	$0, -12(%ebp)
	je	.L1179
	.loc 1 3630 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L1181
	.loc 1 3631 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$203, (%esp)
	call	build_nt@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	jmp	.L1179
.L1181:
	.loc 1 3635 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%ebp)
.L1179:
	.loc 1 3638 0
	movzbl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_call_expr@PLT
	.loc 1 3639 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE75:
	.size	build_call_from_tree, .-build_call_from_tree
.globl reparse_decl_as_expr
	.type	reparse_decl_as_expr, @function
reparse_decl_as_expr:
.LFB76:
	.loc 1 3651 0
	pushl	%ebp
.LCFI255:
	movl	%esp, %ebp
.LCFI256:
	pushl	%ebx
.LCFI257:
	subl	$20, %esp
.LCFI258:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3652 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_expr_from_tree@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3653 0
	cmpl	$0, 8(%ebp)
	je	.L1185
	.loc 1 3654 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_functional_cast@PLT
	movl	%eax, -8(%ebp)
	jmp	.L1187
.L1185:
	.loc 1 3656 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L1187:
	movl	-8(%ebp), %eax
	.loc 1 3657 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE76:
	.size	reparse_decl_as_expr, .-reparse_decl_as_expr
	.section	.rodata
	.type	__FUNCTION__.19686, @object
	.size	__FUNCTION__.19686, 20
__FUNCTION__.19686:
	.string	"finish_decl_parsing"
	.text
.globl finish_decl_parsing
	.type	finish_decl_parsing, @function
finish_decl_parsing:
.LFB77:
	.loc 1 3666 0
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
	.loc 1 3667 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	cmpl	$44, -12(%ebp)
	je	.L1194
	cmpl	$44, -12(%ebp)
	ja	.L1199
	cmpl	$3, -12(%ebp)
	je	.L1192
	cmpl	$42, -12(%ebp)
	je	.L1193
	cmpl	$1, -12(%ebp)
	je	.L1191
	jmp	.L1190
.L1199:
	cmpl	$123, -12(%ebp)
	je	.L1196
	cmpl	$123, -12(%ebp)
	ja	.L1200
	cmpl	$92, -12(%ebp)
	je	.L1195
	jmp	.L1190
.L1200:
	cmpl	$185, -12(%ebp)
	je	.L1197
	cmpl	$203, -12(%ebp)
	je	.L1198
	jmp	.L1190
.L1191:
	.loc 1 3670 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1201
.L1193:
	.loc 1 3672 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	finish_decl_parsing@PLT
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	make_pointer_declarator@PLT
	movl	%eax, -8(%ebp)
	jmp	.L1201
.L1196:
	.loc 1 3675 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	finish_decl_parsing@PLT
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	make_reference_declarator@PLT
	movl	%eax, -8(%ebp)
	jmp	.L1201
.L1195:
	.loc 1 3678 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	finish_decl_parsing@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 3679 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1201
.L1197:
	.loc 1 3681 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	$3, 4(%esp)
	movl	%eax, (%esp)
	call	push_nested_class@PLT
	.loc 1 3682 0
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 3683 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1201
.L1194:
	.loc 1 3685 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	finish_decl_parsing@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 3686 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1201
.L1192:
	.loc 1 3689 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	finish_decl_parsing@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 3690 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1201
.L1198:
	.loc 1 3692 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1201
.L1190:
	.loc 1 3694 0
	leal	__FUNCTION__.19686@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3694, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1201:
	movl	-8(%ebp), %eax
	.loc 1 3697 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE77:
	.size	finish_decl_parsing, .-finish_decl_parsing
	.section	.rodata
	.type	__FUNCTION__.19712, @object
	.size	__FUNCTION__.19712, 12
__FUNCTION__.19712:
	.string	"is_ancestor"
	.text
.globl is_ancestor
	.type	is_ancestor, @function
is_ancestor:
.LFB78:
	.loc 1 3704 0
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
	.loc 1 3705 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	je	.L1204
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L1204
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1207
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1209
.L1207:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1204
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1204
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1204
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1204
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1209
.L1204:
	movl	$1, -16(%ebp)
	jmp	.L1214
.L1209:
	movl	$0, -16(%ebp)
.L1214:
	cmpl	$0, -16(%ebp)
	jne	.L1215
	leal	__FUNCTION__.19712@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3707, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1215:
	.loc 1 3708 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	je	.L1217
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L1217
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1220
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1222
.L1220:
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1217
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1217
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1217
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1217
	movl	12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1222
.L1217:
	movl	$1, -12(%ebp)
	jmp	.L1227
.L1222:
	movl	$0, -12(%ebp)
.L1227:
	cmpl	$0, -12(%ebp)
	jne	.L1228
	leal	__FUNCTION__.19712@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3711, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1228:
	.loc 1 3714 0
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jne	.L1230
	.loc 1 3715 0
	movl	$1, -8(%ebp)
	jmp	.L1232
.L1230:
	.loc 1 3720 0
	cmpl	$0, 12(%ebp)
	jne	.L1233
	.loc 1 3721 0
	movl	$0, -8(%ebp)
	jmp	.L1232
.L1233:
	.loc 1 3723 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L1235
	.loc 1 3724 0
	movl	$1, -8(%ebp)
	jmp	.L1232
.L1235:
	.loc 1 3726 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L1237
	.loc 1 3727 0
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, 12(%ebp)
.L1237:
	.loc 1 3728 0
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 3729 0
	jmp	.L1230
.L1232:
	movl	-8(%ebp), %eax
	.loc 1 3730 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE78:
	.size	is_ancestor, .-is_ancestor
.globl namespace_ancestor
	.type	namespace_ancestor, @function
namespace_ancestor:
.LFB79:
	.loc 1 3738 0
	pushl	%ebp
.LCFI267:
	movl	%esp, %ebp
.LCFI268:
	pushl	%ebx
.LCFI269:
	subl	$20, %esp
.LCFI270:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3739 0
	movl	$11, (%esp)
	call	timevar_push@PLT
	.loc 1 3740 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_ancestor@PLT
	testb	%al, %al
	je	.L1241
	.loc 1 3741 0
	movl	$11, (%esp)
	call	timevar_pop@PLT
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1243
.L1241:
	.loc 1 3742 0
	movl	$11, (%esp)
	call	timevar_pop@PLT
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L1244
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1246
.L1244:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L1246:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	namespace_ancestor@PLT
	movl	%eax, -12(%ebp)
.L1243:
	movl	-12(%ebp), %eax
	.loc 1 3744 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE79:
	.size	namespace_ancestor, .-namespace_ancestor
	.section	.rodata
	.type	__FUNCTION__.19801, @object
	.size	__FUNCTION__.19801, 20
__FUNCTION__.19801:
	.string	"add_using_namespace"
	.text
	.type	add_using_namespace, @function
add_using_namespace:
.LFB80:
	.loc 1 3754 0
	pushl	%ebp
.LCFI271:
	movl	%esp, %ebp
.LCFI272:
	pushl	%esi
.LCFI273:
	pushl	%ebx
.LCFI274:
	subl	$32, %esp
.LCFI275:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3756 0
	movl	$11, (%esp)
	call	timevar_push@PLT
	.loc 1 3758 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L1249
	.loc 1 3759 0
	movl	$11, (%esp)
	call	timevar_pop@PLT
	jmp	.L1266
.L1249:
	.loc 1 3760 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	je	.L1252
	leal	__FUNCTION__.19801@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3760, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1252:
	.loc 1 3761 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	je	.L1254
	leal	__FUNCTION__.19801@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3761, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1254:
	.loc 1 3763 0
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	purpose_member@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3764 0
	cmpl	$0, -12(%ebp)
	je	.L1256
	.loc 1 3766 0
	cmpl	$0, 16(%ebp)
	jne	.L1258
	.loc 1 3768 0
	movl	-12(%ebp), %eax
	movzbl	11(%eax), %edx
	andl	$-2, %edx
	movb	%dl, 11(%eax)
.L1258:
	.loc 1 3769 0
	movl	$11, (%esp)
	call	timevar_pop@PLT
	jmp	.L1266
.L1256:
	.loc 1 3773 0
	movl	8(%ebp), %eax
	movl	124(%eax), %esi
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	namespace_ancestor@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 124(%eax)
	.loc 1 3777 0
	movl	8(%ebp), %eax
	movl	124(%eax), %ecx
	movl	16(%ebp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	11(%ecx), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 3780 0
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 3784 0
	movl	12(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1260
.L1261:
	.loc 1 3786 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_using_namespace
	.loc 1 3784 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L1260:
	cmpl	$0, -12(%ebp)
	jne	.L1261
	.loc 1 3789 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1263
.L1264:
	.loc 1 3790 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %edx
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_using_namespace
	.loc 1 3789 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L1263:
	cmpl	$0, -12(%ebp)
	jne	.L1264
	.loc 1 3791 0
	movl	$11, (%esp)
	call	timevar_pop@PLT
.L1266:
	.loc 1 3792 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE80:
	.size	add_using_namespace, .-add_using_namespace
	.type	merge_functions, @function
merge_functions:
.LFB81:
	.loc 1 3805 0
	pushl	%ebp
.LCFI276:
	movl	%esp, %ebp
.LCFI277:
	pushl	%ebx
.LCFI278:
	subl	$52, %esp
.LCFI279:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB42:
	.loc 1 3806 0
	jmp	.L1268
.L1269:
	.loc 1 3808 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1270
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1272
.L1270:
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
.L1272:
	movl	-36(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3811 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1273
.L1274:
.LBB43:
	.loc 1 3813 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1275
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1277
.L1275:
	movl	-12(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1277:
	movl	-32(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3819 0
	movl	-8(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L1278
	movl	-8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L1280
	movl	-8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	4(%eax), %eax
	testb	%al, %al
	jne	.L1282
	jmp	.L1284
.L1280:
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1282
.L1284:
	movl	-16(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L1285
	movl	-16(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	4(%eax), %eax
	testb	%al, %al
	jne	.L1282
	jmp	.L1288
.L1285:
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1282
.L1288:
	movl	-8(%ebp), %eax
	movl	52(%eax), %edx
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	%eax, %edx
	je	.L1278
.L1282:
.LBE43:
	.loc 1 3811 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1289
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1291
.L1289:
	movl	$0, -28(%ebp)
.L1291:
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
.L1273:
	cmpl	$0, -12(%ebp)
	jne	.L1274
.L1278:
	.loc 1 3826 0
	cmpl	$0, -12(%ebp)
	jne	.L1292
	.loc 1 3827 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_overload@PLT
	movl	%eax, 8(%ebp)
.L1292:
.LBE42:
	.loc 1 3806 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1294
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1296
.L1294:
	movl	$0, -24(%ebp)
.L1296:
	movl	-24(%ebp), %eax
	movl	%eax, 12(%ebp)
.L1268:
	cmpl	$0, 12(%ebp)
	jne	.L1269
	.loc 1 3829 0
	movl	8(%ebp), %eax
	.loc 1 3830 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE81:
	.size	merge_functions, .-merge_functions
	.section	.rodata
	.type	__FUNCTION__.19907, @object
	.size	__FUNCTION__.19907, 15
__FUNCTION__.19907:
	.string	"ambiguous_decl"
.LC70:
	.string	"use of `%D' is ambiguous"
	.align 4
.LC71:
	.string	"  first declared as `%#D' here"
.LC72:
	.string	"  also declared as `%#D' here"
	.align 4
.LC73:
	.string	"`%D' denotes an ambiguous type"
.LC74:
	.string	"  first type here"
.LC75:
	.string	"  other type here"
	.text
	.type	ambiguous_decl, @function
ambiguous_decl:
.LFB82:
	.loc 1 3842 0
	pushl	%ebp
.LCFI280:
	movl	%esp, %ebp
.LCFI281:
	pushl	%ebx
.LCFI282:
	subl	$36, %esp
.LCFI283:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3844 0
	cmpl	$0, 12(%ebp)
	jne	.L1300
	leal	__FUNCTION__.19907@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3844, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1300:
	.loc 1 3846 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3847 0
	cmpl	$0, -12(%ebp)
	je	.L1302
	.loc 1 3848 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$34, -24(%ebp)
	je	.L1306
	cmpl	$34, -24(%ebp)
	ja	.L1309
	cmpl	$31, -24(%ebp)
	je	.L1305
	jmp	.L1304
.L1309:
	cmpl	$39, -24(%ebp)
	je	.L1307
	cmpl	$192, -24(%ebp)
	je	.L1308
	jmp	.L1304
.L1308:
	.loc 1 3853 0
	movl	20(%ebp), %eax
	andl	$6144, %eax
	testl	%eax, %eax
	je	.L1302
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1312
	movl	-12(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L1312
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1302
	movl	-12(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1302
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L1312
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L1312
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L1312
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1302
.L1312:
	.loc 1 3855 0
	movl	$0, -12(%ebp)
	.loc 1 3856 0
	jmp	.L1302
.L1306:
	.loc 1 3858 0
	movl	20(%ebp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L1302
	movl	20(%ebp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L1302
	.loc 1 3859 0
	movl	$0, -12(%ebp)
	.loc 1 3860 0
	jmp	.L1302
.L1307:
	.loc 1 3862 0
	movl	20(%ebp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L1302
	movl	20(%ebp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L1302
	.loc 1 3863 0
	movl	$0, -12(%ebp)
	.loc 1 3864 0
	jmp	.L1302
.L1305:
	.loc 1 3867 0
	movl	20(%ebp), %eax
	andl	$6144, %eax
	testl	%eax, %eax
	jne	.L1326
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1302
.L1326:
	.loc 1 3868 0
	movl	$0, -12(%ebp)
	.loc 1 3869 0
	jmp	.L1302
.L1304:
	.loc 1 3871 0
	movl	20(%ebp), %eax
	andl	$6144, %eax
	testl	%eax, %eax
	je	.L1302
	.loc 1 3872 0
	movl	$0, -12(%ebp)
.L1302:
	.loc 1 3875 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L1330
	.loc 1 3876 0
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L1332
.L1330:
	.loc 1 3877 0
	cmpl	$0, -12(%ebp)
	je	.L1332
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L1332
	.loc 1 3879 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	je	.L1335
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	je	.L1335
	.loc 1 3882 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	merge_functions
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 3879 0
	jmp	.L1332
.L1335:
	.loc 1 3888 0
	movl	20(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1338
	.loc 1 3893 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1340
	.loc 1 3895 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3896 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
.L1340:
	.loc 1 3899 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
.L1338:
	.loc 1 3901 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
.L1332:
	.loc 1 3905 0
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3906 0
	movl	20(%ebp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L1342
	movl	20(%ebp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L1342
	.loc 1 3907 0
	movl	$0, -8(%ebp)
.L1342:
	.loc 1 3908 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L1345
	.loc 1 3909 0
	movl	12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%edx)
	jmp	.L1347
.L1345:
	.loc 1 3910 0
	cmpl	$0, -8(%ebp)
	je	.L1347
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L1347
	.loc 1 3912 0
	movl	20(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1347
	.loc 1 3914 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3915 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 3916 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
.L1347:
	.loc 1 3919 0
	movl	12(%ebp), %eax
	.loc 1 3920 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE82:
	.size	ambiguous_decl, .-ambiguous_decl
.globl lookup_using_namespace
	.type	lookup_using_namespace, @function
lookup_using_namespace:
.LFB83:
	.loc 1 3932 0
	pushl	%ebp
.LCFI284:
	movl	%esp, %ebp
.LCFI285:
	pushl	%ebx
.LCFI286:
	subl	$36, %esp
.LCFI287:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3935 0
	movl	$11, (%esp)
	call	timevar_push@PLT
	.loc 1 3938 0
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1353
.L1354:
	.loc 1 3939 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	.L1355
	.loc 1 3941 0
	cmpl	$0, 28(%ebp)
	je	.L1357
	.loc 1 3942 0
	movl	28(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	28(%ebp), %eax
	movl	%edx, (%eax)
.L1357:
	.loc 1 3944 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cxx_scope_find_binding_for_name@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3946 0
	cmpl	$0, -8(%ebp)
	je	.L1355
	.loc 1 3947 0
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ambiguous_decl
	movl	%eax, 12(%ebp)
.L1355:
	.loc 1 3938 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L1353:
	cmpl	$0, -12(%ebp)
	jne	.L1354
	.loc 1 3949 0
	movl	$11, (%esp)
	call	timevar_pop@PLT
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %eax
	.loc 1 3951 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE83:
	.size	lookup_using_namespace, .-lookup_using_namespace
.globl qualified_lookup_using_namespace
	.type	qualified_lookup_using_namespace, @function
qualified_lookup_using_namespace:
.LFB84:
	.loc 1 3961 0
	pushl	%ebp
.LCFI288:
	movl	%esp, %ebp
.LCFI289:
	pushl	%ebx
.LCFI290:
	subl	$36, %esp
.LCFI291:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3963 0
	movl	$0, -20(%ebp)
	.loc 1 3965 0
	movl	$0, -16(%ebp)
	.loc 1 3967 0
	movl	$11, (%esp)
	call	timevar_push@PLT
	.loc 1 3969 0
	movl	12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1363
	movl	12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1365
.L1363:
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1365:
	movl	-24(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 3970 0
	jmp	.L1383
.L1367:
.LBB44:
	.loc 1 3972 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_scope_find_binding_for_name@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3975 0
	cmpl	$0, -8(%ebp)
	je	.L1368
	.loc 1 3977 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3978 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ambiguous_decl
	movl	%eax, 16(%ebp)
.L1368:
	.loc 1 3980 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L1370
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L1370
	.loc 1 3982 0
	movl	12(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1373
.L1374:
	.loc 1 3985 0
	movl	-12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1375
	movl	-12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	purpose_member@PLT
	testl	%eax, %eax
	jne	.L1375
	.loc 1 3987 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	tree_cons@PLT
	movl	%eax, -16(%ebp)
.L1375:
	.loc 1 3983 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L1373:
	.loc 1 3982 0
	cmpl	$0, -12(%ebp)
	jne	.L1374
.L1370:
	.loc 1 3988 0
	cmpl	$0, -16(%ebp)
	je	.L1378
	.loc 1 3990 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 3991 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1366
.L1378:
	.loc 1 3994 0
	movl	$0, 12(%ebp)
.L1366:
.L1383:
.LBE44:
	.loc 1 3970 0
	cmpl	$0, 12(%ebp)
	je	.L1380
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1367
.L1380:
	.loc 1 3996 0
	movl	$11, (%esp)
	call	timevar_pop@PLT
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %eax
	.loc 1 3997 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE84:
	.size	qualified_lookup_using_namespace, .-qualified_lookup_using_namespace
	.section	.rodata
	.align 4
.LC76:
	.string	"declaration of `%D' not in a namespace surrounding `%D'"
	.align 4
.LC77:
	.string	"`%D' should have been declared inside `%D'"
	.text
.globl set_decl_namespace
	.type	set_decl_namespace, @function
set_decl_namespace:
.LFB85:
	.loc 1 4009 0
	pushl	%ebp
.LCFI292:
	movl	%esp, %ebp
.LCFI293:
	pushl	%ebx
.LCFI294:
	subl	$52, %esp
.LCFI295:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4013 0
	movl	12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1385
	movl	12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1387
.L1385:
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
.L1387:
	movl	-36(%ebp), %edx
	movl	%edx, 12(%ebp)
	.loc 1 4016 0
	cmpl	$0, 16(%ebp)
	jne	.L1388
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	is_ancestor@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L1388
	.loc 1 4017 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1388:
	.loc 1 4019 0
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 12(%ebp)
	je	.L1391
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1393
.L1391:
	movl	$0, -32(%ebp)
.L1393:
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 56(%eax)
	.loc 1 4020 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L1413
	.loc 1 4023 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	namespace_binding@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4024 0
	cmpl	$0, -8(%ebp)
	je	.L1396
	.loc 1 4028 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	jne	.L1413
	.loc 1 4030 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	je	.L1413
	.loc 1 4036 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	je	.L1396
	.loc 1 4038 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1413
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L1404
	.loc 1 4043 0
	jmp	.L1413
.L1405:
	.loc 1 4045 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1406
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1408
.L1406:
	movl	-8(%ebp), %eax
	movl	%eax, -28(%ebp)
.L1408:
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decls_match@PLT
	testl	%eax, %eax
	jne	.L1413
	.loc 1 4044 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1410
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1412
.L1410:
	movl	$0, -24(%ebp)
.L1412:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
.L1404:
	cmpl	$0, -8(%ebp)
	jne	.L1405
.L1396:
	.loc 1 4051 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC77@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1413:
	.loc 1 4053 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE85:
	.size	set_decl_namespace, .-set_decl_namespace
	.section	.rodata
	.type	__FUNCTION__.20164, @object
	.size	__FUNCTION__.20164, 15
__FUNCTION__.20164:
	.string	"decl_namespace"
	.text
	.type	decl_namespace, @function
decl_namespace:
.LFB86:
	.loc 1 4060 0
	pushl	%ebp
.LCFI296:
	movl	%esp, %ebp
.LCFI297:
	pushl	%ebx
.LCFI298:
	subl	$20, %esp
.LCFI299:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4061 0
	movl	$11, (%esp)
	call	timevar_push@PLT
	.loc 1 4062 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L1417
	.loc 1 4063 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4064 0
	jmp	.L1417
.L1418:
	.loc 1 4066 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4067 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L1419
	.loc 1 4068 0
	movl	$11, (%esp)
	call	timevar_pop@PLT
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1421
.L1419:
	.loc 1 4069 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L1422
	.loc 1 4070 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L1422:
	.loc 1 4071 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	je	.L1417
	leal	__FUNCTION__.20164@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4071, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1417:
	.loc 1 4064 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	jne	.L1418
	.loc 1 4074 0
	movl	$11, (%esp)
	call	timevar_pop@PLT
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L1421:
	movl	-8(%ebp), %eax
	.loc 1 4075 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE86:
	.size	decl_namespace, .-decl_namespace
.globl current_decl_namespace
	.type	current_decl_namespace, @function
current_decl_namespace:
.LFB87:
	.loc 1 4081 0
	pushl	%ebp
.LCFI300:
	movl	%esp, %ebp
.LCFI301:
	pushl	%ebx
.LCFI302:
	subl	$36, %esp
.LCFI303:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4084 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L1429
	.loc 1 4085 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1431
.L1429:
	.loc 1 4087 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1432
	.loc 1 4088 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	decl_namespace
	movl	%eax, -8(%ebp)
	jmp	.L1434
.L1432:
	.loc 1 4089 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1435
	.loc 1 4090 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	decl_namespace
	movl	%eax, -8(%ebp)
	jmp	.L1434
.L1435:
	.loc 1 4092 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L1434:
	.loc 1 4093 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1431:
	movl	-24(%ebp), %eax
	.loc 1 4094 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE87:
	.size	current_decl_namespace, .-current_decl_namespace
.globl push_decl_namespace
	.type	push_decl_namespace, @function
push_decl_namespace:
.LFB88:
	.loc 1 4101 0
	pushl	%ebp
.LCFI304:
	movl	%esp, %ebp
.LCFI305:
	pushl	%ebx
.LCFI306:
	subl	$36, %esp
.LCFI307:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4102 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	je	.L1439
	.loc 1 4103 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_namespace
	movl	%eax, 8(%ebp)
.L1439:
	.loc 1 4104 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1441
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1443
.L1441:
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L1443:
	movl	-12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	-16(%ebp), %edx
	movl	%eax, 8(%edx)
	.loc 1 4106 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE88:
	.size	push_decl_namespace, .-push_decl_namespace
.globl pop_decl_namespace
	.type	pop_decl_namespace, @function
pop_decl_namespace:
.LFB89:
	.loc 1 4110 0
	pushl	%ebp
.LCFI308:
	movl	%esp, %ebp
.LCFI309:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 4111 0
	movl	scope_chain@GOT(%ecx), %eax
	movl	(%eax), %edx
	movl	scope_chain@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%edx)
	.loc 1 4112 0
	popl	%ebp
	ret
.LFE89:
	.size	pop_decl_namespace, .-pop_decl_namespace
.globl push_scope
	.type	push_scope, @function
push_scope:
.LFB90:
	.loc 1 4119 0
	pushl	%ebp
.LCFI310:
	movl	%esp, %ebp
.LCFI311:
	pushl	%ebx
.LCFI312:
	subl	$20, %esp
.LCFI313:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4120 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L1448
	.loc 1 4121 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_decl_namespace@PLT
	jmp	.L1458
.L1448:
	.loc 1 4122 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1451
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1458
.L1451:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1453
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1453
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1453
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1453
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1458
.L1453:
	.loc 1 4123 0
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pushclass@PLT
.L1458:
	.loc 1 4124 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE90:
	.size	push_scope, .-push_scope
.globl pop_scope
	.type	pop_scope, @function
pop_scope:
.LFB91:
	.loc 1 4131 0
	pushl	%ebp
.LCFI314:
	movl	%esp, %ebp
.LCFI315:
	pushl	%ebx
.LCFI316:
	subl	$4, %esp
.LCFI317:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4132 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L1460
	.loc 1 4133 0
	call	pop_decl_namespace@PLT
	jmp	.L1470
.L1460:
	.loc 1 4134 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1463
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1470
.L1463:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1465
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1465
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1465
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1465
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1470
.L1465:
	.loc 1 4135 0
	call	popclass@PLT
.L1470:
	.loc 1 4136 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE91:
	.size	pop_scope, .-pop_scope
	.section	.rodata
.LC78:
	.string	"`%D' is not a function,"
.LC79:
	.string	"  conflict with `%D'"
.LC80:
	.string	"  in call to `%D'"
	.text
	.type	add_function, @function
add_function:
.LFB92:
	.loc 1 4164 0
	pushl	%ebp
.LCFI318:
	movl	%esp, %ebp
.LCFI319:
	pushl	%ebx
.LCFI320:
	subl	$36, %esp
.LCFI321:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4173 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L1472
	.loc 1 4174 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%edx)
	jmp	.L1474
.L1472:
	.loc 1 4175 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L1474
	.loc 1 4177 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	je	.L1476
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	je	.L1476
	.loc 1 4178 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_overload@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 4177 0
	jmp	.L1474
.L1476:
.LBB45:
	.loc 1 4181 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1479
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1481
.L1479:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
.L1481:
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4182 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4183 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	je	.L1482
	.loc 1 4185 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L1482:
	.loc 1 4187 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 4188 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC79@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 4189 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC80@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4190 0
	movl	$1, -24(%ebp)
	jmp	.L1484
.L1474:
.LBE45:
	.loc 1 4193 0
	movl	$0, -24(%ebp)
.L1484:
	movl	-24(%ebp), %eax
	.loc 1 4194 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE92:
	.size	add_function, .-add_function
	.type	arg_assoc_namespace, @function
arg_assoc_namespace:
.LFB93:
	.loc 1 4203 0
	pushl	%ebp
.LCFI322:
	movl	%esp, %ebp
.LCFI323:
	pushl	%ebx
.LCFI324:
	subl	$52, %esp
.LCFI325:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4206 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	purpose_member@PLT
	testl	%eax, %eax
	je	.L1487
	.loc 1 4207 0
	movl	$0, -32(%ebp)
	jmp	.L1489
.L1487:
	.loc 1 4208 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 4210 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	namespace_binding@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4211 0
	cmpl	$0, -8(%ebp)
	jne	.L1492
	.loc 1 4212 0
	movl	$0, -32(%ebp)
	jmp	.L1489
.L1493:
	.loc 1 4215 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1494
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1496
.L1494:
	movl	-8(%ebp), %eax
	movl	%eax, -28(%ebp)
.L1496:
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_function
	testl	%eax, %eax
	je	.L1497
	.loc 1 4216 0
	movl	$1, -32(%ebp)
	jmp	.L1489
.L1497:
	.loc 1 4214 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1499
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1501
.L1499:
	movl	$0, -24(%ebp)
.L1501:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
.L1492:
	cmpl	$0, -8(%ebp)
	jne	.L1493
	.loc 1 4218 0
	movl	$0, -32(%ebp)
.L1489:
	movl	-32(%ebp), %eax
	.loc 1 4219 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE93:
	.size	arg_assoc_namespace, .-arg_assoc_namespace
	.type	arg_assoc_template_arg, @function
arg_assoc_template_arg:
.LFB94:
	.loc 1 4228 0
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
	.loc 1 4241 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-61, %al
	je	.L1505
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-58, %al
	jne	.L1507
.L1505:
	.loc 1 4243 0
	movl	$0, -28(%ebp)
	jmp	.L1508
.L1507:
	.loc 1 4244 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1509
.LBB46:
	.loc 1 4246 0
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L1511
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1513
.L1511:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L1513:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4249 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L1514
	.loc 1 4250 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_namespace
	movl	%eax, -28(%ebp)
	jmp	.L1508
.L1514:
	.loc 1 4253 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_class
	movl	%eax, -28(%ebp)
	jmp	.L1508
.L1509:
.LBE46:
	.loc 1 4257 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L1516
	.loc 1 4258 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_type
	movl	%eax, -28(%ebp)
	jmp	.L1508
.L1516:
	.loc 1 4261 0
	movl	$0, -28(%ebp)
.L1508:
	movl	-28(%ebp), %eax
	.loc 1 4262 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE94:
	.size	arg_assoc_template_arg, .-arg_assoc_template_arg
	.type	arg_assoc_class, @function
arg_assoc_class:
.LFB95:
	.loc 1 4271 0
	pushl	%ebp
.LCFI330:
	movl	%esp, %ebp
.LCFI331:
	pushl	%ebx
.LCFI332:
	subl	$52, %esp
.LCFI333:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4277 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1520
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1522
.L1520:
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1523
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1523
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1523
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1523
	movl	12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1523
.L1522:
	.loc 1 4278 0
	movl	$0, -32(%ebp)
	jmp	.L1528
.L1523:
	.loc 1 4280 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	purpose_member@PLT
	testl	%eax, %eax
	je	.L1529
	.loc 1 4281 0
	movl	$0, -32(%ebp)
	jmp	.L1528
.L1529:
	.loc 1 4282 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 4284 0
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	decl_namespace
	movl	%eax, -12(%ebp)
	.loc 1 4285 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_namespace
	testl	%eax, %eax
	je	.L1531
	.loc 1 4286 0
	movl	$1, -32(%ebp)
	jmp	.L1528
.L1531:
	.loc 1 4289 0
	movl	$0, -8(%ebp)
	jmp	.L1533
.L1534:
	.loc 1 4290 0
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %edx
	movl	-8(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_class
	testl	%eax, %eax
	je	.L1535
	.loc 1 4291 0
	movl	$1, -32(%ebp)
	jmp	.L1528
.L1535:
	.loc 1 4289 0
	addl	$1, -8(%ebp)
.L1533:
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L1537
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1539
.L1537:
	movl	$0, -28(%ebp)
.L1539:
	movl	-28(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jg	.L1534
	.loc 1 4294 0
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	68(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1541
.L1542:
	.loc 1 4296 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1543
	.loc 1 4297 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1545
.L1546:
	.loc 1 4301 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1547
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1547
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L1550
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	56(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1552
.L1550:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L1552:
	movl	-24(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	.L1547
	.loc 1 4303 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_function
	testl	%eax, %eax
	je	.L1547
	.loc 1 4304 0
	movl	$1, -32(%ebp)
	jmp	.L1528
.L1547:
	.loc 1 4298 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L1545:
	.loc 1 4297 0
	cmpl	$0, -16(%ebp)
	jne	.L1546
.L1543:
	.loc 1 4295 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L1541:
	.loc 1 4294 0
	cmpl	$0, -20(%ebp)
	jne	.L1542
	.loc 1 4307 0
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L1556
	.loc 1 4309 0
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	get_innermost_template_args@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4310 0
	movl	$0, -8(%ebp)
	jmp	.L1558
.L1559:
	.loc 1 4311 0
	movl	-8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_template_arg
	.loc 1 4310 0
	addl	$1, -8(%ebp)
.L1558:
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L1559
.L1556:
	.loc 1 4314 0
	movl	$0, -32(%ebp)
.L1528:
	movl	-32(%ebp), %eax
	.loc 1 4315 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE95:
	.size	arg_assoc_class, .-arg_assoc_class
	.section	.rodata
	.type	__FUNCTION__.20541, @object
	.size	__FUNCTION__.20541, 15
__FUNCTION__.20541:
	.string	"arg_assoc_type"
	.text
	.type	arg_assoc_type, @function
arg_assoc_type:
.LFB96:
	.loc 1 4324 0
	pushl	%ebp
.LCFI334:
	movl	%esp, %ebp
.LCFI335:
	pushl	%ebx
.LCFI336:
	subl	$20, %esp
.LCFI337:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4325 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	cmpl	$17, -12(%ebp)
	je	.L1567
	cmpl	$17, -12(%ebp)
	ja	.L1572
	cmpl	$13, -12(%ebp)
	ja	.L1573
	cmpl	$12, -12(%ebp)
	jae	.L1563
	cmpl	$6, -12(%ebp)
	jb	.L1562
	cmpl	$10, -12(%ebp)
	jbe	.L1563
	jmp	.L1564
.L1573:
	cmpl	$15, -12(%ebp)
	je	.L1566
	jmp	.L1565
.L1572:
	cmpl	$24, -12(%ebp)
	je	.L1567
	cmpl	$24, -12(%ebp)
	ja	.L1574
	cmpl	$21, -12(%ebp)
	je	.L1568
	cmpl	$22, -12(%ebp)
	je	.L1564
	cmpl	$19, -12(%ebp)
	je	.L1565
	jmp	.L1562
.L1574:
	cmpl	$194, -12(%ebp)
	je	.L1570
	cmpl	$194, -12(%ebp)
	ja	.L1575
	cmpl	$25, -12(%ebp)
	je	.L1569
	jmp	.L1562
.L1575:
	cmpl	$196, -12(%ebp)
	je	.L1570
	cmpl	$197, -12(%ebp)
	je	.L1571
	jmp	.L1562
.L1563:
	.loc 1 4334 0
	movl	$0, -8(%ebp)
	jmp	.L1576
.L1568:
	.loc 1 4336 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1577
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1577
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1577
	.loc 1 4337 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_type
	movl	%eax, -8(%ebp)
	jmp	.L1576
.L1577:
	.loc 1 4338 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_class
	movl	%eax, -8(%ebp)
	jmp	.L1576
.L1565:
	.loc 1 4342 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_type
	movl	%eax, -8(%ebp)
	jmp	.L1576
.L1564:
	.loc 1 4345 0
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	decl_namespace
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_namespace
	movl	%eax, -8(%ebp)
	jmp	.L1576
.L1566:
	.loc 1 4348 0
	movl	12(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_type
	testl	%eax, %eax
	je	.L1581
	.loc 1 4349 0
	movl	$1, -8(%ebp)
	jmp	.L1576
.L1581:
	.loc 1 4350 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_type
	movl	%eax, -8(%ebp)
	jmp	.L1576
.L1567:
	.loc 1 4356 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_args
	testl	%eax, %eax
	je	.L1583
	.loc 1 4357 0
	movl	$1, -8(%ebp)
	jmp	.L1576
.L1583:
	.loc 1 4359 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_type
	movl	%eax, -8(%ebp)
	jmp	.L1576
.L1570:
	.loc 1 4362 0
	movl	$0, -8(%ebp)
	jmp	.L1576
.L1571:
	.loc 1 4364 0
	movl	$0, -8(%ebp)
	jmp	.L1576
.L1569:
	.loc 1 4366 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	116(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1562
	.loc 1 4367 0
	movl	$0, -8(%ebp)
	jmp	.L1576
.L1562:
	.loc 1 4370 0
	leal	__FUNCTION__.20541@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4370, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1576:
	movl	-8(%ebp), %eax
	.loc 1 4373 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE96:
	.size	arg_assoc_type, .-arg_assoc_type
	.type	arg_assoc_args, @function
arg_assoc_args:
.LFB97:
	.loc 1 4381 0
	pushl	%ebp
.LCFI338:
	movl	%esp, %ebp
.LCFI339:
	subl	$24, %esp
.LCFI340:
	.loc 1 4382 0
	jmp	.L1588
.L1589:
	.loc 1 4383 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc
	testl	%eax, %eax
	je	.L1590
	.loc 1 4384 0
	movl	$1, -4(%ebp)
	jmp	.L1592
.L1590:
	.loc 1 4382 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
.L1588:
	cmpl	$0, 12(%ebp)
	jne	.L1589
	.loc 1 4385 0
	movl	$0, -4(%ebp)
.L1592:
	movl	-4(%ebp), %eax
	.loc 1 4386 0
	leave
	ret
.LFE97:
	.size	arg_assoc_args, .-arg_assoc_args
	.section	.rodata
	.type	__FUNCTION__.20613, @object
	.size	__FUNCTION__.20613, 10
__FUNCTION__.20613:
	.string	"arg_assoc"
	.text
	.type	arg_assoc, @function
arg_assoc:
.LFB98:
	.loc 1 4394 0
	pushl	%ebp
.LCFI341:
	movl	%esp, %ebp
.LCFI342:
	pushl	%ebx
.LCFI343:
	subl	$52, %esp
.LCFI344:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4395 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1596
	.loc 1 4396 0
	movl	$0, -32(%ebp)
	jmp	.L1598
.L1596:
	.loc 1 4398 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L1599
	.loc 1 4399 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_type
	movl	%eax, -32(%ebp)
	jmp	.L1598
.L1599:
	.loc 1 4401 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	type_unknown_p@PLT
	testl	%eax, %eax
	jne	.L1601
	.loc 1 4402 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_type
	movl	%eax, -32(%ebp)
	jmp	.L1598
.L1601:
	.loc 1 4404 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L1603
	.loc 1 4405 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L1603:
	.loc 1 4406 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	jne	.L1605
	.loc 1 4407 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%ebp)
.L1605:
	.loc 1 4408 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L1609
	.loc 1 4409 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 4410 0
	jmp	.L1609
.L1610:
	.loc 1 4411 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L1609:
	.loc 1 4410 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	je	.L1610
	.loc 1 4412 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L1612
	.loc 1 4413 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%ebp)
.L1612:
	.loc 1 4415 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1614
	.loc 1 4416 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_type
	movl	%eax, -32(%ebp)
	jmp	.L1598
.L1614:
	.loc 1 4417 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L1616
.LBB47:
	.loc 1 4424 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4425 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4429 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	jne	.L1618
	.loc 1 4430 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
.L1618:
	.loc 1 4436 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1620
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1622
.L1620:
	movl	-20(%ebp), %eax
	movl	%eax, -28(%ebp)
.L1622:
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4438 0
	movl	-20(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L1623
	movl	-20(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1625
.L1623:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L1625:
	movl	-24(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4440 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L1626
	.loc 1 4442 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_namespace
	cmpl	$1, %eax
	jne	.L1630
	.loc 1 4443 0
	movl	$1, -32(%ebp)
	jmp	.L1598
.L1626:
	.loc 1 4446 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_class
	cmpl	$1, %eax
	jne	.L1630
	.loc 1 4447 0
	movl	$1, -32(%ebp)
	jmp	.L1598
.L1630:
	.loc 1 4450 0
	movl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1632
.L1633:
	.loc 1 4451 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_template_arg
	cmpl	$1, %eax
	jne	.L1634
	.loc 1 4452 0
	movl	$1, -32(%ebp)
	jmp	.L1598
.L1634:
	.loc 1 4450 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L1632:
	cmpl	$0, -8(%ebp)
	jne	.L1633
	jmp	.L1637
.L1616:
.LBE47:
	.loc 1 4456 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	je	.L1640
	leal	__FUNCTION__.20613@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4456, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1641:
	.loc 1 4459 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_type
	testl	%eax, %eax
	je	.L1642
	.loc 1 4460 0
	movl	$1, -32(%ebp)
	jmp	.L1598
.L1642:
	.loc 1 4458 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
.L1640:
	cmpl	$0, 12(%ebp)
	jne	.L1641
.L1637:
	.loc 1 4463 0
	movl	$0, -32(%ebp)
.L1598:
	movl	-32(%ebp), %eax
	.loc 1 4464 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE98:
	.size	arg_assoc, .-arg_assoc
.globl lookup_arg_dependent
	.type	lookup_arg_dependent, @function
lookup_arg_dependent:
.LFB99:
	.loc 1 4474 0
	pushl	%ebp
.LCFI345:
	movl	%esp, %ebp
.LCFI346:
	pushl	%ebx
.LCFI347:
	subl	$52, %esp
.LCFI348:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4476 0
	movl	$0, -8(%ebp)
	.loc 1 4478 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1646
	.loc 1 4479 0
	movl	$0, 12(%ebp)
.L1646:
	.loc 1 4481 0
	movl	$11, (%esp)
	call	timevar_push@PLT
	.loc 1 4482 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4483 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4484 0
	movl	$0, -16(%ebp)
	.loc 1 4488 0
	cmpl	$0, 12(%ebp)
	je	.L1648
	.loc 1 4489 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1650
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1652
.L1650:
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
.L1652:
	movl	-40(%ebp), %eax
	movl	%eax, -8(%ebp)
.L1648:
	.loc 1 4490 0
	cmpl	$0, -8(%ebp)
	je	.L1653
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1653
	movl	-8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1653
	.loc 1 4491 0
	movl	$0, -20(%ebp)
	.loc 1 4490 0
	jmp	.L1657
.L1653:
	.loc 1 4493 0
	leal	-24(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unqualified_namespace_lookup@PLT
.L1657:
	.loc 1 4495 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	arg_assoc_args
	.loc 1 4496 0
	movl	$11, (%esp)
	call	timevar_pop@PLT
	movl	-12(%ebp), %eax
	.loc 1 4497 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE99:
	.size	lookup_arg_dependent, .-lookup_arg_dependent
	.section	.rodata
.LC81:
	.string	"unknown namespace `%D'"
	.text
.globl do_namespace_alias
	.type	do_namespace_alias, @function
do_namespace_alias:
.LFB100:
	.loc 1 4504 0
	pushl	%ebp
.LCFI349:
	movl	%esp, %ebp
.LCFI350:
	pushl	%ebx
.LCFI351:
	subl	$20, %esp
.LCFI352:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4505 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	je	.L1660
	.loc 1 4508 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC81@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4509 0
	jmp	.L1666
.L1660:
	.loc 1 4512 0
	movl	12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1663
	movl	12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1665
.L1663:
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L1665:
	movl	-8(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 4515 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$39, (%esp)
	call	build_lang_decl@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4516 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 88(%edx)
	.loc 1 4517 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl@PLT
.L1666:
	.loc 1 4518 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE100:
	.size	do_namespace_alias, .-do_namespace_alias
	.section	.rodata
	.type	__FUNCTION__.20742, @object
	.size	__FUNCTION__.20742, 30
__FUNCTION__.20742:
	.string	"validate_nonmember_using_decl"
.LC82:
	.string	"`%T' is not a namespace"
.LC83:
	.string	"`%D' is not a namespace"
	.align 4
.LC84:
	.string	"a using-declaration cannot specify a template-id.  Try `using %D'"
	.align 4
.LC85:
	.string	"namespace `%D' not allowed in using-declaration"
	.text
	.type	validate_nonmember_using_decl, @function
validate_nonmember_using_decl:
.LFB101:
	.loc 1 4528 0
	pushl	%ebp
.LCFI353:
	movl	%esp, %ebp
.LCFI354:
	pushl	%ebx
.LCFI355:
	subl	$20, %esp
.LCFI356:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4529 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-71, %al
	jne	.L1668
	.loc 1 4531 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4532 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4534 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1679
	.loc 1 4539 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	je	.L1672
	.loc 1 4541 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L1674
	.loc 1 4542 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1676
.L1674:
	.loc 1 4544 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC83@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1676:
	.loc 1 4545 0
	movl	$0, -8(%ebp)
	jmp	.L1677
.L1672:
	.loc 1 4550 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L1679
	.loc 1 4552 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4553 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC84@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4554 0
	movl	$0, -8(%ebp)
	jmp	.L1677
.L1668:
	.loc 1 4558 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	je	.L1680
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L1680
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1683
.L1680:
	.loc 1 4562 0
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4563 0
	movl	16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4558 0
	jmp	.L1679
.L1683:
	.loc 1 4565 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L1684
	.loc 1 4567 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC85@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4568 0
	movl	$0, -8(%ebp)
	jmp	.L1677
.L1684:
	.loc 1 4571 0
	leal	__FUNCTION__.20742@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4571, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1679:
	.loc 1 4572 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L1686
	.loc 1 4573 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	52(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
.L1686:
	.loc 1 4575 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	push_using_decl@PLT
	movl	%eax, -8(%ebp)
.L1677:
	movl	-8(%ebp), %eax
	.loc 1 4576 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE101:
	.size	validate_nonmember_using_decl, .-validate_nonmember_using_decl
	.section	.rodata
.LC86:
	.string	"`%D' not declared"
	.align 4
.LC87:
	.string	"`%D' is already declared in this scope"
	.align 4
.LC88:
	.string	"using declaration `%D' introduced ambiguous type `%T'"
	.text
	.type	do_nonmember_using_decl, @function
do_nonmember_using_decl:
.LFB102:
	.loc 1 4585 0
	pushl	%ebp
.LCFI357:
	movl	%esp, %ebp
.LCFI358:
	pushl	%ebx
.LCFI359:
	subl	$100, %esp
.LCFI360:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4588 0
	movl	28(%ebp), %eax
	movl	$0, (%eax)
	movl	28(%ebp), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4589 0
	leal	-40(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	.loc 1 4590 0
	movl	$0, 12(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	qualified_lookup_using_namespace@PLT
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1744
	.loc 1 4594 0
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	jne	.L1692
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	jne	.L1692
	.loc 1 4596 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4597 0
	jmp	.L1744
.L1692:
	.loc 1 4601 0
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	.L1695
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	je	.L1695
.LBB48:
	.loc 1 4605 0
	cmpl	$0, 16(%ebp)
	je	.L1698
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	jne	.L1698
	.loc 1 4607 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L1701
	movl	16(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L1703
.L1701:
	.loc 1 4608 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1703:
	.loc 1 4609 0
	movl	$0, 16(%ebp)
.L1698:
	.loc 1 4612 0
	movl	24(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 4613 0
	movl	-36(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1704
.L1705:
.LBB49:
	.loc 1 4615 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1706
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1708
.L1706:
	movl	-20(%ebp), %eax
	movl	%eax, -76(%ebp)
.L1708:
	movl	-76(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4623 0
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1709
.L1710:
.LBB50:
	.loc 1 4625 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1711
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1713
.L1711:
	movl	-16(%ebp), %eax
	movl	%eax, -72(%ebp)
.L1713:
	movl	-72(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4627 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L1714
	.loc 1 4630 0
	movl	-16(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1716
	.loc 1 4632 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	compparms@PLT
	testl	%eax, %eax
	je	.L1716
	.loc 1 4638 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	decls_match@PLT
	testl	%eax, %eax
	je	.L1719
	.loc 1 4642 0
	movl	-8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1714
	.loc 1 4643 0
	movl	-8(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	7(%edx), %eax
	andl	$-5, %eax
	movb	%al, 7(%edx)
	.loc 1 4644 0
	jmp	.L1714
.L1719:
	.loc 1 4646 0
	movl	-8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1716
	.loc 1 4650 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4651 0
	jmp	.L1714
.L1716:
.LBE50:
	.loc 1 4623 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1724
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1726
.L1724:
	movl	$0, -68(%ebp)
.L1726:
	movl	-68(%ebp), %eax
	movl	%eax, -16(%ebp)
.L1709:
	cmpl	$0, -16(%ebp)
	jne	.L1710
.L1714:
	.loc 1 4662 0
	cmpl	$0, -16(%ebp)
	jne	.L1727
	.loc 1 4665 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1729
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1731
.L1729:
	movl	-20(%ebp), %eax
	movl	%eax, -60(%ebp)
.L1731:
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	build_overload@PLT
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4666 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	je	.L1732
	.loc 1 4667 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	ovl_cons@PLT
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
.L1732:
	.loc 1 4668 0
	movl	24(%ebp), %eax
	movl	(%eax), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
.L1727:
.LBE49:
	.loc 1 4613 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1734
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1736
.L1734:
	movl	$0, -56(%ebp)
.L1736:
	movl	-56(%ebp), %eax
	movl	%eax, -20(%ebp)
.L1704:
	cmpl	$0, -20(%ebp)
	jne	.L1705
	.loc 1 4601 0
	jmp	.L1738
.L1695:
.LBE48:
	.loc 1 4673 0
	movl	-36(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4674 0
	cmpl	$0, 16(%ebp)
	je	.L1738
	movl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	decls_match@PLT
	testl	%eax, %eax
	jne	.L1738
	.loc 1 4675 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1738:
	.loc 1 4678 0
	movl	-32(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4679 0
	cmpl	$0, 20(%ebp)
	je	.L1744
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1744
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L1744
	.loc 1 4681 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC88@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1744:
	.loc 1 4685 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE102:
	.size	do_nonmember_using_decl, .-do_nonmember_using_decl
.globl do_toplevel_using_decl
	.type	do_toplevel_using_decl, @function
do_toplevel_using_decl:
.LFB103:
	.loc 1 4692 0
	pushl	%ebp
.LCFI361:
	movl	%esp, %ebp
.LCFI362:
	pushl	%ebx
.LCFI363:
	subl	$68, %esp
.LCFI364:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4697 0
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_nonmember_using_decl
	movl	%eax, 8(%ebp)
	.loc 1 4698 0
	cmpl	$0, 8(%ebp)
	je	.L1752
	.loc 1 4703 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binding_for_name@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4705 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4706 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4708 0
	movl	-24(%ebp), %edx
	movl	-20(%ebp), %ecx
	leal	-32(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	do_nonmember_using_decl
	.loc 1 4711 0
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	je	.L1748
	.loc 1 4712 0
	movl	-28(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
.L1748:
	.loc 1 4713 0
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	je	.L1752
	.loc 1 4714 0
	movl	-32(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
.L1752:
	.loc 1 4716 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE103:
	.size	do_toplevel_using_decl, .-do_toplevel_using_decl
.globl do_local_using_decl
	.type	do_local_using_decl, @function
do_local_using_decl:
.LFB104:
	.loc 1 4723 0
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
	.loc 1 4727 0
	leal	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_nonmember_using_decl
	movl	%eax, 8(%ebp)
	.loc 1 4728 0
	cmpl	$0, 8(%ebp)
	je	.L1781
	.loc 1 4731 0
	call	current_stmt_tree@PLT
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1756
	call	at_function_scope_p@PLT
	testl	%eax, %eax
	je	.L1756
	.loc 1 4733 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_decl_stmt@PLT
.L1756:
	.loc 1 4735 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_name_current_level@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4736 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_type_current_level@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4738 0
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %ecx
	leal	-36(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	do_nonmember_using_decl
	.loc 1 4740 0
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	je	.L1759
	.loc 1 4742 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	je	.L1761
.LBB51:
	.loc 1 4750 0
	cmpl	$0, -20(%ebp)
	je	.L1763
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1763
	.loc 1 4751 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4750 0
	jmp	.L1766
.L1763:
	.loc 1 4753 0
	movl	-20(%ebp), %eax
	movl	%eax, -8(%ebp)
.L1766:
	.loc 1 4754 0
	movl	-32(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1767
.L1768:
	.loc 1 4756 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1769
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1771
.L1769:
	movl	-12(%ebp), %eax
	movl	%eax, -48(%ebp)
.L1771:
	movl	$3, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	push_overloaded_decl@PLT
	.loc 1 4755 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1772
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1774
.L1772:
	movl	$0, -44(%ebp)
.L1774:
	movl	-44(%ebp), %eax
	movl	%eax, -12(%ebp)
.L1767:
	.loc 1 4754 0
	cmpl	$0, -12(%ebp)
	je	.L1759
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1777
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1779
.L1777:
	movl	-12(%ebp), %eax
	movl	%eax, -40(%ebp)
.L1779:
	movl	-40(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jne	.L1768
	jmp	.L1759
.L1761:
.LBE51:
	.loc 1 4760 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	push_local_binding@PLT
.L1759:
	.loc 1 4762 0
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	.L1781
	.loc 1 4763 0
	movl	-36(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	set_identifier_type_value@PLT
.L1781:
	.loc 1 4764 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE104:
	.size	do_local_using_decl, .-do_local_using_decl
	.section	.rodata
	.type	__FUNCTION__.21029, @object
	.size	__FUNCTION__.21029, 20
__FUNCTION__.21029:
	.string	"do_class_using_decl"
	.align 4
.LC89:
	.string	"using-declaration for non-member at class scope"
	.align 4
.LC90:
	.string	"using-declaration for destructor"
	.align 4
.LC91:
	.string	"a using-declaration cannot specify a template-id.  Try  `using %T::%D'"
	.text
.globl do_class_using_decl
	.type	do_class_using_decl, @function
do_class_using_decl:
.LFB105:
	.loc 1 4769 0
	pushl	%ebp
.LCFI369:
	movl	%esp, %ebp
.LCFI370:
	pushl	%ebx
.LCFI371:
	subl	$36, %esp
.LCFI372:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4772 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-71, %al
	jne	.L1783
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	je	.L1785
.L1783:
	.loc 1 4775 0
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4776 0
	movl	$0, -24(%ebp)
	jmp	.L1786
.L1785:
	.loc 1 4778 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4779 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	jne	.L1787
	.loc 1 4781 0
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4782 0
	movl	$0, -24(%ebp)
	jmp	.L1786
.L1787:
	.loc 1 4784 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L1789
	.loc 1 4786 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4787 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4788 0
	movl	$0, -24(%ebp)
	jmp	.L1786
.L1789:
	.loc 1 4790 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L1791
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1793
.L1791:
	.loc 1 4791 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4790 0
	jmp	.L1794
.L1793:
	.loc 1 4792 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L1794
	.loc 1 4794 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4795 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L1796
	.loc 1 4796 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L1796:
	.loc 1 4797 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_first_fn@PLT
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
.L1794:
	.loc 1 4800 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	je	.L1798
	leal	__FUNCTION__.21029@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4800, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1798:
	.loc 1 4802 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$200, (%esp)
	call	build_lang_decl@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4803 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 4804 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1786:
	movl	-24(%ebp), %eax
	.loc 1 4805 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE105:
	.size	do_class_using_decl, .-do_class_using_decl
	.section	.rodata
.LC92:
	.string	"namespace `%T' undeclared"
	.text
.globl do_using_directive
	.type	do_using_directive, @function
do_using_directive:
.LFB106:
	.loc 1 4812 0
	pushl	%ebp
.LCFI373:
	movl	%esp, %ebp
.LCFI374:
	pushl	%ebx
.LCFI375:
	subl	$20, %esp
.LCFI376:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4813 0
	call	current_stmt_tree@PLT
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1802
	.loc 1 4814 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$201, (%esp)
	call	build_stmt@PLT
	movl	%eax, (%esp)
	call	add_stmt@PLT
.L1802:
	.loc 1 4817 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-71, %al
	jne	.L1804
	.loc 1 4818 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%ebp)
.L1804:
	.loc 1 4819 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L1806
	.loc 1 4822 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1820
	.loc 1 4823 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4824 0
	jmp	.L1820
.L1806:
	.loc 1 4826 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	je	.L1811
	.loc 1 4828 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1820
	.loc 1 4829 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4830 0
	jmp	.L1820
.L1811:
	.loc 1 4832 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1815
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1817
.L1815:
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L1817:
	movl	-8(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4833 0
	call	toplevel_bindings_p@PLT
	testl	%eax, %eax
	jne	.L1818
	.loc 1 4834 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_using_directive@PLT
	jmp	.L1820
.L1818:
	.loc 1 4837 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_using_namespace
.L1820:
	.loc 1 4838 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE106:
	.size	do_using_directive, .-do_using_directive
	.section	.rodata
	.align 4
.LC93:
	.string	"default argument missing for parameter %P of `%+#D'"
	.text
.globl check_default_args
	.type	check_default_args, @function
check_default_args:
.LFB107:
	.loc 1 4843 0
	pushl	%ebp
.LCFI377:
	movl	%esp, %ebp
.LCFI378:
	pushl	%ebx
.LCFI379:
	subl	$36, %esp
.LCFI380:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4844 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4845 0
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L1822
	movl	$-1, -24(%ebp)
	jmp	.L1824
.L1822:
	movl	$0, -24(%ebp)
.L1824:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4846 0
	jmp	.L1825
.L1826:
	.loc 1 4848 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1827
	.loc 1 4849 0
	movl	$1, -12(%ebp)
	jmp	.L1829
.L1827:
	.loc 1 4850 0
	cmpl	$0, -12(%ebp)
	je	.L1829
	.loc 1 4852 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 4854 0
	jmp	.L1833
.L1829:
	.loc 1 4846 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	addl	$1, -8(%ebp)
.L1825:
	cmpl	$0, -16(%ebp)
	je	.L1833
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L1826
.L1833:
	.loc 1 4857 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE107:
	.size	check_default_args, .-check_default_args
.globl mark_used
	.type	mark_used, @function
mark_used:
.LFB108:
	.loc 1 4862 0
	pushl	%ebp
.LCFI381:
	movl	%esp, %ebp
.LCFI382:
	pushl	%ebx
.LCFI383:
	subl	$36, %esp
.LCFI384:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4863 0
	movl	8(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 4864 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1866
	movl	skip_evaluation@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1837
	.loc 1 4865 0
	jmp	.L1866
.L1837:
	.loc 1 4867 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1839
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1839
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L1839
	.loc 1 4870 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	defer_fn@PLT
.L1839:
	.loc 1 4872 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_external@PLT
	.loc 1 4875 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1843
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L1843
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1843
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L1843
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1843
	.loc 1 4882 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	synthesize_method@PLT
	.loc 1 4885 0
	jmp	.L1866
.L1843:
	.loc 1 4892 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1849
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1851
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1851
.L1849:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L1866
.L1851:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L1866
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L1866
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	cmpb	$6, %al
	jne	.L1855
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1866
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1866
.L1855:
.LBB52:
	.loc 1 4907 0
	movl	flag_exceptions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1858
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1858
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1858
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1858
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1858
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movzbl	72(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1864
.L1858:
	movl	$1, -24(%ebp)
	jmp	.L1865
.L1864:
	movl	$0, -24(%ebp)
.L1865:
	movzbl	-24(%ebp), %eax
	movb	%al, -5(%ebp)
	.loc 1 4921 0
	movzbl	-5(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_decl@PLT
.L1866:
.LBE52:
	.loc 1 4923 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE108:
	.size	mark_used, .-mark_used
	.section	.rodata
	.align 4
.LC94:
	.string	"extra qualification `%T::' on member `%D' ignored"
	.align 4
.LC95:
	.string	"`%T' does not have a class or union named `%D'"
	.align 4
.LC96:
	.string	"`%T' is not a class or union type"
	.align 4
.LC97:
	.string	"template argument is required for `%T'"
	.align 4
.LC98:
	.string	"declaration of `%D' in `%D' which does not enclose `%D'"
	.text
.globl handle_class_head
	.type	handle_class_head, @function
handle_class_head:
.LFB109:
	.loc 1 4940 0
	pushl	%ebp
.LCFI385:
	movl	%esp, %ebp
.LCFI386:
	pushl	%ebx
.LCFI387:
	subl	$116, %esp
.LCFI388:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4941 0
	movl	$0, -28(%ebp)
	.loc 1 4943 0
	call	current_scope@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4944 0
	movb	$0, -9(%ebp)
	.loc 1 4946 0
	cmpl	$0, -20(%ebp)
	jne	.L1868
	.loc 1 4947 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L1868:
	.loc 1 4949 0
	movl	28(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 4951 0
	cmpl	$0, 12(%ebp)
	je	.L1870
	.loc 1 4953 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L1872
	.loc 1 4956 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1870
.L1872:
	.loc 1 4957 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1874
	movl	16(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L1874
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1877
	movl	16(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1877
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L1874
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L1874
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L1874
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L1874
.L1877:
	.loc 1 4958 0
	movl	16(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4957 0
	jmp	.L1870
.L1874:
	.loc 1 4961 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L1883
	.loc 1 4965 0
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_typename_type@PLT
	movl	%eax, -28(%ebp)
	.loc 1 4966 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L1885
	.loc 1 4967 0
	movl	-28(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1870
.L1885:
	.loc 1 4969 0
	movl	$0, -28(%ebp)
	jmp	.L1870
.L1883:
	.loc 1 4971 0
	movl	12(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L1888
	.loc 1 4975 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1870
	.loc 1 4976 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	jmp	.L1870
.L1888:
	.loc 1 4980 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1870:
	.loc 1 4985 0
	cmpl	$0, -28(%ebp)
	jne	.L1892
	.loc 1 4987 0
	cmpl	$0, 24(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	xref_tag@PLT
	movl	%eax, -28(%ebp)
	.loc 1 4988 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L1894
	.loc 1 4989 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L1896
.L1894:
	.loc 1 4990 0
	movl	-28(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4991 0
	movb	$1, -9(%ebp)
.L1892:
	.loc 1 4994 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4996 0
	movl	-24(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	jne	.L1897
	.loc 1 4998 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4999 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L1896
.L1897:
	.loc 1 5007 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1899
	movl	-24(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L1899
	movl	-24(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	jne	.L1899
	movl	-24(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1899
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	60(%eax), %edx
	movl	64(%eax), %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	template_class_depth@PLT
	movl	%eax, -80(%ebp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%ecx, -76(%ebp)
	movl	-76(%ebp), %eax
	cmpl	%eax, -84(%ebp)
	jg	.L1899
	movl	-76(%ebp), %edx
	cmpl	%edx, -84(%ebp)
	jl	.L1905
	movl	-80(%ebp), %ecx
	cmpl	%ecx, -88(%ebp)
	ja	.L1899
.L1905:
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	is_base_of_enclosing_class@PLT
	testl	%eax, %eax
	jne	.L1899
	.loc 1 5012 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 5013 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L1896
.L1899:
	.loc 1 5016 0
	cmpl	$0, 24(%ebp)
	je	.L1907
.LBB53:
	.loc 1 5021 0
	movl	-28(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L1909
	movl	-28(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1911
.L1909:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
.L1911:
	movl	-68(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5023 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	jne	.L1912
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1912
	.loc 1 5024 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L1912:
	.loc 1 5028 0
	cmpl	$0, -20(%ebp)
	je	.L1915
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	is_ancestor@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L1915
	.loc 1 5030 0
	movl	-28(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L1918
	movl	-28(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1920
.L1918:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
.L1920:
	movl	-64(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 5032 0
	movl	$0, -92(%ebp)
	jmp	.L1896
.L1915:
	.loc 1 5035 0
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L1921
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1921
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1921
	movl	$1, -60(%ebp)
	jmp	.L1925
.L1921:
	movl	$0, -60(%ebp)
.L1925:
	movl	28(%ebp), %eax
	movl	-60(%ebp), %ecx
	movl	%ecx, (%eax)
	.loc 1 5038 0
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1926
	.loc 1 5039 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	push_scope@PLT
.L1926:
	.loc 1 5041 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1928
	.loc 1 5044 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %ecx
	cmpl	$1, 8(%ebp)
	sete	%al
	andl	$1, %eax
	movl	%eax, %edx
	sall	$6, %edx
	movzbl	7(%ecx), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, 7(%ecx)
.L1928:
	.loc 1 5047 0
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1934
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	60(%eax), %edx
	movl	64(%eax), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	call	current_scope@PLT
	movl	%eax, (%esp)
	call	template_class_depth@PLT
	movl	%eax, -48(%ebp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%ecx, -44(%ebp)
	movl	-44(%ebp), %eax
	cmpl	%eax, -52(%ebp)
	jl	.L1934
	movl	-44(%ebp), %edx
	cmpl	%edx, -52(%ebp)
	jg	.L1933
	movl	-48(%ebp), %ecx
	cmpl	%ecx, -56(%ebp)
	jbe	.L1934
.L1933:
	.loc 1 5048 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	push_template_decl@PLT
	movl	%eax, -28(%ebp)
	jmp	.L1934
.L1907:
.LBE53:
	.loc 1 5060 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	jne	.L1934
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1934
	.loc 1 5061 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %edx
	movl	-24(%ebp), %eax
	movl	80(%eax), %eax
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_typename_type@PLT
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L1934:
	.loc 1 5067 0
	movl	-28(%ebp), %eax
	movl	%eax, -92(%ebp)
.L1896:
	movl	-92(%ebp), %eax
	.loc 1 5068 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE109:
	.size	handle_class_head, .-handle_class_head
.globl handle_class_head_apparent_template
	.type	handle_class_head_apparent_template, @function
handle_class_head_apparent_template:
.LFB110:
	.loc 1 5081 0
	pushl	%ebp
.LCFI389:
	movl	%esp, %ebp
.LCFI390:
	pushl	%ebx
.LCFI391:
	subl	$36, %esp
.LCFI392:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5085 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1939
	.loc 1 5086 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1941
.L1939:
	.loc 1 5088 0
	call	current_scope@PLT
	movl	%eax, -8(%ebp)
	.loc 1 5089 0
	cmpl	$0, -8(%ebp)
	jne	.L1942
	.loc 1 5090 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L1942:
	.loc 1 5092 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 5097 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L1944
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1946
.L1944:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L1946:
	movl	-28(%ebp), %edx
	movl	%edx, -12(%ebp)
	.loc 1 5099 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	jne	.L1947
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1947
	.loc 1 5100 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L1947:
	.loc 1 5102 0
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	.L1950
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1950
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1950
	movl	$1, -24(%ebp)
	jmp	.L1954
.L1950:
	movl	$0, -24(%ebp)
.L1954:
	movl	12(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 5105 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1955
	.loc 1 5106 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	push_scope@PLT
.L1955:
	.loc 1 5108 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1957
	.loc 1 5111 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %ecx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	152(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	100(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	andl	$1, %eax
	movl	%eax, %edx
	sall	$6, %edx
	movzbl	7(%ecx), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, 7(%ecx)
.L1957:
	.loc 1 5114 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1941:
	movl	-32(%ebp), %eax
	.loc 1 5115 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE110:
	.size	handle_class_head_apparent_template, .-handle_class_head_apparent_template
.globl gt_ggc_r_gt_cp_decl2_h
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	gt_ggc_r_gt_cp_decl2_h, @object
	.size	gt_ggc_r_gt_cp_decl2_h, 112
gt_ggc_r_gt_cp_decl2_h:
	.long	ssdf_decls
	.long	1
	.long	4
	.long	gt_ggc_mx_varray_head_tag
	.long	ssdf_decl
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	priority_decl
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	initialize_p_decl
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	deferred_fns
	.long	1
	.long	4
	.long	gt_ggc_mx_varray_head_tag
	.long	pending_statics
	.long	1
	.long	4
	.long	gt_ggc_mx_varray_head_tag
	.long	0
	.long	0
	.long	0
	.long	0
	.local	pending_statics
	.comm	pending_statics,4,4
	.local	deferred_fns
	.comm	deferred_fns,4,4
	.local	initialize_p_decl
	.comm	initialize_p_decl,4,4
	.local	priority_decl
	.comm	priority_decl,4,4
	.local	ssdf_decl
	.comm	ssdf_decl,4,4
	.local	ssdf_decls
	.comm	ssdf_decls,4,4
	.local	priority_info_map
	.comm	priority_info_map,4,4
	.comm	global_namespace,4,4
	.comm	at_eof,4,4
	.comm	static_ctors,4,4
	.comm	static_dtors,4,4
	.comm	back_end_hook,4,4
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
	.byte	0x4
	.long	.LCFI39-.LCFI37
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
	.long	.LCFI40-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
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
	.long	.LCFI52-.LCFI48
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI57-.LCFI54
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI63-.LCFI59
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI64-.LFB30
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI68-.LFB31
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
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI72-.LFB32
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
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI76-.LFB33
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
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI80-.LFB34
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
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI84-.LFB35
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
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI88-.LFB36
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
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI92-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI93-.LCFI92
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI96-.LCFI93
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
	.long	.LCFI97-.LFB38
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
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI101-.LFB39
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
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI105-.LFB40
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
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI109-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI110-.LCFI109
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI113-.LCFI110
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI114-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI115-.LCFI114
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI118-.LCFI115
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
	.long	.LCFI119-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI120-.LCFI119
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI122-.LCFI120
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
	.long	.LCFI123-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI124-.LCFI123
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI126-.LCFI124
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
	.long	.LCFI127-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI128-.LCFI127
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI130-.LCFI128
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
	.long	.LCFI131-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI132-.LCFI131
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI134-.LCFI132
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
	.long	.LCFI135-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI136-.LCFI135
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI138-.LCFI136
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
	.long	.LCFI139-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI140-.LCFI139
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI142-.LCFI140
	.byte	0x83
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
	.long	.LCFI143-.LFB49
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
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI147-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI148-.LCFI147
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI150-.LCFI148
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
	.long	.LCFI151-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI152-.LCFI151
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI154-.LCFI152
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
	.long	.LCFI155-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI156-.LCFI155
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI158-.LCFI156
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
	.long	.LCFI159-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI160-.LCFI159
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI162-.LCFI160
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
	.long	.LCFI163-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI164-.LCFI163
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI166-.LCFI164
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
	.long	.LCFI167-.LFB55
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
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI171-.LFB56
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
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI175-.LFB57
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
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI179-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI180-.LCFI179
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI182-.LCFI180
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
	.long	.LCFI183-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI184-.LCFI183
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI187-.LCFI184
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI188-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI189-.LCFI188
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI191-.LCFI189
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
	.long	.LCFI192-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI193-.LCFI192
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI195-.LCFI193
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
	.long	.LCFI196-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI197-.LCFI196
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI200-.LCFI197
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
	.long	.LCFI201-.LFB63
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
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.long	.LFB64
	.long	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI205-.LFB64
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
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.byte	0x4
	.long	.LCFI209-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI210-.LCFI209
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI212-.LCFI210
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
	.long	.LCFI213-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI214-.LCFI213
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI216-.LCFI214
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
	.long	.LCFI217-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI218-.LCFI217
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI220-.LCFI218
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
	.long	.LCFI221-.LFB68
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI222-.LCFI221
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI224-.LCFI222
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
	.long	.LCFI225-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI226-.LCFI225
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI228-.LCFI226
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
	.long	.LCFI229-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI230-.LCFI229
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI232-.LCFI230
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
	.long	.LCFI233-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI234-.LCFI233
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI236-.LCFI234
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
	.long	.LCFI237-.LFB72
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
.LEFDE114:
.LSFDE116:
	.long	.LEFDE116-.LASFDE116
.LASFDE116:
	.long	.Lframe0
	.long	.LFB73
	.long	.LFE73-.LFB73
	.byte	0x4
	.long	.LCFI241-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI242-.LCFI241
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI246-.LCFI242
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI247-.LFB74
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI248-.LCFI247
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI250-.LCFI248
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
	.long	.LCFI251-.LFB75
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI252-.LCFI251
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI254-.LCFI252
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
	.long	.LCFI255-.LFB76
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
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.long	.LFB77
	.long	.LFE77-.LFB77
	.byte	0x4
	.long	.LCFI259-.LFB77
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
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.long	.LFB78
	.long	.LFE78-.LFB78
	.byte	0x4
	.long	.LCFI263-.LFB78
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
.LEFDE126:
.LSFDE128:
	.long	.LEFDE128-.LASFDE128
.LASFDE128:
	.long	.Lframe0
	.long	.LFB79
	.long	.LFE79-.LFB79
	.byte	0x4
	.long	.LCFI267-.LFB79
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
.LEFDE128:
.LSFDE130:
	.long	.LEFDE130-.LASFDE130
.LASFDE130:
	.long	.Lframe0
	.long	.LFB80
	.long	.LFE80-.LFB80
	.byte	0x4
	.long	.LCFI271-.LFB80
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI272-.LCFI271
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI275-.LCFI272
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI276-.LFB81
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
.LEFDE132:
.LSFDE134:
	.long	.LEFDE134-.LASFDE134
.LASFDE134:
	.long	.Lframe0
	.long	.LFB82
	.long	.LFE82-.LFB82
	.byte	0x4
	.long	.LCFI280-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI281-.LCFI280
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI283-.LCFI281
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
	.long	.LCFI284-.LFB83
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI285-.LCFI284
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI287-.LCFI285
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
	.long	.LCFI288-.LFB84
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
.LEFDE138:
.LSFDE140:
	.long	.LEFDE140-.LASFDE140
.LASFDE140:
	.long	.Lframe0
	.long	.LFB85
	.long	.LFE85-.LFB85
	.byte	0x4
	.long	.LCFI292-.LFB85
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
.LEFDE140:
.LSFDE142:
	.long	.LEFDE142-.LASFDE142
.LASFDE142:
	.long	.Lframe0
	.long	.LFB86
	.long	.LFE86-.LFB86
	.byte	0x4
	.long	.LCFI296-.LFB86
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI297-.LCFI296
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI299-.LCFI297
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
	.long	.LCFI300-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI301-.LCFI300
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI303-.LCFI301
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
	.long	.LCFI304-.LFB88
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
.LEFDE146:
.LSFDE148:
	.long	.LEFDE148-.LASFDE148
.LASFDE148:
	.long	.Lframe0
	.long	.LFB89
	.long	.LFE89-.LFB89
	.byte	0x4
	.long	.LCFI308-.LFB89
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI309-.LCFI308
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
	.long	.LCFI310-.LFB90
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI311-.LCFI310
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI313-.LCFI311
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
	.long	.LCFI314-.LFB91
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
.LEFDE152:
.LSFDE154:
	.long	.LEFDE154-.LASFDE154
.LASFDE154:
	.long	.Lframe0
	.long	.LFB92
	.long	.LFE92-.LFB92
	.byte	0x4
	.long	.LCFI318-.LFB92
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
.LEFDE154:
.LSFDE156:
	.long	.LEFDE156-.LASFDE156
.LASFDE156:
	.long	.Lframe0
	.long	.LFB93
	.long	.LFE93-.LFB93
	.byte	0x4
	.long	.LCFI322-.LFB93
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
.LEFDE156:
.LSFDE158:
	.long	.LEFDE158-.LASFDE158
.LASFDE158:
	.long	.Lframe0
	.long	.LFB94
	.long	.LFE94-.LFB94
	.byte	0x4
	.long	.LCFI326-.LFB94
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
.LEFDE158:
.LSFDE160:
	.long	.LEFDE160-.LASFDE160
.LASFDE160:
	.long	.Lframe0
	.long	.LFB95
	.long	.LFE95-.LFB95
	.byte	0x4
	.long	.LCFI330-.LFB95
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI331-.LCFI330
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI333-.LCFI331
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
	.long	.LCFI334-.LFB96
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI335-.LCFI334
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI337-.LCFI335
	.byte	0x83
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
	.long	.LCFI338-.LFB97
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI339-.LCFI338
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE164:
.LSFDE166:
	.long	.LEFDE166-.LASFDE166
.LASFDE166:
	.long	.Lframe0
	.long	.LFB98
	.long	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI341-.LFB98
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI342-.LCFI341
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI344-.LCFI342
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
	.long	.LCFI345-.LFB99
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI346-.LCFI345
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI348-.LCFI346
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
	.long	.LCFI349-.LFB100
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI350-.LCFI349
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI352-.LCFI350
	.byte	0x83
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
	.long	.LCFI356-.LCFI354
	.byte	0x83
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
	.long	.LCFI357-.LFB102
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI358-.LCFI357
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI360-.LCFI358
	.byte	0x83
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
	.long	.LCFI361-.LFB103
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI362-.LCFI361
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI364-.LCFI362
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
	.long	.LCFI365-.LFB104
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
.LEFDE178:
.LSFDE180:
	.long	.LEFDE180-.LASFDE180
.LASFDE180:
	.long	.Lframe0
	.long	.LFB105
	.long	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI369-.LFB105
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
.LEFDE180:
.LSFDE182:
	.long	.LEFDE182-.LASFDE182
.LASFDE182:
	.long	.Lframe0
	.long	.LFB106
	.long	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI373-.LFB106
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
.LEFDE182:
.LSFDE184:
	.long	.LEFDE184-.LASFDE184
.LASFDE184:
	.long	.Lframe0
	.long	.LFB107
	.long	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI377-.LFB107
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
.LEFDE184:
.LSFDE186:
	.long	.LEFDE186-.LASFDE186
.LASFDE186:
	.long	.Lframe0
	.long	.LFB108
	.long	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI381-.LFB108
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
.LEFDE186:
.LSFDE188:
	.long	.LEFDE188-.LASFDE188
.LASFDE188:
	.long	.Lframe0
	.long	.LFB109
	.long	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI385-.LFB109
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
.LEFDE188:
.LSFDE190:
	.long	.LEFDE190-.LASFDE190
.LASFDE190:
	.long	.Lframe0
	.long	.LFB110
	.long	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI389-.LFB110
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
.LEFDE190:
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
	.file 15 "../../../include/gnu/splay-tree.h"
	.file 16 "/usr/include/stdio.h"
	.file 17 "/usr/include/libio.h"
	.file 18 "/usr/include/bits/types.h"
	.file 19 "../../../kg++fe/gnu/flags.h"
	.file 20 "../../../kg++fe/gnu/cp/decl.h"
	.file 21 "../../../kg++fe/gnu/target.h"
	.file 22 "../../../kg++fe/gnu/MIPS/gt-cp-decl2.h"
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
	.long	.LCFI40-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI40-.Ltext0
	.long	.LCFI41-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI41-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
	.long	.LCFI123-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI123-.Ltext0
	.long	.LCFI124-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI124-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
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
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
	.long	.LCFI131-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI131-.Ltext0
	.long	.LCFI132-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI132-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
	.long	.LCFI135-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI135-.Ltext0
	.long	.LCFI136-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI136-.Ltext0
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
	.long	.LCFI139-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI139-.Ltext0
	.long	.LCFI140-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI140-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
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
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
	.long	.LCFI147-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI147-.Ltext0
	.long	.LCFI148-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI148-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
	.long	.LCFI151-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI151-.Ltext0
	.long	.LCFI152-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI152-.Ltext0
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
	.long	.LCFI155-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI155-.Ltext0
	.long	.LCFI156-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI156-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
	.long	.LCFI159-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI159-.Ltext0
	.long	.LCFI160-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI160-.Ltext0
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
	.long	.LCFI163-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI163-.Ltext0
	.long	.LCFI164-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI164-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
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
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
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
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
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
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
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
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
	.long	.LCFI183-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI183-.Ltext0
	.long	.LCFI184-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI184-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
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
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB61-.Ltext0
	.long	.LCFI192-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI192-.Ltext0
	.long	.LCFI193-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI193-.Ltext0
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB62-.Ltext0
	.long	.LCFI196-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI196-.Ltext0
	.long	.LCFI197-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI197-.Ltext0
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB63-.Ltext0
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
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB64-.Ltext0
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
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB65-.Ltext0
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
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB66-.Ltext0
	.long	.LCFI213-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI213-.Ltext0
	.long	.LCFI214-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI214-.Ltext0
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB67-.Ltext0
	.long	.LCFI217-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI217-.Ltext0
	.long	.LCFI218-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI218-.Ltext0
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB68-.Ltext0
	.long	.LCFI221-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI221-.Ltext0
	.long	.LCFI222-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI222-.Ltext0
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB69-.Ltext0
	.long	.LCFI225-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI225-.Ltext0
	.long	.LCFI226-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI226-.Ltext0
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB70-.Ltext0
	.long	.LCFI229-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI229-.Ltext0
	.long	.LCFI230-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI230-.Ltext0
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB71-.Ltext0
	.long	.LCFI233-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI233-.Ltext0
	.long	.LCFI234-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI234-.Ltext0
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB72-.Ltext0
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
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB73-.Ltext0
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
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB74-.Ltext0
	.long	.LCFI247-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI247-.Ltext0
	.long	.LCFI248-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI248-.Ltext0
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LFB75-.Ltext0
	.long	.LCFI251-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI251-.Ltext0
	.long	.LCFI252-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI252-.Ltext0
	.long	.LFE75-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LFB76-.Ltext0
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
	.long	.LFE76-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LFB77-.Ltext0
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
	.long	.LFE77-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LFB78-.Ltext0
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
	.long	.LFE78-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LFB79-.Ltext0
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
	.long	.LFE79-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LFB80-.Ltext0
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
	.long	.LFE80-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST66:
	.long	.LFB81-.Ltext0
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
	.long	.LFE81-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LFB82-.Ltext0
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
	.long	.LFE82-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST68:
	.long	.LFB83-.Ltext0
	.long	.LCFI284-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI284-.Ltext0
	.long	.LCFI285-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI285-.Ltext0
	.long	.LFE83-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST69:
	.long	.LFB84-.Ltext0
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
	.long	.LFE84-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST70:
	.long	.LFB85-.Ltext0
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
	.long	.LFE85-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST71:
	.long	.LFB86-.Ltext0
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
	.long	.LFE86-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST72:
	.long	.LFB87-.Ltext0
	.long	.LCFI300-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI300-.Ltext0
	.long	.LCFI301-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI301-.Ltext0
	.long	.LFE87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST73:
	.long	.LFB88-.Ltext0
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
	.long	.LFE88-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST74:
	.long	.LFB89-.Ltext0
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
	.long	.LFE89-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST75:
	.long	.LFB90-.Ltext0
	.long	.LCFI310-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI310-.Ltext0
	.long	.LCFI311-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI311-.Ltext0
	.long	.LFE90-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST76:
	.long	.LFB91-.Ltext0
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
	.long	.LFE91-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST77:
	.long	.LFB92-.Ltext0
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
	.long	.LFE92-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST78:
	.long	.LFB93-.Ltext0
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
	.long	.LFE93-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST79:
	.long	.LFB94-.Ltext0
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
	.long	.LFE94-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST80:
	.long	.LFB95-.Ltext0
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
	.long	.LFE95-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST81:
	.long	.LFB96-.Ltext0
	.long	.LCFI334-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI334-.Ltext0
	.long	.LCFI335-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI335-.Ltext0
	.long	.LFE96-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST82:
	.long	.LFB97-.Ltext0
	.long	.LCFI338-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI338-.Ltext0
	.long	.LCFI339-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI339-.Ltext0
	.long	.LFE97-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST83:
	.long	.LFB98-.Ltext0
	.long	.LCFI341-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI341-.Ltext0
	.long	.LCFI342-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI342-.Ltext0
	.long	.LFE98-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST84:
	.long	.LFB99-.Ltext0
	.long	.LCFI345-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI345-.Ltext0
	.long	.LCFI346-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI346-.Ltext0
	.long	.LFE99-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST85:
	.long	.LFB100-.Ltext0
	.long	.LCFI349-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI349-.Ltext0
	.long	.LCFI350-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI350-.Ltext0
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
	.long	.LCFI357-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI357-.Ltext0
	.long	.LCFI358-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI358-.Ltext0
	.long	.LFE102-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST88:
	.long	.LFB103-.Ltext0
	.long	.LCFI361-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI361-.Ltext0
	.long	.LCFI362-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI362-.Ltext0
	.long	.LFE103-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST89:
	.long	.LFB104-.Ltext0
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
	.long	.LFE104-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST90:
	.long	.LFB105-.Ltext0
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
	.long	.LFE105-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST91:
	.long	.LFB106-.Ltext0
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
	.long	.LFE106-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST92:
	.long	.LFB107-.Ltext0
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
	.long	.LFE107-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST93:
	.long	.LFB108-.Ltext0
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
	.long	.LFE108-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST94:
	.long	.LFB109-.Ltext0
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
	.long	.LFE109-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST95:
	.long	.LFB110-.Ltext0
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
	.long	.LFE110-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xbd14
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cp/decl2.c"
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
	.long	0x5203
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
	.long	0x837
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x5c5d
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
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x4
	.byte	0xf3
	.long	0x5c6d
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
	.long	0x2d0
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x3
	.value	0x887
	.long	0x313f
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x3
	.value	0x888
	.long	0x345d
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x3
	.value	0x889
	.long	0x34a5
	.uleb128 0x9
	.string	"vector"
	.byte	0x3
	.value	0x88a
	.long	0x35c8
	.uleb128 0x9
	.string	"string"
	.byte	0x3
	.value	0x88b
	.long	0x3506
	.uleb128 0x9
	.string	"complex"
	.byte	0x3
	.value	0x88c
	.long	0x3573
	.uleb128 0x9
	.string	"identifier"
	.byte	0x3
	.value	0x88d
	.long	0x364e
	.uleb128 0x8
	.long	.LASF1
	.byte	0x3
	.value	0x88e
	.long	0x46b4
	.uleb128 0x8
	.long	.LASF2
	.byte	0x3
	.value	0x88f
	.long	0x38ad
	.uleb128 0x9
	.string	"list"
	.byte	0x3
	.value	0x890
	.long	0x3685
	.uleb128 0x9
	.string	"vec"
	.byte	0x3
	.value	0x891
	.long	0x36c6
	.uleb128 0x9
	.string	"exp"
	.byte	0x3
	.value	0x892
	.long	0x3717
	.uleb128 0x9
	.string	"block"
	.byte	0x3
	.value	0x893
	.long	0x3763
	.uleb128 0x9
	.string	"omp"
	.byte	0x3
	.value	0x895
	.long	0x50ab
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
	.long	0x3bc
	.string	"mips_args"
	.byte	0x40
	.byte	0x9
	.value	0xaaa
	.uleb128 0xd
	.string	"gp_reg_found"
	.byte	0x9
	.value	0xaad
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"arg_number"
	.byte	0x9
	.value	0xab0
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"num_gprs"
	.byte	0x9
	.value	0xab5
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"num_fprs"
	.byte	0x9
	.value	0xab8
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stack_words"
	.byte	0x9
	.value	0xabb
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"fp_code"
	.byte	0x9
	.value	0xac8
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"prototype"
	.byte	0x9
	.value	0xacb
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"num_adjusts"
	.byte	0x9
	.value	0xad3
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"adjust"
	.byte	0x9
	.value	0xad4
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xe
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	0x3d3
	.long	0x9d
	.uleb128 0x10
	.long	0x3d3
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
	.long	0x2ea
	.uleb128 0x2
	.string	"size_t"
	.byte	0xd
	.byte	0xd6
	.long	0x3bc
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
	.long	0x458
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x12
	.byte	0x90
	.long	0x4a2
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x12
	.byte	0x91
	.long	0x483
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2db
	.uleb128 0x2
	.string	"FILE"
	.byte	0x10
	.byte	0x2e
	.long	0x4d3
	.uleb128 0x13
	.long	0x74e
	.long	.LASF4
	.byte	0x94
	.byte	0x10
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x11
	.value	0x10c
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x11
	.value	0x111
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x11
	.value	0x112
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x11
	.value	0x113
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x11
	.value	0x114
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x11
	.value	0x115
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x11
	.value	0x116
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x11
	.value	0x117
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x11
	.value	0x118
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x11
	.value	0x11a
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x11
	.value	0x11b
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x11
	.value	0x11c
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x11
	.value	0x11e
	.long	0x7c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x11
	.value	0x120
	.long	0x7c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x11
	.value	0x122
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x11
	.value	0x126
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x11
	.value	0x128
	.long	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x11
	.value	0x12c
	.long	0x411
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x11
	.value	0x12d
	.long	0x43c
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x11
	.value	0x12e
	.long	0x7ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x11
	.value	0x132
	.long	0x7de
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x11
	.value	0x13b
	.long	0x4ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x11
	.value	0x144
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x11
	.value	0x145
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x11
	.value	0x146
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x11
	.value	0x147
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x11
	.value	0x148
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x11
	.value	0x14a
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x11
	.value	0x14c
	.long	0x7e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x754
	.uleb128 0xa
	.long	0x400
	.uleb128 0x3
	.byte	0x4
	.long	0x400
	.uleb128 0x3
	.byte	0x4
	.long	0x765
	.uleb128 0x14
	.long	0x771
	.byte	0x1
	.uleb128 0x15
	.long	0x4bf
	.byte	0x0
	.uleb128 0x16
	.string	"_IO_lock_t"
	.byte	0x11
	.byte	0xb0
	.uleb128 0x4
	.long	0x7c2
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x11
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x11
	.byte	0xb7
	.long	0x7c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x11
	.byte	0xb8
	.long	0x7c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x11
	.byte	0xbc
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x77f
	.uleb128 0x3
	.byte	0x4
	.long	0x4d3
	.uleb128 0xf
	.long	0x7de
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x771
	.uleb128 0xf
	.long	0x7f4
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x27
	.byte	0x0
	.uleb128 0xf
	.long	0x804
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x17
	.byte	0x0
	.uleb128 0xf
	.long	0x814
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x1f
	.byte	0x0
	.uleb128 0xf
	.long	0x824
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x13
	.byte	0x0
	.uleb128 0xa
	.long	0x2e3
	.uleb128 0x3
	.byte	0x4
	.long	0x2e3
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x82f
	.uleb128 0x18
	.long	0xa80
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
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
	.long	0xab2
	.string	"location_s"
	.byte	0x8
	.byte	0x7
	.byte	0x1c
	.uleb128 0x6
	.string	"file"
	.byte	0x7
	.byte	0x1e
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line"
	.byte	0x7
	.byte	0x21
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x7
	.byte	0x23
	.long	0xa80
	.uleb128 0x18
	.long	0x13e6
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
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
	.byte	0x3
	.byte	0x2f
	.long	0x3bc
	.uleb128 0x4
	.long	0x1436
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x30
	.uleb128 0x6
	.string	"block"
	.byte	0x3
	.byte	0x30
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x30
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x34
	.long	0x1440
	.uleb128 0x1a
	.string	"st"
	.byte	0x1
	.uleb128 0x1b
	.long	0x1495
	.long	.LASF5
	.byte	0x4
	.byte	0x3
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
	.long	0x313f
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
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
	.long	0x3421
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
	.uleb128 0x1c
	.long	.LASF2
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
	.long	0xac4
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF6
	.byte	0x3
	.byte	0xa8
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF7
	.byte	0x3
	.byte	0xa9
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF8
	.byte	0x3
	.byte	0xaa
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF9
	.byte	0x3
	.byte	0xab
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF10
	.byte	0x3
	.byte	0xac
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF11
	.byte	0x3
	.byte	0xad
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF12
	.byte	0x3
	.byte	0xae
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF13
	.byte	0x3
	.byte	0xb0
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x345d
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x30a
	.uleb128 0xd
	.string	"low"
	.byte	0x3
	.value	0x30b
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"high"
	.byte	0x3
	.value	0x30c
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x34a5
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x303
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x304
	.long	0x313f
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
	.long	0x3421
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x34f3
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x31f
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x320
	.long	0x313f
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
	.long	0x3500
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1a
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x34f3
	.uleb128 0xc
	.long	0x356d
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x333
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x334
	.long	0x313f
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
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"pointer"
	.byte	0x3
	.value	0x337
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"st"
	.byte	0x3
	.value	0x339
	.long	0x356d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1436
	.uleb128 0xc
	.long	0x35c8
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x342
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x343
	.long	0x313f
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
	.long	0x3610
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x355
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x356
	.long	0x313f
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
	.uleb128 0x13
	.long	0x364e
	.long	.LASF14
	.byte	0xc
	.byte	0x6
	.byte	0x19
	.uleb128 0x6
	.string	"str"
	.byte	0x6
	.byte	0x1c
	.long	0x74e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0x6
	.byte	0x1d
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"hash_value"
	.byte	0x6
	.byte	0x1e
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x3685
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x376
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x377
	.long	0x313f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"id"
	.byte	0x3
	.value	0x378
	.long	0x3610
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x36c6
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x380
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x381
	.long	0x313f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF15
	.byte	0x3
	.value	0x382
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF16
	.byte	0x3
	.value	0x383
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x3707
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x38e
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x38f
	.long	0x313f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"length"
	.byte	0x3
	.value	0x390
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"a"
	.byte	0x3
	.value	0x391
	.long	0x3707
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x3717
	.long	0x1e6
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x3763
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3d4
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x3d5
	.long	0x313f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"complexity"
	.byte	0x3
	.value	0x3d6
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"operands"
	.byte	0x3
	.value	0x3d9
	.long	0x3707
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x3853
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x40a
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x40b
	.long	0x313f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x40d
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.long	.LASF17
	.byte	0x3
	.value	0x40e
	.long	0x3bc
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
	.long	0x3bc
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
	.uleb128 0x1e
	.long	.LASF18
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
	.long	0x389a
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x570
	.uleb128 0x9
	.string	"address"
	.byte	0x3
	.value	0x571
	.long	0x2e3
	.uleb128 0x9
	.string	"pointer"
	.byte	0x3
	.value	0x572
	.long	0x4c1
	.uleb128 0x9
	.string	"die"
	.byte	0x3
	.value	0x573
	.long	0x38a7
	.byte	0x0
	.uleb128 0x1a
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x389a
	.uleb128 0xc
	.long	0x3bf4
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x551
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x552
	.long	0x313f
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
	.uleb128 0x1e
	.long	.LASF19
	.byte	0x3
	.value	0x555
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1e
	.long	.LASF20
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
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"precision"
	.byte	0x3
	.value	0x559
	.long	0x3bc
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
	.long	0x837
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF21
	.byte	0x3
	.value	0x562
	.long	0x3bc
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF6
	.byte	0x3
	.value	0x564
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF7
	.byte	0x3
	.value	0x565
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF8
	.byte	0x3
	.value	0x566
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF9
	.byte	0x3
	.value	0x567
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF10
	.byte	0x3
	.value	0x568
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF11
	.byte	0x3
	.value	0x569
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF12
	.byte	0x3
	.value	0x56a
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF22
	.byte	0x3
	.value	0x56b
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF23
	.byte	0x3
	.value	0x56d
	.long	0x3bc
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
	.long	0x3853
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1e
	.long	.LASF24
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
	.uleb128 0x1e
	.long	.LASF25
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
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1e
	.long	.LASF26
	.byte	0x3
	.value	0x57f
	.long	0x3c15
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"ty_idx"
	.byte	0x3
	.value	0x581
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"field_ids_used"
	.byte	0x3
	.value	0x582
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"dst_id"
	.byte	0x3
	.value	0x583
	.long	0x13f7
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
	.long	0x3c15
	.string	"lang_type"
	.byte	0x4c
	.byte	0x3
	.value	0x57f
	.uleb128 0xd
	.string	"u"
	.byte	0xa
	.value	0x4e0
	.long	0x76b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3bf4
	.uleb128 0xc
	.long	0x3c5e
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x817
	.uleb128 0x20
	.long	.LASF23
	.byte	0x3
	.value	0x818
	.long	0x3bc
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
	.long	0x3bc
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x3c93
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x80e
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x811
	.long	0x1495
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x814
	.long	0x458
	.uleb128 0x9
	.string	"a"
	.byte	0x3
	.value	0x81a
	.long	0x3c1b
	.byte	0x0
	.uleb128 0x21
	.long	0x3cd2
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x837
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x838
	.long	0x4676
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
	.long	0x2e3
	.byte	0x0
	.uleb128 0x22
	.long	0x4676
	.long	.LASF27
	.value	0x134
	.byte	0x3
	.value	0x7c2
	.uleb128 0x6
	.string	"eh"
	.byte	0x8
	.byte	0xb5
	.long	0x606d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0x8
	.byte	0xb6
	.long	0x6081
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0x8
	.byte	0xb7
	.long	0x6087
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0x8
	.byte	0xb8
	.long	0x608d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0x8
	.byte	0xb9
	.long	0x60a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF24
	.byte	0x8
	.byte	0xbe
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF1
	.byte	0x8
	.byte	0xc1
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0x8
	.byte	0xc4
	.long	0x4676
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0x8
	.byte	0xc9
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1c
	.long	.LASF28
	.byte	0x8
	.byte	0xce
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0x8
	.byte	0xd3
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0x8
	.byte	0xd7
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0x8
	.byte	0xdb
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0x8
	.byte	0xdf
	.long	0x3da
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0x8
	.byte	0xe5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0x8
	.byte	0xe8
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x1c
	.long	.LASF29
	.byte	0x8
	.byte	0xec
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0x8
	.byte	0xf0
	.long	0x60c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0x8
	.byte	0xf3
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0x8
	.byte	0xf8
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x8
	.byte	0xfe
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x8
	.value	0x102
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x8
	.value	0x107
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"x_cleanup_label"
	.byte	0x8
	.value	0x10d
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.string	"x_return_label"
	.byte	0x8
	.value	0x112
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.string	"computed_goto_common_label"
	.byte	0x8
	.value	0x115
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"computed_goto_common_reg"
	.byte	0x8
	.value	0x116
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"x_save_expr_regs"
	.byte	0x8
	.value	0x11a
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"x_stack_slot_list"
	.byte	0x8
	.value	0x11e
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.string	"x_rtl_expr_chain"
	.byte	0x8
	.value	0x121
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"x_tail_recursion_label"
	.byte	0x8
	.value	0x125
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.string	"x_tail_recursion_reentry"
	.byte	0x8
	.value	0x128
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.string	"x_arg_pointer_save_area"
	.byte	0x8
	.value	0x12e
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"x_clobber_return_insn"
	.byte	0x8
	.value	0x133
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"x_frame_offset"
	.byte	0x8
	.value	0x138
	.long	0x458
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"x_context_display"
	.byte	0x8
	.value	0x13d
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"x_trampoline_list"
	.byte	0x8
	.value	0x146
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"x_parm_birth_insn"
	.byte	0x8
	.value	0x149
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"x_last_parm_insn"
	.byte	0x8
	.value	0x14d
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"x_max_parm_reg"
	.byte	0x8
	.value	0x151
	.long	0x3bc
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"x_parm_reg_stack_loc"
	.byte	0x8
	.value	0x157
	.long	0x5c7d
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0x8
	.value	0x15a
	.long	0x60d2
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"x_temp_slot_level"
	.byte	0x8
	.value	0x15d
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"x_var_temp_slot_level"
	.byte	0x8
	.value	0x160
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"x_target_temp_slot_level"
	.byte	0x8
	.value	0x166
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"fixup_var_refs_queue"
	.byte	0x8
	.value	0x16a
	.long	0x5d73
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"inlinable"
	.byte	0x8
	.value	0x16d
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"no_debugging_symbols"
	.byte	0x8
	.value	0x16e
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xd
	.string	"original_arg_vector"
	.byte	0x8
	.value	0x16f
	.long	0x19e
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"original_decl_initial"
	.byte	0x8
	.value	0x170
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.string	"inl_last_parm_insn"
	.byte	0x8
	.value	0x173
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.string	"inl_max_label_num"
	.byte	0x8
	.value	0x175
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"funcdef_no"
	.byte	0x8
	.value	0x178
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.string	"machine"
	.byte	0x8
	.value	0x17d
	.long	0x60eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.string	"stack_alignment_needed"
	.byte	0x8
	.value	0x17f
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.string	"preferred_stack_boundary"
	.byte	0x8
	.value	0x181
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0x1e
	.long	.LASF30
	.byte	0x8
	.value	0x184
	.long	0x6327
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.string	"epilogue_delay_list"
	.byte	0x8
	.value	0x18a
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1f
	.string	"returns_struct"
	.byte	0x8
	.value	0x190
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.long	.LASF31
	.byte	0x8
	.value	0x1fa
	.long	0x5ff7
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"max_jumptable_ents"
	.byte	0x8
	.value	0x1fe
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3cd2
	.uleb128 0x23
	.long	0x46b4
	.byte	0x4
	.byte	0x3
	.value	0x84e
	.uleb128 0x9
	.string	"st"
	.byte	0x3
	.value	0x84f
	.long	0x356d
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x3
	.value	0x850
	.long	0x13e6
	.uleb128 0x9
	.string	"field_id"
	.byte	0x3
	.value	0x851
	.long	0x3bc
	.byte	0x0
	.uleb128 0xc
	.long	0x4df0
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x3
	.value	0x7c5
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x7c6
	.long	0x313f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"locus"
	.byte	0x3
	.value	0x7c7
	.long	0xab2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"uid"
	.byte	0x3
	.value	0x7c8
	.long	0x3bc
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
	.long	0x837
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.long	.LASF17
	.byte	0x3
	.value	0x7d3
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x1445
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
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF21
	.byte	0x3
	.value	0x7f0
	.long	0x3bc
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
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF22
	.byte	0x3
	.value	0x7f2
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF6
	.byte	0x3
	.value	0x7fa
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF7
	.byte	0x3
	.value	0x7fb
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF8
	.byte	0x3
	.value	0x7fc
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF9
	.byte	0x3
	.value	0x7fd
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF10
	.byte	0x3
	.value	0x7fe
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF11
	.byte	0x3
	.value	0x7ff
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF12
	.byte	0x3
	.value	0x800
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF13
	.byte	0x3
	.value	0x801
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3c5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1e
	.long	.LASF19
	.byte	0x3
	.value	0x81d
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1e
	.long	.LASF24
	.byte	0x3
	.value	0x81e
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1e
	.long	.LASF25
	.byte	0x3
	.value	0x81f
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x1e
	.long	.LASF32
	.byte	0x3
	.value	0x820
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1e
	.long	.LASF33
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
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1e
	.long	.LASF18
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
	.uleb128 0x1e
	.long	.LASF20
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
	.long	0x3c93
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
	.long	0x458
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x1e
	.long	.LASF26
	.byte	0x3
	.value	0x848
	.long	0x4e27
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x1f
	.string	"symtab_idx"
	.byte	0x3
	.value	0x84b
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x467c
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x858
	.long	0x13f7
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
	.long	0x4e27
	.string	"lang_decl"
	.byte	0x34
	.byte	0x3
	.value	0x848
	.uleb128 0xd
	.string	"decl_flags"
	.byte	0xa
	.value	0x73a
	.long	0x7773
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"u"
	.byte	0xa
	.value	0x763
	.long	0x7b93
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4df0
	.uleb128 0x18
	.long	0x50ab
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xe
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
	.uleb128 0xc
	.long	0x50fa
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x864
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x865
	.long	0x313f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"choice"
	.byte	0x3
	.value	0x866
	.long	0x4e2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x867
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x51b5
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x3
	.value	0xa1d
	.uleb128 0x1e
	.long	.LASF24
	.byte	0x3
	.value	0xa20
	.long	0x51b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"min_length"
	.byte	0x3
	.value	0xa22
	.long	0x824
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"max_length"
	.byte	0x3
	.value	0xa25
	.long	0x824
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"decl_required"
	.byte	0x3
	.value	0xa2d
	.long	0x51ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"type_required"
	.byte	0x3
	.value	0xa30
	.long	0x51ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xd
	.string	"function_type_required"
	.byte	0x3
	.value	0xa35
	.long	0x51ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.string	"handler"
	.byte	0x3
	.value	0xa44
	.long	0x51f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x2d0
	.uleb128 0xa
	.long	0x51bf
	.uleb128 0xb
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x24
	.long	0x51ec
	.byte	0x1
	.long	0x1e6
	.uleb128 0x15
	.long	0x51ec
	.uleb128 0x15
	.long	0x1e6
	.uleb128 0x15
	.long	0x1e6
	.uleb128 0x15
	.long	0x2e3
	.uleb128 0x15
	.long	0x51f2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e6
	.uleb128 0x3
	.byte	0x4
	.long	0x51bf
	.uleb128 0xa
	.long	0x51fd
	.uleb128 0x3
	.byte	0x4
	.long	0x51c8
	.uleb128 0x18
	.long	0x59d2
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
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
	.uleb128 0x25
	.long	0x5aac
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x49
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x59d2
	.uleb128 0x13
	.long	0x5b21
	.long	.LASF34
	.byte	0x18
	.byte	0x4
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x4
	.byte	0x63
	.long	0x458
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
	.uleb128 0x1c
	.long	.LASF23
	.byte	0x4
	.byte	0x67
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x26
	.long	.LASF34
	.byte	0x4
	.byte	0x68
	.long	0x5ac7
	.uleb128 0x7
	.long	0x5bfe
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x6d
	.uleb128 0x27
	.string	"rtwint"
	.byte	0x4
	.byte	0x6e
	.long	0x458
	.uleb128 0x27
	.string	"rtint"
	.byte	0x4
	.byte	0x6f
	.long	0x2e3
	.uleb128 0x27
	.string	"rtuint"
	.byte	0x4
	.byte	0x70
	.long	0x3bc
	.uleb128 0x27
	.string	"rtstr"
	.byte	0x4
	.byte	0x71
	.long	0x2d0
	.uleb128 0x27
	.string	"rtx"
	.byte	0x4
	.byte	0x72
	.long	0x9d
	.uleb128 0x27
	.string	"rtvec"
	.byte	0x4
	.byte	0x73
	.long	0x19e
	.uleb128 0x27
	.string	"rttype"
	.byte	0x4
	.byte	0x74
	.long	0x837
	.uleb128 0x27
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x75
	.long	0x5aac
	.uleb128 0x27
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x76
	.long	0x5c12
	.uleb128 0x27
	.string	"rtbit"
	.byte	0x4
	.byte	0x77
	.long	0x5c2a
	.uleb128 0x27
	.string	"rttree"
	.byte	0x4
	.byte	0x78
	.long	0x1e6
	.uleb128 0x27
	.string	"bb"
	.byte	0x4
	.byte	0x79
	.long	0x5c42
	.uleb128 0x27
	.string	"rtmem"
	.byte	0x4
	.byte	0x7a
	.long	0x5c48
	.byte	0x0
	.uleb128 0x1a
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5bfe
	.uleb128 0x1a
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5c18
	.uleb128 0x1a
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5c30
	.uleb128 0x3
	.byte	0x4
	.long	0x5b21
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x7c
	.long	0x5b2c
	.uleb128 0xf
	.long	0x5c6d
	.long	0x5c4e
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5c7d
	.long	0x9d
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9d
	.uleb128 0x18
	.long	0x5d0d
	.string	"debug_info_type"
	.byte	0x4
	.byte	0x13
	.byte	0x21
	.uleb128 0x19
	.string	"NO_DEBUG"
	.sleb128 0
	.uleb128 0x19
	.string	"DBX_DEBUG"
	.sleb128 1
	.uleb128 0x19
	.string	"SDB_DEBUG"
	.sleb128 2
	.uleb128 0x19
	.string	"DWARF_DEBUG"
	.sleb128 3
	.uleb128 0x19
	.string	"DWARF2_DEBUG"
	.sleb128 4
	.uleb128 0x19
	.string	"XCOFF_DEBUG"
	.sleb128 5
	.uleb128 0x19
	.string	"VMS_DEBUG"
	.sleb128 6
	.uleb128 0x19
	.string	"VMS_AND_DWARF2_DEBUG"
	.sleb128 7
	.byte	0x0
	.uleb128 0x4
	.long	0x5d73
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x8
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0x8
	.byte	0x18
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0x8
	.byte	0x19
	.long	0x837
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0x8
	.byte	0x1a
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0x8
	.byte	0x1b
	.long	0x5d73
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5d0d
	.uleb128 0x13
	.long	0x5dc2
	.long	.LASF35
	.byte	0x10
	.byte	0x8
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0x8
	.byte	0x26
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0x8
	.byte	0x27
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF36
	.byte	0x8
	.byte	0x28
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0x8
	.byte	0x29
	.long	0x5dc2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5d79
	.uleb128 0x4
	.long	0x5f17
	.string	"emit_status"
	.byte	0x34
	.byte	0x8
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0x8
	.byte	0x3a
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0x8
	.byte	0x3d
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0x8
	.byte	0x44
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0x8
	.byte	0x45
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.long	.LASF36
	.byte	0x8
	.byte	0x4a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF35
	.byte	0x8
	.byte	0x50
	.long	0x5dc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0x8
	.byte	0x54
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0x8
	.byte	0x58
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0x8
	.byte	0x59
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0x8
	.byte	0x5f
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0x8
	.byte	0x65
	.long	0x759
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0x8
	.byte	0x69
	.long	0x51ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0x8
	.byte	0x70
	.long	0x5c7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x5ff7
	.string	"expr_status"
	.byte	0x1c
	.byte	0x8
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0x8
	.byte	0x80
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0x8
	.byte	0x91
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0x8
	.byte	0x97
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0x8
	.byte	0x9c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0x8
	.byte	0x9f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0x8
	.byte	0xa2
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0x8
	.byte	0xa5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x28
	.long	0x6061
	.long	.LASF31
	.byte	0x4
	.byte	0x8
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
	.long	0x6061
	.uleb128 0x1a
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6073
	.uleb128 0x3
	.byte	0x4
	.long	0x5f17
	.uleb128 0x3
	.byte	0x4
	.long	0x5dc8
	.uleb128 0x1a
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6093
	.uleb128 0x1a
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x60a9
	.uleb128 0x1a
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x60c6
	.uleb128 0x1a
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x60d8
	.uleb128 0xc
	.long	0x6327
	.string	"language_function"
	.byte	0x64
	.byte	0x8
	.value	0x184
	.uleb128 0xd
	.string	"base"
	.byte	0xa
	.value	0x370
	.long	0x6ae1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"x_dtor_label"
	.byte	0xa
	.value	0x372
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"x_current_class_ptr"
	.byte	0xa
	.value	0x373
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"x_current_class_ref"
	.byte	0xa
	.value	0x374
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"x_eh_spec_block"
	.byte	0xa
	.value	0x375
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"x_in_charge_parm"
	.byte	0xa
	.value	0x376
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"x_vtt_parm"
	.byte	0xa
	.value	0x377
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"x_return_value"
	.byte	0xa
	.value	0x378
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"returns_value"
	.byte	0xa
	.value	0x37a
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"returns_null"
	.byte	0xa
	.value	0x37b
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"returns_abnormally"
	.byte	0xa
	.value	0x37c
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"in_function_try_handler"
	.byte	0xa
	.value	0x37d
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"in_base_initializer"
	.byte	0xa
	.value	0x37e
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"x_expanding_p"
	.byte	0xa
	.value	0x37f
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1f
	.string	"can_throw"
	.byte	0xa
	.value	0x382
	.long	0x51bf
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
	.long	0x6f1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"x_named_labels"
	.byte	0xa
	.value	0x385
	.long	0x6f37
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1e
	.long	.LASF37
	.byte	0xa
	.value	0x386
	.long	0x6c56
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"x_local_names"
	.byte	0xa
	.value	0x387
	.long	0x6a3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1e
	.long	.LASF29
	.byte	0xa
	.value	0x389
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"unparsed_inlines"
	.byte	0xa
	.value	0x38a
	.long	0x6f4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x60f1
	.uleb128 0x2
	.string	"splay_tree_key"
	.byte	0xf
	.byte	0x2f
	.long	0x427
	.uleb128 0x2
	.string	"splay_tree_value"
	.byte	0xf
	.byte	0x30
	.long	0x427
	.uleb128 0x2
	.string	"splay_tree_node"
	.byte	0xf
	.byte	0x33
	.long	0x6372
	.uleb128 0x3
	.byte	0x4
	.long	0x6378
	.uleb128 0x4
	.long	0x63ce
	.string	"splay_tree_node_s"
	.byte	0x10
	.byte	0xf
	.byte	0x33
	.uleb128 0x6
	.string	"key"
	.byte	0xf
	.byte	0x54
	.long	0x632d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF16
	.byte	0xf
	.byte	0x57
	.long	0x6343
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"left"
	.byte	0xf
	.byte	0x5a
	.long	0x635b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"right"
	.byte	0xf
	.byte	0x5b
	.long	0x635b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_compare_fn"
	.byte	0xf
	.byte	0x37
	.long	0x63eb
	.uleb128 0x3
	.byte	0x4
	.long	0x63f1
	.uleb128 0x24
	.long	0x6406
	.byte	0x1
	.long	0x2e3
	.uleb128 0x15
	.long	0x632d
	.uleb128 0x15
	.long	0x632d
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_delete_key_fn"
	.byte	0xf
	.byte	0x3b
	.long	0x6426
	.uleb128 0x3
	.byte	0x4
	.long	0x642c
	.uleb128 0x14
	.long	0x6438
	.byte	0x1
	.uleb128 0x15
	.long	0x632d
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_delete_value_fn"
	.byte	0xf
	.byte	0x3f
	.long	0x645a
	.uleb128 0x3
	.byte	0x4
	.long	0x6460
	.uleb128 0x14
	.long	0x646c
	.byte	0x1
	.uleb128 0x15
	.long	0x6343
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_allocate_fn"
	.byte	0xf
	.byte	0x48
	.long	0x648a
	.uleb128 0x3
	.byte	0x4
	.long	0x6490
	.uleb128 0x24
	.long	0x64a5
	.byte	0x1
	.long	0x4bf
	.uleb128 0x15
	.long	0x2e3
	.uleb128 0x15
	.long	0x4bf
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_deallocate_fn"
	.byte	0xf
	.byte	0x4e
	.long	0x64c5
	.uleb128 0x3
	.byte	0x4
	.long	0x64cb
	.uleb128 0x14
	.long	0x64dc
	.byte	0x1
	.uleb128 0x15
	.long	0x4bf
	.uleb128 0x15
	.long	0x4bf
	.byte	0x0
	.uleb128 0x4
	.long	0x657c
	.string	"splay_tree_s"
	.byte	0x1c
	.byte	0xf
	.byte	0x60
	.uleb128 0x6
	.string	"root"
	.byte	0xf
	.byte	0x62
	.long	0x635b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"comp"
	.byte	0xf
	.byte	0x65
	.long	0x63ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"delete_key"
	.byte	0xf
	.byte	0x68
	.long	0x6406
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"delete_value"
	.byte	0xf
	.byte	0x6b
	.long	0x6438
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"allocate"
	.byte	0xf
	.byte	0x6e
	.long	0x646c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"deallocate"
	.byte	0xf
	.byte	0x6f
	.long	0x64a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"allocate_data"
	.byte	0xf
	.byte	0x70
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree"
	.byte	0xf
	.byte	0x72
	.long	0x658e
	.uleb128 0x3
	.byte	0x4
	.long	0x64dc
	.uleb128 0x4
	.long	0x65ca
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xc
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0xc
	.byte	0x32
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0xc
	.byte	0x36
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x18
	.long	0x6765
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xc
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
	.uleb128 0x7
	.long	0x6861
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xc
	.byte	0x55
	.uleb128 0x27
	.string	"c"
	.byte	0xc
	.byte	0x56
	.long	0x7ce
	.uleb128 0x27
	.string	"uc"
	.byte	0xc
	.byte	0x58
	.long	0x6861
	.uleb128 0x27
	.string	"s"
	.byte	0xc
	.byte	0x5a
	.long	0x6871
	.uleb128 0x27
	.string	"us"
	.byte	0xc
	.byte	0x5c
	.long	0x6881
	.uleb128 0x27
	.string	"i"
	.byte	0xc
	.byte	0x5e
	.long	0x6891
	.uleb128 0x27
	.string	"u"
	.byte	0xc
	.byte	0x60
	.long	0x68a1
	.uleb128 0x27
	.string	"l"
	.byte	0xc
	.byte	0x62
	.long	0x68b1
	.uleb128 0x27
	.string	"ul"
	.byte	0xc
	.byte	0x64
	.long	0x68c1
	.uleb128 0x27
	.string	"hint"
	.byte	0xc
	.byte	0x66
	.long	0x68d1
	.uleb128 0x27
	.string	"uhint"
	.byte	0xc
	.byte	0x68
	.long	0x68e1
	.uleb128 0x27
	.string	"generic"
	.byte	0xc
	.byte	0x6a
	.long	0x68f1
	.uleb128 0x27
	.string	"cptr"
	.byte	0xc
	.byte	0x6c
	.long	0x6901
	.uleb128 0x27
	.string	"rtx"
	.byte	0xc
	.byte	0x6e
	.long	0x6911
	.uleb128 0x27
	.string	"rtvec"
	.byte	0xc
	.byte	0x70
	.long	0x6921
	.uleb128 0x27
	.string	"tree"
	.byte	0xc
	.byte	0x72
	.long	0x6931
	.uleb128 0x27
	.string	"bitmap"
	.byte	0xc
	.byte	0x74
	.long	0x6941
	.uleb128 0x27
	.string	"reg"
	.byte	0xc
	.byte	0x76
	.long	0x6951
	.uleb128 0x27
	.string	"const_equiv"
	.byte	0xc
	.byte	0x78
	.long	0x6976
	.uleb128 0x27
	.string	"bb"
	.byte	0xc
	.byte	0x7a
	.long	0x6986
	.uleb128 0x27
	.string	"te"
	.byte	0xc
	.byte	0x7c
	.long	0x6996
	.byte	0x0
	.uleb128 0xf
	.long	0x6871
	.long	0x400
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6881
	.long	0x44b
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6891
	.long	0x411
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x68a1
	.long	0x2e3
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x68b1
	.long	0x3bc
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x68c1
	.long	0x4a2
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x68d1
	.long	0x427
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x68e1
	.long	0x458
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x68f1
	.long	0x469
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6901
	.long	0x4bf
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6911
	.long	0x4c1
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6921
	.long	0xa8
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6931
	.long	0x1ab
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6941
	.long	0x1f2
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6951
	.long	0x5c2a
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6961
	.long	0x6970
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6961
	.uleb128 0xf
	.long	0x6986
	.long	0x6594
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6996
	.long	0x5c42
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x69a6
	.long	0x69b1
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x69a6
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xc
	.byte	0x7e
	.long	0x6765
	.uleb128 0x4
	.long	0x6a3d
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xc
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0xc
	.byte	0x82
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0xc
	.byte	0x83
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF2
	.byte	0xc
	.byte	0x85
	.long	0x65ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF24
	.byte	0xc
	.byte	0x86
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0xc
	.byte	0x87
	.long	0x69b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xc
	.byte	0x8a
	.long	0x6a50
	.uleb128 0x3
	.byte	0x4
	.long	0x69ca
	.uleb128 0xc
	.long	0x6ae1
	.string	"stmt_tree_s"
	.byte	0x10
	.byte	0xb
	.value	0x101
	.uleb128 0xd
	.string	"x_last_stmt"
	.byte	0xb
	.value	0x103
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"x_last_expr_type"
	.byte	0xb
	.value	0x106
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"x_last_expr_filename"
	.byte	0xb
	.value	0x108
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"stmts_are_full_exprs_p"
	.byte	0xb
	.value	0x117
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x6b2c
	.string	"c_language_function"
	.byte	0x14
	.byte	0xb
	.value	0x11f
	.uleb128 0x1e
	.long	.LASF38
	.byte	0xb
	.value	0x122
	.long	0x6a56
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"x_scope_stmt_stack"
	.byte	0xb
	.value	0x124
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x6b60
	.string	"c_lang_decl"
	.byte	0x4
	.byte	0xb
	.value	0x169
	.uleb128 0x1f
	.string	"declared_inline"
	.byte	0xb
	.value	0x16a
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LASF39
	.byte	0xa
	.byte	0xe4
	.long	0x6b6b
	.uleb128 0x29
	.long	.LASF39
	.byte	0x1
	.uleb128 0x26
	.long	.LASF40
	.byte	0xa
	.byte	0xe8
	.long	0x6b7c
	.uleb128 0x13
	.long	0x6c13
	.long	.LASF40
	.byte	0x14
	.byte	0xa
	.byte	0xe8
	.uleb128 0x6
	.string	"previous"
	.byte	0xa
	.byte	0xf3
	.long	0x6c5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF16
	.byte	0xa
	.byte	0xf5
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF2
	.byte	0xa
	.byte	0xf7
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF41
	.byte	0xa
	.byte	0xfb
	.long	0x6c13
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"has_level"
	.byte	0xa
	.byte	0xfc
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"value_is_inherited"
	.byte	0xa
	.byte	0xfd
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"is_local"
	.byte	0xa
	.byte	0xfe
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x7
	.long	0x6c43
	.string	"tree_binding_u"
	.byte	0x4
	.byte	0xa
	.byte	0xf8
	.uleb128 0x2a
	.long	.LASF41
	.byte	0xa
	.byte	0xf9
	.long	0x1e6
	.uleb128 0x27
	.string	"level"
	.byte	0xa
	.byte	0xfa
	.long	0x6c56
	.byte	0x0
	.uleb128 0x1a
	.string	"cp_binding_level"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6c43
	.uleb128 0x3
	.byte	0x4
	.long	0x6b71
	.uleb128 0x11
	.string	"binding_table"
	.byte	0xa
	.value	0x103
	.long	0x6c78
	.uleb128 0x3
	.byte	0x4
	.long	0x6c7e
	.uleb128 0x1a
	.string	"binding_table_s"
	.byte	0x1
	.uleb128 0xc
	.long	0x6efb
	.string	"saved_scope"
	.byte	0x6c
	.byte	0xa
	.value	0x316
	.uleb128 0xd
	.string	"old_bindings"
	.byte	0xa
	.value	0x317
	.long	0x6efb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"old_namespace"
	.byte	0xa
	.value	0x318
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"decl_ns_list"
	.byte	0xa
	.value	0x319
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"class_name"
	.byte	0xa
	.value	0x31a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1e
	.long	.LASF42
	.byte	0xa
	.value	0x31b
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"access_specifier"
	.byte	0xa
	.value	0x31c
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"function_decl"
	.byte	0xa
	.value	0x31d
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"lang_base"
	.byte	0xa
	.value	0x31e
	.long	0x6a3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"lang_name"
	.byte	0xa
	.value	0x31f
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"template_parms"
	.byte	0xa
	.value	0x320
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"x_previous_class_type"
	.byte	0xa
	.value	0x321
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"x_previous_class_values"
	.byte	0xa
	.value	0x322
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"x_saved_tree"
	.byte	0xa
	.value	0x323
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"lookups"
	.byte	0xa
	.value	0x324
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"last_parms"
	.byte	0xa
	.value	0x325
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"x_processing_template_decl"
	.byte	0xa
	.value	0x327
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"x_processing_specialization"
	.byte	0xa
	.value	0x328
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"x_processing_explicit_instantiation"
	.byte	0xa
	.value	0x329
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"need_pop_function_context"
	.byte	0xa
	.value	0x32a
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1e
	.long	.LASF38
	.byte	0xa
	.value	0x32c
	.long	0x6a56
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"class_bindings"
	.byte	0xa
	.value	0x32e
	.long	0x6c56
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1e
	.long	.LASF37
	.byte	0xa
	.value	0x32f
	.long	0x6c56
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"prev"
	.byte	0xa
	.value	0x331
	.long	0x6f01
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6b60
	.uleb128 0x3
	.byte	0x4
	.long	0x6c90
	.uleb128 0x1a
	.string	"named_label_use_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6f07
	.uleb128 0x1a
	.string	"named_label_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6f24
	.uleb128 0x1a
	.string	"unparsed_text"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6f3d
	.uleb128 0x2b
	.long	0x6f8d
	.string	"languages"
	.byte	0x4
	.byte	0xa
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
	.uleb128 0xc
	.long	0x70ac
	.string	"lang_type_header"
	.byte	0x4
	.byte	0xa
	.value	0x464
	.uleb128 0x1f
	.string	"is_lang_type_class"
	.byte	0xa
	.value	0x465
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x767f
	.string	"lang_type_class"
	.byte	0x4c
	.byte	0xa
	.value	0x47e
	.uleb128 0xd
	.string	"h"
	.byte	0xa
	.value	0x47f
	.long	0x6f8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF23
	.byte	0xa
	.value	0x481
	.long	0x400
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_mutable"
	.byte	0xa
	.value	0x483
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.long	.LASF22
	.byte	0xa
	.value	0x487
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.long	.LASF43
	.byte	0xa
	.value	0x490
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.long	.LASF44
	.byte	0xa
	.value	0x491
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF45
	.byte	0xa
	.value	0x49a
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"is_partial_instantiation"
	.byte	0xa
	.value	0x4a5
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"vfields"
	.byte	0xa
	.value	0x4be
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"vcall_indices"
	.byte	0xa
	.value	0x4bf
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"vtables"
	.byte	0xa
	.value	0x4c0
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"typeinfo_var"
	.byte	0xa
	.value	0x4c1
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"vbases"
	.byte	0xa
	.value	0x4c2
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"nested_udts"
	.byte	0xa
	.value	0x4c3
	.long	0x6c62
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"as_base"
	.byte	0xa
	.value	0x4c4
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"pure_virtuals"
	.byte	0xa
	.value	0x4c5
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"friend_classes"
	.byte	0xa
	.value	0x4c6
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"methods"
	.byte	0xa
	.value	0x4c7
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"key_method"
	.byte	0xa
	.value	0x4c8
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"decl_list"
	.byte	0xa
	.value	0x4c9
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1e
	.long	.LASF46
	.byte	0xa
	.value	0x4ca
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x1e
	.long	.LASF47
	.byte	0xa
	.value	0x4cb
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"copy_constructor"
	.byte	0xa
	.value	0x4cf
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0xc
	.long	0x76b9
	.string	"lang_type_ptrmem"
	.byte	0x8
	.byte	0xa
	.value	0x4d4
	.uleb128 0xd
	.string	"h"
	.byte	0xa
	.value	0x4d5
	.long	0x6f8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"record"
	.byte	0xa
	.value	0x4d6
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x21
	.long	0x76f2
	.string	"lang_type_u"
	.byte	0x4c
	.byte	0xa
	.value	0x4dc
	.uleb128 0x9
	.string	"h"
	.byte	0xa
	.value	0x4dd
	.long	0x6f8d
	.uleb128 0x9
	.string	"c"
	.byte	0xa
	.value	0x4de
	.long	0x70ac
	.uleb128 0x9
	.string	"ptrmem"
	.byte	0xa
	.value	0x4df
	.long	0x767f
	.byte	0x0
	.uleb128 0x21
	.long	0x7722
	.string	"lang_decl_u"
	.byte	0x4
	.byte	0xa
	.value	0x722
	.uleb128 0x8
	.long	.LASF46
	.byte	0xa
	.value	0x725
	.long	0x1e6
	.uleb128 0x9
	.string	"level"
	.byte	0xa
	.value	0x728
	.long	0x6c56
	.byte	0x0
	.uleb128 0x21
	.long	0x7773
	.string	"lang_decl_u2"
	.byte	0x4
	.byte	0xa
	.value	0x72b
	.uleb128 0x9
	.string	"access"
	.byte	0xa
	.value	0x72d
	.long	0x1e6
	.uleb128 0x9
	.string	"discriminator"
	.byte	0xa
	.value	0x730
	.long	0x2e3
	.uleb128 0x9
	.string	"vcall_offset"
	.byte	0xa
	.value	0x734
	.long	0x1e6
	.byte	0x0
	.uleb128 0xc
	.long	0x7a4f
	.string	"lang_decl_flags"
	.byte	0x10
	.byte	0xa
	.value	0x703
	.uleb128 0xd
	.string	"base"
	.byte	0xa
	.value	0x704
	.long	0x6b2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.long	.LASF30
	.byte	0xa
	.value	0x706
	.long	0x6f53
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.long	.LASF45
	.byte	0xa
	.value	0x712
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x76f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"u2"
	.byte	0xa
	.value	0x735
	.long	0x7722
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x21
	.long	0x7ab8
	.string	"lang_decl_u3"
	.byte	0x4
	.byte	0xa
	.value	0x75c
	.uleb128 0x9
	.string	"sorted_fields"
	.byte	0xa
	.value	0x75d
	.long	0x1e6
	.uleb128 0x9
	.string	"pending_inline_info"
	.byte	0xa
	.value	0x75e
	.long	0x6f4d
	.uleb128 0x9
	.string	"saved_language_function"
	.byte	0xa
	.value	0x760
	.long	0x6327
	.byte	0x0
	.uleb128 0xc
	.long	0x7b93
	.string	"full_lang_decl"
	.byte	0x24
	.byte	0xa
	.value	0x73f
	.uleb128 0x1e
	.long	.LASF47
	.byte	0xa
	.value	0x740
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF25
	.byte	0xa
	.value	0x745
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"cloned_function"
	.byte	0xa
	.value	0x748
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"delta"
	.byte	0xa
	.value	0x74c
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"named_return_object"
	.byte	0xa
	.value	0x751
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"operator_code"
	.byte	0xa
	.value	0x756
	.long	0xac4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1f
	.string	"u3sel"
	.byte	0xa
	.value	0x758
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x7a4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x21
	.long	0x7bb4
	.string	"lang_decl_u4"
	.byte	0x24
	.byte	0xa
	.value	0x73d
	.uleb128 0x9
	.string	"f"
	.byte	0xa
	.value	0x762
	.long	0x7ab8
	.byte	0x0
	.uleb128 0x2b
	.long	0x7bf5
	.string	"tag_types"
	.byte	0x4
	.byte	0xa
	.value	0xc18
	.uleb128 0x19
	.string	"record_type"
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF42
	.sleb128 1
	.uleb128 0x19
	.string	"union_type"
	.sleb128 2
	.uleb128 0x19
	.string	"enum_type"
	.sleb128 3
	.byte	0x0
	.uleb128 0x2b
	.long	0x7c41
	.string	"overload_flags"
	.byte	0x4
	.byte	0xa
	.value	0xd5a
	.uleb128 0x19
	.string	"NO_SPECIAL"
	.sleb128 0
	.uleb128 0x19
	.string	"DTOR_FLAG"
	.sleb128 1
	.uleb128 0x19
	.string	"OP_FLAG"
	.sleb128 2
	.uleb128 0x19
	.string	"TYPENAME_FLAG"
	.sleb128 3
	.byte	0x0
	.uleb128 0x4
	.long	0x7c93
	.string	"ggc_root_tab"
	.byte	0x10
	.byte	0x17
	.byte	0x32
	.uleb128 0x6
	.string	"base"
	.byte	0x17
	.byte	0x33
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"nelt"
	.byte	0x17
	.byte	0x34
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"stride"
	.byte	0x17
	.byte	0x35
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"cb"
	.byte	0x17
	.byte	0x36
	.long	0x75f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xb
	.string	"float"
	.byte	0x4
	.byte	0x4
	.uleb128 0x4
	.long	0x7ce4
	.string	"asm_int_op"
	.byte	0x10
	.byte	0x15
	.byte	0x3a
	.uleb128 0x6
	.string	"hi"
	.byte	0x15
	.byte	0x3b
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"si"
	.byte	0x15
	.byte	0x3c
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"di"
	.byte	0x15
	.byte	0x3d
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"ti"
	.byte	0x15
	.byte	0x3e
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x7f1a
	.string	"asm_out"
	.byte	0x70
	.byte	0x15
	.byte	0x33
	.uleb128 0x6
	.string	"open_paren"
	.byte	0x15
	.byte	0x35
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"close_paren"
	.byte	0x15
	.byte	0x35
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"byte_op"
	.byte	0x15
	.byte	0x38
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"aligned_op"
	.byte	0x15
	.byte	0x3f
	.long	0x7c9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"unaligned_op"
	.byte	0x15
	.byte	0x3f
	.long	0x7c9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"integer"
	.byte	0x15
	.byte	0x46
	.long	0x7f34
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"globalize_label"
	.byte	0x15
	.byte	0x49
	.long	0x7f51
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"visibility"
	.byte	0x15
	.byte	0x4d
	.long	0x7f68
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"function_prologue"
	.byte	0x15
	.byte	0x50
	.long	0x7f7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"function_end_prologue"
	.byte	0x15
	.byte	0x53
	.long	0x7f91
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"function_begin_epilogue"
	.byte	0x15
	.byte	0x56
	.long	0x7f91
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"function_epilogue"
	.byte	0x15
	.byte	0x59
	.long	0x7f7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"named_section"
	.byte	0x15
	.byte	0x5d
	.long	0x7fa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"exception_section"
	.byte	0x15
	.byte	0x60
	.long	0x831
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"eh_frame_section"
	.byte	0x15
	.byte	0x63
	.long	0x831
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.string	"select_section"
	.byte	0x15
	.byte	0x6a
	.long	0x7fc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"select_rtx_section"
	.byte	0x15
	.byte	0x6e
	.long	0x7fe0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.string	"unique_section"
	.byte	0x15
	.byte	0x73
	.long	0x7f68
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.string	"constructor"
	.byte	0x15
	.byte	0x76
	.long	0x7ff7
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.string	"destructor"
	.byte	0x15
	.byte	0x79
	.long	0x7ff7
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x6
	.string	"output_mi_thunk"
	.byte	0x15
	.byte	0x80
	.long	0x801d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x6
	.string	"can_output_mi_thunk"
	.byte	0x15
	.byte	0x8b
	.long	0x8042
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x24
	.long	0x7f34
	.byte	0x1
	.long	0x51bf
	.uleb128 0x15
	.long	0x9d
	.uleb128 0x15
	.long	0x3bc
	.uleb128 0x15
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f1a
	.uleb128 0x14
	.long	0x7f4b
	.byte	0x1
	.uleb128 0x15
	.long	0x7f4b
	.uleb128 0x15
	.long	0x2d0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c7
	.uleb128 0x3
	.byte	0x4
	.long	0x7f3a
	.uleb128 0x14
	.long	0x7f68
	.byte	0x1
	.uleb128 0x15
	.long	0x1e6
	.uleb128 0x15
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f57
	.uleb128 0x14
	.long	0x7f7f
	.byte	0x1
	.uleb128 0x15
	.long	0x7f4b
	.uleb128 0x15
	.long	0x458
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f6e
	.uleb128 0x14
	.long	0x7f91
	.byte	0x1
	.uleb128 0x15
	.long	0x7f4b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f85
	.uleb128 0x14
	.long	0x7fa8
	.byte	0x1
	.uleb128 0x15
	.long	0x2d0
	.uleb128 0x15
	.long	0x3bc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f97
	.uleb128 0x14
	.long	0x7fc4
	.byte	0x1
	.uleb128 0x15
	.long	0x1e6
	.uleb128 0x15
	.long	0x2e3
	.uleb128 0x15
	.long	0x469
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7fae
	.uleb128 0x14
	.long	0x7fe0
	.byte	0x1
	.uleb128 0x15
	.long	0x837
	.uleb128 0x15
	.long	0x9d
	.uleb128 0x15
	.long	0x469
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7fca
	.uleb128 0x14
	.long	0x7ff7
	.byte	0x1
	.uleb128 0x15
	.long	0x9d
	.uleb128 0x15
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7fe6
	.uleb128 0x14
	.long	0x801d
	.byte	0x1
	.uleb128 0x15
	.long	0x7f4b
	.uleb128 0x15
	.long	0x1e6
	.uleb128 0x15
	.long	0x458
	.uleb128 0x15
	.long	0x458
	.uleb128 0x15
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ffd
	.uleb128 0x24
	.long	0x8042
	.byte	0x1
	.long	0x51bf
	.uleb128 0x15
	.long	0x1e6
	.uleb128 0x15
	.long	0x458
	.uleb128 0x15
	.long	0x458
	.uleb128 0x15
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8023
	.uleb128 0x4
	.long	0x8203
	.string	"sched"
	.byte	0x40
	.byte	0x15
	.byte	0x93
	.uleb128 0x6
	.string	"adjust_cost"
	.byte	0x15
	.byte	0x97
	.long	0x8222
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"adjust_priority"
	.byte	0x15
	.byte	0x9b
	.long	0x823d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"issue_rate"
	.byte	0x15
	.byte	0xa0
	.long	0x8249
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"variable_issue"
	.byte	0x15
	.byte	0xa4
	.long	0x826e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"md_init"
	.byte	0x15
	.byte	0xa7
	.long	0x828a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"md_finish"
	.byte	0x15
	.byte	0xaa
	.long	0x82a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"reorder"
	.byte	0x15
	.byte	0xae
	.long	0x82cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"reorder2"
	.byte	0x15
	.byte	0xaf
	.long	0x82cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"use_dfa_pipeline_interface"
	.byte	0x15
	.byte	0xb4
	.long	0x8249
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"init_dfa_pre_cycle_insn"
	.byte	0x15
	.byte	0xc2
	.long	0x831
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"dfa_pre_cycle_insn"
	.byte	0x15
	.byte	0xc3
	.long	0x82d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"init_dfa_post_cycle_insn"
	.byte	0x15
	.byte	0xc4
	.long	0x831
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"dfa_post_cycle_insn"
	.byte	0x15
	.byte	0xc5
	.long	0x82d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x15
	.byte	0xcd
	.long	0x8249
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"init_dfa_bubbles"
	.byte	0x15
	.byte	0xd8
	.long	0x831
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"dfa_bubble"
	.byte	0x15
	.byte	0xd9
	.long	0x82ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x24
	.long	0x8222
	.byte	0x1
	.long	0x2e3
	.uleb128 0x15
	.long	0x9d
	.uleb128 0x15
	.long	0x9d
	.uleb128 0x15
	.long	0x9d
	.uleb128 0x15
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8203
	.uleb128 0x24
	.long	0x823d
	.byte	0x1
	.long	0x2e3
	.uleb128 0x15
	.long	0x9d
	.uleb128 0x15
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8228
	.uleb128 0x2d
	.byte	0x1
	.long	0x2e3
	.uleb128 0x3
	.byte	0x4
	.long	0x8243
	.uleb128 0x24
	.long	0x826e
	.byte	0x1
	.long	0x2e3
	.uleb128 0x15
	.long	0x7f4b
	.uleb128 0x15
	.long	0x2e3
	.uleb128 0x15
	.long	0x9d
	.uleb128 0x15
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x824f
	.uleb128 0x14
	.long	0x828a
	.byte	0x1
	.uleb128 0x15
	.long	0x7f4b
	.uleb128 0x15
	.long	0x2e3
	.uleb128 0x15
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8274
	.uleb128 0x14
	.long	0x82a1
	.byte	0x1
	.uleb128 0x15
	.long	0x7f4b
	.uleb128 0x15
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8290
	.uleb128 0x24
	.long	0x82cb
	.byte	0x1
	.long	0x2e3
	.uleb128 0x15
	.long	0x7f4b
	.uleb128 0x15
	.long	0x2e3
	.uleb128 0x15
	.long	0x5c7d
	.uleb128 0x15
	.long	0x829
	.uleb128 0x15
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x82a7
	.uleb128 0x2d
	.byte	0x1
	.long	0x9d
	.uleb128 0x3
	.byte	0x4
	.long	0x82d1
	.uleb128 0x24
	.long	0x82ed
	.byte	0x1
	.long	0x9d
	.uleb128 0x15
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x82dd
	.uleb128 0x4
	.long	0x85dc
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x15
	.byte	0x30
	.uleb128 0x6
	.string	"asm_out"
	.byte	0x15
	.byte	0x8f
	.long	0x7ce4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sched"
	.byte	0x15
	.byte	0xda
	.long	0x8048
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x6
	.string	"merge_decl_attributes"
	.byte	0x15
	.byte	0xdd
	.long	0x85f1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x6
	.string	"merge_type_attributes"
	.byte	0x15
	.byte	0xe0
	.long	0x85f1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x6
	.string	"attribute_table"
	.byte	0x15
	.byte	0xe4
	.long	0x85f7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x6
	.string	"comp_type_attributes"
	.byte	0x15
	.byte	0xe9
	.long	0x8617
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x6
	.string	"set_default_type_attributes"
	.byte	0x15
	.byte	0xec
	.long	0x8629
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x6
	.string	"insert_attributes"
	.byte	0x15
	.byte	0xef
	.long	0x8640
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x6
	.string	"function_attribute_inlinable_p"
	.byte	0x15
	.byte	0xf3
	.long	0x8656
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x6
	.string	"ms_bitfield_layout_p"
	.byte	0x15
	.byte	0xf7
	.long	0x8656
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x6
	.string	"init_builtins"
	.byte	0x15
	.byte	0xfa
	.long	0x831
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x6
	.string	"expand_builtin"
	.byte	0x15
	.byte	0xfd
	.long	0x8680
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"section_type_flags"
	.byte	0x15
	.value	0x103
	.long	0x86a0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"cannot_modify_jumps_p"
	.byte	0x15
	.value	0x107
	.long	0x86ac
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"cannot_force_const_mem"
	.byte	0x15
	.value	0x10a
	.long	0x86c2
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"in_small_data_p"
	.byte	0x15
	.value	0x10d
	.long	0x8656
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"binds_local_p"
	.byte	0x15
	.value	0x111
	.long	0x8656
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"encode_section_info"
	.byte	0x15
	.value	0x115
	.long	0x7f68
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"strip_name_encoding"
	.byte	0x15
	.value	0x118
	.long	0x86d8
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"have_named_sections"
	.byte	0x15
	.value	0x11d
	.long	0x51bf
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"have_ctors_dtors"
	.byte	0x15
	.value	0x121
	.long	0x51bf
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xd
	.string	"have_tls"
	.byte	0x15
	.value	0x124
	.long	0x51bf
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xd
	.string	"have_srodata_section"
	.byte	0x15
	.value	0x127
	.long	0x51bf
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xd
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x15
	.value	0x12a
	.long	0x51bf
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x24
	.long	0x85f1
	.byte	0x1
	.long	0x1e6
	.uleb128 0x15
	.long	0x1e6
	.uleb128 0x15
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x85dc
	.uleb128 0x3
	.byte	0x4
	.long	0x85fd
	.uleb128 0xa
	.long	0x50fa
	.uleb128 0x24
	.long	0x8617
	.byte	0x1
	.long	0x2e3
	.uleb128 0x15
	.long	0x1e6
	.uleb128 0x15
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8602
	.uleb128 0x14
	.long	0x8629
	.byte	0x1
	.uleb128 0x15
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x861d
	.uleb128 0x14
	.long	0x8640
	.byte	0x1
	.uleb128 0x15
	.long	0x1e6
	.uleb128 0x15
	.long	0x51ec
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x862f
	.uleb128 0x24
	.long	0x8656
	.byte	0x1
	.long	0x51bf
	.uleb128 0x15
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8646
	.uleb128 0x24
	.long	0x8680
	.byte	0x1
	.long	0x9d
	.uleb128 0x15
	.long	0x1e6
	.uleb128 0x15
	.long	0x9d
	.uleb128 0x15
	.long	0x9d
	.uleb128 0x15
	.long	0x837
	.uleb128 0x15
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x865c
	.uleb128 0x24
	.long	0x86a0
	.byte	0x1
	.long	0x3bc
	.uleb128 0x15
	.long	0x1e6
	.uleb128 0x15
	.long	0x2d0
	.uleb128 0x15
	.long	0x2e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8686
	.uleb128 0x2d
	.byte	0x1
	.long	0x51bf
	.uleb128 0x3
	.byte	0x4
	.long	0x86a6
	.uleb128 0x24
	.long	0x86c2
	.byte	0x1
	.long	0x51bf
	.uleb128 0x15
	.long	0x9d
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x86b2
	.uleb128 0x24
	.long	0x86d8
	.byte	0x1
	.long	0x2d0
	.uleb128 0x15
	.long	0x2d0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x86c8
	.uleb128 0x4
	.long	0x872c
	.string	"priority_info_s"
	.byte	0x8
	.byte	0x1
	.byte	0x41
	.uleb128 0x6
	.string	"initializations_p"
	.byte	0x1
	.byte	0x44
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"destructions_p"
	.byte	0x1
	.byte	0x47
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"priority_info"
	.byte	0x1
	.byte	0x48
	.long	0x8741
	.uleb128 0x3
	.byte	0x4
	.long	0x86de
	.uleb128 0x2e
	.long	0x880f
	.byte	0x1
	.string	"grok_method_quals"
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.long	0x2e3
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2f
	.long	.LASF48
	.byte	0x1
	.byte	0x95
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.byte	0x95
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"quals"
	.byte	0x1
	.byte	0x95
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"fntype"
	.byte	0x1
	.byte	0x97
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"raises"
	.byte	0x1
	.byte	0x98
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"type_quals"
	.byte	0x1
	.byte	0x99
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"dup_quals"
	.byte	0x1
	.byte	0x9a
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF49
	.byte	0x1
	.byte	0x9b
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x31
	.string	"tq"
	.byte	0x1
	.byte	0x9f
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x889f
	.byte	0x1
	.string	"warn_if_unknown_interface"
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.byte	0xc2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	0x8882
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x31
	.string	"til"
	.byte	0x1
	.byte	0xca
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"sl"
	.byte	0x1
	.byte	0xcb
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"sf"
	.byte	0x1
	.byte	0xcc
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.string	"already_warned"
	.byte	0x1
	.byte	0xc4
	.long	0x2e3
	.byte	0x5
	.byte	0x3
	.long	already_warned.16362
	.byte	0x0
	.uleb128 0x34
	.long	0x88e3
	.byte	0x1
	.string	"grok_x_components"
	.byte	0x1
	.byte	0xe2
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x30
	.string	"specs"
	.byte	0x1
	.byte	0xe1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.byte	0xe3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x893b
	.byte	0x1
	.string	"cp_build_parm_decl"
	.byte	0x1
	.byte	0xfa
	.byte	0x1
	.long	0x1e6
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.byte	0xf8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF2
	.byte	0x1
	.byte	0xf9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"parm"
	.byte	0x1
	.byte	0xfb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0x899a
	.byte	0x1
	.string	"build_artificial_parm"
	.byte	0x1
	.value	0x107
	.byte	0x1
	.long	0x1e6
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x37
	.long	.LASF24
	.byte	0x1
	.value	0x105
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0x106
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"parm"
	.byte	0x1
	.value	0x108
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x8a2c
	.byte	0x1
	.string	"maybe_retrofit_in_chrg"
	.byte	0x1
	.value	0x120
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x3a
	.string	"fn"
	.byte	0x1
	.value	0x11f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"basetype"
	.byte	0x1
	.value	0x121
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.long	.LASF50
	.byte	0x1
	.value	0x121
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"parms"
	.byte	0x1
	.value	0x121
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"parm"
	.byte	0x1
	.value	0x121
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"fntype"
	.byte	0x1
	.value	0x121
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x8aed
	.byte	0x1
	.string	"grokclassfn"
	.byte	0x1
	.value	0x176
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x37
	.long	.LASF48
	.byte	0x1
	.value	0x173
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF27
	.byte	0x1
	.value	0x173
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF51
	.byte	0x1
	.value	0x174
	.long	0x7bf5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.string	"quals"
	.byte	0x1
	.value	0x175
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.string	"fn_name"
	.byte	0x1
	.value	0x177
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.long	.LASF49
	.byte	0x1
	.value	0x178
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x3b
	.long	.LASF2
	.byte	0x1
	.value	0x18d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"qual_type"
	.byte	0x1
	.value	0x18e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"parm"
	.byte	0x1
	.value	0x18f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x8b8a
	.byte	0x1
	.string	"grok_array_decl"
	.byte	0x1
	.value	0x1b1
	.byte	0x1
	.long	0x1e6
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x3a
	.string	"array_expr"
	.byte	0x1
	.value	0x1b0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"index_exp"
	.byte	0x1
	.value	0x1b0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF2
	.byte	0x1
	.value	0x1b2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"p1"
	.byte	0x1
	.value	0x1b3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"p2"
	.byte	0x1
	.value	0x1b3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"i1"
	.byte	0x1
	.value	0x1b3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"i2"
	.byte	0x1
	.value	0x1b3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0x8c34
	.byte	0x1
	.string	"delete_sanity"
	.byte	0x1
	.value	0x1fd
	.byte	0x1
	.long	0x1e6
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x3a
	.string	"exp"
	.byte	0x1
	.value	0x1fb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"size"
	.byte	0x1
	.value	0x1fb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"doing_vec"
	.byte	0x1
	.value	0x1fc
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.string	"use_global_delete"
	.byte	0x1
	.value	0x1fc
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x1fe
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LASF2
	.byte	0x1
	.value	0x1fe
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"maxindex"
	.byte	0x1
	.value	0x201
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x8c90
	.byte	0x1
	.string	"check_member_template"
	.byte	0x1
	.value	0x24b
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x3a
	.string	"tmpl"
	.byte	0x1
	.value	0x24a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	.LASF1
	.byte	0x1
	.value	0x24c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb80d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16697
	.byte	0x0
	.uleb128 0x3d
	.long	0x8cf4
	.string	"acceptable_java_type"
	.byte	0x1
	.value	0x274
	.byte	0x1
	.long	0x2e3
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0x273
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x3b
	.long	.LASF53
	.byte	0x1
	.value	0x27c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x27c
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x8d7f
	.byte	0x1
	.string	"check_java_method"
	.byte	0x1
	.value	0x298
	.byte	0x1
	.long	0x2e3
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x3a
	.string	"method"
	.byte	0x1
	.value	0x297
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"jerr"
	.byte	0x1
	.value	0x299
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3b
	.long	.LASF50
	.byte	0x1
	.value	0x29a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"ret_type"
	.byte	0x1
	.value	0x29b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x3b
	.long	.LASF2
	.byte	0x1
	.value	0x2a4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x8e7b
	.byte	0x1
	.string	"check_classfn"
	.byte	0x1
	.value	0x2b6
	.byte	0x1
	.long	0x1e6
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x37
	.long	.LASF48
	.byte	0x1
	.value	0x2b5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF27
	.byte	0x1
	.value	0x2b5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"ix"
	.byte	0x1
	.value	0x2b7
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"is_template"
	.byte	0x1
	.value	0x2b8
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x38
	.string	"methods"
	.byte	0x1
	.value	0x2d5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.string	"fndecls"
	.byte	0x1
	.value	0x2d6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"fndecl"
	.byte	0x1
	.value	0x2d6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"is_conv_op"
	.byte	0x1
	.value	0x2d7
	.long	0x51bf
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x38
	.string	"format"
	.byte	0x1
	.value	0x2d8
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x38
	.string	"p1"
	.byte	0x1
	.value	0x2dd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"p2"
	.byte	0x1
	.value	0x2dd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x8f19
	.byte	0x1
	.string	"finish_static_data_member_decl"
	.byte	0x1
	.value	0x33b
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x337
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"init"
	.byte	0x1
	.value	0x338
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF54
	.byte	0x1
	.value	0x339
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF51
	.byte	0x1
	.value	0x33a
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3e
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb808
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16982
	.uleb128 0x3b
	.long	.LASF55
	.byte	0x1
	.value	0x355
	.long	0x2e3
	.byte	0x5
	.byte	0x3
	.long	explained.16983
	.byte	0x0
	.uleb128 0x36
	.long	0x8feb
	.byte	0x1
	.string	"grokfield"
	.byte	0x1
	.value	0x37e
	.byte	0x1
	.long	0x1e6
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x37
	.long	.LASF56
	.byte	0x1
	.value	0x37d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF57
	.byte	0x1
	.value	0x37d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"init"
	.byte	0x1
	.value	0x37d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF54
	.byte	0x1
	.value	0x37d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3a
	.string	"attrlist"
	.byte	0x1
	.value	0x37d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3b
	.long	.LASF16
	.byte	0x1
	.value	0x37f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"asmspec"
	.byte	0x1
	.value	0x380
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3b
	.long	.LASF51
	.byte	0x1
	.value	0x381
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3e
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb7f3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17060
	.uleb128 0x3b
	.long	.LASF55
	.byte	0x1
	.value	0x393
	.long	0x2e3
	.byte	0x5
	.byte	0x3
	.long	explained.17059
	.byte	0x0
	.uleb128 0x36
	.long	0x9051
	.byte	0x1
	.string	"grokbitfield"
	.byte	0x1
	.value	0x449
	.byte	0x1
	.long	0x1e6
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x37
	.long	.LASF56
	.byte	0x1
	.value	0x448
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF57
	.byte	0x1
	.value	0x448
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"width"
	.byte	0x1
	.value	0x448
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3b
	.long	.LASF16
	.byte	0x1
	.value	0x44a
	.long	0x1e6
	.byte	0x2
	.byte	0x75
	.sleb128 -8
	.byte	0x0
	.uleb128 0x36
	.long	0x90ce
	.byte	0x1
	.string	"grokoptypename"
	.byte	0x1
	.value	0x484
	.byte	0x1
	.long	0x1e6
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x37
	.long	.LASF57
	.byte	0x1
	.value	0x482
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF56
	.byte	0x1
	.value	0x482
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF41
	.byte	0x1
	.value	0x483
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x485
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x3b
	.long	.LASF53
	.byte	0x1
	.value	0x48d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.long	0x9125
	.string	"grok_function_init"
	.byte	0x1
	.value	0x4be
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x4bc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"init"
	.byte	0x1
	.value	0x4bd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF2
	.byte	0x1
	.value	0x4c1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x917f
	.byte	0x1
	.string	"cplus_decl_attributes"
	.byte	0x1
	.value	0x4cf
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x4cd
	.long	0x51ec
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF20
	.byte	0x1
	.value	0x4cd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF51
	.byte	0x1
	.value	0x4ce
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x36
	.long	0x91d1
	.byte	0x1
	.string	"constructor_name_full"
	.byte	0x1
	.value	0x4e5
	.byte	0x1
	.long	0x1e6
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x3a
	.string	"thing"
	.byte	0x1
	.value	0x4e4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb7ee
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17453
	.byte	0x0
	.uleb128 0x36
	.long	0x921b
	.byte	0x1
	.string	"constructor_name"
	.byte	0x1
	.value	0x502
	.byte	0x1
	.long	0x1e6
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x3a
	.string	"thing"
	.byte	0x1
	.value	0x501
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x503
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0x9267
	.byte	0x1
	.string	"constructor_name_p"
	.byte	0x1
	.value	0x50f
	.byte	0x1
	.long	0x51bf
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x37
	.long	.LASF24
	.byte	0x1
	.value	0x50e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0x50e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x39
	.long	0x9295
	.byte	0x1
	.string	"defer_fn"
	.byte	0x1
	.value	0x51a
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x3a
	.string	"fn"
	.byte	0x1
	.value	0x519
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x3d
	.long	0x9351
	.string	"build_anon_union_vars"
	.byte	0x1
	.value	0x532
	.byte	0x1
	.long	0x1e6
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x3a
	.string	"anon_decl"
	.byte	0x1
	.value	0x52e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"elems"
	.byte	0x1
	.value	0x52f
	.long	0x51ec
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF58
	.byte	0x1
	.value	0x530
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF59
	.byte	0x1
	.value	0x531
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3b
	.long	.LASF2
	.byte	0x1
	.value	0x533
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3b
	.long	.LASF60
	.byte	0x1
	.value	0x534
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"field"
	.byte	0x1
	.value	0x535
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x3b
	.long	.LASF1
	.byte	0x1
	.value	0x540
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x93e5
	.byte	0x1
	.string	"finish_anon_union"
	.byte	0x1
	.value	0x58b
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x3a
	.string	"anon_union_decl"
	.byte	0x1
	.value	0x58a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	.LASF2
	.byte	0x1
	.value	0x58c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.long	.LASF60
	.byte	0x1
	.value	0x58d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"public_p"
	.byte	0x1
	.value	0x58e
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LASF58
	.byte	0x1
	.value	0x58f
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.long	.LASF59
	.byte	0x1
	.value	0x590
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x9472
	.byte	0x1
	.string	"finish_builtin_type"
	.byte	0x1
	.value	0x5c7
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0x5c2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF24
	.byte	0x1
	.value	0x5c3
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"fields"
	.byte	0x1
	.value	0x5c4
	.long	0x51ec
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.string	"len"
	.byte	0x1
	.value	0x5c5
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3a
	.string	"align_type"
	.byte	0x1
	.value	0x5c6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x5c8
	.long	0x2e3
	.byte	0x2
	.byte	0x75
	.sleb128 -8
	.byte	0x0
	.uleb128 0x36
	.long	0x94d8
	.byte	0x1
	.string	"coerce_new_type"
	.byte	0x1
	.value	0x5e5
	.byte	0x1
	.long	0x1e6
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0x5e4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"e"
	.byte	0x1
	.value	0x5e6
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LASF53
	.byte	0x1
	.value	0x5e7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb7e9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17758
	.byte	0x0
	.uleb128 0x36
	.long	0x9541
	.byte	0x1
	.string	"coerce_delete_type"
	.byte	0x1
	.value	0x608
	.byte	0x1
	.long	0x1e6
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0x607
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"e"
	.byte	0x1
	.value	0x609
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LASF53
	.byte	0x1
	.value	0x60a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb7d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17800
	.byte	0x0
	.uleb128 0x3f
	.long	0x95b7
	.string	"mark_vtable_entries"
	.byte	0x1
	.value	0x62c
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x62b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"entries"
	.byte	0x1
	.value	0x62d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x38
	.string	"fnaddr"
	.byte	0x1
	.value	0x631
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"fn"
	.byte	0x1
	.value	0x632
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x95ec
	.byte	0x1
	.string	"comdat_linkage"
	.byte	0x1
	.value	0x64c
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x64b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x39
	.long	0x9626
	.byte	0x1
	.string	"maybe_make_one_only"
	.byte	0x1
	.value	0x682
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x681
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x39
	.long	0x969c
	.byte	0x1
	.string	"import_export_vtable"
	.byte	0x1
	.value	0x6a6
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x6a4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0x6a4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"final"
	.byte	0x1
	.value	0x6a5
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x38
	.string	"found"
	.byte	0x1
	.value	0x6bb
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.long	0x971e
	.string	"import_export_class"
	.byte	0x1
	.value	0x6d1
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x37
	.long	.LASF48
	.byte	0x1
	.value	0x6d0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"import_export"
	.byte	0x1
	.value	0x6d3
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	0x970d
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x38
	.string	"method"
	.byte	0x1
	.value	0x6f8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb7bf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17958
	.byte	0x0
	.uleb128 0x3f
	.long	0x97a7
	.string	"output_vtable_inherit"
	.byte	0x1
	.value	0x70f
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x3a
	.string	"vars"
	.byte	0x1
	.value	0x70e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"parent"
	.byte	0x1
	.value	0x710
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"child_rtx"
	.byte	0x1
	.value	0x711
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"parent_rtx"
	.byte	0x1
	.value	0x711
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb7ba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18023
	.byte	0x0
	.uleb128 0x3d
	.long	0x980b
	.string	"maybe_emit_vtables"
	.byte	0x1
	.value	0x729
	.byte	0x1
	.long	0x2e3
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x37
	.long	.LASF48
	.byte	0x1
	.value	0x728
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"vtbl"
	.byte	0x1
	.value	0x72a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"primary_vtbl"
	.byte	0x1
	.value	0x72b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x985d
	.byte	0x1
	.string	"import_export_decl"
	.byte	0x1
	.value	0x789
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x788
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x3b
	.long	.LASF48
	.byte	0x1
	.value	0x7a8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x98bf
	.byte	0x1
	.string	"import_export_tinfo"
	.byte	0x1
	.value	0x7ce
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x7cb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0x7cc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"is_in_library"
	.byte	0x1
	.value	0x7cd
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x36
	.long	0x9926
	.byte	0x1
	.string	"build_cleanup"
	.byte	0x1
	.value	0x7f5
	.byte	0x1
	.long	0x1e6
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x7f4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"temp"
	.byte	0x1
	.value	0x7f6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.long	.LASF2
	.byte	0x1
	.value	0x7f7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb7b5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18283
	.byte	0x0
	.uleb128 0x36
	.long	0x999a
	.byte	0x1
	.string	"get_guard"
	.byte	0x1
	.value	0x814
	.byte	0x1
	.long	0x1e6
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x813
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"sname"
	.byte	0x1
	.value	0x815
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LASF61
	.byte	0x1
	.value	0x816
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x38
	.string	"guard_type"
	.byte	0x1
	.value	0x81c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.long	0x99d2
	.string	"get_guard_bits"
	.byte	0x1
	.value	0x838
	.byte	0x1
	.long	0x1e6
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x37
	.long	.LASF61
	.byte	0x1
	.value	0x837
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x36
	.long	0x9a22
	.byte	0x1
	.string	"get_guard_cond"
	.byte	0x1
	.value	0x84c
	.byte	0x1
	.long	0x1e6
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x37
	.long	.LASF61
	.byte	0x1
	.value	0x84b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"guard_value"
	.byte	0x1
	.value	0x84d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0x9a6c
	.byte	0x1
	.string	"set_guard"
	.byte	0x1
	.value	0x85d
	.byte	0x1
	.long	0x1e6
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x37
	.long	.LASF61
	.byte	0x1
	.value	0x85c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"guard_init"
	.byte	0x1
	.value	0x85e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3d
	.long	0x9b01
	.string	"start_objects"
	.byte	0x1
	.value	0x86e
	.byte	0x1
	.long	0x1e6
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x37
	.long	.LASF62
	.byte	0x1
	.value	0x86d
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"initp"
	.byte	0x1
	.value	0x86d
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"fnname"
	.byte	0x1
	.value	0x86f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"body"
	.byte	0x1
	.value	0x870
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.long	.LASF2
	.byte	0x1
	.value	0x871
	.long	0x9b01
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x33
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x38
	.string	"joiner"
	.byte	0x1
	.value	0x877
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -27
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x9b11
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x9
	.byte	0x0
	.uleb128 0x3f
	.long	0x9b74
	.string	"finish_objects"
	.byte	0x1
	.value	0x8ac
	.byte	0x1
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x37
	.long	.LASF62
	.byte	0x1
	.value	0x8aa
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"initp"
	.byte	0x1
	.value	0x8aa
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"body"
	.byte	0x1
	.value	0x8ab
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"fn"
	.byte	0x1
	.value	0x8ad
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3d
	.long	0x9c26
	.string	"start_static_storage_duration_function"
	.byte	0x1
	.value	0x8f0
	.byte	0x1
	.long	0x1e6
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x38
	.string	"parm_types"
	.byte	0x1
	.value	0x8f3
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x3b
	.long	.LASF2
	.byte	0x1
	.value	0x8f4
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x38
	.string	"body"
	.byte	0x1
	.value	0x8f5
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x38
	.string	"id"
	.byte	0x1
	.value	0x8f6
	.long	0x9c26
	.byte	0x3
	.byte	0x91
	.sleb128 -93
	.uleb128 0x38
	.string	"ssdf_number"
	.byte	0x1
	.value	0x8f1
	.long	0x3bc
	.byte	0x5
	.byte	0x3
	.long	ssdf_number.18432
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb7a0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18437
	.byte	0x0
	.uleb128 0xf
	.long	0x9c36
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x48
	.byte	0x0
	.uleb128 0x3f
	.long	0x9c84
	.string	"finish_static_storage_duration_function"
	.byte	0x1
	.value	0x954
	.byte	0x1
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x3a
	.string	"body"
	.byte	0x1
	.value	0x953
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x3d
	.long	0x9cda
	.string	"get_priority_info"
	.byte	0x1
	.value	0x961
	.byte	0x1
	.long	0x872c
	.long	.LFB61
	.long	.LFE61
	.long	.LLST46
	.uleb128 0x37
	.long	.LASF63
	.byte	0x1
	.value	0x960
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"pi"
	.byte	0x1
	.value	0x962
	.long	0x872c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"n"
	.byte	0x1
	.value	0x963
	.long	0x635b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3d
	.long	0x9dd3
	.string	"start_static_initialization_or_destruction"
	.byte	0x1
	.value	0x980
	.byte	0x1
	.long	0x1e6
	.long	.LFB62
	.long	.LFE62
	.long	.LLST47
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x97e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"initp"
	.byte	0x1
	.value	0x97f
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF64
	.byte	0x1
	.value	0x981
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3b
	.long	.LASF63
	.byte	0x1
	.value	0x982
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"cond"
	.byte	0x1
	.value	0x983
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3b
	.long	.LASF61
	.byte	0x1
	.value	0x984
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"init_cond"
	.byte	0x1
	.value	0x985
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"pi"
	.byte	0x1
	.value	0x986
	.long	0x872c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	0x9dc2
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x38
	.string	"guard_cond"
	.byte	0x1
	.value	0x9c4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb78b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18533
	.byte	0x0
	.uleb128 0x3f
	.long	0x9e24
	.string	"finish_static_initialization_or_destruction"
	.byte	0x1
	.value	0x9fb
	.byte	0x1
	.long	.LFB63
	.long	.LFE63
	.long	.LLST48
	.uleb128 0x37
	.long	.LASF64
	.byte	0x1
	.value	0x9fa
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x3f
	.long	0x9e81
	.string	"do_static_initialization"
	.byte	0x1
	.value	0xa0c
	.byte	0x1
	.long	.LFB64
	.long	.LFE64
	.long	.LLST49
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0xa0a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"init"
	.byte	0x1
	.value	0xa0b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF64
	.byte	0x1
	.value	0xa0d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3f
	.long	0x9edb
	.string	"do_static_destruction"
	.byte	0x1
	.value	0xa29
	.byte	0x1
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0xa28
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	.LASF64
	.byte	0x1
	.value	0xa2a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb776
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18626
	.byte	0x0
	.uleb128 0x3d
	.long	0x9f92
	.string	"prune_vars_needing_no_initialization"
	.byte	0x1
	.value	0xa46
	.byte	0x1
	.long	0x1e6
	.long	.LFB66
	.long	.LFE66
	.long	.LLST51
	.uleb128 0x3a
	.string	"vars"
	.byte	0x1
	.value	0xa45
	.long	0x51ec
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"var"
	.byte	0x1
	.value	0xa47
	.long	0x51ec
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.long	.LASF33
	.byte	0x1
	.value	0xa48
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	0x9f81
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0xa4c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LASF1
	.byte	0x1
	.value	0xa4d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"init"
	.byte	0x1
	.value	0xa4e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb761
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18648
	.byte	0x0
	.uleb128 0x3f
	.long	0x9fd4
	.string	"write_out_vars"
	.byte	0x1
	.value	0xa7b
	.byte	0x1
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x3a
	.string	"vars"
	.byte	0x1
	.value	0xa7a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"v"
	.byte	0x1
	.value	0xa7c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3f
	.long	0xa08e
	.string	"generate_ctor_or_dtor_function"
	.byte	0x1
	.value	0xa8b
	.byte	0x1
	.long	.LFB68
	.long	.LFE68
	.long	.LLST53
	.uleb128 0x3a
	.string	"constructor_p"
	.byte	0x1
	.value	0xa89
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF63
	.byte	0x1
	.value	0xa8a
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"function_key"
	.byte	0x1
	.value	0xa8c
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x3b
	.long	.LASF32
	.byte	0x1
	.value	0xa8d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"body"
	.byte	0x1
	.value	0xa8e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0xa8f
	.long	0x3f2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x38
	.string	"fns"
	.byte	0x1
	.value	0xaad
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.long	0xa110
	.string	"generate_ctor_and_dtor_functions_for_priority"
	.byte	0x1
	.value	0xac0
	.byte	0x1
	.long	0x2e3
	.long	.LFB69
	.long	.LFE69
	.long	.LLST54
	.uleb128 0x3a
	.string	"n"
	.byte	0x1
	.value	0xabe
	.long	0x635b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"data"
	.byte	0x1
	.value	0xabf
	.long	0x4bf
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF63
	.byte	0x1
	.value	0xac1
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"pi"
	.byte	0x1
	.value	0xac2
	.long	0x872c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xa27a
	.byte	0x1
	.string	"finish_file"
	.byte	0x1
	.value	0xada
	.byte	0x1
	.long	.LFB70
	.long	.LFE70
	.long	.LLST55
	.uleb128 0x38
	.string	"vars"
	.byte	0x1
	.value	0xadb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"reconsider"
	.byte	0x1
	.value	0xadc
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0xadd
	.long	0x3f2
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.long	0xa231
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0xb02
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	0xa19d
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x38
	.string	"next"
	.byte	0x1
	.value	0xb1a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x35
	.long	0xa1cd
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x38
	.string	"v"
	.byte	0x1
	.value	0xb38
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"ssdf_body"
	.byte	0x1
	.value	0xb41
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x35
	.long	0xa217
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x3b
	.long	.LASF1
	.byte	0x1
	.value	0xb66
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x38
	.string	"saved_not_really_extern"
	.byte	0x1
	.value	0xb9b
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x3b
	.long	.LASF1
	.byte	0x1
	.value	0xbc1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0xa24e
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x3b
	.long	.LASF1
	.byte	0x1
	.value	0xbd2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x3b
	.long	.LASF51
	.byte	0x1
	.value	0xc04
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.string	"stream"
	.byte	0x1
	.value	0xc05
	.long	0x7f4b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xa2ca
	.byte	0x1
	.string	"reparse_absdcl_as_expr"
	.byte	0x1
	.value	0xc2a
	.byte	0x1
	.long	0x1e6
	.long	.LFB71
	.long	.LFE71
	.long	.LLST56
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0xc29
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0xc29
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x36
	.long	0xa372
	.byte	0x1
	.string	"reparse_absdcl_as_casts"
	.byte	0x1
	.value	0xc40
	.byte	0x1
	.long	0x1e6
	.long	.LFB72
	.long	.LFE72
	.long	.LLST57
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0xc3f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"expr"
	.byte	0x1
	.value	0xc3f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF2
	.byte	0x1
	.value	0xc41
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"non_void_p"
	.byte	0x1
	.value	0xc42
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	0xa361
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x38
	.string	"failure"
	.byte	0x1
	.value	0xc51
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb74c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19085
	.byte	0x0
	.uleb128 0x36
	.long	0xa5f4
	.byte	0x1
	.string	"build_expr_from_tree"
	.byte	0x1
	.value	0xc6d
	.byte	0x1
	.long	0x1e6
	.long	.LFB73
	.long	.LFE73
	.long	.LLST58
	.uleb128 0x3a
	.string	"t"
	.byte	0x1
	.value	0xc6c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	0xa3ce
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x38
	.string	"token"
	.byte	0x1
	.value	0xc79
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x0
	.uleb128 0x35
	.long	0xa40f
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x3b
	.long	.LASF65
	.byte	0x1
	.value	0xc81
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x3b
	.long	.LASF53
	.byte	0x1
	.value	0xc82
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x38
	.string	"object"
	.byte	0x1
	.value	0xc83
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0x0
	.uleb128 0x35
	.long	0xa42b
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x38
	.string	"r"
	.byte	0x1
	.value	0xcf8
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x0
	.uleb128 0x35
	.long	0xa459
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x38
	.string	"ref"
	.byte	0x1
	.value	0xd20
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3b
	.long	.LASF24
	.byte	0x1
	.value	0xd21
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x0
	.uleb128 0x35
	.long	0xa476
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x38
	.string	"fn"
	.byte	0x1
	.value	0xd30
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x35
	.long	0xa4d3
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x38
	.string	"ref"
	.byte	0x1
	.value	0xd4a
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x3b
	.long	.LASF24
	.byte	0x1
	.value	0xd4b
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x38
	.string	"fn"
	.byte	0x1
	.value	0xd4c
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3b
	.long	.LASF41
	.byte	0x1
	.value	0xd4c
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3b
	.long	.LASF53
	.byte	0x1
	.value	0xd4c
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x35
	.long	0xa50f
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x3b
	.long	.LASF24
	.byte	0x1
	.value	0xd5b
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.string	"id"
	.byte	0x1
	.value	0xd5c
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3b
	.long	.LASF53
	.byte	0x1
	.value	0xd5d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x35
	.long	0xa54c
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x3b
	.long	.LASF15
	.byte	0x1
	.value	0xd84
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3b
	.long	.LASF16
	.byte	0x1
	.value	0xd84
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"chain"
	.byte	0x1
	.value	0xd84
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x35
	.long	0xa56c
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x38
	.string	"object"
	.byte	0x1
	.value	0xd97
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x35
	.long	0xa5e3
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x38
	.string	"r"
	.byte	0x1
	.value	0xda1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"elts"
	.byte	0x1
	.value	0xda2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.long	.LASF2
	.byte	0x1
	.value	0xda3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.string	"purpose_p"
	.byte	0x1
	.value	0xda4
	.long	0x51bf
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x33
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x3b
	.long	.LASF15
	.byte	0x1
	.value	0xdb1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.long	.LASF16
	.byte	0x1
	.value	0xdb2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb747
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19209
	.byte	0x0
	.uleb128 0x36
	.long	0xa673
	.byte	0x1
	.string	"build_offset_ref_call_from_tree"
	.byte	0x1
	.value	0xdda
	.byte	0x1
	.long	0x1e6
	.long	.LFB74
	.long	.LFE74
	.long	.LLST59
	.uleb128 0x3a
	.string	"fn"
	.byte	0x1
	.value	0xdd9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF53
	.byte	0x1
	.value	0xdd9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"object_addr"
	.byte	0x1
	.value	0xddb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb742
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19570
	.byte	0x0
	.uleb128 0x36
	.long	0xa729
	.byte	0x1
	.string	"build_call_from_tree"
	.byte	0x1
	.value	0xe03
	.byte	0x1
	.long	0x1e6
	.long	.LFB75
	.long	.LFE75
	.long	.LLST60
	.uleb128 0x3a
	.string	"fn"
	.byte	0x1
	.value	0xe02
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF53
	.byte	0x1
	.value	0xe02
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"disallow_virtual"
	.byte	0x1
	.value	0xe02
	.long	0x51bf
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"template_args"
	.byte	0x1
	.value	0xe04
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"template_id"
	.byte	0x1
	.value	0xe05
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"f"
	.byte	0x1
	.value	0xe06
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb73d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19598
	.byte	0x0
	.uleb128 0x36
	.long	0xa777
	.byte	0x1
	.string	"reparse_decl_as_expr"
	.byte	0x1
	.value	0xe43
	.byte	0x1
	.long	0x1e6
	.long	.LFB76
	.long	.LFE76
	.long	.LLST61
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0xe42
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0xe42
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x36
	.long	0xa7c5
	.byte	0x1
	.string	"finish_decl_parsing"
	.byte	0x1
	.value	0xe52
	.byte	0x1
	.long	0x1e6
	.long	.LFB77
	.long	.LFE77
	.long	.LLST62
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0xe51
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb728
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19686
	.byte	0x0
	.uleb128 0x36
	.long	0xa81d
	.byte	0x1
	.string	"is_ancestor"
	.byte	0x1
	.value	0xe78
	.byte	0x1
	.long	0x51bf
	.long	.LFB78
	.long	.LFE78
	.long	.LLST63
	.uleb128 0x3a
	.string	"root"
	.byte	0x1
	.value	0xe77
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"child"
	.byte	0x1
	.value	0xe77
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb723
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19712
	.byte	0x0
	.uleb128 0x36
	.long	0xa869
	.byte	0x1
	.string	"namespace_ancestor"
	.byte	0x1
	.value	0xe9a
	.byte	0x1
	.long	0x1e6
	.long	.LFB79
	.long	.LFE79
	.long	.LLST64
	.uleb128 0x3a
	.string	"ns1"
	.byte	0x1
	.value	0xe99
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"ns2"
	.byte	0x1
	.value	0xe99
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3f
	.long	0xa8e4
	.string	"add_using_namespace"
	.byte	0x1
	.value	0xeaa
	.byte	0x1
	.long	.LFB80
	.long	.LFE80
	.long	.LLST65
	.uleb128 0x3a
	.string	"user"
	.byte	0x1
	.value	0xea7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"used"
	.byte	0x1
	.value	0xea8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"indirect"
	.byte	0x1
	.value	0xea9
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0xeab
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb70e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19801
	.byte	0x0
	.uleb128 0x3d
	.long	0xa96c
	.string	"merge_functions"
	.byte	0x1
	.value	0xedd
	.byte	0x1
	.long	0x1e6
	.long	.LFB81
	.long	.LFE81
	.long	.LLST66
	.uleb128 0x3a
	.string	"s1"
	.byte	0x1
	.value	0xedb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"s2"
	.byte	0x1
	.value	0xedc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x38
	.string	"fn2"
	.byte	0x1
	.value	0xee0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"fns1"
	.byte	0x1
	.value	0xee1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x38
	.string	"fn1"
	.byte	0x1
	.value	0xee5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.long	0xa9ff
	.string	"ambiguous_decl"
	.byte	0x1
	.value	0xf02
	.byte	0x1
	.long	0x6c5c
	.long	.LFB82
	.long	.LFE82
	.long	.LLST67
	.uleb128 0x37
	.long	.LASF24
	.byte	0x1
	.value	0xf01
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"old"
	.byte	0x1
	.value	0xf01
	.long	0x6c5c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"new"
	.byte	0x1
	.value	0xf01
	.long	0x6c5c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF51
	.byte	0x1
	.value	0xf01
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.string	"val"
	.byte	0x1
	.value	0xf03
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.long	.LASF2
	.byte	0x1
	.value	0xf03
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb709
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19907
	.byte	0x0
	.uleb128 0x36
	.long	0xaab2
	.byte	0x1
	.string	"lookup_using_namespace"
	.byte	0x1
	.value	0xf5c
	.byte	0x1
	.long	0x51bf
	.long	.LFB83
	.long	.LFE83
	.long	.LLST68
	.uleb128 0x37
	.long	.LASF24
	.byte	0x1
	.value	0xf5a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"val"
	.byte	0x1
	.value	0xf5a
	.long	0x6c5c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"usings"
	.byte	0x1
	.value	0xf5a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF41
	.byte	0x1
	.value	0xf5b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x37
	.long	.LASF51
	.byte	0x1
	.value	0xf5b
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3a
	.string	"spacesp"
	.byte	0x1
	.value	0xf5b
	.long	0x51ec
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x38
	.string	"iter"
	.byte	0x1
	.value	0xf5d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"val1"
	.byte	0x1
	.value	0xf5e
	.long	0x6c5c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0xab73
	.byte	0x1
	.string	"qualified_lookup_using_namespace"
	.byte	0x1
	.value	0xf79
	.byte	0x1
	.long	0x51bf
	.long	.LFB84
	.long	.LFE84
	.long	.LLST69
	.uleb128 0x37
	.long	.LASF24
	.byte	0x1
	.value	0xf77
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF41
	.byte	0x1
	.value	0xf77
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF33
	.byte	0x1
	.value	0xf77
	.long	0x6c5c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF51
	.byte	0x1
	.value	0xf78
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.string	"seen"
	.byte	0x1
	.value	0xf7b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"todo"
	.byte	0x1
	.value	0xf7d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"usings"
	.byte	0x1
	.value	0xf7e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x38
	.string	"b"
	.byte	0x1
	.value	0xf84
	.long	0x6c5c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xabee
	.byte	0x1
	.string	"set_decl_namespace"
	.byte	0x1
	.value	0xfa9
	.byte	0x1
	.long	.LFB85
	.long	.LFE85
	.long	.LLST70
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0xfa6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF41
	.byte	0x1
	.value	0xfa7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"friendp"
	.byte	0x1
	.value	0xfa8
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"old"
	.byte	0x1
	.value	0xfaa
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x40
	.string	"complain"
	.byte	0x1
	.value	0xfd2
	.long	.L1396
	.byte	0x0
	.uleb128 0x3d
	.long	0xac36
	.string	"decl_namespace"
	.byte	0x1
	.value	0xfdc
	.byte	0x1
	.long	0x1e6
	.long	.LFB86
	.long	.LFE86
	.long	.LLST71
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0xfdb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb704
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20164
	.byte	0x0
	.uleb128 0x36
	.long	0xac77
	.byte	0x1
	.string	"current_decl_namespace"
	.byte	0x1
	.value	0xff1
	.byte	0x1
	.long	0x1e6
	.long	.LFB87
	.long	.LFE87
	.long	.LLST72
	.uleb128 0x3b
	.long	.LASF33
	.byte	0x1
	.value	0xff2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xacb1
	.byte	0x1
	.string	"push_decl_namespace"
	.byte	0x1
	.value	0x1005
	.byte	0x1
	.long	.LFB88
	.long	.LFE88
	.long	.LLST73
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x1004
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x41
	.byte	0x1
	.string	"pop_decl_namespace"
	.byte	0x1
	.value	0x100e
	.byte	0x1
	.long	.LFB89
	.long	.LFE89
	.long	.LLST74
	.uleb128 0x39
	.long	0xad05
	.byte	0x1
	.string	"push_scope"
	.byte	0x1
	.value	0x1017
	.byte	0x1
	.long	.LFB90
	.long	.LFE90
	.long	.LLST75
	.uleb128 0x3a
	.string	"t"
	.byte	0x1
	.value	0x1016
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x39
	.long	0xad33
	.byte	0x1
	.string	"pop_scope"
	.byte	0x1
	.value	0x1023
	.byte	0x1
	.long	.LFB91
	.long	.LFE91
	.long	.LLST76
	.uleb128 0x3a
	.string	"t"
	.byte	0x1
	.value	0x1022
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xc
	.long	0xad95
	.string	"arg_lookup"
	.byte	0x10
	.byte	0x1
	.value	0x102e
	.uleb128 0x1e
	.long	.LASF24
	.byte	0x1
	.value	0x102f
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"namespaces"
	.byte	0x1
	.value	0x1030
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"classes"
	.byte	0x1
	.value	0x1031
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"functions"
	.byte	0x1
	.value	0x1032
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3d
	.long	0xadfd
	.string	"add_function"
	.byte	0x1
	.value	0x1044
	.byte	0x1
	.long	0x2e3
	.long	.LFB92
	.long	.LFE92
	.long	.LLST77
	.uleb128 0x3a
	.string	"k"
	.byte	0x1
	.value	0x1042
	.long	0xadfd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"fn"
	.byte	0x1
	.value	0x1043
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x38
	.string	"f1"
	.byte	0x1
	.value	0x1055
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"f2"
	.byte	0x1
	.value	0x1056
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xad33
	.uleb128 0x3d
	.long	0xae5c
	.string	"arg_assoc_namespace"
	.byte	0x1
	.value	0x106b
	.byte	0x1
	.long	0x2e3
	.long	.LFB93
	.long	.LFE93
	.long	.LLST78
	.uleb128 0x3a
	.string	"k"
	.byte	0x1
	.value	0x1069
	.long	0xadfd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF41
	.byte	0x1
	.value	0x106a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF16
	.byte	0x1
	.value	0x106c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3d
	.long	0xaec2
	.string	"arg_assoc_template_arg"
	.byte	0x1
	.value	0x1084
	.byte	0x1
	.long	0x2e3
	.long	.LFB94
	.long	.LFE94
	.long	.LLST79
	.uleb128 0x3a
	.string	"k"
	.byte	0x1
	.value	0x1082
	.long	0xadfd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"arg"
	.byte	0x1
	.value	0x1083
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x38
	.string	"ctx"
	.byte	0x1
	.value	0x1096
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.long	0xaf47
	.string	"arg_assoc_class"
	.byte	0x1
	.value	0x10af
	.byte	0x1
	.long	0x2e3
	.long	.LFB95
	.long	.LFE95
	.long	.LLST80
	.uleb128 0x3a
	.string	"k"
	.byte	0x1
	.value	0x10ad
	.long	0xadfd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0x10ae
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"list"
	.byte	0x1
	.value	0x10b0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"friends"
	.byte	0x1
	.value	0x10b0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LASF25
	.byte	0x1
	.value	0x10b0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x10b1
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3d
	.long	0xaf9c
	.string	"arg_assoc_type"
	.byte	0x1
	.value	0x10e4
	.byte	0x1
	.long	0x2e3
	.long	.LFB96
	.long	.LFE96
	.long	.LLST81
	.uleb128 0x3a
	.string	"k"
	.byte	0x1
	.value	0x10e2
	.long	0xadfd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0x10e3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb6ff
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20541
	.byte	0x0
	.uleb128 0x3d
	.long	0xafe1
	.string	"arg_assoc_args"
	.byte	0x1
	.value	0x111d
	.byte	0x1
	.long	0x2e3
	.long	.LFB97
	.long	.LFE97
	.long	.LLST82
	.uleb128 0x3a
	.string	"k"
	.byte	0x1
	.value	0x111b
	.long	0xadfd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF53
	.byte	0x1
	.value	0x111c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3d
	.long	0xb079
	.string	"arg_assoc"
	.byte	0x1
	.value	0x112a
	.byte	0x1
	.long	0x2e3
	.long	.LFB98
	.long	.LFE98
	.long	.LLST83
	.uleb128 0x3a
	.string	"k"
	.byte	0x1
	.value	0x1128
	.long	0xadfd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"n"
	.byte	0x1
	.value	0x1129
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	0xb068
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x3b
	.long	.LASF65
	.byte	0x1
	.value	0x1148
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3b
	.long	.LASF53
	.byte	0x1
	.value	0x1149
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"ctx"
	.byte	0x1
	.value	0x114a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"arg"
	.byte	0x1
	.value	0x114b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb6ea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20613
	.byte	0x0
	.uleb128 0x36
	.long	0xb0f1
	.byte	0x1
	.string	"lookup_arg_dependent"
	.byte	0x1
	.value	0x117a
	.byte	0x1
	.long	0x1e6
	.long	.LFB99
	.long	.LFE99
	.long	.LLST84
	.uleb128 0x37
	.long	.LASF24
	.byte	0x1
	.value	0x1177
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"fns"
	.byte	0x1
	.value	0x1178
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF53
	.byte	0x1
	.value	0x1179
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"k"
	.byte	0x1
	.value	0x117b
	.long	0xad33
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"fn"
	.byte	0x1
	.value	0x117c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xb13b
	.byte	0x1
	.string	"do_namespace_alias"
	.byte	0x1
	.value	0x1198
	.byte	0x1
	.long	.LFB100
	.long	.LFE100
	.long	.LLST85
	.uleb128 0x3a
	.string	"alias"
	.byte	0x1
	.value	0x1197
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF66
	.byte	0x1
	.value	0x1197
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3d
	.long	0xb1b0
	.string	"validate_nonmember_using_decl"
	.byte	0x1
	.value	0x11b0
	.byte	0x1
	.long	0x1e6
	.long	.LFB101
	.long	.LFE101
	.long	.LLST86
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x11ad
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF41
	.byte	0x1
	.value	0x11ae
	.long	0x51ec
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF24
	.byte	0x1
	.value	0x11af
	.long	0x51ec
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb6e5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20742
	.byte	0x0
	.uleb128 0x3f
	.long	0xb2aa
	.string	"do_nonmember_using_decl"
	.byte	0x1
	.value	0x11e9
	.byte	0x1
	.long	.LFB102
	.long	.LFE102
	.long	.LLST87
	.uleb128 0x37
	.long	.LASF41
	.byte	0x1
	.value	0x11e6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF24
	.byte	0x1
	.value	0x11e6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF67
	.byte	0x1
	.value	0x11e7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF68
	.byte	0x1
	.value	0x11e7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x37
	.long	.LASF69
	.byte	0x1
	.value	0x11e8
	.long	0x51ec
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x37
	.long	.LASF70
	.byte	0x1
	.value	0x11e8
	.long	0x51ec
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x38
	.string	"decls"
	.byte	0x1
	.value	0x11ea
	.long	0x6b71
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x38
	.string	"tmp"
	.byte	0x1
	.value	0x11fb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"tmp1"
	.byte	0x1
	.value	0x11fb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x38
	.string	"new_fn"
	.byte	0x1
	.value	0x1207
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x38
	.string	"old_fn"
	.byte	0x1
	.value	0x1211
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xb354
	.byte	0x1
	.string	"do_toplevel_using_decl"
	.byte	0x1
	.value	0x1254
	.byte	0x1
	.long	.LFB103
	.long	.LFE103
	.long	.LLST88
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x1253
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	.LASF41
	.byte	0x1
	.value	0x1255
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3b
	.long	.LASF24
	.byte	0x1
	.value	0x1255
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.long	.LASF67
	.byte	0x1
	.value	0x1256
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LASF68
	.byte	0x1
	.value	0x1256
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.long	.LASF69
	.byte	0x1
	.value	0x1256
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3b
	.long	.LASF70
	.byte	0x1
	.value	0x1256
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"binding"
	.byte	0x1
	.value	0x1257
	.long	0x6c5c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xb410
	.byte	0x1
	.string	"do_local_using_decl"
	.byte	0x1
	.value	0x1273
	.byte	0x1
	.long	.LFB104
	.long	.LFE104
	.long	.LLST89
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x1272
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	.LASF41
	.byte	0x1
	.value	0x1274
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.long	.LASF24
	.byte	0x1
	.value	0x1274
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3b
	.long	.LASF67
	.byte	0x1
	.value	0x1275
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3b
	.long	.LASF68
	.byte	0x1
	.value	0x1275
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LASF69
	.byte	0x1
	.value	0x1275
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.long	.LASF70
	.byte	0x1
	.value	0x1275
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x38
	.string	"fn"
	.byte	0x1
	.value	0x1288
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"term"
	.byte	0x1
	.value	0x1288
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xb47c
	.byte	0x1
	.string	"do_class_using_decl"
	.byte	0x1
	.value	0x12a1
	.byte	0x1
	.long	0x1e6
	.long	.LFB105
	.long	.LFE105
	.long	.LLST90
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x12a0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	.LASF24
	.byte	0x1
	.value	0x12a2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.long	.LASF16
	.byte	0x1
	.value	0x12a2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3c
	.long	.LASF52
	.long	0xb6d0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.21029
	.byte	0x0
	.uleb128 0x39
	.long	0xb4b5
	.byte	0x1
	.string	"do_using_directive"
	.byte	0x1
	.value	0x12cc
	.byte	0x1
	.long	.LFB106
	.long	.LFE106
	.long	.LLST91
	.uleb128 0x37
	.long	.LASF66
	.byte	0x1
	.value	0x12cb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x39
	.long	0xb51b
	.byte	0x1
	.string	"check_default_args"
	.byte	0x1
	.value	0x12eb
	.byte	0x1
	.long	.LFB107
	.long	.LFE107
	.long	.LLST92
	.uleb128 0x3a
	.string	"x"
	.byte	0x1
	.value	0x12ea
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"arg"
	.byte	0x1
	.value	0x12ec
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"saw_def"
	.byte	0x1
	.value	0x12ed
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x12ed
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xb566
	.byte	0x1
	.string	"mark_used"
	.byte	0x1
	.value	0x12fe
	.byte	0x1
	.long	.LFB108
	.long	.LFE108
	.long	.LLST93
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x12fd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x38
	.string	"defer"
	.byte	0x1
	.value	0x1321
	.long	0x51bf
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xb651
	.byte	0x1
	.string	"handle_class_head"
	.byte	0x1
	.value	0x134c
	.byte	0x1
	.long	0x1e6
	.long	.LFB109
	.long	.LFE109
	.long	.LLST94
	.uleb128 0x3a
	.string	"tag_kind"
	.byte	0x1
	.value	0x1348
	.long	0x7bb4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF41
	.byte	0x1
	.value	0x1349
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"id"
	.byte	0x1
	.value	0x1349
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF20
	.byte	0x1
	.value	0x1349
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3a
	.string	"defn_p"
	.byte	0x1
	.value	0x134a
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x37
	.long	.LASF71
	.byte	0x1
	.value	0x134b
	.long	0x829
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x3b
	.long	.LASF1
	.byte	0x1
	.value	0x134d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3b
	.long	.LASF2
	.byte	0x1
	.value	0x134e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"current"
	.byte	0x1
	.value	0x134f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"xrefd_p"
	.byte	0x1
	.value	0x1350
	.long	0x51bf
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x33
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x3b
	.long	.LASF25
	.byte	0x1
	.value	0x139d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xb6d0
	.byte	0x1
	.string	"handle_class_head_apparent_template"
	.byte	0x1
	.value	0x13d9
	.byte	0x1
	.long	0x1e6
	.long	.LFB110
	.long	.LFE110
	.long	.LLST95
	.uleb128 0x37
	.long	.LASF1
	.byte	0x1
	.value	0x13d7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF71
	.byte	0x1
	.value	0x13d8
	.long	0x829
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF25
	.byte	0x1
	.value	0x13da
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.string	"current"
	.byte	0x1
	.value	0x13db
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xa
	.long	0x814
	.uleb128 0xf
	.long	0xb6e5
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x1d
	.byte	0x0
	.uleb128 0xa
	.long	0xb6d5
	.uleb128 0xa
	.long	0x9b01
	.uleb128 0xf
	.long	0xb6ff
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0xe
	.byte	0x0
	.uleb128 0xa
	.long	0xb6ef
	.uleb128 0xa
	.long	0xb6ef
	.uleb128 0xa
	.long	0xb6ef
	.uleb128 0xa
	.long	0x814
	.uleb128 0xf
	.long	0xb723
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0xb
	.byte	0x0
	.uleb128 0xa
	.long	0xb713
	.uleb128 0xa
	.long	0x814
	.uleb128 0xf
	.long	0xb73d
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x14
	.byte	0x0
	.uleb128 0xa
	.long	0xb72d
	.uleb128 0xa
	.long	0x804
	.uleb128 0xa
	.long	0xb72d
	.uleb128 0xa
	.long	0x7f4
	.uleb128 0xf
	.long	0xb761
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x24
	.byte	0x0
	.uleb128 0xa
	.long	0xb751
	.uleb128 0xf
	.long	0xb776
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x15
	.byte	0x0
	.uleb128 0xa
	.long	0xb766
	.uleb128 0xf
	.long	0xb78b
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x2a
	.byte	0x0
	.uleb128 0xa
	.long	0xb77b
	.uleb128 0xf
	.long	0xb7a0
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x26
	.byte	0x0
	.uleb128 0xa
	.long	0xb790
	.uleb128 0xf
	.long	0xb7b5
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0xd
	.byte	0x0
	.uleb128 0xa
	.long	0xb7a5
	.uleb128 0xa
	.long	0xb766
	.uleb128 0xa
	.long	0x814
	.uleb128 0xf
	.long	0xb7d4
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x12
	.byte	0x0
	.uleb128 0xa
	.long	0xb7c4
	.uleb128 0xf
	.long	0xb7e9
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0xf
	.byte	0x0
	.uleb128 0xa
	.long	0xb7d9
	.uleb128 0xa
	.long	0xb766
	.uleb128 0xa
	.long	0x9b01
	.uleb128 0xf
	.long	0xb808
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x1e
	.byte	0x0
	.uleb128 0xa
	.long	0xb7f8
	.uleb128 0xa
	.long	0xb766
	.uleb128 0x31
	.string	"pending_statics"
	.byte	0x1
	.byte	0x6b
	.long	0x6a3d
	.byte	0x5
	.byte	0x3
	.long	pending_statics
	.uleb128 0x31
	.string	"deferred_fns"
	.byte	0x1
	.byte	0x71
	.long	0x6a3d
	.byte	0x5
	.byte	0x3
	.long	deferred_fns
	.uleb128 0x38
	.string	"initialize_p_decl"
	.byte	0x1
	.value	0x8d1
	.long	0x1e6
	.byte	0x5
	.byte	0x3
	.long	initialize_p_decl
	.uleb128 0x38
	.string	"priority_decl"
	.byte	0x1
	.value	0x8d4
	.long	0x1e6
	.byte	0x5
	.byte	0x3
	.long	priority_decl
	.uleb128 0x38
	.string	"ssdf_decl"
	.byte	0x1
	.value	0x8d7
	.long	0x1e6
	.byte	0x5
	.byte	0x3
	.long	ssdf_decl
	.uleb128 0x38
	.string	"ssdf_decls"
	.byte	0x1
	.value	0x8db
	.long	0x6a3d
	.byte	0x5
	.byte	0x3
	.long	ssdf_decls
	.uleb128 0x38
	.string	"priority_info_map"
	.byte	0x1
	.value	0x8e0
	.long	0x657c
	.byte	0x5
	.byte	0x3
	.long	priority_info_map
	.uleb128 0xf
	.long	0xb8e1
	.long	0x2db
	.uleb128 0x42
	.byte	0x0
	.uleb128 0x43
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x43
	.long	0xb8f9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0xb8d6
	.uleb128 0xf
	.long	0xb90e
	.long	0x1e6
	.uleb128 0x10
	.long	0x3d3
	.byte	0x3f
	.byte	0x0
	.uleb128 0x44
	.string	"global_trees"
	.byte	0x3
	.value	0x8ee
	.long	0xb8fe
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0xb935
	.long	0x1e6
	.uleb128 0x10
	.long	0x3d3
	.byte	0xa
	.byte	0x0
	.uleb128 0x44
	.string	"integer_types"
	.byte	0x3
	.value	0x95f
	.long	0xb925
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"input_filename"
	.byte	0x3
	.value	0xbf6
	.long	0x2d0
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"lineno"
	.byte	0x3
	.value	0xbf9
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"current_function_decl"
	.byte	0x3
	.value	0xc07
	.long	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0xb9a7
	.long	0x9d
	.uleb128 0x10
	.long	0x3d3
	.byte	0x80
	.byte	0x0
	.uleb128 0x44
	.string	"const_int_rtx"
	.byte	0x4
	.value	0x69e
	.long	0xb997
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"write_symbols"
	.byte	0x13
	.byte	0x2e
	.long	0x5c83
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"pedantic"
	.byte	0x13
	.byte	0xe3
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"in_system_header"
	.byte	0x13
	.byte	0xe8
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"flag_syntax_only"
	.byte	0x13
	.value	0x1a1
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"flag_exceptions"
	.byte	0x13
	.value	0x1ec
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"flag_detailed_statistics"
	.byte	0x13
	.value	0x2af
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"cfun"
	.byte	0x8
	.value	0x202
	.long	0x4676
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"flag_implement_inlines"
	.byte	0xb
	.value	0x28e
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"flag_alt_external_templates"
	.byte	0xb
	.value	0x299
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"flag_implicit_templates"
	.byte	0xb
	.value	0x29d
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"flag_implicit_inline_templates"
	.byte	0xb
	.value	0x2a3
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"flag_rtti"
	.byte	0xb
	.value	0x2bb
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"flag_weak"
	.byte	0xb
	.value	0x2da
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"flag_use_cxa_atexit"
	.byte	0xb
	.value	0x2df
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"flag_vtable_gc"
	.byte	0xb
	.value	0x2e3
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"warn_old_style_cast"
	.byte	0xb
	.value	0x331
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"skip_evaluation"
	.byte	0xb
	.value	0x345
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0xbba2
	.long	0x1e6
	.uleb128 0x10
	.long	0x3d3
	.byte	0x49
	.byte	0x0
	.uleb128 0x44
	.string	"cp_global_trees"
	.byte	0xa
	.value	0x28f
	.long	0xbb92
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"scope_chain"
	.byte	0xa
	.value	0x368
	.long	0x6f01
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"global_namespace"
	.byte	0x1
	.byte	0x8b
	.long	0x1e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	global_namespace
	.uleb128 0x46
	.long	.LASF43
	.byte	0xa
	.value	0x3e6
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.long	.LASF44
	.byte	0xa
	.value	0x3e6
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"current_class_depth"
	.byte	0xa
	.value	0xcc7
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"at_eof"
	.byte	0x1
	.byte	0x7b
	.long	0x2e3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	at_eof
	.uleb128 0x44
	.string	"static_aggregates"
	.byte	0xa
	.value	0xd53
	.long	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"static_ctors"
	.byte	0x1
	.byte	0x86
	.long	0x1e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	static_ctors
	.uleb128 0x45
	.string	"static_dtors"
	.byte	0x1
	.byte	0x87
	.long	0x1e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	static_dtors
	.uleb128 0x43
	.string	"last_function_parms"
	.byte	0x14
	.byte	0x27
	.long	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"targetm"
	.byte	0x15
	.value	0x12d
	.long	0x82f3
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"back_end_hook"
	.byte	0x1
	.byte	0x81
	.long	0x8629
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	back_end_hook
	.uleb128 0xf
	.long	0xbced
	.long	0x7c41
	.uleb128 0x10
	.long	0x3d3
	.byte	0x6
	.byte	0x0
	.uleb128 0x45
	.string	"gt_ggc_r_gt_cp_decl2_h"
	.byte	0x16
	.byte	0x19
	.long	0xbd12
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_r_gt_cp_decl2_h
	.uleb128 0xa
	.long	0xbcdd
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x25
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.long	0x602
	.value	0x2
	.long	.Ldebug_info0
	.long	0xbd18
	.long	0x8747
	.string	"grok_method_quals"
	.long	0x880f
	.string	"warn_if_unknown_interface"
	.long	0x889f
	.string	"grok_x_components"
	.long	0x88e3
	.string	"cp_build_parm_decl"
	.long	0x893b
	.string	"build_artificial_parm"
	.long	0x899a
	.string	"maybe_retrofit_in_chrg"
	.long	0x8a2c
	.string	"grokclassfn"
	.long	0x8aed
	.string	"grok_array_decl"
	.long	0x8b8a
	.string	"delete_sanity"
	.long	0x8c34
	.string	"check_member_template"
	.long	0x8cf4
	.string	"check_java_method"
	.long	0x8d7f
	.string	"check_classfn"
	.long	0x8e7b
	.string	"finish_static_data_member_decl"
	.long	0x8f19
	.string	"grokfield"
	.long	0x8feb
	.string	"grokbitfield"
	.long	0x9051
	.string	"grokoptypename"
	.long	0x9125
	.string	"cplus_decl_attributes"
	.long	0x917f
	.string	"constructor_name_full"
	.long	0x91d1
	.string	"constructor_name"
	.long	0x921b
	.string	"constructor_name_p"
	.long	0x9267
	.string	"defer_fn"
	.long	0x9351
	.string	"finish_anon_union"
	.long	0x93e5
	.string	"finish_builtin_type"
	.long	0x9472
	.string	"coerce_new_type"
	.long	0x94d8
	.string	"coerce_delete_type"
	.long	0x95b7
	.string	"comdat_linkage"
	.long	0x95ec
	.string	"maybe_make_one_only"
	.long	0x9626
	.string	"import_export_vtable"
	.long	0x980b
	.string	"import_export_decl"
	.long	0x985d
	.string	"import_export_tinfo"
	.long	0x98bf
	.string	"build_cleanup"
	.long	0x9926
	.string	"get_guard"
	.long	0x99d2
	.string	"get_guard_cond"
	.long	0x9a22
	.string	"set_guard"
	.long	0xa110
	.string	"finish_file"
	.long	0xa27a
	.string	"reparse_absdcl_as_expr"
	.long	0xa2ca
	.string	"reparse_absdcl_as_casts"
	.long	0xa372
	.string	"build_expr_from_tree"
	.long	0xa5f4
	.string	"build_offset_ref_call_from_tree"
	.long	0xa673
	.string	"build_call_from_tree"
	.long	0xa729
	.string	"reparse_decl_as_expr"
	.long	0xa777
	.string	"finish_decl_parsing"
	.long	0xa7c5
	.string	"is_ancestor"
	.long	0xa81d
	.string	"namespace_ancestor"
	.long	0xa9ff
	.string	"lookup_using_namespace"
	.long	0xaab2
	.string	"qualified_lookup_using_namespace"
	.long	0xab73
	.string	"set_decl_namespace"
	.long	0xac36
	.string	"current_decl_namespace"
	.long	0xac77
	.string	"push_decl_namespace"
	.long	0xacb1
	.string	"pop_decl_namespace"
	.long	0xacd6
	.string	"push_scope"
	.long	0xad05
	.string	"pop_scope"
	.long	0xb079
	.string	"lookup_arg_dependent"
	.long	0xb0f1
	.string	"do_namespace_alias"
	.long	0xb2aa
	.string	"do_toplevel_using_decl"
	.long	0xb354
	.string	"do_local_using_decl"
	.long	0xb410
	.string	"do_class_using_decl"
	.long	0xb47c
	.string	"do_using_directive"
	.long	0xb4b5
	.string	"check_default_args"
	.long	0xb51b
	.string	"mark_used"
	.long	0xb566
	.string	"handle_class_head"
	.long	0xb651
	.string	"handle_class_head_apparent_template"
	.long	0xbbd2
	.string	"global_namespace"
	.long	0xbc2b
	.string	"at_eof"
	.long	0xbc5c
	.string	"static_ctors"
	.long	0xbc77
	.string	"static_dtors"
	.long	0xbcc1
	.string	"back_end_hook"
	.long	0xbced
	.string	"gt_ggc_r_gt_cp_decl2_h"
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
.LASF65:
	.string	"template"
.LASF33:
	.string	"result"
.LASF29:
	.string	"cannot_inline"
.LASF6:
	.string	"lang_flag_0"
.LASF7:
	.string	"lang_flag_1"
.LASF8:
	.string	"lang_flag_2"
.LASF12:
	.string	"lang_flag_6"
.LASF47:
	.string	"befriending_classes"
.LASF41:
	.string	"scope"
.LASF68:
	.string	"oldtype"
.LASF34:
	.string	"mem_attrs"
.LASF37:
	.string	"bindings"
.LASF44:
	.string	"interface_unknown"
.LASF40:
	.string	"cxx_binding"
.LASF56:
	.string	"declarator"
.LASF0:
	.string	"common"
.LASF26:
	.string	"lang_specific"
.LASF36:
	.string	"sequence_rtl_expr"
.LASF39:
	.string	"cxx_saved_binding"
.LASF35:
	.string	"sequence_stack"
.LASF31:
	.string	"function_frequency"
.LASF9:
	.string	"lang_flag_3"
.LASF27:
	.string	"function"
.LASF3:
	.string	"unsigned int"
.LASF18:
	.string	"abstract_origin"
.LASF23:
	.string	"align"
.LASF48:
	.string	"ctype"
.LASF50:
	.string	"arg_types"
.LASF21:
	.string	"pointer_depth"
.LASF45:
	.string	"use_template"
.LASF55:
	.string	"explained"
.LASF22:
	.string	"user_align"
.LASF71:
	.string	"new_type_p"
.LASF19:
	.string	"size_unit"
.LASF2:
	.string	"type"
.LASF30:
	.string	"language"
.LASF43:
	.string	"interface_only"
.LASF16:
	.string	"value"
.LASF28:
	.string	"args_size"
.LASF5:
	.string	"built_in_class"
.LASF32:
	.string	"arguments"
.LASF66:
	.string	"namespace"
.LASF49:
	.string	"this_quals"
.LASF69:
	.string	"newval"
.LASF15:
	.string	"purpose"
.LASF10:
	.string	"lang_flag_4"
.LASF11:
	.string	"lang_flag_5"
.LASF13:
	.string	"lang_flag_7"
.LASF17:
	.string	"abstract_flag"
.LASF59:
	.string	"external_p"
.LASF38:
	.string	"x_stmt_tree"
.LASF25:
	.string	"context"
.LASF42:
	.string	"class_type"
.LASF14:
	.string	"ht_identifier"
.LASF64:
	.string	"guard_if_stmt"
.LASF62:
	.string	"method_type"
.LASF46:
	.string	"template_info"
.LASF58:
	.string	"static_p"
.LASF52:
	.string	"__FUNCTION__"
.LASF53:
	.string	"args"
.LASF51:
	.string	"flags"
.LASF67:
	.string	"oldval"
.LASF54:
	.string	"asmspec_tree"
.LASF61:
	.string	"guard"
.LASF60:
	.string	"main_decl"
.LASF63:
	.string	"priority"
.LASF57:
	.string	"declspecs"
.LASF4:
	.string	"_IO_FILE"
.LASF70:
	.string	"newtype"
.LASF20:
	.string	"attributes"
.LASF1:
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
