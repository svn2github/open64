	.file	"mangle.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.type	integer_type_codes, @object
	.size	integer_type_codes, 11
integer_type_codes:
	.byte	99
	.byte	97
	.byte	104
	.byte	115
	.byte	116
	.byte	105
	.byte	106
	.byte	108
	.byte	109
	.byte	120
	.byte	121
	.text
	.type	decl_is_template_id, @function
decl_is_template_id:
.LFB15:
	.file 1 "../../../kg++fe/gnu/cp/mangle.c"
	.loc 1 252 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	subl	$32, %esp
.LCFI2:
	.loc 1 253 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L2
.LBB2:
	.loc 1 257 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 259 0
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L4
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L28
.L4:
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L7
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L7
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L7
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L7
	movl	-4(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L28
.L7:
	movl	-4(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L28
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L13
	movl	-4(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L28
	movl	-4(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jne	.L28
.L13:
	.loc 1 261 0
	cmpl	$0, 12(%ebp)
	je	.L16
	.loc 1 264 0
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L18
	movl	-4(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L20
.L18:
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L21
	movl	-4(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L23
.L21:
	movl	-4(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L24
	movl	-4(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L26
.L24:
	movl	$0, -24(%ebp)
.L26:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L23:
	movl	-28(%ebp), %edx
	movl	%edx, -32(%ebp)
.L20:
	movl	12(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, (%eax)
.L16:
	.loc 1 265 0
	movl	$1, -20(%ebp)
	jmp	.L27
.L2:
.LBE2:
	.loc 1 271 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L28
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$6, %eax
	testb	%al, %al
	je	.L28
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
	jne	.L28
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L28
	.loc 1 276 0
	cmpl	$0, 12(%ebp)
	je	.L33
	.loc 1 279 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L33:
	.loc 1 280 0
	movl	$1, -20(%ebp)
	jmp	.L27
.L28:
	.loc 1 285 0
	movl	$0, -20(%ebp)
.L27:
	movl	-20(%ebp), %eax
	.loc 1 286 0
	leave
	ret
.LFE15:
	.size	decl_is_template_id, .-decl_is_template_id
	.section	.rodata
.LC0:
	.string	"  ++ substitutions  "
.LC1:
	.string	"???"
.LC2:
	.string	"                    "
.LC3:
	.string	" S%d_ = "
.LC4:
	.string	"CV-"
.LC5:
	.string	"%s (%s at %p)\n"
	.text
	.type	dump_substitution_candidates, @function
dump_substitution_candidates:
.LFB16:
	.loc 1 292 0
	pushl	%ebp
.LCFI3:
	movl	%esp, %ebp
.LCFI4:
	pushl	%ebx
.LCFI5:
	subl	$36, %esp
.LCFI6:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 295 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$20, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 296 0
	movl	$0, -16(%ebp)
	jmp	.L37
.L38:
.LBB3:
	.loc 1 298 0
	movl	44+G@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 299 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 301 0
	cmpl	$0, -16(%ebp)
	je	.L39
	.loc 1 302 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$20, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L39:
	.loc 1 303 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L41
	.loc 1 304 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L43
.L41:
	.loc 1 305 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L44
	.loc 1 306 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L43
.L44:
	.loc 1 307 0
	movl	-12(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L43
	.loc 1 308 0
	movl	-12(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
.L43:
	.loc 1 309 0
	movl	-16(%ebp), %edx
	subl	$1, %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 310 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L47
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L49
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L49
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	andl	$1, %eax
	testb	%al, %al
	je	.L47
.L49:
	.loc 1 314 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L47:
	.loc 1 315 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.LBE3:
	.loc 1 296 0
	addl	$1, -16(%ebp)
.L37:
	movl	44+G@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	cmpl	-16(%ebp), %eax
	ja	.L38
	.loc 1 318 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	dump_substitution_candidates, .-dump_substitution_candidates
	.type	add_substitution, @function
add_substitution:
.LFB18:
	.loc 1 346 0
	pushl	%ebp
.LCFI7:
	movl	%esp, %ebp
.LCFI8:
	pushl	%esi
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$32, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 354 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	canonicalize_for_substitution
	movl	%eax, -12(%ebp)
	.loc 1 358 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 378 0
	movl	44+G@GOTOFF(%ebx), %eax
	movl	4(%eax), %edx
	movl	44+G@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L55
	movl	44+G@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	44+G@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	varray_grow@PLT
	movl	%eax, 44+G@GOTOFF(%ebx)
.L55:
	movl	44+G@GOTOFF(%ebx), %esi
	movl	44+G@GOTOFF(%ebx), %ecx
	movl	4(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
	.loc 1 382 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE18:
	.size	add_substitution, .-add_substitution
	.type	canonicalize_for_substitution, @function
canonicalize_for_substitution:
.LFB17:
	.loc 1 330 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$4, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 332 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L59
	.loc 1 333 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L59:
	.loc 1 334 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L61
	.loc 1 335 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	canonical_type_variant@PLT
	movl	%eax, 8(%ebp)
.L61:
	.loc 1 337 0
	movl	8(%ebp), %eax
	.loc 1 338 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	canonicalize_for_substitution, .-canonicalize_for_substitution
	.section	.rodata
.LC6:
	.string	"Sa"
.LC7:
	.string	"Ss"
.LC8:
	.string	"Sb"
.LC9:
	.string	"Si"
.LC10:
	.string	"So"
.LC11:
	.string	"Sd"
.LC12:
	.string	"St"
	.text
	.type	find_substitution, @function
find_substitution:
.LFB21:
	.loc 1 482 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%edi
.LCFI18:
	pushl	%esi
.LCFI19:
	pushl	%ebx
.LCFI20:
	subl	$124, %esp
.LCFI21:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 484 0
	movl	44+G@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 494 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	canonicalize_for_substitution
	movl	%eax, 8(%ebp)
	.loc 1 498 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L65
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -124(%ebp)
	jmp	.L67
.L65:
	movl	8(%ebp), %eax
	movl	%eax, -124(%ebp)
.L67:
	movl	-124(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 499 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	je	.L68
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L70
.L68:
	movl	8(%ebp), %eax
	movl	%eax, -120(%ebp)
.L70:
	movl	-120(%ebp), %eax
	movl	%eax, -88(%ebp)
	.loc 1 502 0
	cmpl	$0, -92(%ebp)
	je	.L71
	movl	$0, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	is_std_substitution
	testl	%eax, %eax
	je	.L71
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	jne	.L71
.LBB4:
	.loc 1 506 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	movl	$2, -80(%ebp)
	movl	-84(%ebp), %eax
	movl	12(%eax), %edx
	movl	-80(%ebp), %eax
	addl	%eax, %edx
	movl	-84(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L75
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L75:
	movl	-80(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC6@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-84(%ebp), %eax
	movl	12(%eax), %edx
	movl	-80(%ebp), %eax
	addl	%eax, %edx
	movl	-84(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE4:
	.loc 1 507 0
	movl	$1, -116(%ebp)
	jmp	.L77
.L71:
	.loc 1 511 0
	cmpl	$0, -92(%ebp)
	je	.L78
	movl	$1, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	is_std_substitution
	testl	%eax, %eax
	je	.L78
	.loc 1 513 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L81
	.loc 1 520 0
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	testl	%eax, %eax
	jne	.L78
	movl	-88(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	je	.L78
.LBB5:
	.loc 1 523 0
	movl	-88(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 524 0
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	$3, %eax
	jne	.L78
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L78
	movl	-76(%ebp), %eax
	movl	24(%eax), %eax
	movl	$2, 4(%esp)
	movl	%eax, (%esp)
	call	is_std_substitution_char
	testl	%eax, %eax
	je	.L78
	movl	-76(%ebp), %eax
	movl	28(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	is_std_substitution_char
	testl	%eax, %eax
	je	.L78
.LBB6:
	.loc 1 531 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	movl	$2, -68(%ebp)
	movl	-72(%ebp), %eax
	movl	12(%eax), %edx
	movl	-68(%ebp), %eax
	addl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L90
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L90:
	movl	-68(%ebp), %edx
	movl	-72(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC7@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-72(%ebp), %eax
	movl	12(%eax), %edx
	movl	-68(%ebp), %eax
	addl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE6:
	.loc 1 532 0
	movl	$1, -116(%ebp)
	jmp	.L77
.L81:
.LBE5:
.LBB7:
	.loc 1 539 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
	movl	$2, -60(%ebp)
	movl	-64(%ebp), %eax
	movl	12(%eax), %edx
	movl	-60(%ebp), %eax
	addl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L92
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L92:
	movl	-60(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC8@GOTOFF(%ebx), %esi
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
.LBE7:
	.loc 1 540 0
	movl	$1, -116(%ebp)
	jmp	.L77
.L78:
	.loc 1 545 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L94
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	testl	%eax, %eax
	jne	.L94
	movl	-88(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L97
	movl	-88(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L94
.L97:
	movl	-88(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L99
	movl	-88(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L99
	movl	-88(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L99
	movl	-88(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L99
	movl	-88(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L94
.L99:
	movl	-88(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	je	.L94
	movl	-88(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L94
.LBB8:
	.loc 1 553 0
	movl	-88(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 554 0
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	$2, %eax
	jne	.L94
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L94
	movl	-56(%ebp), %eax
	movl	24(%eax), %eax
	movl	$2, 4(%esp)
	movl	%eax, (%esp)
	call	is_std_substitution_char
	testl	%eax, %eax
	je	.L94
.LBB9:
	.loc 1 560 0
	movl	-88(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 561 0
	movl	12+subst_identifiers@GOTOFF(%ebx), %eax
	cmpl	-52(%ebp), %eax
	jne	.L109
.LBB10:
	.loc 1 563 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	movl	$2, -44(%ebp)
	movl	-48(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	addl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L111
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L111:
	movl	-44(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC9@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-48(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	addl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE10:
	.loc 1 564 0
	movl	$1, -116(%ebp)
	jmp	.L77
.L109:
	.loc 1 567 0
	movl	16+subst_identifiers@GOTOFF(%ebx), %eax
	cmpl	-52(%ebp), %eax
	jne	.L113
.LBB11:
	.loc 1 569 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	movl	$2, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L115
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L115:
	movl	-36(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC10@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-40(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE11:
	.loc 1 570 0
	movl	$1, -116(%ebp)
	jmp	.L77
.L113:
	.loc 1 573 0
	movl	20+subst_identifiers@GOTOFF(%ebx), %eax
	cmpl	-52(%ebp), %eax
	jne	.L94
.LBB12:
	.loc 1 575 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	movl	$2, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L118
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L118:
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC11@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE12:
	.loc 1 576 0
	movl	$1, -116(%ebp)
	jmp	.L77
.L94:
.LBE9:
.LBE8:
	.loc 1 582 0
	cmpl	$0, -92(%ebp)
	je	.L120
	movl	-92(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L120
	movl	-92(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L123
	movl	-92(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L125
.L123:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -112(%ebp)
.L125:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -112(%ebp)
	jne	.L120
	movl	-92(%ebp), %eax
	movl	52(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	244(%eax), %eax
	cmpl	%eax, %edx
	jne	.L120
.LBB13:
	.loc 1 584 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	movl	$2, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L128
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L128:
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC12@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE13:
	.loc 1 585 0
	movl	$1, -116(%ebp)
	jmp	.L77
.L120:
	.loc 1 590 0
	movl	$0, -100(%ebp)
	jmp	.L130
.L131:
.LBB14:
	.loc 1 592 0
	movl	44+G@GOTOFF(%ebx), %edx
	movl	-100(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 595 0
	movl	-92(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L132
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L134
	cmpl	$0, -88(%ebp)
	je	.L134
	movl	-88(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L134
	movl	$0, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L132
.L134:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L138
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L138
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L141
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L143
.L141:
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jne	.L138
.L143:
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jne	.L138
.L132:
	.loc 1 600 0
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	write_substitution
	.loc 1 601 0
	movl	$1, -116(%ebp)
	jmp	.L77
.L138:
.LBE14:
	.loc 1 590 0
	addl	$1, -100(%ebp)
.L130:
	movl	-100(%ebp), %eax
	cmpl	-96(%ebp), %eax
	jl	.L131
	.loc 1 606 0
	movl	$0, -116(%ebp)
.L77:
	movl	-116(%ebp), %eax
	.loc 1 607 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	find_substitution, .-find_substitution
	.type	is_std_substitution, @function
is_std_substitution:
.LFB19:
	.loc 1 392 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	subl	$60, %esp
.LCFI24:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 393 0
	movl	$0, -8(%ebp)
	.loc 1 394 0
	movl	$0, -4(%ebp)
	.loc 1 396 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L147
	.loc 1 398 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 399 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L149
.L147:
	.loc 1 401 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L150
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L152
.L150:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L153
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L153
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L153
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L153
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L152
.L153:
	.loc 1 403 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 404 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 401 0
	jmp	.L149
.L152:
	.loc 1 408 0
	movl	$0, -60(%ebp)
	jmp	.L158
.L149:
	.loc 1 410 0
	movl	-4(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L159
	movl	-4(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L161
.L159:
	movl	global_namespace@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L161:
	movl	-52(%ebp), %edx
	movzbl	8(%edx), %eax
	cmpb	$39, %al
	jne	.L162
	movl	-4(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L164
	movl	-4(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L166
.L164:
	movl	global_namespace@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L166:
	movl	-44(%ebp), %edx
	movl	56(%edx), %eax
	testl	%eax, %eax
	je	.L167
	movl	-4(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L169
	movl	-4(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L171
.L169:
	movl	global_namespace@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L171:
	movl	-40(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L172
.L167:
	movl	global_namespace@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L172:
	movl	global_namespace@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -48(%ebp)
	jne	.L162
	movl	-4(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L174
	movl	-4(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L176
.L174:
	movl	global_namespace@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L176:
	movl	-36(%ebp), %edx
	movl	52(%edx), %eax
	movl	cp_global_trees@GOT(%ecx), %edx
	movl	244(%edx), %edx
	cmpl	%edx, %eax
	jne	.L162
	movl	-8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L162
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L179
	movl	-8(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L162
	jmp	.L182
.L179:
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L183
	movl	-8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L162
	jmp	.L182
.L183:
	movl	-8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L186
	movl	-8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L186
	movl	$1, -32(%ebp)
	jmp	.L189
.L186:
	movl	$0, -32(%ebp)
.L189:
	movzbl	-32(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L162
.L182:
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L190
	movl	-8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L192
.L190:
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L193
	movl	-8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L195
.L193:
	movl	-8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L196
	movl	-8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L198
.L196:
	movl	$0, -20(%ebp)
.L198:
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L195:
	movl	-24(%ebp), %edx
	movl	%edx, -28(%ebp)
.L192:
	movl	-28(%ebp), %edx
	movl	16(%edx), %eax
	movl	52(%eax), %edx
	movl	12(%ebp), %eax
	movl	subst_identifiers@GOTOFF(%ecx,%eax,4), %eax
	cmpl	%eax, %edx
	jne	.L162
	movl	$1, -56(%ebp)
	jmp	.L200
.L162:
	movl	$0, -56(%ebp)
.L200:
	movl	-56(%ebp), %eax
	movl	%eax, -60(%ebp)
.L158:
	movl	-60(%ebp), %eax
	.loc 1 415 0
	leave
	ret
.LFE19:
	.size	is_std_substitution, .-is_std_substitution
	.type	is_std_substitution_char, @function
is_std_substitution_char:
.LFB20:
	.loc 1 426 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	pushl	%ebx
.LCFI27:
	subl	$32, %esp
.LCFI28:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 429 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_std_substitution
	testl	%eax, %eax
	jne	.L203
	.loc 1 430 0
	movl	$0, -28(%ebp)
	jmp	.L205
.L203:
	.loc 1 432 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L206
	.loc 1 433 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L208
.L206:
	.loc 1 434 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L209
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L211
.L209:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L212
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L212
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L212
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L212
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L211
.L212:
	.loc 1 435 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 434 0
	jmp	.L208
.L211:
	.loc 1 438 0
	movl	$0, -28(%ebp)
	jmp	.L205
.L208:
	.loc 1 440 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	$1, %eax
	jne	.L217
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L217
	movl	$1, -24(%ebp)
	jmp	.L220
.L217:
	movl	$0, -24(%ebp)
.L220:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L205:
	movl	-28(%ebp), %eax
	.loc 1 443 0
	addl	$32, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	is_std_substitution_char, .-is_std_substitution_char
	.type	write_encoding, @function
write_encoding:
.LFB23:
	.loc 1 641 0
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
	.loc 1 644 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L223
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L223
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L226
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L223
.L226:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L228
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	4(%eax), %eax
	testb	%al, %al
	sete	-25(%ebp)
	jmp	.L230
.L228:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	sete	-25(%ebp)
.L230:
	cmpb	$0, -25(%ebp)
	je	.L223
	.loc 1 648 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L232
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L232
	.loc 1 649 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_name
	.loc 1 648 0
	jmp	.L247
.L232:
	.loc 1 651 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	write_source_name
	.loc 1 652 0
	jmp	.L247
.L223:
	.loc 1 655 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_name
	.loc 1 656 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L247
.LBB15:
	.loc 1 660 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_is_template_id
	testl	%eax, %eax
	je	.L238
	.loc 1 661 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mostly_instantiated_function_type@PLT
	movl	%eax, -8(%ebp)
	jmp	.L240
.L238:
	.loc 1 663 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L240:
	.loc 1 665 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L241
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L241
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L241
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_is_template_id
	testl	%eax, %eax
	je	.L241
	movl	$1, -24(%ebp)
	jmp	.L246
.L241:
	movl	$0, -24(%ebp)
.L246:
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_bare_function_type
.L247:
.LBE15:
	.loc 1 672 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	write_encoding, .-write_encoding
	.type	write_name, @function
write_name:
.LFB24:
	.loc 1 689 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	pushl	%ebx
.LCFI35:
	subl	$52, %esp
.LCFI36:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 694 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L249
	.loc 1 698 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	56(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 699 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	80(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L251
.L249:
	.loc 1 702 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L252
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L254
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L256
.L254:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L256:
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L257
.L252:
	movl	$0, -36(%ebp)
.L257:
	movl	-36(%ebp), %eax
	movl	%eax, -12(%ebp)
.L251:
	.loc 1 709 0
	cmpl	$0, -12(%ebp)
	je	.L258
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -12(%ebp)
	je	.L258
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L261
	movl	-12(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L263
	movl	-12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L265
.L263:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L265:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L261
	movl	-12(%ebp), %eax
	movl	52(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	244(%eax), %eax
	cmpl	%eax, %edx
	je	.L258
.L261:
	cmpl	$0, 12(%ebp)
	je	.L267
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L267
.L258:
.LBB16:
	.loc 1 716 0
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_is_template_id
	testl	%eax, %eax
	je	.L269
	.loc 1 719 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	write_unscoped_template_name
	.loc 1 720 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	write_template_args
	jmp	.L286
.L269:
	.loc 1 724 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_unscoped_name
	.loc 1 709 0
	jmp	.L286
.L267:
.LBE16:
	.loc 1 731 0
	cmpl	$0, 12(%ebp)
	jne	.L273
.LBB17:
	.loc 1 739 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 740 0
	jmp	.L275
.L276:
	.loc 1 743 0
	cmpl	$0, -12(%ebp)
	je	.L277
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L277
	.loc 1 744 0
	movl	-12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -12(%ebp)
.L277:
	.loc 1 746 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L280
	.loc 1 750 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	write_local_name
	.loc 1 751 0
	jmp	.L286
.L280:
	.loc 1 754 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 755 0
	movl	-12(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L282
	movl	-12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L284
.L282:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L284:
	movl	-24(%ebp), %eax
	movl	%eax, -12(%ebp)
.L275:
	.loc 1 740 0
	cmpl	$0, -12(%ebp)
	je	.L273
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L276
.L273:
.LBE17:
	.loc 1 762 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_nested_name
.L286:
	.loc 1 764 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	write_name, .-write_name
	.section	.rodata
	.type	__FUNCTION__.14349, @object
	.size	__FUNCTION__.14349, 20
__FUNCTION__.14349:
	.string	"write_unscoped_name"
	.align 4
.LC13:
	.string	"../../../kg++fe/gnu/cp/mangle.c"
	.text
	.type	write_unscoped_name, @function
write_unscoped_name:
.LFB25:
	.loc 1 772 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	pushl	%edi
.LCFI39:
	pushl	%esi
.LCFI40:
	pushl	%ebx
.LCFI41:
	subl	$44, %esp
.LCFI42:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 773 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L288
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L290
.L288:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L290:
	movl	-36(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 778 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L291
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L293
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L295
.L293:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L295:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jne	.L291
	movl	-24(%ebp), %eax
	movl	52(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	244(%eax), %eax
	cmpl	%eax, %edx
	jne	.L291
.LBB18:
	.loc 1 780 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	$2, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L298
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L298:
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC12@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE18:
	.loc 1 781 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_unqualified_name
	.loc 1 778 0
	jmp	.L305
.L291:
	.loc 1 785 0
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -24(%ebp)
	je	.L301
	cmpl	$0, -24(%ebp)
	je	.L301
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L304
.L301:
	.loc 1 788 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_unqualified_name
	.loc 1 785 0
	jmp	.L305
.L304:
	.loc 1 790 0
	leal	__FUNCTION__.14349@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$790, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L305:
	.loc 1 791 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE25:
	.size	write_unscoped_name, .-write_unscoped_name
	.type	write_unscoped_template_name, @function
write_unscoped_template_name:
.LFB26:
	.loc 1 799 0
	pushl	%ebp
.LCFI43:
	movl	%esp, %ebp
.LCFI44:
	subl	$8, %esp
.LCFI45:
	.loc 1 802 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_substitution
	testl	%eax, %eax
	jne	.L309
	.loc 1 804 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_unscoped_name
	.loc 1 805 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_substitution
.L309:
	.loc 1 806 0
	leave
	ret
.LFE26:
	.size	write_unscoped_template_name, .-write_unscoped_template_name
	.type	write_nested_name, @function
write_nested_name:
.LFB27:
	.loc 1 818 0
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
.LBB19:
	.loc 1 823 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L311
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L311:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movb	$78, (%eax)
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE19:
	.loc 1 826 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L313
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L313
	.loc 1 829 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L316
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	andl	$2, %eax
	testl	%eax, %eax
	je	.L316
.LBB20:
	.loc 1 830 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L319
	movl	$1, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L319:
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movb	$86, (%eax)
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.L316:
.LBE20:
	.loc 1 831 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L313
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	andl	$1, %eax
	testb	%al, %al
	je	.L313
.LBB21:
	.loc 1 832 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L323
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L323:
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movb	$75, (%eax)
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
.L313:
.LBE21:
	.loc 1 836 0
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_is_template_id
	testl	%eax, %eax
	je	.L325
	.loc 1 839 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_template_prefix
	.loc 1 840 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	write_template_args
	jmp	.L327
.L325:
	.loc 1 845 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, (%esp)
	call	write_prefix
	.loc 1 846 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_unqualified_name
.L327:
.LBB22:
	.loc 1 848 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L328
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L328:
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movb	$69, (%eax)
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE22:
	.loc 1 849 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	write_nested_name, .-write_nested_name
	.type	write_prefix, @function
write_prefix:
.LFB28:
	.loc 1 860 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%ebx
.LCFI52:
	subl	$52, %esp
.LCFI53:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 863 0
	movl	$0, -12(%ebp)
	.loc 1 867 0
	cmpl	$0, 8(%ebp)
	je	.L368
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jne	.L334
	.loc 1 869 0
	jmp	.L368
.L334:
	.loc 1 871 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_substitution
	testl	%eax, %eax
	jne	.L368
	.loc 1 874 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L337
	.loc 1 881 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L368
	.loc 1 884 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 885 0
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_is_template_id
	jmp	.L340
.L337:
	.loc 1 890 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 891 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L340
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L342
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L340
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
	jne	.L340
.L342:
	.loc 1 892 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L345
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L347
.L345:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L348
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L350
.L348:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L351
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L353
.L351:
	movl	$0, -28(%ebp)
.L353:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
.L350:
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
.L347:
	movl	-36(%ebp), %eax
	movl	%eax, -12(%ebp)
.L340:
	.loc 1 896 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	jne	.L354
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L354
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jg	.L354
	.loc 1 898 0
	movb	$1, 52+G@GOTOFF(%ebx)
.L354:
	.loc 1 900 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	jne	.L358
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L360
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L358
.L360:
	.loc 1 902 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_template_param
	.loc 1 900 0
	jmp	.L362
.L358:
	.loc 1 903 0
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L363
	.loc 1 906 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_template_prefix
	.loc 1 907 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	write_template_args
	jmp	.L362
.L363:
	.loc 1 912 0
	movl	-8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L365
	movl	-8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L367
.L365:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L367:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	write_prefix
	.loc 1 913 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_unqualified_name
.L362:
	.loc 1 916 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_substitution
.L368:
	.loc 1 917 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	write_prefix, .-write_prefix
	.section	.rodata
	.type	__FUNCTION__.14563, @object
	.size	__FUNCTION__.14563, 22
__FUNCTION__.14563:
	.string	"write_template_prefix"
	.text
	.type	write_template_prefix, @function
write_template_prefix:
.LFB29:
	.loc 1 926 0
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
	.loc 1 927 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	je	.L370
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L372
.L370:
	movl	8(%ebp), %eax
	movl	%eax, -60(%ebp)
.L372:
	movl	-60(%ebp), %edx
	movl	%edx, -24(%ebp)
	.loc 1 928 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L373
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L375
.L373:
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
.L375:
	movl	-56(%ebp), %edx
	movl	%edx, -20(%ebp)
	.loc 1 929 0
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L376
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L378
.L376:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L378:
	movl	-52(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 937 0
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_is_template_id
	testl	%eax, %eax
	je	.L379
	.loc 1 938 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L381
.L379:
	.loc 1 939 0
	movl	-20(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L382
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L384
	movl	-20(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L382
	movl	-20(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jne	.L382
.L384:
	.loc 1 940 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L387
	movl	-20(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L389
.L387:
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L390
	movl	-20(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L392
.L390:
	movl	-20(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L393
	movl	-20(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L395
.L393:
	movl	$0, -40(%ebp)
.L395:
	movl	-40(%ebp), %edx
	movl	%edx, -44(%ebp)
.L392:
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
.L389:
	movl	-48(%ebp), %edx
	movl	16(%edx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 939 0
	jmp	.L381
.L382:
	.loc 1 943 0
	leal	__FUNCTION__.14563@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$943, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L381:
	.loc 1 967 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L396
	.loc 1 968 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -8(%ebp)
	jmp	.L398
.L396:
	.loc 1 970 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L398:
	.loc 1 972 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_substitution
	testl	%eax, %eax
	jne	.L410
	.loc 1 976 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-61, %al
	jne	.L401
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L401
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jg	.L401
	.loc 1 978 0
	movb	$1, 52+G@GOTOFF(%ebx)
.L401:
	.loc 1 980 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-61, %al
	jne	.L405
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L407
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L405
.L407:
	.loc 1 982 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	write_template_param
	.loc 1 980 0
	jmp	.L409
.L405:
	.loc 1 985 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	write_prefix
	.loc 1 986 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	write_unqualified_name
.L409:
	.loc 1 989 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_substitution
.L410:
	.loc 1 990 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	write_template_prefix, .-write_template_prefix
	.type	write_unqualified_name, @function
write_unqualified_name:
.LFB30:
	.loc 1 1002 0
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
	.loc 1 1005 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L412
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L412
	.loc 1 1006 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_special_name_constructor
	.loc 1 1005 0
	jmp	.L441
.L412:
	.loc 1 1007 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L416
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L416
	.loc 1 1008 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_special_name_destructor
	.loc 1 1007 0
	jmp	.L441
.L416:
	.loc 1 1009 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L419
.LBB23:
	.loc 1 1014 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_is_template_id
	testl	%eax, %eax
	je	.L421
.LBB24:
	.loc 1 1016 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mostly_instantiated_function_type@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1017 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L423
.L421:
.LBE24:
	.loc 1 1020 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L424
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L426
.L424:
	movl	$0, -60(%ebp)
.L426:
	movl	-60(%ebp), %eax
	movl	%eax, -32(%ebp)
.L423:
	.loc 1 1021 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	write_conversion_operator_name
	jmp	.L441
.L419:
.LBE23:
	.loc 1 1023 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L427
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L427
.LBB25:
	.loc 1 1026 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L430
	.loc 1 1027 0
	movl	assignment_operator_name_info@GOT(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L432
.L430:
	.loc 1 1029 0
	movl	operator_name_info@GOT(%ebx), %eax
	movl	%eax, -24(%ebp)
.L432:
.LBB26:
	.loc 1 1031 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L433
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	40(%eax), %eax
	sall	$4, %eax
	movl	%eax, -56(%ebp)
	jmp	.L435
.L433:
	movl	$0, -56(%ebp)
.L435:
	movl	-56(%ebp), %eax
	addl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -64(%ebp)
	movl	$0, %eax
	cld
	movl	-64(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L436
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L436:
	movl	-16(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L438
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	40(%eax), %eax
	sall	$4, %eax
	movl	%eax, -48(%ebp)
	jmp	.L440
.L438:
	movl	$0, -48(%ebp)
.L440:
	movl	-48(%ebp), %eax
	addl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	movl	-52(%ebp), %ecx
	rep
	movsb
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1023 0
	jmp	.L441
.L427:
.LBE26:
.LBE25:
	.loc 1 1034 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	write_source_name
.L441:
	.loc 1 1035 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE30:
	.size	write_unqualified_name, .-write_unqualified_name
	.section	.rodata
.LC14:
	.string	"cv"
	.text
	.type	write_conversion_operator_name, @function
write_conversion_operator_name:
.LFB31:
	.loc 1 1041 0
	pushl	%ebp
.LCFI64:
	movl	%esp, %ebp
.LCFI65:
	pushl	%edi
.LCFI66:
	pushl	%esi
.LCFI67:
	pushl	%ebx
.LCFI68:
	subl	$28, %esp
.LCFI69:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB27:
	.loc 1 1042 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	$2, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L443
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L443:
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC14@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE27:
	.loc 1 1043 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_type
	.loc 1 1044 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE31:
	.size	write_conversion_operator_name, .-write_conversion_operator_name
	.type	write_source_name, @function
write_source_name:
.LFB32:
	.loc 1 1053 0
	pushl	%ebp
.LCFI70:
	movl	%esp, %ebp
.LCFI71:
	subl	$24, %esp
.LCFI72:
	.loc 1 1058 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L447
	.loc 1 1059 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 8(%ebp)
.L447:
	.loc 1 1061 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, %edx
	movl	$10, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	write_number
	.loc 1 1062 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	write_identifier
	.loc 1 1063 0
	leave
	ret
.LFE32:
	.size	write_source_name, .-write_source_name
	.section	.rodata
	.align 32
	.type	base_digits.14787, @object
	.size	base_digits.14787, 37
base_digits.14787:
	.string	"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
.globl __udivdi3
	.text
	.type	hwint_to_ascii, @function
hwint_to_ascii:
.LFB33:
	.loc 1 1077 0
	pushl	%ebp
.LCFI73:
	movl	%esp, %ebp
.LCFI74:
	pushl	%edi
.LCFI75:
	pushl	%esi
.LCFI76:
	pushl	%ebx
.LCFI77:
	subl	$60, %esp
.LCFI78:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1079 0
	movl	$0, -20(%ebp)
	.loc 1 1081 0
	jmp	.L451
.L452:
.LBB28:
	.loc 1 1083 0
	movl	16(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 1085 0
	subl	$1, 20(%ebp)
	movl	16(%ebp), %eax
	movl	$0, %edx
	movl	%edx, %esi
	imull	-32(%ebp), %esi
	movl	-28(%ebp), %ecx
	imull	%eax, %ecx
	addl	%ecx, %esi
	movl	-32(%ebp), %ecx
	mull	%ecx
	addl	%edx, %esi
	movl	%esi, %edx
	movl	-40(%ebp), %esi
	movl	-36(%ebp), %edi
	movl	%esi, -48(%ebp)
	movl	%edi, -44(%ebp)
	movl	-48(%ebp), %esi
	movl	-44(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	leal	base_digits.14787@GOTOFF(%ebx), %ecx
	movzbl	(%ecx,%eax), %edx
	movl	20(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 1086 0
	addl	$1, -20(%ebp)
	.loc 1 1087 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
.L451:
.LBE28:
	.loc 1 1081 0
	movl	-40(%ebp), %eax
	orl	-36(%ebp), %eax
	testl	%eax, %eax
	jne	.L452
	.loc 1 1089 0
	jmp	.L454
.L455:
	.loc 1 1091 0
	subl	$1, 20(%ebp)
	movzbl	base_digits.14787@GOTOFF(%ebx), %edx
	movl	20(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 1092 0
	addl	$1, -20(%ebp)
.L454:
	.loc 1 1089 0
	movl	-20(%ebp), %eax
	cmpl	24(%ebp), %eax
	jb	.L455
	.loc 1 1094 0
	movl	-20(%ebp), %eax
	.loc 1 1095 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	hwint_to_ascii, .-hwint_to_ascii
	.type	write_number, @function
write_number:
.LFB34:
	.loc 1 1106 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	pushl	%edi
.LCFI81:
	pushl	%esi
.LCFI82:
	pushl	%ebx
.LCFI83:
	subl	$140, %esp
.LCFI84:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -120(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -116(%ebp)
	.loc 1 1106 0
	movl	%gs:20, %eax
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	.loc 1 1108 0
	movl	$0, -100(%ebp)
	.loc 1 1110 0
	cmpl	$0, 16(%ebp)
	jne	.L459
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	testl	%edx, %edx
	jns	.L459
.LBB29:
	.loc 1 1112 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -96(%ebp)
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-96(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L462
	movl	$1, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L462:
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	movb	$110, (%eax)
	leal	1(%eax), %edx
	movl	-96(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE29:
	.loc 1 1113 0
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
.L459:
	.loc 1 1115 0
	leal	-84(%ebp), %eax
	addl	$64, %eax
	movl	$1, 16(%esp)
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	hwint_to_ascii
	movl	%eax, -100(%ebp)
.LBB30:
	.loc 1 1116 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
	movl	-100(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	-92(%ebp), %eax
	movl	12(%eax), %edx
	movl	-88(%ebp), %eax
	addl	%eax, %edx
	movl	-92(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L464
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L464:
	movl	-88(%ebp), %ecx
	movl	-100(%ebp), %edx
	leal	-84(%ebp), %eax
	subl	%edx, %eax
	leal	64(%eax), %edx
	movl	-92(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	movl	-92(%ebp), %eax
	movl	12(%eax), %edx
	movl	-88(%ebp), %eax
	addl	%eax, %edx
	movl	-92(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE30:
	.loc 1 1117 0
	movl	-20(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L467
	call	__stack_chk_fail_local
.L467:
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE34:
	.size	write_number, .-write_number
	.section	.rodata
.LC15:
	.string	"%08lx"
	.text
	.type	write_real_cst, @function
write_real_cst:
.LFB36:
	.loc 1 1217 0
	pushl	%ebp
.LCFI85:
	movl	%esp, %ebp
.LCFI86:
	pushl	%edi
.LCFI87:
	pushl	%esi
.LCFI88:
	pushl	%ebx
.LCFI89:
	subl	$92, %esp
.LCFI90:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -80(%ebp)
	.loc 1 1217 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 1218 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L469
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L471
.L469:
.LBB31:
	.loc 1 1224 0
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1225 0
	movl	-48(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	shrw	$5, %ax
	movzwl	%ax, %eax
	movl	%eax, -44(%ebp)
	.loc 1 1227 0
	movl	-48(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	-80(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	real_to_target@PLT
	.loc 1 1234 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L472
	.loc 1 1235 0
	movl	$0, -60(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	$1, -52(%ebp)
	jmp	.L475
.L472:
	.loc 1 1237 0
	movl	-44(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -60(%ebp)
	movl	$-1, -56(%ebp)
	movl	$-1, -52(%ebp)
	.loc 1 1239 0
	jmp	.L475
.L476:
	.loc 1 1241 0
	movl	-60(%ebp), %eax
	movl	-76(%ebp,%eax,4), %eax
	movl	%eax, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-25(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
.LBB32:
	.loc 1 1242 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	movl	$8, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L477
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L477:
	movl	-36(%ebp), %ecx
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	leal	-25(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	movl	-40(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE32:
	.loc 1 1239 0
	movl	-52(%ebp), %eax
	addl	%eax, -60(%ebp)
.L475:
	movl	-60(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jne	.L476
	.loc 1 1218 0
	jmp	.L484
.L471:
.LBE31:
.LBB33:
	.loc 1 1252 0
	movl	$0, -32(%ebp)
	jmp	.L481
.L482:
	.loc 1 1253 0
	movl	-80(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	$16, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	write_number
	.loc 1 1252 0
	addl	$1, -32(%ebp)
.L481:
	cmpl	$23, -32(%ebp)
	jbe	.L482
	.loc 1 1256 0
	movb	$1, 52+G@GOTOFF(%ebx)
.L484:
.LBE33:
	.loc 1 1258 0
	movl	-16(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L485
	call	__stack_chk_fail_local
.L485:
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE36:
	.size	write_real_cst, .-write_real_cst
	.type	write_identifier, @function
write_identifier:
.LFB37:
	.loc 1 1267 0
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	pushl	%edi
.LCFI93:
	pushl	%esi
.LCFI94:
	pushl	%ebx
.LCFI95:
	subl	$28, %esp
.LCFI96:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB34:
	.loc 1 1269 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
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
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L487
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L487:
	movl	-16(%ebp), %ecx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE34:
	.loc 1 1270 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE37:
	.size	write_identifier, .-write_identifier
	.section	.rodata
	.align 4
	.type	__FUNCTION__.15018, @object
	.size	__FUNCTION__.15018, 31
__FUNCTION__.15018:
	.string	"write_special_name_constructor"
.LC16:
	.string	"C1"
.LC17:
	.string	"C2"
	.text
	.type	write_special_name_constructor, @function
write_special_name_constructor:
.LFB38:
	.loc 1 1288 0
	pushl	%ebp
.LCFI97:
	movl	%esp, %ebp
.LCFI98:
	pushl	%edi
.LCFI99:
	pushl	%esi
.LCFI100:
	pushl	%ebx
.LCFI101:
	subl	$28, %esp
.LCFI102:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1289 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L491
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	192(%eax), %eax
	cmpl	%eax, %edx
	je	.L493
.L491:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L494
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L496
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L493
.L496:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L493
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L494
.L493:
.LBB35:
	.loc 1 1294 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	movl	$2, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L499
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L499:
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC16@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1289 0
	jmp	.L507
.L494:
.LBE35:
	.loc 1 1295 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L502
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	196(%eax), %eax
	cmpl	%eax, %edx
	jne	.L502
.LBB36:
	.loc 1 1296 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	$2, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L505
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L505:
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC17@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1295 0
	jmp	.L507
.L502:
.LBE36:
	.loc 1 1298 0
	leal	__FUNCTION__.15018@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1298, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L507:
	.loc 1 1299 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE38:
	.size	write_special_name_constructor, .-write_special_name_constructor
	.section	.rodata
	.type	__FUNCTION__.15085, @object
	.size	__FUNCTION__.15085, 30
__FUNCTION__.15085:
	.string	"write_special_name_destructor"
.LC18:
	.string	"D0"
.LC19:
	.string	"D1"
.LC20:
	.string	"D2"
	.text
	.type	write_special_name_destructor, @function
write_special_name_destructor:
.LFB39:
	.loc 1 1315 0
	pushl	%ebp
.LCFI103:
	movl	%esp, %ebp
.LCFI104:
	pushl	%edi
.LCFI105:
	pushl	%esi
.LCFI106:
	pushl	%ebx
.LCFI107:
	subl	$44, %esp
.LCFI108:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1316 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L509
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	212(%eax), %eax
	cmpl	%eax, %edx
	jne	.L509
.LBB37:
	.loc 1 1317 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	movl	$2, -32(%ebp)
	movl	-36(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L512
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L512:
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC18@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-36(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1316 0
	jmp	.L530
.L509:
.LBE37:
	.loc 1 1318 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L515
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	204(%eax), %eax
	cmpl	%eax, %edx
	je	.L517
.L515:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L518
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L520
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L517
.L520:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L517
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L518
.L517:
.LBB38:
	.loc 1 1323 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	movl	$2, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L523
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L523:
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC19@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1318 0
	jmp	.L530
.L518:
.LBE38:
	.loc 1 1324 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L525
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	208(%eax), %eax
	cmpl	%eax, %edx
	jne	.L525
.LBB39:
	.loc 1 1325 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	$2, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L528
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L528:
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC20@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1324 0
	jmp	.L530
.L525:
.LBE39:
	.loc 1 1327 0
	leal	__FUNCTION__.15085@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1327, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L530:
	.loc 1 1328 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE39:
	.size	write_special_name_destructor, .-write_special_name_destructor
	.type	discriminator_for_local_entity, @function
discriminator_for_local_entity:
.LFB40:
	.loc 1 1337 0
	pushl	%ebp
.LCFI109:
	movl	%esp, %ebp
.LCFI110:
	subl	$16, %esp
.LCFI111:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1342 0
	movl	$0, -4(%ebp)
	.loc 1 1344 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L532
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L532
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L532
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L532
	.loc 1 1345 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1344 0
	jmp	.L537
.L532:
	.loc 1 1346 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L537
	.loc 1 1349 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1350 0
	movl	local_classes@GOT(%ecx), %eax
	movl	(%eax), %eax
	addl	$16, %eax
	movl	%eax, -8(%ebp)
	jmp	.L539
.L540:
	.loc 1 1351 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	cmpl	%eax, %edx
	jne	.L541
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	80(%eax), %edx
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L541
	.loc 1 1353 0
	addl	$1, -4(%ebp)
.L541:
	.loc 1 1350 0
	addl	$4, -8(%ebp)
.L539:
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L540
.L537:
	.loc 1 1356 0
	movl	-4(%ebp), %eax
	.loc 1 1357 0
	leave
	ret
.LFE40:
	.size	discriminator_for_local_entity, .-discriminator_for_local_entity
	.type	discriminator_for_string_literal, @function
discriminator_for_string_literal:
.LFB41:
	.loc 1 1367 0
	pushl	%ebp
.LCFI112:
	movl	%esp, %ebp
.LCFI113:
	.loc 1 1369 0
	movl	$0, %eax
	.loc 1 1370 0
	popl	%ebp
	ret
.LFE41:
	.size	discriminator_for_string_literal, .-discriminator_for_string_literal
	.type	write_discriminator, @function
write_discriminator:
.LFB42:
	.loc 1 1381 0
	pushl	%ebp
.LCFI114:
	movl	%esp, %ebp
.LCFI115:
	pushl	%ebx
.LCFI116:
	subl	$36, %esp
.LCFI117:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1383 0
	cmpl	$0, 8(%ebp)
	jle	.L552
.LBB40:
	.loc 1 1385 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L550
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L550:
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movb	$95, (%eax)
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE40:
	.loc 1 1386 0
	movl	8(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$10, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	write_number
.L552:
	.loc 1 1388 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	write_discriminator, .-write_discriminator
	.type	write_local_name, @function
write_local_name:
.LFB43:
	.loc 1 1404 0
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
.LBB41:
	.loc 1 1407 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L554
	movl	$1, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L554:
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movb	$90, (%eax)
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE41:
	.loc 1 1408 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_encoding
.LBB42:
	.loc 1 1409 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L556
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L556:
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movb	$69, (%eax)
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE42:
	.loc 1 1410 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L558
.LBB43:
	.loc 1 1412 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L560
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L560:
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movb	$115, (%eax)
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE43:
	.loc 1 1413 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	discriminator_for_string_literal
	movl	%eax, (%esp)
	call	write_discriminator
	jmp	.L563
.L558:
	.loc 1 1421 0
	movl	$1, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	write_name
	.loc 1 1422 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	discriminator_for_local_entity
	movl	%eax, (%esp)
	call	write_discriminator
.L563:
	.loc 1 1424 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	write_local_name, .-write_local_name
	.section	.rodata
	.type	__FUNCTION__.15291, @object
	.size	__FUNCTION__.15291, 11
__FUNCTION__.15291:
	.string	"write_type"
.LC21:
	.string	"U8__vector"
	.text
	.type	write_type, @function
write_type:
.LFB44:
	.loc 1 1447 0
	pushl	%ebp
.LCFI122:
	movl	%esp, %ebp
.LCFI123:
	pushl	%edi
.LCFI124:
	pushl	%esi
.LCFI125:
	pushl	%ebx
.LCFI126:
	subl	$60, %esp
.LCFI127:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1450 0
	movl	$0, -36(%ebp)
	.loc 1 1454 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L608
	.loc 1 1457 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_substitution
	testl	%eax, %eax
	jne	.L608
	.loc 1 1460 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_CV_qualifiers_for_type
	testl	%eax, %eax
	jle	.L568
	.loc 1 1465 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	write_type
	jmp	.L570
.L568:
	.loc 1 1466 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L571
	.loc 1 1470 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_array_type
	jmp	.L570
.L571:
	.loc 1 1474 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1476 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	cmpl	$17, -48(%ebp)
	je	.L581
	cmpl	$17, -48(%ebp)
	ja	.L586
	cmpl	$11, -48(%ebp)
	je	.L577
	cmpl	$11, -48(%ebp)
	ja	.L587
	cmpl	$9, -48(%ebp)
	je	.L575
	cmpl	$9, -48(%ebp)
	ja	.L576
	cmpl	$6, -48(%ebp)
	jb	.L573
	jmp	.L574
.L587:
	cmpl	$14, -48(%ebp)
	je	.L578
	cmpl	$14, -48(%ebp)
	ja	.L588
	cmpl	$12, -48(%ebp)
	je	.L574
	jmp	.L573
.L588:
	cmpl	$15, -48(%ebp)
	je	.L579
	cmpl	$16, -48(%ebp)
	je	.L580
	jmp	.L573
.L586:
	cmpl	$194, -48(%ebp)
	ja	.L589
	cmpl	$193, -48(%ebp)
	jae	.L582
	cmpl	$21, -48(%ebp)
	jb	.L573
	cmpl	$22, -48(%ebp)
	jbe	.L577
	cmpl	$24, -48(%ebp)
	je	.L581
	jmp	.L573
.L589:
	cmpl	$196, -48(%ebp)
	je	.L584
	cmpl	$196, -48(%ebp)
	jb	.L583
	cmpl	$198, -48(%ebp)
	ja	.L573
	jmp	.L585
.L574:
	.loc 1 1485 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	write_builtin_type
	.loc 1 1486 0
	addl	$1, -36(%ebp)
	.loc 1 1487 0
	jmp	.L570
.L575:
.LBB44:
	.loc 1 1490 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L590
	movl	$1, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L590:
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movb	$67, (%eax)
	leal	1(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE44:
	.loc 1 1491 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	write_type
	.loc 1 1492 0
	jmp	.L570
.L581:
	.loc 1 1496 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_function_type
	.loc 1 1497 0
	jmp	.L570
.L577:
	.loc 1 1504 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L592
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L592
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L592
	.loc 1 1505 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_pointer_to_member_type
	.loc 1 1504 0
	jmp	.L570
.L592:
	.loc 1 1507 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_class_enum_type
	.loc 1 1508 0
	jmp	.L570
.L585:
	.loc 1 1514 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	write_nested_name
	.loc 1 1515 0
	jmp	.L570
.L578:
	.loc 1 1520 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L597
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L597
	.loc 1 1521 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_pointer_to_member_type
	.loc 1 1520 0
	jmp	.L570
.L597:
.LBB45:
	.loc 1 1524 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L601
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L601:
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movb	$80, (%eax)
	leal	1(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE45:
	.loc 1 1525 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	write_type
	.loc 1 1527 0
	jmp	.L570
.L580:
.LBB46:
	.loc 1 1530 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L603
	movl	$1, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L603:
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movb	$82, (%eax)
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE46:
	.loc 1 1531 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	write_type
	.loc 1 1532 0
	jmp	.L570
.L582:
	.loc 1 1536 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_template_param
	.loc 1 1537 0
	jmp	.L570
.L583:
	.loc 1 1540 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_template_template_param
	.loc 1 1541 0
	jmp	.L570
.L584:
	.loc 1 1544 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_template_template_param
	.loc 1 1545 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	write_template_args
	.loc 1 1547 0
	jmp	.L570
.L579:
	.loc 1 1550 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, (%esp)
	call	write_pointer_to_member_type
	.loc 1 1551 0
	jmp	.L570
.L576:
.LBB47:
	.loc 1 1554 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	$10, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L605
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L605:
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC21@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE47:
	.loc 1 1555 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	write_type
	.loc 1 1556 0
	jmp	.L570
.L573:
	.loc 1 1559 0
	leal	__FUNCTION__.15291@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1559, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L570:
	.loc 1 1564 0
	cmpl	$0, -36(%ebp)
	jne	.L608
	.loc 1 1565 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_substitution
.L608:
	.loc 1 1566 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE44:
	.size	write_type, .-write_type
	.type	write_CV_qualifiers_for_type, @function
write_CV_qualifiers_for_type:
.LFB45:
	.loc 1 1576 0
	pushl	%ebp
.LCFI128:
	movl	%esp, %ebp
.LCFI129:
	pushl	%ebx
.LCFI130:
	subl	$52, %esp
.LCFI131:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1577 0
	movl	$0, -20(%ebp)
	.loc 1 1589 0
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
	movl	%ecx, -44(%ebp)
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L610
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L610
	movl	$1, -40(%ebp)
	jmp	.L613
.L610:
	movl	$0, -40(%ebp)
.L613:
	movl	-40(%ebp), %eax
	sall	$3, %eax
	orl	-44(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L614
.LBB48:
	.loc 1 1591 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L616
	movl	$1, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L616:
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movb	$114, (%eax)
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE48:
	.loc 1 1592 0
	addl	$1, -20(%ebp)
.L614:
	.loc 1 1594 0
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
	movl	%ecx, -36(%ebp)
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L618
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L618
	movl	$1, -32(%ebp)
	jmp	.L621
.L618:
	movl	$0, -32(%ebp)
.L621:
	movl	-32(%ebp), %eax
	sall	$3, %eax
	orl	-36(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L622
.LBB49:
	.loc 1 1596 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L624
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L624:
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movb	$86, (%eax)
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE49:
	.loc 1 1597 0
	addl	$1, -20(%ebp)
.L622:
	.loc 1 1599 0
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
	jne	.L626
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L626
	movl	$1, -24(%ebp)
	jmp	.L629
.L626:
	movl	$0, -24(%ebp)
.L629:
	movl	-24(%ebp), %eax
	sall	$3, %eax
	orl	-28(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L630
.LBB50:
	.loc 1 1601 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L632
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L632:
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movb	$75, (%eax)
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE50:
	.loc 1 1602 0
	addl	$1, -20(%ebp)
.L630:
	.loc 1 1605 0
	movl	-20(%ebp), %eax
	.loc 1 1606 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	write_CV_qualifiers_for_type, .-write_CV_qualifiers_for_type
	.section	.rodata
	.type	__FUNCTION__.15490, @object
	.size	__FUNCTION__.15490, 19
__FUNCTION__.15490:
	.string	"write_builtin_type"
	.text
	.type	write_builtin_type, @function
write_builtin_type:
.LFB46:
	.loc 1 1635 0
	pushl	%ebp
.LCFI132:
	movl	%esp, %ebp
.LCFI133:
	pushl	%ebx
.LCFI134:
	subl	$84, %esp
.LCFI135:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1636 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -64(%ebp)
	cmpl	$7, -64(%ebp)
	je	.L638
	cmpl	$7, -64(%ebp)
	ja	.L641
	cmpl	$6, -64(%ebp)
	je	.L637
	jmp	.L636
.L641:
	cmpl	$8, -64(%ebp)
	je	.L639
	cmpl	$12, -64(%ebp)
	je	.L640
	jmp	.L636
.L637:
.LBB51:
	.loc 1 1639 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L642
	movl	$1, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L642:
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movb	$118, (%eax)
	leal	1(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1640 0
	jmp	.L688
.L640:
.LBE51:
.LBB52:
	.loc 1 1643 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L645
	movl	$1, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L645:
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movb	$98, (%eax)
	leal	1(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1644 0
	jmp	.L688
.L638:
.LBE52:
	.loc 1 1648 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L647
	.loc 1 1649 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%ebp)
.L647:
	.loc 1 1653 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L649
.LBB53:
	.loc 1 1654 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L651
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L651:
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movb	$119, (%eax)
	leal	1(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L688
.L649:
.LBE53:
	.loc 1 1655 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L654
	.loc 1 1656 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_java_integer_type_codes
	jmp	.L688
.L654:
.LBB54:
	.loc 1 1663 0
	movl	$0, -32(%ebp)
	jmp	.L656
.L657:
	.loc 1 1664 0
	movl	-32(%ebp), %eax
	movl	integer_types@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	8(%ebp), %eax
	jne	.L658
.LBB55:
	.loc 1 1667 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L660
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L660:
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	movzbl	integer_type_codes@GOTOFF(%ebx,%eax), %eax
	movb	%al, (%edx)
	addl	$1, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1668 0
	jmp	.L662
.L658:
.LBE55:
	.loc 1 1663 0
	addl	$1, -32(%ebp)
.L656:
	cmpl	$10, -32(%ebp)
	jbe	.L657
.L662:
	.loc 1 1671 0
	cmpl	$11, -32(%ebp)
	jne	.L688
.LBB56:
	.loc 1 1674 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	c_common_type_for_mode@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1675 0
	movl	8(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jne	.L664
	.loc 1 1677 0
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	$128, %ax
	jne	.L666
.LBB57:
	.loc 1 1678 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L668
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L668:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -60(%ebp)
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L670
	movb	$111, -53(%ebp)
	jmp	.L672
.L670:
	movb	$110, -53(%ebp)
.L672:
	movzbl	-53(%ebp), %eax
	movl	-60(%ebp), %edx
	movb	%al, (%edx)
	movl	-60(%ebp), %edx
	addl	$1, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L688
.L666:
.LBE57:
	.loc 1 1681 0
	leal	__FUNCTION__.15490@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1681, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L664:
	.loc 1 1685 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1686 0
	jmp	.L654
.L639:
.LBE56:
.LBE54:
	.loc 1 1693 0
	movl	global_trees@GOT(%ebx), %eax
	movl	116(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L673
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L675
.L673:
.LBB58:
	.loc 1 1695 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L676
	movl	$1, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L676:
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movb	$102, (%eax)
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1693 0
	jmp	.L688
.L675:
.LBE58:
	.loc 1 1696 0
	movl	global_trees@GOT(%ebx), %eax
	movl	120(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L679
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L681
.L679:
.LBB59:
	.loc 1 1698 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L682
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L682:
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movb	$100, (%eax)
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1696 0
	jmp	.L688
.L681:
.LBE59:
	.loc 1 1699 0
	movl	global_trees@GOT(%ebx), %eax
	movl	124(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L684
.LBB60:
	.loc 1 1700 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L686
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L686:
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movb	$101, (%eax)
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L688
.L684:
.LBE60:
	.loc 1 1702 0
	leal	__FUNCTION__.15490@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1702, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L636:
	.loc 1 1706 0
	leal	__FUNCTION__.15490@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1706, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L688:
	.loc 1 1708 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	write_builtin_type, .-write_builtin_type
	.type	write_function_type, @function
write_function_type:
.LFB47:
	.loc 1 1719 0
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
	.loc 1 1725 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L690
.LBB61:
	.loc 1 1729 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1730 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	write_CV_qualifiers_for_type
.L690:
.LBE61:
.LBB62:
	.loc 1 1733 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L692
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L692:
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movb	$70, (%eax)
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE62:
	.loc 1 1746 0
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_bare_function_type
.LBB63:
	.loc 1 1748 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L694
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L694:
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movb	$69, (%eax)
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE63:
	.loc 1 1749 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	write_function_type, .-write_function_type
	.type	write_bare_function_type, @function
write_bare_function_type:
.LFB48:
	.loc 1 1763 0
	pushl	%ebp
.LCFI140:
	movl	%esp, %ebp
.LCFI141:
	subl	$24, %esp
.LCFI142:
	.loc 1 1767 0
	cmpl	$0, 12(%ebp)
	je	.L698
	.loc 1 1768 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	write_type
.L698:
	.loc 1 1771 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	sete	%al
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %ecx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	write_method_parms
	.loc 1 1774 0
	leave
	ret
.LFE48:
	.size	write_bare_function_type, .-write_bare_function_type
	.section	.rodata
	.type	__FUNCTION__.15659, @object
	.size	__FUNCTION__.15659, 19
__FUNCTION__.15659:
	.string	"write_method_parms"
	.text
	.type	write_method_parms, @function
write_method_parms:
.LFB49:
	.loc 1 1787 0
	pushl	%ebp
.LCFI143:
	movl	%esp, %ebp
.LCFI144:
	pushl	%ebx
.LCFI145:
	subl	$52, %esp
.LCFI146:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1789 0
	cmpl	$0, 16(%ebp)
	je	.L702
	movl	16(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L704
.L702:
	movl	$0, -44(%ebp)
.L704:
	movl	-44(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1793 0
	movl	$1, -16(%ebp)
	.loc 1 1802 0
	cmpl	$0, 12(%ebp)
	je	.L705
	.loc 1 1804 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1805 0
	cmpl	$0, -20(%ebp)
	je	.L707
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L709
.L707:
	movl	$0, -40(%ebp)
.L709:
	movl	-40(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1807 0
	jmp	.L710
.L711:
	.loc 1 1809 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1810 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L710:
	.loc 1 1807 0
	cmpl	$0, -20(%ebp)
	je	.L705
	movl	-20(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L711
.L705:
	.loc 1 1814 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1815 0
	jmp	.L713
.L714:
.LBB64:
	.loc 1 1818 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1819 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L715
	.loc 1 1824 0
	movl	8(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jne	.L717
	.loc 1 1825 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	write_type
.L717:
	.loc 1 1828 0
	movl	$0, -16(%ebp)
	.loc 1 1830 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L721
	leal	__FUNCTION__.15659@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1830, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L715:
	.loc 1 1833 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	write_type
.L721:
.LBE64:
	.loc 1 1816 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L713:
	.loc 1 1815 0
	cmpl	$0, 8(%ebp)
	jne	.L714
	.loc 1 1836 0
	cmpl	$0, -16(%ebp)
	je	.L727
.LBB65:
	.loc 1 1838 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L725
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L725:
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movb	$122, (%eax)
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
.L727:
.LBE65:
	.loc 1 1839 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	write_method_parms, .-write_method_parms
	.type	write_class_enum_type, @function
write_class_enum_type:
.LFB50:
	.loc 1 1846 0
	pushl	%ebp
.LCFI147:
	movl	%esp, %ebp
.LCFI148:
	subl	$8, %esp
.LCFI149:
	.loc 1 1847 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	write_name
	.loc 1 1848 0
	leave
	ret
.LFE50:
	.size	write_class_enum_type, .-write_class_enum_type
	.section	.rodata
	.type	__FUNCTION__.15707, @object
	.size	__FUNCTION__.15707, 20
__FUNCTION__.15707:
	.string	"write_template_args"
	.text
	.type	write_template_args, @function
write_template_args:
.LFB51:
	.loc 1 1858 0
	pushl	%ebp
.LCFI150:
	movl	%esp, %ebp
.LCFI151:
	pushl	%ebx
.LCFI152:
	subl	$36, %esp
.LCFI153:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB66:
	.loc 1 1861 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L731
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L731:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movb	$73, (%eax)
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE66:
	.loc 1 1863 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L733
.LBB67:
	.loc 1 1866 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1867 0
	cmpl	$0, -12(%ebp)
	jg	.L735
	leal	__FUNCTION__.15707@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1867, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L735:
	.loc 1 1869 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L737
	.loc 1 1873 0
	movl	-12(%ebp), %edx
	subl	$1, %edx
	movl	8(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1874 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
.L737:
	.loc 1 1876 0
	movl	$0, -16(%ebp)
	jmp	.L739
.L740:
	.loc 1 1877 0
	movl	-16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	write_template_arg
	.loc 1 1876 0
	addl	$1, -16(%ebp)
.L739:
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L740
	jmp	.L742
.L733:
.LBE67:
	.loc 1 1881 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	je	.L745
	leal	__FUNCTION__.15707@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1881, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L746:
	.loc 1 1885 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	write_template_arg
	.loc 1 1886 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L745:
	.loc 1 1883 0
	cmpl	$0, 8(%ebp)
	jne	.L746
.L742:
.LBB68:
	.loc 1 1890 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L747
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L747:
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movb	$69, (%eax)
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE68:
	.loc 1 1891 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	write_template_args, .-write_template_args
	.section	.rodata
.LC22:
	.string	"st"
.LC23:
	.string	"sr"
	.align 4
.LC24:
	.string	"call_expr cannot be mangled due to a defect in the C++ ABI"
	.text
	.type	write_expression, @function
write_expression:
.LFB52:
	.loc 1 1906 0
	pushl	%ebp
.LCFI154:
	movl	%esp, %ebp
.LCFI155:
	pushl	%edi
.LCFI156:
	pushl	%esi
.LCFI157:
	pushl	%ebx
.LCFI158:
	subl	$124, %esp
.LCFI159:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1909 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	.loc 1 1913 0
	cmpl	$180, -80(%ebp)
	jne	.L757
	.loc 1 1915 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -100(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L753
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L753
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L756
.L753:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -96(%ebp)
.L756:
	movl	-100(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-96(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	$185, (%esp)
	call	build_nt@PLT
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_nt@PLT
	movl	%eax, 8(%ebp)
	.loc 1 1919 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	.loc 1 1925 0
	jmp	.L757
.L758:
	.loc 1 1928 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1929 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
.L757:
	.loc 1 1925 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L758
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	je	.L758
	.loc 1 1933 0
	cmpl	$194, -80(%ebp)
	je	.L761
	cmpl	$195, -80(%ebp)
	je	.L761
	cmpl	$196, -80(%ebp)
	je	.L761
	cmpl	$193, -80(%ebp)
	jne	.L765
.L761:
	.loc 1 1937 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_template_param
	.loc 1 1933 0
	jmp	.L837
.L765:
	.loc 1 1939 0
	movl	-80(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$99, %al
	je	.L767
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L769
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L771
.L769:
	cmpl	$33, -80(%ebp)
	jne	.L771
.L767:
	.loc 1 1941 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_template_arg_literal
	.loc 1 1939 0
	jmp	.L837
.L771:
	.loc 1 1942 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L772
	.loc 1 1946 0
	cmpl	$33, -80(%ebp)
	jne	.L774
	.loc 1 1947 0
	movb	$1, 52+G@GOTOFF(%ebx)
.L774:
.LBB69:
	.loc 1 1948 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L776
	movl	$1, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L776:
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movb	$76, (%eax)
	leal	1(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE69:
	.loc 1 1949 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_mangled_name
.LBB70:
	.loc 1 1950 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-72(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L778
	movl	$1, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L778:
	movl	-72(%ebp), %eax
	movl	12(%eax), %eax
	movb	$69, (%eax)
	leal	1(%eax), %edx
	movl	-72(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L837
.L772:
.LBE70:
	.loc 1 1952 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-103, %al
	jne	.L780
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L780
.LBB71:
	.loc 1 1955 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -68(%ebp)
	movl	$2, -64(%ebp)
	movl	-68(%ebp), %eax
	movl	12(%eax), %edx
	movl	-64(%ebp), %eax
	addl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L783
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L783:
	movl	-64(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC22@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-68(%ebp), %eax
	movl	12(%eax), %edx
	movl	-64(%ebp), %eax
	addl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE71:
	.loc 1 1956 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	write_type
	.loc 1 1952 0
	jmp	.L837
.L780:
	.loc 1 1958 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L785
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L787
.L785:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-71, %al
	jne	.L787
.LBB72:
	.loc 1 1960 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1961 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1968 0
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L789
	.loc 1 1969 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	write_expression
	jmp	.L837
.L789:
.LBB73:
.LBB74:
	.loc 1 1974 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	movl	$2, -44(%ebp)
	movl	-48(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	addl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L792
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L792:
	movl	-44(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC23@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-48(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	addl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE74:
	.loc 1 1975 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	write_type
	.loc 1 1978 0
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L794
	.loc 1 1980 0
	movl	-56(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1981 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1982 0
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-50, %al
	jne	.L798
	.loc 1 1983 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L798
.L794:
	.loc 1 1986 0
	movl	$0, -52(%ebp)
.L798:
	.loc 1 1988 0
	movl	-56(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L799
	.loc 1 1989 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	write_conversion_operator_name
	jmp	.L801
.L799:
	.loc 1 1990 0
	movl	-56(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L802
.LBB75:
	.loc 1 1993 0
	movl	$0, -36(%ebp)
	.loc 1 1998 0
	movl	$0, -40(%ebp)
	jmp	.L804
.L805:
	.loc 1 1999 0
	movl	-40(%ebp), %eax
	movl	operator_name_info@GOT(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	cmpl	-56(%ebp), %eax
	jne	.L806
	.loc 1 2003 0
	movl	-40(%ebp), %eax
	movl	operator_name_info@GOT(%ebx), %edx
	sall	$4, %eax
	addl	%edx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L808
	.loc 1 2005 0
	movl	-40(%ebp), %eax
	movl	operator_name_info@GOT(%ebx), %edx
	sall	$4, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2006 0
	jmp	.L810
.L808:
	.loc 1 2008 0
	cmpl	$0, -36(%ebp)
	jne	.L813
	.loc 1 2009 0
	movl	-40(%ebp), %eax
	movl	operator_name_info@GOT(%ebx), %edx
	sall	$4, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L813
.L806:
	.loc 1 2011 0
	movl	-40(%ebp), %eax
	movl	assignment_operator_name_info@GOT(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	cmpl	-56(%ebp), %eax
	jne	.L813
	.loc 1 2014 0
	movl	-40(%ebp), %eax
	movl	assignment_operator_name_info@GOT(%ebx), %edx
	sall	$4, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2016 0
	jmp	.L810
.L813:
	.loc 1 1998 0
	addl	$1, -40(%ebp)
.L804:
	cmpl	$233, -40(%ebp)
	jle	.L805
.L810:
.LBB76:
	.loc 1 2018 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	movl	-36(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -104(%ebp)
	movl	$0, %eax
	cld
	movl	-104(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L815
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L815:
	movl	-28(%ebp), %ecx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	-36(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L801
.L802:
.LBE76:
.LBE75:
	.loc 1 2021 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	write_source_name
.L801:
	.loc 1 2023 0
	cmpl	$0, -52(%ebp)
	je	.L837
	.loc 1 2024 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	write_template_args
	.loc 1 1958 0
	jmp	.L837
.L787:
.LBE73:
.LBE72:
.LBB77:
	.loc 1 2035 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L818
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L818
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L818
	.loc 1 2039 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 2040 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L822
	.loc 1 2042 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_expression
	.loc 1 2043 0
	jmp	.L837
.L822:
	.loc 1 2046 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
.L818:
.LBB78:
	.loc 1 2050 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	-80(%ebp), %eax
	movl	operator_name_info@GOT(%ebx), %edx
	sall	$4, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -108(%ebp)
	movl	$0, %eax
	cld
	movl	-108(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L824
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L824:
	movl	-16(%ebp), %ecx
	movl	-80(%ebp), %eax
	movl	operator_name_info@GOT(%ebx), %edx
	sall	$4, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE78:
	.loc 1 2052 0
	movl	-80(%ebp), %eax
	movl	%eax, -112(%ebp)
	cmpl	$208, -112(%ebp)
	je	.L829
	cmpl	$208, -112(%ebp)
	ja	.L831
	cmpl	$54, -112(%ebp)
	je	.L827
	cmpl	$185, -112(%ebp)
	je	.L828
	jmp	.L826
.L831:
	movl	-112(%ebp), %eax
	subl	$210, %eax
	cmpl	$1, %eax
	ja	.L826
	jmp	.L830
.L827:
	.loc 1 2055 0
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sorry@PLT
	.loc 1 2056 0
	jmp	.L837
.L829:
	.loc 1 2059 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	write_type
	.loc 1 2060 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	write_expression
	.loc 1 2061 0
	jmp	.L837
.L830:
	.loc 1 2065 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	write_type
	.loc 1 2066 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	write_expression
	.loc 1 2067 0
	jmp	.L837
.L828:
	.loc 1 2072 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	write_type
	.loc 1 2073 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L832
	.loc 1 2074 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	write_source_name
	jmp	.L837
.L832:
	.loc 1 2079 0
	movb	$1, 52+G@GOTOFF(%ebx)
	.loc 1 2080 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	write_encoding
	.loc 1 2082 0
	jmp	.L837
.L826:
	.loc 1 2085 0
	movl	$0, -24(%ebp)
	jmp	.L835
.L836:
	.loc 1 2086 0
	movl	-24(%ebp), %eax
	movl	8(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	write_expression
	.loc 1 2085 0
	addl	$1, -24(%ebp)
.L835:
	movl	-80(%ebp), %edx
	movl	tree_code_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-24(%ebp), %eax
	jg	.L836
.L837:
.LBE77:
	.loc 1 2089 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE52:
	.size	write_expression, .-write_expression
	.section	.rodata
.LC25:
	.string	"_Z"
	.text
	.type	write_mangled_name, @function
write_mangled_name:
.LFB22:
	.loc 1 615 0
	pushl	%ebp
.LCFI160:
	movl	%esp, %ebp
.LCFI161:
	pushl	%edi
.LCFI162:
	pushl	%esi
.LCFI163:
	pushl	%ebx
.LCFI164:
	subl	$28, %esp
.LCFI165:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 618 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L839
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L839
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L842
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L839
.L842:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L844
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	4(%eax), %eax
	testb	%al, %al
	jne	.L839
	jmp	.L847
.L844:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L839
.L847:
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L848
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	.L839
.L848:
	.loc 1 626 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	write_source_name
	.loc 1 618 0
	jmp	.L853
.L839:
.LBB79:
	.loc 1 630 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	$2, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L851
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L851:
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC25@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE79:
	.loc 1 631 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_encoding
.L853:
	.loc 1 633 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	write_mangled_name, .-write_mangled_name
	.section	.rodata
	.type	__FUNCTION__.16013, @object
	.size	__FUNCTION__.16013, 27
__FUNCTION__.16013:
	.string	"write_template_arg_literal"
	.text
	.type	write_template_arg_literal, @function
write_template_arg_literal:
.LFB53:
	.loc 1 2101 0
	pushl	%ebp
.LCFI166:
	movl	%esp, %ebp
.LCFI167:
	pushl	%ebx
.LCFI168:
	subl	$36, %esp
.LCFI169:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2102 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.LBB80:
	.loc 1 2103 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L855
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L855:
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movb	$76, (%eax)
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE80:
	.loc 1 2104 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	write_type
	.loc 1 2106 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	jne	.L857
	.loc 1 2107 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	call	write_integer_cst
	jmp	.L859
.L857:
	.loc 1 2108 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L860
	.loc 1 2110 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L862
	.loc 1 2112 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	68(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L864
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L866
.L864:
	.loc 1 2113 0
	movl	$10, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	call	write_number
	.loc 1 2112 0
	jmp	.L859
.L866:
	.loc 1 2114 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	64(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L868
	.loc 1 2115 0
	movl	$10, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	write_number
	jmp	.L859
.L868:
	.loc 1 2117 0
	leal	__FUNCTION__.16013@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2117, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L862:
	.loc 1 2120 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_integer_cst
	jmp	.L859
.L860:
	.loc 1 2122 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L871
	.loc 1 2123 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_real_cst
	jmp	.L859
.L871:
	.loc 1 2125 0
	leal	__FUNCTION__.16013@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2125, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L859:
.LBB81:
	.loc 1 2127 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L873
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L873:
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movb	$69, (%eax)
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE81:
	.loc 1 2128 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	write_template_arg_literal, .-write_template_arg_literal
	.type	write_integer_cst, @function
write_integer_cst:
.LFB35:
	.loc 1 1126 0
	pushl	%ebp
.LCFI170:
	movl	%esp, %ebp
.LCFI171:
	pushl	%edi
.LCFI172:
	pushl	%esi
.LCFI173:
	pushl	%ebx
.LCFI174:
	subl	$252, %esp
.LCFI175:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -228(%ebp)
	.loc 1 1126 0
	movl	%gs:20, %eax
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	.loc 1 1127 0
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_sgn@PLT
	movl	%eax, -208(%ebp)
	.loc 1 1129 0
	movl	-228(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	-208(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	shrl	$31, %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L877
.LBB82:
	.loc 1 1136 0
	leal	-148(%ebp), %eax
	subl	$-128, %eax
	movl	%eax, -200(%ebp)
	.loc 1 1137 0
	movl	$0, -196(%ebp)
	.loc 1 1143 0
	movl	$1000000000, -224(%ebp)
	movl	$0, -220(%ebp)
	.loc 1 1144 0
	movl	$9, -204(%ebp)
	.loc 1 1149 0
	movl	$18, -204(%ebp)
	.loc 1 1150 0
	movl	-220(%ebp), %eax
	movl	%eax, %ecx
	imull	-224(%ebp), %ecx
	movl	-220(%ebp), %eax
	imull	-224(%ebp), %eax
	addl	%eax, %ecx
	movl	-224(%ebp), %eax
	mull	-224(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -224(%ebp)
	movl	%edx, -220(%ebp)
	movl	%eax, -224(%ebp)
	movl	%edx, -220(%ebp)
	.loc 1 1153 0
	movl	-228(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	c_common_signed_or_unsigned_type@PLT
	movl	%eax, -184(%ebp)
	.loc 1 1154 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	-224(%ebp), %eax
	movl	-220(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -188(%ebp)
	.loc 1 1155 0
	movl	-228(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	-228(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -192(%ebp)
	.loc 1 1156 0
	movl	-188(%ebp), %edx
	movl	-184(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	-188(%ebp), %eax
	movl	4(%eax), %edx
	movl	-192(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1158 0
	cmpl	$0, -208(%ebp)
	jns	.L879
.LBB83:
	.loc 1 1160 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -176(%ebp)
	movl	-176(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-176(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L881
	movl	$1, 4(%esp)
	movl	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L881:
	movl	-176(%ebp), %eax
	movl	12(%eax), %eax
	movb	$110, (%eax)
	leal	1(%eax), %edx
	movl	-176(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE83:
	.loc 1 1161 0
	movl	-192(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$79, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -192(%ebp)
.L879:
.LBB84:
	.loc 1 1165 0
	movl	-188(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-192(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$65, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -172(%ebp)
	.loc 1 1166 0
	movl	-188(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -168(%ebp)
	.loc 1 1169 0
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	movl	%eax, -180(%ebp)
	.loc 1 1170 0
	movl	-168(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-192(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -168(%ebp)
	.loc 1 1171 0
	cmpl	$0, -180(%ebp)
	jne	.L883
	movl	-204(%ebp), %eax
	movl	%eax, -232(%ebp)
	jmp	.L885
.L883:
	movl	$1, -232(%ebp)
.L885:
	movl	-168(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	-232(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-200(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$10, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	hwint_to_ascii
	movl	%eax, -164(%ebp)
	.loc 1 1173 0
	movl	-164(%ebp), %eax
	subl	%eax, -200(%ebp)
	.loc 1 1174 0
	movl	-164(%ebp), %eax
	addl	%eax, -196(%ebp)
	.loc 1 1175 0
	movl	-172(%ebp), %eax
	movl	%eax, -192(%ebp)
.LBE84:
	.loc 1 1177 0
	cmpl	$0, -180(%ebp)
	je	.L879
.LBB85:
	.loc 1 1178 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -160(%ebp)
	movl	-196(%ebp), %eax
	movl	%eax, -156(%ebp)
	movl	-160(%ebp), %eax
	movl	12(%eax), %edx
	movl	-156(%ebp), %eax
	addl	%eax, %edx
	movl	-160(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L887
	movl	-156(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L887:
	movl	-156(%ebp), %ecx
	movl	-160(%ebp), %eax
	movl	12(%eax), %eax
	movl	-200(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	movl	-160(%ebp), %eax
	movl	12(%eax), %edx
	movl	-156(%ebp), %eax
	addl	%eax, %edx
	movl	-160(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L894
.L877:
.LBE85:
.LBE82:
.LBB86:
	.loc 1 1183 0
	movl	-228(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -216(%ebp)
	movl	%edx, -212(%ebp)
	.loc 1 1185 0
	cmpl	$0, -208(%ebp)
	jns	.L890
.LBB87:
	.loc 1 1187 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -152(%ebp)
	movl	-152(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-152(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L892
	movl	$1, 4(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L892:
	movl	-152(%ebp), %eax
	movl	12(%eax), %eax
	movb	$110, (%eax)
	leal	1(%eax), %edx
	movl	-152(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE87:
	.loc 1 1188 0
	negl	-216(%ebp)
	adcl	$0, -212(%ebp)
	negl	-212(%ebp)
.L890:
	.loc 1 1190 0
	movl	$10, 12(%esp)
	movl	$1, 8(%esp)
	movl	-216(%ebp), %eax
	movl	-212(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	write_number
.L894:
.LBE86:
	.loc 1 1192 0
	movl	-20(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L895
	call	__stack_chk_fail_local
.L895:
	addl	$252, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE35:
	.size	write_integer_cst, .-write_integer_cst
	.type	write_template_arg, @function
write_template_arg:
.LFB54:
	.loc 1 2140 0
	pushl	%ebp
.LCFI176:
	movl	%esp, %ebp
.LCFI177:
	pushl	%ebx
.LCFI178:
	subl	$52, %esp
.LCFI179:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2141 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 2147 0
	cmpl	$3, -28(%ebp)
	jne	.L897
	.loc 1 2149 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 2151 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L897
	.loc 1 2153 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 2154 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
.L897:
	.loc 1 2158 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L900
	.loc 1 2159 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_type
	jmp	.L925
.L900:
	.loc 1 2160 0
	cmpl	$192, -28(%ebp)
	jne	.L903
	.loc 1 2162 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_template_template_arg
	jmp	.L925
.L903:
	.loc 1 2163 0
	movl	-28(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$99, %al
	jne	.L905
	cmpl	$180, -28(%ebp)
	jne	.L907
.L905:
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L908
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L910
.L908:
	cmpl	$33, -28(%ebp)
	jne	.L910
.L907:
	.loc 1 2165 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_template_arg_literal
	.loc 1 2163 0
	jmp	.L925
.L910:
	.loc 1 2166 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L911
	.loc 1 2170 0
	cmpl	$33, -28(%ebp)
	jne	.L913
	.loc 1 2171 0
	movb	$1, 52+G@GOTOFF(%ebx)
.L913:
.LBB88:
	.loc 1 2172 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L915
	movl	$1, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L915:
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movb	$76, (%eax)
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE88:
.LBB89:
	.loc 1 2173 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L917
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L917:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movb	$90, (%eax)
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE89:
	.loc 1 2174 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_encoding
.LBB90:
	.loc 1 2175 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L919
	movl	$1, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L919:
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movb	$69, (%eax)
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L925
.L911:
.LBE90:
.LBB91:
	.loc 1 2180 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L921
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L921:
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movb	$88, (%eax)
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE91:
	.loc 1 2181 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_expression
.LBB92:
	.loc 1 2182 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L923
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L923:
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movb	$69, (%eax)
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
.L925:
.LBE92:
	.loc 1 2184 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	write_template_arg, .-write_template_arg
	.type	write_template_template_arg, @function
write_template_template_arg:
.LFB55:
	.loc 1 2192 0
	pushl	%ebp
.LCFI180:
	movl	%esp, %ebp
.LCFI181:
	subl	$8, %esp
.LCFI182:
	.loc 1 2195 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_substitution
	testl	%eax, %eax
	jne	.L929
	.loc 1 2197 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_name
	.loc 1 2198 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_substitution
.L929:
	.loc 1 2199 0
	leave
	ret
.LFE55:
	.size	write_template_template_arg, .-write_template_template_arg
	.type	write_array_type, @function
write_array_type:
.LFB56:
	.loc 1 2214 0
	pushl	%ebp
.LCFI183:
	movl	%esp, %ebp
.LCFI184:
	pushl	%ebx
.LCFI185:
	subl	$36, %esp
.LCFI186:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB93:
	.loc 1 2215 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L931
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L931:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movb	$65, (%eax)
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE93:
	.loc 1 2216 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L933
.LBB94:
	.loc 1 2221 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2224 0
	movl	-16(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2225 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L935
	.loc 1 2229 0
	movl	global_trees@GOT(%ebx), %eax
	movl	84(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2230 0
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	$10, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	write_number
	jmp	.L933
.L935:
	.loc 1 2233 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	write_expression
.L933:
.LBE94:
.LBB95:
	.loc 1 2235 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L937
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L937:
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movb	$95, (%eax)
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE95:
	.loc 1 2236 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	write_type
	.loc 1 2237 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	write_array_type, .-write_array_type
	.type	write_pointer_to_member_type, @function
write_pointer_to_member_type:
.LFB57:
	.loc 1 2247 0
	pushl	%ebp
.LCFI187:
	movl	%esp, %ebp
.LCFI188:
	pushl	%ebx
.LCFI189:
	subl	$36, %esp
.LCFI190:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB96:
	.loc 1 2248 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L941
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L941:
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movb	$77, (%eax)
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE96:
	.loc 1 2249 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L943
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L943
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L946
.L943:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -28(%ebp)
.L946:
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	write_type
	.loc 1 2250 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L947
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L947
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L950
.L947:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L950:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	write_type
	.loc 1 2251 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	write_pointer_to_member_type, .-write_pointer_to_member_type
	.section	.rodata
	.type	__FUNCTION__.16225, @object
	.size	__FUNCTION__.16225, 21
__FUNCTION__.16225:
	.string	"write_template_param"
	.text
	.type	write_template_param, @function
write_template_param:
.LFB58:
	.loc 1 2269 0
	pushl	%ebp
.LCFI191:
	movl	%esp, %ebp
.LCFI192:
	pushl	%ebx
.LCFI193:
	subl	$52, %esp
.LCFI194:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2272 0
	movl	$0, -16(%ebp)
	.loc 1 2276 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	cmpl	$193, -40(%ebp)
	je	.L954
	cmpl	$193, -40(%ebp)
	jb	.L953
	cmpl	$196, -40(%ebp)
	ja	.L953
	.loc 1 2281 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2282 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2283 0
	jmp	.L956
.L954:
	.loc 1 2286 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2287 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2288 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2289 0
	jmp	.L956
.L953:
	.loc 1 2292 0
	leal	__FUNCTION__.16225@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2292, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L956:
.LBB97:
	.loc 1 2295 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L957
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L957:
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movb	$84, (%eax)
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE97:
	.loc 1 2298 0
	cmpl	$0, -24(%ebp)
	jle	.L959
	.loc 1 2299 0
	movl	-24(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$10, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	write_number
.L959:
.LBB98:
	.loc 1 2300 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L961
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L961:
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movb	$95, (%eax)
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE98:
	.loc 1 2301 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	write_template_param, .-write_template_param
	.type	write_template_template_param, @function
write_template_template_param:
.LFB59:
	.loc 1 2310 0
	pushl	%ebp
.LCFI195:
	movl	%esp, %ebp
.LCFI196:
	subl	$24, %esp
.LCFI197:
	.loc 1 2311 0
	movl	$0, -4(%ebp)
	.loc 1 2316 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L965
	.loc 1 2318 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 2320 0
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	find_substitution
	testl	%eax, %eax
	jne	.L969
.L965:
	.loc 1 2326 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_template_param
	.loc 1 2327 0
	cmpl	$0, -4(%ebp)
	je	.L969
	.loc 1 2328 0
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	add_substitution
.L969:
	.loc 1 2329 0
	leave
	ret
.LFE59:
	.size	write_template_template_param, .-write_template_template_param
	.type	write_substitution, @function
write_substitution:
.LFB60:
	.loc 1 2339 0
	pushl	%ebp
.LCFI198:
	movl	%esp, %ebp
.LCFI199:
	pushl	%ebx
.LCFI200:
	subl	$36, %esp
.LCFI201:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB99:
	.loc 1 2342 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L971
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L971:
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movb	$83, (%eax)
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE99:
	.loc 1 2343 0
	cmpl	$0, 8(%ebp)
	jle	.L973
	.loc 1 2344 0
	movl	8(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$36, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	write_number
.L973:
.LBB100:
	.loc 1 2345 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L975
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L975:
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movb	$95, (%eax)
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE100:
	.loc 1 2346 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE60:
	.size	write_substitution, .-write_substitution
	.section	.rodata
.LC26:
	.string	"allocator"
.LC27:
	.string	"basic_string"
.LC28:
	.string	"char_traits"
.LC29:
	.string	"basic_istream"
.LC30:
	.string	"basic_ostream"
.LC31:
	.string	"basic_iostream"
	.text
.globl init_mangle
	.type	init_mangle, @function
init_mangle:
.LFB63:
	.loc 1 2384 0
	pushl	%ebp
.LCFI202:
	movl	%esp, %ebp
.LCFI203:
	pushl	%ebx
.LCFI204:
	subl	$20, %esp
.LCFI205:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2385 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	gcc_obstack_init@PLT
	.loc 1 2389 0
	movl	$9, 4(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%eax, subst_identifiers@GOTOFF(%ebx)
	.loc 1 2390 0
	movl	$12, 4(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%eax, 4+subst_identifiers@GOTOFF(%ebx)
	.loc 1 2391 0
	movl	$11, 4(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%eax, 8+subst_identifiers@GOTOFF(%ebx)
	.loc 1 2392 0
	movl	$13, 4(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%eax, 12+subst_identifiers@GOTOFF(%ebx)
	.loc 1 2393 0
	movl	$13, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%eax, 16+subst_identifiers@GOTOFF(%ebx)
	.loc 1 2394 0
	movl	$14, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%eax, 20+subst_identifiers@GOTOFF(%ebx)
	.loc 1 2395 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE63:
	.size	init_mangle, .-init_mangle
	.section	.rodata
.LC32:
	.string	" *INTERNAL* "
	.text
	.type	mangle_decl_string, @function
mangle_decl_string:
.LFB64:
	.loc 1 2402 0
	pushl	%ebp
.LCFI206:
	movl	%esp, %ebp
.LCFI207:
	pushl	%edi
.LCFI208:
	pushl	%esi
.LCFI209:
	pushl	%ebx
.LCFI210:
	subl	$60, %esp
.LCFI211:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2405 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	start_mangling
	.loc 1 2407 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L981
	.loc 1 2408 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	write_type
	jmp	.L983
.L981:
	.loc 1 2409 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L984
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L986
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L984
.L986:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L988
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	4(%eax), %eax
	testb	%al, %al
	jne	.L984
	jmp	.L991
.L988:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L984
.L991:
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L992
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L992
.L984:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L994
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L996
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L998
.L996:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L998:
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -48(%ebp)
	je	.L992
.L994:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L999
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L1001
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	4(%eax), %eax
	testb	%al, %al
	je	.L992
	jmp	.L999
.L1001:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L999
.L992:
.LBB101:
	.loc 1 2419 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -52(%ebp)
	movl	$0, %eax
	cld
	movl	-52(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1003
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1003:
	movl	-24(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2409 0
	jmp	.L983
.L999:
.LBE101:
	.loc 1 2422 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_mangled_name
	.loc 1 2423 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L983
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1006
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L1008
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1010
.L1008:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L1010
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L1010
.L1006:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L983
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L1013
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1010
.L1013:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L1010
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L983
.L1010:
.LBB102:
	.loc 1 2429 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	$12, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1016
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1016:
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC32@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.L983:
.LBE102:
	.loc 1 2432 0
	movl	$1, (%esp)
	call	finish_mangling
	movl	%eax, -32(%ebp)
	.loc 1 2435 0
	movl	-32(%ebp), %eax
	.loc 1 2436 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE64:
	.size	mangle_decl_string, .-mangle_decl_string
	.section	.rodata
.LC33:
	.string	"mangling substitutions"
	.text
	.type	start_mangling, @function
start_mangling:
.LFB61:
	.loc 1 2352 0
	pushl	%ebp
.LCFI212:
	movl	%esp, %ebp
.LCFI213:
	pushl	%ebx
.LCFI214:
	subl	$36, %esp
.LCFI215:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2353 0
	movl	8(%ebp), %eax
	movl	%eax, 48+G@GOTOFF(%ebx)
	.loc 1 2354 0
	movb	$0, 52+G@GOTOFF(%ebx)
	.loc 1 2355 0
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$14, 4(%esp)
	movl	$1, (%esp)
	call	varray_init@PLT
	movl	%eax, 44+G@GOTOFF(%ebx)
.LBB103:
	.loc 1 2356 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	8+G@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jae	.L1020
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-8(%ebp), %eax
	jbe	.L1020
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L1024
.L1020:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L1024:
.LBE103:
	.loc 1 2357 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE61:
	.size	start_mangling, .-start_mangling
	.section	.rodata
	.align 4
.LC34:
	.string	"the mangled name of `%D' will change in a future version of GCC"
	.text
	.type	finish_mangling, @function
finish_mangling:
.LFB62:
	.loc 1 2365 0
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
	movl	8(%ebp), %eax
	movb	%al, -24(%ebp)
	.loc 1 2366 0
	movl	warn_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1026
	cmpb	$0, -24(%ebp)
	je	.L1026
	movzbl	52+G@GOTOFF(%ebx), %eax
	testb	%al, %al
	je	.L1026
	.loc 1 2367 0
	movl	48+G@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1026:
	.loc 1 2372 0
	movl	$0, 44+G@GOTOFF(%ebx)
.LBB104:
	.loc 1 2375 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1030
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1030:
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movb	$0, (%eax)
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE104:
	.loc 1 2377 0
	movl	8+G@GOTOFF(%ebx), %eax
	.loc 1 2378 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE62:
	.size	finish_mangling, .-finish_mangling
.globl mangle_decl
	.type	mangle_decl, @function
mangle_decl:
.LFB65:
	.loc 1 2443 0
	pushl	%ebp
.LCFI220:
	movl	%esp, %ebp
.LCFI221:
	pushl	%ebx
.LCFI222:
	subl	$20, %esp
.LCFI223:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2444 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mangle_decl_string
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2446 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 92(%edx)
	.loc 1 2447 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE65:
	.size	mangle_decl, .-mangle_decl
.globl mangle_type_string
	.type	mangle_type_string, @function
mangle_type_string:
.LFB66:
	.loc 1 2454 0
	pushl	%ebp
.LCFI224:
	movl	%esp, %ebp
.LCFI225:
	subl	$24, %esp
.LCFI226:
	.loc 1 2457 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	start_mangling
	.loc 1 2458 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_type
	.loc 1 2459 0
	movl	$0, (%esp)
	call	finish_mangling
	movl	%eax, -4(%ebp)
	.loc 1 2462 0
	movl	-4(%ebp), %eax
	.loc 1 2463 0
	leave
	ret
.LFE66:
	.size	mangle_type_string, .-mangle_type_string
.globl mangle_type
	.type	mangle_type, @function
mangle_type:
.LFB67:
	.loc 1 2470 0
	pushl	%ebp
.LCFI227:
	movl	%esp, %ebp
.LCFI228:
	pushl	%ebx
.LCFI229:
	subl	$4, %esp
.LCFI230:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2471 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mangle_type_string@PLT
	movl	%eax, (%esp)
	call	get_identifier@PLT
	.loc 1 2472 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE67:
	.size	mangle_type, .-mangle_type
	.type	mangle_special_for_type, @function
mangle_special_for_type:
.LFB68:
	.loc 1 2482 0
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
	subl	$44, %esp
.LCFI236:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2487 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	start_mangling
.LBB105:
	.loc 1 2490 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	movl	$2, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1040
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1040:
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC25@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE105:
.LBB106:
	.loc 1 2491 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -48(%ebp)
	movl	$0, %eax
	cld
	movl	-48(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1042
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1042:
	movl	-16(%ebp), %ecx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE106:
	.loc 1 2494 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_type
	.loc 1 2495 0
	movl	$0, (%esp)
	call	finish_mangling
	movl	%eax, -32(%ebp)
	.loc 1 2500 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	.loc 1 2501 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE68:
	.size	mangle_special_for_type, .-mangle_special_for_type
	.section	.rodata
.LC35:
	.string	"TI"
	.text
.globl mangle_typeinfo_for_type
	.type	mangle_typeinfo_for_type, @function
mangle_typeinfo_for_type:
.LFB69:
	.loc 1 2509 0
	pushl	%ebp
.LCFI237:
	movl	%esp, %ebp
.LCFI238:
	pushl	%ebx
.LCFI239:
	subl	$20, %esp
.LCFI240:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2510 0
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mangle_special_for_type
	.loc 1 2511 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE69:
	.size	mangle_typeinfo_for_type, .-mangle_typeinfo_for_type
	.section	.rodata
.LC36:
	.string	"TS"
	.text
.globl mangle_typeinfo_string_for_type
	.type	mangle_typeinfo_string_for_type, @function
mangle_typeinfo_string_for_type:
.LFB70:
	.loc 1 2519 0
	pushl	%ebp
.LCFI241:
	movl	%esp, %ebp
.LCFI242:
	pushl	%ebx
.LCFI243:
	subl	$20, %esp
.LCFI244:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2520 0
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mangle_special_for_type
	.loc 1 2521 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE70:
	.size	mangle_typeinfo_string_for_type, .-mangle_typeinfo_string_for_type
	.section	.rodata
.LC37:
	.string	"TV"
	.text
.globl mangle_vtbl_for_type
	.type	mangle_vtbl_for_type, @function
mangle_vtbl_for_type:
.LFB71:
	.loc 1 2528 0
	pushl	%ebp
.LCFI245:
	movl	%esp, %ebp
.LCFI246:
	pushl	%ebx
.LCFI247:
	subl	$20, %esp
.LCFI248:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2529 0
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mangle_special_for_type
	.loc 1 2530 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE71:
	.size	mangle_vtbl_for_type, .-mangle_vtbl_for_type
	.section	.rodata
.LC38:
	.string	"TT"
	.text
.globl mangle_vtt_for_type
	.type	mangle_vtt_for_type, @function
mangle_vtt_for_type:
.LFB72:
	.loc 1 2537 0
	pushl	%ebp
.LCFI249:
	movl	%esp, %ebp
.LCFI250:
	pushl	%ebx
.LCFI251:
	subl	$20, %esp
.LCFI252:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2538 0
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mangle_special_for_type
	.loc 1 2539 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE72:
	.size	mangle_vtt_for_type, .-mangle_vtt_for_type
	.section	.rodata
.LC39:
	.string	"TC"
	.text
.globl mangle_ctor_vtbl_for_type
	.type	mangle_ctor_vtbl_for_type, @function
mangle_ctor_vtbl_for_type:
.LFB73:
	.loc 1 2559 0
	pushl	%ebp
.LCFI253:
	movl	%esp, %ebp
.LCFI254:
	pushl	%edi
.LCFI255:
	pushl	%esi
.LCFI256:
	pushl	%ebx
.LCFI257:
	subl	$44, %esp
.LCFI258:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2562 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	start_mangling
.LBB107:
	.loc 1 2564 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	movl	$2, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1054
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1054:
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC25@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE107:
.LBB108:
	.loc 1 2565 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	movl	$2, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1056
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1056:
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC39@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE108:
	.loc 1 2566 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_type
	.loc 1 2567 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	write_integer_cst
.LBB109:
	.loc 1 2568 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1058
	movl	$1, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1058:
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movb	$95, (%eax)
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE109:
	.loc 1 2569 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	write_type
	.loc 1 2571 0
	movl	$0, (%esp)
	call	finish_mangling
	movl	%eax, -36(%ebp)
	.loc 1 2574 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	.loc 1 2575 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE73:
	.size	mangle_ctor_vtbl_for_type, .-mangle_ctor_vtbl_for_type
.globl mangle_thunk
	.type	mangle_thunk, @function
mangle_thunk:
.LFB74:
	.loc 1 2592 0
	pushl	%ebp
.LCFI259:
	movl	%esp, %ebp
.LCFI260:
	pushl	%edi
.LCFI261:
	pushl	%esi
.LCFI262:
	pushl	%ebx
.LCFI263:
	subl	$44, %esp
.LCFI264:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2595 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	start_mangling
.LBB110:
	.loc 1 2597 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	movl	$2, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1062
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1062:
	movl	-36(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC25@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-40(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE110:
.LBB111:
	.loc 1 2600 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1064
	movl	$1, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1064:
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movb	$84, (%eax)
	leal	1(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE111:
	.loc 1 2601 0
	cmpl	$0, 16(%ebp)
	je	.L1066
.LBB112:
	.loc 1 2602 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1068
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1068:
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movb	$118, (%eax)
	leal	1(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L1070
.L1066:
.LBE112:
.LBB113:
	.loc 1 2604 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1071
	movl	$1, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1071:
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movb	$104, (%eax)
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.L1070:
.LBE113:
	.loc 1 2607 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	write_integer_cst
.LBB114:
	.loc 1 2608 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1073
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1073:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movb	$95, (%eax)
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE114:
	.loc 1 2611 0
	cmpl	$0, 16(%ebp)
	je	.L1075
	.loc 1 2614 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	write_integer_cst
.LBB115:
	.loc 1 2615 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1077
	movl	$1, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1077:
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movb	$95, (%eax)
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.L1075:
.LBE115:
	.loc 1 2619 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_encoding
	.loc 1 2621 0
	movl	$0, (%esp)
	call	finish_mangling
	movl	%eax, -44(%ebp)
	.loc 1 2624 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	.loc 1 2625 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE74:
	.size	mangle_thunk, .-mangle_thunk
	.type	hash_type, @function
hash_type:
.LFB75:
	.loc 1 2637 0
	pushl	%ebp
.LCFI265:
	movl	%esp, %ebp
.LCFI266:
	pushl	%ebx
.LCFI267:
	subl	$4, %esp
.LCFI268:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2638 0
	movl	htab_hash_pointer@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 2639 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE75:
	.size	hash_type, .-hash_type
	.type	compare_type, @function
compare_type:
.LFB76:
	.loc 1 2645 0
	pushl	%ebp
.LCFI269:
	movl	%esp, %ebp
.LCFI270:
	.loc 1 2646 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	.loc 1 2647 0
	popl	%ebp
	ret
.LFE76:
	.size	compare_type, .-compare_type
	.section	.rodata
.LC40:
	.string	"operator %lu"
	.text
.globl mangle_conv_op_name_for_type
	.type	mangle_conv_op_name_for_type, @function
mangle_conv_op_name_for_type:
.LFB77:
	.loc 1 2655 0
	pushl	%ebp
.LCFI271:
	movl	%esp, %ebp
.LCFI272:
	pushl	%ebx
.LCFI273:
	subl	$116, %esp
.LCFI274:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -88(%ebp)
	.loc 1 2655 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 2660 0
	movl	conv_type_names@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1085
	.loc 1 2661 0
	movl	$0, 20(%esp)
	movl	ggc_calloc@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	leal	compare_type@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	hash_type@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$31, (%esp)
	call	htab_create_alloc@PLT
	movl	%eax, conv_type_names@GOTOFF(%ebx)
.L1085:
	.loc 1 2663 0
	movl	htab_hash_pointer@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	conv_type_names@GOTOFF(%ebx), %edx
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_find_slot_with_hash@PLT
	movl	%eax, -80(%ebp)
	.loc 1 2665 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1087
	.loc 1 2666 0
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L1089
.L1087:
	.loc 1 2669 0
	movl	conv_type_names@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	htab_elements@PLT
	movl	%eax, 8(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 2671 0
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, -76(%ebp)
	.loc 1 2672 0
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	build_tree_list@PLT
	movl	%eax, %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2675 0
	movl	-76(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$4, %eax
	movb	%al, 11(%edx)
	.loc 1 2676 0
	movl	-76(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$16, %eax
	movb	%al, 11(%edx)
	.loc 1 2679 0
	movl	-76(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2681 0
	movl	-76(%ebp), %edx
	movl	%edx, -92(%ebp)
.L1089:
	movl	-92(%ebp), %eax
	.loc 1 2682 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L1091
	call	__stack_chk_fail_local
.L1091:
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE77:
	.size	mangle_conv_op_name_for_type, .-mangle_conv_op_name_for_type
	.section	.rodata
.LC41:
	.string	"_ZGV"
.LC42:
	.string	"_ZGR"
	.text
.globl mangle_guard_variable
	.type	mangle_guard_variable, @function
mangle_guard_variable:
.LFB78:
	.loc 1 2690 0
	pushl	%ebp
.LCFI275:
	movl	%esp, %ebp
.LCFI276:
	pushl	%edi
.LCFI277:
	pushl	%esi
.LCFI278:
	pushl	%ebx
.LCFI279:
	subl	$44, %esp
.LCFI280:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2691 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	start_mangling
.LBB116:
	.loc 1 2692 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	movl	$4, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1093
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1093:
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC41@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE116:
	.loc 1 2693 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	movl	$4, -40(%ebp)
	cld
	movl	-32(%ebp), %esi
	movl	-36(%ebp), %edi
	movl	-40(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1095
.LBB117:
	.loc 1 2696 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	addl	$4, %eax
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
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1097
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1097:
	movl	-16(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	leal	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L1099
.L1095:
.LBE117:
	.loc 1 2698 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_name
.L1099:
	.loc 1 2699 0
	movl	$0, (%esp)
	call	finish_mangling
	movl	%eax, (%esp)
	call	get_identifier@PLT
	.loc 1 2700 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE78:
	.size	mangle_guard_variable, .-mangle_guard_variable
.globl mangle_ref_init_variable
	.type	mangle_ref_init_variable, @function
mangle_ref_init_variable:
.LFB79:
	.loc 1 2709 0
	pushl	%ebp
.LCFI281:
	movl	%esp, %ebp
.LCFI282:
	pushl	%edi
.LCFI283:
	pushl	%esi
.LCFI284:
	pushl	%ebx
.LCFI285:
	subl	$28, %esp
.LCFI286:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2710 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	start_mangling
.LBB118:
	.loc 1 2711 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	$4, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1102
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1102:
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC42@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE118:
	.loc 1 2712 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_name
	.loc 1 2713 0
	movl	$0, (%esp)
	call	finish_mangling
	movl	%eax, (%esp)
	call	get_identifier@PLT
	.loc 1 2714 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE79:
	.size	mangle_ref_init_variable, .-mangle_ref_init_variable
	.section	.rodata
	.type	__FUNCTION__.16800, @object
	.size	__FUNCTION__.16800, 30
__FUNCTION__.16800:
	.string	"write_java_integer_type_codes"
	.text
	.type	write_java_integer_type_codes, @function
write_java_integer_type_codes:
.LFB80:
	.loc 1 2724 0
	pushl	%ebp
.LCFI287:
	movl	%esp, %ebp
.LCFI288:
	pushl	%ebx
.LCFI289:
	subl	$52, %esp
.LCFI290:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2725 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1106
.LBB119:
	.loc 1 2726 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1108
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1108:
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movb	$105, (%eax)
	leal	1(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L1131
.L1106:
.LBE119:
	.loc 1 2727 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1111
.LBB120:
	.loc 1 2728 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1113
	movl	$1, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1113:
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movb	$115, (%eax)
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L1131
.L1111:
.LBE120:
	.loc 1 2729 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1115
.LBB121:
	.loc 1 2730 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1117
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1117:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movb	$99, (%eax)
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L1131
.L1115:
.LBE121:
	.loc 1 2731 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1119
.LBB122:
	.loc 1 2732 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1121
	movl	$1, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1121:
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movb	$119, (%eax)
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L1131
.L1119:
.LBE122:
	.loc 1 2733 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1123
.LBB123:
	.loc 1 2734 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1125
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1125:
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movb	$120, (%eax)
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L1131
.L1123:
.LBE123:
	.loc 1 2735 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1127
.LBB124:
	.loc 1 2736 0
	leal	G@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1129
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1129:
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movb	$98, (%eax)
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L1131
.L1127:
.LBE124:
	.loc 1 2738 0
	leal	__FUNCTION__.16800@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2738, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1131:
	.loc 1 2739 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE80:
	.size	write_java_integer_type_codes, .-write_java_integer_type_codes
.globl gt_ggc_r_gt_cp_mangle_h
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	gt_ggc_r_gt_cp_mangle_h, @object
	.size	gt_ggc_r_gt_cp_mangle_h, 32
gt_ggc_r_gt_cp_mangle_h:
	.long	conv_type_names
	.long	1
	.long	4
	.long	gt_ggc_m_P9tree_node4htab
	.long	0
	.long	0
	.long	0
	.long	0
	.local	G
	.comm	G,56,32
	.local	subst_identifiers
	.comm	subst_identifiers,24,4
	.local	conv_type_names
	.comm	conv_type_names,4,4
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
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI3-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI6-.LCFI4
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI7-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI11-.LCFI8
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
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI12-.LFB17
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
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI16-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI21-.LCFI17
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
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI22-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI25-.LFB20
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
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI29-.LFB23
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
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI33-.LFB24
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
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI37-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI42-.LCFI38
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
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
	.long	.LCFI49-.LCFI47
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI50-.LFB28
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
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI54-.LFB29
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
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI58-.LFB30
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
	.long	.LCFI69-.LCFI65
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
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
	.align 4
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
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
	.long	.LCFI78-.LCFI74
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI79-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI80-.LCFI79
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI84-.LCFI80
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
	.long	.LCFI90-.LCFI86
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI91-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI92-.LCFI91
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI96-.LCFI92
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
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
	.long	.LCFI102-.LCFI98
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI103-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI104-.LCFI103
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI108-.LCFI104
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI109-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI110-.LCFI109
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI112-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI113-.LCFI112
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
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
	.long	.LCFI117-.LCFI115
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI118-.LFB43
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
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI122-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI123-.LCFI122
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI127-.LCFI123
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
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI128-.LFB45
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
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI132-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI133-.LCFI132
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI135-.LCFI133
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI136-.LFB47
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
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI140-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI141-.LCFI140
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
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
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
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
	.align 4
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI150-.LFB51
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
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI154-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI155-.LCFI154
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI159-.LCFI155
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI160-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI161-.LCFI160
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI165-.LCFI161
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI166-.LFB53
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
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI170-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI171-.LCFI170
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI175-.LCFI171
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
	.long	.LCFI176-.LFB54
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
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB55
	.long	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI180-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI181-.LCFI180
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
	.long	.LCFI183-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI184-.LCFI183
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI186-.LCFI184
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
	.long	.LCFI187-.LFB57
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
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI191-.LFB58
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
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.long	.LFB59
	.long	.LFE59-.LFB59
	.byte	0x4
	.long	.LCFI195-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI196-.LCFI195
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
	.long	.LCFI198-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI199-.LCFI198
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI201-.LCFI199
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB63
	.long	.LFE63-.LFB63
	.byte	0x4
	.long	.LCFI202-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI203-.LCFI202
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI205-.LCFI203
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB64
	.long	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI206-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI207-.LCFI206
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI211-.LCFI207
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.long	.LFB61
	.long	.LFE61-.LFB61
	.byte	0x4
	.long	.LCFI212-.LFB61
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
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI216-.LFB62
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
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.byte	0x4
	.long	.LCFI220-.LFB65
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
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.long	.LFB66
	.long	.LFE66-.LFB66
	.byte	0x4
	.long	.LCFI224-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI225-.LCFI224
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.long	.LFB67
	.long	.LFE67-.LFB67
	.byte	0x4
	.long	.LCFI227-.LFB67
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
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.long	.LFB68
	.long	.LFE68-.LFB68
	.byte	0x4
	.long	.LCFI231-.LFB68
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
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.long	.LFB69
	.long	.LFE69-.LFB69
	.byte	0x4
	.long	.LCFI237-.LFB69
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
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.long	.LFB70
	.long	.LFE70-.LFB70
	.byte	0x4
	.long	.LCFI241-.LFB70
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
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.long	.LFB71
	.long	.LFE71-.LFB71
	.byte	0x4
	.long	.LCFI245-.LFB71
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
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.long	.LFB72
	.long	.LFE72-.LFB72
	.byte	0x4
	.long	.LCFI249-.LFB72
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
.LEFDE114:
.LSFDE116:
	.long	.LEFDE116-.LASFDE116
.LASFDE116:
	.long	.Lframe0
	.long	.LFB73
	.long	.LFE73-.LFB73
	.byte	0x4
	.long	.LCFI253-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI254-.LCFI253
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI258-.LCFI254
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
	.long	.LCFI259-.LFB74
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI260-.LCFI259
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI264-.LCFI260
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
	.long	.LFB75
	.long	.LFE75-.LFB75
	.byte	0x4
	.long	.LCFI265-.LFB75
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI266-.LCFI265
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI268-.LCFI266
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
	.long	.LCFI269-.LFB76
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI270-.LCFI269
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
	.long	.LCFI271-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI272-.LCFI271
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI274-.LCFI272
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
	.long	.LCFI275-.LFB78
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI276-.LCFI275
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI280-.LCFI276
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI281-.LFB79
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI282-.LCFI281
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI286-.LCFI282
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI287-.LFB80
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI288-.LCFI287
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI290-.LCFI288
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE130:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/tree.h"
	.file 4 "../../../kg++fe/gnu/real.h"
	.file 5 "../../../kg++fe/gnu/hashtable.h"
	.file 6 "../../../kg++fe/gnu/location.h"
	.file 7 "../../../kg++fe/gnu/machmode.h"
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
	.file 18 "/usr/include/libio.h"
	.file 19 "/usr/include/bits/types.h"
	.file 20 "../../../kg++fe/gnu/MIPS/gt-cp-mangle.h"
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
	.long	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI3-.Ltext0
	.long	.LCFI4-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI4-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
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
.LLST11:
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
.LLST12:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
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
.LLST16:
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
.LLST17:
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
.LLST18:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
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
.LLST20:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
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
.LLST22:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
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
.LLST26:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB44-.Ltext0
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
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB45-.Ltext0
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
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB46-.Ltext0
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
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB47-.Ltext0
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
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB48-.Ltext0
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
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
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
.LLST33:
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
.LLST34:
	.long	.LFB51-.Ltext0
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
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB52-.Ltext0
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
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB22-.Ltext0
	.long	.LCFI160-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI160-.Ltext0
	.long	.LCFI161-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI161-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB53-.Ltext0
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
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
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
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
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
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
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
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
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
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
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
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
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
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
	.long	.LCFI198-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI198-.Ltext0
	.long	.LCFI199-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI199-.Ltext0
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB63-.Ltext0
	.long	.LCFI202-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI202-.Ltext0
	.long	.LCFI203-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI203-.Ltext0
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB64-.Ltext0
	.long	.LCFI206-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI206-.Ltext0
	.long	.LCFI207-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI207-.Ltext0
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB61-.Ltext0
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
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB62-.Ltext0
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
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB65-.Ltext0
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
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB66-.Ltext0
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
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB67-.Ltext0
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
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB68-.Ltext0
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
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB69-.Ltext0
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
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB70-.Ltext0
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
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB71-.Ltext0
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
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB72-.Ltext0
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
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB73-.Ltext0
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
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB74-.Ltext0
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
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LFB75-.Ltext0
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
	.long	.LFE75-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LFB76-.Ltext0
	.long	.LCFI269-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI269-.Ltext0
	.long	.LCFI270-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI270-.Ltext0
	.long	.LFE76-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LFB77-.Ltext0
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
	.long	.LFE77-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LFB78-.Ltext0
	.long	.LCFI275-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI275-.Ltext0
	.long	.LCFI276-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI276-.Ltext0
	.long	.LFE78-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LFB79-.Ltext0
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
	.long	.LFE79-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LFB80-.Ltext0
	.long	.LCFI287-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI287-.Ltext0
	.long	.LCFI288-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI288-.Ltext0
	.long	.LFE80-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x987d
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cp/mangle.c"
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
	.string	"rtx_def"
	.byte	0x1
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0xc6
	.uleb128 0x3
	.byte	0x4
	.long	0xcc
	.uleb128 0x4
	.string	"rtvec_def"
	.byte	0x1
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0xe4
	.uleb128 0x3
	.byte	0x4
	.long	0xea
	.uleb128 0x5
	.long	0x1bb
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x6
	.long	.LASF0
	.byte	0x3
	.value	0x887
	.long	0x3023
	.uleb128 0x7
	.string	"int_cst"
	.byte	0x3
	.value	0x888
	.long	0x3341
	.uleb128 0x7
	.string	"real_cst"
	.byte	0x3
	.value	0x889
	.long	0x3389
	.uleb128 0x7
	.string	"vector"
	.byte	0x3
	.value	0x88a
	.long	0x34f5
	.uleb128 0x7
	.string	"string"
	.byte	0x3
	.value	0x88b
	.long	0x3436
	.uleb128 0x7
	.string	"complex"
	.byte	0x3
	.value	0x88c
	.long	0x34a0
	.uleb128 0x6
	.long	.LASF1
	.byte	0x3
	.value	0x88d
	.long	0x372a
	.uleb128 0x6
	.long	.LASF2
	.byte	0x3
	.value	0x88e
	.long	0x479d
	.uleb128 0x6
	.long	.LASF3
	.byte	0x3
	.value	0x88f
	.long	0x398c
	.uleb128 0x7
	.string	"list"
	.byte	0x3
	.value	0x890
	.long	0x3761
	.uleb128 0x7
	.string	"vec"
	.byte	0x3
	.value	0x891
	.long	0x37a8
	.uleb128 0x7
	.string	"exp"
	.byte	0x3
	.value	0x892
	.long	0x37f6
	.uleb128 0x7
	.string	"block"
	.byte	0x3
	.value	0x893
	.long	0x3842
	.uleb128 0x7
	.string	"omp"
	.byte	0x3
	.value	0x895
	.long	0x519a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1c1
	.uleb128 0x8
	.long	0x1c6
	.uleb128 0x9
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	0x2a7
	.string	"mips_args"
	.byte	0x40
	.byte	0x9
	.value	0xaaa
	.uleb128 0xb
	.string	"gp_reg_found"
	.byte	0x9
	.value	0xaad
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"arg_number"
	.byte	0x9
	.value	0xab0
	.long	0x2a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"num_gprs"
	.byte	0x9
	.value	0xab5
	.long	0x2a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"num_fprs"
	.byte	0x9
	.value	0xab8
	.long	0x2a7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"stack_words"
	.byte	0x9
	.value	0xabb
	.long	0x2a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"fp_code"
	.byte	0x9
	.value	0xac8
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"prototype"
	.byte	0x9
	.value	0xacb
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"num_adjusts"
	.byte	0x9
	.value	0xad3
	.long	0x2a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"adjust"
	.byte	0x9
	.value	0xad4
	.long	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xc
	.long	.LASF4
	.byte	0x4
	.byte	0x7
	.uleb128 0xd
	.long	0x2be
	.long	0x9e
	.uleb128 0xe
	.long	0x2be
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	.LASF4
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.string	"CUMULATIVE_ARGS"
	.byte	0x9
	.value	0xad5
	.long	0x1d5
	.uleb128 0x2
	.string	"size_t"
	.byte	0xd
	.byte	0xd6
	.long	0x2a7
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
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x13
	.byte	0x3b
	.long	0x343
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x13
	.byte	0x90
	.long	0x38d
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x13
	.byte	0x91
	.long	0x36e
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x1c6
	.uleb128 0x11
	.long	0x62d
	.long	.LASF5
	.byte	0x94
	.byte	0xf
	.byte	0x2e
	.uleb128 0xb
	.string	"_flags"
	.byte	0x12
	.value	0x10c
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"_IO_read_ptr"
	.byte	0x12
	.value	0x111
	.long	0x3ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"_IO_read_end"
	.byte	0x12
	.value	0x112
	.long	0x3ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"_IO_read_base"
	.byte	0x12
	.value	0x113
	.long	0x3ac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"_IO_write_base"
	.byte	0x12
	.value	0x114
	.long	0x3ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"_IO_write_ptr"
	.byte	0x12
	.value	0x115
	.long	0x3ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"_IO_write_end"
	.byte	0x12
	.value	0x116
	.long	0x3ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"_IO_buf_base"
	.byte	0x12
	.value	0x117
	.long	0x3ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"_IO_buf_end"
	.byte	0x12
	.value	0x118
	.long	0x3ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"_IO_save_base"
	.byte	0x12
	.value	0x11a
	.long	0x3ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"_IO_backup_base"
	.byte	0x12
	.value	0x11b
	.long	0x3ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"_IO_save_end"
	.byte	0x12
	.value	0x11c
	.long	0x3ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"_markers"
	.byte	0x12
	.value	0x11e
	.long	0x6b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"_chain"
	.byte	0x12
	.value	0x120
	.long	0x6bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"_fileno"
	.byte	0x12
	.value	0x122
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"_flags2"
	.byte	0x12
	.value	0x126
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"_old_offset"
	.byte	0x12
	.value	0x128
	.long	0x37e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"_cur_column"
	.byte	0x12
	.value	0x12c
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"_vtable_offset"
	.byte	0x12
	.value	0x12d
	.long	0x327
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xb
	.string	"_shortbuf"
	.byte	0x12
	.value	0x12e
	.long	0x6c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xb
	.string	"_lock"
	.byte	0x12
	.value	0x132
	.long	0x6d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"_offset"
	.byte	0x12
	.value	0x13b
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.string	"__pad1"
	.byte	0x12
	.value	0x144
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.string	"__pad2"
	.byte	0x12
	.value	0x145
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.string	"__pad3"
	.byte	0x12
	.value	0x146
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"__pad4"
	.byte	0x12
	.value	0x147
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.string	"__pad5"
	.byte	0x12
	.value	0x148
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"_mode"
	.byte	0x12
	.value	0x14a
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"_unused2"
	.byte	0x12
	.value	0x14c
	.long	0x6d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xd
	.long	0x63d
	.long	0x1c6
	.uleb128 0xe
	.long	0x2be
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x643
	.uleb128 0x8
	.long	0x2eb
	.uleb128 0x3
	.byte	0x4
	.long	0x2eb
	.uleb128 0x3
	.byte	0x4
	.long	0x3aa
	.uleb128 0x3
	.byte	0x4
	.long	0x65a
	.uleb128 0x12
	.long	0x666
	.byte	0x1
	.uleb128 0x13
	.long	0x3aa
	.byte	0x0
	.uleb128 0x14
	.string	"_IO_lock_t"
	.byte	0x12
	.byte	0xb0
	.uleb128 0x15
	.long	0x6b7
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x12
	.byte	0xb6
	.uleb128 0x16
	.string	"_next"
	.byte	0x12
	.byte	0xb7
	.long	0x6b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"_sbuf"
	.byte	0x12
	.byte	0xb8
	.long	0x6bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"_pos"
	.byte	0x12
	.byte	0xbc
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x674
	.uleb128 0x3
	.byte	0x4
	.long	0x3b2
	.uleb128 0xd
	.long	0x6d3
	.long	0x1c6
	.uleb128 0xe
	.long	0x2be
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x666
	.uleb128 0xd
	.long	0x6e9
	.long	0x1c6
	.uleb128 0xe
	.long	0x2be
	.byte	0x27
	.byte	0x0
	.uleb128 0xd
	.long	0x6f9
	.long	0x1c6
	.uleb128 0xe
	.long	0x2be
	.byte	0x13
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ff
	.uleb128 0x17
	.long	0x714
	.byte	0x1
	.long	0x1ce
	.uleb128 0x13
	.long	0x714
	.uleb128 0x13
	.long	0x714
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x71a
	.uleb128 0x18
	.uleb128 0x19
	.long	0x964
	.string	"machine_mode"
	.byte	0x4
	.byte	0x7
	.byte	0x1d
	.uleb128 0x1a
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x1a
	.string	"BImode"
	.sleb128 1
	.uleb128 0x1a
	.string	"QImode"
	.sleb128 2
	.uleb128 0x1a
	.string	"HImode"
	.sleb128 3
	.uleb128 0x1a
	.string	"SImode"
	.sleb128 4
	.uleb128 0x1a
	.string	"DImode"
	.sleb128 5
	.uleb128 0x1a
	.string	"TImode"
	.sleb128 6
	.uleb128 0x1a
	.string	"OImode"
	.sleb128 7
	.uleb128 0x1a
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x1a
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x1a
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x1a
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x1a
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x1a
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x1a
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x1a
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x1a
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x1a
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x1a
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x1a
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x1a
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x1a
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x1a
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x1a
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x1a
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x1a
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x1a
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x1a
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x1a
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x1a
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x1a
	.string	"COImode"
	.sleb128 30
	.uleb128 0x1a
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x1a
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x1a
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x1a
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x1a
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x1a
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x1a
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x1a
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x1a
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x1a
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x1a
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x1a
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x1a
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x1a
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x1a
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x1a
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x1a
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x1a
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x1a
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x1a
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x1a
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x1a
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x1a
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x1a
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x15
	.long	0x996
	.string	"location_s"
	.byte	0x8
	.byte	0x6
	.byte	0x1c
	.uleb128 0x16
	.string	"file"
	.byte	0x6
	.byte	0x1e
	.long	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"line"
	.byte	0x6
	.byte	0x21
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x6
	.byte	0x23
	.long	0x964
	.uleb128 0x19
	.long	0x12ca
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
	.byte	0x25
	.uleb128 0x1a
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x1a
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x1a
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x1a
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x1a
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x1a
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x1a
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x1a
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x1a
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x1a
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x1a
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x1a
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x1a
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x1a
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x1a
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x1a
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x1a
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x1a
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x1a
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x1a
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x1a
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x1a
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x1a
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x1a
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x1a
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x1a
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x1a
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x1a
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x1a
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x1a
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x1a
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x1a
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x1a
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x1a
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x1a
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x1a
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x1a
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x1a
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x1a
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x1a
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x1a
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x1a
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x1a
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x1a
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x1a
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x1a
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x1a
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x1a
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x1a
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x1a
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x1a
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x1a
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x1a
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x1a
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x1a
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x1a
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x1a
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x1a
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x1a
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x1a
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x1a
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x1a
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x1a
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x1a
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x1a
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x1a
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x1a
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x1a
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x1a
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x1a
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x1a
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x1a
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x1a
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x1a
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x1a
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x1a
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x1a
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x1a
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x1a
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x1a
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x1a
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x1a
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x1a
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x1a
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x1a
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x1a
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x1a
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x1a
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x1a
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x1a
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x1a
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x1a
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x1a
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x1a
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x1a
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x1a
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x1a
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x1a
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x1a
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x1a
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x1a
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x1a
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x1a
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x1a
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x1a
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x1a
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x1a
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x1a
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x1a
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x1a
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x1a
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x1a
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x1a
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x1a
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x1a
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x1a
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x1a
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x1a
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x1a
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x1a
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x1a
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x1a
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x1a
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x1a
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x1a
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x1a
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x1a
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x1a
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x1a
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x1a
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x1a
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x1a
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x1a
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x1a
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x1a
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x1a
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x1a
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x1a
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x1a
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x1a
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x1a
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x1a
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x1a
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x1a
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x1a
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x1a
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x1a
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x1a
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x1a
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x1a
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x1a
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x1a
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x3
	.byte	0x2f
	.long	0x2a7
	.uleb128 0x15
	.long	0x131a
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x30
	.uleb128 0x16
	.string	"block"
	.byte	0x3
	.byte	0x30
	.long	0x2a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"offset"
	.byte	0x3
	.byte	0x30
	.long	0x2a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x34
	.long	0x1324
	.uleb128 0x4
	.string	"st"
	.byte	0x1
	.uleb128 0x1b
	.long	0x1379
	.long	.LASF6
	.byte	0x4
	.byte	0x3
	.byte	0x58
	.uleb128 0x1a
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x1a
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x1a
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x1a
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x19
	.long	0x3023
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x67
	.uleb128 0x1a
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x1a
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x1a
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x1a
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x1a
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x1a
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x1a
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x1a
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x1a
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x1a
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x1a
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x1a
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x1a
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x1a
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x1a
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x1a
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x1a
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x1a
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x1a
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x1a
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x1a
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x1a
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x1a
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x1a
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x1a
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x1a
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x1a
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x1a
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x1a
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x1a
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x1a
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x1a
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x1a
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x1a
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x1a
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x1a
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x1a
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x1a
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x1a
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x1a
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x1a
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x1a
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x1a
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x1a
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x1a
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x1a
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x1a
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x1a
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x1a
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x1a
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x1a
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x1a
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x1a
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x1a
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x1a
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x1a
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x1a
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x1a
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x1a
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x1a
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x1a
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x1a
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x1a
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x1a
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x1a
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x1a
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x1a
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x1a
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x1a
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x1a
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x1a
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x1a
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x1a
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x1a
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x1a
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x1a
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x1a
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x1a
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x1a
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x1a
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x1a
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x1a
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x1a
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x1a
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x1a
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x1a
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x1a
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x1a
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x1a
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x1a
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x1a
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x1a
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x1a
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x1a
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x1a
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x1a
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x1a
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x1a
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x1a
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x1a
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x1a
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x1a
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x1a
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x1a
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x1a
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x1a
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x1a
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x1a
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x1a
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x1a
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x1a
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x1a
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x1a
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x1a
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x1a
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x1a
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x1a
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x1a
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x1a
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x1a
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x1a
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x1a
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x1a
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x1a
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x1a
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x1a
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x1a
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x1a
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x1a
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x1a
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x1a
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x1a
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x1a
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x1a
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x1a
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x1a
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x1a
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x1a
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x1a
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x1a
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x1a
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x1a
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x1a
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x1a
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x1a
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x1a
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x1a
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x1a
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x1a
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x1a
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x1a
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x1a
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x1a
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x1a
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x1a
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x1a
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x1a
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x1a
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x1a
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x1a
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x1a
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x1a
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x1a
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x1a
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x1a
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x1a
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x1a
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x1a
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x1a
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x1a
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x1a
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x1a
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x1a
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x1a
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x1a
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x1a
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x1a
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x1a
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x1a
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x1a
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x1a
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x1a
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x1a
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x1a
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x1a
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x1a
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x1a
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x1a
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x1a
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x1a
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x1a
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x1a
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x1a
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x1a
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x1a
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x1a
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x1a
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x1a
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x1a
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x1a
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x1a
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x1a
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x1a
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x1a
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x1a
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x1a
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x1a
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x1a
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x1a
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x1a
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x1a
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x1a
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x1a
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x1a
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x1a
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x1a
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x1a
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x1a
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x1a
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x1a
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x1a
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x1a
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x1a
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x1a
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x1a
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x1a
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x1a
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x1a
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x1a
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x1a
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x1a
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x1a
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x1a
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x1a
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x1a
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x1a
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x1a
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x1a
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x1a
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x1a
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x1a
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x1a
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x1a
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x1a
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x1a
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x1a
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x1a
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x15
	.long	0x3305
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8c
	.uleb128 0x16
	.string	"chain"
	.byte	0x3
	.byte	0x8d
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x3
	.byte	0x8e
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"code"
	.byte	0x3
	.byte	0x90
	.long	0x9a8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"side_effects_flag"
	.byte	0x3
	.byte	0x92
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"constant_flag"
	.byte	0x3
	.byte	0x93
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"addressable_flag"
	.byte	0x3
	.byte	0x94
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"volatile_flag"
	.byte	0x3
	.byte	0x95
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"readonly_flag"
	.byte	0x3
	.byte	0x96
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"unsigned_flag"
	.byte	0x3
	.byte	0x97
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"asm_written_flag"
	.byte	0x3
	.byte	0x98
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"not_emitted_by_gxx"
	.byte	0x3
	.byte	0x9a
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"used_flag"
	.byte	0x3
	.byte	0x9f
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"nothrow_flag"
	.byte	0x3
	.byte	0xa0
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"static_flag"
	.byte	0x3
	.byte	0xa1
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"public_flag"
	.byte	0x3
	.byte	0xa2
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"private_flag"
	.byte	0x3
	.byte	0xa3
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"protected_flag"
	.byte	0x3
	.byte	0xa4
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"bounded_flag"
	.byte	0x3
	.byte	0xa5
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"deprecated_flag"
	.byte	0x3
	.byte	0xa6
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x3
	.byte	0xa8
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x3
	.byte	0xa9
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x3
	.byte	0xaa
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF10
	.byte	0x3
	.byte	0xab
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF11
	.byte	0x3
	.byte	0xac
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x3
	.byte	0xad
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF13
	.byte	0x3
	.byte	0xae
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF14
	.byte	0x3
	.byte	0xb0
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"sbuf"
	.byte	0x3
	.byte	0xb5
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1d
	.string	"sdram"
	.byte	0x3
	.byte	0xb6
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1d
	.string	"v1buf"
	.byte	0x3
	.byte	0xb7
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1d
	.string	"v2buf"
	.byte	0x3
	.byte	0xb8
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1d
	.string	"v4buf"
	.byte	0x3
	.byte	0xb9
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xa
	.long	0x3341
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x30a
	.uleb128 0xb
	.string	"low"
	.byte	0x3
	.value	0x30b
	.long	0x354
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"high"
	.byte	0x3
	.value	0x30c
	.long	0x343
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xa
	.long	0x3389
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x303
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x3
	.value	0x304
	.long	0x3023
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x305
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"int_cst"
	.byte	0x3
	.value	0x30d
	.long	0x3305
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x33d7
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x31f
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x3
	.value	0x320
	.long	0x3023
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x321
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x322
	.long	0x3430
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x3430
	.string	"real_value"
	.byte	0x18
	.byte	0x3
	.value	0x319
	.uleb128 0x1d
	.string	"class"
	.byte	0x4
	.byte	0x35
	.long	0x6cfb
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.string	"sign"
	.byte	0x4
	.byte	0x37
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.string	"exp"
	.byte	0x4
	.byte	0x38
	.long	0x1ce
	.byte	0x4
	.byte	0x1d
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"sig"
	.byte	0x4
	.byte	0x39
	.long	0x6d41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x33d7
	.uleb128 0xa
	.long	0x349a
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x333
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x3
	.value	0x334
	.long	0x3023
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x335
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.long	.LASF15
	.byte	0x3
	.value	0x336
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"pointer"
	.byte	0x3
	.value	0x337
	.long	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"st"
	.byte	0x3
	.value	0x339
	.long	0x349a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x131a
	.uleb128 0xa
	.long	0x34f5
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x342
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x3
	.value	0x343
	.long	0x3023
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x344
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"real"
	.byte	0x3
	.value	0x345
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"imag"
	.byte	0x3
	.value	0x346
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xa
	.long	0x353d
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x355
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x3
	.value	0x356
	.long	0x3023
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x357
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"elements"
	.byte	0x3
	.value	0x358
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x15
	.long	0x3587
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x10
	.byte	0xa2
	.uleb128 0x16
	.string	"limit"
	.byte	0x10
	.byte	0xa3
	.long	0x3ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"prev"
	.byte	0x10
	.byte	0xa4
	.long	0x3587
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"contents"
	.byte	0x10
	.byte	0xa5
	.long	0x62d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x353d
	.uleb128 0xa
	.long	0x36ba
	.string	"obstack"
	.byte	0x2c
	.byte	0xf
	.value	0x31b
	.uleb128 0x16
	.string	"chunk_size"
	.byte	0x10
	.byte	0xaa
	.long	0x38d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"chunk"
	.byte	0x10
	.byte	0xab
	.long	0x3587
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"object_base"
	.byte	0x10
	.byte	0xac
	.long	0x3ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"next_free"
	.byte	0x10
	.byte	0xad
	.long	0x3ac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"chunk_limit"
	.byte	0x10
	.byte	0xae
	.long	0x3ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.string	"temp"
	.byte	0x10
	.byte	0xaf
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.string	"alignment_mask"
	.byte	0x10
	.byte	0xb0
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.string	"chunkfun"
	.byte	0x10
	.byte	0xb5
	.long	0x36cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.string	"freefun"
	.byte	0x10
	.byte	0xb6
	.long	0x36e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.string	"extra_arg"
	.byte	0x10
	.byte	0xb7
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.string	"use_extra_arg"
	.byte	0x10
	.byte	0xbd
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1d
	.string	"maybe_empty_object"
	.byte	0x10
	.byte	0xbe
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1d
	.string	"alloc_failed"
	.byte	0x10
	.byte	0xc2
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x17
	.long	0x36cf
	.byte	0x1
	.long	0x3587
	.uleb128 0x13
	.long	0x3aa
	.uleb128 0x13
	.long	0x38d
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x36ba
	.uleb128 0x12
	.long	0x36e6
	.byte	0x1
	.uleb128 0x13
	.long	0x3aa
	.uleb128 0x13
	.long	0x3587
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x36d5
	.uleb128 0x11
	.long	0x372a
	.long	.LASF16
	.byte	0xc
	.byte	0x5
	.byte	0x19
	.uleb128 0x16
	.string	"str"
	.byte	0x5
	.byte	0x1c
	.long	0x63d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"len"
	.byte	0x5
	.byte	0x1d
	.long	0x2a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"hash_value"
	.byte	0x5
	.byte	0x1e
	.long	0x2a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xa
	.long	0x3761
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x376
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x3
	.value	0x377
	.long	0x3023
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"id"
	.byte	0x3
	.value	0x378
	.long	0x36ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x37a8
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x380
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x3
	.value	0x381
	.long	0x3023
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"purpose"
	.byte	0x3
	.value	0x382
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"value"
	.byte	0x3
	.value	0x383
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x37e6
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x38e
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x3
	.value	0x38f
	.long	0x3023
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF15
	.byte	0x3
	.value	0x390
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"a"
	.byte	0x3
	.value	0x391
	.long	0x37e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x37f6
	.long	0xd8
	.uleb128 0xe
	.long	0x2be
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x3842
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3d4
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x3
	.value	0x3d5
	.long	0x3023
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"complexity"
	.byte	0x3
	.value	0x3d6
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"operands"
	.byte	0x3
	.value	0x3d9
	.long	0x37e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x3932
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x40a
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x3
	.value	0x40b
	.long	0x3023
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x40d
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x21
	.long	.LASF17
	.byte	0x3
	.value	0x40e
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.string	"block_num"
	.byte	0x3
	.value	0x40f
	.long	0x2a7
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"vars"
	.byte	0x3
	.value	0x411
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"subblocks"
	.byte	0x3
	.value	0x412
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"supercontext"
	.byte	0x3
	.value	0x413
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1f
	.long	.LASF18
	.byte	0x3
	.value	0x414
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"fragment_origin"
	.byte	0x3
	.value	0x415
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"fragment_chain"
	.byte	0x3
	.value	0x416
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x22
	.long	0x3979
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x570
	.uleb128 0x7
	.string	"address"
	.byte	0x3
	.value	0x571
	.long	0x1ce
	.uleb128 0x7
	.string	"pointer"
	.byte	0x3
	.value	0x572
	.long	0x3ac
	.uleb128 0x7
	.string	"die"
	.byte	0x3
	.value	0x573
	.long	0x3986
	.byte	0x0
	.uleb128 0x4
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3979
	.uleb128 0xa
	.long	0x3cd5
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x551
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x3
	.value	0x552
	.long	0x3023
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"values"
	.byte	0x3
	.value	0x553
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"size"
	.byte	0x3
	.value	0x554
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1f
	.long	.LASF19
	.byte	0x3
	.value	0x555
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1f
	.long	.LASF20
	.byte	0x3
	.value	0x556
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"uid"
	.byte	0x3
	.value	0x557
	.long	0x2a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"precision"
	.byte	0x3
	.value	0x559
	.long	0x2a7
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"mode"
	.byte	0x3
	.value	0x55a
	.long	0x71b
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"string_flag"
	.byte	0x3
	.value	0x55c
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"no_force_blk_flag"
	.byte	0x3
	.value	0x55d
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"needs_constructing_flag"
	.byte	0x3
	.value	0x55e
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"transparent_union_flag"
	.byte	0x3
	.value	0x55f
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"packed_flag"
	.byte	0x3
	.value	0x560
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"restrict_flag"
	.byte	0x3
	.value	0x561
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF21
	.byte	0x3
	.value	0x562
	.long	0x2a7
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF7
	.byte	0x3
	.value	0x564
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF8
	.byte	0x3
	.value	0x565
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF9
	.byte	0x3
	.value	0x566
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF10
	.byte	0x3
	.value	0x567
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF11
	.byte	0x3
	.value	0x568
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF12
	.byte	0x3
	.value	0x569
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF13
	.byte	0x3
	.value	0x56a
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF22
	.byte	0x3
	.value	0x56b
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"align"
	.byte	0x3
	.value	0x56d
	.long	0x2a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"pointer_to"
	.byte	0x3
	.value	0x56e
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"reference_to"
	.byte	0x3
	.value	0x56f
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"symtab"
	.byte	0x3
	.value	0x574
	.long	0x3932
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1f
	.long	.LASF23
	.byte	0x3
	.value	0x576
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"minval"
	.byte	0x3
	.value	0x577
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"maxval"
	.byte	0x3
	.value	0x578
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"next_variant"
	.byte	0x3
	.value	0x579
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"main_variant"
	.byte	0x3
	.value	0x57a
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"binfo"
	.byte	0x3
	.value	0x57b
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1f
	.long	.LASF24
	.byte	0x3
	.value	0x57c
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.string	"alias_set"
	.byte	0x3
	.value	0x57d
	.long	0x343
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1f
	.long	.LASF25
	.byte	0x3
	.value	0x57f
	.long	0x3cf6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"ty_idx"
	.byte	0x3
	.value	0x581
	.long	0x2a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.string	"field_ids_used"
	.byte	0x3
	.value	0x582
	.long	0x2a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"dst_id"
	.byte	0x3
	.value	0x583
	.long	0x12db
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"extra_methods"
	.byte	0x3
	.value	0x58a
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0xa
	.long	0x3cf6
	.string	"lang_type"
	.byte	0x4c
	.byte	0x3
	.value	0x57f
	.uleb128 0xb
	.string	"u"
	.byte	0xa
	.value	0x4e0
	.long	0x67bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3cd5
	.uleb128 0xa
	.long	0x3d41
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x817
	.uleb128 0x20
	.string	"align"
	.byte	0x3
	.value	0x818
	.long	0x2a7
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"off_align"
	.byte	0x3
	.value	0x819
	.long	0x2a7
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x22
	.long	0x3d76
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x80e
	.uleb128 0x7
	.string	"f"
	.byte	0x3
	.value	0x811
	.long	0x1379
	.uleb128 0x7
	.string	"i"
	.byte	0x3
	.value	0x814
	.long	0x343
	.uleb128 0x7
	.string	"a"
	.byte	0x3
	.value	0x81a
	.long	0x3cfc
	.byte	0x0
	.uleb128 0x22
	.long	0x3db5
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x837
	.uleb128 0x7
	.string	"f"
	.byte	0x3
	.value	0x838
	.long	0x475f
	.uleb128 0x7
	.string	"r"
	.byte	0x3
	.value	0x839
	.long	0x9e
	.uleb128 0x7
	.string	"t"
	.byte	0x3
	.value	0x83a
	.long	0xd8
	.uleb128 0x7
	.string	"i"
	.byte	0x3
	.value	0x83b
	.long	0x1ce
	.byte	0x0
	.uleb128 0x23
	.long	0x475f
	.long	.LASF26
	.value	0x134
	.byte	0x3
	.value	0x7c2
	.uleb128 0x16
	.string	"eh"
	.byte	0x8
	.byte	0xb5
	.long	0x5564
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"stmt"
	.byte	0x8
	.byte	0xb6
	.long	0x5578
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"expr"
	.byte	0x8
	.byte	0xb7
	.long	0x557e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"emit"
	.byte	0x8
	.byte	0xb8
	.long	0x5584
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"varasm"
	.byte	0x8
	.byte	0xb9
	.long	0x559a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF23
	.byte	0x8
	.byte	0xbe
	.long	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF2
	.byte	0x8
	.byte	0xc1
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.string	"outer"
	.byte	0x8
	.byte	0xc4
	.long	0x475f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.string	"pops_args"
	.byte	0x8
	.byte	0xc9
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.string	"args_size"
	.byte	0x8
	.byte	0xce
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x16
	.string	"pretend_args_size"
	.byte	0x8
	.byte	0xd3
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x16
	.string	"outgoing_args_size"
	.byte	0x8
	.byte	0xd7
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x16
	.string	"arg_offset_rtx"
	.byte	0x8
	.byte	0xdb
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x16
	.string	"args_info"
	.byte	0x8
	.byte	0xdf
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x16
	.string	"return_rtx"
	.byte	0x8
	.byte	0xe5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x16
	.string	"internal_arg_pointer"
	.byte	0x8
	.byte	0xe8
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x1c
	.long	.LASF27
	.byte	0x8
	.byte	0xec
	.long	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x16
	.string	"hard_reg_initial_vals"
	.byte	0x8
	.byte	0xf0
	.long	0x55b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x16
	.string	"x_function_call_count"
	.byte	0x8
	.byte	0xf3
	.long	0x1ce
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x16
	.string	"x_nonlocal_labels"
	.byte	0x8
	.byte	0xf8
	.long	0xd8
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x16
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x8
	.byte	0xfe
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x8
	.value	0x102
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x8
	.value	0x107
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.string	"x_cleanup_label"
	.byte	0x8
	.value	0x10d
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.string	"x_return_label"
	.byte	0x8
	.value	0x112
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xb
	.string	"computed_goto_common_label"
	.byte	0x8
	.value	0x115
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.string	"computed_goto_common_reg"
	.byte	0x8
	.value	0x116
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xb
	.string	"x_save_expr_regs"
	.byte	0x8
	.value	0x11a
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.string	"x_stack_slot_list"
	.byte	0x8
	.value	0x11e
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xb
	.string	"x_rtl_expr_chain"
	.byte	0x8
	.value	0x121
	.long	0xd8
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.string	"x_tail_recursion_label"
	.byte	0x8
	.value	0x125
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xb
	.string	"x_tail_recursion_reentry"
	.byte	0x8
	.value	0x128
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.string	"x_arg_pointer_save_area"
	.byte	0x8
	.value	0x12e
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xb
	.string	"x_clobber_return_insn"
	.byte	0x8
	.value	0x133
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.string	"x_frame_offset"
	.byte	0x8
	.value	0x138
	.long	0x343
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xb
	.string	"x_context_display"
	.byte	0x8
	.value	0x13d
	.long	0xd8
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xb
	.string	"x_trampoline_list"
	.byte	0x8
	.value	0x146
	.long	0xd8
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xb
	.string	"x_parm_birth_insn"
	.byte	0x8
	.value	0x149
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xb
	.string	"x_last_parm_insn"
	.byte	0x8
	.value	0x14d
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xb
	.string	"x_max_parm_reg"
	.byte	0x8
	.value	0x151
	.long	0x2a7
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xb
	.string	"x_parm_reg_stack_loc"
	.byte	0x8
	.value	0x157
	.long	0x5408
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xb
	.string	"x_temp_slots"
	.byte	0x8
	.value	0x15a
	.long	0x55c9
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xb
	.string	"x_temp_slot_level"
	.byte	0x8
	.value	0x15d
	.long	0x1ce
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xb
	.string	"x_var_temp_slot_level"
	.byte	0x8
	.value	0x160
	.long	0x1ce
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xb
	.string	"x_target_temp_slot_level"
	.byte	0x8
	.value	0x166
	.long	0x1ce
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xb
	.string	"fixup_var_refs_queue"
	.byte	0x8
	.value	0x16a
	.long	0x525e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xb
	.string	"inlinable"
	.byte	0x8
	.value	0x16d
	.long	0x1ce
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xb
	.string	"no_debugging_symbols"
	.byte	0x8
	.value	0x16e
	.long	0x1ce
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xb
	.string	"original_arg_vector"
	.byte	0x8
	.value	0x16f
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.string	"original_decl_initial"
	.byte	0x8
	.value	0x170
	.long	0xd8
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xb
	.string	"inl_last_parm_insn"
	.byte	0x8
	.value	0x173
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xb
	.string	"inl_max_label_num"
	.byte	0x8
	.value	0x175
	.long	0x1ce
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xb
	.string	"funcdef_no"
	.byte	0x8
	.value	0x178
	.long	0x1ce
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xb
	.string	"machine"
	.byte	0x8
	.value	0x17d
	.long	0x55e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xb
	.string	"stack_alignment_needed"
	.byte	0x8
	.value	0x17f
	.long	0x1ce
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xb
	.string	"preferred_stack_boundary"
	.byte	0x8
	.value	0x181
	.long	0x1ce
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0x1f
	.long	.LASF28
	.byte	0x8
	.value	0x184
	.long	0x5822
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xb
	.string	"epilogue_delay_list"
	.byte	0x8
	.value	0x18a
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x20
	.string	"returns_struct"
	.byte	0x8
	.value	0x190
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"returns_pcc_struct"
	.byte	0x8
	.value	0x194
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"returns_pointer"
	.byte	0x8
	.value	0x197
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"needs_context"
	.byte	0x8
	.value	0x19a
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_setjmp"
	.byte	0x8
	.value	0x19d
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_longjmp"
	.byte	0x8
	.value	0x1a0
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_alloca"
	.byte	0x8
	.value	0x1a4
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_eh_return"
	.byte	0x8
	.value	0x1a7
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"has_nonlocal_label"
	.byte	0x8
	.value	0x1ab
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"has_nonlocal_goto"
	.byte	0x8
	.value	0x1af
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"contains_functions"
	.byte	0x8
	.value	0x1b2
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"has_computed_jump"
	.byte	0x8
	.value	0x1b5
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"is_thunk"
	.byte	0x8
	.value	0x1ba
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"all_throwers_are_sibcalls"
	.byte	0x8
	.value	0x1c1
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"instrument_entry_exit"
	.byte	0x8
	.value	0x1c5
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"arc_profile"
	.byte	0x8
	.value	0x1c8
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"profile"
	.byte	0x8
	.value	0x1cb
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"limit_stack"
	.byte	0x8
	.value	0x1cf
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"stdarg"
	.byte	0x8
	.value	0x1d2
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"x_whole_function_mode_p"
	.byte	0x8
	.value	0x1d8
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x8
	.value	0x1e1
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"uses_const_pool"
	.byte	0x8
	.value	0x1e4
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"uses_pic_offset_table"
	.byte	0x8
	.value	0x1e7
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"uses_eh_lsda"
	.byte	0x8
	.value	0x1ea
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"arg_pointer_save_area_init"
	.byte	0x8
	.value	0x1ed
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.long	.LASF29
	.byte	0x8
	.value	0x1fa
	.long	0x54ee
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xb
	.string	"max_jumptable_ents"
	.byte	0x8
	.value	0x1fe
	.long	0x1ce
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3db5
	.uleb128 0x24
	.long	0x479d
	.byte	0x4
	.byte	0x3
	.value	0x84e
	.uleb128 0x7
	.string	"st"
	.byte	0x3
	.value	0x84f
	.long	0x349a
	.uleb128 0x7
	.string	"label_idx"
	.byte	0x3
	.value	0x850
	.long	0x12ca
	.uleb128 0x7
	.string	"field_id"
	.byte	0x3
	.value	0x851
	.long	0x2a7
	.byte	0x0
	.uleb128 0xa
	.long	0x4edf
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x3
	.value	0x7c5
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x3
	.value	0x7c6
	.long	0x3023
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"locus"
	.byte	0x3
	.value	0x7c7
	.long	0x996
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"uid"
	.byte	0x3
	.value	0x7c8
	.long	0x2a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"size"
	.byte	0x3
	.value	0x7c9
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x20
	.string	"mode"
	.byte	0x3
	.value	0x7ca
	.long	0x71b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"external_flag"
	.byte	0x3
	.value	0x7cc
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"nonlocal_flag"
	.byte	0x3
	.value	0x7cd
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"regdecl_flag"
	.byte	0x3
	.value	0x7ce
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"inline_flag"
	.byte	0x3
	.value	0x7cf
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"bit_field_flag"
	.byte	0x3
	.value	0x7d0
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"virtual_flag"
	.byte	0x3
	.value	0x7d1
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"ignored_flag"
	.byte	0x3
	.value	0x7d2
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.long	.LASF17
	.byte	0x3
	.value	0x7d3
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"sbuf_flag"
	.byte	0x3
	.value	0x7d7
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"sdram_flag"
	.byte	0x3
	.value	0x7d8
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"v1buf_flag"
	.byte	0x3
	.value	0x7d9
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"v2buf_flag"
	.byte	0x3
	.value	0x7da
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"v4buf_flag"
	.byte	0x3
	.value	0x7db
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"in_system_header_flag"
	.byte	0x3
	.value	0x7df
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"common_flag"
	.byte	0x3
	.value	0x7e0
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"defer_output"
	.byte	0x3
	.value	0x7e1
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"transparent_union"
	.byte	0x3
	.value	0x7e2
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"static_ctor_flag"
	.byte	0x3
	.value	0x7e3
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"static_dtor_flag"
	.byte	0x3
	.value	0x7e4
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"artificial_flag"
	.byte	0x3
	.value	0x7e5
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"weak_flag"
	.byte	0x3
	.value	0x7e6
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"non_addr_const_p"
	.byte	0x3
	.value	0x7e8
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"no_instrument_function_entry_exit"
	.byte	0x3
	.value	0x7e9
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"comdat_flag"
	.byte	0x3
	.value	0x7ea
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"malloc_flag"
	.byte	0x3
	.value	0x7eb
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"no_limit_stack"
	.byte	0x3
	.value	0x7ec
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF6
	.byte	0x3
	.value	0x7ed
	.long	0x1329
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"pure_flag"
	.byte	0x3
	.value	0x7ee
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF21
	.byte	0x3
	.value	0x7f0
	.long	0x2a7
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"non_addressable"
	.byte	0x3
	.value	0x7f1
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF22
	.byte	0x3
	.value	0x7f2
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"uninlinable"
	.byte	0x3
	.value	0x7f3
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"thread_local_flag"
	.byte	0x3
	.value	0x7f4
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"inlined_function_flag"
	.byte	0x3
	.value	0x7f5
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"threadprivate_flag"
	.byte	0x3
	.value	0x7f7
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF7
	.byte	0x3
	.value	0x7fa
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF8
	.byte	0x3
	.value	0x7fb
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF9
	.byte	0x3
	.value	0x7fc
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF10
	.byte	0x3
	.value	0x7fd
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF11
	.byte	0x3
	.value	0x7fe
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF12
	.byte	0x3
	.value	0x7ff
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF13
	.byte	0x3
	.value	0x800
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF14
	.byte	0x3
	.value	0x801
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"syscall_linkage_flag"
	.byte	0x3
	.value	0x804
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"widen_retval_flag"
	.byte	0x3
	.value	0x805
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"emitted_by_gxx"
	.byte	0x3
	.value	0x808
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"u1"
	.byte	0x3
	.value	0x81b
	.long	0x3d41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1f
	.long	.LASF19
	.byte	0x3
	.value	0x81d
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1f
	.long	.LASF23
	.byte	0x3
	.value	0x81e
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1f
	.long	.LASF24
	.byte	0x3
	.value	0x81f
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"arguments"
	.byte	0x3
	.value	0x820
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1f
	.long	.LASF30
	.byte	0x3
	.value	0x821
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"initial"
	.byte	0x3
	.value	0x822
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"initial_2"
	.byte	0x3
	.value	0x824
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"alias_target"
	.byte	0x3
	.value	0x825
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.string	"thunk_delta"
	.byte	0x3
	.value	0x829
	.long	0x343
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1f
	.long	.LASF18
	.byte	0x3
	.value	0x82b
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.string	"assembler_name"
	.byte	0x3
	.value	0x82c
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"section_name"
	.byte	0x3
	.value	0x82d
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1f
	.long	.LASF20
	.byte	0x3
	.value	0x82e
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x82f
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x830
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xb
	.string	"u2"
	.byte	0x3
	.value	0x83c
	.long	0x3d76
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.string	"saved_tree"
	.byte	0x3
	.value	0x83f
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.string	"inlined_fns"
	.byte	0x3
	.value	0x843
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.string	"vindex"
	.byte	0x3
	.value	0x845
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xb
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x846
	.long	0x343
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x1f
	.long	.LASF25
	.byte	0x3
	.value	0x848
	.long	0x4f16
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x20
	.string	"symtab_idx"
	.byte	0x3
	.value	0x84b
	.long	0x2a7
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x20
	.string	"label_defined"
	.byte	0x3
	.value	0x84c
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.string	"sgi_u1"
	.byte	0x3
	.value	0x852
	.long	0x4765
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x858
	.long	0x12db
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.string	"sl_model_name"
	.byte	0x3
	.value	0x85c
	.long	0xd8
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0xa
	.long	0x4f16
	.string	"lang_decl"
	.byte	0x34
	.byte	0x3
	.value	0x848
	.uleb128 0xb
	.string	"decl_flags"
	.byte	0xa
	.value	0x73a
	.long	0x6863
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"u"
	.byte	0xa
	.value	0x763
	.long	0x6c82
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4edf
	.uleb128 0x19
	.long	0x519a
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xe
	.byte	0x1d
	.uleb128 0x1a
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x1a
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x1a
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x1a
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x1a
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x1a
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x1a
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x1a
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x1a
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x1a
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x1a
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x1a
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x1a
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x1a
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x1a
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x1a
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x1a
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x1a
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x1a
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x1a
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x1a
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x1a
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x1a
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x1a
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x1a
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x1a
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x1a
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x1a
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x1a
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x1a
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x1a
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x1a
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x1a
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x1a
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x1a
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0xa
	.long	0x51e9
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x864
	.uleb128 0x1f
	.long	.LASF0
	.byte	0x3
	.value	0x865
	.long	0x3023
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"choice"
	.byte	0x3
	.value	0x866
	.long	0x4f1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x867
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x9
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x3
	.byte	0x4
	.long	0xd8
	.uleb128 0x15
	.long	0x525e
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x8
	.byte	0x17
	.uleb128 0x16
	.string	"modified"
	.byte	0x8
	.byte	0x18
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"promoted_mode"
	.byte	0x8
	.byte	0x19
	.long	0x71b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"unsignedp"
	.byte	0x8
	.byte	0x1a
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"next"
	.byte	0x8
	.byte	0x1b
	.long	0x525e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x51f8
	.uleb128 0x11
	.long	0x52ad
	.long	.LASF31
	.byte	0x10
	.byte	0x8
	.byte	0x24
	.uleb128 0x16
	.string	"first"
	.byte	0x8
	.byte	0x26
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"last"
	.byte	0x8
	.byte	0x27
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF32
	.byte	0x8
	.byte	0x28
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"next"
	.byte	0x8
	.byte	0x29
	.long	0x52ad
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5264
	.uleb128 0x3
	.byte	0x4
	.long	0x358d
	.uleb128 0x15
	.long	0x5408
	.string	"emit_status"
	.byte	0x34
	.byte	0x8
	.byte	0x37
	.uleb128 0x16
	.string	"x_reg_rtx_no"
	.byte	0x8
	.byte	0x3a
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"x_first_label_num"
	.byte	0x8
	.byte	0x3d
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"x_first_insn"
	.byte	0x8
	.byte	0x44
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"x_last_insn"
	.byte	0x8
	.byte	0x45
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.long	.LASF32
	.byte	0x8
	.byte	0x4a
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF31
	.byte	0x8
	.byte	0x50
	.long	0x52ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.string	"x_cur_insn_uid"
	.byte	0x8
	.byte	0x54
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.string	"x_last_linenum"
	.byte	0x8
	.byte	0x58
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.string	"x_last_filename"
	.byte	0x8
	.byte	0x59
	.long	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.string	"regno_pointer_align_length"
	.byte	0x8
	.byte	0x5f
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x16
	.string	"regno_pointer_align"
	.byte	0x8
	.byte	0x65
	.long	0x648
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x16
	.string	"regno_decl"
	.byte	0x8
	.byte	0x69
	.long	0x51f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x16
	.string	"x_regno_reg_rtx"
	.byte	0x8
	.byte	0x70
	.long	0x5408
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9e
	.uleb128 0x15
	.long	0x54ee
	.string	"expr_status"
	.byte	0x1c
	.byte	0x8
	.byte	0x7d
	.uleb128 0x16
	.string	"x_pending_stack_adjust"
	.byte	0x8
	.byte	0x80
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"x_inhibit_defer_pop"
	.byte	0x8
	.byte	0x91
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"x_stack_pointer_delta"
	.byte	0x8
	.byte	0x97
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"x_saveregs_value"
	.byte	0x8
	.byte	0x9c
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"x_apply_args_value"
	.byte	0x8
	.byte	0x9f
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.string	"x_forced_labels"
	.byte	0x8
	.byte	0xa2
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.string	"x_pending_chain"
	.byte	0x8
	.byte	0xa5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x25
	.long	0x5558
	.long	.LASF29
	.byte	0x4
	.byte	0x8
	.value	0x1f1
	.uleb128 0x1a
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x1a
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x1a
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x4
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5558
	.uleb128 0x4
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x556a
	.uleb128 0x3
	.byte	0x4
	.long	0x540e
	.uleb128 0x3
	.byte	0x4
	.long	0x52b9
	.uleb128 0x4
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x558a
	.uleb128 0x4
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x55a0
	.uleb128 0x4
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x55bd
	.uleb128 0x4
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x55cf
	.uleb128 0xa
	.long	0x5822
	.string	"language_function"
	.byte	0x64
	.byte	0x8
	.value	0x184
	.uleb128 0x1f
	.long	.LASF33
	.byte	0xa
	.value	0x370
	.long	0x5f21
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"x_dtor_label"
	.byte	0xa
	.value	0x372
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"x_current_class_ptr"
	.byte	0xa
	.value	0x373
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"x_current_class_ref"
	.byte	0xa
	.value	0x374
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"x_eh_spec_block"
	.byte	0xa
	.value	0x375
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"x_in_charge_parm"
	.byte	0xa
	.value	0x376
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"x_vtt_parm"
	.byte	0xa
	.value	0x377
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"x_return_value"
	.byte	0xa
	.value	0x378
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"returns_value"
	.byte	0xa
	.value	0x37a
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"returns_null"
	.byte	0xa
	.value	0x37b
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"returns_abnormally"
	.byte	0xa
	.value	0x37c
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"in_function_try_handler"
	.byte	0xa
	.value	0x37d
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"in_base_initializer"
	.byte	0xa
	.value	0x37e
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"x_expanding_p"
	.byte	0xa
	.value	0x37f
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x20
	.string	"can_throw"
	.byte	0xa
	.value	0x382
	.long	0x51e9
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"x_named_label_uses"
	.byte	0xa
	.value	0x384
	.long	0x6006
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.string	"x_named_labels"
	.byte	0xa
	.value	0x385
	.long	0x601f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.string	"bindings"
	.byte	0xa
	.value	0x386
	.long	0x5fbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.string	"x_local_names"
	.byte	0xa
	.value	0x387
	.long	0x5e7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1f
	.long	.LASF27
	.byte	0xa
	.value	0x389
	.long	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"unparsed_inlines"
	.byte	0xa
	.value	0x38a
	.long	0x6035
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x55e8
	.uleb128 0x2
	.string	"hashval_t"
	.byte	0x11
	.byte	0x32
	.long	0x2a7
	.uleb128 0x2
	.string	"htab_hash"
	.byte	0x11
	.byte	0x37
	.long	0x584a
	.uleb128 0x3
	.byte	0x4
	.long	0x5850
	.uleb128 0x17
	.long	0x5860
	.byte	0x1
	.long	0x5828
	.uleb128 0x13
	.long	0x714
	.byte	0x0
	.uleb128 0x2
	.string	"htab_eq"
	.byte	0x11
	.byte	0x3e
	.long	0x6f9
	.uleb128 0x2
	.string	"htab_del"
	.byte	0x11
	.byte	0x42
	.long	0x654
	.uleb128 0x2
	.string	"htab_alloc"
	.byte	0x11
	.byte	0x4e
	.long	0x5891
	.uleb128 0x3
	.byte	0x4
	.long	0x5897
	.uleb128 0x17
	.long	0x58ac
	.byte	0x1
	.long	0x3aa
	.uleb128 0x13
	.long	0x2dd
	.uleb128 0x13
	.long	0x2dd
	.byte	0x0
	.uleb128 0x2
	.string	"htab_free"
	.byte	0x11
	.byte	0x51
	.long	0x654
	.uleb128 0x15
	.long	0x5990
	.string	"htab"
	.byte	0x2c
	.byte	0x11
	.byte	0x59
	.uleb128 0x16
	.string	"hash_f"
	.byte	0x11
	.byte	0x5b
	.long	0x5839
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"eq_f"
	.byte	0x11
	.byte	0x5e
	.long	0x5860
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"del_f"
	.byte	0x11
	.byte	0x61
	.long	0x586f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"entries"
	.byte	0x11
	.byte	0x64
	.long	0x64e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"size"
	.byte	0x11
	.byte	0x67
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.string	"n_elements"
	.byte	0x11
	.byte	0x6a
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.string	"n_deleted"
	.byte	0x11
	.byte	0x6d
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.string	"searches"
	.byte	0x11
	.byte	0x71
	.long	0x2a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.string	"collisions"
	.byte	0x11
	.byte	0x75
	.long	0x2a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.string	"alloc_f"
	.byte	0x11
	.byte	0x78
	.long	0x587f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x16
	.string	"free_f"
	.byte	0x11
	.byte	0x79
	.long	0x58ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x2
	.string	"htab_t"
	.byte	0x11
	.byte	0x7c
	.long	0x599e
	.uleb128 0x3
	.byte	0x4
	.long	0x58bd
	.uleb128 0x15
	.long	0x59da
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xc
	.byte	0x24
	.uleb128 0x16
	.string	"rtx"
	.byte	0xc
	.byte	0x32
	.long	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"age"
	.byte	0xc
	.byte	0x36
	.long	0x2a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x19
	.long	0x5b75
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xc
	.byte	0x3c
	.uleb128 0x1a
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x1a
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x1a
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x1a
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x1a
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x1a
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x1a
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x1a
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x1a
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x1a
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x1a
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x1a
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x1a
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x1a
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x1a
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x1a
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x1a
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x1a
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x1a
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x1a
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x1a
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x5
	.long	0x5c71
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xc
	.byte	0x55
	.uleb128 0x26
	.string	"c"
	.byte	0xc
	.byte	0x56
	.long	0x6c3
	.uleb128 0x26
	.string	"uc"
	.byte	0xc
	.byte	0x58
	.long	0x5c71
	.uleb128 0x26
	.string	"s"
	.byte	0xc
	.byte	0x5a
	.long	0x5c81
	.uleb128 0x26
	.string	"us"
	.byte	0xc
	.byte	0x5c
	.long	0x5c91
	.uleb128 0x26
	.string	"i"
	.byte	0xc
	.byte	0x5e
	.long	0x5ca1
	.uleb128 0x26
	.string	"u"
	.byte	0xc
	.byte	0x60
	.long	0x5cb1
	.uleb128 0x26
	.string	"l"
	.byte	0xc
	.byte	0x62
	.long	0x5cc1
	.uleb128 0x26
	.string	"ul"
	.byte	0xc
	.byte	0x64
	.long	0x5cd1
	.uleb128 0x26
	.string	"hint"
	.byte	0xc
	.byte	0x66
	.long	0x5ce1
	.uleb128 0x26
	.string	"uhint"
	.byte	0xc
	.byte	0x68
	.long	0x5cf1
	.uleb128 0x26
	.string	"generic"
	.byte	0xc
	.byte	0x6a
	.long	0x5d01
	.uleb128 0x26
	.string	"cptr"
	.byte	0xc
	.byte	0x6c
	.long	0x5d11
	.uleb128 0x26
	.string	"rtx"
	.byte	0xc
	.byte	0x6e
	.long	0x5d21
	.uleb128 0x26
	.string	"rtvec"
	.byte	0xc
	.byte	0x70
	.long	0x5d31
	.uleb128 0x26
	.string	"tree"
	.byte	0xc
	.byte	0x72
	.long	0x5d41
	.uleb128 0x26
	.string	"bitmap"
	.byte	0xc
	.byte	0x74
	.long	0x5d51
	.uleb128 0x26
	.string	"reg"
	.byte	0xc
	.byte	0x76
	.long	0x5d79
	.uleb128 0x26
	.string	"const_equiv"
	.byte	0xc
	.byte	0x78
	.long	0x5d9e
	.uleb128 0x26
	.string	"bb"
	.byte	0xc
	.byte	0x7a
	.long	0x5dae
	.uleb128 0x26
	.string	"te"
	.byte	0xc
	.byte	0x7c
	.long	0x5dd6
	.byte	0x0
	.uleb128 0xd
	.long	0x5c81
	.long	0x2eb
	.uleb128 0xe
	.long	0x2be
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5c91
	.long	0x336
	.uleb128 0xe
	.long	0x2be
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5ca1
	.long	0x2fc
	.uleb128 0xe
	.long	0x2be
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5cb1
	.long	0x1ce
	.uleb128 0xe
	.long	0x2be
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5cc1
	.long	0x2a7
	.uleb128 0xe
	.long	0x2be
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5cd1
	.long	0x38d
	.uleb128 0xe
	.long	0x2be
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5ce1
	.long	0x312
	.uleb128 0xe
	.long	0x2be
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5cf1
	.long	0x343
	.uleb128 0xe
	.long	0x2be
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5d01
	.long	0x354
	.uleb128 0xe
	.long	0x2be
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5d11
	.long	0x3aa
	.uleb128 0xe
	.long	0x2be
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5d21
	.long	0x3ac
	.uleb128 0xe
	.long	0x2be
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5d31
	.long	0xa9
	.uleb128 0xe
	.long	0x2be
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5d41
	.long	0xc6
	.uleb128 0xe
	.long	0x2be
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5d51
	.long	0xe4
	.uleb128 0xe
	.long	0x2be
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5d61
	.long	0x5d73
	.uleb128 0xe
	.long	0x2be
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5d61
	.uleb128 0xd
	.long	0x5d89
	.long	0x5d98
	.uleb128 0xe
	.long	0x2be
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5d89
	.uleb128 0xd
	.long	0x5dae
	.long	0x59a4
	.uleb128 0xe
	.long	0x2be
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5dbe
	.long	0x5dd0
	.uleb128 0xe
	.long	0x2be
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5dbe
	.uleb128 0xd
	.long	0x5de6
	.long	0x5df1
	.uleb128 0xe
	.long	0x2be
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5de6
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xc
	.byte	0x7e
	.long	0x5b75
	.uleb128 0x15
	.long	0x5e7d
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xc
	.byte	0x81
	.uleb128 0x16
	.string	"num_elements"
	.byte	0xc
	.byte	0x82
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"elements_used"
	.byte	0xc
	.byte	0x83
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF3
	.byte	0xc
	.byte	0x85
	.long	0x59da
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF23
	.byte	0xc
	.byte	0x86
	.long	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"data"
	.byte	0xc
	.byte	0x87
	.long	0x5df7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xc
	.byte	0x8a
	.long	0x5e90
	.uleb128 0x3
	.byte	0x4
	.long	0x5e0a
	.uleb128 0xa
	.long	0x5f21
	.string	"stmt_tree_s"
	.byte	0x10
	.byte	0xb
	.value	0x101
	.uleb128 0xb
	.string	"x_last_stmt"
	.byte	0xb
	.value	0x103
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"x_last_expr_type"
	.byte	0xb
	.value	0x106
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"x_last_expr_filename"
	.byte	0xb
	.value	0x108
	.long	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"stmts_are_full_exprs_p"
	.byte	0xb
	.value	0x117
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xa
	.long	0x5f74
	.string	"c_language_function"
	.byte	0x14
	.byte	0xb
	.value	0x11f
	.uleb128 0xb
	.string	"x_stmt_tree"
	.byte	0xb
	.value	0x122
	.long	0x5e96
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"x_scope_stmt_stack"
	.byte	0xb
	.value	0x124
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x5fa8
	.string	"c_lang_decl"
	.byte	0x4
	.byte	0xb
	.value	0x169
	.uleb128 0x20
	.string	"declared_inline"
	.byte	0xb
	.value	0x16a
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.string	"cp_binding_level"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5fa8
	.uleb128 0xf
	.string	"binding_table"
	.byte	0xa
	.value	0x103
	.long	0x5fd7
	.uleb128 0x3
	.byte	0x4
	.long	0x5fdd
	.uleb128 0x4
	.string	"binding_table_s"
	.byte	0x1
	.uleb128 0x4
	.string	"named_label_use_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5fef
	.uleb128 0x4
	.string	"named_label_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x600c
	.uleb128 0x4
	.string	"unparsed_text"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6025
	.uleb128 0x27
	.long	0x6075
	.string	"languages"
	.byte	0x4
	.byte	0xa
	.value	0x3f1
	.uleb128 0x1a
	.string	"lang_c"
	.sleb128 0
	.uleb128 0x1a
	.string	"lang_cplusplus"
	.sleb128 1
	.uleb128 0x1a
	.string	"lang_java"
	.sleb128 2
	.byte	0x0
	.uleb128 0xa
	.long	0x6194
	.string	"lang_type_header"
	.byte	0x4
	.byte	0xa
	.value	0x464
	.uleb128 0x20
	.string	"is_lang_type_class"
	.byte	0xa
	.value	0x465
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"has_type_conversion"
	.byte	0xa
	.value	0x467
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"has_init_ref"
	.byte	0xa
	.value	0x468
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"has_default_ctor"
	.byte	0xa
	.value	0x469
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"uses_multiple_inheritance"
	.byte	0xa
	.value	0x46a
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"const_needs_init"
	.byte	0xa
	.value	0x46b
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"ref_needs_init"
	.byte	0xa
	.value	0x46c
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"has_const_assign_ref"
	.byte	0xa
	.value	0x46d
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x6782
	.string	"lang_type_class"
	.byte	0x4c
	.byte	0xa
	.value	0x47e
	.uleb128 0xb
	.string	"h"
	.byte	0xa
	.value	0x47f
	.long	0x6075
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"align"
	.byte	0xa
	.value	0x481
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"has_mutable"
	.byte	0xa
	.value	0x483
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"com_interface"
	.byte	0xa
	.value	0x484
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"non_pod_class"
	.byte	0xa
	.value	0x485
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"nearly_empty_p"
	.byte	0xa
	.value	0x486
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x21
	.long	.LASF22
	.byte	0xa
	.value	0x487
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"has_assign_ref"
	.byte	0xa
	.value	0x488
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"has_new"
	.byte	0xa
	.value	0x489
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"has_array_new"
	.byte	0xa
	.value	0x48a
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"gets_delete"
	.byte	0xa
	.value	0x48c
	.long	0x2a7
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"has_call_overloaded"
	.byte	0xa
	.value	0x48d
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"has_array_ref_overloaded"
	.byte	0xa
	.value	0x48e
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"has_arrow_overloaded"
	.byte	0xa
	.value	0x48f
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"interface_only"
	.byte	0xa
	.value	0x490
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"interface_unknown"
	.byte	0xa
	.value	0x491
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"marks"
	.byte	0xa
	.value	0x493
	.long	0x2a7
	.byte	0x4
	.byte	0x6
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"vec_new_uses_cookie"
	.byte	0xa
	.value	0x494
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"declared_class"
	.byte	0xa
	.value	0x495
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"being_defined"
	.byte	0xa
	.value	0x497
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"redefined"
	.byte	0xa
	.value	0x498
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"debug_requested"
	.byte	0xa
	.value	0x499
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x21
	.long	.LASF34
	.byte	0xa
	.value	0x49a
	.long	0x2a7
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"got_semicolon"
	.byte	0xa
	.value	0x49b
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"ptrmemfunc_flag"
	.byte	0xa
	.value	0x49c
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"was_anonymous"
	.byte	0xa
	.value	0x49d
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"has_real_assign_ref"
	.byte	0xa
	.value	0x49f
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"has_const_init_ref"
	.byte	0xa
	.value	0x4a0
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"has_complex_init_ref"
	.byte	0xa
	.value	0x4a1
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"has_complex_assign_ref"
	.byte	0xa
	.value	0x4a2
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"has_abstract_assign_ref"
	.byte	0xa
	.value	0x4a3
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"non_aggregate"
	.byte	0xa
	.value	0x4a4
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"is_partial_instantiation"
	.byte	0xa
	.value	0x4a5
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"java_interface"
	.byte	0xa
	.value	0x4a6
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"anon_aggr"
	.byte	0xa
	.value	0x4a8
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"non_zero_init"
	.byte	0xa
	.value	0x4a9
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"empty_p"
	.byte	0xa
	.value	0x4aa
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"contains_empty_class_p"
	.byte	0xa
	.value	0x4ab
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"has_implicit_copy_constructor"
	.byte	0xa
	.value	0x4b7
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.string	"dummy"
	.byte	0xa
	.value	0x4b8
	.long	0x2a7
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"primary_base"
	.byte	0xa
	.value	0x4bd
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"vfields"
	.byte	0xa
	.value	0x4be
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"vcall_indices"
	.byte	0xa
	.value	0x4bf
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"vtables"
	.byte	0xa
	.value	0x4c0
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"typeinfo_var"
	.byte	0xa
	.value	0x4c1
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"vbases"
	.byte	0xa
	.value	0x4c2
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"nested_udts"
	.byte	0xa
	.value	0x4c3
	.long	0x5fc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"as_base"
	.byte	0xa
	.value	0x4c4
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"pure_virtuals"
	.byte	0xa
	.value	0x4c5
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"friend_classes"
	.byte	0xa
	.value	0x4c6
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"methods"
	.byte	0xa
	.value	0x4c7
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"key_method"
	.byte	0xa
	.value	0x4c8
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"decl_list"
	.byte	0xa
	.value	0x4c9
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1f
	.long	.LASF35
	.byte	0xa
	.value	0x4ca
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x1f
	.long	.LASF36
	.byte	0xa
	.value	0x4cb
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"copy_constructor"
	.byte	0xa
	.value	0x4cf
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0xa
	.long	0x67bc
	.string	"lang_type_ptrmem"
	.byte	0x8
	.byte	0xa
	.value	0x4d4
	.uleb128 0xb
	.string	"h"
	.byte	0xa
	.value	0x4d5
	.long	0x6075
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"record"
	.byte	0xa
	.value	0x4d6
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x22
	.long	0x67f5
	.string	"lang_type_u"
	.byte	0x4c
	.byte	0xa
	.value	0x4dc
	.uleb128 0x7
	.string	"h"
	.byte	0xa
	.value	0x4dd
	.long	0x6075
	.uleb128 0x7
	.string	"c"
	.byte	0xa
	.value	0x4de
	.long	0x6194
	.uleb128 0x7
	.string	"ptrmem"
	.byte	0xa
	.value	0x4df
	.long	0x6782
	.byte	0x0
	.uleb128 0x22
	.long	0x6825
	.string	"lang_decl_u"
	.byte	0x4
	.byte	0xa
	.value	0x722
	.uleb128 0x6
	.long	.LASF35
	.byte	0xa
	.value	0x725
	.long	0xd8
	.uleb128 0x7
	.string	"level"
	.byte	0xa
	.value	0x728
	.long	0x5fbb
	.byte	0x0
	.uleb128 0x22
	.long	0x6863
	.string	"lang_decl_u2"
	.byte	0x4
	.byte	0xa
	.value	0x72b
	.uleb128 0x7
	.string	"access"
	.byte	0xa
	.value	0x72d
	.long	0xd8
	.uleb128 0x6
	.long	.LASF37
	.byte	0xa
	.value	0x730
	.long	0x1ce
	.uleb128 0x6
	.long	.LASF38
	.byte	0xa
	.value	0x734
	.long	0xd8
	.byte	0x0
	.uleb128 0xa
	.long	0x6b3e
	.string	"lang_decl_flags"
	.byte	0x10
	.byte	0xa
	.value	0x703
	.uleb128 0x1f
	.long	.LASF33
	.byte	0xa
	.value	0x704
	.long	0x5f74
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x21
	.long	.LASF28
	.byte	0xa
	.value	0x706
	.long	0x603b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"operator_attr"
	.byte	0xa
	.value	0x708
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"constructor_attr"
	.byte	0xa
	.value	0x709
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"destructor_attr"
	.byte	0xa
	.value	0x70a
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"friend_attr"
	.byte	0xa
	.value	0x70b
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"static_function"
	.byte	0xa
	.value	0x70c
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"pure_virtual"
	.byte	0xa
	.value	0x70d
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"has_in_charge_parm_p"
	.byte	0xa
	.value	0x70e
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"has_vtt_parm_p"
	.byte	0xa
	.value	0x70f
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"deferred"
	.byte	0xa
	.value	0x711
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x21
	.long	.LASF34
	.byte	0xa
	.value	0x712
	.long	0x2a7
	.byte	0x4
	.byte	0x2
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"nonconverting"
	.byte	0xa
	.value	0x713
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"not_really_extern"
	.byte	0xa
	.value	0x714
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"needs_final_overrider"
	.byte	0xa
	.value	0x715
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"initialized_in_class"
	.byte	0xa
	.value	0x716
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"assignment_operator_p"
	.byte	0xa
	.value	0x717
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"global_ctor_p"
	.byte	0xa
	.value	0x719
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"global_dtor_p"
	.byte	0xa
	.value	0x71a
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"anticipated_p"
	.byte	0xa
	.value	0x71b
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"template_conv_p"
	.byte	0xa
	.value	0x71c
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"u1sel"
	.byte	0xa
	.value	0x71d
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"u2sel"
	.byte	0xa
	.value	0x71e
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"can_be_full"
	.byte	0xa
	.value	0x71f
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"unused"
	.byte	0xa
	.value	0x720
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"u"
	.byte	0xa
	.value	0x729
	.long	0x67f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"u2"
	.byte	0xa
	.value	0x735
	.long	0x6825
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x22
	.long	0x6ba7
	.string	"lang_decl_u3"
	.byte	0x4
	.byte	0xa
	.value	0x75c
	.uleb128 0x7
	.string	"sorted_fields"
	.byte	0xa
	.value	0x75d
	.long	0xd8
	.uleb128 0x7
	.string	"pending_inline_info"
	.byte	0xa
	.value	0x75e
	.long	0x6035
	.uleb128 0x7
	.string	"saved_language_function"
	.byte	0xa
	.value	0x760
	.long	0x5822
	.byte	0x0
	.uleb128 0xa
	.long	0x6c82
	.string	"full_lang_decl"
	.byte	0x24
	.byte	0xa
	.value	0x73f
	.uleb128 0x1f
	.long	.LASF36
	.byte	0xa
	.value	0x740
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF24
	.byte	0xa
	.value	0x745
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"cloned_function"
	.byte	0xa
	.value	0x748
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"delta"
	.byte	0xa
	.value	0x74c
	.long	0x343
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"named_return_object"
	.byte	0xa
	.value	0x751
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"operator_code"
	.byte	0xa
	.value	0x756
	.long	0x9a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x20
	.string	"u3sel"
	.byte	0xa
	.value	0x758
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x20
	.string	"pending_inline_p"
	.byte	0xa
	.value	0x759
	.long	0x2a7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"u"
	.byte	0xa
	.value	0x761
	.long	0x6b3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x22
	.long	0x6ca3
	.string	"lang_decl_u4"
	.byte	0x24
	.byte	0xa
	.value	0x73d
	.uleb128 0x7
	.string	"f"
	.byte	0xa
	.value	0x762
	.long	0x6ba7
	.byte	0x0
	.uleb128 0x28
	.long	0x6cef
	.long	.LASF39
	.byte	0x10
	.byte	0xa
	.value	0xe26
	.uleb128 0x1f
	.long	.LASF1
	.byte	0xa
	.value	0xe28
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF23
	.byte	0xa
	.value	0xe2a
	.long	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.long	.LASF40
	.byte	0xa
	.value	0xe2c
	.long	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"arity"
	.byte	0xa
	.value	0xe2e
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x29
	.long	.LASF39
	.byte	0xa
	.value	0xe2f
	.long	0x6ca3
	.uleb128 0x19
	.long	0x6d41
	.string	"real_value_class"
	.byte	0x4
	.byte	0x4
	.byte	0x22
	.uleb128 0x1a
	.string	"rvc_zero"
	.sleb128 0
	.uleb128 0x1a
	.string	"rvc_normal"
	.sleb128 1
	.uleb128 0x1a
	.string	"rvc_inf"
	.sleb128 2
	.uleb128 0x1a
	.string	"rvc_nan"
	.sleb128 3
	.byte	0x0
	.uleb128 0xd
	.long	0x6d51
	.long	0x312
	.uleb128 0xe
	.long	0x2be
	.byte	0x4
	.byte	0x0
	.uleb128 0x15
	.long	0x6da2
	.string	"ggc_root_tab"
	.byte	0x10
	.byte	0x15
	.byte	0x32
	.uleb128 0x1c
	.long	.LASF33
	.byte	0x15
	.byte	0x33
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"nelt"
	.byte	0x15
	.byte	0x34
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"stride"
	.byte	0x15
	.byte	0x35
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"cb"
	.byte	0x15
	.byte	0x36
	.long	0x654
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x15
	.long	0x6e0b
	.string	"globals"
	.byte	0x38
	.byte	0x1
	.byte	0x61
	.uleb128 0x16
	.string	"name_obstack"
	.byte	0x1
	.byte	0x63
	.long	0x358d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"substitutions"
	.byte	0x1
	.byte	0x67
	.long	0x5e7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x1c
	.long	.LASF41
	.byte	0x1
	.byte	0x6a
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x16
	.string	"need_abi_warning"
	.byte	0x1
	.byte	0x6e
	.long	0x51e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x2a
	.long	0x6e9e
	.byte	0x4
	.byte	0x1
	.byte	0x74
	.uleb128 0x1a
	.string	"SUBID_ALLOCATOR"
	.sleb128 0
	.uleb128 0x1a
	.string	"SUBID_BASIC_STRING"
	.sleb128 1
	.uleb128 0x1a
	.string	"SUBID_CHAR_TRAITS"
	.sleb128 2
	.uleb128 0x1a
	.string	"SUBID_BASIC_ISTREAM"
	.sleb128 3
	.uleb128 0x1a
	.string	"SUBID_BASIC_OSTREAM"
	.sleb128 4
	.uleb128 0x1a
	.string	"SUBID_BASIC_IOSTREAM"
	.sleb128 5
	.uleb128 0x1a
	.string	"SUBID_MAX"
	.sleb128 6
	.byte	0x0
	.uleb128 0x2
	.string	"substitution_identifier_index_t"
	.byte	0x1
	.byte	0x7d
	.long	0x6e0b
	.uleb128 0x2b
	.long	0x6f27
	.string	"decl_is_template_id"
	.byte	0x1
	.byte	0xfc
	.byte	0x1
	.long	0x1ce
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2c
	.long	.LASF2
	.byte	0x1
	.byte	0xfa
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF35
	.byte	0x1
	.byte	0xfb
	.long	0x51f2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2e
	.long	.LASF3
	.byte	0x1
	.value	0x101
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x6f8e
	.string	"dump_substitution_candidates"
	.byte	0x1
	.value	0x124
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x125
	.long	0x2a7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x30
	.string	"el"
	.byte	0x1
	.value	0x12a
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x1
	.value	0x12b
	.long	0x1bb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x6fd1
	.string	"add_substitution"
	.byte	0x1
	.value	0x15a
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST2
	.uleb128 0x31
	.long	.LASF42
	.byte	0x1
	.value	0x159
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"c"
	.byte	0x1
	.value	0x15b
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x32
	.long	0x7018
	.string	"canonicalize_for_substitution"
	.byte	0x1
	.value	0x14a
	.byte	0x1
	.long	0xd8
	.long	.LFB17
	.long	.LFE17
	.long	.LLST3
	.uleb128 0x31
	.long	.LASF42
	.byte	0x1
	.value	0x149
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x32
	.long	0x7239
	.string	"find_substitution"
	.byte	0x1
	.value	0x1e2
	.byte	0x1
	.long	0x1ce
	.long	.LFB21
	.long	.LFE21
	.long	.LLST4
	.uleb128 0x31
	.long	.LASF42
	.byte	0x1
	.value	0x1e1
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x1e3
	.long	0x1ce
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x30
	.string	"size"
	.byte	0x1
	.value	0x1e4
	.long	0x1ce
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.long	.LASF2
	.byte	0x1
	.value	0x1e5
	.long	0xd8
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2e
	.long	.LASF3
	.byte	0x1
	.value	0x1e6
	.long	0xd8
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x33
	.long	0x70bf
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x1fa
	.long	0x52b3
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x1fa
	.long	0x1ce
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.uleb128 0x33
	.long	0x7108
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x30
	.string	"args"
	.byte	0x1
	.value	0x20b
	.long	0xd8
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x213
	.long	0x52b3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x213
	.long	0x1ce
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x7136
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x21b
	.long	0x52b3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x21b
	.long	0x1ce
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x33
	.long	0x71ed
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x30
	.string	"args"
	.byte	0x1
	.value	0x229
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x1
	.value	0x230
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.long	0x7197
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x233
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x233
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x33
	.long	0x71c3
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x239
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x239
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x23f
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x23f
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x7219
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x248
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x248
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x30
	.string	"candidate"
	.byte	0x1
	.value	0x250
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x72a5
	.string	"is_std_substitution"
	.byte	0x1
	.value	0x188
	.byte	0x1
	.long	0x1ce
	.long	.LFB19
	.long	.LFE19
	.long	.LLST5
	.uleb128 0x31
	.long	.LASF42
	.byte	0x1
	.value	0x186
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"index"
	.byte	0x1
	.value	0x187
	.long	0x6e9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF3
	.byte	0x1
	.value	0x189
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.long	.LASF2
	.byte	0x1
	.value	0x18a
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x32
	.long	0x7308
	.string	"is_std_substitution_char"
	.byte	0x1
	.value	0x1aa
	.byte	0x1
	.long	0x1ce
	.long	.LFB20
	.long	.LFE20
	.long	.LLST6
	.uleb128 0x31
	.long	.LASF42
	.byte	0x1
	.value	0x1a8
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"index"
	.byte	0x1
	.value	0x1a9
	.long	0x6e9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"args"
	.byte	0x1
	.value	0x1ab
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x7359
	.string	"write_encoding"
	.byte	0x1
	.value	0x281
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST7
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x280
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x30
	.string	"fn_type"
	.byte	0x1
	.value	0x292
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x73ec
	.string	"write_name"
	.byte	0x1
	.value	0x2b1
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST8
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x2af
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"ignore_local_scope"
	.byte	0x1
	.value	0x2b0
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF24
	.byte	0x1
	.value	0x2b2
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	0x73d2
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2e
	.long	.LASF35
	.byte	0x1
	.value	0x2ca
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2e
	.long	.LASF44
	.byte	0x1
	.value	0x2e3
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x7470
	.string	"write_unscoped_name"
	.byte	0x1
	.value	0x304
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST9
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x303
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF24
	.byte	0x1
	.value	0x305
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	0x745f
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x30c
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x30c
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x35
	.long	.LASF45
	.long	0x9587
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14349
	.byte	0x0
	.uleb128 0x2f
	.long	0x74b2
	.string	"write_unscoped_template_name"
	.byte	0x1
	.value	0x31f
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST10
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x31e
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.long	0x7568
	.string	"write_nested_name"
	.byte	0x1
	.value	0x332
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST11
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x331
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF35
	.byte	0x1
	.value	0x333
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	0x7514
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x337
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x33
	.long	0x7531
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x33e
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x33
	.long	0x754e
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x340
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x350
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x75b8
	.string	"write_prefix"
	.byte	0x1
	.value	0x35c
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST12
	.uleb128 0x31
	.long	.LASF42
	.byte	0x1
	.value	0x35b
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF2
	.byte	0x1
	.value	0x35d
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.long	.LASF35
	.byte	0x1
	.value	0x35f
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2f
	.long	0x7666
	.string	"write_template_prefix"
	.byte	0x1
	.value	0x39e
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST13
	.uleb128 0x31
	.long	.LASF42
	.byte	0x1
	.value	0x39d
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF2
	.byte	0x1
	.value	0x39f
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF3
	.byte	0x1
	.value	0x3a0
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF24
	.byte	0x1
	.value	0x3a1
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF35
	.byte	0x1
	.value	0x3a2
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF46
	.byte	0x1
	.value	0x3a3
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.string	"substitution"
	.byte	0x1
	.value	0x3a4
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x35
	.long	.LASF45
	.long	0x9582
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14563
	.byte	0x0
	.uleb128 0x2f
	.long	0x771d
	.string	"write_unqualified_name"
	.byte	0x1
	.value	0x3ea
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST14
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x3e9
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	0x76db
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x2e
	.long	.LASF3
	.byte	0x1
	.value	0x3f5
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x30
	.string	"fn_type"
	.byte	0x1
	.value	0x3f8
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x30
	.string	"oni"
	.byte	0x1
	.value	0x401
	.long	0x771d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x407
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x407
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6cef
	.uleb128 0x2f
	.long	0x778f
	.string	"write_conversion_operator_name"
	.byte	0x1
	.value	0x411
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST15
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0x410
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x412
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x412
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x77c6
	.string	"write_source_name"
	.byte	0x1
	.value	0x41d
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST16
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x41c
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x32
	.long	0x787c
	.string	"hwint_to_ascii"
	.byte	0x1
	.value	0x435
	.byte	0x1
	.long	0x1ce
	.long	.LFB33
	.long	.LFE33
	.long	.LLST17
	.uleb128 0x34
	.string	"number"
	.byte	0x1
	.value	0x431
	.long	0x354
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF33
	.byte	0x1
	.value	0x432
	.long	0x2a7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF47
	.byte	0x1
	.value	0x433
	.long	0x3ac
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"min_digits"
	.byte	0x1
	.value	0x434
	.long	0x2a7
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x30
	.string	"digits"
	.byte	0x1
	.value	0x437
	.long	0x2a7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	0x7861
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x30
	.string	"d"
	.byte	0x1
	.value	0x43b
	.long	0x354
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x30
	.string	"base_digits"
	.byte	0x1
	.value	0x436
	.long	0x956d
	.byte	0x5
	.byte	0x3
	.long	base_digits.14787
	.byte	0x0
	.uleb128 0x2f
	.long	0x7941
	.string	"write_number"
	.byte	0x1
	.value	0x452
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST18
	.uleb128 0x34
	.string	"number"
	.byte	0x1
	.value	0x44f
	.long	0x354
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x34
	.string	"unsigned_p"
	.byte	0x1
	.value	0x450
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF33
	.byte	0x1
	.value	0x451
	.long	0x2a7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2e
	.long	.LASF47
	.byte	0x1
	.value	0x453
	.long	0x7941
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x30
	.string	"count"
	.byte	0x1
	.value	0x454
	.long	0x2a7
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x33
	.long	0x7916
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x458
	.long	0x52b3
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x45c
	.long	0x52b3
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x45c
	.long	0x1ce
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x7951
	.long	0x1c6
	.uleb128 0xe
	.long	0x2be
	.byte	0x3f
	.byte	0x0
	.uleb128 0x2f
	.long	0x7a4a
	.string	"write_real_cst"
	.byte	0x1
	.value	0x4c1
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST19
	.uleb128 0x34
	.string	"value"
	.byte	0x1
	.value	0x4c0
	.long	0xd8
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.long	0x7a32
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x30
	.string	"target_real"
	.byte	0x1
	.value	0x4c4
	.long	0x7a4a
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.long	.LASF47
	.byte	0x1
	.value	0x4c5
	.long	0x7a5a
	.byte	0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x4c6
	.long	0x1ce
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.string	"limit"
	.byte	0x1
	.value	0x4c6
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.string	"dir"
	.byte	0x1
	.value	0x4c6
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.long	.LASF3
	.byte	0x1
	.value	0x4c8
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"words"
	.byte	0x1
	.value	0x4c9
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x4da
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x4da
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x4e3
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x7a5a
	.long	0x38d
	.uleb128 0xe
	.long	0x2be
	.byte	0x3
	.byte	0x0
	.uleb128 0xd
	.long	0x7a6a
	.long	0x1c6
	.uleb128 0xe
	.long	0x2be
	.byte	0x8
	.byte	0x0
	.uleb128 0x2f
	.long	0x7ac8
	.string	"write_identifier"
	.byte	0x1
	.value	0x4f3
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST20
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x4f2
	.long	0x1bb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x4f5
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x4f5
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x7b75
	.string	"write_special_name_constructor"
	.byte	0x1
	.value	0x508
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST21
	.uleb128 0x34
	.string	"ctor"
	.byte	0x1
	.value	0x507
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	0x7b38
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x50e
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x50e
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x33
	.long	0x7b64
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x510
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x510
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x35
	.long	.LASF45
	.long	0x9558
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15018
	.byte	0x0
	.uleb128 0x2f
	.long	0x7c4d
	.string	"write_special_name_destructor"
	.byte	0x1
	.value	0x523
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST22
	.uleb128 0x34
	.string	"dtor"
	.byte	0x1
	.value	0x522
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	0x7be4
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x525
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x525
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x33
	.long	0x7c10
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x52b
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x52b
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x33
	.long	0x7c3c
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x52d
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x52d
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x35
	.long	.LASF45
	.long	0x9543
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15085
	.byte	0x0
	.uleb128 0x32
	.long	0x7cb3
	.string	"discriminator_for_local_entity"
	.byte	0x1
	.value	0x539
	.byte	0x1
	.long	0x1ce
	.long	.LFB40
	.long	.LFE40
	.long	.LLST23
	.uleb128 0x31
	.long	.LASF41
	.byte	0x1
	.value	0x538
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF3
	.byte	0x1
	.value	0x53a
	.long	0x51f2
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.long	.LASF37
	.byte	0x1
	.value	0x53b
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x32
	.long	0x7d0f
	.string	"discriminator_for_string_literal"
	.byte	0x1
	.value	0x557
	.byte	0x1
	.long	0x1ce
	.long	.LFB41
	.long	.LFE41
	.long	.LLST24
	.uleb128 0x31
	.long	.LASF26
	.byte	0x1
	.value	0x555
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"string"
	.byte	0x1
	.value	0x556
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2f
	.long	0x7d61
	.string	"write_discriminator"
	.byte	0x1
	.value	0x565
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST25
	.uleb128 0x31
	.long	.LASF37
	.byte	0x1
	.value	0x564
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x569
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x7e08
	.string	"write_local_name"
	.byte	0x1
	.value	0x57c
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST26
	.uleb128 0x31
	.long	.LASF26
	.byte	0x1
	.value	0x579
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF44
	.byte	0x1
	.value	0x57a
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF41
	.byte	0x1
	.value	0x57b
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	0x7dd1
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x57f
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x33
	.long	0x7dee
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x581
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x584
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x7ee6
	.string	"write_type"
	.byte	0x1
	.value	0x5a7
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST27
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0x5a6
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"is_builtin_type"
	.byte	0x1
	.value	0x5aa
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	0x7e6f
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x5d2
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x33
	.long	0x7e8c
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x5f4
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x33
	.long	0x7ea9
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x5fa
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x33
	.long	0x7ed5
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x612
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x612
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x35
	.long	.LASF45
	.long	0x953e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15291
	.byte	0x0
	.uleb128 0x32
	.long	0x7f99
	.string	"write_CV_qualifiers_for_type"
	.byte	0x1
	.value	0x628
	.byte	0x1
	.long	0x1ce
	.long	.LFB45
	.long	.LFE45
	.long	.LLST28
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0x627
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"num_qualifiers"
	.byte	0x1
	.value	0x629
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	0x7f62
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x637
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x33
	.long	0x7f7f
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x63c
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x641
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x8108
	.string	"write_builtin_type"
	.byte	0x1
	.value	0x663
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST29
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0x662
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"iagain"
	.byte	0x1
	.value	0x696
	.long	.L654
	.uleb128 0x33
	.long	0x7ffc
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x667
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x33
	.long	0x8019
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x66b
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x33
	.long	0x8036
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x676
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x33
	.long	0x80a0
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x30
	.string	"itk"
	.byte	0x1
	.value	0x67b
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	0x806f
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x683
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x30
	.string	"t"
	.byte	0x1
	.value	0x689
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x68e
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x80bd
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x69f
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x33
	.long	0x80da
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x6a2
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	0x80f7
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x6a4
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	.LASF45
	.long	0x9529
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15490
	.byte	0x0
	.uleb128 0x2f
	.long	0x819a
	.string	"write_function_type"
	.byte	0x1
	.value	0x6b7
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST30
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0x6b6
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	0x8163
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x30
	.string	"this_type"
	.byte	0x1
	.value	0x6c1
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x33
	.long	0x8180
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x6c5
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x6d4
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x8208
	.string	"write_bare_function_type"
	.byte	0x1
	.value	0x6e3
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST31
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0x6e0
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"include_return_type_p"
	.byte	0x1
	.value	0x6e1
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x6e2
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2f
	.long	0x82fa
	.string	"write_method_parms"
	.byte	0x1
	.value	0x6fb
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST32
	.uleb128 0x34
	.string	"parm_types"
	.byte	0x1
	.value	0x6f9
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"method_p"
	.byte	0x1
	.value	0x6fa
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x6f8
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.string	"first_parm_type"
	.byte	0x1
	.value	0x6fc
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"parm_decl"
	.byte	0x1
	.value	0x6fd
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.string	"varargs_p"
	.byte	0x1
	.value	0x701
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	0x82cc
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x30
	.string	"parm"
	.byte	0x1
	.value	0x71a
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	0x82e9
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x72e
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	.LASF45
	.long	0x9524
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15659
	.byte	0x0
	.uleb128 0x2f
	.long	0x8335
	.string	"write_class_enum_type"
	.byte	0x1
	.value	0x736
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST33
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0x735
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.long	0x83e3
	.string	"write_template_args"
	.byte	0x1
	.value	0x742
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST34
	.uleb128 0x34
	.string	"args"
	.byte	0x1
	.value	0x741
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	0x838b
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x745
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x33
	.long	0x83b5
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x749
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF15
	.byte	0x1
	.value	0x74a
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	0x83d2
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x762
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	.LASF45
	.long	0x950f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15707
	.byte	0x0
	.uleb128 0x2f
	.long	0x85a3
	.string	"write_expression"
	.byte	0x1
	.value	0x772
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.long	.LLST35
	.uleb128 0x34
	.string	"expr"
	.byte	0x1
	.value	0x771
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"code"
	.byte	0x1
	.value	0x773
	.long	0x9a8
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.long	0x8448
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x79c
	.long	0x52b3
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x33
	.long	0x8466
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x79e
	.long	0x52b3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x33
	.long	0x8494
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x7a3
	.long	0x52b3
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x7a3
	.long	0x1ce
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x33
	.long	0x8563
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x30
	.string	"scope"
	.byte	0x1
	.value	0x7a8
	.long	0xd8
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.string	"member"
	.byte	0x1
	.value	0x7a9
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x30
	.string	"template_args"
	.byte	0x1
	.value	0x7b4
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.long	0x8513
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x7b6
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x7b6
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x7c8
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF40
	.byte	0x1
	.value	0x7c9
	.long	0x1bb
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x7e2
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x7e2
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x7ed
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LBB78
	.long	.LBE78
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x802
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x802
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x8603
	.string	"write_mangled_name"
	.byte	0x1
	.value	0x267
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST36
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x266
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x276
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x276
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x869e
	.string	"write_template_arg_literal"
	.byte	0x1
	.value	0x835
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST37
	.uleb128 0x34
	.string	"value"
	.byte	0x1
	.value	0x834
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF3
	.byte	0x1
	.value	0x836
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	0x8670
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x837
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	0x868d
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x84f
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	.LASF45
	.long	0x950a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16013
	.byte	0x0
	.uleb128 0x2f
	.long	0x8847
	.string	"write_integer_cst"
	.byte	0x1
	.value	0x466
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST38
	.uleb128 0x34
	.string	"cst"
	.byte	0x1
	.value	0x465
	.long	0xd8
	.byte	0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x30
	.string	"sign"
	.byte	0x1
	.value	0x467
	.long	0x1ce
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x33
	.long	0x8812
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x2e
	.long	.LASF47
	.byte	0x1
	.value	0x46d
	.long	0x8847
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x30
	.string	"chunk"
	.byte	0x1
	.value	0x46e
	.long	0x354
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x30
	.string	"chunk_digits"
	.byte	0x1
	.value	0x46f
	.long	0x2a7
	.byte	0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x30
	.string	"ptr"
	.byte	0x1
	.value	0x470
	.long	0x3ac
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x30
	.string	"count"
	.byte	0x1
	.value	0x471
	.long	0x2a7
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x30
	.string	"n"
	.byte	0x1
	.value	0x472
	.long	0xd8
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2e
	.long	.LASF33
	.byte	0x1
	.value	0x472
	.long	0xd8
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2e
	.long	.LASF3
	.byte	0x1
	.value	0x472
	.long	0xd8
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x30
	.string	"done"
	.byte	0x1
	.value	0x473
	.long	0x1ce
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x33
	.long	0x87ad
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x488
	.long	0x52b3
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.byte	0x0
	.uleb128 0x33
	.long	0x87e7
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x30
	.string	"d"
	.byte	0x1
	.value	0x48d
	.long	0xd8
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x30
	.string	"tmp"
	.byte	0x1
	.value	0x48e
	.long	0xd8
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x30
	.string	"c"
	.byte	0x1
	.value	0x48f
	.long	0x2a7
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB85
	.long	.LBE85
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x49a
	.long	0x52b3
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x49a
	.long	0x1ce
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x30
	.string	"low"
	.byte	0x1
	.value	0x49f
	.long	0x354
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2d
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x4a3
	.long	0x52b3
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x8857
	.long	0x1c6
	.uleb128 0xe
	.long	0x2be
	.byte	0x7f
	.byte	0x0
	.uleb128 0x2f
	.long	0x892c
	.string	"write_template_arg"
	.byte	0x1
	.value	0x85c
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x31
	.long	.LASF42
	.byte	0x1
	.value	0x85b
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"code"
	.byte	0x1
	.value	0x85d
	.long	0x9a8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	0x88bb
	.long	.LBB88
	.long	.LBE88
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x87c
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x33
	.long	0x88d8
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x87d
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x33
	.long	0x88f5
	.long	.LBB90
	.long	.LBE90
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x87f
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x33
	.long	0x8912
	.long	.LBB91
	.long	.LBE91
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x884
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB92
	.long	.LBE92
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x886
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x896d
	.string	"write_template_template_arg"
	.byte	0x1
	.value	0x890
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x88f
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.long	0x8a0c
	.string	"write_array_type"
	.byte	0x1
	.value	0x8a6
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0x8a5
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	0x89bf
	.long	.LBB93
	.long	.LBE93
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x8a7
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x33
	.long	0x89f2
	.long	.LBB94
	.long	.LBE94
	.uleb128 0x30
	.string	"index_type"
	.byte	0x1
	.value	0x8aa
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"max"
	.byte	0x1
	.value	0x8ab
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB95
	.long	.LBE95
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x8bb
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x8a67
	.string	"write_pointer_to_member_type"
	.byte	0x1
	.value	0x8c7
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0x8c6
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LBB96
	.long	.LBE96
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x8c8
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x8b2d
	.string	"write_template_param"
	.byte	0x1
	.value	0x8dd
	.byte	0x1
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x34
	.string	"parm"
	.byte	0x1
	.value	0x8dc
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"parm_index"
	.byte	0x1
	.value	0x8de
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"parm_level"
	.byte	0x1
	.value	0x8df
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.string	"parm_type"
	.byte	0x1
	.value	0x8e0
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	0x8aff
	.long	.LBB97
	.long	.LBE97
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x8f7
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	0x8b1c
	.long	.LBB98
	.long	.LBE98
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x8fc
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	.LASF45
	.long	0x94f5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16225
	.byte	0x0
	.uleb128 0x2f
	.long	0x8b80
	.string	"write_template_template_param"
	.byte	0x1
	.value	0x906
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x34
	.string	"parm"
	.byte	0x1
	.value	0x905
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF46
	.byte	0x1
	.value	0x907
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2f
	.long	0x8bf1
	.string	"write_substitution"
	.byte	0x1
	.value	0x923
	.byte	0x1
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x34
	.string	"seq_id"
	.byte	0x1
	.value	0x922
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	0x8bd7
	.long	.LBB99
	.long	.LBE99
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x926
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB100
	.long	.LBE100
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x929
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.byte	0x1
	.string	"init_mangle"
	.byte	0x1
	.value	0x950
	.byte	0x1
	.long	.LFB63
	.long	.LFE63
	.long	.LLST46
	.uleb128 0x32
	.long	0x8cae
	.string	"mangle_decl_string"
	.byte	0x1
	.value	0x962
	.byte	0x1
	.long	0x1bb
	.long	.LFB64
	.long	.LFE64
	.long	.LLST47
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x961
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF30
	.byte	0x1
	.value	0x963
	.long	0x1bb
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	0x8c85
	.long	.LBB101
	.long	.LBE101
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x973
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x973
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB102
	.long	.LBE102
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x97d
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x97d
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x8d0c
	.string	"start_mangling"
	.byte	0x1
	.value	0x930
	.byte	0x1
	.long	.LFB61
	.long	.LFE61
	.long	.LLST48
	.uleb128 0x31
	.long	.LASF41
	.byte	0x1
	.value	0x92f
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LBB103
	.long	.LBE103
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x934
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.string	"__obj"
	.byte	0x1
	.value	0x934
	.long	0x3aa
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x8d5f
	.string	"finish_mangling"
	.byte	0x1
	.value	0x93d
	.byte	0x1
	.long	0x1bb
	.long	.LFB62
	.long	.LFE62
	.long	.LLST49
	.uleb128 0x34
	.string	"warn"
	.byte	0x1
	.value	0x93c
	.long	0x51e9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LBB104
	.long	.LBE104
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x947
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x8d9f
	.byte	0x1
	.string	"mangle_decl"
	.byte	0x1
	.value	0x98b
	.byte	0x1
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x31
	.long	.LASF2
	.byte	0x1
	.value	0x98a
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"id"
	.byte	0x1
	.value	0x98c
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x8deb
	.byte	0x1
	.string	"mangle_type_string"
	.byte	0x1
	.value	0x996
	.byte	0x1
	.long	0x1bb
	.long	.LFB66
	.long	.LFE66
	.long	.LLST51
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0x995
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF30
	.byte	0x1
	.value	0x997
	.long	0x1bb
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x39
	.long	0x8e21
	.byte	0x1
	.string	"mangle_type"
	.byte	0x1
	.value	0x9a6
	.byte	0x1
	.long	0xd8
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0x9a5
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x32
	.long	0x8ed5
	.string	"mangle_special_for_type"
	.byte	0x1
	.value	0x9b2
	.byte	0x1
	.long	0xd8
	.long	.LFB68
	.long	.LFE68
	.long	.LLST53
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0x9b0
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"code"
	.byte	0x1
	.value	0x9b1
	.long	0x1bb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF30
	.byte	0x1
	.value	0x9b3
	.long	0x1bb
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	0x8eac
	.long	.LBB105
	.long	.LBE105
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x9ba
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x9ba
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB106
	.long	.LBE106
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x9bb
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x9bb
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x8f18
	.byte	0x1
	.string	"mangle_typeinfo_for_type"
	.byte	0x1
	.value	0x9cd
	.byte	0x1
	.long	0xd8
	.long	.LFB69
	.long	.LFE69
	.long	.LLST54
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0x9cc
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x39
	.long	0x8f62
	.byte	0x1
	.string	"mangle_typeinfo_string_for_type"
	.byte	0x1
	.value	0x9d7
	.byte	0x1
	.long	0xd8
	.long	.LFB70
	.long	.LFE70
	.long	.LLST55
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0x9d6
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x39
	.long	0x8fa1
	.byte	0x1
	.string	"mangle_vtbl_for_type"
	.byte	0x1
	.value	0x9e0
	.byte	0x1
	.long	0xd8
	.long	.LFB71
	.long	.LFE71
	.long	.LLST56
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0x9df
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x39
	.long	0x8fdf
	.byte	0x1
	.string	"mangle_vtt_for_type"
	.byte	0x1
	.value	0x9e9
	.byte	0x1
	.long	0xd8
	.long	.LFB72
	.long	.LFE72
	.long	.LLST57
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0x9e8
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x39
	.long	0x90b4
	.byte	0x1
	.string	"mangle_ctor_vtbl_for_type"
	.byte	0x1
	.value	0x9ff
	.byte	0x1
	.long	0xd8
	.long	.LFB73
	.long	.LFE73
	.long	.LLST58
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0x9fd
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"binfo"
	.byte	0x1
	.value	0x9fe
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF30
	.byte	0x1
	.value	0xa00
	.long	0x1bb
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	0x906e
	.long	.LBB107
	.long	.LBE107
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0xa04
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0xa04
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x33
	.long	0x909a
	.long	.LBB108
	.long	.LBE108
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0xa05
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0xa05
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB109
	.long	.LBE109
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0xa08
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x91d8
	.byte	0x1
	.string	"mangle_thunk"
	.byte	0x1
	.value	0xa20
	.byte	0x1
	.long	0xd8
	.long	.LFB74
	.long	.LFE74
	.long	.LLST59
	.uleb128 0x34
	.string	"fn_decl"
	.byte	0x1
	.value	0xa1d
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"offset"
	.byte	0x1
	.value	0xa1e
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF38
	.byte	0x1
	.value	0xa1f
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.long	.LASF30
	.byte	0x1
	.value	0xa21
	.long	0x1bb
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	0x914a
	.long	.LBB110
	.long	.LBE110
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0xa25
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0xa25
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x33
	.long	0x9167
	.long	.LBB111
	.long	.LBE111
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0xa28
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x33
	.long	0x9184
	.long	.LBB112
	.long	.LBE112
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0xa2a
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x33
	.long	0x91a1
	.long	.LBB113
	.long	.LBE113
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0xa2c
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x33
	.long	0x91be
	.long	.LBB114
	.long	.LBE114
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0xa30
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB115
	.long	.LBE115
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0xa37
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x920b
	.string	"hash_type"
	.byte	0x1
	.value	0xa4d
	.byte	0x1
	.long	0x5828
	.long	.LFB75
	.long	.LFE75
	.long	.LLST60
	.uleb128 0x34
	.string	"val"
	.byte	0x1
	.value	0xa4c
	.long	0x714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x32
	.long	0x9252
	.string	"compare_type"
	.byte	0x1
	.value	0xa55
	.byte	0x1
	.long	0x1ce
	.long	.LFB76
	.long	.LFE76
	.long	.LLST61
	.uleb128 0x34
	.string	"val1"
	.byte	0x1
	.value	0xa54
	.long	0x714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"val2"
	.byte	0x1
	.value	0xa54
	.long	0x714
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x39
	.long	0x92cb
	.byte	0x1
	.string	"mangle_conv_op_name_for_type"
	.byte	0x1
	.value	0xa5f
	.byte	0x1
	.long	0xd8
	.long	.LFB77
	.long	.LFE77
	.long	.LLST62
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0xa5e
	.long	0x92cb
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.string	"slot"
	.byte	0x1
	.value	0xa60
	.long	0x64e
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.long	.LASF1
	.byte	0x1
	.value	0xa61
	.long	0xd8
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.long	.LASF47
	.byte	0x1
	.value	0xa62
	.long	0x7941
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x8
	.long	0xd8
	.uleb128 0x39
	.long	0x9364
	.byte	0x1
	.string	"mangle_guard_variable"
	.byte	0x1
	.value	0xa82
	.byte	0x1
	.long	0xd8
	.long	.LFB78
	.long	.LFE78
	.long	.LLST63
	.uleb128 0x31
	.long	.LASF48
	.byte	0x1
	.value	0xa81
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	0x933b
	.long	.LBB116
	.long	.LBE116
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0xa84
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0xa84
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB117
	.long	.LBE117
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0xa88
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0xa88
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x93cf
	.byte	0x1
	.string	"mangle_ref_init_variable"
	.byte	0x1
	.value	0xa95
	.byte	0x1
	.long	0xd8
	.long	.LFB79
	.long	.LFE79
	.long	.LLST64
	.uleb128 0x31
	.long	.LASF48
	.byte	0x1
	.value	0xa94
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LBB118
	.long	.LBE118
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0xa97
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0xa97
	.long	0x1ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x94d0
	.string	"write_java_integer_type_codes"
	.byte	0x1
	.value	0xaa4
	.byte	0x1
	.long	.LFB80
	.long	.LFE80
	.long	.LLST65
	.uleb128 0x31
	.long	.LASF3
	.byte	0x1
	.value	0xaa3
	.long	0xd8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	0x942e
	.long	.LBB119
	.long	.LBE119
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0xaa6
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x33
	.long	0x944b
	.long	.LBB120
	.long	.LBE120
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0xaa8
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x33
	.long	0x9468
	.long	.LBB121
	.long	.LBE121
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0xaaa
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x33
	.long	0x9485
	.long	.LBB122
	.long	.LBE122
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0xaac
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x33
	.long	0x94a2
	.long	.LBB123
	.long	.LBE123
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0xaae
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	0x94bf
	.long	.LBB124
	.long	.LBE124
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0xab0
	.long	0x52b3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	.LASF45
	.long	0x94e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16800
	.byte	0x0
	.uleb128 0xd
	.long	0x94e0
	.long	0x1c6
	.uleb128 0xe
	.long	0x2be
	.byte	0x1d
	.byte	0x0
	.uleb128 0x8
	.long	0x94d0
	.uleb128 0xd
	.long	0x94f5
	.long	0x1c6
	.uleb128 0xe
	.long	0x2be
	.byte	0x14
	.byte	0x0
	.uleb128 0x8
	.long	0x94e5
	.uleb128 0xd
	.long	0x950a
	.long	0x1c6
	.uleb128 0xe
	.long	0x2be
	.byte	0x1a
	.byte	0x0
	.uleb128 0x8
	.long	0x94fa
	.uleb128 0x8
	.long	0x6e9
	.uleb128 0xd
	.long	0x9524
	.long	0x1c6
	.uleb128 0xe
	.long	0x2be
	.byte	0x12
	.byte	0x0
	.uleb128 0x8
	.long	0x9514
	.uleb128 0x8
	.long	0x9514
	.uleb128 0xd
	.long	0x953e
	.long	0x1c6
	.uleb128 0xe
	.long	0x2be
	.byte	0xa
	.byte	0x0
	.uleb128 0x8
	.long	0x952e
	.uleb128 0x8
	.long	0x94d0
	.uleb128 0xd
	.long	0x9558
	.long	0x1c6
	.uleb128 0xe
	.long	0x2be
	.byte	0x1e
	.byte	0x0
	.uleb128 0x8
	.long	0x9548
	.uleb128 0xd
	.long	0x956d
	.long	0x1c6
	.uleb128 0xe
	.long	0x2be
	.byte	0x24
	.byte	0x0
	.uleb128 0x8
	.long	0x955d
	.uleb128 0xd
	.long	0x9582
	.long	0x1c6
	.uleb128 0xe
	.long	0x2be
	.byte	0x15
	.byte	0x0
	.uleb128 0x8
	.long	0x9572
	.uleb128 0x8
	.long	0x6e9
	.uleb128 0x3a
	.string	"G"
	.byte	0x1
	.byte	0x6f
	.long	0x6da2
	.byte	0x5
	.byte	0x3
	.long	G
	.uleb128 0xd
	.long	0x95ab
	.long	0xd8
	.uleb128 0xe
	.long	0x2be
	.byte	0x5
	.byte	0x0
	.uleb128 0x3a
	.string	"subst_identifiers"
	.byte	0x1
	.byte	0x81
	.long	0x959b
	.byte	0x5
	.byte	0x3
	.long	subst_identifiers
	.uleb128 0x3a
	.string	"integer_type_codes"
	.byte	0x1
	.byte	0x86
	.long	0x95ea
	.byte	0x5
	.byte	0x3
	.long	integer_type_codes
	.uleb128 0x8
	.long	0x952e
	.uleb128 0x30
	.string	"conv_type_names"
	.byte	0x1
	.value	0xa47
	.long	0x5990
	.byte	0x5
	.byte	0x3
	.long	conv_type_names
	.uleb128 0x3b
	.string	"target_flags"
	.byte	0x9
	.byte	0x21
	.long	0x1ce
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"stderr"
	.byte	0xf
	.byte	0x90
	.long	0x6bd
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x9643
	.long	0x2fc
	.uleb128 0xe
	.long	0x2be
	.byte	0x35
	.byte	0x0
	.uleb128 0x3b
	.string	"mode_bitsize"
	.byte	0x7
	.byte	0x69
	.long	0x9659
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x9633
	.uleb128 0xd
	.long	0x9669
	.long	0x1c6
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x3b
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x43
	.long	0x9681
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x965e
	.uleb128 0xd
	.long	0x9691
	.long	0x2eb
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x3b
	.string	"tree_code_length"
	.byte	0x3
	.byte	0x4e
	.long	0x96ab
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x9686
	.uleb128 0xd
	.long	0x96bb
	.long	0x1bb
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x3b
	.string	"tree_code_name"
	.byte	0x3
	.byte	0x53
	.long	0x96d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x96b0
	.uleb128 0xd
	.long	0x96e8
	.long	0xd8
	.uleb128 0xe
	.long	0x2be
	.byte	0x3f
	.byte	0x0
	.uleb128 0x3d
	.string	"global_trees"
	.byte	0x3
	.value	0x8ee
	.long	0x96d8
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x970f
	.long	0xd8
	.uleb128 0xe
	.long	0x2be
	.byte	0xa
	.byte	0x0
	.uleb128 0x3d
	.string	"integer_types"
	.byte	0x3
	.value	0x95f
	.long	0x96ff
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"htab_hash_pointer"
	.byte	0x11
	.byte	0xa0
	.long	0x5839
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x9752
	.long	0xd8
	.uleb128 0xe
	.long	0x2be
	.byte	0x1e
	.byte	0x0
	.uleb128 0x3b
	.string	"c_global_trees"
	.byte	0xb
	.byte	0xee
	.long	0x9742
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"flag_abi_version"
	.byte	0xb
	.value	0x2fe
	.long	0x1ce
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"warn_abi"
	.byte	0xb
	.value	0x303
	.long	0x1ce
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x97a8
	.long	0xd8
	.uleb128 0xe
	.long	0x2be
	.byte	0x49
	.byte	0x0
	.uleb128 0x3d
	.string	"cp_global_trees"
	.byte	0xa
	.value	0x28f
	.long	0x9798
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"global_namespace"
	.byte	0xa
	.value	0x3d4
	.long	0xd8
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"local_classes"
	.byte	0xa
	.value	0xccb
	.long	0x5e7d
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x9800
	.long	0x6cef
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x3d
	.string	"operator_name_info"
	.byte	0xa
	.value	0xe32
	.long	0x97f5
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"assignment_operator_name_info"
	.byte	0xa
	.value	0xe34
	.long	0x97f5
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x9855
	.long	0x6d51
	.uleb128 0xe
	.long	0x2be
	.byte	0x1
	.byte	0x0
	.uleb128 0x3e
	.string	"gt_ggc_r_gt_cp_mangle_h"
	.byte	0x14
	.byte	0x19
	.long	0x987b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_r_gt_cp_mangle_h
	.uleb128 0x8
	.long	0x9845
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
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2c
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
	.uleb128 0x30
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
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x16a
	.value	0x2
	.long	.Ldebug_info0
	.long	0x9881
	.long	0x8bf1
	.string	"init_mangle"
	.long	0x8d5f
	.string	"mangle_decl"
	.long	0x8d9f
	.string	"mangle_type_string"
	.long	0x8deb
	.string	"mangle_type"
	.long	0x8ed5
	.string	"mangle_typeinfo_for_type"
	.long	0x8f18
	.string	"mangle_typeinfo_string_for_type"
	.long	0x8f62
	.string	"mangle_vtbl_for_type"
	.long	0x8fa1
	.string	"mangle_vtt_for_type"
	.long	0x8fdf
	.string	"mangle_ctor_vtbl_for_type"
	.long	0x90b4
	.string	"mangle_thunk"
	.long	0x9252
	.string	"mangle_conv_op_name_for_type"
	.long	0x92d0
	.string	"mangle_guard_variable"
	.long	0x9364
	.string	"mangle_ref_init_variable"
	.long	0x9855
	.string	"gt_ggc_r_gt_cp_mangle_h"
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
.LASF23:
	.string	"name"
.LASF46:
	.string	"template"
.LASF30:
	.string	"result"
.LASF48:
	.string	"variable"
.LASF27:
	.string	"cannot_inline"
.LASF38:
	.string	"vcall_offset"
.LASF7:
	.string	"lang_flag_0"
.LASF9:
	.string	"lang_flag_2"
.LASF11:
	.string	"lang_flag_4"
.LASF13:
	.string	"lang_flag_6"
.LASF31:
	.string	"sequence_stack"
.LASF0:
	.string	"common"
.LASF25:
	.string	"lang_specific"
.LASF32:
	.string	"sequence_rtl_expr"
.LASF36:
	.string	"befriending_classes"
.LASF29:
	.string	"function_frequency"
.LASF8:
	.string	"lang_flag_1"
.LASF10:
	.string	"lang_flag_3"
.LASF14:
	.string	"lang_flag_7"
.LASF26:
	.string	"function"
.LASF4:
	.string	"unsigned int"
.LASF39:
	.string	"operator_name_info_t"
.LASF18:
	.string	"abstract_origin"
.LASF21:
	.string	"pointer_depth"
.LASF34:
	.string	"use_template"
.LASF22:
	.string	"user_align"
.LASF43:
	.string	"__len"
.LASF19:
	.string	"size_unit"
.LASF44:
	.string	"local_entity"
.LASF3:
	.string	"type"
.LASF28:
	.string	"language"
.LASF40:
	.string	"mangled_name"
.LASF41:
	.string	"entity"
.LASF42:
	.string	"node"
.LASF6:
	.string	"built_in_class"
.LASF1:
	.string	"identifier"
.LASF12:
	.string	"lang_flag_5"
.LASF17:
	.string	"abstract_flag"
.LASF24:
	.string	"context"
.LASF35:
	.string	"template_info"
.LASF45:
	.string	"__FUNCTION__"
.LASF33:
	.string	"base"
.LASF37:
	.string	"discriminator"
.LASF47:
	.string	"buffer"
.LASF16:
	.string	"ht_identifier"
.LASF5:
	.string	"_IO_FILE"
.LASF20:
	.string	"attributes"
.LASF2:
	.string	"decl"
.LASF15:
	.string	"length"
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
