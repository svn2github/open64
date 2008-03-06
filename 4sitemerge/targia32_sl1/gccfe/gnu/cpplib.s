	.file	"cpplib.c"
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
	.string	"define"
.LC1:
	.string	"include"
.LC2:
	.string	"endif"
.LC3:
	.string	"ifdef"
.LC4:
	.string	"if"
.LC5:
	.string	"else"
.LC6:
	.string	"ifndef"
.LC7:
	.string	"undef"
.LC8:
	.string	"line"
.LC9:
	.string	"elif"
.LC10:
	.string	"error"
.LC11:
	.string	"pragma"
.LC12:
	.string	"warning"
.LC13:
	.string	"include_next"
.LC14:
	.string	"ident"
.LC15:
	.string	"import"
.LC16:
	.string	"assert"
.LC17:
	.string	"unassert"
.LC18:
	.string	"sccs"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	dtable, @object
	.size	dtable, 228
dtable:
	.long	do_define
	.long	.LC0
	.value	6
	.byte	0
	.byte	8
	.long	do_include
	.long	.LC1
	.value	7
	.byte	0
	.byte	20
	.long	do_endif
	.long	.LC2
	.value	5
	.byte	0
	.byte	1
	.long	do_ifdef
	.long	.LC3
	.value	5
	.byte	0
	.byte	3
	.long	do_if
	.long	.LC4
	.value	2
	.byte	0
	.byte	19
	.long	do_else
	.long	.LC5
	.value	4
	.byte	0
	.byte	1
	.long	do_ifndef
	.long	.LC6
	.value	6
	.byte	0
	.byte	3
	.long	do_undef
	.long	.LC7
	.value	5
	.byte	0
	.byte	8
	.long	do_line
	.long	.LC8
	.value	4
	.byte	0
	.byte	16
	.long	do_elif
	.long	.LC9
	.value	4
	.byte	1
	.byte	17
	.long	do_error
	.long	.LC10
	.value	5
	.byte	1
	.byte	0
	.long	do_pragma
	.long	.LC11
	.value	6
	.byte	1
	.byte	8
	.long	do_warning
	.long	.LC12
	.value	7
	.byte	2
	.byte	0
	.long	do_include_next
	.long	.LC13
	.value	12
	.byte	2
	.byte	20
	.long	do_ident
	.long	.LC14
	.value	5
	.byte	2
	.byte	8
	.long	do_import
	.long	.LC15
	.value	6
	.byte	2
	.byte	20
	.long	do_assert
	.long	.LC16
	.value	6
	.byte	2
	.byte	0
	.long	do_unassert
	.long	.LC17
	.value	8
	.byte	2
	.byte	0
	.long	do_sccs
	.long	.LC18
	.value	4
	.byte	2
	.byte	0
	.section	.rodata
.LC19:
	.string	"#"
	.section	.data.rel.ro.local
	.align 4
	.type	linemarker_dir, @object
	.size	linemarker_dir, 12
linemarker_dir:
	.long	do_linemarker
	.long	.LC19
	.value	1
	.byte	0
	.byte	8
	.text
	.type	skip_rest_of_line, @function
skip_rest_of_line:
.LFB21:
	.file 1 "../../../kgccfe/gnu/cpplib.c"
	.loc 1 208 0
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
	.loc 1 210 0
	jmp	.L2
.L3:
	.loc 1 211 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_pop_context@PLT
.L2:
	.loc 1 210 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L3
	.loc 1 214 0
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	subl	$16, %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	je	.L7
.L6:
	.loc 1 215 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_lex_token@PLT
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	jne	.L6
.L7:
	.loc 1 217 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	skip_rest_of_line, .-skip_rest_of_line
	.section	.rodata
	.align 4
.LC20:
	.string	"extra tokens at end of #%s directive"
	.text
	.type	check_eol, @function
check_eol:
.LFB22:
	.loc 1 223 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$20, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 224 0
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	subl	$16, %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	je	.L12
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_lex_token@PLT
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	je	.L12
	.loc 1 225 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L12:
	.loc 1 227 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	check_eol, .-check_eol
	.type	start_directive, @function
start_directive:
.LFB23:
	.loc 1 233 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	.loc 1 235 0
	movl	8(%ebp), %eax
	movb	$1, 8(%eax)
	.loc 1 236 0
	movl	8(%ebp), %eax
	movb	$0, 13(%eax)
	.loc 1 239 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 240 0
	popl	%ebp
	ret
.LFE23:
	.size	start_directive, .-start_directive
	.type	end_directive, @function
end_directive:
.LFB24:
	.loc 1 247 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$4, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 248 0
	movl	8(%ebp), %eax
	movzbl	433(%eax), %eax
	testb	%al, %al
	je	.L16
	.loc 1 251 0
	movl	8(%ebp), %eax
	movzbl	17(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 17(%eax)
	.loc 1 253 0
	movl	8(%ebp), %eax
	movl	104(%eax), %edx
	leal	dtable@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	je	.L20
	.loc 1 254 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_remove_overlay@PLT
	jmp	.L20
.L16:
	.loc 1 257 0
	cmpl	$0, 12(%ebp)
	je	.L20
	.loc 1 259 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_rest_of_line
	.loc 1 260 0
	movl	8(%ebp), %eax
	movl	152(%eax), %eax
	testl	%eax, %eax
	jne	.L20
	.loc 1 262 0
	movl	8(%ebp), %edx
	subl	$-128, %edx
	movl	8(%ebp), %eax
	movl	%edx, 144(%eax)
	.loc 1 263 0
	movl	8(%ebp), %eax
	movl	136(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 124(%eax)
.L20:
	.loc 1 268 0
	movl	8(%ebp), %eax
	movzbl	396(%eax), %eax
	testb	%al, %al
	sete	%dl
	movl	8(%ebp), %eax
	movb	%dl, 13(%eax)
	.loc 1 269 0
	movl	8(%ebp), %eax
	movb	$0, 8(%eax)
	.loc 1 270 0
	movl	8(%ebp), %eax
	movb	$0, 12(%eax)
	.loc 1 271 0
	movl	8(%ebp), %eax
	movb	$0, 11(%eax)
	.loc 1 272 0
	movl	8(%ebp), %eax
	movl	$0, 104(%eax)
	.loc 1 273 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	end_directive, .-end_directive
	.type	prepare_directive_trad, @function
prepare_directive_trad:
.LFB25:
	.loc 1 279 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$36, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 280 0
	movl	8(%ebp), %eax
	movl	104(%eax), %edx
	leal	dtable@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	je	.L25
.LBB2:
	.loc 1 283 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L27
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movzbl	11(%eax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L27
	movl	$1, -28(%ebp)
	jmp	.L30
.L27:
	movl	$0, -28(%ebp)
.L30:
	movzbl	-28(%ebp), %eax
	movb	%al, -6(%ebp)
	.loc 1 284 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	testb	%al, %al
	setne	%al
	movb	%al, -5(%ebp)
	.loc 1 286 0
	movl	8(%ebp), %eax
	movb	$0, 10(%eax)
	.loc 1 287 0
	movl	8(%ebp), %eax
	movl	104(%eax), %edx
	leal	48+dtable@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	je	.L31
	movl	8(%ebp), %eax
	movl	104(%eax), %edx
	leal	108+dtable@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L33
.L31:
	movl	$1, -24(%ebp)
	jmp	.L34
.L33:
	movl	$0, -24(%ebp)
.L34:
	movzbl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movb	%dl, 12(%eax)
	.loc 1 289 0
	cmpb	$0, -6(%ebp)
	je	.L35
	.loc 1 290 0
	movl	8(%ebp), %eax
	movzbl	17(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 17(%eax)
.L35:
	.loc 1 291 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_read_logical_line_trad@PLT
	.loc 1 292 0
	cmpb	$0, -6(%ebp)
	je	.L37
	.loc 1 293 0
	movl	8(%ebp), %eax
	movzbl	17(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 17(%eax)
.L37:
	.loc 1 294 0
	movzbl	-5(%ebp), %edx
	movl	8(%ebp), %eax
	movb	%dl, 10(%eax)
	.loc 1 295 0
	movl	8(%ebp), %eax
	movl	516(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	508(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	508(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_overlay_buffer@PLT
.L25:
.LBE2:
	.loc 1 300 0
	movl	8(%ebp), %eax
	movzbl	17(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 17(%eax)
	.loc 1 301 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	prepare_directive_trad, .-prepare_directive_trad
	.section	.rodata
.LC21:
	.string	"#%s is a GCC extension"
	.align 4
.LC22:
	.string	"suggest not using #elif in traditional C"
	.align 4
.LC23:
	.string	"traditional C ignores #%s with the # indented"
	.align 4
.LC24:
	.string	"suggest hiding #%s from traditional C with an indented #"
	.text
	.type	directive_diagnostics, @function
directive_diagnostics:
.LFB26:
	.loc 1 310 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%ebx
.LCFI20:
	subl	$20, %esp
.LCFI21:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 312 0
	movl	8(%ebp), %eax
	movzbl	425(%eax), %eax
	testb	%al, %al
	je	.L41
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	testb	%al, %al
	jne	.L41
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	cmpb	$2, %al
	jne	.L41
	.loc 1 315 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L41:
	.loc 1 323 0
	movl	8(%ebp), %eax
	movzbl	411(%eax), %eax
	testb	%al, %al
	je	.L54
	.loc 1 325 0
	leal	108+dtable@GOTOFF(%ebx), %eax
	cmpl	%eax, 12(%ebp)
	jne	.L47
	.loc 1 326 0
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L54
.L47:
	.loc 1 328 0
	cmpl	$0, 16(%ebp)
	je	.L49
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	testb	%al, %al
	jne	.L49
	.loc 1 329 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 328 0
	jmp	.L54
.L49:
	.loc 1 332 0
	cmpl	$0, 16(%ebp)
	jne	.L54
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	testb	%al, %al
	je	.L54
	.loc 1 333 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L54:
	.loc 1 337 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	directive_diagnostics, .-directive_diagnostics
	.section	.rodata
	.align 4
.LC25:
	.string	"embedding a directive within macro arguments is not portable"
	.align 4
.LC26:
	.string	"style of line directive is a GCC extension"
	.align 4
.LC27:
	.string	"invalid preprocessing directive #%s"
	.text
.globl _cpp_handle_directive
	.type	_cpp_handle_directive, @function
_cpp_handle_directive:
.LFB27:
	.loc 1 348 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$36, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 349 0
	movl	$0, -20(%ebp)
	.loc 1 351 0
	movl	8(%ebp), %eax
	movzbl	18(%eax), %eax
	testb	%al, %al
	setne	%al
	movb	%al, -5(%ebp)
	.loc 1 352 0
	movl	$1, -12(%ebp)
	.loc 1 354 0
	cmpb	$0, -5(%ebp)
	je	.L56
	.loc 1 356 0
	movl	8(%ebp), %eax
	movzbl	425(%eax), %eax
	testb	%al, %al
	je	.L58
	.loc 1 357 0
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L58:
	.loc 1 359 0
	movl	8(%ebp), %eax
	movb	$0, 18(%eax)
	.loc 1 360 0
	movl	8(%ebp), %eax
	movb	$0, 17(%eax)
.L56:
	.loc 1 362 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	start_directive
	.loc 1 363 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_lex_token@PLT
	movl	%eax, -16(%ebp)
	.loc 1 365 0
	movl	-16(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$57, %al
	jne	.L60
	.loc 1 367 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	14(%eax), %eax
	testb	%al, %al
	je	.L64
	.loc 1 368 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	14(%eax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	leal	dtable@GOTOFF(%ebx), %eax
	subl	$12, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L64
.L60:
	.loc 1 372 0
	movl	-16(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$58, %al
	jne	.L64
	movl	8(%ebp), %eax
	movl	388(%eax), %eax
	cmpl	$7, %eax
	je	.L64
	.loc 1 374 0
	leal	linemarker_dir@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 375 0
	movl	8(%ebp), %eax
	movzbl	425(%eax), %eax
	testb	%al, %al
	je	.L64
	movl	8(%ebp), %eax
	movzbl	426(%eax), %eax
	testb	%al, %al
	jne	.L64
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	testb	%al, %al
	jne	.L64
	.loc 1 377 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L64:
	.loc 1 381 0
	cmpl	$0, -20(%ebp)
	je	.L70
	.loc 1 385 0
	movl	-20(%ebp), %eax
	movzbl	11(%eax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L72
	.loc 1 386 0
	movl	8(%ebp), %eax
	movb	$0, 120(%eax)
.L72:
	.loc 1 397 0
	movl	8(%ebp), %eax
	movzbl	426(%eax), %eax
	testb	%al, %al
	je	.L74
	cmpl	$0, 12(%ebp)
	jne	.L76
	movl	-20(%ebp), %eax
	movzbl	11(%eax), %eax
	movzbl	%al, %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L74
.L76:
	.loc 1 400 0
	movl	$0, -12(%ebp)
	.loc 1 401 0
	movl	$0, -20(%ebp)
	.loc 1 397 0
	jmp	.L83
.L74:
	.loc 1 409 0
	movl	-20(%ebp), %eax
	movzbl	11(%eax), %eax
	movl	%eax, %edx
	andl	$4, %edx
	movl	8(%ebp), %eax
	movb	%dl, 11(%eax)
	.loc 1 410 0
	movl	-20(%ebp), %eax
	movzbl	11(%eax), %eax
	movl	%eax, %edx
	andl	$4, %edx
	movl	8(%ebp), %eax
	movb	%dl, 9(%eax)
	.loc 1 411 0
	movl	8(%ebp), %eax
	movzbl	426(%eax), %eax
	testb	%al, %al
	jne	.L79
	.loc 1 412 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	directive_diagnostics
.L79:
	.loc 1 413 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	testb	%al, %al
	je	.L83
	movl	-20(%ebp), %eax
	movzbl	11(%eax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L83
	.loc 1 414 0
	movl	$0, -20(%ebp)
	jmp	.L83
.L70:
	.loc 1 417 0
	movl	-16(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	je	.L83
	.loc 1 425 0
	movl	8(%ebp), %eax
	movl	388(%eax), %eax
	cmpl	$7, %eax
	jne	.L85
	.loc 1 426 0
	movl	$0, -12(%ebp)
	jmp	.L83
.L85:
	.loc 1 427 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	testb	%al, %al
	jne	.L83
	.loc 1 428 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_as_text@PLT
	movl	%eax, 12(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L83:
	.loc 1 432 0
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 104(%edx)
	.loc 1 433 0
	movl	8(%ebp), %eax
	movzbl	433(%eax), %eax
	testb	%al, %al
	je	.L88
	.loc 1 434 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prepare_directive_trad
.L88:
	.loc 1 436 0
	cmpl	$0, -20(%ebp)
	je	.L90
	.loc 1 437 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	jmp	.L92
.L90:
	.loc 1 438 0
	cmpl	$0, -12(%ebp)
	jne	.L92
	.loc 1 439 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_backup_tokens@PLT
.L92:
	.loc 1 441 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	end_directive
	.loc 1 442 0
	cmpb	$0, -5(%ebp)
	je	.L94
	.loc 1 445 0
	movl	8(%ebp), %eax
	movb	$2, 18(%eax)
	.loc 1 446 0
	movl	8(%ebp), %eax
	movb	$1, 17(%eax)
	.loc 1 447 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	36(%eax), %eax
	orl	$1, %eax
	movb	%al, 36(%edx)
.L94:
	.loc 1 449 0
	movl	-12(%ebp), %eax
	.loc 1 450 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	_cpp_handle_directive, .-_cpp_handle_directive
	.type	run_directive, @function
run_directive:
.LFB28:
	.loc 1 460 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$20, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 461 0
	movl	16(%ebp), %eax
	movl	$1, 16(%esp)
	movl	$1, 12(%esp)
	movl	20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_push_buffer@PLT
	.loc 1 464 0
	cmpl	$11, 12(%ebp)
	jne	.L98
	.loc 1 465 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, 24(%edx)
.L98:
	.loc 1 466 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	start_directive
	.loc 1 468 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movb	$0, 36(%eax)
	.loc 1 469 0
	movl	12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	leal	dtable@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 104(%eax)
	.loc 1 470 0
	movl	8(%ebp), %eax
	movzbl	433(%eax), %eax
	testb	%al, %al
	je	.L100
	.loc 1 471 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prepare_directive_trad
.L100:
	.loc 1 472 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 473 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	end_directive
	.loc 1 474 0
	cmpl	$11, 12(%ebp)
	jne	.L102
	.loc 1 475 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 24(%eax)
.L102:
	.loc 1 476 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_pop_buffer@PLT
	.loc 1 477 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	run_directive, .-run_directive
	.section	.rodata
	.align 4
.LC28:
	.string	"\"defined\" cannot be used as a macro name"
	.align 4
.LC29:
	.string	"\"%s\" cannot be used as a macro name as it is an operator in C++"
	.align 4
.LC30:
	.string	"no macro name given in #%s directive"
	.align 4
.LC31:
	.string	"macro names must be identifiers"
	.text
	.type	lex_macro_node, @function
lex_macro_node:
.LFB29:
	.loc 1 484 0
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
	.loc 1 485 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_lex_token@PLT
	movl	%eax, -12(%ebp)
	.loc 1 494 0
	movl	-12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$57, %al
	jne	.L106
.LBB3:
	.loc 1 496 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 498 0
	movl	8(%ebp), %eax
	movl	464(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L108
	.loc 1 499 0
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L113
.L108:
	.loc 1 501 0
	movl	-8(%ebp), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L113
	.loc 1 502 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L112
.L106:
.LBE3:
	.loc 1 504 0
	movl	-12(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L114
	.loc 1 505 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L113
.L114:
	.loc 1 508 0
	movl	-12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	jne	.L116
	.loc 1 509 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L113
.L116:
	.loc 1 512 0
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L113:
	.loc 1 514 0
	movl	$0, -24(%ebp)
.L112:
	movl	-24(%ebp), %eax
	.loc 1 515 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	lex_macro_node, .-lex_macro_node
	.type	do_define, @function
do_define:
.LFB30:
	.loc 1 521 0
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
	.loc 1 522 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lex_macro_node
	movl	%eax, -8(%ebp)
	.loc 1 524 0
	cmpl	$0, -8(%ebp)
	je	.L124
	.loc 1 528 0
	movl	8(%ebp), %eax
	movzbl	397(%eax), %eax
	testb	%al, %al
	sete	%dl
	movl	8(%ebp), %eax
	movb	%dl, 13(%eax)
	.loc 1 531 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_create_definition@PLT
	testb	%al, %al
	je	.L124
	.loc 1 532 0
	movl	8(%ebp), %eax
	movl	328(%eax), %eax
	testl	%eax, %eax
	je	.L124
	.loc 1 533 0
	movl	8(%ebp), %eax
	movl	328(%eax), %ecx
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
.L124:
	.loc 1 535 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	do_define, .-do_define
	.section	.rodata
.LC32:
	.string	"undefining \"%s\""
	.text
	.type	do_undef, @function
do_undef:
.LFB31:
	.loc 1 541 0
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
	.loc 1 542 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lex_macro_node
	movl	%eax, -8(%ebp)
	.loc 1 546 0
	cmpl	$0, -8(%ebp)
	je	.L126
	movl	-8(%ebp), %eax
	movzbl	16(%eax), %eax
	cmpb	$1, %al
	jne	.L126
	.loc 1 548 0
	movl	8(%ebp), %eax
	movl	332(%eax), %eax
	testl	%eax, %eax
	je	.L129
	.loc 1 549 0
	movl	8(%ebp), %eax
	movl	332(%eax), %ecx
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
.L129:
	.loc 1 551 0
	movl	-8(%ebp), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L131
	.loc 1 552 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L131:
	.loc 1 554 0
	movl	8(%ebp), %eax
	movzbl	422(%eax), %eax
	testb	%al, %al
	je	.L133
	.loc 1 555 0
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_warn_if_unused_macro@PLT
.L133:
	.loc 1 557 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_free_definition@PLT
.L126:
	.loc 1 559 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_eol
	.loc 1 560 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	do_undef, .-do_undef
	.section	.rodata
	.align 4
.LC33:
	.string	"missing terminating > character"
	.text
	.type	glue_header_name, @function
glue_header_name:
.LFB32:
	.loc 1 568 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	pushl	%edi
.LCFI44:
	pushl	%esi
.LCFI45:
	pushl	%ebx
.LCFI46:
	subl	$44, %esp
.LCFI47:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 569 0
	movl	$0, -40(%ebp)
	.loc 1 572 0
	movl	$0, -24(%ebp)
	movl	$1024, -20(%ebp)
	.loc 1 576 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -32(%ebp)
.L137:
	.loc 1 579 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_token_no_padding
	movl	%eax, -36(%ebp)
	.loc 1 581 0
	movl	-36(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$2, %al
	je	.L138
	movl	-36(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	je	.L138
	.loc 1 584 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_len@PLT
	movl	%eax, -28(%ebp)
	.loc 1 585 0
	movl	-28(%ebp), %eax
	addl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jbe	.L141
	.loc 1 587 0
	movl	-28(%ebp), %eax
	addl	-20(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 588 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, -32(%ebp)
.L141:
	.loc 1 591 0
	movl	-36(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L143
	.loc 1 592 0
	movl	-24(%ebp), %eax
	addl	-32(%ebp), %eax
	movb	$32, (%eax)
	addl	$1, -24(%ebp)
.L143:
	.loc 1 594 0
	movl	-24(%ebp), %eax
	addl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_spell_token@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -24(%ebp)
	.loc 1 595 0
	jmp	.L137
.L138:
	.loc 1 597 0
	movl	-36(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	jne	.L145
	.loc 1 598 0
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L147
.L145:
.LBB4:
	.loc 1 601 0
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_unaligned_alloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 602 0
	movl	-16(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	-24(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 603 0
	movl	-24(%ebp), %eax
	addl	-16(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 605 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_temp_token@PLT
	movl	%eax, -40(%ebp)
	.loc 1 606 0
	movl	-40(%ebp), %eax
	movb	$64, 6(%eax)
	.loc 1 607 0
	movl	-40(%ebp), %eax
	movb	$0, 7(%eax)
	.loc 1 608 0
	movl	-40(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 609 0
	movl	-40(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%edx)
.L147:
.LBE4:
	.loc 1 612 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 613 0
	movl	-40(%ebp), %eax
	.loc 1 614 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE32:
	.size	glue_header_name, .-glue_header_name
	.section	.rodata
.LC34:
	.string	"pragma dependency"
	.align 4
.LC35:
	.string	"#%s expects \"FILENAME\" or <FILENAME>"
.LC36:
	.string	"empty file name in #%s"
	.text
	.type	parse_include, @function
parse_include:
.LFB33:
	.loc 1 621 0
	pushl	%ebp
.LCFI48:
	movl	%esp, %ebp
.LCFI49:
	pushl	%ebx
.LCFI50:
	subl	$36, %esp
.LCFI51:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 625 0
	movl	8(%ebp), %eax
	movl	104(%eax), %edx
	leal	132+dtable@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L150
	.loc 1 626 0
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	jmp	.L152
.L150:
	.loc 1 628 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L152:
	.loc 1 631 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_token_no_padding
	movl	%eax, -8(%ebp)
	.loc 1 632 0
	movl	-8(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$62, %al
	je	.L153
	movl	-8(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$64, %al
	je	.L153
	.loc 1 634 0
	movl	-8(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$3, %al
	je	.L156
	.loc 1 636 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 638 0
	movl	$0, -24(%ebp)
	jmp	.L158
.L156:
	.loc 1 641 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	glue_header_name
	movl	%eax, -8(%ebp)
	.loc 1 642 0
	cmpl	$0, -8(%ebp)
	jne	.L153
	.loc 1 643 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L158
.L153:
	.loc 1 646 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L160
	.loc 1 648 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 649 0
	movl	$0, -24(%ebp)
	jmp	.L158
.L160:
	.loc 1 652 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L158:
	movl	-24(%ebp), %eax
	.loc 1 653 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	parse_include, .-parse_include
	.section	.rodata
	.align 4
.LC37:
	.string	"#include_next in primary source file"
	.align 4
.LC38:
	.string	"#import is obsolete, use an #ifndef wrapper in the header file"
.LC39:
	.string	"#include nested too deeply"
	.text
	.type	do_include_common, @function
do_include_common:
.LFB34:
	.loc 1 660 0
	pushl	%ebp
.LCFI52:
	movl	%esp, %ebp
.LCFI53:
	pushl	%esi
.LCFI54:
	pushl	%ebx
.LCFI55:
	subl	$32, %esp
.LCFI56:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 665 0
	cmpl	$1, 12(%ebp)
	jne	.L164
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L164
	.loc 1 667 0
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 668 0
	movl	$0, 12(%ebp)
	.loc 1 665 0
	jmp	.L167
.L164:
	.loc 1 670 0
	cmpl	$2, 12(%ebp)
	jne	.L167
	movl	8(%ebp), %eax
	movzbl	409(%eax), %eax
	testb	%al, %al
	je	.L167
	.loc 1 672 0
	movl	8(%ebp), %eax
	movb	$0, 409(%eax)
	.loc 1 673 0
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L167:
	.loc 1 677 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	parse_include
	movl	%eax, -12(%ebp)
	.loc 1 678 0
	cmpl	$0, -12(%ebp)
	je	.L176
	.loc 1 681 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	$199, %eax
	jbe	.L172
	.loc 1 682 0
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L176
.L172:
	.loc 1 685 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_eol
	.loc 1 687 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_rest_of_line
	.loc 1 688 0
	movl	8(%ebp), %eax
	movl	324(%eax), %eax
	testl	%eax, %eax
	je	.L174
	.loc 1 689 0
	movl	8(%ebp), %eax
	movl	324(%eax), %esi
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	56(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
.L174:
	.loc 1 691 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_execute_include@PLT
.L176:
	.loc 1 694 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE34:
	.size	do_include_common, .-do_include_common
	.type	do_include, @function
do_include:
.LFB35:
	.loc 1 699 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	subl	$8, %esp
.LCFI59:
	.loc 1 700 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_include_common
	.loc 1 701 0
	leave
	ret
.LFE35:
	.size	do_include, .-do_include
	.type	do_import, @function
do_import:
.LFB36:
	.loc 1 706 0
	pushl	%ebp
.LCFI60:
	movl	%esp, %ebp
.LCFI61:
	subl	$8, %esp
.LCFI62:
	.loc 1 707 0
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_include_common
	.loc 1 708 0
	leave
	ret
.LFE36:
	.size	do_import, .-do_import
	.type	do_include_next, @function
do_include_next:
.LFB37:
	.loc 1 713 0
	pushl	%ebp
.LCFI63:
	movl	%esp, %ebp
.LCFI64:
	subl	$8, %esp
.LCFI65:
	.loc 1 714 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_include_common
	.loc 1 715 0
	leave
	ret
.LFE37:
	.size	do_include_next, .-do_include_next
	.section	.rodata
	.align 4
.LC40:
	.string	"invalid flag \"%s\" in line directive"
	.text
	.type	read_flag, @function
read_flag:
.LFB38:
	.loc 1 725 0
	pushl	%ebp
.LCFI66:
	movl	%esp, %ebp
.LCFI67:
	pushl	%ebx
.LCFI68:
	subl	$36, %esp
.LCFI69:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 726 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_lex_token@PLT
	movl	%eax, -12(%ebp)
	.loc 1 728 0
	movl	-12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$58, %al
	jne	.L184
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$1, %eax
	jne	.L184
.LBB5:
	.loc 1 730 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -8(%ebp)
	.loc 1 732 0
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jbe	.L184
	cmpl	$4, -8(%ebp)
	ja	.L184
	cmpl	$4, -8(%ebp)
	jne	.L189
	cmpl	$3, 12(%ebp)
	jne	.L184
.L189:
	cmpl	$2, -8(%ebp)
	jne	.L191
	cmpl	$0, 12(%ebp)
	jne	.L184
.L191:
	.loc 1 735 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L193
.L184:
.LBE5:
	.loc 1 738 0
	movl	-12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	je	.L194
	.loc 1 739 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_as_text@PLT
	movl	%eax, 12(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L194:
	.loc 1 741 0
	movl	$0, -24(%ebp)
.L193:
	movl	-24(%ebp), %eax
	.loc 1 742 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	read_flag, .-read_flag
	.type	dequote_string, @function
dequote_string:
.LFB39:
	.loc 1 752 0
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
	.loc 1 753 0
	movl	16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_unaligned_alloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 754 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 755 0
	movl	12(%ebp), %edx
	movl	16(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 758 0
	jmp	.L204
.L199:
	.loc 1 760 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	leal	1(%edx), %eax
	movl	%eax, 12(%ebp)
	.loc 1 761 0
	cmpl	$92, -8(%ebp)
	je	.L200
	.loc 1 762 0
	movl	-8(%ebp), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -16(%ebp)
	jmp	.L198
.L200:
	.loc 1 764 0
	movl	$0, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_parse_escape@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -16(%ebp)
.L198:
.L204:
	.loc 1 758 0
	movl	12(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jb	.L199
	.loc 1 766 0
	movl	-16(%ebp), %eax
	movb	$0, (%eax)
	addl	$1, -16(%ebp)
	.loc 1 767 0
	movl	-20(%ebp), %eax
	.loc 1 768 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	dequote_string, .-dequote_string
	.type	strtoul_for_line, @function
strtoul_for_line:
.LFB40:
	.loc 1 778 0
	pushl	%ebp
.LCFI74:
	movl	%esp, %ebp
.LCFI75:
	subl	$20, %esp
.LCFI76:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 779 0
	movl	$0, -8(%ebp)
	.loc 1 781 0
	jmp	.L206
.L207:
	.loc 1 783 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -1(%ebp)
	addl	$1, 8(%ebp)
	.loc 1 784 0
	movzbl	-1(%ebp), %edx
	movl	_sch_istable@GOT(%ecx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L208
	.loc 1 785 0
	movl	$1, -20(%ebp)
	jmp	.L210
.L208:
	.loc 1 786 0
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -8(%ebp)
	.loc 1 787 0
	movzbl	-1(%ebp), %eax
	addl	-8(%ebp), %eax
	subl	$48, %eax
	movl	%eax, -8(%ebp)
.L206:
	.loc 1 781 0
	subl	$1, 12(%ebp)
	cmpl	$-1, 12(%ebp)
	jne	.L207
	.loc 1 789 0
	movl	16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 790 0
	movl	$0, -20(%ebp)
.L210:
	movl	-20(%ebp), %eax
	.loc 1 791 0
	leave
	ret
.LFE40:
	.size	strtoul_for_line, .-strtoul_for_line
	.section	.rodata
	.align 4
.LC41:
	.string	"\"%s\" after #line is not a positive integer"
.LC42:
	.string	"line number out of range"
.LC43:
	.string	"\"%s\" is not a valid filename"
	.text
	.type	do_line, @function
do_line:
.LFB41:
	.loc 1 799 0
	pushl	%ebp
.LCFI77:
	movl	%esp, %ebp
.LCFI78:
	pushl	%ebx
.LCFI79:
	subl	$52, %esp
.LCFI80:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 801 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 805 0
	movl	8(%ebp), %eax
	movzbl	423(%eax), %eax
	testb	%al, %al
	je	.L214
	movl	$2147483647, -24(%ebp)
	jmp	.L216
.L214:
	movl	$32767, -24(%ebp)
.L216:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 808 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_token@PLT
	movl	%eax, -16(%ebp)
	.loc 1 809 0
	movl	-16(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$58, %al
	jne	.L217
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	12(%eax), %ecx
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	strtoul_for_line
	testl	%eax, %eax
	je	.L219
.L217:
	.loc 1 813 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_as_text@PLT
	movl	%eax, 12(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 816 0
	jmp	.L229
.L219:
	.loc 1 819 0
	movl	8(%ebp), %eax
	movzbl	425(%eax), %eax
	testb	%al, %al
	je	.L221
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	je	.L223
	movl	-20(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jbe	.L221
.L223:
	.loc 1 820 0
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L221:
	.loc 1 822 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_token@PLT
	movl	%eax, -16(%ebp)
	.loc 1 823 0
	movl	-16(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$62, %al
	jne	.L225
	.loc 1 825 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dequote_string
	movl	%eax, -12(%ebp)
	.loc 1 827 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_eol
	jmp	.L227
.L225:
	.loc 1 829 0
	movl	-16(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	je	.L227
	.loc 1 831 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_as_text@PLT
	movl	%eax, 12(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 833 0
	jmp	.L229
.L227:
	.loc 1 836 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_rest_of_line
	.loc 1 837 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	movl	-20(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_do_file_change@PLT
.L229:
	.loc 1 839 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	do_line, .-do_line
	.section	.rodata
	.align 4
.LC44:
	.string	"\"%s\" after # is not a positive integer"
	.text
	.type	do_linemarker, @function
do_linemarker:
.LFB42:
	.loc 1 847 0
	pushl	%ebp
.LCFI81:
	movl	%esp, %ebp
.LCFI82:
	pushl	%ebx
.LCFI83:
	subl	$52, %esp
.LCFI84:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 849 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 851 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 852 0
	movl	$2, -12(%ebp)
	.loc 1 858 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_backup_tokens@PLT
	.loc 1 861 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_token@PLT
	movl	%eax, -24(%ebp)
	.loc 1 862 0
	movl	-24(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$58, %al
	jne	.L231
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	movl	12(%eax), %ecx
	leal	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	strtoul_for_line
	testl	%eax, %eax
	je	.L233
.L231:
	.loc 1 866 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_as_text@PLT
	movl	%eax, 12(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 868 0
	jmp	.L246
.L233:
	.loc 1 871 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_token@PLT
	movl	%eax, -24(%ebp)
	.loc 1 872 0
	movl	-24(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$62, %al
	jne	.L235
	.loc 1 874 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dequote_string
	movl	%eax, -20(%ebp)
	.loc 1 876 0
	movl	$0, -16(%ebp)
	.loc 1 877 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	read_flag
	movl	%eax, -8(%ebp)
	.loc 1 878 0
	cmpl	$1, -8(%ebp)
	jne	.L237
	.loc 1 880 0
	movl	$0, -12(%ebp)
	.loc 1 882 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_fake_include@PLT
	.loc 1 883 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	read_flag
	movl	%eax, -8(%ebp)
	jmp	.L239
.L237:
	.loc 1 885 0
	cmpl	$2, -8(%ebp)
	jne	.L239
	.loc 1 887 0
	movl	$1, -12(%ebp)
	.loc 1 888 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	read_flag
	movl	%eax, -8(%ebp)
.L239:
	.loc 1 890 0
	cmpl	$3, -8(%ebp)
	jne	.L241
	.loc 1 892 0
	movl	$1, -16(%ebp)
	.loc 1 893 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	read_flag
	movl	%eax, -8(%ebp)
	.loc 1 894 0
	cmpl	$4, -8(%ebp)
	jne	.L241
	.loc 1 895 0
	movl	$2, -16(%ebp)
.L241:
	.loc 1 898 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_eol
	jmp	.L244
.L235:
	.loc 1 900 0
	movl	-24(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	je	.L244
	.loc 1 902 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_as_text@PLT
	movl	%eax, 12(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 904 0
	jmp	.L246
.L244:
	.loc 1 907 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_rest_of_line
	.loc 1 908 0
	movl	-28(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_do_file_change@PLT
.L246:
	.loc 1 909 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	do_linemarker, .-do_linemarker
.globl _cpp_do_file_change
	.type	_cpp_do_file_change, @function
_cpp_do_file_change:
.LFB43:
	.loc 1 922 0
	pushl	%ebp
.LCFI85:
	movl	%esp, %ebp
.LCFI86:
	pushl	%ebx
.LCFI87:
	subl	$36, %esp
.LCFI88:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 923 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %ecx
	addl	$24, %ecx
	movl	20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	add_line_map@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 48(%eax)
	.loc 1 926 0
	movl	8(%ebp), %eax
	movl	320(%eax), %eax
	testl	%eax, %eax
	je	.L250
	.loc 1 927 0
	movl	8(%ebp), %eax
	movl	320(%eax), %edx
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L250:
	.loc 1 928 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	_cpp_do_file_change, .-_cpp_do_file_change
	.section	.rodata
.LC45:
	.string	"#%s "
	.text
	.type	do_diagnostic, @function
do_diagnostic:
.LFB44:
	.loc 1 937 0
	pushl	%ebp
.LCFI89:
	movl	%esp, %ebp
.LCFI90:
	pushl	%ebx
.LCFI91:
	subl	$20, %esp
.LCFI92:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 938 0
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	subl	$16, %eax
	movzwl	4(%eax), %eax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	subl	$16, %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_begin_message@PLT
	testl	%eax, %eax
	je	.L256
	.loc 1 942 0
	cmpl	$0, 16(%ebp)
	je	.L254
	.loc 1 943 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	4(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L254:
	.loc 1 944 0
	movl	8(%ebp), %eax
	movzbl	17(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 17(%eax)
	.loc 1 945 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_output_line@PLT
	.loc 1 946 0
	movl	8(%ebp), %eax
	movzbl	17(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 17(%eax)
.L256:
	.loc 1 948 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	do_diagnostic, .-do_diagnostic
	.type	do_error, @function
do_error:
.LFB45:
	.loc 1 953 0
	pushl	%ebp
.LCFI93:
	movl	%esp, %ebp
.LCFI94:
	subl	$24, %esp
.LCFI95:
	.loc 1 954 0
	movl	$1, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_diagnostic
	.loc 1 955 0
	leave
	ret
.LFE45:
	.size	do_error, .-do_error
	.type	do_warning, @function
do_warning:
.LFB46:
	.loc 1 960 0
	pushl	%ebp
.LCFI96:
	movl	%esp, %ebp
.LCFI97:
	subl	$24, %esp
.LCFI98:
	.loc 1 962 0
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_diagnostic
	.loc 1 963 0
	leave
	ret
.LFE46:
	.size	do_warning, .-do_warning
	.section	.rodata
.LC46:
	.string	"invalid #ident directive"
	.text
	.type	do_ident, @function
do_ident:
.LFB47:
	.loc 1 969 0
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
	.loc 1 970 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_token@PLT
	movl	%eax, -8(%ebp)
	.loc 1 972 0
	movl	-8(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$62, %al
	je	.L262
	.loc 1 973 0
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L264
.L262:
	.loc 1 974 0
	movl	8(%ebp), %eax
	movl	336(%eax), %eax
	testl	%eax, %eax
	je	.L264
	.loc 1 975 0
	movl	8(%ebp), %eax
	movl	336(%eax), %ecx
	movl	-8(%ebp), %edx
	addl	$8, %edx
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
.L264:
	.loc 1 977 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_eol
	.loc 1 978 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	do_ident, .-do_ident
	.type	lookup_pragma_entry, @function
lookup_pragma_entry:
.LFB48:
	.loc 1 987 0
	pushl	%ebp
.LCFI103:
	movl	%esp, %ebp
.LCFI104:
	.loc 1 988 0
	jmp	.L268
.L269:
	.loc 1 989 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L268:
	.loc 1 988 0
	cmpl	$0, 8(%ebp)
	je	.L270
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L269
.L270:
	.loc 1 991 0
	movl	8(%ebp), %eax
	.loc 1 992 0
	popl	%ebp
	ret
.LFE48:
	.size	lookup_pragma_entry, .-lookup_pragma_entry
	.type	insert_pragma_entry, @function
insert_pragma_entry:
.LFB49:
	.loc 1 1003 0
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
	.loc 1 1006 0
	movl	$16, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_aligned_alloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1008 0
	movl	-8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1009 0
	cmpl	$0, 20(%ebp)
	je	.L274
	.loc 1 1011 0
	movl	-8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 1012 0
	movl	-8(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%edx)
	jmp	.L276
.L274:
	.loc 1 1016 0
	movl	-8(%ebp), %eax
	movl	$1, 8(%eax)
	.loc 1 1017 0
	movl	-8(%ebp), %eax
	movl	$0, 12(%eax)
.L276:
	.loc 1 1020 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1021 0
	movl	12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1022 0
	movl	-8(%ebp), %eax
	.loc 1 1023 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	insert_pragma_entry, .-insert_pragma_entry
	.section	.rodata
	.align 4
.LC47:
	.string	"registering \"%s\" as both a pragma and a pragma namespace"
	.align 4
.LC48:
	.string	"#pragma %s %s is already registered"
	.align 4
.LC49:
	.string	"#pragma %s is already registered"
	.text
.globl cpp_register_pragma
	.type	cpp_register_pragma, @function
cpp_register_pragma:
.LFB50:
	.loc 1 1034 0
	pushl	%ebp
.LCFI109:
	movl	%esp, %ebp
.LCFI110:
	pushl	%edi
.LCFI111:
	pushl	%ebx
.LCFI112:
	subl	$48, %esp
.LCFI113:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1035 0
	movl	8(%ebp), %eax
	addl	$312, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1039 0
	cmpl	$0, 20(%ebp)
	jne	.L279
	.loc 1 1040 0
	call	abort@PLT
.L279:
	.loc 1 1042 0
	cmpl	$0, 12(%ebp)
	je	.L281
	.loc 1 1044 0
	movl	12(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -28(%ebp)
	movl	$0, %eax
	cld
	movl	-28(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	12(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_lookup@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1045 0
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_pragma_entry
	movl	%eax, -16(%ebp)
	.loc 1 1046 0
	cmpl	$0, -16(%ebp)
	jne	.L283
	.loc 1 1047 0
	movl	$0, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_pragma_entry
	movl	%eax, -16(%ebp)
	jmp	.L285
.L283:
	.loc 1 1048 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L286
.L285:
	.loc 1 1050 0
	movl	-16(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
.L281:
	.loc 1 1054 0
	movl	16(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -32(%ebp)
	movl	$0, %eax
	cld
	movl	-32(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	16(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_lookup@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1055 0
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_pragma_entry
	movl	%eax, -16(%ebp)
	.loc 1 1056 0
	cmpl	$0, -16(%ebp)
	je	.L287
	.loc 1 1058 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L289
.L286:
	.loc 1 1060 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L294
.L289:
	.loc 1 1063 0
	cmpl	$0, 12(%ebp)
	je	.L291
	.loc 1 1064 0
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L294
.L291:
	.loc 1 1067 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L294
.L287:
	.loc 1 1070 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_pragma_entry
.L294:
	.loc 1 1071 0
	addl	$48, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE50:
	.size	cpp_register_pragma, .-cpp_register_pragma
	.section	.rodata
.LC50:
	.string	"once"
.LC51:
	.string	"poison"
.LC52:
	.string	"GCC"
.LC53:
	.string	"system_header"
.LC54:
	.string	"dependency"
	.text
.globl _cpp_init_internal_pragmas
	.type	_cpp_init_internal_pragmas, @function
_cpp_init_internal_pragmas:
.LFB51:
	.loc 1 1077 0
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
	.loc 1 1079 0
	leal	do_pragma_once@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_register_pragma@PLT
	.loc 1 1082 0
	leal	do_pragma_poison@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_register_pragma@PLT
	.loc 1 1083 0
	leal	do_pragma_system_header@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_register_pragma@PLT
	.loc 1 1084 0
	leal	do_pragma_dependency@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_register_pragma@PLT
	.loc 1 1085 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	_cpp_init_internal_pragmas, .-_cpp_init_internal_pragmas
	.type	do_pragma, @function
do_pragma:
.LFB52:
	.loc 1 1095 0
	pushl	%ebp
.LCFI118:
	movl	%esp, %ebp
.LCFI119:
	pushl	%ebx
.LCFI120:
	subl	$36, %esp
.LCFI121:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1096 0
	movl	$0, -16(%ebp)
	.loc 1 1098 0
	movl	$1, -8(%ebp)
	.loc 1 1100 0
	movl	8(%ebp), %eax
	movzbl	17(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 17(%eax)
	.loc 1 1102 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_token@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1103 0
	movl	-12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$57, %al
	jne	.L298
	.loc 1 1105 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	312(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_pragma_entry
	movl	%eax, -16(%ebp)
	.loc 1 1106 0
	cmpl	$0, -16(%ebp)
	je	.L298
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L298
	.loc 1 1108 0
	movl	$2, -8(%ebp)
	.loc 1 1109 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_token@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1110 0
	movl	-12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$57, %al
	jne	.L302
	.loc 1 1111 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_pragma_entry
	movl	%eax, -16(%ebp)
	jmp	.L298
.L302:
	.loc 1 1113 0
	movl	$0, -16(%ebp)
.L298:
	.loc 1 1117 0
	cmpl	$0, -16(%ebp)
	je	.L304
	.loc 1 1118 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	jmp	.L306
.L304:
	.loc 1 1119 0
	movl	8(%ebp), %eax
	movl	340(%eax), %eax
	testl	%eax, %eax
	je	.L306
	.loc 1 1121 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_backup_tokens@PLT
	.loc 1 1122 0
	movl	8(%ebp), %eax
	movl	340(%eax), %edx
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L306:
	.loc 1 1125 0
	movl	8(%ebp), %eax
	movzbl	17(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 17(%eax)
	.loc 1 1126 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	do_pragma, .-do_pragma
	.section	.rodata
.LC55:
	.string	"#pragma once is obsolete"
.LC56:
	.string	"#pragma once in main file"
	.text
	.type	do_pragma_once, @function
do_pragma_once:
.LFB53:
	.loc 1 1132 0
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
	.loc 1 1133 0
	movl	8(%ebp), %eax
	movzbl	404(%eax), %eax
	testb	%al, %al
	je	.L310
	.loc 1 1134 0
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L310:
	.loc 1 1136 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L312
	.loc 1 1137 0
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L314
.L312:
	.loc 1 1139 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	_cpp_never_reread@PLT
.L314:
	.loc 1 1141 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_eol
	.loc 1 1142 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	do_pragma_once, .-do_pragma_once
	.section	.rodata
	.align 4
.LC57:
	.string	"invalid #pragma GCC poison directive"
.LC58:
	.string	"poisoning existing macro \"%s\""
	.text
	.type	do_pragma_poison, @function
do_pragma_poison:
.LFB54:
	.loc 1 1149 0
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
	.loc 1 1153 0
	movl	8(%ebp), %eax
	movb	$1, 16(%eax)
	jmp	.L327
.L317:
.L327:
	.loc 1 1156 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_lex_token@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1157 0
	movl	-12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	je	.L318
	.loc 1 1159 0
	movl	-12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$57, %al
	je	.L320
	.loc 1 1161 0
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 1162 0
	jmp	.L318
.L320:
	.loc 1 1165 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1166 0
	movl	-8(%ebp), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L317
	.loc 1 1169 0
	movl	-8(%ebp), %eax
	movzbl	16(%eax), %eax
	cmpb	$1, %al
	jne	.L324
	.loc 1 1170 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L324:
	.loc 1 1172 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_free_definition@PLT
	.loc 1 1173 0
	movl	-8(%ebp), %eax
	movzbl	17(%eax), %eax
	movl	%eax, %edx
	orl	$10, %edx
	movl	-8(%ebp), %eax
	movb	%dl, 17(%eax)
	.loc 1 1174 0
	jmp	.L317
.L318:
	.loc 1 1175 0
	movl	8(%ebp), %eax
	movb	$0, 16(%eax)
	.loc 1 1176 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	do_pragma_poison, .-do_pragma_poison
	.section	.rodata
	.align 4
.LC59:
	.string	"#pragma system_header ignored outside include file"
	.text
	.type	do_pragma_system_header, @function
do_pragma_system_header:
.LFB55:
	.loc 1 1187 0
	pushl	%ebp
.LCFI130:
	movl	%esp, %ebp
.LCFI131:
	pushl	%ebx
.LCFI132:
	subl	$36, %esp
.LCFI133:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1188 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1190 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L329
	.loc 1 1191 0
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L332
.L329:
	.loc 1 1195 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_eol
	.loc 1 1196 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_rest_of_line
	.loc 1 1197 0
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_make_system_header@PLT
.L332:
	.loc 1 1199 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	do_pragma_system_header, .-do_pragma_system_header
	.section	.rodata
.LC60:
	.string	"cannot find source %s"
.LC61:
	.string	"current file is older than %s"
	.text
	.type	do_pragma_dependency, @function
do_pragma_dependency:
.LFB56:
	.loc 1 1207 0
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
	.loc 1 1211 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	parse_include
	movl	%eax, -12(%ebp)
	.loc 1 1212 0
	cmpl	$0, -12(%ebp)
	je	.L340
	.loc 1 1215 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_compare_file_date@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1216 0
	cmpl	$0, -8(%ebp)
	jns	.L336
	.loc 1 1217 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_as_text@PLT
	movl	%eax, 12(%esp)
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L340
.L336:
	.loc 1 1219 0
	cmpl	$0, -8(%ebp)
	jle	.L340
	.loc 1 1221 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_as_text@PLT
	movl	%eax, 12(%esp)
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 1223 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_token@PLT
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	je	.L340
	.loc 1 1225 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_backup_tokens@PLT
	.loc 1 1226 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_diagnostic
.L340:
	.loc 1 1229 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	do_pragma_dependency, .-do_pragma_dependency
	.type	get_token_no_padding, @function
get_token_no_padding:
.LFB57:
	.loc 1 1235 0
	pushl	%ebp
.LCFI138:
	movl	%esp, %ebp
.LCFI139:
	pushl	%ebx
.LCFI140:
	subl	$20, %esp
.LCFI141:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.L342:
.LBB6:
	.loc 1 1238 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_token@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1239 0
	movl	-8(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$67, %al
	je	.L342
	.loc 1 1240 0
	movl	-8(%ebp), %eax
.LBE6:
	.loc 1 1242 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	get_token_no_padding, .-get_token_no_padding
	.type	get__Pragma_string, @function
get__Pragma_string:
.LFB58:
	.loc 1 1249 0
	pushl	%ebp
.LCFI142:
	movl	%esp, %ebp
.LCFI143:
	subl	$24, %esp
.LCFI144:
	.loc 1 1252 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_token_no_padding
	movzbl	6(%eax), %eax
	cmpb	$22, %al
	je	.L347
	.loc 1 1253 0
	movl	$0, -20(%ebp)
	jmp	.L349
.L347:
	.loc 1 1255 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_token_no_padding
	movl	%eax, -4(%ebp)
	.loc 1 1256 0
	movl	-4(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$62, %al
	je	.L350
	movl	-4(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$63, %al
	je	.L350
	.loc 1 1257 0
	movl	$0, -20(%ebp)
	jmp	.L349
.L350:
	.loc 1 1259 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_token_no_padding
	movzbl	6(%eax), %eax
	cmpb	$23, %al
	je	.L353
	.loc 1 1260 0
	movl	$0, -20(%ebp)
	jmp	.L349
.L353:
	.loc 1 1262 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
.L349:
	movl	-20(%ebp), %eax
	.loc 1 1263 0
	leave
	ret
.LFE58:
	.size	get__Pragma_string, .-get__Pragma_string
	.type	destringize_and_run, @function
destringize_and_run:
.LFB59:
	.loc 1 1271 0
	pushl	%ebp
.LCFI145:
	movl	%esp, %ebp
.LCFI146:
	pushl	%ebx
.LCFI147:
	subl	$68, %esp
.LCFI148:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1271 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 1275 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	16(%esp), %ecx
	movl	%ecx, -48(%ebp)
	movl	-48(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1276 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	-36(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L357
.L358:
	.loc 1 1279 0
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$92, %al
	jne	.L359
	movl	-36(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$92, %al
	je	.L361
	movl	-36(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$34, %al
	jne	.L359
.L361:
	.loc 1 1280 0
	addl	$1, -36(%ebp)
.L359:
	.loc 1 1281 0
	movl	-36(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-28(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -28(%ebp)
	addl	$1, -36(%ebp)
.L357:
	.loc 1 1276 0
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jb	.L358
	.loc 1 1283 0
	movl	-28(%ebp), %eax
	movb	$0, (%eax)
.LBB7:
	.loc 1 1294 0
	movl	-40(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1295 0
	movl	-40(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1296 0
	movl	-40(%ebp), %eax
	movl	144(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1298 0
	movl	$28, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, 100(%eax)
	.loc 1 1299 0
	movl	-40(%ebp), %eax
	movl	100(%eax), %eax
	movl	$0, 20(%eax)
	.loc 1 1300 0
	movl	-40(%ebp), %eax
	movl	100(%eax), %eax
	movl	$0, 4(%eax)
	.loc 1 1301 0
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$11, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	run_directive
	.loc 1 1302 0
	movl	-40(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1303 0
	movl	-40(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 100(%edx)
	.loc 1 1304 0
	movl	-40(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 124(%edx)
	.loc 1 1305 0
	movl	-40(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 144(%edx)
	.loc 1 1306 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	leal	-1(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 52(%eax)
.LBE7:
	.loc 1 1322 0
	movl	-40(%ebp), %eax
	movl	316(%eax), %eax
	testl	%eax, %eax
	je	.L366
	.loc 1 1323 0
	movl	-40(%ebp), %eax
	movl	316(%eax), %edx
	movl	-40(%ebp), %eax
	movl	124(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L366:
	.loc 1 1324 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L367
	call	__stack_chk_fail_local
.L367:
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE59:
	.size	destringize_and_run, .-destringize_and_run
	.section	.rodata
	.align 4
.LC62:
	.string	"_Pragma takes a parenthesized string literal"
	.text
.globl _cpp_do__Pragma
	.type	_cpp_do__Pragma, @function
_cpp_do__Pragma:
.LFB60:
	.loc 1 1330 0
	pushl	%ebp
.LCFI149:
	movl	%esp, %ebp
.LCFI150:
	pushl	%ebx
.LCFI151:
	subl	$36, %esp
.LCFI152:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1331 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get__Pragma_string
	movl	%eax, -8(%ebp)
	.loc 1 1333 0
	cmpl	$0, -8(%ebp)
	je	.L369
	.loc 1 1334 0
	movl	-8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	destringize_and_run
	jmp	.L372
.L369:
	.loc 1 1336 0
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L372:
	.loc 1 1338 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE60:
	.size	_cpp_do__Pragma, .-_cpp_do__Pragma
	.type	do_sccs, @function
do_sccs:
.LFB61:
	.loc 1 1344 0
	pushl	%ebp
.LCFI153:
	movl	%esp, %ebp
.LCFI154:
	.loc 1 1345 0
	popl	%ebp
	ret
.LFE61:
	.size	do_sccs, .-do_sccs
	.type	do_ifdef, @function
do_ifdef:
.LFB62:
	.loc 1 1351 0
	pushl	%ebp
.LCFI155:
	movl	%esp, %ebp
.LCFI156:
	subl	$40, %esp
.LCFI157:
	.loc 1 1352 0
	movl	$1, -8(%ebp)
	.loc 1 1354 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	testb	%al, %al
	jne	.L376
.LBB8:
	.loc 1 1356 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lex_macro_node
	movl	%eax, -4(%ebp)
	.loc 1 1358 0
	cmpl	$0, -4(%ebp)
	je	.L376
	.loc 1 1360 0
	movl	-4(%ebp), %eax
	movzbl	16(%eax), %eax
	cmpb	$1, %al
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 1361 0
	movl	-4(%ebp), %eax
	movzbl	16(%eax), %eax
	cmpb	$1, %al
	jne	.L379
	movl	-4(%ebp), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L379
	movl	-4(%ebp), %eax
	movl	20(%eax), %edx
	movzbl	18(%edx), %eax
	orl	$8, %eax
	movb	%al, 18(%edx)
.L379:
	.loc 1 1362 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_eol
.L376:
.LBE8:
	.loc 1 1366 0
	movl	$0, 12(%esp)
	movl	$3, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_conditional
	.loc 1 1367 0
	leave
	ret
.LFE62:
	.size	do_ifdef, .-do_ifdef
	.type	do_ifndef, @function
do_ifndef:
.LFB63:
	.loc 1 1373 0
	pushl	%ebp
.LCFI158:
	movl	%esp, %ebp
.LCFI159:
	subl	$40, %esp
.LCFI160:
	.loc 1 1374 0
	movl	$1, -8(%ebp)
	.loc 1 1375 0
	movl	$0, -4(%ebp)
	.loc 1 1377 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	testb	%al, %al
	jne	.L384
	.loc 1 1379 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lex_macro_node
	movl	%eax, -4(%ebp)
	.loc 1 1381 0
	cmpl	$0, -4(%ebp)
	je	.L384
	.loc 1 1383 0
	movl	-4(%ebp), %eax
	movzbl	16(%eax), %eax
	cmpb	$1, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 1384 0
	movl	-4(%ebp), %eax
	movzbl	16(%eax), %eax
	cmpb	$1, %al
	jne	.L387
	movl	-4(%ebp), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L387
	movl	-4(%ebp), %eax
	movl	20(%eax), %edx
	movzbl	18(%edx), %eax
	orl	$8, %eax
	movb	%al, 18(%edx)
.L387:
	.loc 1 1385 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_eol
.L384:
	.loc 1 1389 0
	movl	-4(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_conditional
	.loc 1 1390 0
	leave
	ret
.LFE63:
	.size	do_ifndef, .-do_ifndef
	.type	do_if, @function
do_if:
.LFB64:
	.loc 1 1400 0
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
	.loc 1 1401 0
	movl	$1, -8(%ebp)
	.loc 1 1403 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	testb	%al, %al
	jne	.L392
	.loc 1 1404 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_parse_expr@PLT
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
.L392:
	.loc 1 1406 0
	movl	8(%ebp), %eax
	movl	116(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_conditional
	.loc 1 1407 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE64:
	.size	do_if, .-do_if
	.section	.rodata
.LC63:
	.string	"#else without #if"
.LC64:
	.string	"#else after #else"
.LC65:
	.string	"the conditional began here"
	.text
	.type	do_else, @function
do_else:
.LFB65:
	.loc 1 1415 0
	pushl	%ebp
.LCFI165:
	movl	%esp, %ebp
.LCFI166:
	pushl	%ebx
.LCFI167:
	subl	$36, %esp
.LCFI168:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1416 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1417 0
	movl	-12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1419 0
	cmpl	$0, -8(%ebp)
	jne	.L396
	.loc 1 1420 0
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L403
.L396:
	.loc 1 1423 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	$5, %eax
	jne	.L399
	.loc 1 1425 0
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 1426 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error_with_line@PLT
.L399:
	.loc 1 1429 0
	movl	-8(%ebp), %eax
	movl	$5, 16(%eax)
	.loc 1 1432 0
	movl	-8(%ebp), %eax
	movzbl	12(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 10(%eax)
	.loc 1 1433 0
	movl	-8(%ebp), %eax
	movb	$1, 12(%eax)
	.loc 1 1436 0
	movl	-8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 1439 0
	movl	-8(%ebp), %eax
	movzbl	13(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L403
	movl	8(%ebp), %eax
	movzbl	413(%eax), %eax
	testb	%al, %al
	je	.L403
	.loc 1 1440 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_eol
.L403:
	.loc 1 1442 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE65:
	.size	do_else, .-do_else
	.section	.rodata
.LC66:
	.string	"#elif without #if"
.LC67:
	.string	"#elif after #else"
	.text
	.type	do_elif, @function
do_elif:
.LFB66:
	.loc 1 1449 0
	pushl	%ebp
.LCFI169:
	movl	%esp, %ebp
.LCFI170:
	pushl	%ebx
.LCFI171:
	subl	$36, %esp
.LCFI172:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1450 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1451 0
	movl	-12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1453 0
	cmpl	$0, -8(%ebp)
	jne	.L405
	.loc 1 1454 0
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L413
.L405:
	.loc 1 1457 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	$5, %eax
	jne	.L408
	.loc 1 1459 0
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 1460 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error_with_line@PLT
.L408:
	.loc 1 1463 0
	movl	-8(%ebp), %eax
	movl	$9, 16(%eax)
	.loc 1 1467 0
	movl	-8(%ebp), %eax
	movzbl	12(%eax), %eax
	testb	%al, %al
	je	.L410
	.loc 1 1468 0
	movl	8(%ebp), %eax
	movb	$1, 10(%eax)
	jmp	.L412
.L410:
	.loc 1 1471 0
	movl	8(%ebp), %eax
	movb	$0, 10(%eax)
	.loc 1 1472 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_parse_expr@PLT
	xorl	$1, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 10(%eax)
	.loc 1 1473 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	testb	%al, %al
	sete	%dl
	movl	-8(%ebp), %eax
	movb	%dl, 12(%eax)
.L412:
	.loc 1 1477 0
	movl	-8(%ebp), %eax
	movl	$0, 8(%eax)
.L413:
	.loc 1 1479 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE66:
	.size	do_elif, .-do_elif
	.section	.rodata
.LC68:
	.string	"#endif without #if"
	.text
	.type	do_endif, @function
do_endif:
.LFB67:
	.loc 1 1485 0
	pushl	%ebp
.LCFI173:
	movl	%esp, %ebp
.LCFI174:
	pushl	%ebx
.LCFI175:
	subl	$36, %esp
.LCFI176:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1486 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1487 0
	movl	-20(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1489 0
	cmpl	$0, -16(%ebp)
	jne	.L415
	.loc 1 1490 0
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L427
.L415:
	.loc 1 1494 0
	movl	-16(%ebp), %eax
	movzbl	13(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L418
	movl	8(%ebp), %eax
	movzbl	413(%eax), %eax
	testb	%al, %al
	je	.L418
	.loc 1 1495 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_eol
.L418:
	.loc 1 1498 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L421
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L421
	.loc 1 1500 0
	movl	8(%ebp), %eax
	movb	$1, 120(%eax)
	.loc 1 1501 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 112(%eax)
.L421:
	.loc 1 1504 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 1505 0
	movl	-16(%ebp), %eax
	movzbl	13(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 10(%eax)
.LBB9:
	.loc 1 1506 0
	movl	8(%ebp), %eax
	addl	$268, %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jae	.L424
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-8(%ebp), %eax
	jbe	.L424
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L427
.L424:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L427:
.LBE9:
	.loc 1 1508 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE67:
	.size	do_endif, .-do_endif
	.type	push_conditional, @function
push_conditional:
.LFB68:
	.loc 1 1520 0
	pushl	%ebp
.LCFI177:
	movl	%esp, %ebp
.LCFI178:
	pushl	%esi
.LCFI179:
	pushl	%ebx
.LCFI180:
	subl	$48, %esp
.LCFI181:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1522 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.LBB10:
	.loc 1 1524 0
	movl	8(%ebp), %eax
	addl	$268, %eax
	movl	%eax, -28(%ebp)
.LBB11:
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	$20, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-20(%ebp), %eax
	jge	.L429
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L429:
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE11:
.LBB12:
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L431
	movl	-16(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L431:
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L433
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.L433:
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
.LBE12:
.LBE10:
	movl	%eax, -36(%ebp)
	.loc 1 1525 0
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1526 0
	movl	-32(%ebp), %eax
	movl	28(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1527 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	testb	%al, %al
	jne	.L435
	cmpl	$0, 12(%ebp)
	jne	.L437
.L435:
	movl	$1, -44(%ebp)
	jmp	.L438
.L437:
	movl	$0, -44(%ebp)
.L438:
	movzbl	-44(%ebp), %edx
	movl	-36(%ebp), %eax
	movb	%dl, 12(%eax)
	.loc 1 1528 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	testb	%al, %al
	setne	%dl
	movl	-36(%ebp), %eax
	movb	%dl, 13(%eax)
	.loc 1 1529 0
	movl	-36(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 1531 0
	movl	8(%ebp), %eax
	movzbl	120(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L439
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	testl	%eax, %eax
	jne	.L439
	.loc 1 1532 0
	movl	-36(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 1531 0
	jmp	.L442
.L439:
	.loc 1 1534 0
	movl	-36(%ebp), %eax
	movl	$0, 8(%eax)
.L442:
	.loc 1 1536 0
	movl	12(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 10(%eax)
	.loc 1 1537 0
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 1538 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE68:
	.size	push_conditional, .-push_conditional
	.section	.rodata
.LC69:
	.string	"missing '(' after predicate"
	.align 4
.LC70:
	.string	"missing ')' to complete answer"
.LC71:
	.string	"predicate's answer is empty"
	.text
	.type	parse_answer, @function
parse_answer:
.LFB69:
	.loc 1 1549 0
	pushl	%ebp
.LCFI182:
	movl	%esp, %ebp
.LCFI183:
	pushl	%ebx
.LCFI184:
	subl	$52, %esp
.LCFI185:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1556 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_token@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1559 0
	movl	-28(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$22, %al
	je	.L445
	.loc 1 1563 0
	cmpl	$4, 16(%ebp)
	jne	.L447
	.loc 1 1565 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_backup_tokens@PLT
	.loc 1 1566 0
	movl	$0, -40(%ebp)
	jmp	.L449
.L447:
	.loc 1 1570 0
	cmpl	$17, 16(%ebp)
	jne	.L450
	movl	-28(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	jne	.L450
	.loc 1 1571 0
	movl	$0, -40(%ebp)
	jmp	.L449
.L450:
	.loc 1 1573 0
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 1574 0
	movl	$1, -40(%ebp)
	jmp	.L449
.L445:
	.loc 1 1577 0
	movl	$0, -20(%ebp)
.L453:
.LBB13:
	.loc 1 1580 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_token@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1583 0
	movl	-12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$23, %al
	je	.L454
	.loc 1 1586 0
	movl	-12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	jne	.L456
	.loc 1 1588 0
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 1589 0
	movl	$1, -40(%ebp)
	jmp	.L449
.L456:
	.loc 1 1593 0
	movl	-20(%ebp), %eax
	sall	$4, %eax
	addl	$24, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1595 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	8(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-16(%ebp), %eax
	jae	.L458
	.loc 1 1596 0
	movl	8(%ebp), %eax
	addl	$60, %eax
	movl	$24, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_extend_buff@PLT
.L458:
	.loc 1 1598 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	8(%eax), %eax
	leal	8(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1599 0
	movl	-8(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12(%ecx)
	.loc 1 1602 0
	cmpl	$0, -20(%ebp)
	jne	.L460
	.loc 1 1603 0
	movl	-8(%ebp), %eax
	movzbl	7(%eax), %eax
	movl	%eax, %edx
	andl	$-2, %edx
	movl	-8(%ebp), %eax
	movb	%dl, 7(%eax)
.L460:
.LBE13:
	.loc 1 1577 0
	addl	$1, -20(%ebp)
	.loc 1 1604 0
	jmp	.L453
.L454:
	.loc 1 1606 0
	cmpl	$0, -20(%ebp)
	jne	.L462
	.loc 1 1608 0
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 1609 0
	movl	$1, -40(%ebp)
	jmp	.L449
.L462:
	.loc 1 1612 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1613 0
	movl	-24(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1614 0
	movl	-24(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1615 0
	movl	12(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1617 0
	movl	$0, -40(%ebp)
.L449:
	movl	-40(%ebp), %eax
	.loc 1 1618 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE69:
	.size	parse_answer, .-parse_answer
	.section	.rodata
.LC72:
	.string	"assertion without predicate"
	.align 4
.LC73:
	.string	"predicate must be an identifier"
	.text
	.type	parse_assertion, @function
parse_assertion:
.LFB70:
	.loc 1 1628 0
	pushl	%ebp
.LCFI186:
	movl	%esp, %ebp
.LCFI187:
	pushl	%edi
.LCFI188:
	pushl	%esi
.LCFI189:
	pushl	%ebx
.LCFI190:
	subl	$60, %esp
.LCFI191:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1628 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 1629 0
	movl	$0, -32(%ebp)
	.loc 1 1633 0
	movl	-48(%ebp), %eax
	movzbl	17(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movb	%dl, 17(%eax)
	.loc 1 1635 0
	movl	-52(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1636 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_token@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1637 0
	movl	-28(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	jne	.L466
	.loc 1 1638 0
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L468
.L466:
	.loc 1 1639 0
	movl	-28(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$57, %al
	je	.L469
	.loc 1 1640 0
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L468
.L469:
	.loc 1 1641 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	parse_answer
	testl	%eax, %eax
	jne	.L468
.LBB14:
	.loc 1 1643 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1644 0
	movl	-24(%ebp), %eax
	addl	$1, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	12(%esp), %edx
	movl	%edx, -56(%ebp)
	movl	-56(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1647 0
	movl	-20(%ebp), %eax
	movb	$35, (%eax)
	.loc 1 1648 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	-24(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 1649 0
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_lookup@PLT
	movl	%eax, -32(%ebp)
.L468:
.LBE14:
	.loc 1 1652 0
	movl	-48(%ebp), %eax
	movzbl	17(%eax), %eax
	leal	-1(%eax), %edx
	movl	-48(%ebp), %eax
	movb	%dl, 17(%eax)
	.loc 1 1653 0
	movl	-32(%ebp), %eax
	.loc 1 1654 0
	movl	-16(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L473
	call	__stack_chk_fail_local
.L473:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE70:
	.size	parse_assertion, .-parse_assertion
	.type	find_answer, @function
find_answer:
.LFB71:
	.loc 1 1662 0
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
	.loc 1 1666 0
	movl	8(%ebp), %eax
	addl	$20, %eax
	movl	%eax, -12(%ebp)
	jmp	.L475
.L476:
.LBB15:
	.loc 1 1668 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1670 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L477
	.loc 1 1672 0
	movl	$0, -16(%ebp)
	jmp	.L479
.L480:
	.loc 1 1673 0
	movl	12(%ebp), %edx
	addl	$8, %edx
	movl	-16(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %ecx
	movl	-8(%ebp), %edx
	addl	$8, %edx
	movl	-16(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_cpp_equiv_tokens@PLT
	testl	%eax, %eax
	je	.L481
	.loc 1 1672 0
	addl	$1, -16(%ebp)
.L479:
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-16(%ebp), %eax
	ja	.L480
.L481:
	.loc 1 1676 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L483
.L477:
.LBE15:
	.loc 1 1666 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L475:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L476
.L483:
	.loc 1 1681 0
	movl	-12(%ebp), %eax
	.loc 1 1682 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE71:
	.size	find_answer, .-find_answer
.globl _cpp_test_assertion
	.type	_cpp_test_assertion, @function
_cpp_test_assertion:
.LFB72:
	.loc 1 1691 0
	pushl	%ebp
.LCFI196:
	movl	%esp, %ebp
.LCFI197:
	pushl	%ebx
.LCFI198:
	subl	$36, %esp
.LCFI199:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1695 0
	movl	$4, 8(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	parse_assertion
	movl	%eax, -8(%ebp)
	.loc 1 1699 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1701 0
	cmpl	$0, -8(%ebp)
	je	.L486
	.loc 1 1702 0
	movl	-8(%ebp), %eax
	movzbl	16(%eax), %eax
	cmpb	$2, %al
	jne	.L488
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L490
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_answer
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L488
.L490:
	movl	$1, -24(%ebp)
	jmp	.L492
.L488:
	movl	$0, -24(%ebp)
.L492:
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L493
.L486:
	.loc 1 1704 0
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	subl	$16, %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	jne	.L493
	.loc 1 1705 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_backup_tokens@PLT
.L493:
	.loc 1 1708 0
	cmpl	$0, -8(%ebp)
	sete	%al
	movzbl	%al, %eax
	.loc 1 1709 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE72:
	.size	_cpp_test_assertion, .-_cpp_test_assertion
	.section	.rodata
.LC74:
	.string	"\"%s\" re-asserted"
	.text
	.type	do_assert, @function
do_assert:
.LFB73:
	.loc 1 1715 0
	pushl	%ebp
.LCFI200:
	movl	%esp, %ebp
.LCFI201:
	pushl	%ebx
.LCFI202:
	subl	$36, %esp
.LCFI203:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1719 0
	movl	$16, 8(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	parse_assertion
	movl	%eax, -8(%ebp)
	.loc 1 1720 0
	cmpl	$0, -8(%ebp)
	je	.L503
	.loc 1 1724 0
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1725 0
	movl	-8(%ebp), %eax
	movzbl	16(%eax), %eax
	cmpb	$2, %al
	jne	.L499
	.loc 1 1727 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_answer
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L501
	.loc 1 1729 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, 12(%esp)
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 1731 0
	jmp	.L503
.L501:
	.loc 1 1733 0
	movl	-12(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	20(%edx), %edx
	movl	%edx, (%eax)
.L499:
	.loc 1 1736 0
	movl	-8(%ebp), %eax
	movb	$2, 16(%eax)
	.loc 1 1737 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1738 0
	movl	8(%ebp), %eax
	movl	60(%eax), %ecx
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	addl	$8, %eax
	movl	%eax, 8(%ecx)
	.loc 1 1741 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_eol
.L503:
	.loc 1 1743 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE73:
	.size	do_assert, .-do_assert
	.type	do_unassert, @function
do_unassert:
.LFB74:
	.loc 1 1749 0
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
	.loc 1 1753 0
	movl	$17, 8(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	parse_assertion
	movl	%eax, -16(%ebp)
	.loc 1 1755 0
	cmpl	$0, -16(%ebp)
	je	.L514
	movl	-16(%ebp), %eax
	movzbl	16(%eax), %eax
	cmpb	$2, %al
	jne	.L514
	.loc 1 1757 0
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	je	.L508
.LBB16:
	.loc 1 1759 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	find_answer
	movl	%eax, -12(%ebp)
	.loc 1 1762 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1763 0
	cmpl	$0, -8(%ebp)
	je	.L510
	.loc 1 1764 0
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
.L510:
	.loc 1 1767 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L512
	.loc 1 1768 0
	movl	-16(%ebp), %eax
	movb	$0, 16(%eax)
.L512:
	.loc 1 1770 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_eol
	jmp	.L514
.L508:
.LBE16:
	.loc 1 1773 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_free_definition@PLT
.L514:
	.loc 1 1777 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE74:
	.size	do_unassert, .-do_unassert
.globl cpp_define
	.type	cpp_define, @function
cpp_define:
.LFB75:
	.loc 1 1789 0
	pushl	%ebp
.LCFI208:
	movl	%esp, %ebp
.LCFI209:
	pushl	%edi
.LCFI210:
	pushl	%esi
.LCFI211:
	pushl	%ebx
.LCFI212:
	subl	$60, %esp
.LCFI213:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1789 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 1797 0
	movl	-36(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -44(%ebp)
	movl	$0, %eax
	cld
	movl	-44(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1798 0
	movl	-20(%ebp), %eax
	addl	$3, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	16(%esp), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %ecx
	movl	%ecx, -28(%ebp)
	.loc 1 1799 0
	movl	-28(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	-20(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 1801 0
	movl	$61, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1802 0
	cmpl	$0, -24(%ebp)
	je	.L516
	.loc 1 1803 0
	movl	-24(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	addl	-28(%ebp), %eax
	movb	$32, (%eax)
	jmp	.L518
.L516:
	.loc 1 1806 0
	movl	-20(%ebp), %eax
	addl	-28(%ebp), %eax
	movb	$32, (%eax)
	addl	$1, -20(%ebp)
	.loc 1 1807 0
	movl	-20(%ebp), %eax
	addl	-28(%ebp), %eax
	movb	$49, (%eax)
	addl	$1, -20(%ebp)
.L518:
	.loc 1 1809 0
	movl	-20(%ebp), %eax
	addl	-28(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 1811 0
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	run_directive
	.loc 1 1812 0
	movl	-16(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L520
	call	__stack_chk_fail_local
.L520:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE75:
	.size	cpp_define, .-cpp_define
.globl _cpp_define_builtin
	.type	_cpp_define_builtin, @function
_cpp_define_builtin:
.LFB76:
	.loc 1 1819 0
	pushl	%ebp
.LCFI214:
	movl	%esp, %ebp
.LCFI215:
	pushl	%edi
.LCFI216:
	subl	$20, %esp
.LCFI217:
	.loc 1 1820 0
	movl	12(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -8(%ebp)
	movl	$0, %eax
	cld
	movl	-8(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	run_directive
	.loc 1 1821 0
	addl	$20, %esp
	popl	%edi
	popl	%ebp
	ret
.LFE76:
	.size	_cpp_define_builtin, .-_cpp_define_builtin
.globl cpp_undef
	.type	cpp_undef, @function
cpp_undef:
.LFB77:
	.loc 1 1828 0
	pushl	%ebp
.LCFI218:
	movl	%esp, %ebp
.LCFI219:
	pushl	%edi
.LCFI220:
	subl	$20, %esp
.LCFI221:
	.loc 1 1829 0
	movl	12(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -8(%ebp)
	movl	$0, %eax
	cld
	movl	-8(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$7, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	run_directive
	.loc 1 1830 0
	addl	$20, %esp
	popl	%edi
	popl	%ebp
	ret
.LFE77:
	.size	cpp_undef, .-cpp_undef
.globl cpp_assert
	.type	cpp_assert, @function
cpp_assert:
.LFB78:
	.loc 1 1837 0
	pushl	%ebp
.LCFI222:
	movl	%esp, %ebp
.LCFI223:
	subl	$24, %esp
.LCFI224:
	.loc 1 1838 0
	movl	$16, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	handle_assertion
	.loc 1 1839 0
	leave
	ret
.LFE78:
	.size	cpp_assert, .-cpp_assert
.globl cpp_unassert
	.type	cpp_unassert, @function
cpp_unassert:
.LFB79:
	.loc 1 1846 0
	pushl	%ebp
.LCFI225:
	movl	%esp, %ebp
.LCFI226:
	subl	$24, %esp
.LCFI227:
	.loc 1 1847 0
	movl	$17, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	handle_assertion
	.loc 1 1848 0
	leave
	ret
.LFE79:
	.size	cpp_unassert, .-cpp_unassert
	.type	handle_assertion, @function
handle_assertion:
.LFB80:
	.loc 1 1856 0
	pushl	%ebp
.LCFI228:
	movl	%esp, %ebp
.LCFI229:
	pushl	%edi
.LCFI230:
	pushl	%esi
.LCFI231:
	pushl	%ebx
.LCFI232:
	subl	$60, %esp
.LCFI233:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1856 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 1857 0
	movl	-36(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -44(%ebp)
	movl	$0, %eax
	cld
	movl	-44(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1858 0
	movl	$61, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1860 0
	cmpl	$0, -24(%ebp)
	je	.L530
.LBB17:
	.loc 1 1864 0
	movl	-28(%ebp), %eax
	addl	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	16(%esp), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %ecx
	movl	%ecx, -20(%ebp)
	.loc 1 1866 0
	movl	-20(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	-28(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 1867 0
	movl	-24(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	addl	-20(%ebp), %eax
	movb	$40, (%eax)
	.loc 1 1868 0
	movl	-28(%ebp), %eax
	addl	-20(%ebp), %eax
	movb	$41, (%eax)
	addl	$1, -28(%ebp)
	.loc 1 1869 0
	movl	-28(%ebp), %eax
	addl	-20(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 1870 0
	movl	-20(%ebp), %eax
	movl	%eax, -36(%ebp)
.L530:
.LBE17:
	.loc 1 1873 0
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	run_directive
	.loc 1 1874 0
	movl	-16(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L533
	call	__stack_chk_fail_local
.L533:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE80:
	.size	handle_assertion, .-handle_assertion
.globl cpp_errors
	.type	cpp_errors, @function
cpp_errors:
.LFB81:
	.loc 1 1880 0
	pushl	%ebp
.LCFI234:
	movl	%esp, %ebp
.LCFI235:
	.loc 1 1881 0
	movl	8(%ebp), %eax
	movl	156(%eax), %eax
	.loc 1 1882 0
	popl	%ebp
	ret
.LFE81:
	.size	cpp_errors, .-cpp_errors
.globl cpp_get_options
	.type	cpp_get_options, @function
cpp_get_options:
.LFB82:
	.loc 1 1888 0
	pushl	%ebp
.LCFI236:
	movl	%esp, %ebp
.LCFI237:
	.loc 1 1889 0
	movl	8(%ebp), %eax
	addl	$360, %eax
	.loc 1 1890 0
	popl	%ebp
	ret
.LFE82:
	.size	cpp_get_options, .-cpp_get_options
.globl cpp_get_callbacks
	.type	cpp_get_callbacks, @function
cpp_get_callbacks:
.LFB83:
	.loc 1 1896 0
	pushl	%ebp
.LCFI238:
	movl	%esp, %ebp
.LCFI239:
	.loc 1 1897 0
	movl	8(%ebp), %eax
	addl	$316, %eax
	.loc 1 1898 0
	popl	%ebp
	ret
.LFE83:
	.size	cpp_get_callbacks, .-cpp_get_callbacks
.globl cpp_get_line_maps
	.type	cpp_get_line_maps, @function
cpp_get_line_maps:
.LFB84:
	.loc 1 1904 0
	pushl	%ebp
.LCFI240:
	movl	%esp, %ebp
.LCFI241:
	.loc 1 1905 0
	movl	8(%ebp), %eax
	addl	$24, %eax
	.loc 1 1906 0
	popl	%ebp
	ret
.LFE84:
	.size	cpp_get_line_maps, .-cpp_get_line_maps
.globl cpp_set_callbacks
	.type	cpp_set_callbacks, @function
cpp_set_callbacks:
.LFB85:
	.loc 1 1913 0
	pushl	%ebp
.LCFI242:
	movl	%esp, %ebp
.LCFI243:
	.loc 1 1914 0
	movl	8(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, 316(%ecx)
	movl	4(%edx), %eax
	movl	%eax, 320(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 324(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 328(%ecx)
	movl	16(%edx), %eax
	movl	%eax, 332(%ecx)
	movl	20(%edx), %eax
	movl	%eax, 336(%ecx)
	movl	24(%edx), %eax
	movl	%eax, 340(%ecx)
	movl	28(%edx), %eax
	movl	%eax, 344(%ecx)
	.loc 1 1915 0
	popl	%ebp
	ret
.LFE85:
	.size	cpp_set_callbacks, .-cpp_set_callbacks
.globl cpp_push_buffer
	.type	cpp_push_buffer, @function
cpp_push_buffer:
.LFB86:
	.loc 1 1927 0
	pushl	%ebp
.LCFI244:
	movl	%esp, %ebp
.LCFI245:
	pushl	%esi
.LCFI246:
	pushl	%ebx
.LCFI247:
	subl	$48, %esp
.LCFI248:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB18:
	.loc 1 1928 0
	movl	8(%ebp), %eax
	addl	$268, %eax
	movl	%eax, -28(%ebp)
.LBB19:
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	$88, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-20(%ebp), %eax
	jge	.L545
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L545:
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE19:
.LBB20:
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L547
	movl	-16(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L547:
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L549
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.L549:
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
.LBE20:
.LBE18:
	movl	%eax, -32(%ebp)
	.loc 1 1931 0
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	movl	$88, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 1933 0
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	-32(%ebp), %eax
	movl	20(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1934 0
	movl	16(%ebp), %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 1935 0
	cmpl	$0, 20(%ebp)
	jne	.L551
	movl	8(%ebp), %eax
	movzbl	433(%eax), %eax
	testb	%al, %al
	je	.L553
.L551:
	movl	$1, -44(%ebp)
	jmp	.L554
.L553:
	movl	$0, -44(%ebp)
.L554:
	movzbl	-44(%ebp), %edx
	movl	-32(%ebp), %eax
	movb	%dl, 45(%eax)
	.loc 1 1936 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 1937 0
	cmpl	$0, 24(%ebp)
	setne	%dl
	movl	-32(%ebp), %eax
	movb	%dl, 47(%eax)
	.loc 1 1938 0
	movl	-32(%ebp), %eax
	movb	$64, 36(%eax)
	.loc 1 1940 0
	movl	8(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1942 0
	movl	-32(%ebp), %eax
	.loc 1 1943 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE86:
	.size	cpp_push_buffer, .-cpp_push_buffer
	.section	.rodata
.LC75:
	.string	"unterminated #%s"
	.text
.globl _cpp_pop_buffer
	.type	_cpp_pop_buffer, @function
_cpp_pop_buffer:
.LFB87:
	.loc 1 1950 0
	pushl	%ebp
.LCFI249:
	movl	%esp, %ebp
.LCFI250:
	pushl	%ebx
.LCFI251:
	subl	$68, %esp
.LCFI252:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1951 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1952 0
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1957 0
	movl	-24(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L557
.L558:
	.loc 1 1958 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	leal	dtable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 20(%esp)
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error_with_line@PLT
	.loc 1 1957 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L557:
	cmpl	$0, -16(%ebp)
	jne	.L558
	.loc 1 1962 0
	movl	8(%ebp), %eax
	movb	$0, 10(%eax)
	.loc 1 1965 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
.LBB21:
	.loc 1 1969 0
	movl	8(%ebp), %eax
	addl	$268, %eax
	movl	%eax, -12(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jae	.L560
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-8(%ebp), %eax
	jbe	.L560
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L563
.L560:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L563:
.LBE21:
	.loc 1 1971 0
	cmpl	$0, -20(%ebp)
	je	.L568
	.loc 1 1973 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_pop_file_buffer@PLT
	.loc 1 1976 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L568
	.loc 1 1978 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_do_file_change@PLT
	.loc 1 1982 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L568
	.loc 1 1983 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_maybe_push_include_file@PLT
.L568:
	.loc 1 1986 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE87:
	.size	_cpp_pop_buffer, .-_cpp_pop_buffer
.globl _cpp_init_directives
	.type	_cpp_init_directives, @function
_cpp_init_directives:
.LFB88:
	.loc 1 1992 0
	pushl	%ebp
.LCFI253:
	movl	%esp, %ebp
.LCFI254:
	pushl	%esi
.LCFI255:
	pushl	%ebx
.LCFI256:
	subl	$32, %esp
.LCFI257:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1996 0
	movl	$0, -16(%ebp)
	jmp	.L570
.L571:
	.loc 1 1998 0
	movl	-16(%ebp), %edx
	leal	dtable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movzwl	8(%eax,%ecx), %eax
	movzwl	%ax, %esi
	movl	-16(%ebp), %edx
	leal	dtable@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_lookup@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1999 0
	movl	-16(%ebp), %eax
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movb	%dl, 14(%eax)
	.loc 1 1996 0
	addl	$1, -16(%ebp)
.L570:
	cmpl	$18, -16(%ebp)
	jbe	.L571
	.loc 1 2001 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE88:
	.size	_cpp_init_directives, .-_cpp_init_directives
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
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI0-.LFB21
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
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI4-.LFB22
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
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI8-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI10-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI13-.LCFI11
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI14-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI17-.LCFI15
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI18-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI21-.LCFI19
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI22-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI25-.LCFI23
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI26-.LFB28
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
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI30-.LFB29
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI34-.LFB30
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI38-.LFB31
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI42-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI47-.LCFI43
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
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI48-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI49-.LCFI48
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI51-.LCFI49
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI52-.LFB34
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
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI57-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI60-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI61-.LCFI60
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI63-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI64-.LCFI63
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI66-.LFB38
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
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI70-.LFB39
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
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI74-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI77-.LFB41
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
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI81-.LFB42
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
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI85-.LFB43
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
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI89-.LFB44
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
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI93-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI94-.LCFI93
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI96-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI97-.LCFI96
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI99-.LFB47
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
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI103-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI104-.LCFI103
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI105-.LFB49
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
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI109-.LFB50
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
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI114-.LFB51
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
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI118-.LFB52
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
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI122-.LFB53
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
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI126-.LFB54
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
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB55
	.long	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI130-.LFB55
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
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI134-.LFB56
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
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI138-.LFB57
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
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI142-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI143-.LCFI142
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB59
	.long	.LFE59-.LFB59
	.byte	0x4
	.long	.LCFI145-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI146-.LCFI145
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI148-.LCFI146
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.long	.LFB60
	.long	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI149-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI150-.LCFI149
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI152-.LCFI150
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB61
	.long	.LFE61-.LFB61
	.byte	0x4
	.long	.LCFI153-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI154-.LCFI153
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI155-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI156-.LCFI155
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB63
	.long	.LFE63-.LFB63
	.byte	0x4
	.long	.LCFI158-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI159-.LCFI158
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB64
	.long	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI161-.LFB64
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
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.byte	0x4
	.long	.LCFI165-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI166-.LCFI165
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI168-.LCFI166
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB66
	.long	.LFE66-.LFB66
	.byte	0x4
	.long	.LCFI169-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI170-.LCFI169
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI172-.LCFI170
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB67
	.long	.LFE67-.LFB67
	.byte	0x4
	.long	.LCFI173-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI174-.LCFI173
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI176-.LCFI174
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB68
	.long	.LFE68-.LFB68
	.byte	0x4
	.long	.LCFI177-.LFB68
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI178-.LCFI177
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI181-.LCFI178
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
	.long	.LFB69
	.long	.LFE69-.LFB69
	.byte	0x4
	.long	.LCFI182-.LFB69
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
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.long	.LFB70
	.long	.LFE70-.LFB70
	.byte	0x4
	.long	.LCFI186-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI187-.LCFI186
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI191-.LCFI187
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.long	.LFB71
	.long	.LFE71-.LFB71
	.byte	0x4
	.long	.LCFI192-.LFB71
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
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.long	.LFB72
	.long	.LFE72-.LFB72
	.byte	0x4
	.long	.LCFI196-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI197-.LCFI196
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI199-.LCFI197
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.long	.LFB73
	.long	.LFE73-.LFB73
	.byte	0x4
	.long	.LCFI200-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI201-.LCFI200
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI203-.LCFI201
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.long	.LFB74
	.long	.LFE74-.LFB74
	.byte	0x4
	.long	.LCFI204-.LFB74
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
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.long	.LFB75
	.long	.LFE75-.LFB75
	.byte	0x4
	.long	.LCFI208-.LFB75
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI209-.LCFI208
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI213-.LCFI209
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.long	.LFB76
	.long	.LFE76-.LFB76
	.byte	0x4
	.long	.LCFI214-.LFB76
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI215-.LCFI214
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI217-.LCFI215
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.long	.LFB77
	.long	.LFE77-.LFB77
	.byte	0x4
	.long	.LCFI218-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI219-.LCFI218
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI221-.LCFI219
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.long	.LFB78
	.long	.LFE78-.LFB78
	.byte	0x4
	.long	.LCFI222-.LFB78
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI223-.LCFI222
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE114:
.LSFDE116:
	.long	.LEFDE116-.LASFDE116
.LASFDE116:
	.long	.Lframe0
	.long	.LFB79
	.long	.LFE79-.LFB79
	.byte	0x4
	.long	.LCFI225-.LFB79
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI226-.LCFI225
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE116:
.LSFDE118:
	.long	.LEFDE118-.LASFDE118
.LASFDE118:
	.long	.Lframe0
	.long	.LFB80
	.long	.LFE80-.LFB80
	.byte	0x4
	.long	.LCFI228-.LFB80
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI229-.LCFI228
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI233-.LCFI229
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.long	.LFB81
	.long	.LFE81-.LFB81
	.byte	0x4
	.long	.LCFI234-.LFB81
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI235-.LCFI234
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.long	.LFB82
	.long	.LFE82-.LFB82
	.byte	0x4
	.long	.LCFI236-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI237-.LCFI236
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.long	.LFB83
	.long	.LFE83-.LFB83
	.byte	0x4
	.long	.LCFI238-.LFB83
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI239-.LCFI238
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.long	.LFB84
	.long	.LFE84-.LFB84
	.byte	0x4
	.long	.LCFI240-.LFB84
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI241-.LCFI240
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE126:
.LSFDE128:
	.long	.LEFDE128-.LASFDE128
.LASFDE128:
	.long	.Lframe0
	.long	.LFB85
	.long	.LFE85-.LFB85
	.byte	0x4
	.long	.LCFI242-.LFB85
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI243-.LCFI242
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE128:
.LSFDE130:
	.long	.LEFDE130-.LASFDE130
.LASFDE130:
	.long	.Lframe0
	.long	.LFB86
	.long	.LFE86-.LFB86
	.byte	0x4
	.long	.LCFI244-.LFB86
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI245-.LCFI244
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI248-.LCFI245
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
	.long	.LFB87
	.long	.LFE87-.LFB87
	.byte	0x4
	.long	.LCFI249-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI250-.LCFI249
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI252-.LCFI250
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE132:
.LSFDE134:
	.long	.LEFDE134-.LASFDE134
.LASFDE134:
	.long	.Lframe0
	.long	.LFB88
	.long	.LFE88-.LFB88
	.byte	0x4
	.long	.LCFI253-.LFB88
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI254-.LCFI253
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI257-.LCFI254
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE134:
	.file 2 "../../../kgccfe/gnu/cpplib.h"
	.file 3 "../../../kgccfe/gnu/hashtable.h"
	.file 4 "../../../kgccfe/gnu/cpphash.h"
	.file 5 "/usr/include/sys/types.h"
	.file 6 "/usr/include/bits/types.h"
	.file 7 "../../../kgccfe/gnu/line-map.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "../../../include/gnu/obstack.h"
	.file 10 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "../../../include/gnu/safe-ctype.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB24-.Ltext0
	.long	.LCFI10-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI10-.Ltext0
	.long	.LCFI11-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI11-.Ltext0
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB33-.Ltext0
	.long	.LCFI48-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI48-.Ltext0
	.long	.LCFI49-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI49-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB44-.Ltext0
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
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB45-.Ltext0
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
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB46-.Ltext0
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
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB47-.Ltext0
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
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB48-.Ltext0
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
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB49-.Ltext0
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
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB50-.Ltext0
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
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB51-.Ltext0
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
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB52-.Ltext0
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
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB53-.Ltext0
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
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB54-.Ltext0
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
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB55-.Ltext0
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
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB56-.Ltext0
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
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB57-.Ltext0
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
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB58-.Ltext0
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
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB59-.Ltext0
	.long	.LCFI145-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI145-.Ltext0
	.long	.LCFI146-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI146-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB60-.Ltext0
	.long	.LCFI149-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI149-.Ltext0
	.long	.LCFI150-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI150-.Ltext0
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB61-.Ltext0
	.long	.LCFI153-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI153-.Ltext0
	.long	.LCFI154-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI154-.Ltext0
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB62-.Ltext0
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
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB63-.Ltext0
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
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB64-.Ltext0
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
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB65-.Ltext0
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
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB66-.Ltext0
	.long	.LCFI169-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI169-.Ltext0
	.long	.LCFI170-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI170-.Ltext0
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB67-.Ltext0
	.long	.LCFI173-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI173-.Ltext0
	.long	.LCFI174-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI174-.Ltext0
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB68-.Ltext0
	.long	.LCFI177-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI177-.Ltext0
	.long	.LCFI178-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI178-.Ltext0
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB69-.Ltext0
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
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB70-.Ltext0
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
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB71-.Ltext0
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
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB72-.Ltext0
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
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB73-.Ltext0
	.long	.LCFI200-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI200-.Ltext0
	.long	.LCFI201-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI201-.Ltext0
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB74-.Ltext0
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
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB75-.Ltext0
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
	.long	.LFE75-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB76-.Ltext0
	.long	.LCFI214-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI214-.Ltext0
	.long	.LCFI215-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI215-.Ltext0
	.long	.LFE76-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB77-.Ltext0
	.long	.LCFI218-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI218-.Ltext0
	.long	.LCFI219-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI219-.Ltext0
	.long	.LFE77-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB78-.Ltext0
	.long	.LCFI222-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI222-.Ltext0
	.long	.LCFI223-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI223-.Ltext0
	.long	.LFE78-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB79-.Ltext0
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
	.long	.LFE79-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB80-.Ltext0
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
	.long	.LFE80-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LFB81-.Ltext0
	.long	.LCFI234-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI234-.Ltext0
	.long	.LCFI235-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI235-.Ltext0
	.long	.LFE81-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LFB82-.Ltext0
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
	.long	.LFE82-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LFB83-.Ltext0
	.long	.LCFI238-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI238-.Ltext0
	.long	.LCFI239-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI239-.Ltext0
	.long	.LFE83-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LFB84-.Ltext0
	.long	.LCFI240-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI240-.Ltext0
	.long	.LCFI241-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI241-.Ltext0
	.long	.LFE84-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LFB85-.Ltext0
	.long	.LCFI242-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI242-.Ltext0
	.long	.LCFI243-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI243-.Ltext0
	.long	.LFE85-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LFB86-.Ltext0
	.long	.LCFI244-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI244-.Ltext0
	.long	.LCFI245-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI245-.Ltext0
	.long	.LFE86-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST66:
	.long	.LFB87-.Ltext0
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
	.long	.LFE87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LFB88-.Ltext0
	.long	.LCFI253-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI253-.Ltext0
	.long	.LCFI254-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI254-.Ltext0
	.long	.LFE88-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x401e
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/cpplib.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.byte	0x4
	.long	0xa1
	.uleb128 0x3
	.long	0xa6
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x6
	.string	"size_t"
	.byte	0xa
	.byte	0xd6
	.long	0xb5
	.uleb128 0x4
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x4
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x4
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x4
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x4
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x6
	.string	"__quad_t"
	.byte	0x6
	.byte	0x3b
	.long	0x129
	.uleb128 0x6
	.string	"__u_quad_t"
	.byte	0x6
	.byte	0x3c
	.long	0x13a
	.uleb128 0x6
	.string	"__dev_t"
	.byte	0x6
	.byte	0x89
	.long	0x164
	.uleb128 0x6
	.string	"__ino_t"
	.byte	0x6
	.byte	0x8c
	.long	0xf8
	.uleb128 0x6
	.string	"__off_t"
	.byte	0x6
	.byte	0x90
	.long	0x1a3
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x6
	.string	"__off64_t"
	.byte	0x6
	.byte	0x91
	.long	0x154
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.long	0xa6
	.uleb128 0x6
	.string	"FILE"
	.byte	0x8
	.byte	0x2e
	.long	0x1d4
	.uleb128 0x8
	.long	0x44f
	.long	.LASF1
	.byte	0x94
	.byte	0x8
	.byte	0x2e
	.uleb128 0x9
	.string	"_flags"
	.byte	0xb
	.value	0x10c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"_IO_read_ptr"
	.byte	0xb
	.value	0x111
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"_IO_read_end"
	.byte	0xb
	.value	0x112
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"_IO_read_base"
	.byte	0xb
	.value	0x113
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"_IO_write_base"
	.byte	0xb
	.value	0x114
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"_IO_write_ptr"
	.byte	0xb
	.value	0x115
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"_IO_write_end"
	.byte	0xb
	.value	0x116
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"_IO_buf_base"
	.byte	0xb
	.value	0x117
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"_IO_buf_end"
	.byte	0xb
	.value	0x118
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"_IO_save_base"
	.byte	0xb
	.value	0x11a
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"_IO_backup_base"
	.byte	0xb
	.value	0x11b
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"_IO_save_end"
	.byte	0xb
	.value	0x11c
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"_markers"
	.byte	0xb
	.value	0x11e
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"_chain"
	.byte	0xb
	.value	0x120
	.long	0x4c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"_fileno"
	.byte	0xb
	.value	0x122
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"_flags2"
	.byte	0xb
	.value	0x126
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"_old_offset"
	.byte	0xb
	.value	0x128
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"_cur_column"
	.byte	0xb
	.value	0x12c
	.long	0xe2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"_vtable_offset"
	.byte	0xb
	.value	0x12d
	.long	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"_shortbuf"
	.byte	0xb
	.value	0x12e
	.long	0x4cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"_lock"
	.byte	0xb
	.value	0x132
	.long	0x4dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"_offset"
	.byte	0xb
	.value	0x13b
	.long	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"__pad1"
	.byte	0xb
	.value	0x144
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"__pad2"
	.byte	0xb
	.value	0x145
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"__pad3"
	.byte	0xb
	.value	0x146
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"__pad4"
	.byte	0xb
	.value	0x147
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"__pad5"
	.byte	0xb
	.value	0x148
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"_mode"
	.byte	0xb
	.value	0x14a
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"_unused2"
	.byte	0xb
	.value	0x14c
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xa
	.long	0x45f
	.long	0xa6
	.uleb128 0xb
	.long	0xbc
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x465
	.uleb128 0x3
	.long	0xd1
	.uleb128 0x2
	.byte	0x4
	.long	0xd1
	.uleb128 0xc
	.string	"_IO_lock_t"
	.byte	0xb
	.byte	0xb0
	.uleb128 0xd
	.long	0x4c1
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xb
	.byte	0xb6
	.uleb128 0xe
	.string	"_next"
	.byte	0xb
	.byte	0xb7
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_sbuf"
	.byte	0xb
	.byte	0xb8
	.long	0x4c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_pos"
	.byte	0xb
	.byte	0xbc
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x47e
	.uleb128 0x2
	.byte	0x4
	.long	0x1d4
	.uleb128 0xa
	.long	0x4dd
	.long	0xa6
	.uleb128 0xb
	.long	0xbc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x470
	.uleb128 0xa
	.long	0x4f3
	.long	0xa6
	.uleb128 0xb
	.long	0xbc
	.byte	0x27
	.byte	0x0
	.uleb128 0x6
	.string	"ino_t"
	.byte	0x5
	.byte	0x32
	.long	0x185
	.uleb128 0x6
	.string	"dev_t"
	.byte	0x5
	.byte	0x3e
	.long	0x176
	.uleb128 0xd
	.long	0x555
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x9
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF2
	.byte	0x9
	.byte	0xa3
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"prev"
	.byte	0x9
	.byte	0xa4
	.long	0x555
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"contents"
	.byte	0x9
	.byte	0xa5
	.long	0x44f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x50d
	.uleb128 0x10
	.long	0x688
	.string	"obstack"
	.byte	0x2c
	.byte	0x8
	.value	0x31b
	.uleb128 0xe
	.string	"chunk_size"
	.byte	0x9
	.byte	0xaa
	.long	0x1a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"chunk"
	.byte	0x9
	.byte	0xab
	.long	0x555
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"object_base"
	.byte	0x9
	.byte	0xac
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"next_free"
	.byte	0x9
	.byte	0xad
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"chunk_limit"
	.byte	0x9
	.byte	0xae
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"temp"
	.byte	0x9
	.byte	0xaf
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"alignment_mask"
	.byte	0x9
	.byte	0xb0
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"chunkfun"
	.byte	0x9
	.byte	0xb5
	.long	0x69d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"freefun"
	.byte	0x9
	.byte	0xb6
	.long	0x6b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"extra_arg"
	.byte	0x9
	.byte	0xb7
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.string	"use_extra_arg"
	.byte	0x9
	.byte	0xbd
	.long	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"maybe_empty_object"
	.byte	0x9
	.byte	0xbe
	.long	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"alloc_failed"
	.byte	0x9
	.byte	0xc2
	.long	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x12
	.long	0x69d
	.byte	0x1
	.long	0x555
	.uleb128 0x13
	.long	0x1c0
	.uleb128 0x13
	.long	0x1a3
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x688
	.uleb128 0x14
	.long	0x6b4
	.byte	0x1
	.uleb128 0x13
	.long	0x1c0
	.uleb128 0x13
	.long	0x555
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x6a3
	.uleb128 0x8
	.long	0x6f8
	.long	.LASF3
	.byte	0xc
	.byte	0x3
	.byte	0x19
	.uleb128 0xe
	.string	"str"
	.byte	0x3
	.byte	0x1c
	.long	0x45f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"len"
	.byte	0x3
	.byte	0x1d
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"hash_value"
	.byte	0x3
	.byte	0x1e
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x3
	.byte	0x29
	.long	0x703
	.uleb128 0xd
	.long	0x7a1
	.string	"ht"
	.byte	0x48
	.byte	0x3
	.byte	0x29
	.uleb128 0xe
	.string	"stack"
	.byte	0x3
	.byte	0x32
	.long	0x55b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"entries"
	.byte	0x3
	.byte	0x34
	.long	0x7b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"alloc_node"
	.byte	0x3
	.byte	0x36
	.long	0x7d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"nslots"
	.byte	0x3
	.byte	0x38
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"nelements"
	.byte	0x3
	.byte	0x39
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.long	.LASF5
	.byte	0x3
	.byte	0x3c
	.long	0xb9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"searches"
	.byte	0x3
	.byte	0x3f
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"collisions"
	.byte	0x3
	.byte	0x40
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0x0
	.uleb128 0x6
	.string	"hashnode"
	.byte	0x3
	.byte	0x2a
	.long	0x7b1
	.uleb128 0x2
	.byte	0x4
	.long	0x6ba
	.uleb128 0x2
	.byte	0x4
	.long	0x7a1
	.uleb128 0x12
	.long	0x7cd
	.byte	0x1
	.long	0x7a1
	.uleb128 0x13
	.long	0x7cd
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x6f8
	.uleb128 0x2
	.byte	0x4
	.long	0x7bd
	.uleb128 0x16
	.long	0xb9b
	.long	.LASF6
	.value	0x210
	.byte	0x3
	.byte	0x28
	.uleb128 0x17
	.long	.LASF7
	.byte	0x4
	.value	0x151
	.long	0x242d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"overlaid_buffer"
	.byte	0x4
	.value	0x154
	.long	0x242d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"state"
	.byte	0x4
	.value	0x157
	.long	0x213f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.long	.LASF8
	.byte	0x4
	.value	0x15a
	.long	0xc58
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"map"
	.byte	0x4
	.value	0x15b
	.long	0x1ce1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"line"
	.byte	0x4
	.value	0x15c
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"directive_line"
	.byte	0x4
	.value	0x15f
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"a_buff"
	.byte	0x4
	.value	0x162
	.long	0x2139
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"u_buff"
	.byte	0x4
	.value	0x163
	.long	0x2139
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"free_buffs"
	.byte	0x4
	.value	0x164
	.long	0x2139
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"base_context"
	.byte	0x4
	.value	0x167
	.long	0x205e
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"context"
	.byte	0x4
	.value	0x168
	.long	0x2433
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x17
	.long	.LASF9
	.byte	0x4
	.value	0x16b
	.long	0x2495
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"next_include_file"
	.byte	0x4
	.value	0x170
	.long	0x24b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x17
	.long	.LASF10
	.byte	0x4
	.value	0x173
	.long	0x24bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.string	"mi_ind_cmacro"
	.byte	0x4
	.value	0x174
	.long	0x24bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.string	"mi_valid"
	.byte	0x4
	.value	0x175
	.long	0xcdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.string	"cur_token"
	.byte	0x4
	.value	0x178
	.long	0x1efa
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.string	"base_run"
	.byte	0x4
	.value	0x179
	.long	0x1ffb
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.string	"cur_run"
	.byte	0x4
	.value	0x179
	.long	0x204d
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.string	"lookaheads"
	.byte	0x4
	.value	0x17a
	.long	0xb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.string	"keep_tokens"
	.byte	0x4
	.value	0x17d
	.long	0xb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.string	"errors"
	.byte	0x4
	.value	0x180
	.long	0xb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x9
	.string	"macro_buffer"
	.byte	0x4
	.value	0x183
	.long	0x46a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.string	"macro_buffer_len"
	.byte	0x4
	.value	0x184
	.long	0xb5
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x9
	.string	"all_include_files"
	.byte	0x4
	.value	0x187
	.long	0x24d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.string	"max_include_len"
	.byte	0x4
	.value	0x18b
	.long	0xb5
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.string	"first_unused_line"
	.byte	0x4
	.value	0x18e
	.long	0xb5
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.string	"date"
	.byte	0x4
	.value	0x191
	.long	0x1f00
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x9
	.string	"time"
	.byte	0x4
	.value	0x192
	.long	0x1f00
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.string	"avoid_paste"
	.byte	0x4
	.value	0x195
	.long	0x1432
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x9
	.string	"eof"
	.byte	0x4
	.value	0x196
	.long	0x1432
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x9
	.string	"deps"
	.byte	0x4
	.value	0x199
	.long	0x24e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x9
	.string	"hash_ob"
	.byte	0x4
	.value	0x19d
	.long	0x55b
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.string	"buffer_ob"
	.byte	0x4
	.value	0x1a1
	.long	0x55b
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x9
	.string	"pragmas"
	.byte	0x4
	.value	0x1a5
	.long	0x253d
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0x9
	.string	"cb"
	.byte	0x4
	.value	0x1a8
	.long	0x162c
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x17
	.long	.LASF4
	.byte	0x4
	.value	0x1ab
	.long	0x2543
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x9
	.string	"op_stack"
	.byte	0x4
	.value	0x1ae
	.long	0x254e
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x9
	.string	"op_limit"
	.byte	0x4
	.value	0x1ae
	.long	0x254e
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x9
	.string	"opts"
	.byte	0x4
	.value	0x1b1
	.long	0xe78
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x17
	.long	.LASF11
	.byte	0x4
	.value	0x1b5
	.long	0x2274
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d0
	.uleb128 0x9
	.string	"print"
	.byte	0x4
	.value	0x1b8
	.long	0x22d2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x9
	.string	"our_hashtable"
	.byte	0x4
	.value	0x1bb
	.long	0xd1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x9
	.string	"out"
	.byte	0x4
	.value	0x1c4
	.long	0x23d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x9
	.string	"saved_line"
	.byte	0x4
	.value	0x1c8
	.long	0xb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x7d9
	.uleb128 0x18
	.long	0xbd6
	.string	"lc_reason"
	.byte	0x4
	.byte	0x7
	.byte	0x1f
	.uleb128 0x19
	.string	"LC_ENTER"
	.sleb128 0
	.uleb128 0x19
	.string	"LC_LEAVE"
	.sleb128 1
	.uleb128 0x19
	.string	"LC_RENAME"
	.sleb128 2
	.byte	0x0
	.uleb128 0xd
	.long	0xc58
	.string	"line_map"
	.byte	0x14
	.byte	0x7
	.byte	0x2a
	.uleb128 0xe
	.string	"to_file"
	.byte	0x7
	.byte	0x2b
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"to_line"
	.byte	0x7
	.byte	0x2c
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"from_line"
	.byte	0x7
	.byte	0x2d
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"included_from"
	.byte	0x7
	.byte	0x2e
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.long	.LASF12
	.byte	0x7
	.byte	0x2f
	.long	0xba1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"sysp"
	.byte	0x7
	.byte	0x30
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0x0
	.uleb128 0x8
	.long	0xcd6
	.long	.LASF8
	.byte	0x18
	.byte	0x7
	.byte	0x35
	.uleb128 0xe
	.string	"maps"
	.byte	0x7
	.byte	0x36
	.long	0xcd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"allocated"
	.byte	0x7
	.byte	0x37
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"used"
	.byte	0x7
	.byte	0x38
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"last_listed"
	.byte	0x7
	.byte	0x3d
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"depth"
	.byte	0x7
	.byte	0x40
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"trace_includes"
	.byte	0x7
	.byte	0x43
	.long	0xcdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xbd6
	.uleb128 0x4
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x15
	.long	.LASF6
	.byte	0x2
	.byte	0x28
	.long	0x7d9
	.uleb128 0x15
	.long	.LASF13
	.byte	0x2
	.byte	0x2a
	.long	0xcfb
	.uleb128 0x8
	.long	0xe6d
	.long	.LASF13
	.byte	0x58
	.byte	0x2
	.byte	0x2a
	.uleb128 0x9
	.string	"cur"
	.byte	0x4
	.value	0x114
	.long	0x45f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"backup_to"
	.byte	0x4
	.value	0x115
	.long	0x45f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.long	.LASF14
	.byte	0x4
	.value	0x116
	.long	0x45f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"line_base"
	.byte	0x4
	.value	0x117
	.long	0x45f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"prev"
	.byte	0x4
	.value	0x119
	.long	0x234e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"buf"
	.byte	0x4
	.value	0x11b
	.long	0x45f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"inc"
	.byte	0x4
	.value	0x11f
	.long	0x2363
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.long	.LASF15
	.byte	0x4
	.value	0x123
	.long	0x23d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"col_adjust"
	.byte	0x4
	.value	0x126
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"saved_flags"
	.byte	0x4
	.value	0x129
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"last_Wtrigraphs"
	.byte	0x4
	.value	0x12d
	.long	0x45f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"warned_cplusplus_comments"
	.byte	0x4
	.value	0x133
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x17
	.long	.LASF16
	.byte	0x4
	.value	0x138
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x9
	.string	"search_cached"
	.byte	0x4
	.value	0x13c
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x17
	.long	.LASF17
	.byte	0x4
	.value	0x141
	.long	0xcdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x9
	.string	"dir"
	.byte	0x4
	.value	0x145
	.long	0x1c0f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"saved_cur"
	.byte	0x4
	.value	0x148
	.long	0x1f00
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.string	"saved_rlimit"
	.byte	0x4
	.value	0x148
	.long	0x1f00
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x0
	.uleb128 0x15
	.long	.LASF18
	.byte	0x2
	.byte	0x2b
	.long	0xe78
	.uleb128 0x8
	.long	0x1432
	.long	.LASF18
	.byte	0x68
	.byte	0x2
	.byte	0x2b
	.uleb128 0xe
	.string	"tabstop"
	.byte	0x2
	.byte	0xe5
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"pending"
	.byte	0x2
	.byte	0xe8
	.long	0x1c09
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"quote_include"
	.byte	0x2
	.byte	0xeb
	.long	0x1c8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"bracket_include"
	.byte	0x2
	.byte	0xec
	.long	0x1c8d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"map_list"
	.byte	0x2
	.byte	0xf0
	.long	0x1ca8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"include_prefix"
	.byte	0x2
	.byte	0xf4
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"include_prefix_len"
	.byte	0x2
	.byte	0xf5
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"lang"
	.byte	0x2
	.byte	0xf8
	.long	0x1a88
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"verbose"
	.byte	0x2
	.byte	0xfb
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"cplusplus"
	.byte	0x2
	.byte	0xfe
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0x9
	.string	"cplusplus_comments"
	.byte	0x2
	.value	0x101
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x9
	.string	"objc"
	.byte	0x2
	.value	0x105
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x23
	.uleb128 0x9
	.string	"discard_comments"
	.byte	0x2
	.value	0x108
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"discard_comments_in_macro_exp"
	.byte	0x2
	.value	0x10c
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0x9
	.string	"trigraphs"
	.byte	0x2
	.value	0x10f
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0x9
	.string	"digraphs"
	.byte	0x2
	.value	0x112
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.uleb128 0x9
	.string	"extended_numbers"
	.byte	0x2
	.value	0x115
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"print_include_names"
	.byte	0x2
	.value	0x118
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0x9
	.string	"pedantic_errors"
	.byte	0x2
	.value	0x11b
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0x9
	.string	"inhibit_warnings"
	.byte	0x2
	.value	0x11e
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0x9
	.string	"warn_deprecated"
	.byte	0x2
	.value	0x121
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"warn_system_headers"
	.byte	0x2
	.value	0x124
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x9
	.string	"inhibit_errors"
	.byte	0x2
	.value	0x128
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x9
	.string	"warn_comments"
	.byte	0x2
	.value	0x12b
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x9
	.string	"warn_trigraphs"
	.byte	0x2
	.value	0x12e
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"warn_import"
	.byte	0x2
	.value	0x131
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0x9
	.string	"warn_multichar"
	.byte	0x2
	.value	0x134
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0x9
	.string	"warn_traditional"
	.byte	0x2
	.value	0x138
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0x9
	.string	"warn_long_long"
	.byte	0x2
	.value	0x13b
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"warn_endif_labels"
	.byte	0x2
	.value	0x13e
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0x9
	.string	"warn_num_sign_change"
	.byte	0x2
	.value	0x142
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x9
	.string	"warnings_are_errors"
	.byte	0x2
	.value	0x145
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0x9
	.string	"no_output"
	.byte	0x2
	.value	0x149
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"remap"
	.byte	0x2
	.value	0x14d
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0x9
	.string	"no_line_commands"
	.byte	0x2
	.value	0x150
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0x9
	.string	"ignore_srcdir"
	.byte	0x2
	.value	0x154
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3b
	.uleb128 0x9
	.string	"dollars_in_ident"
	.byte	0x2
	.value	0x157
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"warn_undef"
	.byte	0x2
	.value	0x15a
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0x9
	.string	"warn_unused_macros"
	.byte	0x2
	.value	0x15d
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0x9
	.string	"c99"
	.byte	0x2
	.value	0x160
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0x9
	.string	"std"
	.byte	0x2
	.value	0x163
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"pedantic"
	.byte	0x2
	.value	0x166
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0x9
	.string	"preprocessed"
	.byte	0x2
	.value	0x16a
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0x9
	.string	"no_standard_includes"
	.byte	0x2
	.value	0x16d
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x43
	.uleb128 0x9
	.string	"no_standard_cplusplus_includes"
	.byte	0x2
	.value	0x170
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"dump_macros"
	.byte	0x2
	.value	0x173
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x9
	.string	"dump_includes"
	.byte	0x2
	.value	0x176
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"show_column"
	.byte	0x2
	.value	0x179
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"operator_names"
	.byte	0x2
	.value	0x17c
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"traditional"
	.byte	0x2
	.value	0x17f
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0x9
	.string	"deps"
	.byte	0x2
	.value	0x190
	.long	0x1b92
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"precision"
	.byte	0x2
	.value	0x196
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"char_precision"
	.byte	0x2
	.value	0x196
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"int_precision"
	.byte	0x2
	.value	0x196
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"wchar_precision"
	.byte	0x2
	.value	0x196
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"unsigned_char"
	.byte	0x2
	.value	0x199
	.long	0xcdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"unsigned_wchar"
	.byte	0x2
	.value	0x199
	.long	0xcdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0x9
	.string	"stdc_0_in_system_headers"
	.byte	0x2
	.value	0x19c
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.byte	0x0
	.uleb128 0x15
	.long	.LASF19
	.byte	0x2
	.byte	0x2c
	.long	0x143d
	.uleb128 0x8
	.long	0x1496
	.long	.LASF19
	.byte	0x10
	.byte	0x2
	.byte	0x2c
	.uleb128 0xe
	.string	"line"
	.byte	0x2
	.byte	0xb6
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"col"
	.byte	0x2
	.byte	0xb7
	.long	0xe2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.long	.LASF20
	.byte	0x2
	.byte	0xb8
	.long	0x16e1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"flags"
	.byte	0x2
	.byte	0xb9
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.string	"val"
	.byte	0x2
	.byte	0xc2
	.long	0x1afc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	.LASF21
	.byte	0x2
	.byte	0x2d
	.long	0x14a1
	.uleb128 0x8
	.long	0x14cb
	.long	.LASF21
	.byte	0x8
	.byte	0x2
	.byte	0x2d
	.uleb128 0xe
	.string	"len"
	.byte	0x2
	.byte	0xa5
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"text"
	.byte	0x2
	.byte	0xa6
	.long	0x45f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x15
	.long	.LASF22
	.byte	0x2
	.byte	0x2e
	.long	0x14d6
	.uleb128 0x8
	.long	0x156a
	.long	.LASF22
	.byte	0x18
	.byte	0x2
	.byte	0x2e
	.uleb128 0x9
	.string	"ident"
	.byte	0x2
	.value	0x1e6
	.long	0x6ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"arg_index"
	.byte	0x2
	.value	0x1e7
	.long	0xe2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"directive_index"
	.byte	0x2
	.value	0x1e8
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.string	"rid_code"
	.byte	0x2
	.value	0x1e9
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x1b
	.long	.LASF20
	.byte	0x2
	.value	0x1ea
	.long	0x1d7f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"flags"
	.byte	0x2
	.value	0x1eb
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x17
	.long	.LASF23
	.byte	0x2
	.value	0x1f7
	.long	0x1e32
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x15
	.long	.LASF24
	.byte	0x2
	.byte	0x2f
	.long	0x1575
	.uleb128 0x8
	.long	0x1621
	.long	.LASF24
	.byte	0x14
	.byte	0x2
	.byte	0x2f
	.uleb128 0xe
	.string	"params"
	.byte	0x4
	.byte	0x49
	.long	0x1f0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"exp"
	.byte	0x4
	.byte	0x52
	.long	0x1ed7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"line"
	.byte	0x4
	.byte	0x55
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF25
	.byte	0x4
	.byte	0x58
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"paramc"
	.byte	0x4
	.byte	0x5b
	.long	0xe2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"fun_like"
	.byte	0x4
	.byte	0x5e
	.long	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"variadic"
	.byte	0x4
	.byte	0x61
	.long	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"syshdr"
	.byte	0x4
	.byte	0x64
	.long	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"used"
	.byte	0x4
	.byte	0x67
	.long	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x15
	.long	.LASF26
	.byte	0x2
	.byte	0x30
	.long	0x162c
	.uleb128 0x8
	.long	0x16e1
	.long	.LASF26
	.byte	0x20
	.byte	0x2
	.byte	0x30
	.uleb128 0x9
	.string	"line_change"
	.byte	0x2
	.value	0x1a3
	.long	0x1cca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"file_change"
	.byte	0x2
	.value	0x1a4
	.long	0x1cec
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"include"
	.byte	0x2
	.value	0x1a5
	.long	0x1d0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"define"
	.byte	0x2
	.value	0x1a7
	.long	0x1d29
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"undef"
	.byte	0x2
	.value	0x1a8
	.long	0x1d29
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"ident"
	.byte	0x2
	.value	0x1a9
	.long	0x1d50
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"def_pragma"
	.byte	0x2
	.value	0x1aa
	.long	0x1d67
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"register_builtins"
	.byte	0x2
	.value	0x1ad
	.long	0x1d79
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x18
	.long	0x1a88
	.string	"cpp_ttype"
	.byte	0x4
	.byte	0x2
	.byte	0x97
	.uleb128 0x19
	.string	"CPP_EQ"
	.sleb128 0
	.uleb128 0x19
	.string	"CPP_NOT"
	.sleb128 1
	.uleb128 0x19
	.string	"CPP_GREATER"
	.sleb128 2
	.uleb128 0x19
	.string	"CPP_LESS"
	.sleb128 3
	.uleb128 0x19
	.string	"CPP_PLUS"
	.sleb128 4
	.uleb128 0x19
	.string	"CPP_MINUS"
	.sleb128 5
	.uleb128 0x19
	.string	"CPP_MULT"
	.sleb128 6
	.uleb128 0x19
	.string	"CPP_DIV"
	.sleb128 7
	.uleb128 0x19
	.string	"CPP_MOD"
	.sleb128 8
	.uleb128 0x19
	.string	"CPP_AND"
	.sleb128 9
	.uleb128 0x19
	.string	"CPP_OR"
	.sleb128 10
	.uleb128 0x19
	.string	"CPP_XOR"
	.sleb128 11
	.uleb128 0x19
	.string	"CPP_RSHIFT"
	.sleb128 12
	.uleb128 0x19
	.string	"CPP_LSHIFT"
	.sleb128 13
	.uleb128 0x19
	.string	"CPP_MIN"
	.sleb128 14
	.uleb128 0x19
	.string	"CPP_MAX"
	.sleb128 15
	.uleb128 0x19
	.string	"CPP_COMPL"
	.sleb128 16
	.uleb128 0x19
	.string	"CPP_AND_AND"
	.sleb128 17
	.uleb128 0x19
	.string	"CPP_OR_OR"
	.sleb128 18
	.uleb128 0x19
	.string	"CPP_QUERY"
	.sleb128 19
	.uleb128 0x19
	.string	"CPP_COLON"
	.sleb128 20
	.uleb128 0x19
	.string	"CPP_COMMA"
	.sleb128 21
	.uleb128 0x19
	.string	"CPP_OPEN_PAREN"
	.sleb128 22
	.uleb128 0x19
	.string	"CPP_CLOSE_PAREN"
	.sleb128 23
	.uleb128 0x19
	.string	"CPP_EOF"
	.sleb128 24
	.uleb128 0x19
	.string	"CPP_EQ_EQ"
	.sleb128 25
	.uleb128 0x19
	.string	"CPP_NOT_EQ"
	.sleb128 26
	.uleb128 0x19
	.string	"CPP_GREATER_EQ"
	.sleb128 27
	.uleb128 0x19
	.string	"CPP_LESS_EQ"
	.sleb128 28
	.uleb128 0x19
	.string	"CPP_PLUS_EQ"
	.sleb128 29
	.uleb128 0x19
	.string	"CPP_MINUS_EQ"
	.sleb128 30
	.uleb128 0x19
	.string	"CPP_MULT_EQ"
	.sleb128 31
	.uleb128 0x19
	.string	"CPP_DIV_EQ"
	.sleb128 32
	.uleb128 0x19
	.string	"CPP_MOD_EQ"
	.sleb128 33
	.uleb128 0x19
	.string	"CPP_AND_EQ"
	.sleb128 34
	.uleb128 0x19
	.string	"CPP_OR_EQ"
	.sleb128 35
	.uleb128 0x19
	.string	"CPP_XOR_EQ"
	.sleb128 36
	.uleb128 0x19
	.string	"CPP_RSHIFT_EQ"
	.sleb128 37
	.uleb128 0x19
	.string	"CPP_LSHIFT_EQ"
	.sleb128 38
	.uleb128 0x19
	.string	"CPP_MIN_EQ"
	.sleb128 39
	.uleb128 0x19
	.string	"CPP_MAX_EQ"
	.sleb128 40
	.uleb128 0x19
	.string	"CPP_HASH"
	.sleb128 41
	.uleb128 0x19
	.string	"CPP_PASTE"
	.sleb128 42
	.uleb128 0x19
	.string	"CPP_OPEN_SQUARE"
	.sleb128 43
	.uleb128 0x19
	.string	"CPP_CLOSE_SQUARE"
	.sleb128 44
	.uleb128 0x19
	.string	"CPP_OPEN_BRACE"
	.sleb128 45
	.uleb128 0x19
	.string	"CPP_CLOSE_BRACE"
	.sleb128 46
	.uleb128 0x19
	.string	"CPP_SEMICOLON"
	.sleb128 47
	.uleb128 0x19
	.string	"CPP_ELLIPSIS"
	.sleb128 48
	.uleb128 0x19
	.string	"CPP_PLUS_PLUS"
	.sleb128 49
	.uleb128 0x19
	.string	"CPP_MINUS_MINUS"
	.sleb128 50
	.uleb128 0x19
	.string	"CPP_DEREF"
	.sleb128 51
	.uleb128 0x19
	.string	"CPP_DOT"
	.sleb128 52
	.uleb128 0x19
	.string	"CPP_SCOPE"
	.sleb128 53
	.uleb128 0x19
	.string	"CPP_DEREF_STAR"
	.sleb128 54
	.uleb128 0x19
	.string	"CPP_DOT_STAR"
	.sleb128 55
	.uleb128 0x19
	.string	"CPP_ATSIGN"
	.sleb128 56
	.uleb128 0x19
	.string	"CPP_NAME"
	.sleb128 57
	.uleb128 0x19
	.string	"CPP_NUMBER"
	.sleb128 58
	.uleb128 0x19
	.string	"CPP_CHAR"
	.sleb128 59
	.uleb128 0x19
	.string	"CPP_WCHAR"
	.sleb128 60
	.uleb128 0x19
	.string	"CPP_OTHER"
	.sleb128 61
	.uleb128 0x19
	.string	"CPP_STRING"
	.sleb128 62
	.uleb128 0x19
	.string	"CPP_WSTRING"
	.sleb128 63
	.uleb128 0x19
	.string	"CPP_HEADER_NAME"
	.sleb128 64
	.uleb128 0x19
	.string	"CPP_COMMENT"
	.sleb128 65
	.uleb128 0x19
	.string	"CPP_MACRO_ARG"
	.sleb128 66
	.uleb128 0x19
	.string	"CPP_PADDING"
	.sleb128 67
	.uleb128 0x19
	.string	"N_TTYPES"
	.sleb128 68
	.byte	0x0
	.uleb128 0x18
	.long	0x1afc
	.string	"c_lang"
	.byte	0x4
	.byte	0x2
	.byte	0x9f
	.uleb128 0x19
	.string	"CLK_GNUC89"
	.sleb128 0
	.uleb128 0x19
	.string	"CLK_GNUC99"
	.sleb128 1
	.uleb128 0x19
	.string	"CLK_STDC89"
	.sleb128 2
	.uleb128 0x19
	.string	"CLK_STDC94"
	.sleb128 3
	.uleb128 0x19
	.string	"CLK_STDC99"
	.sleb128 4
	.uleb128 0x19
	.string	"CLK_GNUCXX"
	.sleb128 5
	.uleb128 0x19
	.string	"CLK_CXX98"
	.sleb128 6
	.uleb128 0x19
	.string	"CLK_ASM"
	.sleb128 7
	.byte	0x0
	.uleb128 0x1c
	.long	0x1b40
	.byte	0x8
	.byte	0x2
	.byte	0xbc
	.uleb128 0x1d
	.long	.LASF27
	.byte	0x2
	.byte	0xbd
	.long	0x1b40
	.uleb128 0x1e
	.string	"source"
	.byte	0x2
	.byte	0xbe
	.long	0x1b46
	.uleb128 0x1e
	.string	"str"
	.byte	0x2
	.byte	0xbf
	.long	0x14a1
	.uleb128 0x1e
	.string	"arg_no"
	.byte	0x2
	.byte	0xc0
	.long	0xb5
	.uleb128 0x1e
	.string	"c"
	.byte	0x2
	.byte	0xc1
	.long	0xd1
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x14cb
	.uleb128 0x2
	.byte	0x4
	.long	0x1b4c
	.uleb128 0x3
	.long	0x1432
	.uleb128 0x6
	.string	"cppchar_t"
	.byte	0x2
	.byte	0xd4
	.long	0xb5
	.uleb128 0x1f
	.long	0x1b92
	.byte	0x4
	.byte	0x2
	.value	0x185
	.uleb128 0x19
	.string	"DEPS_NONE"
	.sleb128 0
	.uleb128 0x19
	.string	"DEPS_USER"
	.sleb128 1
	.uleb128 0x19
	.string	"DEPS_SYSTEM"
	.sleb128 2
	.byte	0x0
	.uleb128 0x20
	.long	0x1bfb
	.byte	0x8
	.byte	0x2
	.value	0x183
	.uleb128 0x9
	.string	"style"
	.byte	0x2
	.value	0x185
	.long	0x1b62
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"missing_files"
	.byte	0x2
	.value	0x188
	.long	0xcdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"phony_targets"
	.byte	0x2
	.value	0x18c
	.long	0xcdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.string	"ignore_main_file"
	.byte	0x2
	.value	0x18f
	.long	0xcdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x0
	.uleb128 0x21
	.string	"cpp_pending"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x1bfb
	.uleb128 0xd
	.long	0x1c8d
	.string	"search_path"
	.byte	0x20
	.byte	0x2
	.byte	0xeb
	.uleb128 0xf
	.long	.LASF28
	.byte	0x4
	.byte	0x86
	.long	0x1c8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"name"
	.byte	0x4
	.byte	0x8a
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"len"
	.byte	0x4
	.byte	0x8b
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"ino"
	.byte	0x4
	.byte	0x8e
	.long	0x4f3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"dev"
	.byte	0x4
	.byte	0x8f
	.long	0x500
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"sysp"
	.byte	0x4
	.byte	0x91
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"name_map"
	.byte	0x4
	.byte	0x94
	.long	0x1f78
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1c0f
	.uleb128 0x21
	.string	"file_name_map_list"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x1c93
	.uleb128 0x14
	.long	0x1cc4
	.byte	0x1
	.uleb128 0x13
	.long	0x1cc4
	.uleb128 0x13
	.long	0x1b46
	.uleb128 0x13
	.long	0xae
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xce5
	.uleb128 0x2
	.byte	0x4
	.long	0x1cae
	.uleb128 0x14
	.long	0x1ce1
	.byte	0x1
	.uleb128 0x13
	.long	0x1cc4
	.uleb128 0x13
	.long	0x1ce1
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1ce7
	.uleb128 0x3
	.long	0xbd6
	.uleb128 0x2
	.byte	0x4
	.long	0x1cd0
	.uleb128 0x14
	.long	0x1d0d
	.byte	0x1
	.uleb128 0x13
	.long	0x1cc4
	.uleb128 0x13
	.long	0xb5
	.uleb128 0x13
	.long	0x45f
	.uleb128 0x13
	.long	0x1b46
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1cf2
	.uleb128 0x14
	.long	0x1d29
	.byte	0x1
	.uleb128 0x13
	.long	0x1cc4
	.uleb128 0x13
	.long	0xb5
	.uleb128 0x13
	.long	0x1b40
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1d13
	.uleb128 0x14
	.long	0x1d45
	.byte	0x1
	.uleb128 0x13
	.long	0x1cc4
	.uleb128 0x13
	.long	0xb5
	.uleb128 0x13
	.long	0x1d45
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1d4b
	.uleb128 0x3
	.long	0x1496
	.uleb128 0x2
	.byte	0x4
	.long	0x1d2f
	.uleb128 0x14
	.long	0x1d67
	.byte	0x1
	.uleb128 0x13
	.long	0x1cc4
	.uleb128 0x13
	.long	0xb5
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1d56
	.uleb128 0x14
	.long	0x1d79
	.byte	0x1
	.uleb128 0x13
	.long	0x1cc4
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1d6d
	.uleb128 0x22
	.long	0x1db7
	.string	"node_type"
	.byte	0x4
	.byte	0x2
	.value	0x1c8
	.uleb128 0x19
	.string	"NT_VOID"
	.sleb128 0
	.uleb128 0x19
	.string	"NT_MACRO"
	.sleb128 1
	.uleb128 0x19
	.string	"NT_ASSERTION"
	.sleb128 2
	.byte	0x0
	.uleb128 0x22
	.long	0x1e32
	.string	"builtin_type"
	.byte	0x4
	.byte	0x2
	.value	0x1d1
	.uleb128 0x19
	.string	"BT_SPECLINE"
	.sleb128 0
	.uleb128 0x19
	.string	"BT_DATE"
	.sleb128 1
	.uleb128 0x19
	.string	"BT_FILE"
	.sleb128 2
	.uleb128 0x19
	.string	"BT_BASE_FILE"
	.sleb128 3
	.uleb128 0x19
	.string	"BT_INCLUDE_LEVEL"
	.sleb128 4
	.uleb128 0x19
	.string	"BT_TIME"
	.sleb128 5
	.uleb128 0x19
	.string	"BT_STDC"
	.sleb128 6
	.uleb128 0x19
	.string	"BT_PRAGMA"
	.sleb128 7
	.byte	0x0
	.uleb128 0x23
	.long	0x1e7b
	.byte	0x4
	.byte	0x2
	.value	0x1ee
	.uleb128 0x24
	.string	"macro"
	.byte	0x2
	.value	0x1ef
	.long	0x1e7b
	.uleb128 0x24
	.string	"answers"
	.byte	0x2
	.value	0x1f0
	.long	0x1eba
	.uleb128 0x24
	.string	"operator"
	.byte	0x2
	.value	0x1f4
	.long	0x16e1
	.uleb128 0x24
	.string	"builtin"
	.byte	0x2
	.value	0x1f6
	.long	0x1db7
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x156a
	.uleb128 0x8
	.long	0x1eba
	.long	.LASF29
	.byte	0x18
	.byte	0x2
	.byte	0x32
	.uleb128 0xf
	.long	.LASF28
	.byte	0x1
	.byte	0x20
	.long	0x1eba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF25
	.byte	0x1
	.byte	0x21
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"first"
	.byte	0x1
	.byte	0x22
	.long	0x2554
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1e81
	.uleb128 0x6
	.string	"uchar"
	.byte	0x4
	.byte	0x20
	.long	0xd1
	.uleb128 0x4
	.string	"double"
	.byte	0x8
	.byte	0x4
	.uleb128 0x1c
	.long	0x1efa
	.byte	0x4
	.byte	0x4
	.byte	0x4f
	.uleb128 0x1e
	.string	"tokens"
	.byte	0x4
	.byte	0x50
	.long	0x1efa
	.uleb128 0x1e
	.string	"text"
	.byte	0x4
	.byte	0x51
	.long	0x1f00
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1432
	.uleb128 0x2
	.byte	0x4
	.long	0x1f06
	.uleb128 0x3
	.long	0x1ec0
	.uleb128 0x2
	.byte	0x4
	.long	0x1b40
	.uleb128 0x15
	.long	.LASF30
	.byte	0x4
	.byte	0x6f
	.long	0x1f1c
	.uleb128 0x8
	.long	0x1f62
	.long	.LASF30
	.byte	0x10
	.byte	0x4
	.byte	0x6f
	.uleb128 0xf
	.long	.LASF28
	.byte	0x4
	.byte	0x72
	.long	0x1f62
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"base"
	.byte	0x4
	.byte	0x73
	.long	0x46a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"cur"
	.byte	0x4
	.byte	0x73
	.long	0x46a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF2
	.byte	0x4
	.byte	0x73
	.long	0x46a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1f1c
	.uleb128 0x21
	.string	"file_name_map"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x1f68
	.uleb128 0x18
	.long	0x1fcc
	.string	"include_type"
	.byte	0x4
	.byte	0x4
	.byte	0x98
	.uleb128 0x19
	.string	"IT_INCLUDE"
	.sleb128 0
	.uleb128 0x19
	.string	"IT_INCLUDE_NEXT"
	.sleb128 1
	.uleb128 0x19
	.string	"IT_IMPORT"
	.sleb128 2
	.uleb128 0x19
	.string	"IT_CMDLINE"
	.sleb128 3
	.byte	0x0
	.uleb128 0x25
	.long	0x1ff5
	.string	"utoken"
	.byte	0x4
	.byte	0x4
	.byte	0x9b
	.uleb128 0x1d
	.long	.LASF31
	.byte	0x4
	.byte	0x9c
	.long	0x1b46
	.uleb128 0x1e
	.string	"ptoken"
	.byte	0x4
	.byte	0x9d
	.long	0x1ff5
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1b46
	.uleb128 0x15
	.long	.LASF32
	.byte	0x4
	.byte	0xa1
	.long	0x2006
	.uleb128 0x8
	.long	0x204d
	.long	.LASF32
	.byte	0x10
	.byte	0x4
	.byte	0xa1
	.uleb128 0xf
	.long	.LASF28
	.byte	0x4
	.byte	0xa4
	.long	0x204d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"prev"
	.byte	0x4
	.byte	0xa4
	.long	0x204d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"base"
	.byte	0x4
	.byte	0xa5
	.long	0x1efa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF2
	.byte	0x4
	.byte	0xa5
	.long	0x1efa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1ffb
	.uleb128 0x15
	.long	.LASF33
	.byte	0x4
	.byte	0xae
	.long	0x205e
	.uleb128 0x8
	.long	0x20c6
	.long	.LASF33
	.byte	0x1c
	.byte	0x4
	.byte	0xae
	.uleb128 0xf
	.long	.LASF28
	.byte	0x4
	.byte	0xb2
	.long	0x2133
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"prev"
	.byte	0x4
	.byte	0xb2
	.long	0x2133
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"u"
	.byte	0x4
	.byte	0xc5
	.long	0x2113
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"buff"
	.byte	0x4
	.byte	0xc9
	.long	0x2139
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"macro"
	.byte	0x4
	.byte	0xcc
	.long	0x1b40
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"direct_p"
	.byte	0x4
	.byte	0xcf
	.long	0xcdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x26
	.long	0x20ee
	.byte	0x8
	.byte	0x4
	.byte	0xba
	.uleb128 0xe
	.string	"first"
	.byte	0x4
	.byte	0xbb
	.long	0x1fcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"last"
	.byte	0x4
	.byte	0xbc
	.long	0x1fcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x26
	.long	0x2113
	.byte	0x8
	.byte	0x4
	.byte	0xc1
	.uleb128 0xe
	.string	"cur"
	.byte	0x4
	.byte	0xc2
	.long	0x1f00
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF14
	.byte	0x4
	.byte	0xc3
	.long	0x1f00
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1c
	.long	0x2133
	.byte	0x8
	.byte	0x4
	.byte	0xb5
	.uleb128 0x1e
	.string	"iso"
	.byte	0x4
	.byte	0xbd
	.long	0x20c6
	.uleb128 0x1e
	.string	"trad"
	.byte	0x4
	.byte	0xc4
	.long	0x20ee
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x2053
	.uleb128 0x2
	.byte	0x4
	.long	0x1f11
	.uleb128 0xd
	.long	0x2274
	.string	"lexer_state"
	.byte	0x10
	.byte	0x4
	.byte	0xd3
	.uleb128 0xe
	.string	"in_directive"
	.byte	0x4
	.byte	0xd5
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"directive_wants_padding"
	.byte	0x4
	.byte	0xda
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.string	"skipping"
	.byte	0x4
	.byte	0xdd
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"angled_headers"
	.byte	0x4
	.byte	0xe0
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xe
	.string	"in_expression"
	.byte	0x4
	.byte	0xe3
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"save_comments"
	.byte	0x4
	.byte	0xe7
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xe
	.string	"lexing_comment"
	.byte	0x4
	.byte	0xea
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.string	"va_args_ok"
	.byte	0x4
	.byte	0xed
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.string	"poisoned_ok"
	.byte	0x4
	.byte	0xf0
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"prevent_expansion"
	.byte	0x4
	.byte	0xf3
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xe
	.string	"parsing_args"
	.byte	0x4
	.byte	0xf6
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.string	"skip_eval"
	.byte	0x4
	.byte	0xf9
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x8
	.long	0x22d2
	.long	.LASF11
	.byte	0x10
	.byte	0x4
	.byte	0xfe
	.uleb128 0xe
	.string	"n_defined"
	.byte	0x4
	.byte	0xff
	.long	0x1b40
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"n_true"
	.byte	0x4
	.value	0x100
	.long	0x1b40
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"n_false"
	.byte	0x4
	.value	0x101
	.long	0x1b40
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"n__VA_ARGS__"
	.byte	0x4
	.value	0x102
	.long	0x1b40
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x10
	.long	0x2348
	.string	"printer"
	.byte	0x18
	.byte	0x4
	.value	0x108
	.uleb128 0x9
	.string	"outf"
	.byte	0x4
	.value	0x109
	.long	0x2348
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"map"
	.byte	0x4
	.value	0x10a
	.long	0x1ce1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"prev"
	.byte	0x4
	.value	0x10b
	.long	0x1b46
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"source"
	.byte	0x4
	.value	0x10c
	.long	0x1b46
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"line"
	.byte	0x4
	.value	0x10d
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"printed"
	.byte	0x4
	.value	0x10e
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1c8
	.uleb128 0x2
	.byte	0x4
	.long	0xcfb
	.uleb128 0x21
	.string	"include_file"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x2354
	.uleb128 0x27
	.long	0x23d3
	.long	.LASF15
	.byte	0x14
	.byte	0x4
	.value	0x123
	.uleb128 0xf
	.long	.LASF28
	.byte	0x1
	.byte	0x29
	.long	0x23d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"line"
	.byte	0x1
	.byte	0x2a
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.long	.LASF10
	.byte	0x1
	.byte	0x2b
	.long	0x24bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"skip_elses"
	.byte	0x1
	.byte	0x2c
	.long	0xcdc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.long	.LASF34
	.byte	0x1
	.byte	0x2d
	.long	0xcdc
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xf
	.long	.LASF20
	.byte	0x1
	.byte	0x2e
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x2369
	.uleb128 0x20
	.long	0x2427
	.byte	0x10
	.byte	0x4
	.value	0x1bf
	.uleb128 0x9
	.string	"base"
	.byte	0x4
	.value	0x1c0
	.long	0x2427
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.long	.LASF2
	.byte	0x4
	.value	0x1c1
	.long	0x2427
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"cur"
	.byte	0x4
	.value	0x1c2
	.long	0x2427
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"first_line"
	.byte	0x4
	.value	0x1c3
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1ec0
	.uleb128 0x2
	.byte	0x4
	.long	0xcf0
	.uleb128 0x2
	.byte	0x4
	.long	0x205e
	.uleb128 0x8
	.long	0x2495
	.long	.LASF9
	.byte	0xc
	.byte	0x4
	.byte	0x1c
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.byte	0x57
	.long	0x2596
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"name"
	.byte	0x1
	.byte	0x58
	.long	0x1f00
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"length"
	.byte	0x1
	.byte	0x59
	.long	0xe2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"origin"
	.byte	0x1
	.byte	0x5a
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.string	"flags"
	.byte	0x1
	.byte	0x5b
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x249b
	.uleb128 0x3
	.long	0x2439
	.uleb128 0x21
	.string	"pending_option"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x24b7
	.uleb128 0x2
	.byte	0x4
	.long	0x24a0
	.uleb128 0x2
	.byte	0x4
	.long	0x24c3
	.uleb128 0x3
	.long	0x14cb
	.uleb128 0x21
	.string	"splay_tree_s"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x24c8
	.uleb128 0x21
	.string	"deps"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x24dd
	.uleb128 0x10
	.long	0x253d
	.string	"pragma_entry"
	.byte	0x10
	.byte	0x4
	.value	0x1a5
	.uleb128 0xf
	.long	.LASF28
	.byte	0x1
	.byte	0x35
	.long	0x253d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF36
	.byte	0x1
	.byte	0x36
	.long	0x24bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"is_nspace"
	.byte	0x1
	.byte	0x37
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"u"
	.byte	0x1
	.byte	0x3b
	.long	0x2575
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x24ea
	.uleb128 0x2
	.byte	0x4
	.long	0x703
	.uleb128 0x21
	.string	"op"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x2549
	.uleb128 0xa
	.long	0x2564
	.long	0x1432
	.uleb128 0xb
	.long	0xbc
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.string	"pragma_cb"
	.byte	0x1
	.byte	0x32
	.long	0x1d79
	.uleb128 0x1c
	.long	0x2596
	.byte	0x4
	.byte	0x1
	.byte	0x38
	.uleb128 0x1d
	.long	.LASF35
	.byte	0x1
	.byte	0x39
	.long	0x2564
	.uleb128 0x1e
	.string	"space"
	.byte	0x1
	.byte	0x3a
	.long	0x253d
	.byte	0x0
	.uleb128 0x6
	.string	"directive_handler"
	.byte	0x1
	.byte	0x53
	.long	0x1d79
	.uleb128 0x15
	.long	.LASF9
	.byte	0x1
	.byte	0x54
	.long	0x2439
	.uleb128 0x28
	.long	0x25ef
	.string	"skip_rest_of_line"
	.byte	0x1
	.byte	0xd0
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST0
	.uleb128 0x29
	.long	.LASF5
	.byte	0x1
	.byte	0xcf
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x28
	.long	0x261c
	.string	"check_eol"
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST1
	.uleb128 0x29
	.long	.LASF5
	.byte	0x1
	.byte	0xde
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x28
	.long	0x264f
	.string	"start_directive"
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST2
	.uleb128 0x29
	.long	.LASF5
	.byte	0x1
	.byte	0xe8
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x28
	.long	0x2694
	.string	"end_directive"
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST3
	.uleb128 0x29
	.long	.LASF5
	.byte	0x1
	.byte	0xf5
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"skip_line"
	.byte	0x1
	.byte	0xf6
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2b
	.long	0x26fe
	.string	"prepare_directive_trad"
	.byte	0x1
	.value	0x117
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST4
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x116
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2e
	.string	"no_expand"
	.byte	0x1
	.value	0x11a
	.long	0xcdc
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x2f
	.long	.LASF34
	.byte	0x1
	.value	0x11c
	.long	0xcdc
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x2757
	.string	"directive_diagnostics"
	.byte	0x1
	.value	0x136
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST5
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x133
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"dir"
	.byte	0x1
	.value	0x134
	.long	0x2757
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x135
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x275d
	.uleb128 0x3
	.long	0x25af
	.uleb128 0x31
	.long	0x27fd
	.byte	0x1
	.string	"_cpp_handle_directive"
	.byte	0x1
	.value	0x15c
	.byte	0x1
	.long	0xae
	.long	.LFB27
	.long	.LFE27
	.long	.LLST6
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x15a
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x15b
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"dir"
	.byte	0x1
	.value	0x15d
	.long	0x2757
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.string	"dname"
	.byte	0x1
	.value	0x15e
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"was_parsing_args"
	.byte	0x1
	.value	0x15f
	.long	0xcdc
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x2e
	.string	"skip"
	.byte	0x1
	.value	0x160
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2b
	.long	0x2860
	.string	"run_directive"
	.byte	0x1
	.value	0x1cc
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST7
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x1c8
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"dir_no"
	.byte	0x1
	.value	0x1c9
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"buf"
	.byte	0x1
	.value	0x1ca
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF25
	.byte	0x1
	.value	0x1cb
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x32
	.long	0x28c0
	.string	"lex_macro_node"
	.byte	0x1
	.value	0x1e4
	.byte	0x1
	.long	0x1b40
	.long	.LFB29
	.long	.LFE29
	.long	.LLST8
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x1e3
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF31
	.byte	0x1
	.value	0x1e5
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x1f0
	.long	0x1b40
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x28fe
	.string	"do_define"
	.byte	0x1
	.value	0x209
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST9
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x208
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x20a
	.long	0x1b40
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x293b
	.string	"do_undef"
	.byte	0x1
	.value	0x21d
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST10
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x21c
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x21e
	.long	0x1b40
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x29f9
	.string	"glue_header_name"
	.byte	0x1
	.value	0x238
	.byte	0x1
	.long	0x1b46
	.long	.LFB32
	.long	.LFE32
	.long	.LLST11
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x237
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF38
	.byte	0x1
	.value	0x239
	.long	0x1efa
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF31
	.byte	0x1
	.value	0x23a
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF7
	.byte	0x1
	.value	0x23b
	.long	0x46a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"len"
	.byte	0x1
	.value	0x23c
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.string	"total_len"
	.byte	0x1
	.value	0x23c
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"capacity"
	.byte	0x1
	.value	0x23c
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2e
	.string	"token_mem"
	.byte	0x1
	.value	0x259
	.long	0x46a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x2a4e
	.string	"parse_include"
	.byte	0x1
	.value	0x26d
	.byte	0x1
	.long	0x1b46
	.long	.LFB33
	.long	.LFE33
	.long	.LLST12
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x26c
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"dir"
	.byte	0x1
	.value	0x26e
	.long	0x45f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF38
	.byte	0x1
	.value	0x26f
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x2aa3
	.string	"do_include_common"
	.byte	0x1
	.value	0x294
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST13
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x292
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0x293
	.long	0x1f7e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF38
	.byte	0x1
	.value	0x295
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2b
	.long	0x2ad3
	.string	"do_include"
	.byte	0x1
	.value	0x2bb
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST14
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x2ba
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2b
	.long	0x2b02
	.string	"do_import"
	.byte	0x1
	.value	0x2c2
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST15
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x2c1
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2b
	.long	0x2b37
	.string	"do_include_next"
	.byte	0x1
	.value	0x2c9
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST16
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x2c8
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x32
	.long	0x2ba3
	.string	"read_flag"
	.byte	0x1
	.value	0x2d5
	.byte	0x1
	.long	0xb5
	.long	.LFB38
	.long	.LFE38
	.long	.LLST17
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x2d3
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"last"
	.byte	0x1
	.value	0x2d4
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF31
	.byte	0x1
	.value	0x2d6
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2e
	.string	"flag"
	.byte	0x1
	.value	0x2da
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x2c33
	.string	"dequote_string"
	.byte	0x1
	.value	0x2f0
	.byte	0x1
	.long	0x2427
	.long	.LFB39
	.long	.LFE39
	.long	.LLST18
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x2ed
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"str"
	.byte	0x1
	.value	0x2ee
	.long	0x1f00
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"len"
	.byte	0x1
	.value	0x2ef
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF39
	.byte	0x1
	.value	0x2f1
	.long	0x2427
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.string	"dst"
	.byte	0x1
	.value	0x2f2
	.long	0x2427
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF2
	.byte	0x1
	.value	0x2f3
	.long	0x1f00
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.string	"c"
	.byte	0x1
	.value	0x2f4
	.long	0x1b51
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x2ca8
	.string	"strtoul_for_line"
	.byte	0x1
	.value	0x30a
	.byte	0x1
	.long	0xae
	.long	.LFB40
	.long	.LFE40
	.long	.LLST19
	.uleb128 0x30
	.string	"str"
	.byte	0x1
	.value	0x307
	.long	0x1f00
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"len"
	.byte	0x1
	.value	0x308
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"nump"
	.byte	0x1
	.value	0x309
	.long	0x2ca8
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0x30b
	.long	0xf8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.string	"c"
	.byte	0x1
	.value	0x30c
	.long	0x1ec0
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xf8
	.uleb128 0x2b
	.long	0x2d17
	.string	"do_line"
	.byte	0x1
	.value	0x31f
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST20
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x31e
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF31
	.byte	0x1
	.value	0x320
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF40
	.byte	0x1
	.value	0x321
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF41
	.byte	0x1
	.value	0x322
	.long	0xf8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.string	"cap"
	.byte	0x1
	.value	0x325
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x2daa
	.string	"do_linemarker"
	.byte	0x1
	.value	0x34f
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST21
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x34e
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF31
	.byte	0x1
	.value	0x350
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF40
	.byte	0x1
	.value	0x351
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF41
	.byte	0x1
	.value	0x352
	.long	0xf8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.string	"new_sysp"
	.byte	0x1
	.value	0x353
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF12
	.byte	0x1
	.value	0x354
	.long	0xba1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.string	"flag"
	.byte	0x1
	.value	0x355
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	0x2e2b
	.byte	0x1
	.string	"_cpp_do_file_change"
	.byte	0x1
	.value	0x39a
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST22
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x395
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF12
	.byte	0x1
	.value	0x396
	.long	0xba1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"to_file"
	.byte	0x1
	.value	0x397
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.string	"file_line"
	.byte	0x1
	.value	0x398
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.string	"sysp"
	.byte	0x1
	.value	0x399
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.uleb128 0x2b
	.long	0x2e83
	.string	"do_diagnostic"
	.byte	0x1
	.value	0x3a9
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST23
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x3a6
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"code"
	.byte	0x1
	.value	0x3a7
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"print_dir"
	.byte	0x1
	.value	0x3a8
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2b
	.long	0x2eb1
	.string	"do_error"
	.byte	0x1
	.value	0x3b9
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST24
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x3b8
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2b
	.long	0x2ee1
	.string	"do_warning"
	.byte	0x1
	.value	0x3c0
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST25
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x3bf
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2b
	.long	0x2f1e
	.string	"do_ident"
	.byte	0x1
	.value	0x3c9
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST26
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x3c8
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"str"
	.byte	0x1
	.value	0x3ca
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x2f6c
	.string	"lookup_pragma_entry"
	.byte	0x1
	.value	0x3db
	.byte	0x1
	.long	0x253d
	.long	.LFB48
	.long	.LFE48
	.long	.LLST27
	.uleb128 0x30
	.string	"chain"
	.byte	0x1
	.value	0x3d9
	.long	0x253d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF36
	.byte	0x1
	.value	0x3da
	.long	0x24bd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x32
	.long	0x2fe7
	.string	"insert_pragma_entry"
	.byte	0x1
	.value	0x3eb
	.byte	0x1
	.long	0x253d
	.long	.LFB49
	.long	.LFE49
	.long	.LLST28
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x3e7
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"chain"
	.byte	0x1
	.value	0x3e8
	.long	0x2fe7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF36
	.byte	0x1
	.value	0x3e9
	.long	0x24bd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF35
	.byte	0x1
	.value	0x3ea
	.long	0x2564
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2e
	.string	"new"
	.byte	0x1
	.value	0x3ec
	.long	0x253d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x253d
	.uleb128 0x33
	.long	0x3096
	.byte	0x1
	.string	"cpp_register_pragma"
	.byte	0x1
	.value	0x40a
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST29
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x406
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"space"
	.byte	0x1
	.value	0x407
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"name"
	.byte	0x1
	.value	0x408
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF35
	.byte	0x1
	.value	0x409
	.long	0x2564
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2e
	.string	"chain"
	.byte	0x1
	.value	0x40b
	.long	0x2fe7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.string	"entry"
	.byte	0x1
	.value	0x40c
	.long	0x253d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x40d
	.long	0x24bd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"clash"
	.byte	0x1
	.value	0x423
	.long	.L286
	.byte	0x0
	.uleb128 0x33
	.long	0x30d7
	.byte	0x1
	.string	"_cpp_init_internal_pragmas"
	.byte	0x1
	.value	0x435
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST30
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x434
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2b
	.long	0x3131
	.string	"do_pragma"
	.byte	0x1
	.value	0x447
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.long	.LLST31
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x446
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x448
	.long	0x3131
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF31
	.byte	0x1
	.value	0x449
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF25
	.byte	0x1
	.value	0x44a
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x3137
	.uleb128 0x3
	.long	0x24ea
	.uleb128 0x2b
	.long	0x3170
	.string	"do_pragma_once"
	.byte	0x1
	.value	0x46c
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST32
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x46b
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2b
	.long	0x31c3
	.string	"do_pragma_poison"
	.byte	0x1
	.value	0x47d
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST33
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x47c
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"tok"
	.byte	0x1
	.value	0x47e
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.string	"hp"
	.byte	0x1
	.value	0x47f
	.long	0x1b40
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x320f
	.string	"do_pragma_system_header"
	.byte	0x1
	.value	0x4a3
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST34
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x4a2
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF7
	.byte	0x1
	.value	0x4a4
	.long	0x242d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x326c
	.string	"do_pragma_dependency"
	.byte	0x1
	.value	0x4b7
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.long	.LLST35
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x4b6
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF38
	.byte	0x1
	.value	0x4b8
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.string	"ordering"
	.byte	0x1
	.value	0x4b9
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x32c3
	.string	"get_token_no_padding"
	.byte	0x1
	.value	0x4d3
	.byte	0x1
	.long	0x1b46
	.long	.LFB57
	.long	.LFE57
	.long	.LLST36
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x4d2
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2f
	.long	.LASF39
	.byte	0x1
	.value	0x4d6
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x3311
	.string	"get__Pragma_string"
	.byte	0x1
	.value	0x4e1
	.byte	0x1
	.long	0x1b46
	.long	.LFB58
	.long	.LFE58
	.long	.LLST37
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x4e0
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"string"
	.byte	0x1
	.value	0x4e2
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2b
	.long	0x33ec
	.string	"destringize_and_run"
	.byte	0x1
	.value	0x4f7
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST38
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x4f5
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"in"
	.byte	0x1
	.value	0x4f6
	.long	0x1d45
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.string	"src"
	.byte	0x1
	.value	0x4f8
	.long	0x45f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF2
	.byte	0x1
	.value	0x4f8
	.long	0x45f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"dest"
	.byte	0x1
	.value	0x4f9
	.long	0x1c2
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF39
	.byte	0x1
	.value	0x4f9
	.long	0x1c2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2e
	.string	"saved_context"
	.byte	0x1
	.value	0x50e
	.long	0x2133
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.string	"saved_cur_token"
	.byte	0x1
	.value	0x50f
	.long	0x1efa
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"saved_cur_run"
	.byte	0x1
	.value	0x510
	.long	0x204d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x3434
	.byte	0x1
	.string	"_cpp_do__Pragma"
	.byte	0x1
	.value	0x532
	.byte	0x1
	.long	.LFB60
	.long	.LFE60
	.long	.LLST39
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x531
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"string"
	.byte	0x1
	.value	0x533
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x3461
	.string	"do_sccs"
	.byte	0x1
	.value	0x540
	.byte	0x1
	.long	.LFB61
	.long	.LFE61
	.long	.LLST40
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x53f
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2b
	.long	0x34b8
	.string	"do_ifdef"
	.byte	0x1
	.value	0x547
	.byte	0x1
	.long	.LFB62
	.long	.LFE62
	.long	.LLST41
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x546
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"skip"
	.byte	0x1
	.value	0x548
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2d
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x54c
	.long	0x24bd
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x3506
	.string	"do_ifndef"
	.byte	0x1
	.value	0x55d
	.byte	0x1
	.long	.LFB63
	.long	.LFE63
	.long	.LLST42
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x55c
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"skip"
	.byte	0x1
	.value	0x55e
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x55f
	.long	0x24bd
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2b
	.long	0x3541
	.string	"do_if"
	.byte	0x1
	.value	0x578
	.byte	0x1
	.long	.LFB64
	.long	.LFE64
	.long	.LLST43
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x577
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"skip"
	.byte	0x1
	.value	0x579
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x358c
	.string	"do_else"
	.byte	0x1
	.value	0x587
	.byte	0x1
	.long	.LFB65
	.long	.LFE65
	.long	.LLST44
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x586
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF7
	.byte	0x1
	.value	0x588
	.long	0x242d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.string	"ifs"
	.byte	0x1
	.value	0x589
	.long	0x23d3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x35d7
	.string	"do_elif"
	.byte	0x1
	.value	0x5a9
	.byte	0x1
	.long	.LFB66
	.long	.LFE66
	.long	.LLST45
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x5a8
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF7
	.byte	0x1
	.value	0x5aa
	.long	0x242d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.string	"ifs"
	.byte	0x1
	.value	0x5ab
	.long	0x23d3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x364d
	.string	"do_endif"
	.byte	0x1
	.value	0x5cd
	.byte	0x1
	.long	.LFB67
	.long	.LFE67
	.long	.LLST46
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x5cc
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF7
	.byte	0x1
	.value	0x5ce
	.long	0x242d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.string	"ifs"
	.byte	0x1
	.value	0x5cf
	.long	0x23d3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x2e
	.string	"__o"
	.byte	0x1
	.value	0x5e2
	.long	0x364d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.string	"__obj"
	.byte	0x1
	.value	0x5e2
	.long	0x1c0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x55b
	.uleb128 0x2b
	.long	0x3748
	.string	"push_conditional"
	.byte	0x1
	.value	0x5f0
	.byte	0x1
	.long	.LFB68
	.long	.LFE68
	.long	.LLST47
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x5ec
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"skip"
	.byte	0x1
	.value	0x5ed
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0x5ee
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.string	"cmacro"
	.byte	0x1
	.value	0x5ef
	.long	0x24bd
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2e
	.string	"ifs"
	.byte	0x1
	.value	0x5f1
	.long	0x23d3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF7
	.byte	0x1
	.value	0x5f2
	.long	0x242d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x2e
	.string	"__h"
	.byte	0x1
	.value	0x5f4
	.long	0x364d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.long	0x371d
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2e
	.string	"__o"
	.byte	0x1
	.value	0x5f4
	.long	0x364d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"__len"
	.byte	0x1
	.value	0x5f4
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x2e
	.string	"__o1"
	.byte	0x1
	.value	0x5f4
	.long	0x364d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x5f4
	.long	0x1c0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x3812
	.string	"parse_answer"
	.byte	0x1
	.value	0x60d
	.byte	0x1
	.long	0xae
	.long	.LFB69
	.long	.LFE69
	.long	.LLST48
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x60a
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"answerp"
	.byte	0x1
	.value	0x60b
	.long	0x3812
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0x60c
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"paren"
	.byte	0x1
	.value	0x60e
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF29
	.byte	0x1
	.value	0x60f
	.long	0x1eba
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"acount"
	.byte	0x1
	.value	0x610
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2e
	.string	"room_needed"
	.byte	0x1
	.value	0x62b
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF31
	.byte	0x1
	.value	0x62c
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.string	"dest"
	.byte	0x1
	.value	0x62d
	.long	0x1efa
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1eba
	.uleb128 0x32
	.long	0x38bf
	.string	"parse_assertion"
	.byte	0x1
	.value	0x65c
	.byte	0x1
	.long	0x1b40
	.long	.LFB70
	.long	.LFE70
	.long	.LLST49
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x659
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"answerp"
	.byte	0x1
	.value	0x65a
	.long	0x3812
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0x65b
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF39
	.byte	0x1
	.value	0x65d
	.long	0x1b40
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"predicate"
	.byte	0x1
	.value	0x65e
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2e
	.string	"len"
	.byte	0x1
	.value	0x66b
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"sym"
	.byte	0x1
	.value	0x66c
	.long	0x46a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x393e
	.string	"find_answer"
	.byte	0x1
	.value	0x67e
	.byte	0x1
	.long	0x3812
	.long	.LFB71
	.long	.LFE71
	.long	.LLST50
	.uleb128 0x2c
	.long	.LASF27
	.byte	0x1
	.value	0x67c
	.long	0x1b40
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"candidate"
	.byte	0x1
	.value	0x67d
	.long	0x393e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x67f
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF39
	.byte	0x1
	.value	0x680
	.long	0x3812
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2f
	.long	.LASF29
	.byte	0x1
	.value	0x684
	.long	0x1eba
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x3944
	.uleb128 0x3
	.long	0x1e81
	.uleb128 0x31
	.long	0x39b4
	.byte	0x1
	.string	"_cpp_test_assertion"
	.byte	0x1
	.value	0x69b
	.byte	0x1
	.long	0xae
	.long	.LFB72
	.long	.LFE72
	.long	.LLST51
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x699
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF23
	.byte	0x1
	.value	0x69a
	.long	0x39b4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF29
	.byte	0x1
	.value	0x69c
	.long	0x1eba
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x69d
	.long	0x1b40
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xb5
	.uleb128 0x2b
	.long	0x3a0e
	.string	"do_assert"
	.byte	0x1
	.value	0x6b3
	.byte	0x1
	.long	.LFB73
	.long	.LFE73
	.long	.LLST52
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x6b2
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"new_answer"
	.byte	0x1
	.value	0x6b4
	.long	0x1eba
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x6b5
	.long	0x1b40
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x3a84
	.string	"do_unassert"
	.byte	0x1
	.value	0x6d5
	.byte	0x1
	.long	.LFB74
	.long	.LFE74
	.long	.LLST53
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x6d4
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x6d6
	.long	0x1b40
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF29
	.byte	0x1
	.value	0x6d7
	.long	0x1eba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x6df
	.long	0x3812
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.string	"temp"
	.byte	0x1
	.value	0x6df
	.long	0x1eba
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x3aef
	.byte	0x1
	.string	"cpp_define"
	.byte	0x1
	.value	0x6fd
	.byte	0x1
	.long	.LFB75
	.long	.LFE75
	.long	.LLST54
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x6fb
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"str"
	.byte	0x1
	.value	0x6fc
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.string	"buf"
	.byte	0x1
	.value	0x6fe
	.long	0x1c2
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x6fe
	.long	0x1c2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF25
	.byte	0x1
	.value	0x6ff
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x33
	.long	0x3b38
	.byte	0x1
	.string	"_cpp_define_builtin"
	.byte	0x1
	.value	0x71b
	.byte	0x1
	.long	.LFB76
	.long	.LFE76
	.long	.LLST55
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x719
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"str"
	.byte	0x1
	.value	0x71a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x33
	.long	0x3b79
	.byte	0x1
	.string	"cpp_undef"
	.byte	0x1
	.value	0x724
	.byte	0x1
	.long	.LFB77
	.long	.LFE77
	.long	.LLST56
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x722
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"macro"
	.byte	0x1
	.value	0x723
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x33
	.long	0x3bb9
	.byte	0x1
	.string	"cpp_assert"
	.byte	0x1
	.value	0x72d
	.byte	0x1
	.long	.LFB78
	.long	.LFE78
	.long	.LLST57
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x72b
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"str"
	.byte	0x1
	.value	0x72c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x33
	.long	0x3bfb
	.byte	0x1
	.string	"cpp_unassert"
	.byte	0x1
	.value	0x736
	.byte	0x1
	.long	.LFB79
	.long	.LFE79
	.long	.LLST58
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x734
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"str"
	.byte	0x1
	.value	0x735
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2b
	.long	0x3c84
	.string	"handle_assertion"
	.byte	0x1
	.value	0x740
	.byte	0x1
	.long	.LFB80
	.long	.LFE80
	.long	.LLST59
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x73d
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"str"
	.byte	0x1
	.value	0x73e
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0x73f
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF25
	.byte	0x1
	.value	0x741
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x742
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2e
	.string	"buf"
	.byte	0x1
	.value	0x748
	.long	0x1c2
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x3cb9
	.byte	0x1
	.string	"cpp_errors"
	.byte	0x1
	.value	0x758
	.byte	0x1
	.long	0xb5
	.long	.LFB81
	.long	.LFE81
	.long	.LLST60
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x757
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	0x3cf3
	.byte	0x1
	.string	"cpp_get_options"
	.byte	0x1
	.value	0x760
	.byte	0x1
	.long	0x3cf3
	.long	.LFB82
	.long	.LFE82
	.long	.LLST61
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x75f
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xe6d
	.uleb128 0x31
	.long	0x3d35
	.byte	0x1
	.string	"cpp_get_callbacks"
	.byte	0x1
	.value	0x768
	.byte	0x1
	.long	0x3d35
	.long	.LFB83
	.long	.LFE83
	.long	.LLST62
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x767
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1621
	.uleb128 0x31
	.long	0x3d77
	.byte	0x1
	.string	"cpp_get_line_maps"
	.byte	0x1
	.value	0x770
	.byte	0x1
	.long	0x3d77
	.long	.LFB84
	.long	.LFE84
	.long	.LLST63
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x76f
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x3d7d
	.uleb128 0x3
	.long	0xc58
	.uleb128 0x33
	.long	0x3dc8
	.byte	0x1
	.string	"cpp_set_callbacks"
	.byte	0x1
	.value	0x779
	.byte	0x1
	.long	.LFB85
	.long	.LFE85
	.long	.LLST64
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x777
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"cb"
	.byte	0x1
	.value	0x778
	.long	0x3d35
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x31
	.long	0x3ebd
	.byte	0x1
	.string	"cpp_push_buffer"
	.byte	0x1
	.value	0x787
	.byte	0x1
	.long	0x242d
	.long	.LFB86
	.long	.LFE86
	.long	.LLST65
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x782
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF7
	.byte	0x1
	.value	0x783
	.long	0x1f00
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"len"
	.byte	0x1
	.value	0x784
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF16
	.byte	0x1
	.value	0x785
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF17
	.byte	0x1
	.value	0x786
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2e
	.string	"new"
	.byte	0x1
	.value	0x788
	.long	0x242d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x2e
	.string	"__h"
	.byte	0x1
	.value	0x788
	.long	0x364d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.long	0x3e92
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2e
	.string	"__o"
	.byte	0x1
	.value	0x788
	.long	0x364d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"__len"
	.byte	0x1
	.value	0x788
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x2e
	.string	"__o1"
	.byte	0x1
	.value	0x788
	.long	0x364d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x788
	.long	0x1c0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x3f4a
	.byte	0x1
	.string	"_cpp_pop_buffer"
	.byte	0x1
	.value	0x79e
	.byte	0x1
	.long	.LFB87
	.long	.LFE87
	.long	.LLST66
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x79d
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF7
	.byte	0x1
	.value	0x79f
	.long	0x242d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"inc"
	.byte	0x1
	.value	0x7a0
	.long	0x2363
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.string	"ifs"
	.byte	0x1
	.value	0x7a1
	.long	0x23d3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x2e
	.string	"__o"
	.byte	0x1
	.value	0x7b1
	.long	0x364d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.string	"__obj"
	.byte	0x1
	.value	0x7b1
	.long	0x1c0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x3fa1
	.byte	0x1
	.string	"_cpp_init_directives"
	.byte	0x1
	.value	0x7c8
	.byte	0x1
	.long	.LFB88
	.long	.LFE88
	.long	.LLST67
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x7c7
	.long	0x1cc4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x7c9
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x7ca
	.long	0x1b40
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xa
	.long	0x3fb1
	.long	0x25af
	.uleb128 0xb
	.long	0xbc
	.byte	0x12
	.byte	0x0
	.uleb128 0x36
	.string	"dtable"
	.byte	0x1
	.byte	0xbb
	.long	0x3fc5
	.byte	0x5
	.byte	0x3
	.long	dtable
	.uleb128 0x3
	.long	0x3fa1
	.uleb128 0x36
	.string	"linemarker_dir"
	.byte	0x1
	.byte	0xc5
	.long	0x275d
	.byte	0x5
	.byte	0x3
	.long	linemarker_dir
	.uleb128 0x37
	.string	"stderr"
	.byte	0x8
	.byte	0x90
	.long	0x4c7
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x4006
	.long	0xe2
	.uleb128 0xb
	.long	0xbc
	.byte	0xff
	.byte	0x0
	.uleb128 0x37
	.string	"_sch_istable"
	.byte	0xc
	.byte	0x48
	.long	0x401c
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.long	0x3ff6
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x4
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
	.uleb128 0x20
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x2f
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x37
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x19e
	.value	0x2
	.long	.Ldebug_info0
	.long	0x4022
	.long	0x2762
	.string	"_cpp_handle_directive"
	.long	0x2daa
	.string	"_cpp_do_file_change"
	.long	0x2fed
	.string	"cpp_register_pragma"
	.long	0x3096
	.string	"_cpp_init_internal_pragmas"
	.long	0x33ec
	.string	"_cpp_do__Pragma"
	.long	0x3949
	.string	"_cpp_test_assertion"
	.long	0x3a84
	.string	"cpp_define"
	.long	0x3aef
	.string	"_cpp_define_builtin"
	.long	0x3b38
	.string	"cpp_undef"
	.long	0x3b79
	.string	"cpp_assert"
	.long	0x3bb9
	.string	"cpp_unassert"
	.long	0x3c84
	.string	"cpp_errors"
	.long	0x3cb9
	.string	"cpp_get_options"
	.long	0x3cf9
	.string	"cpp_get_callbacks"
	.long	0x3d3b
	.string	"cpp_get_line_maps"
	.long	0x3d82
	.string	"cpp_set_callbacks"
	.long	0x3dc8
	.string	"cpp_push_buffer"
	.long	0x3ebd
	.string	"_cpp_pop_buffer"
	.long	0x3f4a
	.string	"_cpp_init_directives"
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
.LASF29:
	.string	"answer"
.LASF8:
	.string	"line_maps"
.LASF14:
	.string	"rlimit"
.LASF24:
	.string	"cpp_macro"
.LASF28:
	.string	"next"
.LASF11:
	.string	"spec_nodes"
.LASF16:
	.string	"from_stage3"
.LASF5:
	.string	"pfile"
.LASF34:
	.string	"was_skipping"
.LASF17:
	.string	"return_at_eof"
.LASF21:
	.string	"cpp_string"
.LASF31:
	.string	"token"
.LASF20:
	.string	"type"
.LASF26:
	.string	"cpp_callbacks"
.LASF33:
	.string	"cpp_context"
.LASF13:
	.string	"cpp_buffer"
.LASF9:
	.string	"directive"
.LASF23:
	.string	"value"
.LASF30:
	.string	"_cpp_buff"
.LASF40:
	.string	"new_file"
.LASF39:
	.string	"result"
.LASF15:
	.string	"if_stack"
.LASF25:
	.string	"count"
.LASF19:
	.string	"cpp_token"
.LASF18:
	.string	"cpp_options"
.LASF2:
	.string	"limit"
.LASF37:
	.string	"indented"
.LASF12:
	.string	"reason"
.LASF6:
	.string	"cpp_reader"
.LASF3:
	.string	"ht_identifier"
.LASF27:
	.string	"node"
.LASF1:
	.string	"_IO_FILE"
.LASF7:
	.string	"buffer"
.LASF41:
	.string	"new_lineno"
.LASF4:
	.string	"hash_table"
.LASF22:
	.string	"cpp_hashnode"
.LASF35:
	.string	"handler"
.LASF10:
	.string	"mi_cmacro"
.LASF32:
	.string	"tokenrun"
.LASF36:
	.string	"pragma"
.LASF38:
	.string	"header"
.LASF0:
	.string	"unsigned int"
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
